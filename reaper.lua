-- REAPER - universal cheat suite
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")
local Tween = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local Teleport = game:GetService("TeleportService")
local VirtualUser = game:GetService("VirtualUser")
local PhysicsService = game:GetService("PhysicsService")
local TextService = game:GetService("TextService")
local HttpService = game:GetService("HttpService")
local LP = Players.LocalPlayer
local Cam = workspace.CurrentCamera

if RS:IsServer() then
    local RSv = game:GetService("ReplicatedStorage")
    local remote = RSv:FindFirstChild("ReaperComm")
    if not remote then
        remote = Instance.new("RemoteEvent")
        remote.Name = "ReaperComm"
        remote.Parent = RSv
    end
    local users = {}
    remote.OnServerEvent:Connect(function(plr, ch)
        if ch == "register" then
            users[plr] = {lastSeen = tick()}
        elseif ch == "heartbeat" then
            if users[plr] then users[plr].lastSeen = tick() end
        end
    end)
    Players.PlayerRemoving:Connect(function(p) users[p] = nil end)
    print("[REAPER SERVER] relay active")
    return
end

if _G.__REAPER_ACTIVE then
    pcall(function()
        local pgx = LP:FindFirstChild("PlayerGui")
        if pgx then
            for _, c in ipairs(pgx:GetChildren()) do
                if c.Name:match("^Reaper") then c:Destroy() end
            end
        end
    end)
    task.wait(0.25)
end
_G.__REAPER_ACTIVE = true

IO = {has = false, reason = "none"}
do
    local function check(env)
        if not env then return nil end
        local ok1, w = pcall(function() return env.writefile end)
        local ok2, r = pcall(function() return env.readfile end)
        local ok3, i = pcall(function() return env.isfile end)
        if ok1 and ok2 and ok3 and type(w) == "function" and type(r) == "function" and type(i) == "function" then
            return w, r, i
        end
    end
    local sources = {}
    if getgenv then
        local ok, g = pcall(getgenv)
        if ok and type(g) == "table" then sources[#sources + 1] = {g, "getgenv()"} end
    end
    sources[#sources + 1] = {_G, "_G"}
    for _, s in ipairs(sources) do
        local w, r, i = check(s[1])
        if w then
            IO.write, IO.read, IO.isfile = w, r, i
            IO.has, IO.reason = true, s[2]
            break
        end
    end
end

KEY_API = "https://proud-hill-8cf1.bigphatnigur.workers.dev"
FEEDBACK_WEBHOOK = KEY_API .. "/feedback"
DISCORD_INVITE = "https://discord.gg/AkNuT3Bxyn"
GUILD_CHECK_ENDPOINTS = {"/guild/check"}

function httpGet(url)
    local req = (syn and syn.request) or (http and http.request) or http_request or request
    if req then
        local ok, res = pcall(req, {Url = url, Method = "GET"})
        if ok and type(res) == "table" then
            return true, res.Body or res.body or ""
        end
    end
    if game.HttpGet then
        local ok, res = pcall(function() return game:HttpGet(url) end)
        if ok then return true, res end
    end
    return false, "no http api"
end

function httpPost(url, body)
    if not url or url == "" then return false, "no url" end
    local req = (syn and syn.request) or (http and http.request) or http_request or request
    if not req then return false, "no http api" end
    local ok, res = pcall(req, {
        Url = url, Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = body,
    })
    if not ok then return false, "request failed" end
    local status, respBody
    if type(res) == "table" then
        status = res.StatusCode or res.Status
        respBody = res.Body or res.body
    end
    if status and tonumber(status) and tonumber(status) >= 400 then
        return false, "HTTP " .. tostring(status) .. ": " .. tostring(respBody or "")
    end
    return true, res
end

function postJSON(path, tbl)
    local body = HttpService:JSONEncode(tbl)
    local ok, res = httpPost(KEY_API .. path, body)
    if not ok then return nil, tostring(res) end
    local respBody = type(res) == "table" and (res.Body or res.body) or res
    local okD, decoded = pcall(function() return HttpService:JSONDecode(respBody) end)
    if okD then return decoded end
    return nil, "bad response"
end

function parseErrorReason(res)
    local r = tostring(res)
    local jsonPart = r:match("({.*})")
    if jsonPart then
        local ok, d = pcall(function() return HttpService:JSONDecode(jsonPart) end)
        if ok and type(d) == "table" and d.error then
            if d.reason then return tostring(d.error) .. " - " .. tostring(d.reason) end
            return tostring(d.error)
        end
    end
    return r
end

MY_USER = nil
RemoteRanks = {}
BADGE_STYLE = {
    owner = {label = "OWNER", emoji = "O", color = Color3.fromRGB(200, 120, 255)},
    mod = {label = "MOD", emoji = "M", color = Color3.fromRGB(160, 220, 255)},
}

function getLocalRank() return MY_USER and MY_USER.rank or nil end
function getRankFor(userId)
    userId = tonumber(userId) or userId
    if userId == LP.UserId and MY_USER and MY_USER.rank then
        return MY_USER.rank, MY_USER.badgeUrl
    end
    local r = RemoteRanks[userId] or RemoteRanks[tostring(userId)]
    if r then return r.rank, r.badgeUrl end
    return nil, nil
end
function isMod() return getLocalRank() ~= nil end
function isOwner() return getLocalRank() == "owner" end

-- Robust rank normalization - worker may return different field names
function normalizeRank(raw)
    if type(raw) ~= "string" then return nil end
    raw = raw:lower():gsub("%s", ""):gsub("^%s+", ""):gsub("%s+$", "")
    if raw == "owner" or raw == "admin" then return "owner" end
    if raw == "mod" or raw == "moderator" then return "mod" end
    return nil
end

function fetchCountry(cb)
    task.spawn(function()
        local ok, body = httpGet("http://ip-api.com/json/?fields=status,country,countryCode")
        if ok and body then
            local okD, d = pcall(function() return HttpService:JSONDecode(body) end)
            if okD and type(d) == "table" and d.country then
                cb(d.country, d.countryCode or "")
                return
            end
        end
        cb("Unknown", "")
    end)
end

chatAvatarCache = {}
local function strHash(s)
    local h = 5381
    for i = 1, #s do h = (h * 33 + s:byte(i)) % 2147483647 end
    return string.format("%x", h)
end
function getChatAvatarAsset(url)
    if not url or url == "" then return nil end
    if chatAvatarCache[url] ~= nil then return chatAvatarCache[url] or nil end
    if not IO.has or type(getcustomasset) ~= "function" then
        chatAvatarCache[url] = false
        return nil
    end
    local fname = "Reaper_av_" .. strHash(url) .. ".png"
    local ok, exists = pcall(IO.isfile, fname)
    if not ok or not exists then
        local req = (syn and syn.request) or (http and http.request) or http_request or request
        if not req then chatAvatarCache[url] = false; return nil end
        local ok2, res = pcall(req, {Url = url, Method = "GET"})
        if not ok2 or type(res) ~= "table" or not res.Body then chatAvatarCache[url] = false; return nil end
        if not pcall(IO.write, fname, res.Body) then chatAvatarCache[url] = false; return nil end
    end
    local ok3, asset = pcall(getcustomasset, fname)
    if ok3 and asset then chatAvatarCache[url] = asset; return asset end
    chatAvatarCache[url] = false
    return nil
end

Theme = {
    bg = Color3.fromRGB(3, 2, 8),
    bgDeep = Color3.fromRGB(1, 1, 4),
    panel = Color3.fromRGB(12, 8, 22),
    panel2 = Color3.fromRGB(22, 14, 40),
    panel3 = Color3.fromRGB(42, 24, 72),
    stroke = Color3.fromRGB(150, 80, 255),
    strokeSoft = Color3.fromRGB(80, 40, 140),
    accent = Color3.fromRGB(170, 90, 255),
    accent2 = Color3.fromRGB(220, 180, 255),
    accent3 = Color3.fromRGB(240, 110, 255),
    text = Color3.fromRGB(240, 235, 255),
    muted = Color3.fromRGB(155, 130, 195),
    success = Color3.fromRGB(120, 245, 175),
    danger = Color3.fromRGB(255, 105, 140),
    gold = Color3.fromRGB(255, 220, 130),
    neon = Color3.fromRGB(200, 100, 255),
    ticker = "REAPER - universal cheat suite - d9vq on discord",
    tickerColor = Color3.fromRGB(200, 130, 255),
    tickerAccent = Color3.fromRGB(240, 120, 255),
}
local WINTER = {
    bg = Color3.fromRGB(3, 2, 8), panel = Color3.fromRGB(12, 8, 22),
    panel2 = Color3.fromRGB(22, 14, 40), panel3 = Color3.fromRGB(42, 24, 72),
    stroke = Color3.fromRGB(150, 80, 255), strokeSoft = Color3.fromRGB(80, 40, 140),
    accent = Color3.fromRGB(170, 90, 255), accent2 = Color3.fromRGB(220, 180, 255),
    accent3 = Color3.fromRGB(240, 110, 255), text = Color3.fromRGB(240, 235, 255),
    muted = Color3.fromRGB(155, 130, 195),
    tickerColor = Color3.fromRGB(200, 130, 255), tickerAccent = Color3.fromRGB(240, 120, 255),
}
local SAKURA = {
    bg = Color3.fromRGB(18, 6, 20), panel = Color3.fromRGB(38, 14, 40),
    panel2 = Color3.fromRGB(60, 24, 62), panel3 = Color3.fromRGB(95, 40, 100),
    stroke = Color3.fromRGB(240, 130, 220), strokeSoft = Color3.fromRGB(160, 80, 150),
    accent = Color3.fromRGB(255, 120, 200), accent2 = Color3.fromRGB(255, 200, 235),
    accent3 = Color3.fromRGB(230, 120, 255), text = Color3.fromRGB(255, 240, 250),
    muted = Color3.fromRGB(215, 165, 210),
    tickerColor = Color3.fromRGB(255, 160, 220), tickerAccent = Color3.fromRGB(255, 200, 235),
}
function Theme.setPalette(which)
    local S = (which == "Sakura") and SAKURA or WINTER
    for k, v in pairs(S) do Theme[k] = v end
end

ESPColours = {
    ally = Color3.fromRGB(90, 160, 255),
    enemy = Color3.fromRGB(255, 80, 110),
    police = Color3.fromRGB(90, 160, 255),
    criminal = Color3.fromRGB(230, 46, 46),
    prisoner = Color3.fromRGB(255, 156, 62),
    sheriff = Color3.fromRGB(90, 160, 255),
    murderer = Color3.fromRGB(230, 46, 46),
    innocent = Color3.fromRGB(96, 226, 126),
    united = Color3.fromRGB(56, 138, 255),
    iron = Color3.fromRGB(230, 46, 46),
}

TS = {target = nil, hovered = nil, humpWasActive = false, lastSpam = 0,
      lockedTarget = nil, lockStartTime = 0, actionCooldown = 0}
HR = {speed = 0, smoothSpeed = 0, tier = "STILL", airborne = false, airTimer = 0,
      teleporting = false, autoMode = "Hybrid", fallingUnder = false, lastGood = nil, respawnPending = false}
HUMP = {phase = 0, smoothVel = 0, smoothAir = 0, lastTier = "STILL", lockTimer = 0,
    speedMult = 1.0, ampMult = 1.0, distMult = 1.0, fallHold = 0, lastGoodCF = nil,
    awaitingRespawn = false, lastGoodY = nil, anchorY = nil, oldRootPart = nil, initialAnchor = nil}
ORBIT = {angle = 0, shootCD = 0, wasActive = false, savedCamType = nil}
RA = {keys = {teleport = nil, spectate = nil, hump = nil}, spectateTarget = nil, spectateZoom = 1,
      spectateAngle = 0, spectateActive = false}
PREFERRED_KEYS = {Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three, Enum.KeyCode.Four,
    Enum.KeyCode.Five, Enum.KeyCode.Six, Enum.KeyCode.Q, Enum.KeyCode.E, Enum.KeyCode.R,
    Enum.KeyCode.F, Enum.KeyCode.G, Enum.KeyCode.V}

local REBUILDING_CHIPS = false
local CHIP_CLICK_LOCK = 0
local lastCameraOwner = "none"

local RAY_PARAMS_HOVER = RaycastParams.new()
RAY_PARAMS_HOVER.FilterType = Enum.RaycastFilterType.Exclude

-- NOCLIP - defined early so orbit can use it
NOCLIP_GROUP = "ReaperNoclip"
noclipOK = false
pcall(function() PhysicsService:RegisterCollisionGroup(NOCLIP_GROUP) end)
pcall(function()
    PhysicsService:CollisionGroupSetCollidable(NOCLIP_GROUP, NOCLIP_GROUP, false)
    PhysicsService:CollisionGroupSetCollidable(NOCLIP_GROUP, "Default", false)
    noclipOK = true
end)

function noclipChar(c)
    if not c then return end
    for _, p in ipairs(c:GetDescendants()) do
        if p:IsA("BasePart") then
            if p.CanCollide then p.CanCollide = false end
            if noclipOK then
                pcall(function() p.CollisionGroup = NOCLIP_GROUP end)
            end
        end
    end
end

Chat = {messages = {}, listeners = {}, max = 400}
chatSeenIds = {}
chatUserTimes = {}
function addChat(sender, text, isLocal, col, avatar, discordName, country, countryCode, userId, msgId, placeId, timeMs, discordId)
    if msgId then
        if chatSeenIds[msgId] then return end
        chatSeenIds[msgId] = true
    end
    if userId and tostring(userId) ~= "" then chatUserTimes[tostring(userId)] = tick() end
    local e = {
        sender = sender or "?", text = tostring(text or ""), isLocal = isLocal and true or false,
        col = col or Color3.fromRGB(148, 204, 255),
        time = timeMs and (timeMs / 1000) or tick(),
        avatar = avatar, discordName = discordName, country = country, countryCode = countryCode,
        userId = userId, msgId = msgId, placeId = placeId, discordId = discordId,
    }
    Chat.messages[#Chat.messages + 1] = e
    if #Chat.messages > Chat.max then table.remove(Chat.messages, 1) end
    for _, fn in ipairs(Chat.listeners) do pcall(fn, e) end
end

function sendChat(text)
    text = tostring(text or ""):gsub("^%s+", ""):gsub("%s+$", "")
    if text == "" then return false end
    if #text > 200 then text = text:sub(1, 200) end
    if not SESSION_KEY or SESSION_KEY == "" then
        notify("Chat", "Not verified yet", Theme.danger, 3)
        return false
    end
    task.spawn(function()
        local body = HttpService:JSONEncode({
            robloxId = tostring(LP.UserId), key = SESSION_KEY,
            text = text, placeId = tostring(game.PlaceId),
        })
        local ok, res = httpPost(KEY_API .. "/chat/send", body)
        if not ok then
            local pretty = parseErrorReason(res)
            notify("Chat failed", pretty, Theme.danger, 8, pretty)
        end
    end)
    return true
end

Cfg = {
    Aimbot = {Enabled = false, Key = Enum.UserInputType.MouseButton2, ToggleMode = false,
        FOV = 180, Smoothness = 8, Strength = 6, TargetPart = "Head",
        TeamCheck = false, VisibleOnly = false, ShowCircle = true, Humanize = true, MaxDist = 1000,
        LockTarget = true, PredictAim = true, PredictAmount = 0.06,
        MagicBullet = true, MagicBulletWalls = true, PCPTeamOnly = true},
    Orbit = {Enabled = false, Radius = 8, Speed = 12, Height = 2,
        AutoShoot = true, AutoAim = true, ForceNoclip = true, ShowCircle = true,
        CamDist = 12, CamHeight = 4},
    TapBinds = {teleport = nil, hump = nil, orbit = nil, spectate = nil},
    Trigger = {Enabled = false, Key = Enum.UserInputType.MouseButton1,
        Radius = 20, Delay = 0.05, TeamCheck = true},
    Visuals = {Enabled = false, NameTags = true, Distance = true, ShowRole = true,
        Mode = "Team", Fill = 0.55, NoFog = false, InfZoom = false, FOVMin = 0.5, FOVMax = 120},
    Movement = {Noclip = false, SpeedEnabled = false, Speed = 32,
        JumpEnabled = false, JumpPower = 80, InfiniteJump = false,
        Fly = false, FlySpeed = 60, FlySmooth = 12, FlyBoost = 2.5,
        GodMode = false, Freecam = false, FreecamSpeed = 50, FreecamSens = 1,
        Sprint = false, SprintSpeed = 60, Bunnyhop = false,
        Spinbot = false, AntiFling = false, AntiAFK = false},
    World = {Fullbright = false, GravityEnabled = false, Gravity = 196.2,
        RemoveBlur = false, FOVEnabled = false, FOV = 70},
    Utility = {FlingDur = 4, AutoClicker = false, AutoClickDelay = 0.05,
        AutoRespawn = false, ChatSpam = false, ChatSpamMsg = "REAPER",
        AutoSheriff = false, AutoSheriffRange = 120},
    Troll = {FollowTarget = false, FollowSpeed = 55,
        Hump = false, HumpSpeed = 8, HumpAmp = 1.5, HumpDist = 1.6,
        HumpYawOnly = false, HumpKeepOwner = true, HumpUsePlatform = false,
        HumpOverrideFly = true, HumpVelMatch = true, HumpAutoDetect = true,
        HumpFallProtect = true, TapTarget = false, TapRadius = 30},
    UI = {MenuKey = Enum.KeyCode.X, HUDKey = Enum.KeyCode.H, HUD = true,
        ADKey = Enum.KeyCode.J, AD = true,
        MenuOpacity = 0, MenuBlur = true, AnimatedOpen = true,
        MenuResizable = true, MinW = 480, MinH = 380,
        Juicy = true, Notifs = true, Ambient = true,
        ShimmerHeaders = true, Sakura = false,
        Crosshair = true, CrosshairSize = 26, CrosshairThick = 2,
        CrosshairPulse = true, HideCrossOnMenu = true,
        ReticleLine = true, ReticleHP = true,
        ReticleMode = "Auto", ReticleR = 140, ReticleG = 220, ReticleB = 255},
    Binds = {},
}

function new(cls, props, parent)
    local i = Instance.new(cls)
    for k, v in pairs(props) do i[k] = v end
    if parent then i.Parent = parent end
    return i
end
function corner(i, r) return new("UICorner", {CornerRadius = UDim.new(0, r or 6)}, i) end
function stroke(i, col, th, tr)
    return new("UIStroke", {Color = col, Thickness = th or 1, Transparency = tr or 0,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border}, i)
end
function grad(i, c1, c2, rot)
    return new("UIGradient", {Color = ColorSequence.new(c1, c2), Rotation = rot or 90}, i)
end
function dropShadow(parent, radius, spread, transparency)
    local sh = new("Frame", {
        Size = UDim2.new(1, spread or 12, 1, spread or 12),
        Position = UDim2.new(0.5, 0, 0.5, (spread or 12) / 4),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.new(0, 0, 0),
        BackgroundTransparency = transparency or 0.55,
        BorderSizePixel = 0,
        ZIndex = (parent.ZIndex or 1) - 1,
    }, parent.Parent)
    corner(sh, radius or 18)
    return sh
end
function hum() local c = LP.Character; return c and c:FindFirstChildOfClass("Humanoid") end
function hrp() local c = LP.Character; return c and c:FindFirstChild("HumanoidRootPart") end
function tBg(i) i:SetAttribute("T_Bg", true); return i end
function tPanel(i) i:SetAttribute("T_Panel", true); return i end
function tPanel2(i) i:SetAttribute("T_Panel2", true); return i end
function tStroke(i) i:SetAttribute("T_Stroke", true); return i end
function tAcc(i) i:SetAttribute("T_Acc", true); return i end
function tAcc2(i) i:SetAttribute("T_Acc2", true); return i end
function tMuted(i) i:SetAttribute("T_Muted", true); return i end
function getPath(t, path)
    local c = t
    for p in path:gmatch("[^%.]+") do
        if type(c) ~= "table" then return nil end
        c = c[p]
        if c == nil then return nil end
    end
    return c
end
function setPath(t, path, v)
    local parts = {}
    for p in path:gmatch("[^%.]+") do parts[#parts + 1] = p end
    local c = t
    for i = 1, #parts - 1 do
        c = c[parts[i]]
        if type(c) ~= "table" then return end
    end
    c[parts[#parts]] = v
end
function deepCopy(t)
    if type(t) ~= "table" then return t end
    local o = {}
    for k, v in pairs(t) do o[k] = deepCopy(v) end
    return o
end

function saveFile() return "Reaper_" .. tostring(game.PlaceId) .. ".json" end
function autoloadFile() return "Reaper_auto_" .. tostring(game.PlaceId) .. ".txt" end
function globalAutoloadFile() return "Reaper_global_auto.txt" end
saves = _G.__ReaperSaves or {}
_G.__ReaperSaves = saves
autoloadName = _G.__ReaperAutoload or nil
currentLoadout = nil

local function encodeVal(v)
    local t = typeof(v)
    if t == "Color3" then return {__t = "Color3", R = v.R, G = v.G, B = v.B} end
    if t == "EnumItem" then return {__t = "Enum", s = tostring(v)} end
    if t == "Vector3" then return {__t = "Vector3", X = v.X, Y = v.Y, Z = v.Z} end
    if t == "Vector2" then return {__t = "Vector2", X = v.X, Y = v.Y} end
    if t == "table" then
        local out = {}
        for k, val in pairs(v) do out[tostring(k)] = encodeVal(val) end
        return out
    end
    return v
end

local function decodeVal(v)
    if type(v) ~= "table" then return v end
    local t = v.__t
    if t == "Color3" then return Color3.new(v.R or 0, v.G or 0, v.B or 0) end
    if t == "Enum" then
        local s = v.s
        if type(s) == "string" then
            local a, b = s:match("^Enum%.([%w_]+)%.([%w_]+)$")
            if a and b then
                local ok, e = pcall(function() return Enum[a][b] end)
                if ok then return e end
            end
        end
        return nil
    end
    if t == "Vector3" then return Vector3.new(v.X or 0, v.Y or 0, v.Z or 0) end
    if t == "Vector2" then return Vector2.new(v.X or 0, v.Y or 0) end
    local out = {}
    for k, val in pairs(v) do out[k] = decodeVal(val) end
    return out
end

function serialize(t)
    local ok, s = pcall(function() return HttpService:JSONEncode(encodeVal(t)) end)
    return ok and s or nil
end
function deserialize(s)
    if not s or s == "" then return nil end
    local ok, d = pcall(function() return HttpService:JSONDecode(s) end)
    if not ok or d == nil then return nil end
    local ok2, r = pcall(decodeVal, d)
    return ok2 and r or nil
end

function saveTable()
    saves[game.PlaceId] = saves[game.PlaceId] or {}
    if IO.has then
        local ok, e = pcall(IO.isfile, saveFile())
        if ok and e then
            local ok2, c = pcall(IO.read, saveFile())
            if ok2 and c and c ~= "" then
                local d = deserialize(c)
                if type(d) == "table" then
                    for k, v in pairs(d) do saves[game.PlaceId][k] = v end
                end
            end
        end
    end
    return saves[game.PlaceId]
end

function writeSave(t)
    saves[game.PlaceId] = t
    _G.__ReaperSaves = saves
    if IO.has then
        local s = serialize(t)
        if s then pcall(IO.write, saveFile(), s) end
    end
end

function saveLoadout(name, markAuto)
    name = tostring(name or ""):gsub("^%s+", ""):gsub("%s+$", "")
    if name == "" then name = "default" end
    local t = saveTable()
    local d = {}
    for k, v in pairs(Cfg) do
        if k ~= "Binds" then d[k] = deepCopy(v) end
    end
    d.Binds = {}
    for k, v in pairs(Cfg.Binds or {}) do d.Binds[k] = v end
    t[name] = d
    writeSave(t)
    if markAuto then
        autoloadName = name
        _G.__ReaperAutoload = name
        if IO.has then
            pcall(IO.write, autoloadFile(), name)
            pcall(IO.write, globalAutoloadFile(), game.PlaceId .. "::" .. name)
        end
    end
    return true
end

function loadLoadout(name)
    local t = saveTable()
    local d = t[name]
    if type(d) ~= "table" then return false end
    for k, v in pairs(d) do Cfg[k] = deepCopy(v) end
    if type(Cfg.Binds) ~= "table" then Cfg.Binds = {} end
    return true
end

function deleteLoadout(name)
    local t = saveTable()
    t[name] = nil
    writeSave(t)
    if autoloadName == name then
        autoloadName = nil
        _G.__ReaperAutoload = nil
        if IO.has then pcall(IO.write, autoloadFile(), "") end
    end
    if currentLoadout == name then currentLoadout = nil end
end

function listLoadouts()
    saveTable()
    local out = {}
    for name, data in pairs(saves[game.PlaceId] or {}) do
        if type(data) == "table" then out[#out + 1] = name end
    end
    table.sort(out)
    return out
end

if IO.has then
    pcall(function()
        local ok, e = pcall(IO.isfile, globalAutoloadFile())
        if ok and e then
            local ok2, c = pcall(IO.read, globalAutoloadFile())
            if ok2 and c and c ~= "" then
                local pid, nm = c:gsub("%s+$", ""):match("^(%d+)::(.+)$")
                if pid and nm and tonumber(pid) == game.PlaceId then autoloadName = nm end
            end
        end
    end)
end

SESSION_KEY = nil
DISCORD_USERNAME = nil
DISCORD_ID = nil
VERIFY_STORE = "Reaper_verified.json"

local function loadVerifiedData()
    if not IO.has then return nil end
    local ok, e = pcall(IO.isfile, VERIFY_STORE)
    if not ok or not e then return nil end
    local ok2, c = pcall(IO.read, VERIFY_STORE)
    if not ok2 or not c or c == "" then return nil end
    local okD, d = pcall(function() return HttpService:JSONDecode(c) end)
    if not okD or type(d) ~= "table" then return nil end
    return d
end
local function saveVerifiedData(d)
    if not IO.has then return end
    local ok, c = pcall(function() return HttpService:JSONEncode(d) end)
    if ok and c then pcall(IO.write, VERIFY_STORE, c) end
end
local function clearVerifiedData()
    SESSION_KEY = nil
    DISCORD_USERNAME = nil
    DISCORD_ID = nil
    if IO.has then pcall(IO.write, VERIFY_STORE, "") end
end

local function copyToClipboard(url)
    if type(setclipboard) == "function" then return pcall(setclipboard, url) end
    return false
end
local function tryOpenBrowser(url)
    local env = (getgenv and getgenv()) or _G
    for _, name in ipairs({"deeplink", "openbrowser", "openbrowserwindow", "browseropen"}) do
        local f = rawget(env, name)
        if type(f) == "function" and pcall(f, url) then return true end
    end
    return false
end
local function downloadAvatar(url)
    if not IO.has or type(getcustomasset) ~= "function" then return nil end
    local cacheFile = "Reaper_avatar_" .. tostring(LP.UserId) .. "_" .. strHash(url) .. ".png"
    local ok, e = pcall(IO.isfile, cacheFile)
    if not ok or not e then
        local req = (syn and syn.request) or (http and http.request) or http_request or request
        if not req then return nil end
        local ok2, res = pcall(req, {Url = url, Method = "GET"})
        if not ok2 or type(res) ~= "table" or not res.Body then return nil end
        pcall(IO.write, cacheFile, res.Body)
    end
    local ok3, assetId = pcall(getcustomasset, cacheFile)
    if ok3 and assetId then return assetId end
    return nil
end

function checkGuildIn(username)
    username = tostring(username or ""):gsub("^%s+", ""):gsub("%s+$", "")
    if username == "" then return nil, {err = "no username entered", debug = {}} end
    local diag = {}
    local function L(s) diag[#diag + 1] = tostring(s) end
    local function interpret(d)
        if type(d) ~= "table" then return nil, "response not a table" end
        if d.inGuild == nil and d.error then
            return nil, "worker: " .. tostring(d.reason or "unknown")
        end
        if type(d.error) == "string" then return nil, "server error: " .. d.error end
        local hits = {{d.inGuild, "inGuild"}, {d.in_guild, "in_guild"}, {d.ok, "ok"},
            {d.isMember, "isMember"}, {d.is_member, "is_member"}, {d.member, "member"}, {d.in_server, "in_server"}}
        for _, h in ipairs(hits) do
            if type(h[1]) == "boolean" then return h[1], "field:" .. h[2] end
        end
        return nil, "unknown shape"
    end
    for _, ep in ipairs(GUILD_CHECK_ENDPOINTS) do
        local url = KEY_API .. ep .. "?username=" .. HttpService:UrlEncode(username) .. "&robloxId=" .. tostring(LP.UserId)
        L("GET " .. ep)
        local ok, body = httpGet(url)
        if ok and body and body ~= "" then
            local okD, d = pcall(function() return HttpService:JSONDecode(body) end)
            if okD then
                local val, reason = interpret(d)
                if val ~= nil then return val, d end
                L("  x " .. tostring(reason))
            else
                L("  x bad JSON")
            end
        else
            L("  x " .. tostring(body))
        end
    end
    return nil, {err = "guild check failed", debug = diag}
end

local function showVerifiedScreen(user)
    local pgx = LP:WaitForChild("PlayerGui")
    local existing = pgx:FindFirstChild("ReaperVerified")
    if existing then existing:Destroy() end
    local sg = new("ScreenGui", {Name = "ReaperVerified", ResetOnSpawn = false, IgnoreGuiInset = true,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, pgx)
    new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.fromRGB(1, 1, 4),
        BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 1}, sg)
    local cardW, cardH = 430, 400
    local card = new("Frame", {Size = UDim2.fromOffset(cardW, cardH),
        Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 + 40),
        BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, sg)
    corner(card, 22)
    grad(card, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)
    dropShadow(card, 22, 18, 0.65)
    local avSize = 92
    local avWrap = new("Frame", {Size = UDim2.fromOffset(avSize, avSize),
        Position = UDim2.new(0.5, 0, 0, 32), AnchorPoint = Vector2.new(0.5, 0),
        BackgroundTransparency = 1, ZIndex = 13}, card)
    local avHolder = new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Theme.panel2,
        BorderSizePixel = 0, ZIndex = 14, ClipsDescendants = true}, avWrap)
    corner(avHolder, avSize / 2)
    local loaded = false
    if user.avatar and user.avatar ~= "" then
        local assetId = downloadAvatar(user.avatar)
        if assetId then
            local img = new("ImageLabel", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
                Image = assetId, ScaleType = Enum.ScaleType.Crop, ZIndex = 15}, avHolder)
            corner(img, avSize / 2)
            loaded = true
        end
    end
    if not loaded then
        local fb = new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Theme.accent,
            BorderSizePixel = 0, ZIndex = 15}, avHolder)
        corner(fb, avSize / 2)
        grad(fb, Theme.accent3, Theme.neon, 45)
        new("TextLabel", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
            Text = (user.displayName or user.username or "?"):sub(1, 1):upper(),
            Font = Enum.Font.GothamBlack, TextSize = 42, TextColor3 = Color3.new(1, 1, 1), ZIndex = 16}, fb)
    end
    local avBorder = new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = 16}, avHolder)
    corner(avBorder, avSize / 2)
    stroke(avBorder, Theme.neon, 2.6, 0.1)
    local nameY = 32 + avSize + 14
    new("TextLabel", {Size = UDim2.new(1, -40, 0, 26), Position = UDim2.fromOffset(20, nameY),
        BackgroundTransparency = 1, Text = user.displayName or user.username or "Verified",
        Font = Enum.Font.GothamBlack, TextSize = 18, TextColor3 = Theme.text, ZIndex = 12}, card)
    new("TextLabel", {Size = UDim2.new(1, -40, 0, 16), Position = UDim2.fromOffset(20, nameY + 26),
        BackgroundTransparency = 1, Text = "@" .. (user.username or "unknown"),
        Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = Theme.muted, ZIndex = 12}, card)
    if user.rank and BADGE_STYLE[user.rank] then
        local b = BADGE_STYLE[user.rank]
        local pillW = 160
        local pill = new("Frame", {Size = UDim2.fromOffset(pillW, 22), Position = UDim2.new(0.5, -pillW/2, 0, nameY + 48),
            BackgroundColor3 = b.color, BackgroundTransparency = 0.8, BorderSizePixel = 0, ZIndex = 12}, card)
        corner(pill, 11)
        stroke(pill, b.color, 1.2, 0.15)
        new("TextLabel", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
            Text = b.label, Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = b.color, ZIndex = 13}, pill)
    end
    local btnY = nameY + 82
    local loadBtn = new("TextButton", {Size = UDim2.new(1, -60, 0, 48), Position = UDim2.fromOffset(30, btnY),
        BackgroundColor3 = Theme.neon, Text = "LOAD SCRIPT", Font = Enum.Font.GothamBlack,
        TextSize = 15, TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
        BorderSizePixel = 0, ZIndex = 13}, card)
    corner(loadBtn, 12)
    grad(loadBtn, Theme.neon, Theme.accent3, 0)
    card.Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 + 90)
    card.BackgroundTransparency = 1
    Tween:Create(card, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2), BackgroundTransparency = 0}):Play()
    local done = false
    loadBtn.MouseButton1Click:Connect(function()
        if done then return end
        done = true
        loadBtn.Text = "LOADING..."
        task.wait(0.3)
        sg:Destroy()
    end)
    task.delay(60, function() if not done and sg.Parent then done = true; sg:Destroy() end end)
    while not done do task.wait(0.2) end
