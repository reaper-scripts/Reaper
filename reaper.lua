-- REAPER — universal cheat suite. @d9vq on discord.
local RS0 = game:GetService("RunService")

--==================== OPTIONAL SERVER RELAY ====================
if RS0:IsServer() then
    local Players = game:GetService("Players")
    local RS = game:GetService("ReplicatedStorage")
    local remote = RS:FindFirstChild("ReaperComm")
    if not remote then
        remote = Instance.new("RemoteEvent")
        remote.Name = "ReaperComm"
        remote.Parent = RS
    end
    local users = {}
    local function list()
        local t = {}
        for p in pairs(users) do if p.Parent then t[#t+1] = p.Name end end
        table.sort(t); return t
    end
    local function bcast(ch, ...)
        local a = {...}
        local n = select("#", ...)
        for p in pairs(users) do
            if p.Parent then pcall(function() remote:FireClient(p, ch, table.unpack(a, 1, n)) end) end
        end
    end
    remote.OnServerEvent:Connect(function(plr, ch)
        if not plr or not plr.Parent then return end
        if ch == "register" then users[plr] = {lastSeen = tick()}; bcast("userCount", #list(), list())
        elseif ch == "heartbeat" then if users[plr] then users[plr].lastSeen = tick() end end
    end)
    Players.PlayerRemoving:Connect(function(p) users[p] = nil; bcast("userCount", #list(), list()) end)
    task.spawn(function()
        while true do
            task.wait(5)
            local now = tick()
            for p, d in pairs(users) do
                if now - d.lastSeen > 30 or not p.Parent then users[p] = nil end
            end
        end
    end)
    print("[REAPER SERVER] optional relay up")
    return
end

--==================== CLIENT ====================
if _G.__REAPER_ACTIVE then
    pcall(function()
        local pg = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
        if pg then
            for _, c in ipairs(pg:GetChildren()) do
                if c.Name:match("^Reaper") then c:Destroy() end
            end
        end
    end)
    task.wait(0.25)
end
_G.__REAPER_ACTIVE = true

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")
local Tween = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local Teleport = game:GetService("TeleportService")
local VirtualUser = game:GetService("VirtualUser")
local RS2 = game:GetService("ReplicatedStorage")
local PhysicsService = game:GetService("PhysicsService")
local TextService = game:GetService("TextService")
local HttpService = game:GetService("HttpService")
local LP = Players.LocalPlayer
local Cam = workspace.CurrentCamera

--==================== FILE IO ====================
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
        if ok and type(g) == "table" then sources[#sources+1] = {g, "getgenv()"} end
    end
    sources[#sources+1] = {_G, "_G"}
    if shared then sources[#sources+1] = {shared, "shared"} end
    for _, s in ipairs(sources) do
        local w, r, i = check(s[1])
        if w then
            IO.write, IO.read, IO.isfile = w, r, i
            IO.has, IO.reason = true, s[2]
            break
        end
    end
end
print("[REAPER] IO: " .. tostring(IO.has) .. " (" .. IO.reason .. ")")

--==================== HTTP ====================
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
    if not req then return false, "no http api available" end
    local ok, res = pcall(req, {
        Url = url, Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = body,
    })
    if not ok then return false, "request failed: " .. tostring(res) end
    local status, respBody
    if type(res) == "table" then
        status = res.StatusCode or res.Status or res.status
        respBody = res.Body or res.body or res.Data
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
    local respBody = type(res) == "table" and (res.Body or res.body or res.Data) or res
    local okD, decoded = pcall(function() return HttpService:JSONDecode(respBody) end)
    if okD then return decoded end
    return nil, "bad response"
end

function parseErrorReason(res)
    local r = tostring(res)
    local jsonPart = r:match("({.*})")
    if jsonPart then
        local ok, d = pcall(function() return HttpService:JSONDecode(jsonPart) end)
        if ok and type(d) == "table" then
            if d.error then
                if d.reason then return tostring(d.error) .. " · " .. tostring(d.reason) end
                local expiry = d["until"]
                if expiry then return tostring(d.error) .. " · until " .. tostring(expiry) end
                return tostring(d.error)
            end
        end
    end
    return r
end

--==================== OWNER / MOD ====================
MY_USER = nil
RemoteRanks = {}
BADGE_STYLE = {
    owner = {label = "OWNER", emoji = "👑", color = Color3.fromRGB(200, 120, 255)},
    mod   = {label = "MOD",   emoji = "🛡️", color = Color3.fromRGB(160, 220, 255)},
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

--==================== COUNTRY / AVATAR ====================
function flagEmoji(code)
    if not code or #code ~= 2 then return "🌍" end
    code = code:upper()
    local a, b = code:byte(1) - 65, code:byte(2) - 65
    if a < 0 or a > 25 or b < 0 or b > 25 then return "🌍" end
    return utf8.char(0x1F1E6 + a) .. utf8.char(0x1F1E6 + b)
end
function fetchCountry(cb)
    task.spawn(function()
        local ok, body = httpGet("http://ip-api.com/json/?fields=status,country,countryCode")
        if ok and body then
            local okD, d = pcall(function() return HttpService:JSONDecode(body) end)
            if okD and type(d) == "table" and d.country then cb(d.country, d.countryCode or ""); return end
        end
        ok, body = httpGet("https://ipapi.co/json/")
        if ok and body then
            local okD, d = pcall(function() return HttpService:JSONDecode(body) end)
            if okD and type(d) == "table" and d.country_name then cb(d.country_name, d.country_code or ""); return end
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
        chatAvatarCache[url] = false; return nil
    end
    local fname = "Reaper_av_" .. strHash(url) .. ".png"
    local ok, exists = pcall(IO.isfile, fname)
    if not ok or not exists then
        local req = (syn and syn.request) or (http and http.request) or http_request or request
        if not req then chatAvatarCache[url] = false; return nil end
        local ok2, res = pcall(req, {Url = url, Method = "GET"})
        if not ok2 or type(res) ~= "table" or not res.Body then
            chatAvatarCache[url] = false; return nil
        end
        if not pcall(IO.write, fname, res.Body) then
            chatAvatarCache[url] = false; return nil
        end
    end
    local ok3, asset = pcall(getcustomasset, fname)
    if ok3 and asset then chatAvatarCache[url] = asset; return asset end
    chatAvatarCache[url] = false
    return nil
end

--==================== THEME ====================
Theme = {
    bg        = Color3.fromRGB(10, 10, 12),
    bgDeep    = Color3.fromRGB(0, 0, 0),
    panel     = Color3.fromRGB(18, 18, 22),
    panel2    = Color3.fromRGB(24, 24, 30),
    panel3    = Color3.fromRGB(35, 35, 45),
    stroke    = Color3.fromRGB(255, 255, 255),
    strokeSoft= Color3.fromRGB(60, 60, 70),
    accent    = Color3.fromRGB(255, 255, 255),
    accent2   = Color3.fromRGB(220, 220, 225),
    accent3   = Color3.fromRGB(150, 150, 160),
    text      = Color3.fromRGB(255, 255, 255),
    muted     = Color3.fromRGB(140, 140, 150),
    success   = Color3.fromRGB(80, 255, 120),
    danger    = Color3.fromRGB(255, 80, 80),
    gold      = Color3.fromRGB(255, 200, 60),
    neon      = Color3.fromRGB(255, 255, 255),
    neonDark  = Color3.fromRGB(80, 80, 90),
    toggleOn  = Color3.fromRGB(255, 255, 255),
    toggleOff = Color3.fromRGB(45, 45, 50),
    ticker    = "REAPER universal · @d9vq on discord!",
    tickerColor  = Color3.fromRGB(255, 255, 255),
    tickerAccent = Color3.fromRGB(200, 200, 200),
    sakura = {active = false},
    snow   = {active = true}
}

local WINTER = {
    bg = Color3.fromRGB(10, 10, 12), panel = Color3.fromRGB(18, 18, 22),
    panel2 = Color3.fromRGB(24, 24, 30), panel3 = Color3.fromRGB(35, 35, 45),
    stroke = Color3.fromRGB(255, 255, 255), strokeSoft = Color3.fromRGB(60, 60, 70),
    accent = Color3.fromRGB(255, 255, 255), accent2 = Color3.fromRGB(220, 220, 225),
    accent3 = Color3.fromRGB(150, 150, 160), text = Color3.fromRGB(255, 255, 255),
    muted = Color3.fromRGB(140, 140, 150),
    neon = Color3.fromRGB(255, 255, 255), neonDark = Color3.fromRGB(80, 80, 90),
    toggleOn = Color3.fromRGB(255, 255, 255), toggleOff = Color3.fromRGB(45, 45, 50),
    tickerColor = Color3.fromRGB(255, 255, 255), tickerAccent = Color3.fromRGB(200, 200, 200),
}
local SAKURA = {
    bg = Color3.fromRGB(18, 5, 15), panel = Color3.fromRGB(28, 10, 25),
    panel2 = Color3.fromRGB(40, 15, 35), panel3 = Color3.fromRGB(60, 25, 50),
    stroke = Color3.fromRGB(255, 120, 180), strokeSoft = Color3.fromRGB(150, 70, 100),
    accent = Color3.fromRGB(255, 120, 180), accent2 = Color3.fromRGB(255, 180, 210),
    accent3 = Color3.fromRGB(230, 90, 150), text = Color3.fromRGB(255, 240, 250),
    muted = Color3.fromRGB(200, 140, 180),
    neon = Color3.fromRGB(255, 120, 180), neonDark = Color3.fromRGB(100, 30, 60),
    toggleOn = Color3.fromRGB(255, 120, 180), toggleOff = Color3.fromRGB(50, 25, 40),
    tickerColor = Color3.fromRGB(255, 150, 200), tickerAccent = Color3.fromRGB(255, 200, 220),
}

function Theme.setPalette(which)
    if which == "Sakura" then
        for k, v in pairs(SAKURA) do Theme[k] = v end
        Theme.sakura.active = true
        Theme.snow.active = false
    else
        for k, v in pairs(WINTER) do Theme[k] = v end
        Theme.sakura.active = false
        Theme.snow.active = true
    end
end

ESPColours = {
    ally = Color3.fromRGB(90, 160, 255), enemy = Color3.fromRGB(255, 80, 110),
    police = Color3.fromRGB(90, 160, 255), criminal = Color3.fromRGB(230, 46, 46),
    prisoner = Color3.fromRGB(255, 156, 62), sheriff = Color3.fromRGB(90, 160, 255),
    murderer = Color3.fromRGB(230, 46, 46), innocent = Color3.fromRGB(96, 226, 126),
    united = Color3.fromRGB(56, 138, 255), iron = Color3.fromRGB(230, 46, 46),
}

--==================== STATE ====================
TS = {target = nil, hovered = nil, humpWasActive = false, lastSpam = 0, lockedTarget = nil}
HR = {speed = 0, smoothSpeed = 0, tier = "STILL", airborne = false, airTimer = 0,
      teleporting = false, autoMode = "Hybrid", fallingUnder = false,
      lastGood = nil, respawnPending = false}
HUMP = {
    phase = 0, smoothVel = 0, smoothAir = 0, lastTier = "STILL", lockTimer = 0,
    speedMult = 1.0, ampMult = 1.0, distMult = 1.0,
    fallHold = 0, lastGoodCF = nil, awaitingRespawn = false,
    lastGoodY = nil, anchorY = nil, oldRootPart = nil, initialAnchor = nil,
}
ORBIT = {angle = 0, shootCD = 0, wasActive = false}
RA = {keys = {teleport = nil, spectate = nil, hump = nil}, spectateTarget = nil, spectateZoom = 1}
PREFERRED_KEYS = {
    Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three,
    Enum.KeyCode.Four, Enum.KeyCode.Five, Enum.KeyCode.Six,
    Enum.KeyCode.Q, Enum.KeyCode.E, Enum.KeyCode.R,
    Enum.KeyCode.F, Enum.KeyCode.G, Enum.KeyCode.V,
}

--==================== CHAT ====================
Chat = {messages = {}, listeners = {}, max = 400}
chatSeenIds = {}
function addChat(sender, text, isLocal, col, avatar, discordName, country, countryCode, userId, msgId, placeId, timeMs, discordId)
    if msgId then
        if chatSeenIds[msgId] then return end
        chatSeenIds[msgId] = true
    end
    local e = {
        sender = sender or "?", text = tostring(text or ""),
        isLocal = isLocal and true or false,
        col = col or Color3.fromRGB(148, 204, 255),
        time = timeMs and (timeMs / 1000) or tick(),
        avatar = avatar, discordName = discordName,
        country = country, countryCode = countryCode, userId = userId,
        msgId = msgId, placeId = placeId, discordId = discordId,
    }
    Chat.messages[#Chat.messages+1] = e
    if #Chat.messages > Chat.max then table.remove(Chat.messages, 1) end
    for _, fn in ipairs(Chat.listeners) do pcall(fn, e) end
end

function sendChat(text)
    text = tostring(text or ""):gsub("^%s+",""):gsub("%s+$","")
    if text == "" then return false end
    if #text > 200 then text = text:sub(1,200) end
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

--==================== CONFIG ====================
Cfg = {
    Aimbot = {Enabled = false, Key = Enum.UserInputType.MouseButton2, ToggleMode = false,
        FOV = 180, Smoothness = 8, Strength = 6, TargetPart = "Head",
        TeamCheck = false, VisibleOnly = false, ShowCircle = true, Humanize = true, MaxDist = 1000,
        LockTarget = true, PredictAim = true, PredictAmount = 0.06,
        MagicBullet = false, MagicBulletWalls = true,
        PCPTeamOnly = true},
    Orbit = {Enabled = false, Radius = 8, Speed = 12, Height = 2,
        AutoShoot = true, AutoAim = true, NoClip = true},
    TapBinds = {teleport = nil, hump = nil, orbit = nil, spectate = nil},
    Trigger = {Enabled = false, Key = Enum.UserInputType.MouseButton1,
        Radius = 20, Delay = 0.05, TeamCheck = true},
    Visuals = {Enabled = false, NameTags = true, Distance = true, ShowRole = true,
        Mode = "Team", Fill = 0.55, RainbowSpeed = 0.5,
        NoFog = false, InfZoom = false, FOVMin = 0.5, FOVMax = 120},
    Movement = {Noclip = false, SpeedEnabled = false, Speed = 32,
        JumpEnabled = false, JumpPower = 80, InfiniteJump = false,
        Fly = false, FlySpeed = 60, FlySmooth = 12, FlyBoost = 2.5,
        GodMode = false, Freecam = false, FreecamSpeed = 50, FreecamSens = 1,
        Sprint = false, SprintSpeed = 60, Bunnyhop = false,
        Spinbot = false, AntiFling = false, AntiAFK = false},
    World = {Fullbright = false, TimeEnabled = false, Time = 14,
        GravityEnabled = false, Gravity = 196.2,
        RemoveBlur = false, FOVEnabled = false, FOV = 70},
    Utility = {FlingPower = 60000, FlingDur = 4,
        AutoClicker = false, AutoClickDelay = 0.05,
        AutoRespawn = false, ChatSpam = false, ChatSpamMsg = "REAPER",
        AutoSheriff = false, AutoSheriffRange = 120},
    Troll = {FollowTarget = false, FollowSpeed = 55,
        Hump = false, HumpSpeed = 8, HumpAmp = 1.5, HumpDist = 1.6,
        HumpYawOnly = false, HumpKeepOwner = true, HumpUsePlatform = false,
        HumpOverrideFly = true, HumpVelMatch = true, HumpAutoDetect = true,
        HumpFallProtect = true, TapTarget = false, TapRadius = 30},
    UI = {MenuKey = Enum.KeyCode.X, HUDKey = Enum.KeyCode.H, HUD = true, ADKey = Enum.KeyCode.J, AD = true,
        MenuOpacity = 0, MenuBlur = true, AnimatedOpen = true,
        MenuResizable = true, MinW = 480, MinH = 380,
        HUDMovable = true, HUDResizable = true, ADMovable = true, ADResizable = true,
        Juicy = true, Notifs = true, Ambient = true, ShimmerHeaders = true, BorderGlow = true,
        Crosshair = true, CrosshairSize = 26, CrosshairThick = 2,
        CrosshairPulse = true, HideCrossOnMenu = true,
        ReticleRings = true, ReticleLine = true, ReticleHP = true,
        ReticleMode = "Auto", ReticleR = 255, ReticleG = 255, ReticleB = 255},
    Binds = {},
}

--==================== HELPERS ====================
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
function tText(i) i:SetAttribute("T_Text", true); return i end
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
    for p in path:gmatch("[^%.]+") do parts[#parts+1] = p end
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

--==================== SAVE SYSTEM ====================
function saveFile() return "Reaper_" .. tostring(game.PlaceId) .. ".json" end
function autoloadFile() return "Reaper_auto_" .. tostring(game.PlaceId) .. ".txt" end
function globalAutoloadFile() return "Reaper_global_auto.txt" end

saves = _G.__ReaperSaves or {}
_G.__ReaperSaves = saves
autoloadName = _G.__ReaperAutoload or nil

local function encodeVal(v)
    local t = typeof(v)
    if t == "Color3" then return {__t = "Color3", R = v.R, G = v.G, B = v.B} end
    if t == "EnumItem" then return {__t = "Enum", s = tostring(v)} end
    if t == "Vector3" then return {__t = "Vector3", X = v.X, Y = v.Y, Z = v.Z} end
    if t == "Vector2" then return {__t = "Vector2", X = v.X, Y = v.Y} end
    if t == "number" then
        if v ~= v then return {__t = "Num", v = "nan"} end
        if v == math.huge then return {__t = "Num", v = "inf"} end
        if v == -math.huge then return {__t = "Num", v = "-inf"} end
        return v
    end
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
            local a, b, c = s:match("^Enum%.([%w_]+)%.([%w_]+)$")
            if a and b then
                local ok, e = pcall(function() return Enum[a][b] end)
                if ok then return e end
            end
        end
        return nil
    end
    if t == "Vector3" then return Vector3.new(v.X or 0, v.Y or 0, v.Z or 0) end
    if t == "Vector2" then return Vector2.new(v.X or 0, v.Y or 0) end
    if t == "Num" then
        if v.v == "nan" then return 0 end
        if v.v == "inf" then return math.huge end
        if v.v == "-inf" then return -math.huge end
        return tonumber(v.v) or 0
    end
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
end

function listLoadouts()
    saveTable()
    local out = {}
    for name, data in pairs(saves[game.PlaceId] or {}) do
        if type(data) == "table" then out[#out+1] = name end
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
        local ok3, e2 = pcall(IO.isfile, autoloadFile())
        if ok3 and e2 then
            local ok4, c2 = pcall(IO.read, autoloadFile())
            if ok4 and c2 and c2 ~= "" then autoloadName = c2:gsub("%s+$", "") end
        end
    end)
end--==================== VERIFICATION ====================
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
    local function L(s) diag[#diag+1] = tostring(s) end

    local function interpret(d)
        if type(d) ~= "table" then return nil, "response not a table" end
        if d.inGuild == nil and d.error then
            return nil, "worker: " .. tostring(d.reason or "unknown")
        end
        if type(d.error) == "string" then
            return nil, "server error: " .. d.error
        end
        local hits = {
            {d.inGuild, "inGuild"}, {d.in_guild, "in_guild"},
            {d.ok, "ok"}, {d.isMember, "isMember"},
            {d.is_member, "is_member"}, {d.member, "member"},
            {d.in_server, "in_server"},
        }
        for _, h in ipairs(hits) do
            if type(h[1]) == "boolean" then return h[1], "field:" .. h[2] end
        end
        if d.status == "ok" or d.status == "in_guild" or d.status == "member" then
            return true, "status:" .. tostring(d.status)
        end
        if d.status == "not_in_guild" or d.status == "no_member" then
            return false, "status:" .. tostring(d.status)
        end
        local okE, enc = pcall(function() return HttpService:JSONEncode(d) end)
        return nil, "unknown shape: " .. (okE and tostring(enc):sub(1, 200) or "?")
    end

    for _, ep in ipairs(GUILD_CHECK_ENDPOINTS) do
        local url = KEY_API .. ep .. "?username=" .. HttpService:UrlEncode(username) ..
                    "&robloxId=" .. tostring(LP.UserId)
        L("GET " .. ep)
        local ok, body = httpGet(url)
        if ok and body and body ~= "" then
            local okD, d = pcall(function() return HttpService:JSONDecode(body) end)
            if okD then
                local val, reason = interpret(d)
                if val ~= nil then return val, d end
                L("  ✗ " .. tostring(reason))
            else
                L("  ✗ bad JSON")
            end
        else
            L("  ✗ " .. tostring(body))
        end

        L("POST " .. ep)
        local pb = HttpService:JSONEncode({username = username, robloxId = tostring(LP.UserId)})
        local ok2, res = httpPost(KEY_API .. ep, pb)
        if ok2 and type(res) == "table" then
            local rb = res.Body or res.body
            if rb then
                local okD, d = pcall(function() return HttpService:JSONDecode(rb) end)
                if okD then
                    local val, reason = interpret(d)
                    if val ~= nil then return val, d end
                    L("  ✗ " .. tostring(reason))
                else
                    L("  ✗ bad JSON")
                end
            end
        else
            L("  ✗ " .. tostring(res))
        end
    end

    return nil, {err = "all endpoints failed", debug = diag}
end

--==================== WELCOME SCREEN ====================
local function showVerifiedScreen(user)
    local pg = LP:WaitForChild("PlayerGui")
    local existing = pg:FindFirstChild("ReaperVerified")
    if existing then existing:Destroy() end

    local sg = new("ScreenGui", {Name = "ReaperVerified", ResetOnSpawn = false,
        IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, pg)

    local backdrop = new("Frame", {Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 0.15,
        BorderSizePixel = 0, ZIndex = 1}, sg)

    local cardW, cardH = 430, 400
    local card = new("Frame", {Size = UDim2.fromOffset(cardW, cardH),
        Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 + 40),
        BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, sg)
    corner(card, 22)
    grad(card, Color3.fromRGB(20, 20, 25), Color3.fromRGB(5, 5, 8), 90)
    dropShadow(card, 22, 18, 0.65)

    local borderGlow = new("Frame", {Size = UDim2.new(1, 16, 1, 16),
        Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,
        BorderSizePixel = 0, ZIndex = 9}, card)
    corner(borderGlow, 26)

    local avatarSize = 92
    local avatarWrap = new("Frame", {Size = UDim2.fromOffset(avatarSize, avatarSize),
        Position = UDim2.new(0.5, 0, 0, 32), AnchorPoint = Vector2.new(0.5, 0),
        BackgroundTransparency = 1, ZIndex = 13}, card)

    local avatarHolder = new("Frame", {Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = Theme.panel2, BorderSizePixel = 0,
        ZIndex = 14, ClipsDescendants = true}, avatarWrap)
    corner(avatarHolder, avatarSize / 2)

    local loaded = false
    if user.avatar and user.avatar ~= "" then
        local assetId = downloadAvatar(user.avatar)
        if assetId then
            local img = new("ImageLabel", {Size = UDim2.fromScale(1, 1),
                BackgroundTransparency = 1, Image = assetId,
                ScaleType = Enum.ScaleType.Crop, ZIndex = 15}, avatarHolder)
            corner(img, avatarSize / 2)
            loaded = true
        end
    end
    if not loaded then
        local fb = new("Frame", {Size = UDim2.fromScale(1, 1),
            BackgroundColor3 = Theme.accent, BorderSizePixel = 0, ZIndex = 15}, avatarHolder)
        corner(fb, avatarSize / 2)
        grad(fb, Theme.accent3, Theme.neon, 45)
        new("TextLabel", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
            Text = (user.displayName or user.username or "?"):sub(1, 1):upper(),
            Font = Enum.Font.GothamBlack, TextSize = 42,
            TextColor3 = Color3.new(1, 1, 1), ZIndex = 16}, fb)
    end

    local avatarBorder = new("Frame", {Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1, ZIndex = 16}, avatarHolder)
    corner(avatarBorder, avatarSize / 2)
    stroke(avatarBorder, Theme.neon, 2.6, 0.1)

    local nameY = 32 + avatarSize + 14
    new("TextLabel", {Size = UDim2.new(1, -40, 0, 26),
        Position = UDim2.fromOffset(20, nameY), BackgroundTransparency = 1,
        Text = user.displayName or user.username or "Verified",
        Font = Enum.Font.GothamBlack, TextSize = 18,
        TextColor3 = Theme.text, ZIndex = 12}, card)
    new("TextLabel", {Size = UDim2.new(1, -40, 0, 16),
        Position = UDim2.fromOffset(20, nameY + 26), BackgroundTransparency = 1,
        Text = "@" .. (user.username or "unknown") ..
               (user.discordName and ("  ·  discord @" .. user.discordName) or ""),
        Font = Enum.Font.Gotham, TextSize = 12,
        TextColor3 = Theme.muted, ZIndex = 12}, card)

    local pillW = 160
    local pill = new("Frame", {Size = UDim2.fromOffset(pillW, 22),
        Position = UDim2.new(0.5, -pillW/2, 0, nameY + 48),
        BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.8,
        BorderSizePixel = 0, ZIndex = 12}, card)
    corner(pill, 11)
    tStroke(stroke(pill, Theme.neon, 1.2, 0.15))
    local pillLbl = new("TextLabel", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
        Text = "● MEMBER VERIFIED", Font = Enum.Font.GothamBold, TextSize = 10,
        TextColor3 = Theme.neon, ZIndex = 13}, pill)
    if user.rank and BADGE_STYLE[user.rank] then
        local b = BADGE_STYLE[user.rank]
        pill.BackgroundColor3 = b.color
        pillLbl.Text = b.emoji .. " " .. b.label
        pillLbl.TextColor3 = b.color
    end

    local btnY = nameY + 82
    local loadBtn = new("TextButton", {Size = UDim2.new(1, -60, 0, 48),
        Position = UDim2.fromOffset(30, btnY), BackgroundColor3 = Theme.neon,
        Text = "LOAD SCRIPT", Font = Enum.Font.GothamBlack, TextSize = 15,
        TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
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
        loadBtn.Text = "LOADING…"
        loadBtn.BackgroundColor3 = Theme.success
        task.wait(0.3)
        Tween:Create(card, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
            {Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 - 40), BackgroundTransparency = 1}):Play()
        task.wait(0.4)
        sg:Destroy()
    end)

    task.delay(60, function()
        if not done and sg.Parent then done = true; sg:Destroy() end
    end)

    while not done do task.wait(0.2) end
    return true
end

--==================== KEY PROMPT ====================
local function showKeyPrompt()
    local pg = LP:WaitForChild("PlayerGui")
    local existing = pg:FindFirstChild("ReaperKeyPrompt")
    if existing then existing:Destroy() end

    local promptGui = new("ScreenGui", {Name = "ReaperKeyPrompt", ResetOnSpawn = false,
        IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, pg)

    pcall(function()
        local b = new("BlurEffect", {Size = 20, Parent = Lighting})
        b.Name = "ReaperPromptBlur"
        task.spawn(function() while promptGui.Parent do task.wait(0.2) end; b:Destroy() end)
    end)

    local backdrop = new("Frame", {Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 1,
        BorderSizePixel = 0, ZIndex = 1}, promptGui)
    Tween:Create(backdrop, TweenInfo.new(0.4), {BackgroundTransparency = 0.3}):Play()

    local cardW, cardH = 540, 660
    local card = new("Frame", {Size = UDim2.fromOffset(cardW, cardH),
        Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 + 20),
        BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, promptGui)
    corner(card, 22)
    grad(card, Color3.fromRGB(20, 20, 25), Color3.fromRGB(5, 5, 8), 90)
    dropShadow(card, 22, 22, 0.7)

    local borderGlow = new("Frame", {Size = UDim2.new(1, 16, 1, 16),
        Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,
        BorderSizePixel = 0, ZIndex = 9}, card)
    corner(borderGlow, 26)

    new("TextLabel", {Size = UDim2.new(1, 0, 0, 26),
        Position = UDim2.fromOffset(0, 20), BackgroundTransparency = 1,
        Text = "VERIFICATION", Font = Enum.Font.GothamBlack,
        TextSize = 21, TextColor3 = Theme.neon, ZIndex = 12}, card)
    new("TextLabel", {Size = UDim2.new(1, -40, 0, 16),
        Position = UDim2.fromOffset(20, 48), BackgroundTransparency = 1,
        Text = "Two quick steps — takes about a minute.",
        Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = Theme.muted, ZIndex = 12}, card)

    -- STEP 1
    local s1 = new("Frame", {Size = UDim2.new(1, -50, 0, 240),
        Position = UDim2.fromOffset(25, 76), BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, card)
    corner(s1, 12)
    local s1Stroke = stroke(s1, Theme.strokeSoft, 1.4, 0.4)
    grad(s1, Color3.fromRGB(30, 30, 35), Theme.panel, 90)

    local s1Tag = new("Frame", {Size = UDim2.fromOffset(30, 30),
        Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,
        BorderSizePixel = 0, ZIndex = 13}, s1)
    corner(s1Tag, 15)
    local s1TagLbl = new("TextLabel", {Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1, Text = "1", Font = Enum.Font.GothamBlack,
        TextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, s1Tag)

    new("TextLabel", {Size = UDim2.new(1, -58, 0, 20),
        Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
        Text = "JOIN DISCORD + VERIFY USERNAME", Font = Enum.Font.GothamBlack,
        TextSize = 13, TextColor3 = Theme.text,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, s1)

    new("TextLabel", {Size = UDim2.new(1, -30, 0, 46),
        Position = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,
        Text = "HOW TO:\n  1.  Copy the invite below and join the server\n  2.  Type your Discord username below\n  3.  Click VERIFY — we check the guild membership automatically",
        Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,
        TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, s1)

    local invBtn = new("TextButton", {Size = UDim2.new(1, -32, 0, 30),
        Position = UDim2.fromOffset(16, 98), BackgroundColor3 = Theme.neon,
        Text = "🔗  COPY INVITE LINK", Font = Enum.Font.GothamBold, TextSize = 11,
        TextColor3 = Color3.new(1,1,1), AutoButtonColor = false,
        BorderSizePixel = 0, ZIndex = 13}, s1)
    corner(invBtn, 8)
    grad(invBtn, Theme.neon, Theme.accent3, 0)

    local userInput = new("TextBox", {Size = UDim2.new(1, -130, 0, 30),
        Position = UDim2.fromOffset(16, 136), BackgroundColor3 = Theme.panel2,
        BorderSizePixel = 0, Text = "", PlaceholderText = "discord username…",
        PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
        TextColor3 = Theme.text, ClearTextOnFocus = false, ZIndex = 50}, s1)
    corner(userInput, 8)
    stroke(userInput, Theme.strokeSoft, 1.2)

    local verifyBtn = new("TextButton", {Size = UDim2.fromOffset(100, 30),
        Position = UDim2.new(1, -114, 0, 136), BackgroundColor3 = Theme.neon,
        Text = "VERIFY", Font = Enum.Font.GothamBold, TextSize = 11,
        TextColor3 = Color3.new(1,1,1), AutoButtonColor = false, ZIndex = 13}, s1)
    corner(verifyBtn, 8)
    grad(verifyBtn, Theme.neon, Theme.accent3, 0)

    local s1Status = new("TextLabel", {Size = UDim2.new(1, -32, 0, 56),
        Position = UDim2.fromOffset(16, 174), BackgroundTransparency = 1,
        Text = "", Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
        TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, s1)

    -- STEP 2
    local s2 = new("Frame", {Size = UDim2.new(1, -50, 0, 185),
        Position = UDim2.fromOffset(25, 326), BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, card)
    corner(s2, 12)
    local s2Stroke = stroke(s2, Theme.strokeSoft, 1.4, 0.4)
    grad(s2, Color3.fromRGB(30, 30, 35), Theme.panel, 90)

    local s2Tag = new("Frame", {Size = UDim2.fromOffset(30, 30),
        Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,
        BorderSizePixel = 0, ZIndex = 13}, s2)
    corner(s2Tag, 15)
    local s2TagLbl = new("TextLabel", {Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1, Text = "2", Font = Enum.Font.GothamBlack,
        TextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, s2Tag)

    new("TextLabel", {Size = UDim2.new(1, -58, 0, 20),
        Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
        Text = "AUTHORIZE THE APP", Font = Enum.Font.GothamBlack,
        TextSize = 13, TextColor3 = Theme.text,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, s2)

    new("TextLabel", {Size = UDim2.new(1, -30, 0, 60),
        Position = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,
        Text = "HOW TO:\n  1.  Click  COPY AUTH LINK  below\n  2.  Open the link → click Authorize\n  3.  Discord will confirm — this screen auto-closes",
        Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,
        TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, s2)

    local authBtn = new("TextButton", {Size = UDim2.new(1, -32, 0, 36),
        Position = UDim2.fromOffset(16, 122), BackgroundColor3 = Theme.neon,
        Text = "🔒  LOCKED — complete step 1 first", Font = Enum.Font.GothamBold, TextSize = 11,
        TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
        BorderSizePixel = 0, ZIndex = 13}, s2)
    corner(authBtn, 8)
    local authGrad = grad(authBtn, Color3.new(0.35, 0.35, 0.35), Color3.new(0.2, 0.2, 0.2), 0)
    authBtn.Active = false
    s2.BackgroundTransparency = 0.55
    s2Stroke.Transparency = 0.75

    local step1Passed = false
    local verifiedDiscordUsername = nil

    local function unlockStep2(username)
        step1Passed = true
        verifiedDiscordUsername = username
        s2.BackgroundTransparency = 0.15
        s2Stroke.Transparency = 0.4
        authBtn.Active = true
        authBtn.Text = "🔐  COPY AUTH LINK"
        authBtn.BackgroundColor3 = Theme.neon
        authGrad.Color = ColorSequence.new(Theme.neon, Theme.accent3)
    end

    local statusWrap = new("Frame", {Size = UDim2.new(1, -50, 0, 56),
        Position = UDim2.fromOffset(25, 521), BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 12}, card)
    corner(statusWrap, 10)
    local statusStroke = stroke(statusWrap, Theme.strokeSoft, 1, 0.5)
    local dot = new("Frame", {Size = UDim2.fromOffset(10, 10),
        Position = UDim2.fromOffset(14, 23), BackgroundColor3 = Theme.gold,
        BorderSizePixel = 0, ZIndex = 13}, statusWrap)
    corner(dot, 5)
    local statusLbl2 = new("TextLabel", {Size = UDim2.new(1, -40, 1, -10),
        Position = UDim2.fromOffset(32, 5), BackgroundTransparency = 1,
        Text = "Step 1: copy the invite, join Discord, then verify your username.",
        Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = Theme.gold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center,
        TextWrapped = true, ZIndex = 13}, statusWrap)
    local function setStatus(msg, col)
        statusLbl2.Text = msg
        statusLbl2.TextColor3 = col or Theme.gold
        dot.BackgroundColor3 = col or Theme.gold
        Tween:Create(statusStroke, TweenInfo.new(0.2), {Color = col or Theme.strokeSoft}):Play()
    end

    local progWrap = new("Frame", {Size = UDim2.new(1, -50, 0, 5),
        Position = UDim2.fromOffset(25, 585), BackgroundColor3 = Theme.panel2,
        BorderSizePixel = 0, ZIndex = 12}, card)
    corner(progWrap, 3)
    local progFill = new("Frame", {Size = UDim2.new(0, 0, 1, 0),
        BackgroundColor3 = Theme.success, BorderSizePixel = 0, ZIndex = 13}, progWrap)
    corner(progFill, 3)
    grad(progFill, Theme.neon, Theme.success, 0)

    local result = {done = false, user = nil}
    local sessionId = nil
    local polling = false

    invBtn.MouseButton1Click:Connect(function()
        copyToClipboard(DISCORD_INVITE)
        tryOpenBrowser(DISCORD_INVITE)
        invBtn.Text = "✓  COPIED — JOIN NOW"
        task.delay(2, function()
            if invBtn and invBtn.Parent then invBtn.Text = "🔗  COPY INVITE LINK" end
        end)
        Tween:Create(progFill, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
            {Size = UDim2.new(0.25, 0, 1, 0)}):Play()
        setStatus("Invite copied. Join the server, then type your username and click VERIFY.", Theme.accent2)
    end)

    verifyBtn.MouseButton1Click:Connect(function()
        if step1Passed then return end
        local uname = (userInput.Text or ""):gsub("^%s+", ""):gsub("%s+$", "")
        if uname == "" then
            s1Status.Text = "⚠ enter your Discord username first"
            s1Status.TextColor3 = Theme.danger
            return
        end
        verifyBtn.Text = "CHECKING…"
        verifyBtn.Active = false
        s1Status.Text = "contacting server…"
        s1Status.TextColor3 = Theme.muted
        task.spawn(function()
            local inGuild, info = checkGuildIn(uname)
            verifyBtn.Active = true
            if inGuild == true then
                verifyBtn.Text = "✓ VERIFIED"
                verifyBtn.BackgroundColor3 = Theme.success
                invBtn.Active = false
                userInput.Active = false
                s1Status.Text = "✓ Discord user @" .. uname .. " found in the server — step 2 unlocked"
                s1Status.TextColor3 = Theme.success
                s1Tag.BackgroundColor3 = Theme.success
                s1TagLbl.Text = "✓"
                Tween:Create(s1Stroke, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
                Tween:Create(progFill, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
                    {Size = UDim2.new(0.5, 0, 1, 0)}):Play()
                unlockStep2(uname)
                setStatus("✓ Step 1 done. Copy the auth link below and authorize the app.", Theme.accent2)
            elseif inGuild == false then
                verifyBtn.Text = "VERIFY"
                s1Status.Text = "✗ @" .. uname .. " not in the server — join first, then retry"
                s1Status.TextColor3 = Theme.danger
                setStatus("That Discord username isn't in the server yet. Copy the invite and join.", Theme.danger)
            else
                verifyBtn.Text = "VERIFY"
                local errMsg = (type(info) == "table" and info.err) or tostring(info)
                local diagLines = (type(info) == "table" and info.debug) and info.debug or {}
                local diagText = table.concat(diagLines, "\n")
                s1Status.Text = "⚠ " .. errMsg
                s1Status.TextColor3 = Theme.danger
                setStatus("Guild check failed. Click COPY DEBUG and send to staff.", Theme.danger)
                notify("Guild check failed", errMsg .. "\n\nClick COPY DEBUG and paste the text to staff.", Theme.danger, 30, diagText)
            end
        end)
    end)

    authBtn.MouseButton1Click:Connect(function()
        if not step1Passed then
            setStatus("Complete step 1 before authorizing.", Theme.danger)
            return
        end
        local newSid = "rpr_" .. tostring(LP.UserId) .. "_" ..
            tostring(math.random(100000, 999999)) .. "_" ..
            tostring(math.floor(tick() * 1000))
        local link = KEY_API .. "/oauth/start?session=" .. newSid ..
                     "&username=" .. HttpService:UrlEncode(verifiedDiscordUsername or "")
        copyToClipboard(link)
        tryOpenBrowser(link)
        authBtn.Text = "✓  COPIED — OPEN IN BROWSER"
        task.delay(2.5, function()
            if authBtn and authBtn.Parent then authBtn.Text = "🔐  COPY AUTH LINK" end
        end)
        setStatus("Auth link copied! Open it, authorize, then wait here.", Theme.accent2)
        sessionId = newSid
        if not polling then
            polling = true
            task.spawn(function()
                while polling and sessionId do
                    task.wait(2)
                    if not polling or not sessionId then break end
                    local resp = postJSON("/oauth/poll", {session = sessionId, robloxId = tostring(LP.UserId)})
                    if not resp then
                        setStatus("Network hiccup — retrying…", Theme.danger)
                    elseif resp.status == "ok" and resp.key then
                        SESSION_KEY = resp.key
                        DISCORD_USERNAME = resp.discordName or verifiedDiscordUsername
                        DISCORD_ID = resp.discordId
                        saveVerifiedData({
                            key = SESSION_KEY, robloxId = tostring(LP.UserId),
                            discordUsername = DISCORD_USERNAME, discordId = DISCORD_ID,
                            savedAt = os.time(),
                        })
                        s2Tag.BackgroundColor3 = Theme.success
                        s2TagLbl.Text = "✓"
                        Tween:Create(s2Stroke, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
                        authBtn.Text = "✓  VERIFIED"
                        authBtn.BackgroundColor3 = Theme.success
                        authGrad.Color = ColorSequence.new(Theme.success, Theme.accent)
                        setStatus("✓ Verified! Loading…", Theme.success)
                        Tween:Create(progFill, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {Size = UDim2.new(1, 0, 1, 0)}):Play()
                        polling = false
                        task.wait(0.8)
                        Tween:Create(card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 - 30), BackgroundTransparency = 1}):Play()
                        task.wait(0.35)
                        promptGui:Destroy()
                        result.done = true
                        result.user = {
                            key = resp.key, username = resp.username or "user",
                            displayName = resp.displayName or resp.username or "Verified",
                            avatar = resp.avatar or "", discordId = resp.discordId or "",
                            discordName = DISCORD_USERNAME or "", rank = resp.rank or nil,
                            badgeUrl = resp.badgeUrl or nil,
                        }
                        return
                    end
                end
            end)
        end
    end)

    card.Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 + 80)
    card.BackgroundTransparency = 1
    Tween:Create(card, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2), BackgroundTransparency = 0}):Play()

    while not result.done do task.wait(0.2) end
    return result.user
end

--==================== VERIFY SESSION ====================
local function verifySession()
    local function tryCheck(k)
        if not k then return nil end
        local resp = postJSON("/check", {robloxId = tostring(LP.UserId), key = k})
        if resp and resp.valid then
            local tokenResp = postJSON("/check-token", {robloxId = tostring(LP.UserId), key = k})
            if tokenResp and tokenResp.authorized == false then
                return nil, { reason = tokenResp.reason or "deauthorized" }
            end
            return {
                key = k, username = resp.username or "user",
                displayName = resp.displayName or resp.username or "Verified",
                avatar = resp.avatar or "", discordId = resp.discordId or DISCORD_ID or "",
                discordName = resp.discordName or DISCORD_USERNAME or "",
                rank = resp.rank or nil, badgeUrl = resp.badgeUrl or nil,
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

local verifiedUser, wasRestored = verifySession()
if not verifiedUser then
    warn("[REAPER] Key verification failed.")
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

--==================== UI HELPERS ====================
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

--==================== ESP COLOUR LOGIC ====================
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
    if t == "" and p.TeamColor then t = tostring(p.TeamColor):lower() end
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
    if t == "" and p.TeamColor then t = tostring(p.TeamColor):lower() end
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
            if n:find("gun") or n:find("revolver") or n:find("pistol") or n:find("sheriff") or n:find("handgun") then return "sheriff" end
            if n:find("knife") or n:find("dagger") or n:find("blade") or n:find("machete") or n:find("murder") then return "murderer" end
        end
    end
    return "innocent"
end
function espColour(p)
    if not p then return ESPColours.ally end
    local m = Cfg.Visuals.Mode or "Team"
    if m == "Rainbow" then return Color3.fromHSV(rainbowH or 0, 1, 1) end
    if m == "Team" then return isAlly(p) and ESPColours.ally or ESPColours.enemy end
    if m == "PCP" then
        local r = detectPCP(p)
        if r == "police" then return ESPColours.police end
        if r == "criminal" then return ESPColours.criminal end
        if r == "prisoner" then return ESPColours.prisoner end
        return isAlly(p) and ESPColours.ally or ESPColours.prisoner
    end
    if m == "Role" then
        local r = getRole(p)
        if r == "sheriff" then return ESPColours.sheriff end
        if r == "murderer" then return ESPColours.murderer end
        return ESPColours.innocent
    end
    if m == "DOW" then return isAlly(p) and ESPColours.united or ESPColours.iron end
    local dow = detectDOW(p)
    if dow == "united" then return ESPColours.united end
    if dow == "iron" then return ESPColours.iron end
    local pcp = detectPCP(p)
    if pcp == "police" then return ESPColours.police end
    if pcp == "criminal" then return ESPColours.criminal end
    if pcp == "prisoner" then return ESPColours.prisoner end
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
    if m == "DOW" then return isAlly(p) and "[UNITED FRONT]" or "[IRON LEGION]" end
    if m == "Rainbow" then return "" end
    local dow = detectDOW(p)
    if dow == "united" then return "[UNITED FRONT]" end
    if dow == "iron" then return "[IRON LEGION]" end
    local pcp = detectPCP(p)
    if pcp == "police" then return "[POLICE]" end
    if pcp == "criminal" then return "[CRIMINAL]" end
    if pcp == "prisoner" then return "[PRISONER]" end
    return isAlly(p) and "[TEAM]" or "[ENEMY]"
end
function reticleColour(p)
    local m = Cfg.UI.ReticleMode or "Auto"
    if m == "Custom" then return Color3.fromRGB(Cfg.UI.ReticleR, Cfg.UI.ReticleG, Cfg.UI.ReticleB) end
    if m == "Rainbow" then return Color3.fromHSV((tick() * 0.4) % 1, 1, 1) end
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
        if not b[k] then out[#out+1] = k; if #out >= n then break end end
    end
    return out
end

--==================== EFFECTS ====================
function ripple(parent, x, y, col, sz, dur)
    if not Cfg.UI.Juicy then return end
    local r = new("Frame", {Position=UDim2.fromOffset(x-sz/2, y-sz/2), Size=UDim2.fromOffset(sz,sz), BackgroundColor3=col or Theme.accent, BackgroundTransparency=0.4, BorderSizePixel=0, ZIndex=100}, parent)
    corner(r, sz); local s = stroke(r, col or Theme.accent, 2, 0.15)
    local t1 = Tween:Create(r, TweenInfo.new(dur or 0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size=UDim2.fromOffset(sz*2.6,sz*2.6), Position=UDim2.fromOffset(x-sz*1.3,y-sz*1.3), BackgroundTransparency=1})
    local t2 = Tween:Create(s, TweenInfo.new(dur or 0.4, Enum.EasingStyle.Quart), {Transparency=1, Thickness=1})
    t1:Play(); t2:Play(); t1.Completed:Connect(function() r:Destroy() end)
end
function pulse(inst, sc, dur)
    if not Cfg.UI.Juicy or not inst or not inst.Parent then return end
    local base = inst:GetAttribute("PulseBase"); if base == nil then base = inst.Size; inst:SetAttribute("PulseBase", base) end
    local s = sc or 1.06; local b = UDim2.new(base.X.Scale*s, base.X.Offset*s, base.Y.Scale*s, base.Y.Offset*s)
    inst.Size = b; task.delay(dur or 0.09, function() if inst and inst.Parent then Tween:Create(inst, TweenInfo.new(dur or 0.14, Enum.EasingStyle.Back), {Size=base}):Play() end end)
end
function flash(inst, col, dur)
    if not Cfg.UI.Juicy then return end
    local base = inst:GetAttribute("FlashBase"); if base == nil then base = inst.BackgroundColor3; inst:SetAttribute("FlashBase", base) end
    inst.BackgroundColor3 = col; task.delay(dur or 0.1, function() if inst and inst.Parent then Tween:Create(inst, TweenInfo.new(0.18), {BackgroundColor3=base}):Play() end end)
end
function glow(inst, col, dur)
    if not Cfg.UI.Juicy then return end
    local s = inst:FindFirstChildOfClass("UIStroke"); if not s then return end
    local t, th = s.Transparency, s.Thickness; s.Transparency, s.Thickness, s.Color = 0, th + 1.5, col or Theme.accent2
    Tween:Create(s, TweenInfo.new(dur or 0.35), {Transparency=t, Thickness=th}):Play()
end
function shine(inst, col, dur)
    local sh = new("Frame", {Size=UDim2.new(0.35,0,1,0), Position=UDim2.new(-0.4,0,0,0), BackgroundColor3=col or Color3.new(1,1,1), BackgroundTransparency=0.5, BorderSizePixel=0, ZIndex=(inst.ZIndex or 1)+5}, inst)
    corner(sh, 4); new("UIGradient", {Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1), NumberSequenceKeypoint.new(0.5,0.1), NumberSequenceKeypoint.new(1,1)}), Rotation=0}, sh)
    Tween:Create(sh, TweenInfo.new(dur or 0.6, Enum.EasingStyle.Quart), {Position=UDim2.new(1.2,0,0,0)}):Play()
    task.delay(dur or 0.6, function() if sh and sh.Parent then sh:Destroy() end end)
end
function hoverStripe(parent, col)
    local s = new("Frame", {Size=UDim2.new(0,3,0.6,0), Position=UDim2.new(0,0,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=col or Theme.neon, BackgroundTransparency=1, BorderSizePixel=0, ZIndex=38}, parent)
    corner(s, 2); parent.MouseEnter:Connect(function() Tween:Create(s, TweenInfo.new(0.15), {BackgroundTransparency=0}):Play() end)
    parent.MouseLeave:Connect(function() Tween:Create(s, TweenInfo.new(0.15), {BackgroundTransparency=1}):Play() end)
end

--==================== NOTIFS ====================
function initNotifs(pg)
    notifGui = new("ScreenGui", {Name="ReaperNotif", ResetOnSpawn=false, IgnoreGuiInset=true, ZIndexBehavior=Enum.ZIndexBehavior.Sibling, DisplayOrder=9996}, pg)
    notifStack = new("Frame", {Size=UDim2.new(0,320,1,-40), Position=UDim2.new(1,-330,0,20), BackgroundTransparency=1, ZIndex=1}, notifGui)
    new("UIListLayout", {Padding=UDim.new(0,8), SortOrder=Enum.SortOrder.LayoutOrder, HorizontalAlignment=Enum.HorizontalAlignment.Right, VerticalAlignment=Enum.VerticalAlignment.Top}, notifStack)
end
function notify(title, msg, col, dur, copyText)
    if not Cfg.UI.Notifs or not notifStack then return end
    col = col or Theme.neon
    local hasCopy = type(copyText) == "string" and copyText ~= ""
    local cardH = hasCopy and 86 or 68
    local card = new("Frame", {Size=UDim2.new(1,0,0,0), BackgroundColor3=Theme.panel, BackgroundTransparency=0.05, BorderSizePixel=0, ZIndex=2, ClipsDescendants=true}, notifStack)
    corner(card, 12); local st = stroke(card, col, 1.8, 0.1); grad(card, Theme.panel2, Theme.bg, 90)
    new("Frame", {Size=UDim2.new(0,3,1,-14), Position=UDim2.new(0,7,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=col, BorderSizePixel=0, ZIndex=3}, card)
    new("TextLabel", {Size=UDim2.new(1,-28,0,18), Position=UDim2.fromOffset(20,10), BackgroundTransparency=1, Text=title or "", Font=Enum.Font.GothamBlack, TextSize=12, TextColor3=col, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=3}, card)
    new("TextLabel", {Size=UDim2.new(1,-28,0,32), Position=UDim2.fromOffset(20,30), BackgroundTransparency=1, Text=msg or "", Font=Enum.Font.Gotham, TextSize=11, TextColor3=Theme.text, TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Top, TextWrapped=true, ZIndex=3}, card)
    if hasCopy then
        local copyBtn = new("TextButton", {Size=UDim2.new(1,-28,0,20), Position=UDim2.fromOffset(20,cardH-26), BackgroundColor3=Theme.panel2, Text="📋  COPY ERROR", Font=Enum.Font.GothamBold, TextSize=10, TextColor3=Theme.accent2, AutoButtonColor=false, ZIndex=4}, card)
        corner(copyBtn, 6); stroke(copyBtn, col, 1, 0.3)
        copyBtn.MouseButton1Click:Connect(function() if type(setclipboard) == "function" then pcall(setclipboard, copyText); copyBtn.Text = "✓ COPIED"; task.delay(1, function() if copyBtn and copyBtn.Parent then copyBtn.Text = "📋  COPY ERROR" end end) end end)
    end
    card.Position = UDim2.new(1,60,0,0)
    Tween:Create(card, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position=UDim2.new(0,0,0,0), Size=UDim2.new(1,0,0,cardH)}):Play()
    shine(card, col, 0.7)
    task.delay(dur or (hasCopy and 12 or 3.5), function()
        if not card or not card.Parent then return end
        local t = Tween:Create(card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Position=UDim2.new(1,60,0,0), BackgroundTransparency=1})
        t:Play(); Tween:Create(st, TweenInfo.new(0.35), {Transparency=1}):Play(); t.Completed:Connect(function() card:Destroy() end)
    end)
end

--==================== GUI ROOT & SNOW ENGINE ====================
local pg = LP:WaitForChild("PlayerGui")
gui = new("ScreenGui", {Name="ReaperUI", ResetOnSpawn=false, IgnoreGuiInset=true, ZIndexBehavior=Enum.ZIndexBehavior.Sibling, DisplayOrder=9999}, pg)
initNotifs(pg)

snowGui = new("ScreenGui", {Name="ReaperSnow", ResetOnSpawn=false, IgnoreGuiInset=true, DisplayOrder=1}, pg)
local snowParts = {}
function rebuildSnow()
    for _, p in ipairs(snowParts) do p.inst:Destroy() end
    snowParts = {}
    if not Theme.snow.active and not Theme.sakura.active then return end
    local count = Theme.sakura.active and 80 or 60
    for i = 1, count do
        local isSakura = Theme.sakura.active
        local f = new("Frame", {
            Size = UDim2.fromOffset(isSakura and math.random(4,8) or math.random(2,5), isSakura and math.random(4,8) or math.random(2,5)),
            Position = UDim2.fromScale(math.random(), -0.1),
            BackgroundColor3 = isSakura and Color3.fromRGB(255,180,210) or Color3.new(1,1,1),
            BackgroundTransparency = isSakura and 0.3 or 0.5,
            BorderSizePixel = 0, ZIndex = 1
        }, snowGui)
        corner(f, 10)
        snowParts[#snowParts+1] = {inst=f, speed=math.random(15,30), drift=math.random(5,15), phase=math.random()*math.pi*2}
    end
end
rebuildSnow()

RS.RenderStepped:Connect(function(dt)
    if not Theme.snow.active and not Theme.sakura.active then return end
    for _, p in ipairs(snowParts) do
        if p.inst and p.inst.Parent then
            local pos = p.inst.Position
            local nx = pos.X.Scale + (dt * p.drift * 0.01)
            local ny = pos.Y.Scale + (dt * p.speed * 0.01)
            if Theme.sakura.active then nx = nx + math.sin(tick() + p.phase) * dt * 0.05 end
            if ny > 1 then ny = -0.1; nx = math.random() end
            if nx > 1 then nx = 0 end
            p.inst.Position = UDim2.fromScale(nx, ny)
        end
    end
end)

--==================== ANNOUNCEMENTS & CROSSHAIR ====================
annGui = new("ScreenGui", {Name="ReaperAnnounce", ResetOnSpawn=false, IgnoreGuiInset=true, ZIndexBehavior=Enum.ZIndexBehavior.Sibling, DisplayOrder=10001}, pg)
annSlot = new("Frame", {Size=UDim2.new(0,520,0,0), Position=UDim2.new(0.5,0,0,60), AnchorPoint=Vector2.new(0.5,0), BackgroundTransparency=1, ZIndex=1}, annGui)
annCurrent = nil
function dismissAnnouncement() local c = annCurrent; if not c then return end; annCurrent = nil; if c.shadow and c.shadow.Parent then c.shadow:Destroy() end; if c.card and c.card.Parent then local t = Tween:Create(c.card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Position=UDim2.new(0,0,0,-180), BackgroundTransparency=1}); t:Play(); if c.stroke then Tween:Create(c.stroke, TweenInfo.new(0.35), {Transparency=1}):Play() end; t.Completed:Connect(function() if c.card and c.card.Parent then c.card:Destroy() end end) end end
function showAnnouncement(data)
    if not annSlot or not annSlot.Parent then return end; dismissAnnouncement(); local rank = data.rank or "owner"; local style = BADGE_STYLE[rank] or BADGE_STYLE.owner; local col = style.color; local cardWidth = 520; local bodyPadX = 16; local bodyWidth = cardWidth - bodyPadX * 2 - 4; local bodyText = tostring(data.text or ""); local bodyHeight = 22
    pcall(function() local size = TextService:GetTextSize(bodyText, 13, Enum.Font.GothamBold, Vector2.new(bodyWidth, 500)); bodyHeight = math.clamp(size.Y + 4, 22, 220) end)
    local headerH = 60; local cardHeight = headerH + bodyHeight + 18
    local shadow = new("Frame", {Size=UDim2.fromOffset(cardWidth+14, cardHeight+14), Position=UDim2.fromOffset(-7,-160), BackgroundColor3=Theme.neon, BackgroundTransparency=0.82, BorderSizePixel=0, ZIndex=2}, annSlot); corner(shadow, 16)
    local card = new("Frame", {Size=UDim2.fromOffset(cardWidth,cardHeight), Position=UDim2.new(0,0,0,-180), BackgroundColor3=Theme.bg, BackgroundTransparency=0.02, BorderSizePixel=0, ZIndex=3, ClipsDescendants=true}, annSlot); corner(card, 14); local st = stroke(card, col, 2, 0.1); grad(card, Color3.fromRGB(30,30,35), Theme.bg, 90)
    new("Frame", {Size=UDim2.new(1,0,0,3), BackgroundColor3=col, BorderSizePixel=0, ZIndex=4}, card)
    local iconPlate = new("Frame", {Size=UDim2.fromOffset(36,36), Position=UDim2.fromOffset(14,13), BackgroundColor3=col, BackgroundTransparency=0.85, BorderSizePixel=0, ZIndex=4}, card); corner(iconPlate, 18); stroke(iconPlate, col, 1.5, 0.2); new("TextLabel", {Size=UDim2.fromScale(1,1), BackgroundTransparency=1, Text=style.emoji, Font=Enum.Font.GothamBlack, TextSize=19, TextColor3=col, ZIndex=5}, iconPlate)
    new("TextLabel", {Size=UDim2.new(1,-80,0,18), Position=UDim2.fromOffset(60,10), BackgroundTransparency=1, Text=string.upper(style.label).." ANNOUNCEMENT", Font=Enum.Font.GothamBlack, TextSize=11, TextColor3=col, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=5}, card)
    new("TextLabel", {Size=UDim2.new(1,-80,0,14), Position=UDim2.fromOffset(60,28), BackgroundTransparency=1, Text="from "..tostring(data.sender or "?"), Font=Enum.Font.Gotham, TextSize=10, TextColor3=Theme.muted, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=5}, card)
    new("TextLabel", {Size=UDim2.fromOffset(bodyWidth, bodyHeight), Position=UDim2.fromOffset(bodyPadX, headerH), BackgroundTransparency=1, Text=bodyText, Font=Enum.Font.GothamBold, TextSize=13, TextColor3=Theme.text, TextWrapped=true, TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Top, ZIndex=5}, card)
    Tween:Create(card, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position=UDim2.new(0,0,0,0)}):Play(); Tween:Create(shadow, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position=UDim2.fromOffset(-7,3)}):Play()
    local dur = math.clamp(6 + #bodyText * 0.045, 6, 16); annCurrent = {card=card, stroke=st, shadow=shadow}; task.delay(dur, function() if annCurrent and annCurrent.card == card then dismissAnnouncement() end end)
end
function sendAnnouncement(text) if not isMod() then notify("Denied", "You are not an owner/mod", Theme.danger, 2); return false end; text = tostring(text or ""):gsub("^%s+",""):gsub("%s+$",""); if text == "" then return false end; if not SESSION_KEY or SESSION_KEY == "" then notify("Announce", "Not verified yet", Theme.danger, 5); return false end; task.spawn(function() local body = HttpService:JSONEncode({robloxId=tostring(LP.UserId), key=SESSION_KEY, text=text}); local ok, res = httpPost(KEY_API.."/announce/send", body); if ok then showAnnouncement({text=text, sender=LP.Name, userId=LP.UserId, rank=getLocalRank() or "owner", time=os.time()}); notify("Announcement sent", "Broadcast to all servers", Theme.success, 3) else notify("Announce failed", parseErrorReason(res), Theme.danger, 8) end end); return true end

crossGui = new("ScreenGui", {Name="ReaperCross", ResetOnSpawn=false, IgnoreGuiInset=true, ZIndexBehavior=Enum.ZIndexBehavior.Sibling, DisplayOrder=10000}, pg)
crosshair = new("Frame", {Size=UDim2.fromOffset(40,40), AnchorPoint=Vector2.new(0.5,0.5), BackgroundTransparency=1, Visible=false}, crossGui)
reticle = new("Frame", {Size=UDim2.fromOffset(110,110), AnchorPoint=Vector2.new(0.5,0.5), BackgroundTransparency=1, Visible=false}, crossGui)
RSIZE = 110
ring1 = new("Frame", {Size=UDim2.fromOffset(RSIZE,RSIZE), BackgroundTransparency=1, ZIndex=6}, reticle); corner(ring1, RSIZE); ring1S = stroke(ring1, Theme.neon, 2, 0.15)
ring2 = new("Frame", {Size=UDim2.fromOffset(RSIZE-14,RSIZE-14), Position=UDim2.fromOffset(7,7), BackgroundTransparency=1, ZIndex=7}, reticle); corner(ring2, RSIZE); ring2S = stroke(ring2, Theme.neon, 1, 0.5)
trackLine = new("Frame", {BackgroundColor3=Theme.neon, BackgroundTransparency=0.55, AnchorPoint=Vector2.new(0,0.5), BorderSizePixel=0, ZIndex=5, Visible=false}, crossGui)
hpBar = new("Frame", {Size=UDim2.fromOffset(4,60), Position=UDim2.new(1,10,0.5,-30), BackgroundColor3=Theme.danger, BackgroundTransparency=0.15, BorderSizePixel=0, ZIndex=10}, reticle); corner(hpBar, 2); hpFill = new("Frame", {Size=UDim2.fromScale(1,1), BackgroundColor3=Theme.success, BorderSizePixel=0, ZIndex=11}, hpBar); corner(hpFill, 2)
retName = new("TextLabel", {Size=UDim2.new(1,60,0,18), Position=UDim2.new(0,-30,1,10), BackgroundTransparency=1, Font=Enum.Font.GothamBlack, TextSize=14, TextColor3=Theme.neon, Text="", TextStrokeTransparency=0.3, TextStrokeColor3=Color3.new(0,0,0), ZIndex=12}, reticle)
retDist = new("TextLabel", {Size=UDim2.new(1,60,0,13), Position=UDim2.new(0,-30,1,28), BackgroundTransparency=1, Font=Enum.Font.GothamBold, TextSize=11, TextColor3=Theme.muted, Text="", TextStrokeTransparency=0.5, TextStrokeColor3=Color3.new(0,0,0), ZIndex=12}, reticle)
retActions = new("Frame", {Size=UDim2.new(1,100,0,20), Position=UDim2.new(0,-50,1,46), BackgroundTransparency=1, ZIndex=13}, reticle)
new("UIListLayout", {FillDirection=Enum.FillDirection.Horizontal, HorizontalAlignment=Enum.HorizontalAlignment.Center, VerticalAlignment=Enum.VerticalAlignment.Center, Padding=UDim.new(0,5)}, retActions)
rainbowH = 0
RS.Heartbeat:Connect(function(dt) rainbowH = (rainbowH + dt * 0.5) % 1 end)

--==================== UI CONSTRUCTION (MENU) ====================
LW, LH = 170, 54
logo = new("TextButton", {Name="Logo", Size=UDim2.fromOffset(LW,LH), Position=UDim2.new(0.5,-LW/2,0,12), BackgroundTransparency=1, Text="", AutoButtonColor=false, ZIndex=60}, gui)
back = tBg(new("Frame", {Size=UDim2.fromScale(1,1), Position=UDim2.fromScale(0.5,0.5), AnchorPoint=Vector2.new(0.5,0.5), BackgroundColor3=Theme.bg, BorderSizePixel=0, ZIndex=2}, logo)); corner(back, 14); grad(back, Color3.fromRGB(25,25,30), Theme.bgDeep, 90); backStroke = tAcc(stroke(back, Theme.neon, 1.8, 0.15)); dropShadow(back, 14, 10, 0.6)
title = new("TextLabel", {Size=UDim2.new(1,-60,0,24), Position=UDim2.fromOffset(56,8), BackgroundTransparency=1, Text="REAPER", Font=Enum.Font.GothamBlack, TextSize=17, TextColor3=Color3.new(1,1,1), TextXAlignment=Enum.TextXAlignment.Left, ZIndex=6}, back)
titleG = new("UIGradient", {Color=ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.accent2), ColorSequenceKeypoint.new(0.5, Theme.neon), ColorSequenceKeypoint.new(1, Theme.accent3)}), Rotation=20}, title); tAcc(stroke(title, Theme.neon, 1.2, 0.2))
tMuted(new("TextLabel", {Size=UDim2.new(1,-60,0,11), Position=UDim2.fromOffset(57,32), BackgroundTransparency=1, Text="CLICK · X", Font=Enum.Font.GothamBold, TextSize=7, TextColor3=Theme.muted, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=6}, back))
logo.MouseEnter:Connect(function() Tween:Create(backStroke, TweenInfo.new(0.15), {Transparency=0}):Play(); pulse(back, 1.03, 0.1) end)
logo.MouseLeave:Connect(function() Tween:Create(backStroke, TweenInfo.new(0.15), {Transparency=0.15}):Play() end)

menu = tBg(new("Frame", {Name="Menu", Size=UDim2.fromOffset(660,500), Position=UDim2.new(0.5,-330,0.5,-250), BackgroundColor3=Theme.bg, BackgroundTransparency=0.15, BorderSizePixel=0, ClipsDescendants=true, Visible=false, ZIndex=30}, gui))
corner(menu, 14); menuStroke = tAcc(stroke(menu, Theme.neon, 1.5, 0.3)); dropShadow(menu, 14, 18, 0.7)
local glassBlur = new("BlurEffect", {Size=12, Parent=Lighting}); glassBlur.Name = "ReaperGlassBlur"

ambient = new("Frame", {Size=UDim2.fromScale(1,1), BackgroundTransparency=1, ClipsDescendants=true, ZIndex=2}, menu)
ambientParts = {}
function buildAmbient()
    for _, p in ipairs(ambientParts) do if p.inst then p.inst:Destroy() end end; ambientParts = {}; if not Cfg.UI.Ambient then return end
    for i = 1, 18 do local sz = 2 + math.random() * 3; local f = new("Frame", {Size=UDim2.fromOffset(sz,sz), Position=UDim2.fromScale(math.random(), math.random()), BackgroundColor3=Theme.accent2, BackgroundTransparency=0.55 + math.random() * 0.3, BorderSizePixel=0, ZIndex=2}, ambient); corner(f, sz); ambientParts[#ambientParts+1] = {inst=f, vx=(math.random()-0.5)*0.015, vy=(math.random()-0.5)*0.015, phase=math.random()*math.pi*2} end
end
buildAmbient()

header = tPanel2(new("Frame", {Size=UDim2.new(1,0,0,60), BackgroundColor3=Theme.panel2, BackgroundTransparency=0.1, BorderSizePixel=0, ZIndex=31}, menu)); corner(header, 14); stroke(header, Theme.strokeSoft, 1, 0.8)
new("TextLabel", {Size=UDim2.fromOffset(200,60), Position=UDim2.fromOffset(20,0), BackgroundTransparency=1, Text="REAPER universal", Font=Enum.Font.GothamBlack, TextSize=16, TextColor3=Theme.text, TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Center, ZIndex=32}, header)
local _avSize = 38
local _avWrap = new("Frame", {Size=UDim2.fromOffset(_avSize,_avSize), Position=UDim2.new(1,-200,0.5,-19), BackgroundTransparency=1, ZIndex=33}, header)
local _avImg = new("ImageLabel", {Size=UDim2.fromScale(1,1), BackgroundColor3=Theme.panel3, BorderSizePixel=0, Image="", ZIndex=34}, _avWrap); corner(_avImg, _avSize/2)
local _nameLbl = new("TextLabel", {Size=UDim2.new(0,140,1,0), Position=UDim2.new(1,-150,0,0), BackgroundTransparency=1, Text="@loading…", Font=Enum.Font.GothamBold, TextSize=11, TextColor3=Theme.text, TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Center, ZIndex=33}, header)

task.spawn(function() local lastAvatarAttempt = 0; while _nameLbl.Parent do; if MY_USER then; _nameLbl.Text = "@"..(MY_USER.username or "user"); if MY_USER.avatar and MY_USER.avatar ~= "" and _avImg.Image == "" then local now = tick(); if now - lastAvatarAttempt > 3 then lastAvatarAttempt = now; local asset = downloadAvatar(MY_USER.avatar); if asset then _avImg.Image = asset; _avImg.ScaleType = Enum.ScaleType.Crop end end end; end; task.wait(0.5) end end)

closeBtn = new("TextButton", {Size=UDim2.fromOffset(24,24), Position=UDim2.new(1,-32,0,18), BackgroundColor3=Theme.danger, Text="✕", Font=Enum.Font.GothamBold, TextSize=11, TextColor3=Color3.new(1,1,1), AutoButtonColor=false, ZIndex=33}, header); corner(closeBtn, 6); closeBtn.MouseButton1Click:Connect(function() closeMenu() end)

rail = tPanel(new("Frame", {Size=UDim2.new(0,120,1,-80), Position=UDim2.fromOffset(10,70), BackgroundColor3=Theme.panel, BackgroundTransparency=0.1, BorderSizePixel=0, ZIndex=31}, menu)); corner(rail, 10); new("UIListLayout", {Padding=UDim.new(0,4), SortOrder=Enum.SortOrder.LayoutOrder}, rail); new("UIPadding", {PaddingTop=UDim.new(0,6), PaddingLeft=UDim.new(0,5), PaddingRight=UDim.new(0,5)}, rail)
tabIndicator = new("Frame", {Size=UDim2.new(1,-10,0,26), Position=UDim2.fromOffset(5,6), BackgroundColor3=Theme.neon, BackgroundTransparency=0.82, BorderSizePixel=0, ZIndex=31}, rail); corner(tabIndicator, 6); new("UIGradient", {Color=ColorSequence.new(Theme.neon, Theme.accent3)}, tabIndicator)

content = tPanel(new("Frame", {Size=UDim2.new(1,-148,1,-80), Position=UDim2.fromOffset(138,70), BackgroundColor3=Theme.panel, BackgroundTransparency=0.1, BorderSizePixel=0, ZIndex=31}, menu)); corner(content, 10)

makeDraggable(menu, header); makeResizable(menu, {minW=Cfg.UI.MinW, minH=Cfg.UI.MinH})

function openMenu() if Cfg.UI.AnimatedOpen then local sz, ps = menu.Size, menu.Position; menu.Visible = true; menu.Size = UDim2.fromOffset(600,460); menu.Position = UDim2.new(0.5,-300,0.5,-230); Tween:Create(menu, TweenInfo.new(0.32, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size=sz, Position=ps}):Play() else menu.Visible = true end end
function closeMenu() if Cfg.UI.AnimatedOpen and menu.Visible then local sz, ps = menu.Size, menu.Position; local t = Tween:Create(menu, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Size=UDim2.fromOffset(600,460), Position=UDim2.new(0.5,-300,0.5,-230)}); t:Play(); t.Completed:Connect(function() menu.Visible = false; menu.Size, menu.Position = sz, ps end) else menu.Visible = false end end

pages = {}; tabs = {}; widgets = {}; toggleLabels = {}; pendingKeybind = nil; refreshHUD = function() end; refreshAD = function() end
function resolvePage(p) if type(p) == "string" then return pages[p] end; return p end

function makeTab(id, title)
    local tab = tPanel2(new("TextButton", {Size=UDim2.new(1,0,0,26), BackgroundColor3=Theme.panel2, Text=title, Font=Enum.Font.GothamBold, TextSize=10, TextColor3=Theme.muted, AutoButtonColor=false, LayoutOrder=#rail:GetChildren(), ZIndex=32}, rail)); corner(tab, 7); tStroke(stroke(tab, Theme.strokeSoft, 1, 0.5))
    tabs[id] = tab
    local page = new("ScrollingFrame", {Name="Page_"..id, Size=UDim2.fromScale(1,1), BackgroundTransparency=1, BorderSizePixel=0, ScrollBarThickness=3, ScrollBarImageColor3=Theme.neon, CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y, Visible=false, ZIndex=32}, content)
    new("UIListLayout", {Padding=UDim.new(0,6), SortOrder=Enum.SortOrder.LayoutOrder}, page); new("UIPadding", {PaddingTop=UDim.new(0,10), PaddingLeft=UDim.new(0,10), PaddingRight=UDim.new(0,10), PaddingBottom=UDim.new(0,10)}, page)
    pages[id] = page
    tab.MouseButton1Click:Connect(function() for _, p in pairs(pages) do p.Visible = false end; page.Visible = true; for _, t in pairs(tabs) do t.TextColor3 = Theme.muted; t.BackgroundColor3 = Theme.panel2 end; tab.TextColor3 = Color3.new(1,1,1); tab.BackgroundColor3 = Theme.neon; glow(tab, Theme.accent2, 0.4); shine(tab, Color3.new(1,1,1), 0.5); local ty = tab.AbsolutePosition.Y - rail.AbsolutePosition.Y; Tween:Create(tabIndicator, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position=UDim2.fromOffset(5,ty)}):Play(); ripple(tab, tab.AbsoluteSize.X/2, tab.AbsoluteSize.Y/2, Theme.accent2, 18, 0.5) end)
    tab.MouseEnter:Connect(function() if tab.BackgroundColor3 ~= Theme.neon then Tween:Create(tab, TweenInfo.new(0.15), {BackgroundColor3=Theme.panel3}):Play() end end)
    tab.MouseLeave:Connect(function() if tab.BackgroundColor3 ~= Theme.neon then Tween:Create(tab, TweenInfo.new(0.15), {BackgroundColor3=Theme.panel2}):Play() end end)
end

function section(pageId, title, icon)
    local page = resolvePage(pageId); if not page then return nil end
    local wrap = tPanel2(new("Frame", {Size=UDim2.new(1,0,0,24), BackgroundColor3=Theme.panel2, BackgroundTransparency=0.15, LayoutOrder=#page:GetChildren(), ZIndex=33}, page)); corner(wrap, 7); tStroke(stroke(wrap, Theme.strokeSoft, 1, 0.5)); local hg = grad(wrap, Color3.fromRGB(50,50,60), Theme.panel2, 0)
    new("Frame", {Size=UDim2.new(0,3,0.6,0), Position=UDim2.new(0,0,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=Theme.neon, BorderSizePixel=0, ZIndex=35}, wrap)
    new("TextLabel", {Size=UDim2.new(1,-14,1,0), Position=UDim2.fromOffset(12,0), BackgroundTransparency=1, Text=(icon and icon.."  " or "")..title, Font=Enum.Font.GothamBlack, TextSize=10, TextColor3=Theme.accent2, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=34}, wrap)
    return wrap
end

function toggleRow(pageId, path, label, onChange)
    local page = resolvePage(pageId); if not page then return end; toggleLabels[path] = label
    local state = getPath(Cfg, path) == true
    local row = tPanel(new("Frame", {Size=UDim2.new(1,0,0,32), BackgroundColor3=Theme.panel, BackgroundTransparency=0.1, LayoutOrder=#page:GetChildren(), ZIndex=33}, page)); corner(row, 8); tStroke(stroke(row, Theme.strokeSoft, 1, 0.6))
    new("TextLabel", {Size=UDim2.new(1,-200,1,0), Position=UDim2.fromOffset(14,0), BackgroundTransparency=1, Text=label, Font=Enum.Font.Gotham, TextSize=11, TextColor3=Theme.text, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=36}, row)
    local track = new("Frame", {Size=UDim2.fromOffset(44,22), Position=UDim2.new(1,-54,0.5,-11), BackgroundColor3=state and Theme.toggleOn or Theme.toggleOff, BorderSizePixel=0, ZIndex=36}, row); corner(track, 11)
    local thumb = new("Frame", {Size=UDim2.fromOffset(16,16), Position=state and UDim2.new(1,-18,0.5,-8) or UDim2.new(0,2,0.5,-8), BackgroundColor3=state and Theme.bg or Theme.muted, BorderSizePixel=0, ZIndex=37}, track); corner(thumb, 8)
    local function render() if state then track.BackgroundColor3 = Theme.toggleOn; thumb.Position = UDim2.new(1,-18,0.5,-8); thumb.BackgroundColor3 = Theme.bg else track.BackgroundColor3 = Theme.toggleOff; thumb.Position = UDim2.new(0,2,0.5,-8); thumb.BackgroundColor3 = Theme.muted end end
    local function set(v, fire)
        local nv = v and true or false; local changed = nv ~= state; state = nv; setPath(Cfg, path, state)
        if changed then Tween:Create(thumb, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position=state and UDim2.new(1,-18,0.5,-8) or UDim2.new(0,2,0.5,-8)}):Play(); Tween:Create(track, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {BackgroundColor3=state and Theme.toggleOn or Theme.toggleOff}):Play(); Tween:Create(thumb, TweenInfo.new(0.2), {BackgroundColor3=state and Theme.bg or Theme.muted}):Play() end
        render(); if fire ~= false and onChange then pcall(onChange, state) end; if changed then pcall(refreshHUD); pcall(refreshAD) end
    end
    widgets[path] = {set=set, get=function() return state end, rerender=render, label=label}; render()
    track.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then set(not state) end end)
end

function sliderRow(pageId, path, label, mn, mx, dec, onChange)
    local page = resolvePage(pageId); if not page then return end
    local cur = getPath(Cfg, path); if type(cur) ~= "number" then cur = mn; setPath(Cfg, path, mn) end
    local row = tPanel(new("Frame", {Size=UDim2.new(1,0,0,38), BackgroundColor3=Theme.panel, BackgroundTransparency=0.15, LayoutOrder=#page:GetChildren(), ZIndex=33}, page)); corner(row, 7); tStroke(stroke(row, Theme.strokeSoft, 1, 0.55)); hoverStripe(row, Theme.neon)
    new("TextLabel", {Size=UDim2.new(1,-90,0,14), Position=UDim2.fromOffset(14,4), BackgroundTransparency=1, Text=label, Font=Enum.Font.Gotham, TextSize=11, TextColor3=Theme.text, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=36}, row)
    local valLbl = new("TextLabel", {Size=UDim2.fromOffset(70,14), Position=UDim2.new(1,-80,0,4), BackgroundTransparency=1, Font=Enum.Font.GothamBold, TextSize=10, TextColor3=Theme.accent2, TextXAlignment=Enum.TextXAlignment.Right, ZIndex=36}, row)
    local bar = tPanel2(new("Frame", {Size=UDim2.new(1,-22,0,5), Position=UDim2.fromOffset(11,24), BackgroundColor3=Theme.panel2, ZIndex=34}, row)); corner(bar, 3); tStroke(stroke(bar, Theme.strokeSoft, 1, 0.5))
    local fill = new("Frame", {Size=UDim2.new(0,0,1,0), BackgroundColor3=Theme.toggleOn, BorderSizePixel=0, ZIndex=35}, bar); corner(fill, 3); grad(fill, Theme.toggleOn, Theme.strokeSoft, 0)
    local thumb = new("Frame", {Size=UDim2.fromOffset(12,12), Position=UDim2.new(0,0,0.5,0), AnchorPoint=Vector2.new(0.5,0.5), BackgroundColor3=Color3.new(1,1,1), BorderSizePixel=0, ZIndex=36}, bar); corner(thumb, 6)
    local mult = 10 ^ dec; local value = cur
    local function setVal(v, fire) value = v; setPath(Cfg, path, v); local a = math.clamp((v-mn)/(mx-mn),0,1); fill.Size = UDim2.new(a,0,1,0); thumb.Position = UDim2.new(a,0,0.5,0); valLbl.Text = string.format("%."..dec.."f", v); if fire ~= false and onChange then pcall(onChange, v) end end
    widgets[path] = {set=setVal, get=function() return value end}; setVal(value, false); local drag = false
    local function fromX(px) local a = math.clamp((px - bar.AbsolutePosition.X)/math.max(bar.AbsoluteSize.X,1),0,1); setVal(math.floor((mn+(mx-mn)*a)*mult+0.5)/mult) end
    bar.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then drag = true; fromX(i.Position.X); pulse(thumb, 1.5, 0.1) end end)
    UIS.InputChanged:Connect(function(i) if drag and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then fromX(i.Position.X) end end)
    UIS.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then drag = false end end)
end

function buttonRow(pageId, label, text, cb)
    local page = resolvePage(pageId); if not page then return end
    local row = tPanel(new("Frame", {Size=UDim2.new(1,0,0,30), BackgroundColor3=Theme.panel, BackgroundTransparency=0.15, LayoutOrder=#page:GetChildren(), ZIndex=33}, page)); corner(row, 7); tStroke(stroke(row, Theme.strokeSoft, 1, 0.55)); hoverStripe(row, Theme.neon)
    new("TextLabel", {Size=UDim2.new(1,-160,1,0), Position=UDim2.fromOffset(14,0), BackgroundTransparency=1, Text=label, Font=Enum.Font.Gotham, TextSize=11, TextColor3=Theme.text, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=36}, row)
    local b = tPanel2(new("TextButton", {Size=UDim2.fromOffset(140,20), Position=UDim2.new(1,-150,0.5,-10), BackgroundColor3=Theme.panel2, Text=text, Font=Enum.Font.GothamBold, TextSize=9, TextColor3=Theme.accent2, AutoButtonColor=false, ZIndex=36}, row)); corner(b, 6); tStroke(stroke(b, Theme.strokeSoft, 1))
    b.MouseButton1Click:Connect(function() pulse(b, 0.94, 0.06); glow(b, Theme.accent2, 0.35); shine(b, Theme.accent2, 0.5); cb(b) end)
    b.MouseEnter:Connect(function() Tween:Create(b, TweenInfo.new(0.12), {BackgroundColor3=Theme.panel3}):Play() end)
    b.MouseLeave:Connect(function() Tween:Create(b, TweenInfo.new(0.15), {BackgroundColor3=Theme.panel2}):Play() end)
    return b
end

function textRow(pageId, label, ph, initial, onCommit)
    local page = resolvePage(pageId); if not page then return end
    local row = tPanel(new("Frame", {Size=UDim2.new(1,0,0,30), BackgroundColor3=Theme.panel, BackgroundTransparency=0.15, LayoutOrder=#page:GetChildren(), ZIndex=33}, page)); corner(row, 7); tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    new("TextLabel", {Size=UDim2.new(1,-180,1,0), Position=UDim2.fromOffset(14,0), BackgroundTransparency=1, Text=label, Font=Enum.Font.Gotham, TextSize=11, TextColor3=Theme.text, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=36}, row)
    local tb = tPanel2(new("TextBox", {Size=UDim2.fromOffset(160,20), Position=UDim2.new(1,-168,0.5,-10), BackgroundColor3=Theme.panel2, Text=initial or "", PlaceholderText=ph or "", Font=Enum.Font.Gotham, TextSize=10, TextColor3=Theme.accent2, PlaceholderColor3=Theme.muted, ClearTextOnFocus=false, Active=true, Selectable=true, ZIndex=50}, row)); corner(tb, 5); tStroke(stroke(tb, Theme.strokeSoft, 1)); tb.FocusLost:Connect(function() if onCommit then onCommit(tb.Text) end end); return tb
end

function cycleRow(pageId, path, label, options, onChange)
    local page = resolvePage(pageId); if not page then return end
    local row = tPanel(new("Frame", {Size=UDim2.new(1,0,0,30), BackgroundColor3=Theme.panel, BackgroundTransparency=0.15, LayoutOrder=#page:GetChildren(), ZIndex=33}, page)); corner(row, 7); tStroke(stroke(row, Theme.strokeSoft, 1, 0.55)); hoverStripe(row, Theme.neon)
    new("TextLabel", {Size=UDim2.new(1,-160,1,0), Position=UDim2.fromOffset(14,0), BackgroundTransparency=1, Text=label, Font=Enum.Font.Gotham, TextSize=11, TextColor3=Theme.text, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=36}, row)
    local b = tPanel2(new("TextButton", {Size=UDim2.fromOffset(140,20), Position=UDim2.new(1,-150,0.5,-10), BackgroundColor3=Theme.panel2, Text=tostring(getPath(Cfg, path) or options[1]), Font=Enum.Font.GothamBold, TextSize=9, TextColor3=Theme.accent2, AutoButtonColor=false, ZIndex=36}, row)); corner(b, 6); tStroke(stroke(b, Theme.strokeSoft, 1))
    b.MouseButton1Click:Connect(function() local cur = getPath(Cfg, path); local idx = 1; for i, o in ipairs(options) do if o == cur then idx = i end end; idx = idx % #options + 1; setPath(Cfg, path, options[idx]); b.Text = tostring(options[idx]); pulse(b, 0.94, 0.06); if onChange then pcall(onChange, options[idx]) end end)
    widgets[path] = {set=function(v) setPath(Cfg, path, v); b.Text = tostring(v) end, get=function() return getPath(Cfg, path) end}; return b
end

function legendRow(pageId, label, col)
    local page = resolvePage(pageId); if not page then return end
    local row = tPanel(new("Frame", {Size=UDim2.new(1,0,0,26), BackgroundColor3=Theme.panel, BackgroundTransparency=0.15, LayoutOrder=#page:GetChildren(), ZIndex=33}, page)); corner(row, 7); tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    local sw = new("Frame", {Size=UDim2.fromOffset(26,14), Position=UDim2.fromOffset(12,6), BackgroundColor3=col, BorderSizePixel=0, ZIndex=34}, row); corner(sw, 4); stroke(sw, col, 1, 0)
    new("TextLabel", {Size=UDim2.new(1,-46,1,0), Position=UDim2.fromOffset(46,0), BackgroundTransparency=1, Text=label, Font=Enum.Font.GothamBold, TextSize=10, TextColor3=col, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=34}, row); return row
end

function applyOpacity(op) op = math.clamp(tonumber(op) or 0, 0, 1); for _, d in ipairs(menu:GetDescendants()) do local anc, skip = d.Parent, false; while anc and anc ~= menu do if anc == ambient then skip = true; break end; anc = anc.Parent end; if not skip then if d:IsA("Frame") or d:IsA("TextButton") or d:IsA("TextBox") or d:IsA("ScrollingFrame") then local base = d:GetAttribute("OpBase"); if base == nil then base = d.BackgroundTransparency; d:SetAttribute("OpBase", base) end; d.BackgroundTransparency = math.clamp(base + op * (1 - base), 0, 1) elseif d:IsA("UIStroke") then local base = d:GetAttribute("OpBase"); if base == nil then base = d.Transparency; d:SetAttribute("OpBase", base) end; d.Transparency = math.clamp(base + op * 0.9, 0, 1) end end end end
function applyTheme() for _, d in ipairs(gui:GetDescendants()) do if d:GetAttribute("T_Bg") and d:IsA("Frame") then d.BackgroundColor3 = Theme.bg end; if d:GetAttribute("T_Panel") and (d:IsA("Frame") or d:IsA("ScrollingFrame")) then d.BackgroundColor3 = Theme.panel end; if d:GetAttribute("T_Panel2") and (d:IsA("Frame") or d:IsA("TextBox")) then d.BackgroundColor3 = Theme.panel2 end; if d:GetAttribute("T_Acc") then if d:IsA("UIStroke") then d.Color = Theme.neon elseif d:IsA("Frame") or d:IsA("TextButton") then d.BackgroundColor3 = Theme.neon end end; if d:GetAttribute("T_Acc2") and d:IsA("TextLabel") then d.TextColor3 = Theme.accent2 end; if d:GetAttribute("T_Text") and d:IsA("TextLabel") then d.TextColor3 = Theme.text end; if d:GetAttribute("T_Muted") and d:IsA("TextLabel") then d.TextColor3 = Theme.muted end; if d:GetAttribute("T_Stroke") and d:IsA("UIStroke") then d.Color = Theme.stroke end end; for _, p in ipairs(ambientParts) do if p.inst then p.inst.BackgroundColor3 = Theme.accent2 end end; for _, t in pairs(widgets) do if t.rerender then pcall(t.rerender) end end; pcall(refreshHUD); pcall(rebuildSnow) end

tabOrder = {"home", "combat", "visual", "move", "world", "players", "troll", "util", "save", "theme"}
tabTitles = {home="HOME", combat="COMBAT", visual="VISUAL", move="MOVE", world="WORLD", players="PLAYERS", troll="TROLL", util="UTIL", save="SAVE", theme="THEME"}
if isMod() then table.insert(tabOrder, 2, "owner"); tabTitles.owner = "👑 OWNER" end
for _, id in ipairs(tabOrder) do makeTab(id, tabTitles[id]) end--==================== KEYBIND HUD ====================
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
    BackgroundTransparency = 1, Text = "⚡ KEYBINDS", Font = Enum.Font.GothamBlack,
    TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, hudHeader))
hudHide = new("TextButton", {Size = UDim2.fromOffset(18, 18),
    Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = "−",
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
if Cfg.UI.HUDMovable then makeDraggable(hudFrame, hudHeader) end
if Cfg.UI.HUDResizable then
    makeResizable(hudFrame, {minW = 180, minH = 80, corners = {"br", "bl", "tr"},
        onResize = function(w, h)
            hudFrame.AutomaticSize = Enum.AutomaticSize.None
            hudFrame.Size = UDim2.fromOffset(w, h)
        end})
end
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

--==================== AUTO-DETECT HUD ====================
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
    BackgroundTransparency = 1, Text = "⚙ AUTO-DETECT", Font = Enum.Font.GothamBlack,
    TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, adHeader))
adHide = new("TextButton", {Size = UDim2.fromOffset(18, 18),
    Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = "−",
    Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
    AutoButtonColor = false}, adHeader)
corner(adHide, 4)
adBody = new("Frame", {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),
    BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, adFrame)
new("UIListLayout", {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}, adBody)
new("UIPadding", {PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5),
    PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}, adBody)
adRows = {}
function adRow(key, label, col)
    local row = new("Frame", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        LayoutOrder = #adBody:GetChildren()}, adBody)
    new("TextLabel", {Size = UDim2.new(0, 100, 1, 0), BackgroundTransparency = 1, Text = label,
        Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left}, row)
    local val = new("TextLabel", {Size = UDim2.new(1, -104, 1, 0), Position = UDim2.fromOffset(104, 0),
        BackgroundTransparency = 1, Text = "—", Font = Enum.Font.Code, TextSize = 9,
        TextColor3 = col or Theme.accent2, TextXAlignment = Enum.TextXAlignment.Right}, row)
    adRows[key] = val
    return val
end
adRow("Status", "Status:", Theme.success)
adRow("Target", "Target:", Theme.accent2)
adRow("BaseSpeed", "Base Speed:", Theme.accent2)
adRow("SpeedMult", "Speed ×:", Theme.accent3)
adRow("EffSpeed", "Effective:", Theme.gold)
adRow("Tier", "Tier:", Theme.success)
adRow("Air", "Airborne:", Theme.accent2)
adRow("Fall", "Fall:", Theme.danger)
adRow("Respawn", "Respawn:", Theme.gold)
adRow("Mode", "Mode:", Theme.success)
if Cfg.UI.ADMovable then makeDraggable(adFrame, adHeader) end
if Cfg.UI.ADResizable then
    makeResizable(adFrame, {minW = 200, minH = 100, corners = {"br", "bl", "tr"},
        onResize = function(w, h)
            adFrame.AutomaticSize = Enum.AutomaticSize.None
            adFrame.Size = UDim2.fromOffset(w, h)
        end})
end
adHide.MouseButton1Click:Connect(function() Cfg.UI.AD = false; pcall(refreshAD) end)
refreshAD = function()
    local want = Cfg.UI.AD and Cfg.Troll.Hump
    adFrame.Visible = want and true or false
    if not want then return end
    local t = TS.target
    if HUMP.awaitingRespawn then
        adRows.Status.Text = "WAITING RESPAWN"; adRows.Status.TextColor3 = Theme.gold
    elseif HUMP.fallHold > 0 then
        adRows.Status.Text = "HOLDING AIR"; adRows.Status.TextColor3 = Theme.danger
    else
        adRows.Status.Text = "ACTIVE"; adRows.Status.TextColor3 = Theme.success
    end
    adRows.Target.Text = t and t.Name or "—"
    local baseSpeed = Cfg.Troll.HumpSpeed
    local mult = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
    local effSpeed = math.clamp(baseSpeed * mult, 0.5, 200)
    adRows.BaseSpeed.Text = string.format("%.1f Hz", baseSpeed)
    adRows.SpeedMult.Text = Cfg.Troll.HumpAutoDetect and string.format("×%.2f", HUMP.speedMult) or "×1.00"
    adRows.EffSpeed.Text = string.format("%.1f Hz", effSpeed)
    adRows.Tier.Text = HR.tier
    adRows.Air.Text = HR.airborne and "yes" or "no"
    adRows.Fall.Text = HR.fallingUnder and "yes" or "no"
    adRows.Respawn.Text = HUMP.awaitingRespawn and "hold" or "—"
    adRows.Mode.Text = HR.autoMode
end