end

local function showKeyPrompt()
    local pgx = LP:WaitForChild("PlayerGui")
    local existing = pgx:FindFirstChild("ReaperKeyPrompt")
    if existing then existing:Destroy() end
    local promptGui = new("ScreenGui", {Name = "ReaperKeyPrompt", ResetOnSpawn = false,
        IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, pgx)
    pcall(function()
        local b = new("BlurEffect", {Size = 20, Parent = Lighting})
        b.Name = "ReaperPromptBlur"
        task.spawn(function() while promptGui.Parent do task.wait(0.2) end; b:Destroy() end)
    end)
    local backdrop = new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.fromRGB(1, 1, 4),
        BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 1}, promptGui)
    Tween:Create(backdrop, TweenInfo.new(0.4), {BackgroundTransparency = 0.3}):Play()
    local cardW, cardH = 540, 660
    local card = new("Frame", {Size = UDim2.fromOffset(cardW, cardH),
        Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 + 20),
        BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, promptGui)
    corner(card, 22)
    grad(card, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)
    dropShadow(card, 22, 22, 0.7)
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 26), Position = UDim2.fromOffset(0, 20),
        BackgroundTransparency = 1, Text = "VERIFICATION", Font = Enum.Font.GothamBlack,
        TextSize = 21, TextColor3 = Theme.neon, ZIndex = 12}, card)
    new("TextLabel", {Size = UDim2.new(1, -40, 0, 16), Position = UDim2.fromOffset(20, 48),
        BackgroundTransparency = 1, Text = "Two steps: join Discord, then authorize the app.",
        Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = Theme.muted, ZIndex = 12}, card)
    local s1 = new("Frame", {Size = UDim2.new(1, -50, 0, 240), Position = UDim2.fromOffset(25, 76),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, card)
    corner(s1, 12)
    local s1Stroke = stroke(s1, Theme.strokeSoft, 1.4, 0.4)
    grad(s1, Color3.fromRGB(28, 16, 52), Theme.panel, 90)
    local s1Tag = new("Frame", {Size = UDim2.fromOffset(30, 30), Position = UDim2.fromOffset(14, 14),
        BackgroundColor3 = Theme.neon, BorderSizePixel = 0, ZIndex = 13}, s1)
    corner(s1Tag, 15)
    new("TextLabel", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = "1",
        Font = Enum.Font.GothamBlack, TextSize = 14, TextColor3 = Color3.new(1, 1, 1), ZIndex = 14}, s1Tag)
    new("TextLabel", {Size = UDim2.new(1, -58, 0, 20), Position = UDim2.fromOffset(52, 16),
        BackgroundTransparency = 1, Text = "JOIN DISCORD AND VERIFY USERNAME", Font = Enum.Font.GothamBlack,
        TextSize = 13, TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, s1)
    new("TextLabel", {Size = UDim2.new(1, -30, 0, 46), Position = UDim2.fromOffset(16, 48),
        BackgroundTransparency = 1, Text = "1. Copy the invite below and join\n2. Type your Discord username\n3. Click VERIFY",
        Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,
        TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, s1)
    local invBtn = new("TextButton", {Size = UDim2.new(1, -32, 0, 30), Position = UDim2.fromOffset(16, 98),
        BackgroundColor3 = Theme.neon, Text = "COPY INVITE LINK", Font = Enum.Font.GothamBold,
        TextSize = 11, TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
        BorderSizePixel = 0, ZIndex = 13}, s1)
    corner(invBtn, 8)
    grad(invBtn, Theme.neon, Theme.accent3, 0)
    local userInput = new("TextBox", {Size = UDim2.new(1, -130, 0, 30), Position = UDim2.fromOffset(16, 136),
        BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Text = "",
        PlaceholderText = "discord username...", PlaceholderColor3 = Theme.muted,
        Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = Theme.text,
        ClearTextOnFocus = false, ZIndex = 50}, s1)
    corner(userInput, 8)
    stroke(userInput, Theme.strokeSoft, 1.2)
    local verifyBtn = new("TextButton", {Size = UDim2.fromOffset(100, 30),
        Position = UDim2.new(1, -114, 0, 136), BackgroundColor3 = Theme.neon, Text = "VERIFY",
        Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
        AutoButtonColor = false, ZIndex = 13}, s1)
    corner(verifyBtn, 8)
    grad(verifyBtn, Theme.neon, Theme.accent3, 0)
    local s1Status = new("TextLabel", {Size = UDim2.new(1, -32, 0, 56), Position = UDim2.fromOffset(16, 174),
        BackgroundTransparency = 1, Text = "", Font = Enum.Font.Gotham, TextSize = 10,
        TextColor3 = Theme.muted, TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, s1)
    local s2 = new("Frame", {Size = UDim2.new(1, -50, 0, 185), Position = UDim2.fromOffset(25, 326),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.55, BorderSizePixel = 0, ZIndex = 12}, card)
    corner(s2, 12)
    local s2Stroke = stroke(s2, Theme.strokeSoft, 1.4, 0.75)
    local s2Tag = new("Frame", {Size = UDim2.fromOffset(30, 30), Position = UDim2.fromOffset(14, 14),
        BackgroundColor3 = Theme.neon, BorderSizePixel = 0, ZIndex = 13}, s2)
    corner(s2Tag, 15)
    new("TextLabel", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = "2",
        Font = Enum.Font.GothamBlack, TextSize = 14, TextColor3 = Color3.new(1, 1, 1), ZIndex = 14}, s2Tag)
    new("TextLabel", {Size = UDim2.new(1, -58, 0, 20), Position = UDim2.fromOffset(52, 16),
        BackgroundTransparency = 1, Text = "AUTHORIZE THE APP", Font = Enum.Font.GothamBlack,
        TextSize = 13, TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, s2)
    new("TextLabel", {Size = UDim2.new(1, -30, 0, 60), Position = UDim2.fromOffset(16, 48),
        BackgroundTransparency = 1, Text = "1. Click COPY AUTH LINK\n2. Open in browser, click Authorize\n3. Discord will confirm, screen auto-closes",
        Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2, TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, s2)
    local authBtn = new("TextButton", {Size = UDim2.new(1, -32, 0, 36), Position = UDim2.fromOffset(16, 122),
        BackgroundColor3 = Theme.neon, Text = "LOCKED - complete step 1 first",
        Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
        AutoButtonColor = false, BorderSizePixel = 0, ZIndex = 13}, s2)
    corner(authBtn, 8)
    authBtn.Active = false
    local step1Passed = false
    local verifiedDiscordUsername = nil
    local function unlockStep2(username)
        step1Passed = true
        verifiedDiscordUsername = username
        s2.BackgroundTransparency = 0.15
        s2Stroke.Transparency = 0.4
        authBtn.Active = true
        authBtn.Text = "COPY AUTH LINK"
    end
    local result = {done = false, user = nil}
    local sessionId = nil
    local polling = false
    invBtn.MouseButton1Click:Connect(function()
        copyToClipboard(DISCORD_INVITE)
        tryOpenBrowser(DISCORD_INVITE)
        invBtn.Text = "COPIED - JOIN NOW"
        task.delay(2, function() if invBtn and invBtn.Parent then invBtn.Text = "COPY INVITE LINK" end end)
    end)
    verifyBtn.MouseButton1Click:Connect(function()
        if step1Passed then return end
        local uname = (userInput.Text or ""):gsub("^%s+", ""):gsub("%s+$", "")
        if uname == "" then
            s1Status.Text = "Enter your Discord username first"
            s1Status.TextColor3 = Theme.danger
            return
        end
        verifyBtn.Text = "CHECKING..."
        verifyBtn.Active = false
        task.spawn(function()
            local inGuild, info = checkGuildIn(uname)
            verifyBtn.Active = true
            if inGuild == true then
                verifyBtn.Text = "VERIFIED"
                verifyBtn.BackgroundColor3 = Theme.success
                s1Status.Text = "Discord user @" .. uname .. " found - step 2 unlocked"
                s1Status.TextColor3 = Theme.success
                s1Tag.BackgroundColor3 = Theme.success
                unlockStep2(uname)
            elseif inGuild == false then
                verifyBtn.Text = "VERIFY"
                s1Status.Text = "@" .. uname .. " not in the server - join first"
                s1Status.TextColor3 = Theme.danger
            else
                verifyBtn.Text = "VERIFY"
                local errMsg = (type(info) == "table" and info.err) or tostring(info)
                s1Status.Text = errMsg
                s1Status.TextColor3 = Theme.danger
            end
        end)
    end)
    authBtn.MouseButton1Click:Connect(function()
        if not step1Passed then return end
        local newSid = "rpr_" .. tostring(LP.UserId) .. "_" .. tostring(math.random(100000, 999999))
        local link = KEY_API .. "/oauth/start?session=" .. newSid .. "&username=" .. HttpService:UrlEncode(verifiedDiscordUsername or "")
        copyToClipboard(link)
        tryOpenBrowser(link)
        authBtn.Text = "COPIED - OPEN IN BROWSER"
        sessionId = newSid
        if not polling then
            polling = true
            task.spawn(function()
                while polling and sessionId do
                    task.wait(2)
                    if not polling or not sessionId then break end
                    local resp = postJSON("/oauth/poll", {session = sessionId, robloxId = tostring(LP.UserId)})
                    if resp and resp.status == "ok" and resp.key then
                        SESSION_KEY = resp.key
                        DISCORD_USERNAME = resp.discordName or verifiedDiscordUsername
                        DISCORD_ID = resp.discordId
                        saveVerifiedData({
                            key = SESSION_KEY, robloxId = tostring(LP.UserId),
                            discordUsername = DISCORD_USERNAME, discordId = DISCORD_ID, savedAt = os.time(),
                        })
                        polling = false
                        task.wait(0.5)
                        promptGui:Destroy()
                        result.done = true
                        local rawRank = resp.rank or resp.role or resp.userRank or resp.user_rank or resp.badge
                        result.user = {
                            key = resp.key, username = resp.username or "user",
                            displayName = resp.displayName or resp.username or "Verified",
                            avatar = resp.avatar or "", discordId = resp.discordId or "",
                            discordName = DISCORD_USERNAME or "",
                            rank = normalizeRank(rawRank),
                        }
                        return
                    end
                end
            end)
        end
    end)
    while not result.done do task.wait(0.2) end
    return result.user
end

local function verifySession()
    local function tryCheck(k)
        if not k then return nil end
        local resp = postJSON("/check", {robloxId = tostring(LP.UserId), key = k})
        if resp and resp.valid then
            local tokenResp = postJSON("/check-token", {robloxId = tostring(LP.UserId), key = k})
            if tokenResp and tokenResp.authorized == false then
                return nil, {reason = tokenResp.reason or "deauthorized"}
            end
            local rawRank = resp.rank or resp.role or resp.userRank or resp.user_rank or resp.badge
            return {
                key = k, username = resp.username or "user",
                displayName = resp.displayName or resp.username or "Verified",
                avatar = resp.avatar or "", discordId = resp.discordId or DISCORD_ID or "",
                discordName = resp.discordName or DISCORD_USERNAME or "",
                rank = normalizeRank(rawRank),
            }
        end
        return nil, resp
    end
    local saved = loadVerifiedData()
    if saved and saved.key then
        local user = tryCheck(saved.key)
        if user then
            SESSION_KEY = saved.key
            DISCORD_USERNAME = saved.discordUsername or user.discordName
            DISCORD_ID = saved.discordId or user.discordId
            user.discordName = user.discordName or DISCORD_USERNAME
            user.discordId = user.discordId or DISCORD_ID
            return user, true
        else
            clearVerifiedData()
        end
    end
    local user = showKeyPrompt()
    if user then
        SESSION_KEY = user.key
        DISCORD_USERNAME = user.discordName
        DISCORD_ID = user.discordId
        saveVerifiedData({
            key = user.key, robloxId = tostring(LP.UserId),
            discordUsername = user.discordName, discordId = user.discordId, savedAt = os.time(),
        })
    end
    return user, false
end

local verifiedUser = verifySession()
if not verifiedUser then
    warn("[REAPER] verification failed")
    return
end

MY_USER = verifiedUser
MY_USER.country = "Unknown"
MY_USER.countryCode = ""
MY_USER.connectedAt = tick()
MY_USER.userId = LP.UserId

fetchCountry(function(name, code)
    MY_USER.country = name or "Unknown"
    MY_USER.countryCode = code or ""
end)
showVerifiedScreen(verifiedUser)

function makeDraggable(frame, handle)
    local dragging, sPos, fPos = false, nil, nil
    handle.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            dragging, sPos, fPos = true, i.Position, frame.Position
        end
    end)
    UIS.InputChanged:Connect(function(i)
        if not dragging then return end
        if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then
            local d = i.Position - sPos
            frame.Position = UDim2.new(fPos.X.Scale, fPos.X.Offset + d.X, fPos.Y.Scale, fPos.Y.Offset + d.Y)
        end
    end)
    UIS.InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
end

function makeResizable(frame, opts)
    opts = opts or {}
    local minW, minH = opts.minW or 300, opts.minH or 200
    local corners_ = opts.corners or {"br", "tr", "bl", "tl"}
    local gs = opts.gripSize or 14
    local baseZ = (frame.ZIndex or 1) + 500
    frame.ClipsDescendants = true
    for _, c in ipairs(corners_) do
        local grip = new("Frame", {Name = "Resize_" .. c, Size = UDim2.fromOffset(gs, gs),
            BackgroundTransparency = 1, ZIndex = baseZ, Active = true}, frame)
        if c == "br" then grip.Position = UDim2.new(1, -gs, 1, -gs)
        elseif c == "tr" then grip.Position = UDim2.new(1, -gs, 0, 0)
        elseif c == "bl" then grip.Position = UDim2.new(0, 0, 1, -gs)
        elseif c == "tl" then grip.Position = UDim2.new(0, 0, 0, 0) end
        local hot = new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = baseZ + 2}, grip)
        local dragging, sPos, sSize = false, nil, nil
        local function begin(i)
            if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
                dragging, sPos = true, i.Position
                sSize = Vector2.new(frame.AbsoluteSize.X, frame.AbsoluteSize.Y)
            end
        end
        grip.InputBegan:Connect(begin)
        hot.InputBegan:Connect(begin)
        UIS.InputChanged:Connect(function(i)
            if not dragging then return end
            if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then
                local d = i.Position - sPos
                local w, h = sSize.X, sSize.Y
                if c:find("r") then w = sSize.X + d.X end
                if c:find("l") then w = sSize.X - d.X end
                if c:find("b") then h = sSize.Y + d.Y end
                if c:find("t") then h = sSize.Y - d.Y end
                w, h = math.max(minW, w), math.max(minH, h)
                frame.Size = UDim2.fromOffset(w, h)
                if opts.onResize then pcall(opts.onResize, w, h) end
            end
        end)
        UIS.InputEnded:Connect(function(i)
            if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
                dragging = false
            end
        end)
    end
end

function isAlly(p)
    if p == LP then return true end
    if LP.Team and p.Team then return LP.Team == p.Team end
    return false
end

local policeKW = {"police", "cop", "officer", "swat", "guard", "sheriff", "law", "warden", "blue", "patrol"}
local crimKW = {"criminal", "crim", "robber", "thief", "gang", "mob", "mafia", "outlaw", "red"}
local prisKW = {"prison", "inmate", "convict", "orange", "jail"}
local ufKW = {"united front", "unitedfront", "united", "front"}
local ilKW = {"iron legion", "ironlegion", "iron", "legion"}
function detectPCP(p)
    if not p then return nil end
    local t = ""
    if p.Team and p.Team.Name then t = p.Team.Name:lower() end
    if t == "" then return nil end
    for _, k in ipairs(policeKW) do if t:find(k, 1, true) then return "police" end end
    for _, k in ipairs(crimKW) do if t:find(k, 1, true) then return "criminal" end end
    for _, k in ipairs(prisKW) do if t:find(k, 1, true) then return "prisoner" end end
    return nil
end
function detectDOW(p)
    if p == LP then return "united" end
    local t = ""
    if p.Team and p.Team.Name then t = p.Team.Name:lower() end
    if t == "" then return nil end
    for _, k in ipairs(ufKW) do if t:find(k, 1, true) then return "united" end end
    for _, k in ipairs(ilKW) do if t:find(k, 1, true) then return "iron" end end
    return nil
end
function getRole(p)
    local c = p.Character
    if c then
        local tool = c:FindFirstChildOfClass("Tool")
        if tool then
            local n = tool.Name:lower()
            if n:find("gun") or n:find("revolver") or n:find("pistol") then return "sheriff" end
            if n:find("knife") or n:find("dagger") or n:find("blade") then return "murderer" end
        end
    end
    return "innocent"
end
function espColour(p)
    if not p then return ESPColours.ally end
    local m = Cfg.Visuals.Mode or "Team"
    if m == "Team" then return isAlly(p) and ESPColours.ally or ESPColours.enemy end
    if m == "PCP" then
        local r = detectPCP(p)
        if r == "police" then return ESPColours.police end
        if r == "criminal" then return ESPColours.criminal end
        if r == "prisoner" then return ESPColours.prisoner end
        return ESPColours.prisoner
    end
    if m == "Role" then
        local r = getRole(p)
        if r == "sheriff" then return ESPColours.sheriff end
        if r == "murderer" then return ESPColours.murderer end
        return ESPColours.innocent
    end
    if m == "DOW" then
        local dow = detectDOW(p)
        if dow == "united" then return ESPColours.united end
        if dow == "iron" then return ESPColours.iron end
        return ESPColours.united
    end
    return isAlly(p) and ESPColours.ally or ESPColours.enemy
end
function espOutline(p)
    local c = espColour(p)
    return Color3.new(math.min(1, c.R * 1.15), math.min(1, c.G * 1.15), math.min(1, c.B * 1.15))
end
function roleLabel(p)
    local m = Cfg.Visuals.Mode or "Team"
    if m == "Team" then return isAlly(p) and "[TEAM]" or "[ENEMY]" end
    if m == "PCP" then
        local r = detectPCP(p)
        if r == "police" then return "[POLICE]" end
        if r == "criminal" then return "[CRIMINAL]" end
        return "[PRISONER]"
    end
    if m == "Role" then
        local r = getRole(p)
        if r == "sheriff" then return "[SHERIFF]" end
        if r == "murderer" then return "[MURDERER]" end
        return "[INNOCENT]"
    end
    return isAlly(p) and "[ALLY]" or "[ENEMY]"
end
function reticleColour(p)
    local m = Cfg.UI.ReticleMode or "Auto"
    if m == "Custom" then return Color3.fromRGB(Cfg.UI.ReticleR, Cfg.UI.ReticleG, Cfg.UI.ReticleB) end
    return espColour(p)
end

function boundKeys()
    local b = {}
    if Cfg.UI.MenuKey then b[Cfg.UI.MenuKey] = true end
    if Cfg.UI.HUDKey then b[Cfg.UI.HUDKey] = true end
    if Cfg.UI.ADKey then b[Cfg.UI.ADKey] = true end
    for _, x in pairs(Cfg.Binds or {}) do if x then b[x] = true end end
    for _, x in pairs(Cfg.TapBinds or {}) do if x then b[x] = true end end
    return b
end
function unboundKeys(n)
    local b = boundKeys()
    local out = {}
    for _, k in ipairs(PREFERRED_KEYS) do
        if not b[k] then
            out[#out + 1] = k
            if #out >= n then break end
        end
    end
    return out
end

function ripple(parent, x, y, col, sz, dur)
    if not Cfg.UI.Juicy then return end
    local r = new("Frame", {
        Position = UDim2.fromOffset(x - sz/2, y - sz/2),
        Size = UDim2.fromOffset(sz, sz),
        BackgroundColor3 = col or Theme.accent,
        BackgroundTransparency = 0.4, BorderSizePixel = 0, ZIndex = 100,
    }, parent)
    corner(r, sz)
    local s = stroke(r, col or Theme.accent, 2, 0.15)
    local t1 = Tween:Create(r, TweenInfo.new(dur or 0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
        {Size = UDim2.fromOffset(sz * 2.6, sz * 2.6),
         Position = UDim2.fromOffset(x - sz * 1.3, y - sz * 1.3),
         BackgroundTransparency = 1})
    local t2 = Tween:Create(s, TweenInfo.new(dur or 0.4, Enum.EasingStyle.Quart), {Transparency = 1, Thickness = 1})
    t1:Play()
    t2:Play()
    t1.Completed:Connect(function() r:Destroy() end)
end

function pulse(inst, sc, dur)
    if not Cfg.UI.Juicy or not inst or not inst.Parent then return end
    local base = inst:GetAttribute("PulseBase")
    if base == nil then
        base = inst.Size
        inst:SetAttribute("PulseBase", base)
    end
    local s = sc or 1.06
    local b = UDim2.new(base.X.Scale * s, base.X.Offset * s, base.Y.Scale * s, base.Y.Offset * s)
    inst.Size = b
    task.delay(dur or 0.09, function()
        if inst and inst.Parent then
            Tween:Create(inst, TweenInfo.new(dur or 0.14, Enum.EasingStyle.Back), {Size = base}):Play()
        end
    end)
end

function flash(inst, col, dur)
    if not Cfg.UI.Juicy then return end
    local base = inst:GetAttribute("FlashBase")
    if base == nil then
        base = inst.BackgroundColor3
        inst:SetAttribute("FlashBase", base)
    end
    inst.BackgroundColor3 = col
    task.delay(dur or 0.1, function()
        if inst and inst.Parent then
            Tween:Create(inst, TweenInfo.new(0.18), {BackgroundColor3 = base}):Play()
        end
    end)
end

function glow(inst, col, dur)
    if not Cfg.UI.Juicy then return end
    local s = inst:FindFirstChildOfClass("UIStroke")
    if not s then return end
    local t, th = s.Transparency, s.Thickness
    s.Transparency = 0
    s.Thickness = th + 1.5
    s.Color = col or Theme.accent2
    Tween:Create(s, TweenInfo.new(dur or 0.35), {Transparency = t, Thickness = th}):Play()
end

function shine(inst, col, dur)
    local sh = new("Frame", {
        Size = UDim2.new(0.35, 0, 1, 0), Position = UDim2.new(-0.4, 0, 0, 0),
        BackgroundColor3 = col or Color3.new(1, 1, 1), BackgroundTransparency = 0.5,
        BorderSizePixel = 0, ZIndex = (inst.ZIndex or 1) + 5,
    }, inst)
    corner(sh, 4)
    new("UIGradient", {Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 1),
        NumberSequenceKeypoint.new(0.5, 0.1),
        NumberSequenceKeypoint.new(1, 1),
    }), Rotation = 0}, sh)
    Tween:Create(sh, TweenInfo.new(dur or 0.6, Enum.EasingStyle.Quart),
        {Position = UDim2.new(1.2, 0, 0, 0)}):Play()
    task.delay(dur or 0.6, function() if sh and sh.Parent then sh:Destroy() end end)
end

function hoverStripe(parent, col)
    local s = new("Frame", {
        Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = col or Theme.neon,
        BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 38,
    }, parent)
    corner(s, 2)
    parent.MouseEnter:Connect(function()
        Tween:Create(s, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
    end)
    parent.MouseLeave:Connect(function()
        Tween:Create(s, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play()
    end)
end

function initNotifs(pgx)
    notifGui = new("ScreenGui", {Name = "ReaperNotif", ResetOnSpawn = false,
        IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9996}, pgx)
    notifStack = new("Frame", {Size = UDim2.new(0, 320, 1, -40),
        Position = UDim2.new(1, -330, 0, 20), BackgroundTransparency = 1, ZIndex = 1}, notifGui)
    new("UIListLayout", {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder,
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        VerticalAlignment = Enum.VerticalAlignment.Top}, notifStack)
end

function notify(title, msg, col, dur, copyText)
    if not Cfg.UI.Notifs or not notifStack then return end
    col = col or Theme.neon
    local hasCopy = type(copyText) == "string" and copyText ~= ""
    local cardH = hasCopy and 86 or 68
    local card = new("Frame", {Size = UDim2.new(1, 0, 0, 0),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.05,
        BorderSizePixel = 0, ZIndex = 2, ClipsDescendants = true}, notifStack)
    corner(card, 12)
    local st = stroke(card, col, 1.8, 0.1)
    grad(card, Theme.panel2, Theme.bg, 90)
    new("Frame", {Size = UDim2.new(0, 3, 1, -14), Position = UDim2.new(0, 7, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = col, BorderSizePixel = 0, ZIndex = 3}, card)
    new("TextLabel", {Size = UDim2.new(1, -28, 0, 18), Position = UDim2.fromOffset(20, 10),
        BackgroundTransparency = 1, Text = title or "", Font = Enum.Font.GothamBlack,
        TextSize = 12, TextColor3 = col, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 3}, card)
    new("TextLabel", {Size = UDim2.new(1, -28, 0, 32), Position = UDim2.fromOffset(20, 30),
        BackgroundTransparency = 1, Text = msg or "", Font = Enum.Font.Gotham,
        TextSize = 11, TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true, ZIndex = 3}, card)
    if hasCopy then
        local copyBtn = new("TextButton", {Size = UDim2.new(1, -28, 0, 20),
            Position = UDim2.fromOffset(20, cardH - 26), BackgroundColor3 = Theme.panel2,
            Text = "COPY ERROR", Font = Enum.Font.GothamBold, TextSize = 10,
            TextColor3 = Theme.accent2, AutoButtonColor = false, ZIndex = 4}, card)
        corner(copyBtn, 6)
        stroke(copyBtn, col, 1, 0.3)
        copyBtn.MouseButton1Click:Connect(function()
            if type(setclipboard) == "function" then
                pcall(setclipboard, copyText)
                copyBtn.Text = "COPIED"
            end
        end)
    end
    card.Position = UDim2.new(1, 60, 0, 0)
    Tween:Create(card, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
        {Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 0, cardH)}):Play()
    shine(card, col, 0.7)
    local lifetime = dur or (hasCopy and 12 or 3.5)
    task.delay(lifetime, function()
        if not card or not card.Parent then return end
        local t = Tween:Create(card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
            {Position = UDim2.new(1, 60, 0, 0), BackgroundTransparency = 1})
        t:Play()
        Tween:Create(st, TweenInfo.new(0.35), {Transparency = 1}):Play()
        t.Completed:Connect(function() card:Destroy() end)
    end)
end

-- GUI ROOT
local pg = LP:WaitForChild("PlayerGui")
gui = new("ScreenGui", {Name = "ReaperUI", ResetOnSpawn = false,
    IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9999}, pg)
initNotifs(pg)

-- ANNOUNCEMENTS
annGui = new("ScreenGui", {Name = "ReaperAnnounce", ResetOnSpawn = false,
    IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10001}, pg)
annSlot = new("Frame", {Size = UDim2.new(0, 520, 0, 0),
    Position = UDim2.new(0.5, 0, 0, 60), AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1, ZIndex = 1}, annGui)
annCurrent = nil

function dismissAnnouncement()
    local c = annCurrent
    if not c then return end
    annCurrent = nil
    if c.card and c.card.Parent then
        local t = Tween:Create(c.card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
            {Position = UDim2.new(0, 0, 0, -180), BackgroundTransparency = 1})
        t:Play()
        t.Completed:Connect(function() if c.card and c.card.Parent then c.card:Destroy() end end)
    end
end

function showAnnouncement(data)
    if not annSlot or not annSlot.Parent then return end
    dismissAnnouncement()
    local rank = data.rank or "owner"
    local style = BADGE_STYLE[rank] or BADGE_STYLE.owner
    local col = style.color
    local cardWidth = 520
    local bodyWidth = cardWidth - 34
    local bodyText = tostring(data.text or "")
    local bodyHeight = 22
    pcall(function()
        local size = TextService:GetTextSize(bodyText, 13, Enum.Font.GothamBold, Vector2.new(bodyWidth, 500))
        bodyHeight = math.clamp(size.Y + 4, 22, 220)
    end)
    local cardHeight = 60 + bodyHeight + 18
    local card = new("Frame", {Size = UDim2.fromOffset(cardWidth, cardHeight),
        Position = UDim2.new(0, 0, 0, -180), BackgroundColor3 = Theme.bg,
        BackgroundTransparency = 0.02, BorderSizePixel = 0, ZIndex = 3, ClipsDescendants = true}, annSlot)
    corner(card, 14)
    local st = stroke(card, col, 2, 0.1)
    grad(card, Color3.fromRGB(28, 14, 56), Theme.bg, 90)
    new("Frame", {Size = UDim2.new(1, 0, 0, 3), BackgroundColor3 = col, BorderSizePixel = 0, ZIndex = 4}, card)
    new("TextLabel", {Size = UDim2.new(1, -20, 0, 18), Position = UDim2.fromOffset(16, 12),
        BackgroundTransparency = 1, Text = style.label .. " ANNOUNCEMENT", Font = Enum.Font.GothamBlack,
        TextSize = 11, TextColor3 = col, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, card)
    new("TextLabel", {Size = UDim2.new(1, -20, 0, 14), Position = UDim2.fromOffset(16, 30),
        BackgroundTransparency = 1, Text = "from " .. tostring(data.sender or "?"),
        Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, card)
    new("TextLabel", {Size = UDim2.fromOffset(bodyWidth, bodyHeight), Position = UDim2.fromOffset(16, 60),
        BackgroundTransparency = 1, Text = bodyText, Font = Enum.Font.GothamBold,
        TextSize = 13, TextColor3 = Theme.text, TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 5}, card)
    Tween:Create(card, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Position = UDim2.new(0, 0, 0, 0)}):Play()
    local dur = math.clamp(6 + #bodyText * 0.045, 6, 16)
    annCurrent = {card = card, stroke = st}
    task.delay(dur, function()
        if annCurrent and annCurrent.card == card then dismissAnnouncement() end
    end)
end

function sendAnnouncement(text)
    if not isMod() then
        notify("Denied", "You are not an owner/mod", Theme.danger, 2)
        return false
    end
    text = tostring(text or ""):gsub("^%s+", ""):gsub("%s+$", "")
    if text == "" then return false end
    if not SESSION_KEY or SESSION_KEY == "" then
        notify("Announce", "Not verified yet", Theme.danger, 5)
        return false
    end
    task.spawn(function()
        local body = HttpService:JSONEncode({
            robloxId = tostring(LP.UserId), key = SESSION_KEY, text = text,
        })
        local ok, res = httpPost(KEY_API .. "/announce/send", body)
        if ok then
            showAnnouncement({text = text, sender = LP.Name, userId = LP.UserId,
                rank = getLocalRank() or "owner", time = os.time()})
            notify("Announcement sent", "Broadcast to all servers", Theme.success, 3)
        else
            local pretty = parseErrorReason(res)
            notify("Announce failed", pretty, Theme.danger, 8, pretty)
        end
    end)
    return true
end

-- CROSSHAIR
crossGui = new("ScreenGui", {Name = "ReaperCross", ResetOnSpawn = false,
    IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10000}, pg)
crosshair = new("Frame", {Size = UDim2.fromOffset(40, 40), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundTransparency = 1, Visible = false}, crossGui)
local crossArms = {}
for i = 1, 4 do
    crossArms[i] = new("Frame", {BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.15,
        BorderSizePixel = 0, ZIndex = 5, Visible = false}, crosshair)
    corner(crossArms[i], 1)
end
reticle = new("Frame", {Size = UDim2.fromOffset(110, 110), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundTransparency = 1, Visible = false}, crossGui)
RSIZE = 110
ring1 = new("Frame", {Size = UDim2.fromOffset(RSIZE, RSIZE), BackgroundTransparency = 1, ZIndex = 6}, reticle)
corner(ring1, RSIZE)
ring1S = stroke(ring1, Theme.neon, 2, 0.15)
ring2 = new("Frame", {Size = UDim2.fromOffset(RSIZE - 14, RSIZE - 14), Position = UDim2.fromOffset(7, 7),
    BackgroundTransparency = 1, ZIndex = 7}, reticle)
corner(ring2, RSIZE)
ring2S = stroke(ring2, Theme.neon, 1, 0.5)
trackLine = new("Frame", {BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,
    AnchorPoint = Vector2.new(0, 0.5), BorderSizePixel = 0, ZIndex = 5, Visible = false}, crossGui)
hpBar = new("Frame", {Size = UDim2.fromOffset(4, 60), Position = UDim2.new(1, 10, 0.5, -30),
    BackgroundColor3 = Theme.danger, BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 10}, reticle)
corner(hpBar, 2)
hpFill = new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Theme.success,
    BorderSizePixel = 0, ZIndex = 11}, hpBar)
corner(hpFill, 2)
retName = new("TextLabel", {Size = UDim2.new(1, 60, 0, 18), Position = UDim2.new(0, -30, 1, 10),
    BackgroundTransparency = 1, Font = Enum.Font.GothamBlack, TextSize = 14, TextColor3 = Theme.neon,
    Text = "", TextStrokeTransparency = 0.3, TextStrokeColor3 = Color3.new(0, 0, 0), ZIndex = 12}, reticle)
retDist = new("TextLabel", {Size = UDim2.new(1, 60, 0, 13), Position = UDim2.new(0, -30, 1, 28),
    BackgroundTransparency = 1, Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Theme.muted,
    Text = "", TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0, 0, 0), ZIndex = 12}, reticle)
retActions = new("Frame", {Size = UDim2.new(1, 220, 0, 20), Position = UDim2.new(0, -110, 1, 46),
    BackgroundTransparency = 1, ZIndex = 13}, reticle)
new("UIListLayout", {FillDirection = Enum.FillDirection.Horizontal,
    HorizontalAlignment = Enum.HorizontalAlignment.Center,
    VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0, 5)}, retActions)
rainbowH = 0

-- ORBIT CIRCLE INDICATOR (thin parts at ground level)
orbitCircle = new("Part", {
    Name = "ReaperOrbitCircle", Shape = Enum.PartType.Cylinder,
    Anchored = true, CanCollide = false, CanTouch = false, CanQuery = false,
    CastShadow = false, Material = Enum.Material.SmoothPlastic,
    Color = Color3.fromRGB(200, 200, 200), Transparency = 1,
    Size = Vector3.new(0.1, 16, 16), CFrame = CFrame.new(0, -1000, 0),
}, workspace)
orbitCircleLocked = new("Part", {
    Name = "ReaperOrbitCircleLocked", Shape = Enum.PartType.Cylinder,
    Anchored = true, CanCollide = false, CanTouch = false, CanQuery = false,
    CastShadow = false, Material = Enum.Material.ForceField,
    Color = Color3.fromRGB(180, 180, 180), Transparency = 1,
    Size = Vector3.new(0.15, 16, 16), CFrame = CFrame.new(0, -1000, 0),
}, workspace)

-- LOGO (with FULL animation restored)
LW, LH = 170, 54
logo = new("TextButton", {Name = "Logo", Size = UDim2.fromOffset(LW, LH),
    Position = UDim2.new(0.5, -LW/2, 0, 12), BackgroundTransparency = 1, Text = "",
    AutoButtonColor = false, ZIndex = 60}, gui)
aura = new("Frame", {Size = UDim2.fromScale(1.1, 1.25),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,
    BorderSizePixel = 0, ZIndex = 1}, logo)
corner(aura, 16)
back = tBg(new("Frame", {Size = UDim2.fromScale(1, 1),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, logo))
corner(back, 14)
grad(back, Color3.fromRGB(22, 10, 44), Theme.bgDeep, 90)
backStroke = tAcc(stroke(back, Theme.neon, 1.8, 0.15))
dropShadow(back, 14, 10, 0.6)
ring = new("Frame", {Size = UDim2.fromScale(1, 1),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundTransparency = 1, ZIndex = 3}, logo)
corner(ring, 14)
new("UIStroke", {Color = Color3.new(1, 1, 1), Thickness = 1.6}, ring)
ringG = new("UIGradient", {Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Theme.neon),
    ColorSequenceKeypoint.new(0.33, Theme.accent3),
    ColorSequenceKeypoint.new(0.66, Color3.fromRGB(180, 220, 255)),
    ColorSequenceKeypoint.new(1, Theme.neon),
}), Rotation = 0}, ring:FindFirstChildOfClass("UIStroke"))
plate = new("Frame", {Size = UDim2.fromOffset(34, 34),
    Position = UDim2.new(0, 10, 0.5, -17), BackgroundColor3 = Theme.panel,
    BorderSizePixel = 0, ZIndex = 4}, back)
corner(plate, 4)
stroke(plate, Theme.neon, 1.6, 0.1)
plate.Rotation = 45
flame = new("Frame", {Size = UDim2.fromOffset(16, 16),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Theme.neon, BorderSizePixel = 0, Rotation = 0, ZIndex = 5}, plate)
corner(flame, 4)
grad(flame, Theme.accent3, Theme.neon, 90)
stroke(flame, Theme.accent2, 1, 0.3)
new("Frame", {Size = UDim2.fromOffset(7, 7),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Color3.fromRGB(255, 245, 255), BorderSizePixel = 0,
    ZIndex = 6}, plate)
title = new("TextLabel", {Size = UDim2.new(1, -60, 0, 24), Position = UDim2.fromOffset(56, 8),
    BackgroundTransparency = 1, Text = "REAPER", Font = Enum.Font.GothamBlack,
    TextSize = 17, TextColor3 = Color3.new(1, 1, 1), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back)
titleG = new("UIGradient", {Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Theme.accent2),
    ColorSequenceKeypoint.new(0.5, Theme.neon),
    ColorSequenceKeypoint.new(1, Theme.accent3),
}), Rotation = 20}, title)
tAcc(stroke(title, Theme.neon, 1.2, 0.2))
tMuted(new("TextLabel", {Size = UDim2.new(1, -60, 0, 11), Position = UDim2.fromOffset(57, 32),
    BackgroundTransparency = 1, Text = "CLICK - X", Font = Enum.Font.GothamBold,
    TextSize = 7, TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back))
task.spawn(function()
    while ring.Parent do
        for i = 0, 360, 4 do
            if not ring.Parent then return end
            ringG.Rotation = i
            RS.RenderStepped:Wait()
        end
    end
end)
logo.MouseEnter:Connect(function()
    Tween:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0}):Play()
    pulse(back, 1.03, 0.1)
end)
logo.MouseLeave:Connect(function()
    Tween:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0.15}):Play()
end)

-- MENU (with ambient particles restored)
menu = tBg(new("Frame", {Name = "Menu", Size = UDim2.fromOffset(660, 500),
    Position = UDim2.new(0.5, -330, 0.5, -250), BackgroundColor3 = Theme.bg,
    BorderSizePixel = 0, ClipsDescendants = true, Visible = false, ZIndex = 30}, gui))
corner(menu, 14)
menuStroke = tAcc(stroke(menu, Theme.neon, 2, 0.25))
dropShadow(menu, 14, 18, 0.7)
if Cfg.UI.MenuBlur then
    local blur = new("BlurEffect", {Size = 8, Parent = Lighting})
    task.spawn(function()
        while menu.Parent do
            blur.Enabled = menu.Visible
            task.wait(0.1)
        end
        blur:Destroy()
    end)
end
ambient = new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
    ClipsDescendants = true, ZIndex = 2}, menu)
ambientParts = {}
function buildAmbient()
    for _, p in ipairs(ambientParts) do if p.inst then p.inst:Destroy() end end
    ambientParts = {}
    if not Cfg.UI.Ambient then return end
    for i = 1, 18 do
        local sz = 2 + math.random() * 3
        local f = new("Frame", {Size = UDim2.fromOffset(sz, sz),
            Position = UDim2.fromScale(math.random(), math.random()),
            BackgroundColor3 = Theme.accent2,
            BackgroundTransparency = 0.55 + math.random() * 0.3,
            BorderSizePixel = 0, ZIndex = 2}, ambient)
        corner(f, sz)
        ambientParts[#ambientParts + 1] = {inst = f,
            vx = (math.random() - 0.5) * 0.015, vy = (math.random() - 0.5) * 0.015,
            phase = math.random() * math.pi * 2}
    end
end
buildAmbient()

header = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 54),
    BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(header, 14)
grad(header, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
new("Frame", {Size = UDim2.new(1, 0, 0, 2), Position = UDim2.new(0, 0, 1, -2),
    BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 32}, header)
tAcc2(new("TextLabel", {Size = UDim2.fromOffset(100, 54), Position = UDim2.fromOffset(14, 0),
    BackgroundTransparency = 1, Text = "REAPER", Font = Enum.Font.GothamBlack,
    TextSize = 17, TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header))
local _badgeLbl = new("TextLabel", {Size = UDim2.new(0, 130, 0, 20), Position = UDim2.fromOffset(110, 17),
    BackgroundTransparency = 1, Text = "", Font = Enum.Font.GothamBlack, TextSize = 11,
    TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header)
local _nameLbl = new("TextLabel", {Size = UDim2.new(0, 240, 0, 16),
    Position = UDim2.new(1, -280, 0.5, -19), BackgroundTransparency = 1,
    Text = "@loading...", Font = Enum.Font.GothamBold, TextSize = 11,
    TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)
local _metaLbl = new("TextLabel", {Size = UDim2.new(0, 240, 0, 13),
    Position = UDim2.new(1, -280, 0.5, 1), BackgroundTransparency = 1,
    Text = "loading...", Font = Enum.Font.Gotham, TextSize = 9,
    TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)

-- Ensure badge shows immediately from MY_USER
local function refreshBadge()
    if not MY_USER then return end
    local rank = MY_USER.rank
    local b = rank and BADGE_STYLE[rank]
    if b then
        _badgeLbl.Text = b.label
        _badgeLbl.TextColor3 = b.color
    else
        _badgeLbl.Text = ""
    end
end
refreshBadge()

task.spawn(function()
    while _nameLbl.Parent do
        if MY_USER then
            _nameLbl.Text = "@" .. (MY_USER.username or "user")
            local elapsed = math.max(0, tick() - (MY_USER.connectedAt or tick()))
            local hh = math.floor(elapsed / 3600)
            local mm = math.floor((elapsed % 3600) / 60)
            local ss = math.floor(elapsed % 60)
            _metaLbl.Text = string.format("%s - %02d:%02d:%02d",
                (MY_USER.country ~= "" and MY_USER.country) or "Unknown", hh, mm, ss)
            refreshBadge()
        end
        task.wait(0.5)
    end
end)
closeBtn = new("TextButton", {Size = UDim2.fromOffset(24, 24),
    Position = UDim2.new(1, -32, 0, 9), BackgroundColor3 = Theme.danger, Text = "X",
    Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
    AutoButtonColor = false, ZIndex = 33}, header)
corner(closeBtn, 6)
closeBtn.MouseButton1Click:Connect(function() closeMenu() end)

TICKER_HEIGHT = 28
tickerBar = tPanel(new("Frame", {Size = UDim2.new(1, -20, 0, TICKER_HEIGHT),
    Position = UDim2.fromOffset(10, 60), BackgroundColor3 = Theme.panel,
    BackgroundTransparency = 0.15, BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 31}, menu))
corner(tickerBar, 8)
grad(tickerBar, Color3.fromRGB(20, 10, 40), Color3.fromRGB(3, 2, 8), 90)
tickerStroke = stroke(tickerBar, Theme.neon, 1.4, 0.3)
tickerLabel = new("TextLabel", {Size = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 1,
    Text = Theme.ticker, Font = Enum.Font.GothamBlack, TextSize = 13,
    TextColor3 = Theme.tickerColor, TextXAlignment = Enum.TextXAlignment.Left,
    AutomaticSize = Enum.AutomaticSize.X, ZIndex = 34}, tickerBar)
tickerLabelGrad = new("UIGradient", {Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Theme.tickerColor),
    ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),
    ColorSequenceKeypoint.new(1, Theme.tickerColor),
}), Rotation = 0}, tickerLabel)
tickerX = 0
task.spawn(function()
    RS.RenderStepped:Connect(function(dt)
        if not tickerLabel.Parent then return end
        local w = tickerLabel.AbsoluteSize.X
        tickerX = tickerX - 110 * dt
        if tickerX + w < 0 then tickerX = tickerBar.AbsoluteSize.X + 4 end
        tickerLabel.Position = UDim2.fromOffset(tickerX, 0)
    end)
end)

rail = tPanel(new("Frame", {Size = UDim2.new(0, 120, 1, -130),
    Position = UDim2.fromOffset(10, 96), BackgroundColor3 = Theme.panel,
    BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(rail, 10)
new("UIListLayout", {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, rail)
new("UIPadding", {PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 5), PaddingRight = UDim.new(0, 5)}, rail)
tabIndicator = new("Frame", {Size = UDim2.new(1, -10, 0, 26),
    Position = UDim2.fromOffset(5, 6), BackgroundColor3 = Theme.neon,
    BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 31}, rail)
corner(tabIndicator, 6)
new("UIGradient", {Color = ColorSequence.new(Theme.neon, Theme.accent3)}, tabIndicator)

content = tPanel(new("Frame", {Size = UDim2.new(1, -148, 1, -130),
    Position = UDim2.fromOffset(138, 96), BackgroundColor3 = Theme.panel,
    BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(content, 10)
status = tPanel(new("Frame", {Size = UDim2.new(1, -20, 0, 20),
    Position = UDim2.new(0, 10, 1, -25), BackgroundColor3 = Theme.panel,
    BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(status, 6)
statusLbl = tMuted(new("TextLabel", {Size = UDim2.new(1, -12, 1, 0),
    Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1, Text = "REAPER",
    Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
    TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 32}, status))
makeDraggable(menu, header)
makeResizable(menu, {minW = Cfg.UI.MinW, minH = Cfg.UI.MinH})

function openMenu()
    if Cfg.UI.AnimatedOpen then
        local sz, ps = menu.Size, menu.Position
        menu.Visible = true
        menu.Size = UDim2.fromOffset(600, 460)
        menu.Position = UDim2.new(0.5, -300, 0.5, -230)
        Tween:Create(menu, TweenInfo.new(0.32, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size = sz, Position = ps}):Play()
    else
        menu.Visible = true
    end
end
function closeMenu()
    if Cfg.UI.AnimatedOpen and menu.Visible then
        local sz, ps = menu.Size, menu.Position
        local t = Tween:Create(menu, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
            {Size = UDim2.fromOffset(600, 460), Position = UDim2.new(0.5, -300, 0.5, -230)})
        t:Play()
        t.Completed:Connect(function()
            menu.Visible = false
            menu.Size, menu.Position = sz, ps
        end)
    else
        menu.Visible = false
    end
end--==================== WIDGETS ====================
pages = {}
tabs = {}
widgets = {}
toggleLabels = {}
pendingKeybind = nil
refreshHUD = function() end
refreshAD = function() end

function resolvePage(p)
    if type(p) == "string" then return pages[p] end
    return p
end

function makeTab(id, title)
    local tab = tPanel2(new("TextButton", {
        Size = UDim2.new(1, 0, 0, 26),
        BackgroundColor3 = Theme.panel2,
        Text = title,
        Font = Enum.Font.GothamBold,
        TextSize = 10,
        TextColor3 = Theme.muted,
        AutoButtonColor = false,
        LayoutOrder = #rail:GetChildren(),
        ZIndex = 32,
    }, rail))
    corner(tab, 7)
    tStroke(stroke(tab, Theme.strokeSoft, 1, 0.5))
    tabs[id] = tab
    local page = new("ScrollingFrame", {
        Name = "Page_" .. id,
        Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = Theme.neon,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        Visible = false,
        ZIndex = 32,
    }, content)
    new("UIListLayout", {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, page)
    new("UIPadding", {
        PaddingTop = UDim.new(0, 10),
        PaddingLeft = UDim.new(0, 10),
        PaddingRight = UDim.new(0, 10),
        PaddingBottom = UDim.new(0, 10),
    }, page)
    pages[id] = page
    tab.MouseButton1Click:Connect(function()
        for _, p in pairs(pages) do p.Visible = false end
        page.Visible = true
        for _, t in pairs(tabs) do
            t.TextColor3 = Theme.muted
            t.BackgroundColor3 = Theme.panel2
        end
        tab.TextColor3 = Color3.new(1, 1, 1)
        tab.BackgroundColor3 = Theme.neon
        glow(tab, Theme.accent2, 0.4)
        shine(tab, Color3.new(1, 1, 1), 0.5)
        local ty = tab.AbsolutePosition.Y - rail.AbsolutePosition.Y
        Tween:Create(tabIndicator, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
            {Position = UDim2.fromOffset(5, ty)}):Play()
        ripple(tab, tab.AbsoluteSize.X / 2, tab.AbsoluteSize.Y / 2, Theme.accent2, 18, 0.5)
    end)
    tab.MouseEnter:Connect(function()
        if tab.BackgroundColor3 ~= Theme.neon then
            Tween:Create(tab, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel3}):Play()
        end
    end)
    tab.MouseLeave:Connect(function()
        if tab.BackgroundColor3 ~= Theme.neon then
            Tween:Create(tab, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
        end
    end)
end

function section(pageId, title)
    local page = resolvePage(pageId)
    if not page then return nil end
    local wrap = tPanel2(new("Frame", {
        Size = UDim2.new(1, 0, 0, 24),
        BackgroundColor3 = Theme.panel2,
        BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(),
        ZIndex = 33,
    }, page))
    corner(wrap, 7)
    tStroke(stroke(wrap, Theme.strokeSoft, 1, 0.5))
    local hg = grad(wrap, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)
    new("Frame", {
        Size = UDim2.new(0, 3, 0.6, 0),
        Position = UDim2.new(0, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = Theme.neon,
        BorderSizePixel = 0,
        ZIndex = 35,
    }, wrap)
    new("TextLabel", {
        Size = UDim2.new(1, -14, 1, 0),
        Position = UDim2.fromOffset(12, 0),
        BackgroundTransparency = 1,
        Text = title,
        Font = Enum.Font.GothamBlack,
        TextSize = 10,
        TextColor3 = Theme.accent2,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 34,
    }, wrap)
    if Cfg.UI.ShimmerHeaders then
        task.spawn(function()
            local ph = 0
            while wrap.Parent do
                ph = (ph + 0.02) % 1
                hg.Offset = Vector2.new(ph, 0)
                RS.RenderStepped:Wait()
            end
        end)
    end
    return wrap
end

function collapsible(pageId, title, open)
    local page = resolvePage(pageId)
    if not page then return nil end
    local state = open and true or false
    local hdr = tPanel2(new("TextButton", {
        Size = UDim2.new(1, 0, 0, 24),
        BackgroundColor3 = Theme.panel2,
        BackgroundTransparency = 0.15,
        Text = "",
        AutoButtonColor = false,
        LayoutOrder = #page:GetChildren(),
        ZIndex = 33,
    }, page))
    corner(hdr, 7)
    tStroke(stroke(hdr, Theme.strokeSoft, 1, 0.5))
    grad(hdr, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)
    local arrow = new("TextLabel", {
        Size = UDim2.fromOffset(18, 24),
        Position = UDim2.fromOffset(8, 0),
        BackgroundTransparency = 1,
        Text = state and "v" or ">",
        Font = Enum.Font.GothamBold,
        TextSize = 10,
        TextColor3 = Theme.accent2,
        ZIndex = 34,
    }, hdr)
    new("TextLabel", {
        Size = UDim2.new(1, -30, 1, 0),
        Position = UDim2.fromOffset(26, 0),
        BackgroundTransparency = 1,
        Text = title,
        Font = Enum.Font.GothamBlack,
        TextSize = 10,
        TextColor3 = Theme.accent2,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 34,
    }, hdr)
    local holder = new("Frame", {
        Size = UDim2.new(1, 0, 0, 0),
        BackgroundTransparency = 1,
        AutomaticSize = Enum.AutomaticSize.Y,
        LayoutOrder = #page:GetChildren(),
        Visible = state,
        ZIndex = 33,
    }, page)
    new("UIListLayout", {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, holder)
    new("UIPadding", {PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4)}, holder)
    hdr.MouseButton1Click:Connect(function()
        state = not state
        arrow.Text = state and "v" or ">"
        holder.Visible = state
        glow(hdr, Theme.accent2, 0.3)
    end)
    return holder, hdr
end

function toggleRow(pageId, path, label, onChange)
    local page = resolvePage(pageId)
    if not page then return end
    toggleLabels[path] = label
    local state = getPath(Cfg, path) == true
    local row = tPanel(new("Frame", {
        Size = UDim2.new(1, 0, 0, 30),
        BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(),
        ZIndex = 33,
    }, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.neon)
    new("TextLabel", {
        Size = UDim2.new(1, -200, 1, 0),
        Position = UDim2.fromOffset(14, 0),
        BackgroundTransparency = 1,
        Text = label,
        Font = Enum.Font.Gotham,
        TextSize = 11,
        TextColor3 = Theme.text,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 36,
    }, row)
    local keyBtn = tPanel2(new("TextButton", {
        Size = UDim2.fromOffset(72, 18),
        Position = UDim2.new(1, -116, 0.5, -9),
        BackgroundColor3 = Theme.panel2,
        Text = "+ bind",
        Font = Enum.Font.GothamBold,
        TextSize = 9,
        TextColor3 = Theme.muted,
        AutoButtonColor = false,
        ZIndex = 36,
    }, row))
    corner(keyBtn, 5)
    tStroke(stroke(keyBtn, Theme.strokeSoft, 1))
    local function refreshKey()
        local k = Cfg.Binds and Cfg.Binds[path]
        if k then
            keyBtn.Text = k.Name
            keyBtn.TextColor3 = Theme.accent2
        else
            keyBtn.Text = "+ bind"
            keyBtn.TextColor3 = Theme.muted
        end
    end
    refreshKey()
    keyBtn.MouseButton1Click:Connect(function()
        pendingKeybind = {path = path, btn = keyBtn, refresh = refreshKey}
        keyBtn.Text = "press..."
        keyBtn.TextColor3 = Theme.danger
    end)
    local track = new("Frame", {
        Size = UDim2.fromOffset(42, 20),
        Position = UDim2.new(1, -50, 0.5, -10),
        BackgroundColor3 = state and Theme.neon or Theme.panel2,
        BorderSizePixel = 0,
        ZIndex = 36,
    }, row)
    corner(track, 10)
    tStroke(stroke(track, Theme.strokeSoft, 1, 0.4))
    local thumb = new("Frame", {
        Size = UDim2.fromOffset(14, 14),
        Position = state and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BorderSizePixel = 0,
        ZIndex = 37,
    }, track)
    corner(thumb, 7)
    tAcc(stroke(thumb, Theme.neon, 1.4, 0.2))
    local function render()
        if state then
            track.BackgroundColor3 = Theme.neon
            thumb.Position = UDim2.new(1, -17, 0.5, -7)
        else
            track.BackgroundColor3 = Theme.panel2
            thumb.Position = UDim2.new(0, 3, 0.5, -7)
        end
    end
    local function set(v, fire)
        local nv = v and true or false
        local changed = nv ~= state
        state = nv
        setPath(Cfg, path, state)
        if changed then
            local tgoal = state and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
            Tween:Create(thumb, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Position = tgoal}):Play()
            Tween:Create(track, TweenInfo.new(0.18, Enum.EasingStyle.Quart),
                {BackgroundColor3 = state and Theme.neon or Theme.panel2}):Play()
        end
        render()
        if path == "Troll.Hump" then
            if not state then
                local h = hum()
                if h then
                    h.PlatformStand = false
                    h.AutoRotate = true
                    pcall(function() h:ChangeState(Enum.HumanoidStateType.GettingUp) end)
                end
                TS.humpWasActive = false
                TS.lockedTarget = nil
                HUMP.awaitingRespawn = false
                HUMP.anchorY = nil
                HUMP.lastGoodY = nil
                HUMP.oldRootPart = nil
            else
                HUMP.phase = 0
                HUMP.smoothVel = 0
                HUMP.smoothAir = 0
                HUMP.lockTimer = 1.5
                HUMP.lastTier = "STILL"
                HUMP.awaitingRespawn = false
                HUMP.fallHold = 0
                HUMP.speedMult = 1.0
                HUMP.ampMult = 1.0
                HUMP.distMult = 1.0
                HUMP.anchorY = nil
                HUMP.lastGoodY = nil
                HUMP.oldRootPart = nil
            end
        end
        if path == "Troll.TapTarget" then
            pcall(rebuildChips)
        end
        if path == "Orbit.Enabled" and not state then
            ORBIT.wasActive = false
        end
        if fire ~= false and onChange then pcall(onChange, state) end
        if changed then
            pcall(refreshHUD)
            pcall(refreshAD)
        end
    end
    widgets[path] = {
        set = set,
        get = function() return state end,
        rerender = render,
        refreshKey = refreshKey,
        label = label,
    }
    render()
    track.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            local turningOn = not state
            set(turningOn)
            local tgoal = turningOn and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
            Tween:Create(thumb, TweenInfo.new(0.22, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Position = tgoal}):Play()
            Tween:Create(track, TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                {BackgroundColor3 = turningOn and Theme.neon or Theme.panel2}):Play()
            pulse(thumb, 1.5, 0.1)
            flash(track, turningOn and Theme.success or Theme.danger, 0.14)
            glow(track, turningOn and Theme.success or Theme.danger, 0.5)
        end
    end)
end

function sliderRow(pageId, path, label, mn, mx, dec, onChange)
    local page = resolvePage(pageId)
    if not page then return end
    local cur = getPath(Cfg, path)
    if type(cur) ~= "number" then
        cur = mn
        setPath(Cfg, path, mn)
    end
    local row = tPanel(new("Frame", {
        Size = UDim2.new(1, 0, 0, 38),
        BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(),
        ZIndex = 33,
    }, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.neon)
    new("TextLabel", {
        Size = UDim2.new(1, -90, 0, 14),
        Position = UDim2.fromOffset(14, 4),
        BackgroundTransparency = 1,
        Text = label,
        Font = Enum.Font.Gotham,
        TextSize = 11,
        TextColor3 = Theme.text,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 36,
    }, row)
    local valLbl = new("TextLabel", {
        Size = UDim2.fromOffset(70, 14),
        Position = UDim2.new(1, -80, 0, 4),
        BackgroundTransparency = 1,
        Font = Enum.Font.GothamBold,
        TextSize = 10,
        TextColor3 = Theme.accent2,
        TextXAlignment = Enum.TextXAlignment.Right,
        ZIndex = 36,
    }, row)
    local bar = tPanel2(new("Frame", {
        Size = UDim2.new(1, -22, 0, 5),
        Position = UDim2.fromOffset(11, 24),
        BackgroundColor3 = Theme.panel2,
        ZIndex = 34,
    }, row))
    corner(bar, 3)
    tStroke(stroke(bar, Theme.strokeSoft, 1, 0.5))
    local fill = new("Frame", {
        Size = UDim2.new(0, 0, 1, 0),
        BackgroundColor3 = Theme.neon,
        BorderSizePixel = 0,
        ZIndex = 35,
    }, bar)
    corner(fill, 3)
    grad(fill, Theme.neon, Theme.accent3, 0)
    local thumb = new("Frame", {
        Size = UDim2.fromOffset(12, 12),
        Position = UDim2.new(0, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BorderSizePixel = 0,
        ZIndex = 36,
    }, bar)
    corner(thumb, 6)
    tAcc(stroke(thumb, Theme.neon, 1.5))
    local mult = 10 ^ dec
    local value = cur
    local function setVal(v, fire)
        value = v
        setPath(Cfg, path, v)
        local a = math.clamp((v - mn) / (mx - mn), 0, 1)
        fill.Size = UDim2.new(a, 0, 1, 0)
        thumb.Position = UDim2.new(a, 0, 0.5, 0)
        valLbl.Text = string.format("%." .. dec .. "f", v)
        if fire ~= false and onChange then pcall(onChange, v) end
    end
    widgets[path] = {set = setVal, get = function() return value end}
    setVal(value, false)
    local drag = false
    local function fromX(px)
        local a = math.clamp((px - bar.AbsolutePosition.X) / math.max(bar.AbsoluteSize.X, 1), 0, 1)
        setVal(math.floor((mn + (mx - mn) * a) * mult + 0.5) / mult)
    end
    bar.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            drag = true
            fromX(i.Position.X)
            pulse(thumb, 1.5, 0.1)
        end
    end)
    UIS.InputChanged:Connect(function(i)
        if drag and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
            fromX(i.Position.X)
        end
    end)
    UIS.InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            drag = false
        end
    end)
end

function buttonRow(pageId, label, text, cb)
    local page = resolvePage(pageId)
    if not page then return end
    local row = tPanel(new("Frame", {
        Size = UDim2.new(1, 0, 0, 30),
        BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(),
        ZIndex = 33,
    }, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.neon)
    new("TextLabel", {
        Size = UDim2.new(1, -160, 1, 0),
        Position = UDim2.fromOffset(14, 0),
        BackgroundTransparency = 1,
        Text = label,
        Font = Enum.Font.Gotham,
        TextSize = 11,
        TextColor3 = Theme.text,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 36,
    }, row)
    local b = tPanel2(new("TextButton", {
        Size = UDim2.fromOffset(140, 20),
        Position = UDim2.new(1, -150, 0.5, -10),
        BackgroundColor3 = Theme.panel2,
        Text = text,
        Font = Enum.Font.GothamBold,
        TextSize = 9,
        TextColor3 = Theme.accent2,
        AutoButtonColor = false,
        ZIndex = 36,
    }, row))
    corner(b, 6)
    tStroke(stroke(b, Theme.strokeSoft, 1))
    b.MouseButton1Click:Connect(function()
        pulse(b, 0.94, 0.06)
        glow(b, Theme.accent2, 0.35)
        shine(b, Theme.accent2, 0.5)
        cb(b)
    end)
    b.MouseEnter:Connect(function()
        Tween:Create(b, TweenInfo.new(0.12), {BackgroundColor3 = Theme.panel3}):Play()
    end)
    b.MouseLeave:Connect(function()
        Tween:Create(b, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
    end)
    return b
end

function textRow(pageId, label, ph, initial, onCommit)
    local page = resolvePage(pageId)
    if not page then return end
    local row = tPanel(new("Frame", {
        Size = UDim2.new(1, 0, 0, 30),
        BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(),
        ZIndex = 33,
    }, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    new("TextLabel", {
        Size = UDim2.new(1, -180, 1, 0),
        Position = UDim2.fromOffset(14, 0),
        BackgroundTransparency = 1,
        Text = label,
        Font = Enum.Font.Gotham,
        TextSize = 11,
        TextColor3 = Theme.text,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 36,
    }, row)
    local tb = tPanel2(new("TextBox", {
        Size = UDim2.fromOffset(160, 20),
        Position = UDim2.new(1, -168, 0.5, -10),
        BackgroundColor3 = Theme.panel2,
        Text = initial or "",
        PlaceholderText = ph or "",
        Font = Enum.Font.Gotham,
        TextSize = 10,
        TextColor3 = Theme.accent2,
        PlaceholderColor3 = Theme.muted,
        ClearTextOnFocus = false,
        Active = true,
        Selectable = true,
        ZIndex = 50,
    }, row))
    corner(tb, 5)
    tStroke(stroke(tb, Theme.strokeSoft, 1))
    tb.FocusLost:Connect(function()
        if onCommit then onCommit(tb.Text) end
    end)
    return tb
end

function cycleRow(pageId, path, label, options, onChange)
    local page = resolvePage(pageId)
    if not page then return end
    local row = tPanel(new("Frame", {
        Size = UDim2.new(1, 0, 0, 30),
        BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(),
        ZIndex = 33,
    }, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.neon)
    new("TextLabel", {
        Size = UDim2.new(1, -160, 1, 0),
        Position = UDim2.fromOffset(14, 0),
        BackgroundTransparency = 1,
        Text = label,
        Font = Enum.Font.Gotham,
        TextSize = 11,
        TextColor3 = Theme.text,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 36,
    }, row)
    local b = tPanel2(new("TextButton", {
        Size = UDim2.fromOffset(140, 20),
        Position = UDim2.new(1, -150, 0.5, -10),
        BackgroundColor3 = Theme.panel2,
        Text = tostring(getPath(Cfg, path) or options[1]),
        Font = Enum.Font.GothamBold,
        TextSize = 9,
        TextColor3 = Theme.accent2,
        AutoButtonColor = false,
        ZIndex = 36,
    }, row))
    corner(b, 6)
    tStroke(stroke(b, Theme.strokeSoft, 1))
    b.MouseButton1Click:Connect(function()
        local cur = getPath(Cfg, path)
        local idx = 1
        for i, o in ipairs(options) do
            if o == cur then idx = i end
        end
        idx = idx % #options + 1
        setPath(Cfg, path, options[idx])
        b.Text = tostring(options[idx])
        pulse(b, 0.94, 0.06)
        if onChange then pcall(onChange, options[idx]) end
    end)
    widgets[path] = {
        set = function(v) setPath(Cfg, path, v); b.Text = tostring(v) end,
        get = function() return getPath(Cfg, path) end,
    }
    return b
end

function legendRow(pageId, label, col)
    local page = resolvePage(pageId)
    if not page then return end
    local row = tPanel(new("Frame", {
        Size = UDim2.new(1, 0, 0, 26),
        BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(),
        ZIndex = 33,
    }, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    local sw = new("Frame", {
        Size = UDim2.fromOffset(26, 14),
        Position = UDim2.fromOffset(12, 6),
        BackgroundColor3 = col,
        BorderSizePixel = 0,
        ZIndex = 34,
    }, row)
    corner(sw, 4)
    stroke(sw, col, 1, 0)
    new("TextLabel", {
        Size = UDim2.new(1, -46, 1, 0),
        Position = UDim2.fromOffset(46, 0),
        BackgroundTransparency = 1,
        Text = label,
        Font = Enum.Font.GothamBold,
        TextSize = 10,
        TextColor3 = col,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 34,
    }, row)
    return row
end

function applyOpacity(op)
    op = math.clamp(tonumber(op) or 0, 0, 1)
    for _, d in ipairs(menu:GetDescendants()) do
        local anc, skip = d.Parent, false
        while anc and anc ~= menu do
            if anc == ambient then skip = true; break end
            anc = anc.Parent
        end
        if not skip then
            if d:IsA("Frame") or d:IsA("TextButton") or d:IsA("TextBox") or d:IsA("ScrollingFrame") then
                local base = d:GetAttribute("OpBase")
                if base == nil then
                    base = d.BackgroundTransparency
                    d:SetAttribute("OpBase", base)
                end
                d.BackgroundTransparency = math.clamp(base + op * (1 - base), 0, 1)
            elseif d:IsA("UIStroke") then
                local base = d:GetAttribute("OpBase")
                if base == nil then
                    base = d.Transparency
                    d:SetAttribute("OpBase", base)
                end
                d.Transparency = math.clamp(base + op * 0.9, 0, 1)
            end
        end
    end
end

function applyTheme()
    for _, d in ipairs(gui:GetDescendants()) do
        if d:GetAttribute("T_Bg") and d:IsA("Frame") then d.BackgroundColor3 = Theme.bg end
        if d:GetAttribute("T_Panel") and (d:IsA("Frame") or d:IsA("ScrollingFrame")) then d.BackgroundColor3 = Theme.panel end
        if d:GetAttribute("T_Panel2") and (d:IsA("Frame") or d:IsA("TextBox")) then d.BackgroundColor3 = Theme.panel2 end
        if d:GetAttribute("T_Acc") then
            if d:IsA("UIStroke") then
                d.Color = Theme.neon
            elseif d:IsA("Frame") or d:IsA("TextButton") then
                d.BackgroundColor3 = Theme.neon
            end
        end
        if d:GetAttribute("T_Acc2") and d:IsA("TextLabel") then d.TextColor3 = Theme.accent2 end
        if d:GetAttribute("T_Muted") and d:IsA("TextLabel") then d.TextColor3 = Theme.muted end
    end
    tickerLabel.TextColor3 = Theme.tickerColor
    tickerStroke.Color = Theme.neon
    for _, p in ipairs(ambientParts) do
        if p.inst then p.inst.BackgroundColor3 = Theme.accent2 end
    end
    for _, t in pairs(widgets) do
        if t.rerender then pcall(t.rerender) end
    end
    pcall(refreshHUD)
end

--==================== HUD ====================
hudGui = new("ScreenGui", {Name = "ReaperHUD", ResetOnSpawn = false,
    IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9998}, pg)
hudFrame = tBg(new("Frame", {Name = "HudRoot", Size = UDim2.fromOffset(220, 40),
    Position = UDim2.new(0, 20, 0, 200), BackgroundColor3 = Theme.bg,
    BackgroundTransparency = 0.12, BorderSizePixel = 0,
    AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, hudGui))
corner(hudFrame, 10)
tAcc(stroke(hudFrame, Theme.neon, 1.5, 0.3))
grad(hudFrame, Theme.panel, Theme.bg, 90)
hudHeader = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 22),
    BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, hudFrame))
corner(hudHeader, 10)
grad(hudHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
tAcc2(new("TextLabel", {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(10, 0),
    BackgroundTransparency = 1, Text = "KEYBINDS", Font = Enum.Font.GothamBlack,
    TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, hudHeader))
hudHide = new("TextButton", {Size = UDim2.fromOffset(18, 18),
    Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = "-",
    Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
    AutoButtonColor = false}, hudHeader)
corner(hudHide, 4)
hudList = new("Frame", {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),
    BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, hudFrame)
new("UIListLayout", {Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder}, hudList)
new("UIPadding", {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
    PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, hudList)
hudHide.MouseButton1Click:Connect(function() Cfg.UI.HUD = false; pcall(refreshHUD) end)
hudEmpty = tMuted(new("TextLabel", {Size = UDim2.new(1, 0, 0, 16),
    BackgroundTransparency = 1, Text = "no binds", Font = Enum.Font.Gotham,
    TextSize = 9, TextColor3 = Theme.muted, LayoutOrder = 1}, hudList))
makeDraggable(hudFrame, hudHeader)
refreshHUD = function()
    hudFrame.Visible = Cfg.UI.HUD and true or false
    for _, c in ipairs(hudList:GetChildren()) do
        if not c:IsA("UIListLayout") and c ~= hudEmpty then c:Destroy() end
    end
    local keys = {}
    for path, k in pairs(Cfg.Binds or {}) do
        if k and widgets[path] then keys[#keys + 1] = {path = path, key = k} end
    end
    table.sort(keys, function(a, b) return a.path < b.path end)
    if #keys == 0 then hudEmpty.Visible = true; return end
    hudEmpty.Visible = false
    for i, e in ipairs(keys) do
        local on = widgets[e.path].get()
        local row = new("Frame", {Size = UDim2.new(1, 0, 0, 18),
            BackgroundColor3 = on and Theme.panel2 or Theme.panel,
            BackgroundTransparency = 0.3, BorderSizePixel = 0, LayoutOrder = i}, hudList)
        corner(row, 4)
        stroke(row, on and Theme.success or Theme.stroke, 1, 0.4)
        new("Frame", {Size = UDim2.fromOffset(7, 7), Position = UDim2.new(0, 4, 0.5, -3.5),
            BackgroundColor3 = on and Theme.success or Theme.muted, BorderSizePixel = 0}, row)
        new("TextLabel", {Size = UDim2.new(1, -75, 1, 0), Position = UDim2.fromOffset(16, 0),
            BackgroundTransparency = 1, Text = toggleLabels[e.path] or e.path,
            Font = Enum.Font.Gotham, TextSize = 9,
            TextColor3 = on and Theme.success or Theme.muted,
            TextXAlignment = Enum.TextXAlignment.Left}, row)
        new("TextLabel", {Size = UDim2.fromOffset(60, 18), Position = UDim2.new(1, -62, 0, 0),
            BackgroundTransparency = 1, Text = "[" .. e.key.Name .. "]",
            Font = Enum.Font.GothamBold, TextSize = 9,
            TextColor3 = on and Theme.accent2 or Theme.muted,
            TextXAlignment = Enum.TextXAlignment.Right}, row)
    end
end

--==================== AD HUD ====================
adGui = new("ScreenGui", {Name = "ReaperAD", ResetOnSpawn = false,
    IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9997}, pg)
adFrame = tBg(new("Frame", {Name = "ADRoot", Size = UDim2.fromOffset(240, 40),
    Position = UDim2.new(0, 20, 0, 260), BackgroundColor3 = Theme.bg,
    BackgroundTransparency = 0.12, BorderSizePixel = 0,
    AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, adGui))
corner(adFrame, 10)
tAcc(stroke(adFrame, Theme.neon, 1.5, 0.3))
grad(adFrame, Theme.panel, Theme.bg, 90)
adHeader = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 22),
    BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, adFrame))
corner(adHeader, 10)
grad(adHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
tAcc2(new("TextLabel", {Size = UDim2.new(1, -70, 1, 0), Position = UDim2.fromOffset(10, 0),
    BackgroundTransparency = 1, Text = "AUTO-DETECT", Font = Enum.Font.GothamBlack,
    TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, adHeader))
adHide = new("TextButton", {Size = UDim2.fromOffset(18, 18),
    Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = "-",
    Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
    AutoButtonColor = false}, adHeader)
corner(adHide, 4)
adBody = new("Frame", {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),
    BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, adFrame)
new("UIListLayout", {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}, adBody)
new("UIPadding", {PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5),
    PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}, adBody)
adRows = {}
local function adRow(key, label, col)
    local row = new("Frame", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        LayoutOrder = #adBody:GetChildren()}, adBody)
    new("TextLabel", {Size = UDim2.new(0, 100, 1, 0), BackgroundTransparency = 1, Text = label,
        Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left}, row)
    local val = new("TextLabel", {Size = UDim2.new(1, -104, 1, 0), Position = UDim2.fromOffset(104, 0),
        BackgroundTransparency = 1, Text = "-", Font = Enum.Font.Code, TextSize = 9,
        TextColor3 = col or Theme.accent2, TextXAlignment = Enum.TextXAlignment.Right}, row)
    adRows[key] = val
    return val
end
adRow("Status", "Status:", Theme.success)
adRow("Target", "Target:", Theme.accent2)
adRow("Tier", "Tier:", Theme.success)
adRow("Mode", "Mode:", Theme.success)
makeDraggable(adFrame, adHeader)
adHide.MouseButton1Click:Connect(function() Cfg.UI.AD = false; pcall(refreshAD) end)
refreshAD = function()
    local want = Cfg.UI.AD and Cfg.Troll.Hump
    adFrame.Visible = want and true or false
    if not want then return end
    local t = TS.target
    if HUMP.awaitingRespawn then
        adRows.Status.Text = "WAIT RESPAWN"
        adRows.Status.TextColor3 = Theme.gold
    elseif HUMP.fallHold > 0 then
        adRows.Status.Text = "HOLD AIR"
        adRows.Status.TextColor3 = Theme.danger
    else
        adRows.Status.Text = "ACTIVE"
        adRows.Status.TextColor3 = Theme.success
    end
    adRows.Target.Text = t and t.Name or "-"
    adRows.Tier.Text = HR.tier
    adRows.Mode.Text = HR.autoMode
end

--==================== TABS SETUP ====================
tabOrder = {"home", "combat", "visual", "move", "world", "players", "troll", "util", "save", "theme"}
tabTitles = {
    home = "HOME", combat = "COMBAT", visual = "VISUAL", move = "MOVE",
    world = "WORLD", players = "PLAYERS", troll = "TROLL", util = "UTIL",
    save = "SAVE", theme = "THEME",
}
if isMod() then
    table.insert(tabOrder, 2, "owner")
    tabTitles.owner = "OWNER"
end
for _, id in ipairs(tabOrder) do
    makeTab(id, tabTitles[id])
end

--==================== MODERATION ====================
function doModBan(targetDiscordId, reason, duration)
    if not targetDiscordId or targetDiscordId == "" then
        notify("Ban", "No Discord ID available", Theme.gold, 3)
        return
    end
    task.spawn(function()
        local body = HttpService:JSONEncode({
            robloxId = tostring(LP.UserId), key = SESSION_KEY or "",
            targetDiscordId = tostring(targetDiscordId), reason = reason or "", duration = duration or 0,
        })
        local ok, res = httpPost(KEY_API .. "/chat/ban", body)
        if ok then
            local durTxt = (duration and duration > 0) and ("for " .. tostring(math.floor(duration / 60)) .. "m") or "permanently"
            notify("Banned", tostring(targetDiscordId) .. " " .. durTxt, Theme.success, 3)
        else
            local pretty = parseErrorReason(res)
            notify("Ban failed", pretty, Theme.danger, 8, pretty)
        end
    end)
end

function doModDelete(msgId)
    if not msgId then return end
    task.spawn(function()
        local body = HttpService:JSONEncode({
            robloxId = tostring(LP.UserId), key = SESSION_KEY or "", messageId = msgId,
        })
        local ok, res = httpPost(KEY_API .. "/chat/delete", body)
        if ok then
            for _, fn in ipairs(Chat.listeners) do
                if fn and type(fn) == "function" then pcall(fn, {__deleteMsgId = msgId}) end
            end
            notify("Deleted", "message #" .. tostring(msgId), Theme.success, 2.5)
        else
            local pretty = parseErrorReason(res)
            notify("Delete failed", pretty, Theme.danger, 8, pretty)
        end
    end)
end

--==================== HOME ====================
chatLiveLbl = nil
do
    local pg2 = "home"
    section(pg2, "PROFILE")
    buttonRow(pg2, "Rejoin", "REJOIN", function()
        Teleport:Teleport(game.PlaceId, LP)
    end)
    buttonRow(pg2, "Reset Character", "RESET", function()
        local h = hum()
        if h then h.Health = 0 end
    end)

    section(pg2, "GLOBAL CHAT - cross-game")
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        Text = "every REAPER user in every game sees this same chat",
        Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])

    local chatHolder = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 300),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2]))
    corner(chatHolder, 10)
    tStroke(stroke(chatHolder, Theme.strokeSoft, 1, 0.4))

    local chatScroll = new("ScrollingFrame", {Size = UDim2.new(1, -8, 1, -66),
        Position = UDim2.fromOffset(4, 4), BackgroundTransparency = 1, BorderSizePixel = 0,
        ScrollBarThickness = 3, ScrollBarImageColor3 = Theme.neon,
        CanvasSize = UDim2.new(0, 0, 0, 0), AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ZIndex = 34}, chatHolder)
    new("UIListLayout", {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, chatScroll)
    new("UIPadding", {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
        PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, chatScroll)

    local userBar = tPanel2(new("Frame", {Size = UDim2.new(1, -8, 0, 18),
        Position = UDim2.new(0, 4, 1, -58), BackgroundColor3 = Theme.panel2,
        BackgroundTransparency = 0.3, BorderSizePixel = 0, ZIndex = 34}, chatHolder))
    corner(userBar, 4)
    chatLiveLbl = new("TextLabel", {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(12, 0),
        BackgroundTransparency = 1, Text = "live - counting...",
        Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.success,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 35}, userBar)

    local inputBar = tPanel2(new("Frame", {Size = UDim2.new(1, -8, 0, 28),
        Position = UDim2.new(0, 4, 1, -38), BackgroundColor3 = Theme.panel2,
        BorderSizePixel = 0, ZIndex = 50, Active = true}, chatHolder))
    corner(inputBar, 7)
    tStroke(stroke(inputBar, Theme.strokeSoft, 1))

    local chatInput = new("TextBox", {Size = UDim2.new(1, -66, 1, 0),
        Position = UDim2.fromOffset(6, 0), BackgroundTransparency = 1,
        Active = true, Selectable = true,
        PlaceholderText = "message everyone, everywhere...", PlaceholderColor3 = Theme.muted,
        Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text, Text = "",
        ClearTextOnFocus = false, ZIndex = 51}, inputBar)
    local sendBtn = new("TextButton", {Size = UDim2.fromOffset(54, 20),
        Position = UDim2.new(1, -58, 0.5, -10), BackgroundColor3 = Theme.neon, Text = "SEND",
        Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Color3.new(1, 1, 1),
        AutoButtonColor = false, ZIndex = 51}, inputBar)
    corner(sendBtn, 5)

    local chatRowsById = {}
    local function addRow(e)
        if type(e) == "table" and e.__deleteMsgId then
            local target = chatRowsById[e.__deleteMsgId]
            if target and target.row and target.row.Parent then target.row:Destroy() end
            chatRowsById[e.__deleteMsgId] = nil
            return
        end
        if not chatScroll.Parent then return end
        local row = new("Frame", {Size = UDim2.new(1, 0, 0, 42), BackgroundTransparency = 1,
            LayoutOrder = (#chatScroll:GetChildren()) + 1, ZIndex = 35,
            AutomaticSize = Enum.AutomaticSize.Y}, chatScroll)
        local avWrap = new("TextButton", {Size = UDim2.fromOffset(30, 30),
            Position = UDim2.fromOffset(0, 2), BackgroundTransparency = 1,
            Text = "", AutoButtonColor = false, ZIndex = 36}, row)
        local avImg = new("ImageLabel", {Size = UDim2.fromScale(1, 1),
            BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Image = "", ZIndex = 36}, avWrap)
        corner(avImg, 15)
        local avLetter = new("TextLabel", {Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 1, Text = (e.sender or "?"):sub(1, 1):upper(),
            Font = Enum.Font.GothamBlack, TextSize = 13, TextColor3 = Color3.new(1, 1, 1),
            ZIndex = 37}, avWrap)
        local avBorder = new("Frame", {Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 1, ZIndex = 38}, avWrap)
        corner(avBorder, 15)
        local senderRank = e.userId and getRankFor(e.userId)
        local ringCol = e.col or Theme.neon
        if senderRank and BADGE_STYLE[senderRank] then ringCol = BADGE_STYLE[senderRank].color end
        stroke(avBorder, ringCol, senderRank and 2 or 1.4, 0.15)
        if e.avatar and e.avatar ~= "" then
            task.spawn(function()
                local asset = getChatAvatarAsset(e.avatar)
                if asset and avImg.Parent then
                    avImg.Image = asset
                    avImg.ScaleType = Enum.ScaleType.Crop
                    avLetter.Visible = false
                end
            end)
        end
        local textHolder = new("Frame", {Size = UDim2.new(1, -38, 0, 0),
            Position = UDim2.fromOffset(38, 0), BackgroundTransparency = 1,
            AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 36}, row)
        local badgePrefix = ""
        if senderRank and BADGE_STYLE[senderRank] then
            local b = BADGE_STYLE[senderRank]
            badgePrefix = string.format('<font color="#%s">[%s]</font>  ', b.color:ToHex(), b.label)
        end
        local headTxt = string.format('<font color="#8FA6BE">%s</font>  %s<font color="#%s"><b>%s</b></font>',
            os.date("%H:%M", math.floor(e.time or tick())),
            badgePrefix,
            (e.col or Color3.fromRGB(148, 204, 255)):ToHex(),
            (e.discordName and e.discordName ~= "" and ("@" .. e.discordName)) or e.sender)
        new("TextLabel", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
            RichText = true, Font = Enum.Font.GothamBold, TextSize = 9,
            TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
            Text = headTxt, ZIndex = 37}, textHolder)
        new("TextLabel", {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
            TextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y, Font = Enum.Font.Gotham,
            TextSize = 10, TextColor3 = Theme.text, RichText = true,
            TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
            Position = UDim2.fromOffset(0, 14), Text = e.text or "", ZIndex = 37}, textHolder)
        if e.msgId then
            chatRowsById[e.msgId] = {row = row, userId = e.userId, discordId = e.discordId}
        end
        task.defer(function()
            chatScroll.CanvasPosition = Vector2.new(0, math.max(0, chatScroll.AbsoluteCanvasSize.Y))
        end)
    end
    Chat.listeners[#Chat.listeners + 1] = addRow
    for _, m in ipairs(Chat.messages) do addRow(m) end

    local function trySend()
        local txt = chatInput.Text or ""
        if txt:gsub("%s", "") == "" then return end
        chatInput.Text = ""
        local ok = sendChat(txt)
        if ok then
            pulse(sendBtn, 0.94, 0.06)
            glow(sendBtn, Theme.accent2, 0.4)
        end
    end
    sendBtn.MouseButton1Click:Connect(trySend)
    chatInput.FocusLost:Connect(function(enter) if enter then trySend() end end)

    task.spawn(function()
        local lastChatId = 0
        while gui and gui.Parent do
            task.wait(4)
            local ok, body = httpGet(KEY_API .. "/chat/fetch?since=" .. lastChatId .. "&limit=50")
            if ok and body then
                local okD, data = pcall(function() return HttpService:JSONDecode(body) end)
                if okD and type(data) == "table" and data.messages then
                    for _, m in ipairs(data.messages) do
                        if m.id and m.id > lastChatId then lastChatId = m.id end
                        addChat(m.sender, m.text, false, Color3.fromRGB(148, 204, 255),
                                m.avatar, m.discordName, m.country, m.countryCode,
                                m.userId, m.id, m.placeId, m.time, m.discordId)
                    end
                end
            end
        end
    end)

    task.spawn(function()
        while gui and gui.Parent do
            task.wait(5)
            local now = tick()
            local count = 0
            for uid, t in pairs(chatUserTimes) do
                if now - t < 300 then
                    count = count + 1
                else
                    chatUserTimes[uid] = nil
                end
            end
            if chatLiveLbl and chatLiveLbl.Parent then
                chatLiveLbl.Text = "live - " .. count .. " user" ..
                    (count == 1 and "" or "s") .. " active"
            end
        end
    end)
end

--==================== OWNER ====================
if isMod() then
    local pg2 = "owner"
    section(pg2, "LIVE ANNOUNCEMENTS")
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 16), BackgroundTransparency = 1,
        Text = "broadcast to every REAPER user in every server",
        Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])
    local annBox = tPanel2(new("TextBox", {Size = UDim2.new(1, 0, 0, 70),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
        BorderSizePixel = 0, Text = "", Active = true, Selectable = true,
        PlaceholderText = "type your announcement...",
        PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
        TextSize = 11, TextColor3 = Theme.text, MultiLine = true,
        ClearTextOnFocus = false, TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 50}, pages[pg2]))
    corner(annBox, 8)
    tStroke(stroke(annBox, Theme.strokeSoft, 1))
    buttonRow(pg2, "Send to everyone", "SEND", function()
        local txt = annBox.Text or ""
        if sendAnnouncement(txt) then annBox.Text = "" end
    end)
    buttonRow(pg2, "Preview locally", "PREVIEW", function()
        local txt = annBox.Text or ""
        if txt:gsub("%s", "") == "" then
            notify("Preview", "Type a message first", Theme.gold, 2)
            return
        end
        showAnnouncement({text = txt, sender = LP.Name, userId = LP.UserId,
            rank = getLocalRank() or "owner", time = os.time()})
    end)

    section(pg2, "CHAT MODERATION CONSOLE")
    local banBox = tPanel2(new("TextBox", {Size = UDim2.new(1, 0, 0, 28),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
        BorderSizePixel = 0, Text = "", Active = true, Selectable = true,
        PlaceholderText = "target Discord ID (17-20 digits)",
        PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
        TextSize = 11, TextColor3 = Theme.text, ClearTextOnFocus = false,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 50}, pages[pg2]))
    corner(banBox, 7)
    tStroke(stroke(banBox, Theme.strokeSoft, 1))
    local reasonBox = tPanel2(new("TextBox", {Size = UDim2.new(1, 0, 0, 28),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
        BorderSizePixel = 0, Text = "", Active = true, Selectable = true,
        PlaceholderText = "reason (optional)",
        PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
        TextSize = 11, TextColor3 = Theme.text, ClearTextOnFocus = false,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 50}, pages[pg2]))
    corner(reasonBox, 7)
    tStroke(stroke(reasonBox, Theme.strokeSoft, 1))
    buttonRow(pg2, "Timeout 5 min", "5M", function()
        local t = (banBox.Text or ""):gsub("%s", "")
        if t == "" then notify("Ban", "Enter Discord ID first", Theme.gold, 2); return end
        doModBan(t, reasonBox.Text, 300)
        reasonBox.Text = ""
    end)
    buttonRow(pg2, "Timeout 1 hour", "1H", function()
        local t = (banBox.Text or ""):gsub("%s", "")
        if t == "" then notify("Ban", "Enter Discord ID first", Theme.gold, 2); return end
        doModBan(t, reasonBox.Text, 3600)
        reasonBox.Text = ""
    end)
    buttonRow(pg2, "Timeout 24 hours", "24H", function()
        local t = (banBox.Text or ""):gsub("%s", "")
        if t == "" then notify("Ban", "Enter Discord ID first", Theme.gold, 2); return end
        doModBan(t, reasonBox.Text, 86400)
        reasonBox.Text = ""
    end)
    buttonRow(pg2, "Ban permanently", "BAN", function()
        local t = (banBox.Text or ""):gsub("%s", "")
        if t == "" then notify("Ban", "Enter Discord ID first", Theme.gold, 2); return end
        doModBan(t, reasonBox.Text, 0)
        reasonBox.Text = ""
    end)
    buttonRow(pg2, "Unban user", "UNBAN", function()
        local t = (banBox.Text or ""):gsub("%s", "")
        if t == "" then notify("Unban", "Enter Discord ID first", Theme.gold, 2); return end
        task.spawn(function()
            local body = HttpService:JSONEncode({robloxId = tostring(LP.UserId), key = SESSION_KEY or "", targetDiscordId = t})
            local ok, res = httpPost(KEY_API .. "/chat/unban", body)
            if ok then
                notify("Unbanned", t, Theme.success, 3)
            else
                local pretty = parseErrorReason(res)
                notify("Unban failed", pretty, Theme.danger, 8, pretty)
            end
        end)
    end)

    section(pg2, "ONLINE STAFF")
    local staffList = new("Frame", {Size = UDim2.new(1, 0, 0, 0),
        BackgroundTransparency = 1, LayoutOrder = #pages[pg2]:GetChildren(),
        AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[pg2])
    new("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, staffList)
    local function refreshStaff()
        for _, c in ipairs(staffList:GetChildren()) do
            if not c:IsA("UIListLayout") then c:Destroy() end
        end
        local found = 0
        for _, p in ipairs(Players:GetPlayers()) do
            local rank = getRankFor(p.UserId)
            local b = rank and BADGE_STYLE[rank]
            if b then
                found = found + 1
                local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 26),
                    BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
                    LayoutOrder = found, ZIndex = 34}, staffList))
                corner(row, 6)
                stroke(row, b.color, 1.4, 0.2)
                new("TextLabel", {Size = UDim2.new(1, -10, 1, 0),
                    Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1,
                    Text = string.format("[%s] %s", b.label, p.Name),
                    Font = Enum.Font.GothamBold, TextSize = 10,
                    TextColor3 = b.color, TextXAlignment = Enum.TextXAlignment.Left,
                    ZIndex = 35}, row)
            end
        end
        if found == 0 then
            new("TextLabel", {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
                Text = "no staff online", Font = Enum.Font.Gotham, TextSize = 9,
                TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
                LayoutOrder = 1, ZIndex = 34}, staffList)
        end
    end
    refreshStaff()
    buttonRow(pg2, "Refresh staff list", "REFRESH", refreshStaff)
end

--==================== COMBAT ====================
do
    local pg2 = "combat"
    section(pg2, "AIMBOT")
    toggleRow(pg2, "Aimbot.Enabled", "Aimbot")
    buttonRow(pg2, "Aim Key", Cfg.Aimbot.Key.Name, function(b)
        pendingKeybind = {path = "Aimbot.Key", raw = true, btn = b}
        b.Text = "press..."
    end)
    toggleRow(pg2, "Aimbot.ToggleMode", "Toggle Mode")
    toggleRow(pg2, "Aimbot.Humanize", "Humanize")
    sliderRow(pg2, "Aimbot.FOV", "FOV", 10, 800, 0)
    sliderRow(pg2, "Aimbot.MaxDist", "Max Distance", 50, 5000, 0)
    sliderRow(pg2, "Aimbot.Smoothness", "Smoothness", 1, 20, 0)
    sliderRow(pg2, "Aimbot.Strength", "Strength", 1, 10, 1)
    toggleRow(pg2, "Aimbot.TeamCheck", "Team Check")
    toggleRow(pg2, "Aimbot.VisibleOnly", "Visible Only")
    toggleRow(pg2, "Aimbot.ShowCircle", "Show FOV Circle")
    toggleRow(pg2, "Aimbot.LockTarget", "Single Target Lock")
    toggleRow(pg2, "Aimbot.PCPTeamOnly", "PCP: only target opposite team")
    toggleRow(pg2, "Aimbot.PredictAim", "Prediction (lead moving targets)")
    toggleRow(pg2, "Aimbot.MagicBullet", "Magic Bullet (via mouse.Hit)")
    toggleRow(pg2, "Aimbot.MagicBulletWalls", "Wallbang (through walls)")

    section(pg2, "ORBIT")
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        Text = "main aimbot suspended while orbiting - orbit aims at target only",
        Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
        TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])
    toggleRow(pg2, "Orbit.Enabled", "Orbit Target")
    toggleRow(pg2, "Orbit.AutoAim", "Auto-Aim camera")
    toggleRow(pg2, "Orbit.AutoShoot", "Auto-Shoot")
    toggleRow(pg2, "Orbit.ForceNoclip", "Force Noclip")
    toggleRow(pg2, "Orbit.ShowCircle", "Show radius circle")
    sliderRow(pg2, "Orbit.Radius", "Radius", 3, 30, 1)
    sliderRow(pg2, "Orbit.Speed", "Speed", 3, 40, 1)
    sliderRow(pg2, "Orbit.Height", "Height Offset", -5, 10, 1)
    sliderRow(pg2, "Orbit.CamDist", "Camera Distance", 4, 30, 1)
    sliderRow(pg2, "Orbit.CamHeight", "Camera Height", 0, 15, 1)

    section(pg2, "TRIGGERBOT")
    toggleRow(pg2, "Trigger.Enabled", "Triggerbot")
    buttonRow(pg2, "Trigger Key", Cfg.Trigger.Key.Name, function(b)
        pendingKeybind = {path = "Trigger.Key", raw = true, btn = b}
        b.Text = "press..."
    end)
    sliderRow(pg2, "Trigger.Radius", "Radius", 0, 100, 0)
    sliderRow(pg2, "Trigger.Delay", "Delay (s)", 0.01, 0.5, 2)
    toggleRow(pg2, "Trigger.TeamCheck", "Team Check")
end

--==================== VISUAL ====================
do
    local pg2 = "visual"
    section(pg2, "ESP")
    toggleRow(pg2, "Visuals.Enabled", "ESP Enabled")
    cycleRow(pg2, "Visuals.Mode", "Mode", {"Team", "PCP", "Role", "DOW"})
    toggleRow(pg2, "Visuals.NameTags", "Name Tags")
    toggleRow(pg2, "Visuals.Distance", "Distance")
    toggleRow(pg2, "Visuals.ShowRole", "Role Label")
    sliderRow(pg2, "Visuals.Fill", "Fill Transparency", 0, 1, 2)
    section(pg2, "COLOR LEGEND")
    legendRow(pg2, "TEAM - ally", ESPColours.ally)
    legendRow(pg2, "TEAM - enemy", ESPColours.enemy)
    legendRow(pg2, "PCP - police", ESPColours.police)
    legendRow(pg2, "PCP - criminal", ESPColours.criminal)
    legendRow(pg2, "PCP - prisoner", ESPColours.prisoner)
    legendRow(pg2, "DOW - united front", ESPColours.united)
    legendRow(pg2, "DOW - iron legion", ESPColours.iron)
    section(pg2, "CAMERA")
    toggleRow(pg2, "Visuals.InfZoom", "Infinite Zoom")
    sliderRow(pg2, "Visuals.FOVMin", "Min FOV", 0.5, 30, 1)
    sliderRow(pg2, "Visuals.FOVMax", "Max FOV", 60, 400, 0)
    section(pg2, "WORLD VIEW")
    toggleRow(pg2, "Visuals.NoFog", "No Fog")
end

--==================== MOVE ====================
do
    local pg2 = "move"
    section(pg2, "CORE")
    toggleRow(pg2, "Movement.Noclip", "Noclip")
    toggleRow(pg2, "Movement.SpeedEnabled", "Speed Hack")
    sliderRow(pg2, "Movement.Speed", "Walk Speed", 16, 500, 0)
    toggleRow(pg2, "Movement.JumpEnabled", "Jump Power")
    sliderRow(pg2, "Movement.JumpPower", "Jump Value", 50, 800, 0)
    toggleRow(pg2, "Movement.InfiniteJump", "Infinite Jump")
    toggleRow(pg2, "Movement.GodMode", "God Mode")
    section(pg2, "FLIGHT")
    toggleRow(pg2, "Movement.Fly", "Fly")
    sliderRow(pg2, "Movement.FlySpeed", "Fly Speed", 10, 500, 0)
    sliderRow(pg2, "Movement.FlySmooth", "Smoothness", 1, 40, 0)
    sliderRow(pg2, "Movement.FlyBoost", "Boost Mult", 1, 6, 1)
    section(pg2, "EXTRAS")
    toggleRow(pg2, "Movement.Sprint", "Sprint")
    sliderRow(pg2, "Movement.SprintSpeed", "Sprint Speed", 16, 300, 0)
    toggleRow(pg2, "Movement.Bunnyhop", "Bunnyhop")
    toggleRow(pg2, "Movement.Spinbot", "Spinbot")
    section(pg2, "FREECAM")
    toggleRow(pg2, "Movement.Freecam", "Freecam")
    sliderRow(pg2, "Movement.FreecamSpeed", "Speed", 10, 400, 0)
    sliderRow(pg2, "Movement.FreecamSens", "Sensitivity", 0.1, 5, 1)
end

--==================== WORLD ====================
do
    local pg2 = "world"
    section(pg2, "LIGHTING")
    toggleRow(pg2, "World.Fullbright", "Fullbright")
    toggleRow(pg2, "World.RemoveBlur", "Remove Blur")
    section(pg2, "CAMERA")
    toggleRow(pg2, "World.FOVEnabled", "FOV Changer")
    sliderRow(pg2, "World.FOV", "FOV Value", 40, 140, 0)
    section(pg2, "PHYSICS")
    toggleRow(pg2, "World.GravityEnabled", "Gravity Control")
    sliderRow(pg2, "World.Gravity", "Gravity", 0, 500, 0)
end

--==================== PLAYERS ====================
do
    local pg2 = "players"
    section(pg2, "PLAYER LIST")
    local cont = new("Frame", {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
        LayoutOrder = #pages[pg2]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[pg2])
    new("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, cont)
    local function refresh()
        for _, c in ipairs(cont:GetChildren()) do
            if not c:IsA("UIListLayout") then c:Destroy() end
        end
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LP then
                local rank = getRankFor(p.UserId)
                local b = rank and BADGE_STYLE[rank]
                local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 30),
                    BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15, ZIndex = 33}, cont))
                corner(row, 7)
                if b then stroke(row, b.color, 1.6, 0.1)
                else stroke(row, Theme.strokeSoft, 1, 0.55) end
                local nameTxt = p.Name .. " " .. roleLabel(p)
                new("TextLabel", {Text = nameTxt, Font = Enum.Font.GothamBold,
                    TextSize = 11, TextColor3 = b and b.color or espColour(p),
                    BackgroundTransparency = 1,
                    Position = UDim2.fromOffset(12, 0), Size = UDim2.new(0.55, 0, 1, 0),
                    TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, row)
                local fb = new("TextButton", {Text = "FLING", Font = Enum.Font.GothamBold,
                    TextSize = 9, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.danger,
                    Size = UDim2.fromOffset(50, 20), Position = UDim2.new(1, -104, 0.5, -10),
                    AutoButtonColor = false, ZIndex = 34}, row)
                corner(fb, 5)
                tStroke(stroke(fb, Theme.strokeSoft, 1))
                fb.MouseButton1Click:Connect(function() flingPlayer(p) end)
                local tb = new("TextButton", {Text = "TP", Font = Enum.Font.GothamBold,
                    TextSize = 10, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.accent2,
                    Size = UDim2.fromOffset(42, 20), Position = UDim2.new(1, -50, 0.5, -10),
                    AutoButtonColor = false, ZIndex = 34}, row)
                corner(tb, 5)
                tStroke(stroke(tb, Theme.strokeSoft, 1))
                tb.MouseButton1Click:Connect(function()
                    local tR = p.Character and p.Character:FindFirstChild("HumanoidRootPart")
                    local mR = hrp()
                    if tR and mR then
                        mR.AssemblyLinearVelocity = Vector3.zero
                        mR.CFrame = tR.CFrame + Vector3.new(0, 3, 0)
                        mR.AssemblyLinearVelocity = Vector3.zero
                    end
                end)
            end
        end
    end
    refresh()
    buttonRow(pg2, "Refresh List", "REFRESH", refresh)
end

--==================== TROLL ====================
do
    local pg2 = "troll"
    section(pg2, "TARGET")
    local bar = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 30),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2]))
    corner(bar, 8)
    tStroke(stroke(bar, Theme.strokeSoft, 1, 0.55))
    local lbl = new("TextLabel", {Size = UDim2.new(1, -90, 1, 0), Position = UDim2.fromOffset(14, 0),
        BackgroundTransparency = 1, Text = "Target: Nearest", Font = Enum.Font.GothamBold,
        TextSize = 11, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, bar)
    local clearB = new("TextButton", {Size = UDim2.fromOffset(70, 20),
        Position = UDim2.new(1, -78, 0.5, -10), BackgroundColor3 = Theme.panel, Text = "CLEAR",
        Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.danger,
        AutoButtonColor = false, ZIndex = 34}, bar)
    corner(clearB, 5)
    tStroke(stroke(clearB, Theme.strokeSoft, 1))
    clearB.MouseButton1Click:Connect(function()
        TS.target = nil
        TS.lockedTarget = nil
        lbl.Text = "Target: Nearest"
    end)
    toggleRow(pg2, "Troll.TapTarget", "Tap to Target")
    sliderRow(pg2, "Troll.TapRadius", "Crosshair Radius", 5, 200, 0)

    section(pg2, "TAP-TO-TARGET BINDS")
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        Text = "press key while hovering a player - chips appear under reticle",
        Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
        TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])
    buttonRow(pg2, "Bind: Teleport on hover", "BIND", function(b)
        pendingKeybind = {path = "TapBinds.teleport", raw = true, btn = b}
        b.Text = "press..."
    end)
    buttonRow(pg2, "Bind: Hump on hover", "BIND", function(b)
        pendingKeybind = {path = "TapBinds.hump", raw = true, btn = b}
        b.Text = "press..."
    end)
    buttonRow(pg2, "Bind: Orbit on hover", "BIND", function(b)
        pendingKeybind = {path = "TapBinds.orbit", raw = true, btn = b}
        b.Text = "press..."
    end)
    buttonRow(pg2, "Bind: Spectate on hover", "BIND", function(b)
        pendingKeybind = {path = "TapBinds.spectate", raw = true, btn = b}
        b.Text = "press..."
    end)

    section(pg2, "FOLLOW")
    toggleRow(pg2, "Troll.FollowTarget", "Follow Target")
    sliderRow(pg2, "Troll.FollowSpeed", "Follow Speed", 10, 300, 0)

    local hb = collapsible(pg2, "HUMP ENGINE", true)
    toggleRow(hb, "Troll.Hump", "HUMP Target")
    toggleRow(hb, "Troll.HumpAutoDetect", "Auto-Detect")
    toggleRow(hb, "Troll.HumpFallProtect", "Fall Protection")
    toggleRow(hb, "UI.AD", "Show Auto-Detect HUD (J)")
    sliderRow(hb, "Troll.HumpSpeed", "Hump Speed (Hz)", 1, 100, 0)
    sliderRow(hb, "Troll.HumpAmp", "Amplitude", 0.3, 5, 2)
    sliderRow(hb, "Troll.HumpDist", "Stand Distance", 0.8, 5, 2)
    toggleRow(hb, "Troll.HumpYawOnly", "Yaw Only")
    toggleRow(hb, "Troll.HumpKeepOwner", "Re-claim Owner")
    toggleRow(hb, "Troll.HumpUsePlatform", "Use PlatformStand")
    toggleRow(hb, "Troll.HumpOverrideFly", "Override Fly")
    toggleRow(hb, "Troll.HumpVelMatch", "Velocity Match")
end

--==================== UTIL ====================
do
    local pg2 = "util"
    section(pg2, "AUTO")
    toggleRow(pg2, "Utility.AutoClicker", "Auto Clicker")
    sliderRow(pg2, "Utility.AutoClickDelay", "Click Delay", 0.01, 1, 2)
    toggleRow(pg2, "Utility.AutoRespawn", "Auto Respawn")
    toggleRow(pg2, "Utility.AutoSheriff", "Auto Sheriff Pickup")
    sliderRow(pg2, "Utility.AutoSheriffRange", "Pickup Range", 10, 500, 0)
    section(pg2, "CHAT")
    toggleRow(pg2, "Utility.ChatSpam", "Chat Spam")
    textRow(pg2, "Message", "message...", Cfg.Utility.ChatSpamMsg, function(t)
        Cfg.Utility.ChatSpamMsg = t
    end)
end

--==================== SAVE ====================
do
    local pg2 = "save"
    section(pg2, "LOADOUTS")
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 32), BackgroundTransparency = 1,
        Text = "IO: " .. (IO.has and ("yes - " .. IO.reason) or ("no - " .. IO.reason)) ..
            "\nPlace: " .. tostring(game.PlaceId),
        Font = Enum.Font.GothamBold, TextSize = 9,
        TextColor3 = IO.has and Theme.success or Theme.danger,
        TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])
    local autoLbl = new("TextLabel", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        Text = autoloadName and ("autoload: " .. autoloadName) or "no autoload",
        Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])
    local currentLbl = new("TextLabel", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        Text = "editing: none", Font = Enum.Font.GothamBold, TextSize = 10,
        TextColor3 = Theme.muted, LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])

    local nameBox = tPanel2(new("TextBox", {Size = UDim2.new(1, 0, 0, 28),
        BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Text = "",
        Active = true, Selectable = true,
        PlaceholderText = "loadout name (eg. aimbot, movement, troll)",
        PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
        TextColor3 = Theme.text, ClearTextOnFocus = false,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 50}, pages[pg2]))
    corner(nameBox, 7)
    tStroke(stroke(nameBox, Theme.strokeSoft, 1))

    local listCont = new("Frame", {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
        LayoutOrder = #pages[pg2]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[pg2])
    new("UIListLayout", {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, listCont)

    local refreshList
    refreshList = function()
        for _, c in ipairs(listCont:GetChildren()) do
            if not c:IsA("UIListLayout") then c:Destroy() end
        end
        if currentLbl then
            if currentLoadout then
                currentLbl.Text = "editing: " .. currentLoadout .. " (SAVE overwrites)"
                currentLbl.TextColor3 = Theme.accent2
                if nameBox then nameBox.Text = currentLoadout end
            else
                currentLbl.Text = "editing: none (type name or LOAD a loadout first)"
                currentLbl.TextColor3 = Theme.muted
            end
        end
        local names = listLoadouts()
        if #names == 0 then
            new("TextLabel", {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
                Text = "no saved loadouts yet - type a name above and hit SAVE",
                Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
                TextXAlignment = Enum.TextXAlignment.Left, LayoutOrder = 1, ZIndex = 34}, listCont)
            return
        end
        for i, name in ipairs(names) do
            local isAuto = (name == autoloadName)
            local isEditing = (name == currentLoadout)
            local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 30),
                BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
                LayoutOrder = i, ZIndex = 33}, listCont))
            corner(row, 7)
            local edgeCol = Theme.strokeSoft
            local edgeTh = 1
            if isEditing then edgeCol = Theme.success; edgeTh = 1.6
            elseif isAuto then edgeCol = Theme.accent3; edgeTh = 1.6 end
            tStroke(stroke(row, edgeCol, edgeTh, 0.55))
            hoverStripe(row, Theme.neon)
            local namePrefix = ""
            if isEditing then namePrefix = "* " elseif isAuto then namePrefix = "! " end
            new("TextLabel", {Size = UDim2.new(1, -240, 1, 0), Position = UDim2.fromOffset(12, 0),
                BackgroundTransparency = 1, Text = namePrefix .. name,
                Font = Enum.Font.GothamBold, TextSize = 10,
                TextColor3 = isEditing and Theme.success or (isAuto and Theme.accent2 or Theme.text),
                TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, row)
            local lb = new("TextButton", {Size = UDim2.fromOffset(34, 18),
                Position = UDim2.new(1, -238, 0.5, -9), BackgroundColor3 = Theme.panel2,
                Text = "LOAD", Font = Enum.Font.GothamBold, TextSize = 8,
                TextColor3 = Theme.success, AutoButtonColor = false, ZIndex = 34}, row)
            corner(lb, 4)
            stroke(lb, Theme.strokeSoft, 1)
            lb.MouseButton1Click:Connect(function()
                if loadLoadout(name) then
                    currentLoadout = name
                    for p, w in pairs(widgets) do
                        local v = getPath(Cfg, p)
                        if v ~= nil then pcall(w.set, v, false) end
                    end
                    applyTheme()
                    applyOpacity(Cfg.UI.MenuOpacity or 0)
                    pcall(rebuildChips)
                    notify("Loaded", name .. " (editing)", Theme.success, 2.5)
                    refreshList()
                else
                    notify("Load failed", name, Theme.danger, 2.5)
                end
            end)
            local sv = new("TextButton", {Size = UDim2.fromOffset(48, 18),
                Position = UDim2.new(1, -204, 0.5, -9), BackgroundColor3 = Theme.panel2,
                Text = "SAVE", Font = Enum.Font.GothamBold, TextSize = 8,
                TextColor3 = Theme.gold, AutoButtonColor = false, ZIndex = 34}, row)
            corner(sv, 4)
            stroke(sv, Theme.strokeSoft, 1)
            sv.MouseButton1Click:Connect(function()
                saveLoadout(name, false)
                currentLoadout = name
                notify("Updated", name, Theme.success, 2.5)
                refreshList()
            end)
            local ab = new("TextButton", {Size = UDim2.fromOffset(40, 18),
                Position = UDim2.new(1, -152, 0.5, -9), BackgroundColor3 = Theme.panel2,
                Text = "AUTO", Font = Enum.Font.GothamBold, TextSize = 8,
                TextColor3 = isAuto and Theme.success or Theme.gold,
                AutoButtonColor = false, ZIndex = 34}, row)
            corner(ab, 4)
            stroke(ab, Theme.strokeSoft, 1)
            ab.MouseButton1Click:Connect(function()
                autoloadName = name
                _G.__ReaperAutoload = name
                if IO.has then
                    pcall(IO.write, autoloadFile(), name)
                    pcall(IO.write, globalAutoloadFile(), game.PlaceId .. "::" .. name)
                end
                autoLbl.Text = "autoload: " .. name
                notify("Autoload set", name, Theme.success, 2.5)
                refreshList()
            end)
            local db = new("TextButton", {Size = UDim2.fromOffset(34, 18),
                Position = UDim2.new(1, -108, 0.5, -9), BackgroundColor3 = Theme.panel2,
                Text = "DEL", Font = Enum.Font.GothamBold, TextSize = 8,
                TextColor3 = Theme.danger, AutoButtonColor = false, ZIndex = 34}, row)
            corner(db, 4)
            stroke(db, Theme.strokeSoft, 1)
            db.MouseButton1Click:Connect(function()
                deleteLoadout(name)
                if autoLbl then
                    autoLbl.Text = autoloadName and ("autoload: " .. autoloadName) or "no autoload"
                end
                notify("Deleted", name, Theme.muted, 2)
                refreshList()
            end)
        end
    end
    refreshList()

    local function resolveName()
        local typed = (nameBox.Text or ""):gsub("^%s+", ""):gsub("%s+$", "")
        if typed ~= "" then return typed end
        if currentLoadout then return currentLoadout end
        return autoloadName or "default"
    end

    buttonRow(pg2, "SAVE (overwrites current if editing)", "SAVE", function()
        local n = resolveName()
        saveLoadout(n, false)
        currentLoadout = n
        notify("Saved", n, Theme.success)
        refreshList()
    end)
    buttonRow(pg2, "SAVE AS NEW + set autoload", "SAVE + AUTO", function()
        local n = resolveName()
        saveLoadout(n, true)
        currentLoadout = n
        autoLbl.Text = "autoload: " .. n
        notify("Saved + autoload", n, Theme.success)
        refreshList()
    end)
    buttonRow(pg2, "Stop editing (start fresh)", "CLEAR EDIT", function()
        currentLoadout = nil
        nameBox.Text = ""
        notify("Editing cleared", "Next SAVE will create a new loadout", Theme.muted, 3)
        refreshList()
    end)
    buttonRow(pg2, "Reload list", "REFRESH", function() refreshList() end)
end

--==================== THEME ====================
do
    local pg2 = "theme"
    section(pg2, "PALETTE")
    buttonRow(pg2, "Neon Purple", "APPLY", function()
        Theme.setPalette("Winter")
        Cfg.UI.Sakura = false
        applyTheme()
    end)
    buttonRow(pg2, "Sakura", "APPLY", function()
        Theme.setPalette("Sakura")
        Cfg.UI.Sakura = true
        applyTheme()
    end)
    section(pg2, "EFFECTS")
    toggleRow(pg2, "UI.Juicy", "Juicy Effects")
    toggleRow(pg2, "UI.Notifs", "Notifications")
    toggleRow(pg2, "UI.Ambient", "Ambient Particles")
    toggleRow(pg2, "UI.AnimatedOpen", "Animated Menu")
    toggleRow(pg2, "UI.MenuBlur", "Blur Background")
    section(pg2, "MENU OPACITY")
    sliderRow(pg2, "UI.MenuOpacity", "Transparency", 0, 0.9, 2, function(v) applyOpacity(v) end)
end

--==================== FINALIZE ====================
for _, p in pairs(pages) do p.Visible = false end
if pages.home then pages.home.Visible = true end
if tabs.home then
    tabs.home.BackgroundColor3 = Theme.neon
    tabs.home.TextColor3 = Color3.new(1, 1, 1)
end
applyTheme()
applyOpacity(Cfg.UI.MenuOpacity or 0)
statusLbl.Text = "REAPER - place " .. tostring(game.PlaceId)
pcall(refreshHUD)
pcall(refreshAD)

--==================== RETICLE ACTIONS ====================
function runAction(id)
    local now = tick()
    if now - TS.actionCooldown < 0.25 then return end
    TS.actionCooldown = now
    local t = TS.hovered
    if not t or not t.Character then
        notify("No target", "Hover someone first", Theme.danger, 2)
        return
    end
    if id == "teleport" then
        local tR = t.Character:FindFirstChild("HumanoidRootPart")
        local mR = hrp()
        if tR and mR then
            mR.AssemblyLinearVelocity = Vector3.zero
            mR.CFrame = tR.CFrame + Vector3.new(0, 3, 0)
            mR.AssemblyLinearVelocity = Vector3.zero
            notify("Teleported", t.Name, Theme.neon)
        end
    elseif id == "spectate" then
        if RA.spectateTarget == t then
            stopSpectate()
        else
            startSpectate(t)
        end
    elseif id == "hump" then
        TS.target = t
        TS.lockedTarget = t
        Cfg.Troll.Hump = true
        if widgets["Troll.Hump"] then widgets["Troll.Hump"].set(true) end
        HUMP.phase = 0
        HUMP.smoothVel = 0
        HUMP.smoothAir = 0
        HUMP.lockTimer = 1.5
        HUMP.awaitingRespawn = false
        HUMP.fallHold = 0
        HUMP.anchorY = nil
        HUMP.lastGoodY = nil
        HUMP.oldRootPart = nil
        notify("Humping", t.Name, Theme.gold)
    elseif id == "orbit" then
        TS.target = t
        TS.lockedTarget = t
        Cfg.Orbit.Enabled = true
        ORBIT.angle = 0
        ORBIT.shootCD = 0
        aiming = false
        aimToggled = false
        if widgets["Orbit.Enabled"] then widgets["Orbit.Enabled"].set(true) end
        notify("Orbiting", t.Name, Theme.accent3, 3)
    end
end

function rebuildChips()
    if not retActions or REBUILDING_CHIPS then return end
    REBUILDING_CHIPS = true
    pcall(function()
        for _, c in ipairs(retActions:GetChildren()) do
            if not c:IsA("UIListLayout") then c:Destroy() end
        end
        local list = {}
        local tb = Cfg.TapBinds or {}
        if Cfg.Troll.TapTarget then
            if tb.teleport then list[#list + 1] = {id = "teleport", label = "TP", key = tb.teleport, col = Theme.neon} end
            if tb.hump then list[#list + 1] = {id = "hump", label = "HUMP", key = tb.hump, col = Theme.gold} end
            if tb.orbit then list[#list + 1] = {id = "orbit", label = "ORBIT", key = tb.orbit, col = Theme.accent3} end
            if tb.spectate then list[#list + 1] = {id = "spectate", label = "SPEC", key = tb.spectate, col = Theme.accent3} end
        end
        local used = {}
        for _, a in ipairs(list) do used[a.id] = true end
        if RA.keys.teleport and not used.teleport then
            list[#list + 1] = {id = "teleport", label = "TP", key = RA.keys.teleport, col = Theme.neon}
        end
        if RA.keys.spectate and not used.spectate then
            list[#list + 1] = {id = "spectate", label = "SPEC", key = RA.keys.spectate, col = Theme.accent3}
        end
        if Cfg.Troll.Hump and RA.keys.hump and not used.hump then
            list[#list + 1] = {id = "hump", label = "HUMP", key = RA.keys.hump, col = Theme.gold}
        end
        for _, a in ipairs(list) do
            if a.key then
                local chip = new("TextButton", {
                    Size = UDim2.new(0, 0, 1, 0),
                    AutomaticSize = Enum.AutomaticSize.X,
                    BackgroundColor3 = Theme.panel,
                    BackgroundTransparency = 0.15,
                    Text = a.label .. " [" .. a.key.Name .. "]",
                    Font = Enum.Font.GothamBold,
                    TextSize = 9,
                    TextColor3 = a.col,
                    AutoButtonColor = false,
                    ZIndex = 14,
                }, retActions)
                corner(chip, 5)
                new("UIPadding", {PaddingLeft = UDim.new(0, 7), PaddingRight = UDim.new(0, 7)}, chip)
                local cs = stroke(chip, a.col, 1, 0.3)
                chip.MouseButton1Click:Connect(function()
                    local tt = tick()
                    if tt - CHIP_CLICK_LOCK < 0.25 then return end
                    CHIP_CLICK_LOCK = tt
                    runAction(a.id)
                    pulse(chip, 1.1, 0.08)
                end)
                chip.MouseEnter:Connect(function()
                    Tween:Create(chip, TweenInfo.new(0.12), {BackgroundTransparency = 0}):Play()
                    cs.Transparency = 0
                end)
                chip.MouseLeave:Connect(function()
                    Tween:Create(chip, TweenInfo.new(0.15), {BackgroundTransparency = 0.15}):Play()
                    cs.Transparency = 0.3
                end)
            end
        end
    end)
    REBUILDING_CHIPS = false
end
do
    local u = unboundKeys(3)
    RA.keys.teleport = u[1]
    RA.keys.spectate = u[2]
    RA.keys.hump = u[3]
end
pcall(rebuildChips)

--==================== SPECTATE (improved) ====================
SPECTATE = Cfg.Spectate or {Distance = 12, Height = 4, Speed = 8}
Cfg.Spectate = SPECTATE

local spectateLabel = new("TextLabel", {Size = UDim2.new(0, 300, 0, 26),
    Position = UDim2.new(0.5, -150, 0, 100), BackgroundColor3 = Theme.bg,
    BackgroundTransparency = 0.2, BorderSizePixel = 0, Visible = false, ZIndex = 100}, gui)
corner(spectateLabel, 8)
stroke(spectateLabel, Theme.accent3, 1.5, 0.2)
local spectateLabelTxt = new("TextLabel", {Size = UDim2.new(1, -20, 1, 0),
    Position = UDim2.fromOffset(10, 0), BackgroundTransparency = 1,
    Text = "SPECTATING", Font = Enum.Font.GothamBold, TextSize = 10,
    TextColor3 = Theme.accent3, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 101}, spectateLabel)

function startSpectate(target)
    if not target or not target.Character then return end
    RA.spectateTarget = target
    RA.spectateZoom = 1
    RA.spectateAngle = 0
    RA.spectateActive = true
    spectateLabel.Visible = true
    spectateLabelTxt.Text = "SPECTATING: " .. target.Name .. "  (A/D rotate, scroll zoom)"
    notify("Spectating", target.Name, Theme.accent3, 3)
end

function stopSpectate()
    if not RA.spectateActive then return end
    RA.spectateTarget = nil
    RA.spectateActive = false
    RA.spectateZoom = 1
    RA.spectateAngle = 0
    spectateLabel.Visible = false
    if Cam.CameraType == Enum.CameraType.Scriptable then
        Cam.CameraType = Enum.CameraType.Custom
    end
    notify("Spectate off", "", Theme.muted, 1.5)
end

RS.RenderStepped:Connect(function(dt)
    pcall(function()
        if not RA.spectateActive then return end
        local t = RA.spectateTarget
        if not t or not t.Parent or not t.Character then stopSpectate(); return end
        local head = t.Character:FindFirstChild("Head")
        local h = t.Character:FindFirstChildOfClass("Humanoid")
        if not head or not h or h.Health <= 0 then stopSpectate(); return end
        if Cfg.Orbit.Enabled and ORBIT.wasActive then return end
        if UIS:IsKeyDown(Enum.KeyCode.A) or UIS:IsKeyDown(Enum.KeyCode.Left) then
            RA.spectateAngle = RA.spectateAngle - dt * 90
        end
        if UIS:IsKeyDown(Enum.KeyCode.D) or UIS:IsKeyDown(Enum.KeyCode.Right) then
            RA.spectateAngle = RA.spectateAngle + dt * 90
        end
        if UIS:IsKeyDown(Enum.KeyCode.W) or UIS:IsKeyDown(Enum.KeyCode.Up) then
            SPECTATE.Height = math.clamp(SPECTATE.Height + dt * 5, -2, 20)
        end
        if UIS:IsKeyDown(Enum.KeyCode.S) or UIS:IsKeyDown(Enum.KeyCode.Down) then
            SPECTATE.Height = math.clamp(SPECTATE.Height - dt * 5, -2, 20)
        end
        local dist = SPECTATE.Distance * RA.spectateZoom
        local hgt = SPECTATE.Height
        local rad = math.rad(RA.spectateAngle)
        local camPos = head.Position + Vector3.new(math.sin(rad) * dist, hgt, math.cos(rad) * dist)
        if Cam.CameraType ~= Enum.CameraType.Scriptable then
            Cam.CameraType = Enum.CameraType.Scriptable
        end
        Cam.CFrame = Cam.CFrame:Lerp(CFrame.lookAt(camPos, head.Position), math.clamp(dt * SPECTATE.Speed, 0, 1))
    end)
end)

--==================== CROSSHAIR LOOP ====================
task.spawn(function()
    while crossGui.Parent do
        RS.RenderStepped:Wait()
        local show = Cfg.Troll.TapTarget and Cfg.UI.Crosshair
        if Cfg.UI.HideCrossOnMenu and menu and menu.Visible then show = false end
        if not show then
            crosshair.Visible = false
            reticle.Visible = false
            trackLine.Visible = false
            for _, arm in ipairs(crossArms) do arm.Visible = false end
        else
            crosshair.Visible = true
            local m = UIS:GetMouseLocation()
            crosshair.Position = UDim2.fromOffset(m.X, m.Y)
            crosshair.Size = UDim2.fromOffset(Cfg.UI.CrosshairSize, Cfg.UI.CrosshairSize)
            local sz = Cfg.UI.CrosshairSize
            local tk = Cfg.UI.CrosshairThick
            local armLen = math.max(6, math.floor(sz * 0.32))
            local gap = math.max(2, math.floor(sz * 0.15))
            local specs = {
                {Vector2.new(0, -(gap + armLen / 2)), Vector2.new(tk, armLen)},
                {Vector2.new(0, (gap + armLen / 2)), Vector2.new(tk, armLen)},
                {Vector2.new(-(gap + armLen / 2), 0), Vector2.new(armLen, tk)},
                {Vector2.new((gap + armLen / 2), 0), Vector2.new(armLen, tk)},
            }
            for i = 1, #specs do
                local a = crossArms[i]
                local spec = specs[i]
                a.Visible = true
                a.Size = UDim2.fromOffset(spec[2].X, spec[2].Y)
                a.Position = UDim2.new(0.5, spec[1].X, 0.5, spec[1].Y)
                a.AnchorPoint = Vector2.new(0.5, 0.5)
                a.BackgroundColor3 = Theme.neon
            end
            RAY_PARAMS_HOVER.FilterDescendantsInstances = LP.Character and {LP.Character} or {}
            local ray = Cam:ViewportPointToRay(m.X, m.Y)
            local res = workspace:Raycast(ray.Origin, ray.Direction * 3000, RAY_PARAMS_HOVER)
            local picked = nil
            if res and res.Instance then
                local model = res.Instance:FindFirstAncestorOfClass("Model")
                if model then
                    local p = Players:GetPlayerFromCharacter(model)
                    if p and p ~= LP then picked = p end
                end
            end
            if not picked then
                local best, bestD = nil, Cfg.Troll.TapRadius
                for _, p in ipairs(Players:GetPlayers()) do
                    if p ~= LP and p.Character then
                        local head = p.Character:FindFirstChild("Head")
                        if head then
                            local sp, on = Cam:WorldToViewportPoint(head.Position)
                            if on and sp.Z > 0 then
                                local d = (Vector2.new(sp.X, sp.Y) - m).Magnitude
                                if d <= bestD then best = p; bestD = d end
                            end
                        end
                    end
                end
                picked = best
            end
            TS.hovered = picked
            if picked and picked.Character then
                local head = picked.Character:FindFirstChild("Head")
                local h = picked.Character:FindFirstChildOfClass("Humanoid")
                if head and h then
                    local sp, on = Cam:WorldToViewportPoint(head.Position)
                    if on and sp.Z > 0 then
                        local col = reticleColour(picked)
                        reticle.Visible = true
                        local pv = Cfg.UI.CrosshairPulse and (0.96 + math.sin(tick() * 7) * 0.06) or 1
                        local ss = RSIZE * pv
                        reticle.Position = UDim2.fromOffset(sp.X, sp.Y)
                        reticle.Size = UDim2.fromOffset(ss, ss)
                        local sc = ss / RSIZE
                        ring1.Size = UDim2.fromOffset(ss, ss)
                        ring2.Size = UDim2.fromOffset(ss - 14 * sc, ss - 14 * sc)
                        ring2.Position = UDim2.fromOffset(7 * sc, 7 * sc)
                        ring1S.Color = col
                        ring2S.Color = col
                        retName.TextColor3 = col
                        retName.Text = (picked.DisplayName or picked.Name) .. " " .. roleLabel(picked)
                        local dist = (Cam.CFrame.Position - head.Position).Magnitude
                        retDist.Text = string.format("%d studs", math.floor(dist))
                        if Cfg.UI.ReticleHP and h then
                            hpBar.Visible = true
                            local hpx = math.clamp(h.Health / h.MaxHealth, 0, 1)
                            hpFill.Size = UDim2.fromScale(1, hpx)
                            hpFill.Position = UDim2.fromScale(0, 1 - hpx)
                            if hpx > 0.5 then hpFill.BackgroundColor3 = Theme.success
                            elseif hpx > 0.25 then hpFill.BackgroundColor3 = Theme.gold
                            else hpFill.BackgroundColor3 = Theme.danger end
                        else hpBar.Visible = false end
                        if Cfg.UI.ReticleLine then
                            local dx, dy = sp.X - m.X, sp.Y - m.Y
                            local len = math.sqrt(dx * dx + dy * dy)
                            if len > 25 then
                                trackLine.Visible = true
                                trackLine.Position = UDim2.fromOffset(m.X, m.Y)
                                trackLine.Size = UDim2.fromOffset(len, 1)
                                trackLine.Rotation = math.deg(math.atan2(dy, dx))
                                trackLine.BackgroundColor3 = col
                            else trackLine.Visible = false end
                        else trackLine.Visible = false end
                    else
                        reticle.Visible = false
                        trackLine.Visible = false
                    end
                end
            else
                reticle.Visible = false
                trackLine.Visible = false
            end
        end
    end
end)

--==================== INPUT ====================
aiming = false
aimToggled = false
lastMenuToggle = 0

function tbFocused()
    local ok, tb = pcall(function() return UIS:GetFocusedTextBox() end)
    return ok and tb ~= nil
end

function getHoveredPlayer()
    local m = UIS:GetMouseLocation()
    RAY_PARAMS_HOVER.FilterDescendantsInstances = LP.Character and {LP.Character} or {}
    local ray = Cam:ViewportPointToRay(m.X, m.Y)
    local res = workspace:Raycast(ray.Origin, ray.Direction * 3000, RAY_PARAMS_HOVER)
    if res and res.Instance then
        local model = res.Instance:FindFirstAncestorOfClass("Model")
        if model then
            local p = Players:GetPlayerFromCharacter(model)
            if p and p ~= LP then return p end
        end
    end
    local best, bestD = nil, 40
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LP and p.Character then
            local head = p.Character:FindFirstChild("Head")
            if head then
                local sp, on = Cam:WorldToViewportPoint(head.Position)
                if on and sp.Z > 0 then
                    local d = (Vector2.new(sp.X, sp.Y) - m).Magnitude
                    if d <= bestD then best = p; bestD = d end
                end
            end
        end
    end
    return best
end

UIS.InputBegan:Connect(function(i, gpe)
    if pendingKeybind then
        local path = pendingKeybind.path
        local isRaw = pendingKeybind.raw
        local key = nil
        if i.UserInputType == Enum.UserInputType.Keyboard then
            if i.KeyCode == Enum.KeyCode.Escape then pendingKeybind = nil; return end
            key = i.KeyCode
        elseif i.UserInputType == Enum.UserInputType.MouseButton1
            or i.UserInputType == Enum.UserInputType.MouseButton2
            or i.UserInputType == Enum.UserInputType.MouseButton3 then
            key = i.UserInputType
        end
        if key then
            if isRaw then setPath(Cfg, path, key)
            else Cfg.Binds[path] = key end
            if pendingKeybind and pendingKeybind.btn then pendingKeybind.btn.Text = key.Name end
            pendingKeybind = nil
            pcall(refreshHUD)
            pcall(rebuildChips)
        end
        return
    end
    if i.UserInputType == Enum.UserInputType.Keyboard and not tbFocused() then
        if Cfg.UI.MenuKey and i.KeyCode == Cfg.UI.MenuKey then
            local now = tick()
            if now - lastMenuToggle < 0.3 then return end
            lastMenuToggle = now
            if menu.Visible then closeMenu() else openMenu() end
            return
        end
        if Cfg.UI.HUDKey and i.KeyCode == Cfg.UI.HUDKey then
            Cfg.UI.HUD = not Cfg.UI.HUD
            pcall(refreshHUD)
            return
        end
        if Cfg.UI.ADKey and i.KeyCode == Cfg.UI.ADKey then
            Cfg.UI.AD = not Cfg.UI.AD
            pcall(refreshAD)
            return
        end
        local tbind = Cfg.TapBinds or {}
        local isTapAction = (tbind.teleport and i.KeyCode == tbind.teleport)
            or (tbind.hump and i.KeyCode == tbind.hump)
            or (tbind.orbit and i.KeyCode == tbind.orbit)
            or (tbind.spectate and i.KeyCode == tbind.spectate)
        if isTapAction then
            local hovered = getHoveredPlayer()
            if hovered and hovered.Character then
                TS.hovered = hovered
                if tbind.teleport and i.KeyCode == tbind.teleport then runAction("teleport")
                elseif tbind.hump and i.KeyCode == tbind.hump then runAction("hump")
                elseif tbind.orbit and i.KeyCode == tbind.orbit then runAction("orbit")
                elseif tbind.spectate and i.KeyCode == tbind.spectate then runAction("spectate") end
            end
            return
        end
        if RA.keys.teleport and i.KeyCode == RA.keys.teleport and not tbind.teleport then runAction("teleport"); return end
        if RA.keys.spectate and i.KeyCode == RA.keys.spectate and not tbind.spectate then runAction("spectate"); return end
        if RA.keys.hump and i.KeyCode == RA.keys.hump and not tbind.hump and Cfg.Troll.Hump then runAction("hump"); return end
    end
    if gpe then return end
    if i.UserInputType == Enum.UserInputType.MouseButton2 and Cfg.Aimbot.Enabled and not tbFocused() then
        if Cfg.Aimbot.ToggleMode then aimToggled = not aimToggled
        else aiming = true end
        return
    end
    if i.UserInputType == Enum.UserInputType.MouseButton1 and Cfg.Troll.TapTarget and not tbFocused() then
        local p = TS.hovered
        if p then
            TS.target = p
            TS.lockedTarget = p
            HUMP.phase = 0
            HUMP.smoothVel = 0
            HUMP.smoothAir = 0
            HUMP.lockTimer = 1.0
            HUMP.awaitingRespawn = false
            HUMP.fallHold = 0
            HUMP.speedMult = 1.0
            HUMP.ampMult = 1.0
            HUMP.distMult = 1.0
            HUMP.anchorY = nil
            HUMP.lastGoodY = nil
            HUMP.oldRootPart = nil
            notify("Locked on", p.Name, Theme.success, 2.5)
        end
        return
    end
    if i.UserInputType ~= Enum.UserInputType.Keyboard then return end
    if tbFocused() then return end
    local k = i.KeyCode
    for path, bind in pairs(Cfg.Binds or {}) do
        if bind and bind.EnumType == Enum.KeyCode and bind == k and widgets[path] then
            local w = widgets[path]
            w.set(not w.get())
        end
    end
end)
UIS.InputEnded:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton2 and not Cfg.Aimbot.ToggleMode then
        aiming = false
    end
end)
UIS.InputChanged:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseWheel and RA.spectateActive then
        RA.spectateZoom = math.clamp(RA.spectateZoom - i.Position.Z * 0.15, 0.3, 8)
    end
end)
logo.MouseButton1Click:Connect(function()
    local now = tick()
    if now - lastMenuToggle < 0.3 then return end
    lastMenuToggle = now
    if menu.Visible then closeMenu() else openMenu() end
end)

--==================== AIMBOT ====================
function bindDown(b)
    if not b or typeof(b) ~= "EnumItem" then return false end
    if b.EnumType == Enum.KeyCode then return UIS:IsKeyDown(b) end
    if b.EnumType == Enum.UserInputType then
        if b == Enum.UserInputType.MouseButton1 then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) end
        if b == Enum.UserInputType.MouseButton2 then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) end
        if b == Enum.UserInputType.MouseButton3 then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton3) end
    end
    return false
end

fovCircle = new("Frame", {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
    Size = UDim2.fromOffset(200, 200), BackgroundTransparency = 1, Visible = false, ZIndex = 1}, gui)
corner(fovCircle, 10000)
tAcc(stroke(fovCircle, Theme.neon, 1, 0.4))

local function pcpAllowed(p)
    if not Cfg.Aimbot.PCPTeamOnly then return true end
    if Cfg.Visuals.Mode ~= "PCP" then return true end
    local myRole = detectPCP(LP)
    local theirRole = detectPCP(p)
    if not myRole or not theirRole then return true end
    if myRole == "criminal" then return theirRole == "police"
    elseif myRole == "prisoner" then return theirRole == "police"
    elseif myRole == "police" then return theirRole == "criminal" end
    return true
end

local function validLockedTarget(lt)
    if not lt or not lt.Parent or not lt.Character then return nil end
    local tH = lt.Character:FindFirstChildOfClass("Humanoid")
    if not tH or tH.Health <= 0 then return nil end
    if not pcpAllowed(lt) then return nil end
    local mR = hrp()
    if not mR then return nil end
    local part = lt.Character:FindFirstChild(Cfg.Aimbot.TargetPart) or lt.Character:FindFirstChild("Head")
    if not part then return nil end
    local sd = (mR.Position - part.Position).Magnitude
    if sd > Cfg.Aimbot.MaxDist then return nil end
    return part
end

function aimTarget()
    local c = LP.Character
    if not c then return nil end
    local mR = c:FindFirstChild("HumanoidRootPart")
    if not mR then return nil end
    local center = Vector2.new(Cam.ViewportSize.X / 2, Cam.ViewportSize.Y / 2)
    local maxD = Cfg.Aimbot.FOV
    if Cfg.Aimbot.LockTarget and TS.lockedTarget then
        local part = validLockedTarget(TS.lockedTarget)
        if part then return part, TS.lockedTarget end
        TS.lockedTarget = nil
    end
    local best, bestD, bestPart = nil, maxD, nil
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LP and p.Character and pcpAllowed(p) then
            local skip = Cfg.Aimbot.TeamCheck and isAlly(p)
            if not skip then
                local tH = p.Character:FindFirstChildOfClass("Humanoid")
                if tH and tH.Health > 0 then
                    local part = p.Character:FindFirstChild(Cfg.Aimbot.TargetPart) or p.Character:FindFirstChild("Head")
                    if part then
                        local sd = (mR.Position - part.Position).Magnitude
                        if sd <= Cfg.Aimbot.MaxDist then
                            local sp, on = Cam:WorldToViewportPoint(part.Position)
                            if on and sp.Z > 0 then
                                local d = (Vector2.new(sp.X, sp.Y) - center).Magnitude
                                if d <= bestD then
                                    local vis = true
                                    if Cfg.Aimbot.VisibleOnly then
                                        local rp = RaycastParams.new()
                                        rp.FilterType = Enum.RaycastFilterType.Exclude
                                        rp.FilterDescendantsInstances = {c}
                                        local r = workspace:Raycast(Cam.CFrame.Position, part.Position - Cam.CFrame.Position, rp)
                                        vis = r == nil or r.Instance:IsDescendantOf(part.Parent)
                                    end
                                    if vis then best = p; bestD = d; bestPart = part end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if best and Cfg.Aimbot.LockTarget then TS.lockedTarget = best end
    return bestPart, best
end

RS.RenderStepped:Connect(function(dt)
    pcall(function()
        local showFov = Cfg.Aimbot.Enabled and Cfg.Aimbot.ShowCircle and not Cfg.Orbit.Enabled
        if fovCircle.Visible ~= showFov then fovCircle.Visible = showFov end
        if showFov then fovCircle.Size = UDim2.fromOffset(Cfg.Aimbot.FOV * 2, Cfg.Aimbot.FOV * 2) end
        if Cfg.Orbit.Enabled and ORBIT.wasActive then return end
        if not Cfg.Aimbot.Enabled then
            aiming = false; aimToggled = false
            if TS.lockedTarget and not Cfg.Troll.Hump and not Cfg.Orbit.Enabled then TS.lockedTarget = nil end
            return
        end
        if Cfg.Aimbot.ToggleMode then aiming = aimToggled
        else aiming = bindDown(Cfg.Aimbot.Key) end
        if not aiming then
            if TS.lockedTarget and not Cfg.Troll.Hump and not Cfg.Orbit.Enabled then TS.lockedTarget = nil end
            return
        end
        local part, target = aimTarget()
        if not part then return end
        local aimPos = part.Position
        if Cfg.Aimbot.PredictAim then
            local vel = part.AssemblyLinearVelocity
            if vel.Magnitude > 1 then
                local dist = (aimPos - Cam.CFrame.Position).Magnitude
                local delay = math.clamp(dist / 2000, 0.02, Cfg.Aimbot.PredictAmount + 0.02)
                aimPos = aimPos + vel * delay
            end
        end
        local s = Cfg.Aimbot.Strength
        if Cfg.Aimbot.Humanize then s = s * (0.85 + math.random() * 0.3) end
        local sm = math.max(Cfg.Aimbot.Smoothness, 1)
        local dist = (aimPos - Cam.CFrame.Position).Magnitude
        local distFactor = math.clamp(500 / math.max(dist, 50), 0.4, 1.6)
        local a = math.clamp(dt * (s / sm) * 30 * distFactor, 0, 1)
        if Cam.CameraType == Enum.CameraType.Scriptable then a = math.min(a * 3, 1) end
        Cam.CFrame = Cam.CFrame:Lerp(CFrame.lookAt(Cam.CFrame.Position, aimPos), a)
    end)
end)

--==================== MAGIC BULLET (SAFE - cached, no recursion) ====================
-- The hook NEVER reads instance properties - it only reads MB_CACHE.
-- Values are precomputed every Heartbeat outside the hook. Zero recursion possible.
MB_CACHE = {active = false, hit = nil, target = nil, ray = nil}

RS.Heartbeat:Connect(function()
    MB_CACHE.active = false
    MB_CACHE.hit = nil
    MB_CACHE.target = nil
    MB_CACHE.ray = nil
    local wantAim = Cfg.Aimbot.MagicBullet and Cfg.Aimbot.Enabled and not Cfg.Orbit.Enabled and aiming
    local wantOrbit = Cfg.Orbit.Enabled and Cfg.Orbit.AutoShoot and ORBIT.wasActive
    if not (wantAim or wantOrbit) then return end
    local t = TS.lockedTarget
    if not t then return end
    local ok, hit, tgt, ray = pcall(function()
        if not t.Parent then return nil end
        local char = t.Character
        if not char then return nil end
        local h = char:FindFirstChildOfClass("Humanoid")
        if not h or h.Health <= 0 then return nil end
        local head = char:FindFirstChild(Cfg.Aimbot.TargetPart) or char:FindFirstChild("Head")
        if not head then return nil end
        return CFrame.new(head.Position),
               head,
               Ray.new(Cam.CFrame.Position, (head.Position - Cam.CFrame.Position).Unit)
    end)
    if ok and hit and tgt and ray then
        MB_CACHE.active = true
        MB_CACHE.hit = hit
        MB_CACHE.target = tgt
        MB_CACHE.ray = ray
    end
end)

pcall(function()
    local mt = getrawmetatable(game)
    if not mt then return end
    local oldIndex = mt.__index
    if not oldIndex then return end
    setreadonly(mt, false)
    mt.__index = newcclosure(function(self, key)
        if MB_CACHE.active then
            if key == "Hit" then return MB_CACHE.hit end
            if key == "Target" then return MB_CACHE.target end
            if key == "UnitRay" then return MB_CACHE.ray end
        end
        return oldIndex(self, key)
    end)
    setreadonly(mt, true)
end)

--==================== ORBIT ====================
RS.Heartbeat:Connect(function(dt)
    pcall(function()
               if not Cfg.Orbit.Enabled then
            if ORBIT.wasActive then
                local h = hum()
                if h and not Cfg.Troll.Hump then
                    h.PlatformStand = false
                    h.AutoRotate = true
                end
                ORBIT.wasActive = false
                if Cam.CameraType == Enum.CameraType.Scriptable
                    and not RA.spectateActive
                    and not Cfg.Movement.Freecam then
                    Cam.CameraType = Enum.CameraType.Custom
                    UIS.MouseBehavior = Enum.MouseBehavior.Default
                end
            end
            if orbitCircle.Transparency < 1 then orbitCircle.Transparency = 1 end
            if orbitCircleLocked.Transparency < 1 then orbitCircleLocked.Transparency = 1 end
            return
        end
        local t = TS.lockedTarget or TS.target
        if not t or not t.Parent or not t.Character then
            ORBIT.wasActive = false
            orbitCircle.Transparency = 1
            orbitCircleLocked.Transparency = 1
            return
        end
        local tc = t.Character
        local tR = tc:FindFirstChild("HumanoidRootPart")
        local tH = tc:FindFirstChildOfClass("Humanoid")
        local mR = hrp()
        local mH = hum()
        if not (tR and tH and tH.Health > 0 and mR and mH) then
            ORBIT.wasActive = false
            orbitCircle.Transparency = 1
            orbitCircleLocked.Transparency = 1
            return
        end
        ORBIT.wasActive = true
        if Cfg.Orbit.ForceNoclip and LP.Character then noclipChar(LP.Character) end
        if not mH.PlatformStand then mH.PlatformStand = true end
        mH.AutoRotate = false
        ORBIT.angle = ORBIT.angle + dt * Cfg.Orbit.Speed
        local rad = Cfg.Orbit.Radius
        local hgt = Cfg.Orbit.Height
        local offset = Vector3.new(math.cos(ORBIT.angle) * rad, hgt, math.sin(ORBIT.angle) * rad)
        local desired = tR.Position + offset
        mR.CFrame = CFrame.lookAt(desired, tR.Position + Vector3.new(0, hgt, 0))
        mR.AssemblyLinearVelocity = Vector3.zero
        mR.AssemblyAngularVelocity = Vector3.zero
        if Cfg.Orbit.AutoAim then
            local head = tc:FindFirstChild(Cfg.Aimbot.TargetPart) or tc:FindFirstChild("Head")
            if head then
                if Cam.CameraType ~= Enum.CameraType.Scriptable then
                    Cam.CameraType = Enum.CameraType.Scriptable
                end
                local backDir = mR.Position - tR.Position
                if backDir.Magnitude < 0.1 then backDir = Vector3.new(0, 0, 1) end
                backDir = backDir.Unit
                local camPos = mR.Position + backDir * (Cfg.Orbit.CamDist or 12) + Vector3.new(0, Cfg.Orbit.CamHeight or 4, 0)
                Cam.CFrame = Cam.CFrame:Lerp(CFrame.lookAt(camPos, head.Position), math.clamp(dt * 15, 0, 1))
            end
        end
        if Cfg.Orbit.ShowCircle then
            local diameter = rad * 2
            local pos = tR.Position + Vector3.new(0, -3.2, 0)
            local cf = CFrame.new(pos) * CFrame.Angles(0, 0, math.rad(90))
            orbitCircle.Size = Vector3.new(0.1, diameter, diameter)
            orbitCircle.CFrame = cf
            orbitCircle.Transparency = 0.8
            orbitCircleLocked.Size = Vector3.new(0.15, diameter, diameter)
            orbitCircleLocked.CFrame = cf
            orbitCircleLocked.Transparency = 0.75
        else
            orbitCircle.Transparency = 1
            orbitCircleLocked.Transparency = 1
        end
        ORBIT.shootCD = ORBIT.shootCD - dt
        if Cfg.Orbit.AutoShoot and ORBIT.shootCD <= 0 then
            ORBIT.shootCD = 0.06
            TS.lockedTarget = t
            pcall(function()
                local m = LP:GetMouse()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton1(Vector2.new(m.X, m.Y))
            end)
        end
    end)
end)

--==================== TRIGGERBOT ====================
triggerAcc = 0
RS.Heartbeat:Connect(function(dt)
    pcall(function()
        if not Cfg.Trigger.Enabled then return end
        if not bindDown(Cfg.Trigger.Key) then return end
        triggerAcc = triggerAcc + dt
        if triggerAcc < Cfg.Trigger.Delay then return end
        triggerAcc = 0
        local mouse = LP:GetMouse()
        local target = mouse and mouse.Target
        if not target then return end
        local model = target:FindFirstAncestorOfClass("Model")
        if not model then return end
        local p = Players:GetPlayerFromCharacter(model)
        if not p or p == LP then return end
        if Cfg.Trigger.TeamCheck and isAlly(p) then return end
        local h = p.Character and p.Character:FindFirstChildOfClass("Humanoid")
        if not h or h.Health <= 0 then return end
        local dist = (mouse.Hit.Position - Cam.CFrame.Position).Magnitude
        if dist > Cfg.Trigger.Radius then return end
        pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton1(Vector2.new(mouse.X, mouse.Y))
        end)
    end)
end)

--==================== INF ZOOM ====================
do
    local lastInf = false
    RS.Heartbeat:Connect(function()
        pcall(function()
            if Cfg.Visuals.InfZoom ~= lastInf then
                lastInf = Cfg.Visuals.InfZoom
                if lastInf then
                    pcall(function()
                        LP.CameraMaxZoomDistance = 1000
                        LP.CameraMinZoomDistance = Cfg.Visuals.FOVMin or 0.5
                    end)
                else
                    pcall(function()
                        LP.CameraMaxZoomDistance = 128
                        LP.CameraMinZoomDistance = 0.5
                    end)
                end
            end
            if Cfg.Visuals.InfZoom then
                pcall(function()
                    if LP.CameraMaxZoomDistance < 900 then LP.CameraMaxZoomDistance = 1000 end
                end)
            end
        end)
    end)
end

--==================== ESP ====================
espData = {}
function removeESP(p)
    local d = espData[p]
    if d then
        if d.hl then d.hl:Destroy() end
        if d.bb then d.bb:Destroy() end
        espData[p] = nil
    end
end

RS.Heartbeat:Connect(function()
    pcall(function()
        if not Cfg.Visuals.Enabled then
            for p in pairs(espData) do removeESP(p) end
            return
        end
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LP then
                local ch = p.Character
                local h = ch and ch:FindFirstChildOfClass("Humanoid")
                local head = ch and ch:FindFirstChild("Head")
                if ch and h and h.Health > 0 and head then
                    local base = espColour(p)
                    local outline = espOutline(p)
                    local roleL = roleLabel(p)
                    local rank = getRankFor(p.UserId)
                    local badge = rank and BADGE_STYLE[rank]
                    local nameTagPrefix = ""
                    if badge then
                        base = badge.color
                        outline = Color3.new(base.R * 1.2, base.G * 1.2, base.B * 1.2)
                        nameTagPrefix = "[" .. badge.label .. "] "
                    end
                    local d = espData[p]
                    if not d or not d.hl or d.hl.Adornee ~= ch then
                        removeESP(p)
                        local hl = Instance.new("Highlight")
                        hl.Name = "ReaperESP"
                        hl.Adornee = ch
                        hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        hl.FillColor = base
                        hl.OutlineColor = outline
                        hl.FillTransparency = Cfg.Visuals.Fill
                        hl.OutlineTransparency = 0
                        hl.Parent = ch
                        local bb = new("BillboardGui", {Name = "ReaperTag", Size = UDim2.fromOffset(220, 64),
                            StudsOffsetWorldSpace = Vector3.new(0, 3.2, 0), AlwaysOnTop = true, Adornee = head, Parent = head})
                        local nl = new("TextLabel", {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 18),
                            Font = Enum.Font.GothamBold, TextSize = 13, TextColor3 = outline,
                            TextStrokeTransparency = 0.2, TextStrokeColor3 = Color3.new(0, 0, 0),
                            Text = nameTagPrefix .. p.Name, Visible = Cfg.Visuals.NameTags, Parent = bb})
                        local dl = new("TextLabel", {BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 18),
                            Size = UDim2.new(1, 0, 0, 14), Font = Enum.Font.Gotham, TextSize = 11,
                            TextColor3 = Color3.fromRGB(200, 210, 230), TextStrokeTransparency = 0.5,
                            TextStrokeColor3 = Color3.new(0, 0, 0), Text = "",
                            Visible = Cfg.Visuals.Distance, Parent = bb})
                        local rl = new("TextLabel", {BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 34),
                            Size = UDim2.new(1, 0, 0, 16), Font = Enum.Font.GothamBlack, TextSize = 12,
                            TextColor3 = base, TextStrokeTransparency = 0.3, TextStrokeColor3 = Color3.new(0, 0, 0),
                            Text = "", Visible = Cfg.Visuals.ShowRole, Parent = bb})
                        espData[p] = {hl = hl, bb = bb, nameLbl = nl, distLbl = dl, roleLbl = rl}
                        d = espData[p]
                    end
                    if d.hl then
                        d.hl.FillColor = base
                        d.hl.OutlineColor = outline
                        d.hl.FillTransparency = Cfg.Visuals.Fill
                    end
                    if d.nameLbl then
                        d.nameLbl.Visible = Cfg.Visuals.NameTags
                        d.nameLbl.TextColor3 = outline
                        d.nameLbl.Text = nameTagPrefix .. p.Name
                    end
                    if d.distLbl then
                        d.distLbl.Visible = Cfg.Visuals.Distance
                        if Cfg.Visuals.Distance then
                            local dist = (Cam.CFrame.Position - head.Position).Magnitude
                            d.distLbl.Text = string.format("%d studs", math.floor(dist))
                        end
                    end
                    if d.roleLbl then
                        local roleText = roleL
                        if badge then roleText = "[" .. badge.label .. "]" end
                        d.roleLbl.Visible = Cfg.Visuals.ShowRole and roleText ~= ""
                        if d.roleLbl.Visible then
                            d.roleLbl.Text = roleText
                            d.roleLbl.TextColor3 = base
                        end
                    end
                else
                    removeESP(p)
                end
            end
        end
    end)
end)

--==================== MOVEMENT ====================
flyBV = nil
flyGyro = nil
flyVelTarget = Vector3.zero
flySmoothedVel = Vector3.zero
wasFlying = false
freecamCF = nil
freecamMult = 1
savedWalk = 16
savedJump = 50
wasFreecam = false
spinAngle = 0
autoClickAccum = 0
sheriffCD = 0

function stopFly()
    if flyBV then flyBV:Destroy() flyBV = nil end
    if flyGyro then flyGyro:Destroy() flyGyro = nil end
    flyVelTarget = Vector3.zero
    flySmoothedVel = Vector3.zero
    local h = hum()
    if h and not Cfg.Troll.Hump and not Cfg.Orbit.Enabled then
        h.PlatformStand = false
        h.AutoRotate = true
    end
end

function startFly()
    local c = LP.Character
    local r = c and c:FindFirstChild("HumanoidRootPart")
    local h = c and c:FindFirstChildOfClass("Humanoid")
    if not r or not h then return end
    if not h.PlatformStand then h.PlatformStand = true; h.AutoRotate = false end
    if not flyBV or not flyBV.Parent then
        if flyBV then flyBV:Destroy() end
        flyBV = Instance.new("BodyVelocity")
        flyBV.MaxForce = Vector3.new(1e6, 1e6, 1e6)
        flyBV.P = 1250
        flyBV.Velocity = Vector3.zero
        flyBV.Parent = r
    end
    if not flyGyro or not flyGyro.Parent then
        if flyGyro then flyGyro:Destroy() end
        flyGyro = Instance.new("BodyGyro")
        flyGyro.MaxTorque = Vector3.new(1e6, 1e6, 1e6)
        flyGyro.P = 3000
        flyGyro.D = 500
        flyGyro.CFrame = r.CFrame
        flyGyro.Parent = r
    end
end

RS.Heartbeat:Connect(function(dt)
    pcall(function()
        local c = LP.Character
        if c then
            local wantNoclip = Cfg.Movement.Noclip or (Cfg.Orbit.Enabled and Cfg.Orbit.ForceNoclip)
            if wantNoclip then noclipChar(c)
            else
                for _, p in ipairs(c:GetDescendants()) do
                    if p:IsA("BasePart") and not p.CanCollide then
                        p.CanCollide = true
                        if noclipOK then pcall(function() p.CollisionGroup = "Default" end) end
                    end
                end
            end
        end
        if Cfg.Movement.Freecam and not wasFreecam then
            local h = hum()
            if h then savedWalk = h.WalkSpeed; savedJump = h.JumpPower; h.WalkSpeed = 0; h.JumpPower = 0 end
            freecamCF = Cam.CFrame
            Cam.CameraType = Enum.CameraType.Scriptable
            UIS.MouseBehavior = Enum.MouseBehavior.LockCenter
            wasFreecam = true
        elseif not Cfg.Movement.Freecam and wasFreecam then
            local h = hum()
            if h then h.WalkSpeed = savedWalk or 16; h.JumpPower = savedJump or 50 end
            Cam.CameraType = Enum.CameraType.Custom
            UIS.MouseBehavior = Enum.MouseBehavior.Default
            freecamCF = nil
            wasFreecam = false
        end
        if Cfg.Movement.Freecam and freecamCF then
            local sens = Cfg.Movement.FreecamSens * 0.3
            local d = UIS:GetMouseDelta()
            if d.Magnitude > 0 then
                freecamCF = freecamCF * CFrame.Angles(math.rad(-d.Y * sens), math.rad(-d.X * sens), 0)
            end
            local dir = Vector3.zero
            if UIS:IsKeyDown(Enum.KeyCode.W) then dir = dir + freecamCF.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.S) then dir = dir - freecamCF.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.A) then dir = dir - freecamCF.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.D) then dir = dir + freecamCF.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.Space) then dir = dir + Vector3.new(0, 1, 0) end
            if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then dir = dir - Vector3.new(0, 1, 0) end
            local sp = UIS:IsKeyDown(Enum.KeyCode.LeftShift) and 3 or 1
            if dir.Magnitude > 0 then dir = dir.Unit end
            freecamCF = freecamCF + dir * Cfg.Movement.FreecamSpeed * sp * freecamMult * dt
            Cam.CFrame = freecamCF
        end
        if c then
            local h = c:FindFirstChildOfClass("Humanoid")
            local r = c:FindFirstChild("HumanoidRootPart")
            if h then
                if Cfg.Movement.SpeedEnabled and not Cfg.Movement.Freecam then h.WalkSpeed = Cfg.Movement.Speed end
                if Cfg.Movement.JumpEnabled then h.UseJumpPower = true; h.JumpPower = Cfg.Movement.JumpPower end
                if Cfg.Movement.GodMode then
                    if h.MaxHealth < 9e5 then h.MaxHealth = 1e6 end
                    if h.Health < h.MaxHealth then h.Health = h.MaxHealth end
                end
            end
            local humpActive = Cfg.Troll.Hump and TS.target ~= nil
            local orbitActive = Cfg.Orbit.Enabled and ORBIT.wasActive
            local flySuppress = (humpActive and Cfg.Troll.HumpOverrideFly) or orbitActive
            if Cfg.Movement.Fly and r and h and not Cfg.Movement.Freecam and not flySuppress then
                startFly()
                wasFlying = true
                local dir = Vector3.zero
                if UIS:IsKeyDown(Enum.KeyCode.W) then dir = dir + Cam.CFrame.LookVector end
                if UIS:IsKeyDown(Enum.KeyCode.S) then dir = dir - Cam.CFrame.LookVector end
                if UIS:IsKeyDown(Enum.KeyCode.A) then dir = dir - Cam.CFrame.RightVector end
                if UIS:IsKeyDown(Enum.KeyCode.D) then dir = dir + Cam.CFrame.RightVector end
                if UIS:IsKeyDown(Enum.KeyCode.Space) then dir = dir + Vector3.new(0, 1, 0) end
                if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then dir = dir - Vector3.new(0, 1, 0) end
                if dir.Magnitude > 0 then dir = dir.Unit end
                local sp = Cfg.Movement.FlySpeed
                if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then sp = sp * Cfg.Movement.FlyBoost end
                flyVelTarget = dir * sp
                local sm = math.clamp(dt * Cfg.Movement.FlySmooth, 0, 1)
                flySmoothedVel = flySmoothedVel:Lerp(flyVelTarget, sm)
                if flyBV then flyBV.Velocity = flySmoothedVel end
                if flyGyro then flyGyro.CFrame = CFrame.new(r.Position, r.Position + Cam.CFrame.LookVector) end
            elseif wasFlying and not Cfg.Movement.Fly then
                stopFly()
                wasFlying = false
            end
            if Cfg.Movement.Sprint and not Cfg.Movement.SpeedEnabled and h then
                if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then h.WalkSpeed = Cfg.Movement.SprintSpeed
                else h.WalkSpeed = 16 end
            end
            if Cfg.Movement.Bunnyhop and h and h.FloorMaterial ~= Enum.Material.Air then
                h:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
        if Cfg.Movement.Spinbot and c then
            local r = c:FindFirstChild("HumanoidRootPart")
            if r and not Cfg.Troll.Hump and not Cfg.Orbit.Enabled then
                spinAngle = spinAngle + dt * 15
                r.CFrame = CFrame.new(r.Position) * CFrame.Angles(0, spinAngle, 0)
            end
        end
        if Cfg.World.Fullbright then
            Lighting.Ambient = Color3.fromRGB(180, 180, 180)
            Lighting.OutdoorAmbient = Color3.fromRGB(180, 180, 180)
            Lighting.Brightness = 3
            Lighting.FogEnd = 1e6
            Lighting.FogStart = 1e6
        end
        if Cfg.Visuals.NoFog then Lighting.FogEnd = 1e6; Lighting.FogStart = 1e6 end
        if Cfg.World.RemoveBlur then
            local b = Lighting:FindFirstChildOfClass("BlurEffect")
            if b and b.Name ~= "ReaperPromptBlur" then b.Enabled = false end
        end
        if Cfg.World.FOVEnabled then Cam.FieldOfView = Cfg.World.FOV end
        if Cfg.World.GravityEnabled then workspace.Gravity = Cfg.World.Gravity end
        if Cfg.Utility.AutoSheriff then
            sheriffCD = sheriffCD - dt
            if sheriffCD <= 0 then
                local myC = LP.Character
                if myC then
                    local mR = myC:FindFirstChild("HumanoidRootPart")
                    if mR then
                        local best, bestD = nil, Cfg.Utility.AutoSheriffRange
                        for _, obj in ipairs(workspace:GetDescendants()) do
                            if obj:IsA("Tool") then
                                local matched = false
                                for _, n in ipairs({"Gun", "Revolver", "Pistol", "SheriffGun", "sheriff"}) do
                                    if obj.Name:lower():find(n:lower(), 1, true) then matched = true; break end
                                end
                                if matched then
                                    local hh = obj:FindFirstChild("Handle")
                                    if hh and hh:IsA("BasePart") then
                                        local d = (mR.Position - hh.Position).Magnitude
                                        if d < bestD then best = obj; bestD = d end
                                    end
                                end
                            end
                        end
                        if best then
                            local handle = best:FindFirstChild("Handle")
                            if handle then
                                mR.CFrame = CFrame.new(handle.Position + Vector3.new(0, 2.5, 0))
                                sheriffCD = 0.3
                            end
                        end
                    end
                end
            end
        end
        if Cfg.Utility.AutoClicker and UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
            autoClickAccum = autoClickAccum + dt
            if autoClickAccum >= Cfg.Utility.AutoClickDelay then
                autoClickAccum = 0
                local m = LP:GetMouse()
                pcall(function()
                    VirtualUser:CaptureController()
                    VirtualUser:ClickButton1(Vector2.new(m.X, m.Y))
                end)
            end
        end
        if Cfg.Utility.AutoRespawn then
            local h = hum()
            if h and h.Health <= 0 then LP:LoadCharacter() end
        end
        if Cfg.Utility.ChatSpam then
            local now = tick()
            if now - TS.lastSpam > 1.5 then
                TS.lastSpam = now
                sendChat(Cfg.Utility.ChatSpamMsg)
            end
        end
    end)
end)

UIS.JumpRequest:Connect(function()
    if not Cfg.Movement.InfiniteJump then return end
    local h = hum()
    if h then h:ChangeState(Enum.HumanoidStateType.Jumping) end
end)

--==================== FLING ====================
flinging = false
function flingPlayer(p)
    if flinging or not p or not p.Character then return end
    local c = p.Character
    local r = c:FindFirstChild("HumanoidRootPart")
    if not r then return end
    flinging = true
    pcall(function() r:SetNetworkOwner(LP) end)
    local spin = Instance.new("Part")
    spin.Name = "ReaperFling"
    spin.Size = Vector3.new(3, 3, 3)
    spin.Transparency = 1
    spin.CanCollide = false
    spin.Massless = true
    spin.CFrame = r.CFrame
    spin.Parent = workspace
    local w = Instance.new("WeldConstraint")
    w.Part0 = spin
    w.Part1 = r
    w.Parent = spin
    local av = Instance.new("BodyAngularVelocity")
    av.AngularVelocity = Vector3.new(1e5, 1e5, 1e5)
    av.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    av.P = 1e9
    av.Parent = spin
    local bv = Instance.new("BodyVelocity")
    bv.Velocity = Vector3.new(math.random(-40, 40), 400, math.random(-40, 40))
    bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bv.P = 1e6
    bv.Parent = spin
    task.wait(Cfg.Utility.FlingDur)
    if spin.Parent then spin:Destroy() end
    flinging = false
end

--==================== TROLL / HUMP ====================
function getTargetPlayer()
    if TS.target then
        local c = TS.target.Character
        local h = c and c:FindFirstChildOfClass("Humanoid")
        if h and h.Health > 0 then return TS.target end
        if TS.target.Parent then return TS.target end
    end
    local best, bestD = nil, math.huge
    local mR = hrp()
    if not mR then return nil end
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LP and p.Character then
            local r = p.Character:FindFirstChild("HumanoidRootPart")
            local h = p.Character:FindFirstChildOfClass("Humanoid")
            if r and h and h.Health > 0 then
                local d = (mR.Position - r.Position).Magnitude
                if d < bestD then best = p; bestD = d end
            end
        end
    end
    return best
end

RS.Heartbeat:Connect(function(dt)
    pcall(function()
        if not Cfg.Troll.HumpAutoDetect then return end
        local t = TS.target
        if not t or not t.Character then return end
        local tR = t.Character:FindFirstChild("HumanoidRootPart")
        local tH = t.Character:FindFirstChildOfClass("Humanoid")
        if not tR or not tH then return end
        local vel = tR.AssemblyLinearVelocity
        local s = vel.Magnitude
        HR.speed = s
        local sAlpha = 1 - math.exp(-8 * dt)
        HR.smoothSpeed = HR.smoothSpeed + (s - HR.smoothSpeed) * sAlpha
        local airRaw = (tH.FloorMaterial == Enum.Material.Air or vel.Y > 6) and 1 or 0
        local aAlpha = 1 - math.exp(-6 * dt)
        HUMP.smoothAir = HUMP.smoothAir + (airRaw - HUMP.smoothAir) * aAlpha
        HR.airborne = HUMP.smoothAir > 0.5
        local sm = HR.smoothSpeed
        local function tierFor(v)
            if v < 3 then return "STILL" end
            if v < 25 then return "WALK" end
            if v < 60 then return "RUN" end
            if v < 150 then return "FAST" end
            return "EXTREME"
        end
        local rawTier = tierFor(sm)
        if rawTier ~= HR.tier then
            HUMP.lockTimer = HUMP.lockTimer + dt
            if HUMP.lockTimer > 0.35 then HR.tier = rawTier; HUMP.lockTimer = 0 end
        else
            HUMP.lockTimer = 0
        end
        local targetSpeedMult, targetAmpMult, targetDistMult
        if HR.tier == "STILL" then targetSpeedMult, targetAmpMult, targetDistMult = 0.75, 0.90, 1.00
        elseif HR.tier == "WALK" then targetSpeedMult, targetAmpMult, targetDistMult = 1.15, 1.05, 1.05
        elseif HR.tier == "RUN" then targetSpeedMult, targetAmpMult, targetDistMult = 1.65, 1.15, 1.15
        elseif HR.tier == "FAST" then targetSpeedMult, targetAmpMult, targetDistMult = 2.15, 1.25, 1.25
        else targetSpeedMult, targetAmpMult, targetDistMult = 2.80, 1.35, 1.35 end
        if HR.airborne then
            targetSpeedMult = targetSpeedMult * 1.20
            targetAmpMult = targetAmpMult * 1.10
        end
        local alpha = 1 - math.exp(-3.5 * dt)
        HUMP.speedMult = HUMP.speedMult + (targetSpeedMult - HUMP.speedMult) * alpha
        HUMP.ampMult = HUMP.ampMult + (targetAmpMult - HUMP.ampMult) * alpha
        HUMP.distMult = HUMP.distMult + (targetDistMult - HUMP.distMult) * alpha
        if HR.tier == "STILL" then HR.autoMode = "Close"
        elseif HR.tier == "EXTREME" then HR.autoMode = "Catch"
        elseif HR.airborne then HR.autoMode = "Air"
        else HR.autoMode = "Hybrid" end
        pcall(refreshAD)
    end)
end)

RS.Heartbeat:Connect(function(dt)
    pcall(function()
        if Cfg.Troll.FollowTarget then
            local t = TS.target or getTargetPlayer()
            if t and t.Character then
                local mR = hrp()
                local tR = t.Character:FindFirstChild("HumanoidRootPart")
                if mR and tR then
                    local dir = tR.Position - mR.Position
                    local dist = dir.Magnitude
                    if dist > 4 then
                        local step = math.min(Cfg.Troll.FollowSpeed * dt, dist - 3)
                        if step > 0 then mR.CFrame = mR.CFrame + dir.Unit * step end
                    end
                end
            end
        end
        if Cfg.Troll.Hump then
            local t = TS.target or getTargetPlayer()
            if t then
                local mC = LP.Character
                if mC then
                    local mR = mC:FindFirstChild("HumanoidRootPart")
                    local mH = mC:FindFirstChildOfClass("Humanoid")
                    if not (mR and mH) then return end
                    local tR = t.Character and t.Character:FindFirstChild("HumanoidRootPart")
                    local tH = t.Character and t.Character:FindFirstChildOfClass("Humanoid")
                    if HUMP.awaitingRespawn then
                        if tR and tH and tH.Health > 0 and tR ~= HUMP.oldRootPart then
                            HUMP.awaitingRespawn = false
                            HUMP.oldRootPart = nil
                            HUMP.fallHold = 0
                            HUMP.phase = 0
                            HUMP.lastGoodCF = nil
                            HUMP.lastGoodY = nil
                            HUMP.anchorY = nil
                            notify("Target respawned", t.Name, Theme.success, 2)
                        else
                            if HUMP.lastGoodCF then mR.CFrame = HUMP.lastGoodCF end
                            mR.AssemblyLinearVelocity = Vector3.zero
                            mR.AssemblyAngularVelocity = Vector3.zero
                            TS.humpWasActive = true
                            return
                        end
                    end
                    if not tR or not tH or tH.Health <= 0 then
                        if Cfg.Troll.HumpFallProtect then
                            if not HUMP.awaitingRespawn then
                                HUMP.oldRootPart = tR
                                HUMP.awaitingRespawn = true
                            end
                            if HUMP.lastGoodCF then mR.CFrame = HUMP.lastGoodCF end
                            mR.AssemblyLinearVelocity = Vector3.zero
                            mR.AssemblyAngularVelocity = Vector3.zero
                        end
                        TS.humpWasActive = true
                        return
                    end
                    local tY = tR.Position.Y
                    local tVelY = tR.AssemblyLinearVelocity.Y
                    local tVel = tR.AssemblyLinearVelocity
                    if not HUMP.anchorY then HUMP.anchorY = tY end
                    if tY > HUMP.anchorY - 30 then HUMP.anchorY = math.max(HUMP.anchorY, tY) end
                    local isUnderMap = tY < -30
                    local isBigDrop = (HUMP.anchorY - tY) > 300
                    local isFastFall = tVelY < -200
                    local isDeadlyFall = isUnderMap or isBigDrop or isFastFall
                    if isDeadlyFall and Cfg.Troll.HumpFallProtect then
                        HR.fallingUnder = true
                        HUMP.fallHold = 3
                        if HUMP.lastGoodCF then
                            mR.CFrame = HUMP.lastGoodCF
                            mR.AssemblyLinearVelocity = Vector3.zero
                            mR.AssemblyAngularVelocity = Vector3.zero
                        end
                        TS.humpWasActive = true
                        return
                    end
                    if HUMP.fallHold > 0 then
                        HUMP.fallHold = HUMP.fallHold - dt
                        if HUMP.lastGoodCF then mR.CFrame = HUMP.lastGoodCF end
                        mR.AssemblyLinearVelocity = Vector3.zero
                        mR.AssemblyAngularVelocity = Vector3.zero
                        TS.humpWasActive = true
                        if HUMP.fallHold <= 0 then HR.fallingUnder = false end
                        return
                    end
                    HR.fallingUnder = false
                    if tY > -20 and tVelY > -100 then
                        HUMP.lastGoodCF = mR.CFrame
                        HUMP.lastGoodY = tY
                    end
                    if Cfg.Troll.HumpKeepOwner then pcall(function() mR:SetNetworkOwner(LP) end) end
                    if Cfg.Troll.HumpUsePlatform then
                        if not mH.PlatformStand then mH.PlatformStand = true end
                    else
                        if mH.PlatformStand and not Cfg.Orbit.Enabled then mH.PlatformStand = false end
                    end
                    local sm_ = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
                    local am_ = Cfg.Troll.HumpAutoDetect and HUMP.ampMult or 1
                    local dm_ = Cfg.Troll.HumpAutoDetect and HUMP.distMult or 1
                    local useSpeed = math.clamp(Cfg.Troll.HumpSpeed * sm_, 0.5, 200)
                    local useAmp = math.clamp(Cfg.Troll.HumpAmp * am_, 0.1, 8)
                    local useDist = math.clamp(Cfg.Troll.HumpDist * dm_, 0.5, 8)
                    HUMP.phase = HUMP.phase + dt * useSpeed
                    if HUMP.phase > math.pi * 2000 then HUMP.phase = HUMP.phase % (math.pi * 2) end
                    local predictLead = math.clamp(tVel.Magnitude / 500, 0, 0.12)
                    local pos = tR.Position + tVel * predictLead
                    local look = tR.CFrame.LookVector
                    local thrust = math.sin(HUMP.phase) * useAmp
                    local behindPos = pos - look * (useDist - thrust)
                    local want = Vector3.new(behindPos.X, pos.Y, behindPos.Z)
                    local cf
                    if Cfg.Troll.HumpYawOnly then
                        local _, yaw = tR.CFrame:ToEulerAnglesYXZ()
                        cf = CFrame.new(want) * CFrame.Angles(0, yaw, 0)
                    else
                        cf = CFrame.lookAt(want, want + look, Vector3.new(0, 1, 0))
                    end
                    local posAlpha = 1 - math.exp(-25 * dt)
                    mR.CFrame = mR.CFrame:Lerp(cf, posAlpha)
                    mR.AssemblyAngularVelocity = Vector3.zero
                    if Cfg.Troll.HumpVelMatch then mR.AssemblyLinearVelocity = tVel
                    else mR.AssemblyLinearVelocity = Vector3.zero end
                    TS.humpWasActive = true
                end
            else
                if TS.humpWasActive then
                    local h = hum()
                    if h then
                        h.PlatformStand = false
                        h.AutoRotate = true
                        pcall(function() h:ChangeState(Enum.HumanoidStateType.GettingUp) end)
                    end
                    TS.humpWasActive = false
                end
                HUMP.awaitingRespawn = false
                HUMP.fallHold = 0
            end
        elseif TS.humpWasActive then
            local h = hum()
            if h then
                h.PlatformStand = false
                h.AutoRotate = true
                pcall(function() h:ChangeState(Enum.HumanoidStateType.GettingUp) end)
            end
            TS.humpWasActive = false
            HUMP.phase = 0
            HUMP.smoothVel = 0
            HUMP.smoothAir = 0
            HUMP.awaitingRespawn = false
            HUMP.fallHold = 0
            HR.fallingUnder = false
            HUMP.anchorY = nil
            HUMP.lastGoodY = nil
            HUMP.oldRootPart = nil
        end
        pcall(refreshAD)
    end)
end)

--==================== ANIMATION LOOP ====================
RS.RenderStepped:Connect(function(dt)
    if Cfg.UI.Ambient then
        for _, p in ipairs(ambientParts) do
            local inst = p.inst
            if inst and inst.Parent then
                local pos = inst.Position
                local nx = pos.X.Scale + p.vx * dt
                local ny = pos.Y.Scale + p.vy * dt
                if nx < 0 then nx = 1 end
                if nx > 1 then nx = 0 end
                if ny < 0 then ny = 1 end
                if ny > 1 then ny = 0 end
                local wob = math.sin(tick() * 0.5 + p.phase) * 0.0005
                inst.Position = UDim2.fromScale(nx + wob, ny + wob)
                inst.BackgroundTransparency = 0.55 + math.sin(tick() + p.phase) * 0.15
            end
        end
    end
end)

--==================== VERIFICATION LOOP ====================
task.spawn(function()
    local rePrompting = false
    local counter = 0
    local function forceRePrompt(reason, kick)
        if rePrompting then return end
        rePrompting = true
        clearVerifiedData()
        notify("Verification lost", reason or "Re-verify to continue.", Theme.danger, 8)
        if kick then
            task.delay(2, function()
                pcall(function()
                    LP:Kick("You deauthorized the REAPER app. Rejoin to re-verify.")
                end)
            end)
        end
        task.spawn(function()
            local user = showKeyPrompt()
            if user then
                MY_USER = user
                MY_USER.country = "Unknown"
                MY_USER.countryCode = ""
                MY_USER.connectedAt = tick()
                MY_USER.userId = LP.UserId
                SESSION_KEY = user.key
                DISCORD_USERNAME = user.discordName
                DISCORD_ID = user.discordId
                saveVerifiedData({
                    key = user.key, robloxId = tostring(LP.UserId),
                    discordUsername = user.discordName, discordId = user.discordId, savedAt = os.time(),
                })
                showVerifiedScreen(user)
            end
            rePrompting = false
        end)
    end
    while gui and gui.Parent do
        task.wait(60)
        counter = counter + 1
        if not SESSION_KEY or rePrompting then continue end
        if counter % 5 == 0 then
            local tokenResp = postJSON("/check-token", {robloxId = tostring(LP.UserId), key = SESSION_KEY})
            if tokenResp and tokenResp.authorized == false then
                forceRePrompt("You removed the app - re-verify.", true)
                continue
            end
        end
        local resp = postJSON("/check", {robloxId = tostring(LP.UserId), key = SESSION_KEY})
        if resp and not resp.valid then
            forceRePrompt("You left the Discord - re-verify.")
        end
    end
end)

--==================== ANNOUNCEMENT POLLER ====================
task.spawn(function()
    local lastAnnId = 0
    while gui and gui.Parent do
        task.wait(6)
        local ok, body = httpGet(KEY_API .. "/announce/fetch?since=" .. lastAnnId .. "&limit=20")
        if ok and body then
            local okD, data = pcall(function() return HttpService:JSONDecode(body) end)
            if okD and type(data) == "table" and data.announcements then
                for _, m in ipairs(data.announcements) do
                    if m.id and m.id > lastAnnId then lastAnnId = m.id end
                    if tostring(m.userId) ~= tostring(LP.UserId) then
                        showAnnouncement(m)
                    end
                end
            end
        end
    end
end)

--==================== SAVE ON CLOSE ====================
pcall(function()
    game:BindToClose(function()
        if autoloadName then pcall(saveLoadout, autoloadName, true) end
        pcall(function() orbitCircle:Destroy() end)
        pcall(function() orbitCircleLocked:Destroy() end)
    end)
end)
LP.OnTeleport:Connect(function()
    if autoloadName then pcall(saveLoadout, autoloadName, true) end
end)

print("[REAPER] loaded - place " .. tostring(game.PlaceId))
