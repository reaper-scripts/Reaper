-- REAPER — universal cheat suite. @d9vq on discord.
-- Client is fully self-sufficient — no server relay needed.
-- (Server half kept for optional use; you can ignore it if you don't have Studio access.)

local RS0 = game:GetService("RunService")

--==================== OPTIONAL SERVER HALF ====================
-- This only runs if you paste it into ServerScriptService in Studio.
-- The client half works WITHOUT this.
if RS0:IsServer() then
    local Players = game:GetService("Players")
    local RS = game:GetService("ReplicatedStorage")
    local HttpService = game:GetService("HttpService")
    local KEY_API = "https://proud-hill-8cf1.bigphatnigur.workers.dev"

    local remote = RS:FindFirstChild("ReaperComm")
    if not remote then
        remote = Instance.new("RemoteEvent")
        remote.Name = "ReaperComm"
        remote.Parent = RS
    end

    local users = {}
    local TIMEOUT = 30
    local VERIFY_CACHE = {}

    local function prune()
        local now = tick()
        for p, d in pairs(users) do
            if now - d.lastSeen > TIMEOUT or not p.Parent then users[p] = nil end
        end
    end
    local function list()
        local t = {}
        for p in pairs(users) do if p.Parent then t[#t+1] = p.Name end end
        table.sort(t); return t
    end
    local function bcast(channel, ...)
        local a = {...}
        local n = select("#", ...)
        for p in pairs(users) do
            if p.Parent then
                pcall(function() remote:FireClient(p, channel, table.unpack(a, 1, n)) end)
            end
        end
    end

    local function fetchRankMap()
        local ids = {}
        for _, p in ipairs(Players:GetPlayers()) do ids[#ids+1] = tostring(p.UserId) end
        if #ids == 0 then return {} end
        local ok, res = pcall(function()
            return HttpService:PostAsync(
                KEY_API .. "/lookup",
                HttpService:JSONEncode({robloxIds = ids}),
                Enum.HttpContentType.ApplicationJson
            )
        end)
        if not ok or not res then return {} end
        local okD, data = pcall(function() return HttpService:JSONDecode(res) end)
        if not okD or type(data) ~= "table" then return {} end
        return data.users or {}
    end

    local ranksDirty = false
    local function scheduleBroadcastRanks()
        if ranksDirty then return end
        ranksDirty = true
        task.delay(0.6, function()
            ranksDirty = false
            bcast("rankMap", fetchRankMap())
        end)
    end

    remote.OnServerEvent:Connect(function(plr, channel, payload)
        if not plr or not plr.Parent then return end
        if channel == "register" then
            users[plr] = {lastSeen = tick()}
            bcast("userCount", #list(), list())
            scheduleBroadcastRanks()
        elseif channel == "heartbeat" then
            if users[plr] then users[plr].lastSeen = tick() end
        elseif channel == "unregister" then
            users[plr] = nil
            bcast("userCount", #list(), list())
        end
    end)

    Players.PlayerRemoving:Connect(function(p)
        users[p] = nil
        VERIFY_CACHE[p.UserId] = nil
        bcast("userCount", #list(), list())
        scheduleBroadcastRanks()
    end)
    Players.PlayerAdded:Connect(function(p)
        task.delay(1, function() scheduleBroadcastRanks() end)
    end)

    task.spawn(function()
        while true do task.wait(5); prune() end
    end)
    task.spawn(function()
        while true do task.wait(45); scheduleBroadcastRanks() end
    end)

    print("[REAPER SERVER] optional relay up (client works without this)")
    return
end

--==================== CLIENT HALF ====================
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
local Stats = game:GetService("Stats")
local VirtualUser = game:GetService("VirtualUser")
local TCS = game:GetService("TextChatService")
local RS2 = game:GetService("ReplicatedStorage")
local PhysicsService = game:GetService("PhysicsService")
local TextService = game:GetService("TextService")
local HttpService = game:GetService("HttpService")
local LP = Players.LocalPlayer
local Cam = workspace.CurrentCamera

-- file IO detection
IO = {has = false, reason = "none"}
do
    local function check(env)
        if not env then return nil end
        local ok1, w = pcall(function() return env.writefile end)
        local ok2, r = pcall(function() return env.readfile end)
        local ok3, i = pcall(function() return env.isfile end)
        if ok1 and ok2 and ok3 and type(w)=="function" and type(r)=="function" and type(i)=="function" then
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
print("[REAPER] IO: "..tostring(IO.has).." ("..IO.reason..")")

--==================== HTTP HELPERS ====================
KEY_API = "https://proud-hill-8cf1.bigphatnigur.workers.dev"
FEEDBACK_WEBHOOK = "https://proud-hill-8cf1.bigphatnigur.workers.dev/feedback"
DISCORD_INVITE = "https://discord.gg/AkNuT3Bxyn"

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
    if not req then return false, "no http api available in executor" end
    local headers = { ["Content-Type"] = "application/json" }
    local ok, res = pcall(req, {Url = url, Method = "POST", Headers = headers, Body = body})
    if not ok then return false, "request failed: "..tostring(res) end
    local status, respBody
    if type(res) == "table" then
        status = res.StatusCode or res.Status or res.status
        respBody = res.Body or res.body or res.Data
    end
    if status and tonumber(status) and tonumber(status) >= 400 then
        return false, "HTTP "..tostring(status)..": "..tostring(respBody or "")
    end
    return true, res
end

function postJSON(path, tbl)
    local body = HttpService:JSONEncode(tbl)
    local ok, res = httpPost(KEY_API .. path, body)
    if not ok then return nil, tostring(res) end
    local respBody = nil
    if type(res) == "table" then
        respBody = res.Body or res.body or res.Data
    else
        respBody = res
    end
    local okD, decoded = pcall(function() return HttpService:JSONDecode(respBody) end)
    if okD then return decoded end
    return nil, "bad response"
end

--==================== OWNER / MOD ====================
MY_USER = nil
RemoteRanks = {}

BADGE_STYLE = {
    owner = {label = "OWNER", emoji = "👑", color = Color3.fromRGB(255, 214, 106)},
    mod   = {label = "MOD",   emoji = "🛡️", color = Color3.fromRGB(160, 120, 255)},
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

--==================== COUNTRY + AVATAR CACHE ====================
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
            local okD, data = pcall(function() return HttpService:JSONDecode(body) end)
            if okD and type(data) == "table" and data.country then
                cb(data.country, data.countryCode or "")
                return
            end
        end
        ok, body = httpGet("https://ipapi.co/json/")
        if ok and body then
            local okD, data = pcall(function() return HttpService:JSONDecode(body) end)
            if okD and type(data) == "table" and data.country_name then
                cb(data.country_name, data.country_code or "")
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

--==================== THEME (black + dark purple, compact) ====================
Theme = {
    bg        = Color3.fromRGB(4, 3, 9),
    bgDeep    = Color3.fromRGB(2, 1, 5),
    panel     = Color3.fromRGB(14, 10, 24),
    panel2    = Color3.fromRGB(26, 18, 44),
    panel3    = Color3.fromRGB(46, 30, 72),
    stroke    = Color3.fromRGB(130, 70, 210),
    strokeSoft= Color3.fromRGB(80, 42, 130),
    accent    = Color3.fromRGB(160, 90, 255),
    accent2   = Color3.fromRGB(215, 175, 255),
    accent3   = Color3.fromRGB(230, 110, 255),
    text      = Color3.fromRGB(240, 235, 250),
    muted     = Color3.fromRGB(150, 130, 180),
    success   = Color3.fromRGB(120, 240, 170),
    danger    = Color3.fromRGB(255, 100, 130),
    gold      = Color3.fromRGB(255, 220, 130),
    ticker    = "REAPER · universal cheat suite  ·  @d9vq on discord!",
    tickerColor  = Color3.fromRGB(180, 130, 255),
    tickerAccent = Color3.fromRGB(240, 130, 255),
    sakura = {active = false, leaves = {count = 80, speed = 22, sway = 1.4, size = 5}},
    snow = {count = 60, speed = 25, size = 2},
    rain = {count = 28, speed = 90, thickness = 2},
}
local WINTER = {
    bg = Color3.fromRGB(4, 3, 9),
    panel = Color3.fromRGB(14, 10, 24),
    panel2 = Color3.fromRGB(26, 18, 44),
    panel3 = Color3.fromRGB(46, 30, 72),
    stroke = Color3.fromRGB(130, 70, 210),
    strokeSoft = Color3.fromRGB(80, 42, 130),
    accent = Color3.fromRGB(160, 90, 255),
    accent2 = Color3.fromRGB(215, 175, 255),
    accent3 = Color3.fromRGB(230, 110, 255),
    text = Color3.fromRGB(240, 235, 250),
    muted = Color3.fromRGB(150, 130, 180),
    tickerColor = Color3.fromRGB(180, 130, 255),
    tickerAccent = Color3.fromRGB(240, 130, 255),
}
local SAKURA = {
    bg = Color3.fromRGB(18, 6, 20),
    panel = Color3.fromRGB(38, 14, 40),
    panel2 = Color3.fromRGB(60, 24, 62),
    panel3 = Color3.fromRGB(95, 40, 100),
    stroke = Color3.fromRGB(240, 130, 220),
    strokeSoft = Color3.fromRGB(160, 80, 150),
    accent = Color3.fromRGB(255, 120, 200),
    accent2 = Color3.fromRGB(255, 200, 235),
    accent3 = Color3.fromRGB(230, 120, 255),
    text = Color3.fromRGB(255, 240, 250),
    muted = Color3.fromRGB(215, 165, 210),
    tickerColor = Color3.fromRGB(255, 160, 220),
    tickerAccent = Color3.fromRGB(255, 200, 235),
}
function Theme.setPalette(which)
    local S = (which == "Sakura") and SAKURA or WINTER
    for k, v in pairs(S) do Theme[k] = v end
    Theme.sakura.active = (which == "Sakura")
end

ESPColours = {
    ally = Color3.fromRGB(70, 150, 255), enemy = Color3.fromRGB(255, 78, 96),
    police = Color3.fromRGB(70, 150, 255), criminal = Color3.fromRGB(226, 46, 46),
    prisoner = Color3.fromRGB(255, 156, 62), sheriff = Color3.fromRGB(70, 150, 255),
    murderer = Color3.fromRGB(226, 46, 46), innocent = Color3.fromRGB(96, 226, 126),
    united = Color3.fromRGB(56, 138, 255), iron = Color3.fromRGB(226, 46, 46),
}

--==================== STATE ====================
TS = {target = nil, hovered = nil, humpWasActive = false, lastSpam = 0}
HR = {speed = 0, smoothSpeed = 0, tier = "STILL", airborne = false, airTimer = 0,
      teleporting = false, autoMode = "Hybrid", fallingUnder = false,
      lastGood = nil, respawnPending = false}
HUMP = {
    phase = 0, smoothVel = 0, smoothAir = 0, lastTier = "STILL", lockTimer = 0,
    speedMult = 1.0, ampMult = 1.0, distMult = 1.0,
    fallHold = 0, lastGoodCF = nil, awaitingRespawn = false,
}
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
function addChat(sender, text, isLocal, col, avatar, discordName, country, countryCode, userId, msgId, placeId, timeMs)
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
        msgId = msgId, placeId = placeId,
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
            robloxId = tostring(LP.UserId),
            key = SESSION_KEY,
            text = text,
            placeId = tostring(game.PlaceId),
        })
        local ok, res = httpPost(KEY_API .. "/chat/send", body)
        if not ok then
            notify("Chat failed", tostring(res), Theme.danger, 3)
        end
    end)
    return true
end

--==================== CONFIG ====================
Cfg = {
    Aimbot = {Enabled = false, Key = Enum.UserInputType.MouseButton2, ToggleMode = false,
        FOV = 180, Smoothness = 8, Strength = 6, TargetPart = "Head",
        TeamCheck = false, VisibleOnly = false, ShowCircle = true, Humanize = true, MaxDist = 1000},
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
    UI = {MenuKey = Enum.KeyCode.X, HUDKey = Enum.KeyCode.H,
        HUD = true, ADKey = Enum.KeyCode.J, AD = true,
        MenuOpacity = 0, MenuBlur = true, AnimatedOpen = true,
        MenuResizable = true, MinW = 480, MinH = 380,
        HUDMovable = true, HUDResizable = true, ADMovable = true, ADResizable = true,
        Juicy = true, Notifs = true, Ambient = true,
        ShimmerHeaders = true, BorderGlow = true,
        Sakura = false, SakuraLeaves = 80, SakuraSpeed = 22,
        Crosshair = true, CrosshairSize = 26, CrosshairThick = 2,
        CrosshairPulse = true, HideCrossOnMenu = true,
        ReticleRings = true, ReticleLine = true, ReticleHP = true,
        ReticleMode = "Auto", ReticleR = 140, ReticleG = 220, ReticleB = 255},
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
    local sh = new("Frame", {Size = UDim2.new(1, spread or 12, 1, spread or 12),
        Position = UDim2.new(0.5, 0, 0.5, (spread or 12) / 4),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.new(0, 0, 0),
        BackgroundTransparency = transparency or 0.55,
        BorderSizePixel = 0, ZIndex = (parent.ZIndex or 1) - 1}, parent.Parent)
    corner(sh, radius or 18); return sh
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
end--==================== KEY SYSTEM ====================
SESSION_KEY = nil

local function keyStorePath() return "Reaper_key_" .. tostring(game.PlaceId) .. ".txt" end
local function loadStoredKey()
    if not IO.has then return nil end
    local ok, exists = pcall(IO.isfile, keyStorePath())
    if not ok or not exists then return nil end
    local ok2, c = pcall(IO.read, keyStorePath())
    if not ok2 or not c then return nil end
    c = c:gsub("%s+$", "")
    if c == "" then return nil end
    return c
end
local function saveStoredKey(k) if IO.has and k then pcall(IO.write, keyStorePath(), k) end end
local function clearStoredKey() if IO.has then pcall(IO.write, keyStorePath(), "") end end

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
    local cacheFile = "Reaper_avatar_" .. tostring(LP.UserId) .. ".png"
    local ok, exists = pcall(IO.isfile, cacheFile)
    if not ok or not exists then
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

--==================== WELCOME SCREEN ====================
local function showVerifiedScreen(user)
    local pg = LP:WaitForChild("PlayerGui")
    local existing = pg:FindFirstChild("ReaperVerified")
    if existing then existing:Destroy() end

    local sg = new("ScreenGui", {Name = "ReaperVerified", ResetOnSpawn = false,
        IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, pg)

    local backdrop = new("Frame", {Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = Color3.fromRGB(1, 2, 6), BackgroundTransparency = 0.18,
        BorderSizePixel = 0, ZIndex = 1}, sg)

    local bgDrift = new("Frame", {Size = UDim2.fromScale(1.4, 1.4),
        Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Theme.accent, BackgroundTransparency = 0.96,
        BorderSizePixel = 0, ZIndex = 1}, backdrop)
    corner(bgDrift, 500)
    local bgDriftGrad = new("UIGradient", {
        Color = ColorSequence.new(Theme.accent, Theme.accent3), Rotation = 0}, bgDrift)
    task.spawn(function()
        local a = 0
        while bgDrift.Parent do
            a = (a + 0.4) % 360
            bgDriftGrad.Rotation = a
            RS.RenderStepped:Wait()
        end
    end)

    task.spawn(function()
        while sg.Parent do
            local sz = math.random(2, 4)
            local p = new("Frame", {Size = UDim2.fromOffset(sz, sz),
                Position = UDim2.fromScale(math.random(), 1.05),
                BackgroundColor3 = (math.random() > 0.5) and Theme.accent or Theme.accent3,
                BackgroundTransparency = 0.45 + math.random() * 0.35,
                BorderSizePixel = 0, ZIndex = 2}, backdrop)
            corner(p, sz)
            local dur = 3.5 + math.random() * 3
            Tween:Create(p, TweenInfo.new(dur, Enum.EasingStyle.Linear),
                {Position = UDim2.fromScale(math.random(), -0.1), BackgroundTransparency = 1}):Play()
            task.delay(dur, function() if p and p.Parent then p:Destroy() end end)
            task.wait(0.15)
        end
    end)

    local cardW, cardH = 430, 420
    local card = new("Frame", {Size = UDim2.fromOffset(cardW, cardH),
        Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 + 40),
        BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10,
        ClipsDescendants = false}, sg)
    corner(card, 22)
    grad(card, Color3.fromRGB(11, 15, 28), Color3.fromRGB(3, 5, 12), 90)
    dropShadow(card, 22, 18, 0.55)

    local borderGlow = new("Frame", {Size = UDim2.new(1, 16, 1, 16),
        Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Theme.success, BackgroundTransparency = 0.5,
        BorderSizePixel = 0, ZIndex = 9}, card)
    corner(borderGlow, 26)
    local borderGrad = new("UIGradient", {Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Theme.success),
        ColorSequenceKeypoint.new(0.33, Theme.accent),
        ColorSequenceKeypoint.new(0.66, Theme.accent3),
        ColorSequenceKeypoint.new(1, Theme.success),
    })}, borderGlow)
    task.spawn(function()
        while borderGlow.Parent do
            for i = 0, 360, 4 do
                if not borderGlow.Parent then return end
                borderGrad.Rotation = i
                RS.RenderStepped:Wait()
            end
        end
    end)

    local avatarSize = 92
    local avatarWrap = new("Frame", {Size = UDim2.fromOffset(avatarSize, avatarSize),
        Position = UDim2.new(0.5, 0, 0, 32), AnchorPoint = Vector2.new(0.5, 0),
        BackgroundTransparency = 1, ZIndex = 13}, card)

    local avatarGlow = new("Frame", {Size = UDim2.fromScale(1, 1),
        Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Theme.success, BackgroundTransparency = 0.72,
        BorderSizePixel = 0, ZIndex = 12}, avatarWrap)
    corner(avatarGlow, avatarSize + 20)
    local gT1 = Tween:Create(avatarGlow, TweenInfo.new(2.4, Enum.EasingStyle.Sine),
        {Size = UDim2.fromOffset(avatarSize + 16, avatarSize + 16), BackgroundTransparency = 0.85})
    local gT2 = Tween:Create(avatarGlow, TweenInfo.new(2.4, Enum.EasingStyle.Sine),
        {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 0.72})
    gT1.Completed:Connect(function() if avatarGlow.Parent then gT2:Play() end end)
    gT2.Completed:Connect(function() if avatarGlow.Parent then gT1:Play() end end)
    gT1:Play()

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
        grad(fb, Theme.accent3, Theme.accent, 45)
        new("TextLabel", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
            Text = (user.displayName or user.username or "?"):sub(1, 1):upper(),
            Font = Enum.Font.GothamBlack, TextSize = 42,
            TextColor3 = Color3.new(1, 1, 1), ZIndex = 16}, fb)
    end

    local avatarBorder = new("Frame", {Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1, ZIndex = 16}, avatarHolder)
    corner(avatarBorder, avatarSize / 2)
    stroke(avatarBorder, Theme.success, 2.4, 0.05)

    local nameY = 32 + avatarSize + 14
    new("TextLabel", {Size = UDim2.new(1, -40, 0, 26),
        Position = UDim2.fromOffset(20, nameY), BackgroundTransparency = 1,
        Text = user.displayName or user.username or "Verified",
        Font = Enum.Font.GothamBlack, TextSize = 18,
        TextColor3 = Theme.text, ZIndex = 12}, card)
    new("TextLabel", {Size = UDim2.new(1, -40, 0, 16),
        Position = UDim2.fromOffset(20, nameY + 26), BackgroundTransparency = 1,
        Text = "@" .. (user.username or "unknown"),
        Font = Enum.Font.Gotham, TextSize = 12,
        TextColor3 = Theme.muted, ZIndex = 12}, card)

    local pillW = 120
    local pill = new("Frame", {Size = UDim2.fromOffset(pillW, 20),
        Position = UDim2.new(0.5, -pillW/2, 0, nameY + 48),
        BackgroundColor3 = Theme.success, BackgroundTransparency = 0.85,
        BorderSizePixel = 0, ZIndex = 12}, card)
    corner(pill, 10)
    tStroke(stroke(pill, Theme.success, 1.2, 0.25))
    local pillLbl = new("TextLabel", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
        Text = "● MEMBER VERIFIED", Font = Enum.Font.GothamBold, TextSize = 9,
        TextColor3 = Theme.success, ZIndex = 13}, pill)
    if user.rank and BADGE_STYLE[user.rank] then
        local b = BADGE_STYLE[user.rank]
        pill.BackgroundColor3 = b.color
        pillLbl.Text = b.emoji.." "..b.label
        pillLbl.TextColor3 = b.color
        pcall(function() pill:FindFirstChildOfClass("UIStroke").Color = b.color end)
    end

    local btnY = nameY + 80
    local loadBtn = new("TextButton", {Size = UDim2.new(1, -60, 0, 48),
        Position = UDim2.fromOffset(30, btnY), BackgroundColor3 = Theme.accent,
        Text = "LOAD SCRIPT", Font = Enum.Font.GothamBlack, TextSize = 15,
        TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
        BorderSizePixel = 0, ZIndex = 13, ClipsDescendants = true}, card)
    corner(loadBtn, 12)
    grad(loadBtn, Theme.accent, Theme.accent3, 0)
    local lStroke = stroke(loadBtn, Theme.accent2, 1.5, 0.3)

    loadBtn.MouseEnter:Connect(function() Tween:Create(lStroke, TweenInfo.new(0.15), {Transparency = 0}):Play() end)
    loadBtn.MouseLeave:Connect(function() Tween:Create(lStroke, TweenInfo.new(0.15), {Transparency = 0.3}):Play() end)

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
        Tween:Create(borderGlow, TweenInfo.new(0.4), {BackgroundTransparency = 1}):Play()
        task.wait(0.4)
        sg:Destroy()
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
        local b = new("BlurEffect", {Size = 18, Parent = Lighting})
        b.Name = "ReaperPromptBlur"
        task.spawn(function()
            while promptGui.Parent do task.wait(0.2) end
            b:Destroy()
        end)
    end)

    local backdrop = new("Frame", {Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = Color3.fromRGB(1, 2, 6), BackgroundTransparency = 1,
        BorderSizePixel = 0, ZIndex = 1}, promptGui)
    Tween:Create(backdrop, TweenInfo.new(0.4), {BackgroundTransparency = 0.35}):Play()

    local bgGlow = new("Frame", {Size = UDim2.fromScale(1.2, 1.2),
        Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Theme.accent, BackgroundTransparency = 0.96,
        BorderSizePixel = 0, ZIndex = 2}, backdrop)
    corner(bgGlow, 500)
    local bgGlowGrad = new("UIGradient", {
        Color = ColorSequence.new(Theme.accent, Theme.accent3), Rotation = 0}, bgGlow)
    task.spawn(function()
        local a = 0
        while bgGlow.Parent do
            a = (a + 0.6) % 360
            bgGlowGrad.Rotation = a
            RS.RenderStepped:Wait()
        end
    end)

    local cardW, cardH = 470, 500
    local card = new("Frame", {Size = UDim2.fromOffset(cardW, cardH),
        Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 + 30),
        BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, promptGui)
    corner(card, 22)
    grad(card, Color3.fromRGB(11, 15, 28), Color3.fromRGB(3, 5, 12), 90)
    dropShadow(card, 22, 18, 0.6)

    local borderGlow = new("Frame", {Size = UDim2.new(1, 16, 1, 16),
        Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Theme.accent, BackgroundTransparency = 0.55,
        BorderSizePixel = 0, ZIndex = 9}, card)
    corner(borderGlow, 26)
    local borderGrad = new("UIGradient", {Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Theme.accent),
        ColorSequenceKeypoint.new(0.33, Theme.accent3),
        ColorSequenceKeypoint.new(0.66, Color3.fromRGB(130, 225, 255)),
        ColorSequenceKeypoint.new(1, Theme.accent),
    })}, borderGlow)
    task.spawn(function()
        while borderGlow.Parent do
            for i = 0, 360, 3 do
                if not borderGlow.Parent then return end
                borderGrad.Rotation = i
                RS.RenderStepped:Wait()
            end
        end
    end)

    new("TextLabel", {Size = UDim2.new(1, 0, 0, 24),
        Position = UDim2.fromOffset(0, 24), BackgroundTransparency = 1,
        Text = "DISCORD VERIFICATION", Font = Enum.Font.GothamBlack,
        TextSize = 18, TextColor3 = Theme.accent2, ZIndex = 12}, card)
    new("TextLabel", {Size = UDim2.new(1, -40, 0, 18),
        Position = UDim2.fromOffset(20, 50), BackgroundTransparency = 1,
        Text = "Complete both steps to unlock REAPER.",
        Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = Theme.muted, ZIndex = 12}, card)

    local s1 = new("Frame", {Size = UDim2.new(1, -60, 0, 116),
        Position = UDim2.fromOffset(30, 88), BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.2, BorderSizePixel = 0, ZIndex = 12}, card)
    corner(s1, 12)
    local s1Stroke = stroke(s1, Theme.strokeSoft, 1.2, 0.4)
    grad(s1, Color3.fromRGB(24, 34, 58), Theme.panel, 90)
    local s1Tag = new("Frame", {Size = UDim2.fromOffset(26, 26),
        Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.accent,
        BorderSizePixel = 0, ZIndex = 13}, s1)
    corner(s1Tag, 13)
    local s1TagLbl = new("TextLabel", {Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1, Text = "1", Font = Enum.Font.GothamBlack,
        TextSize = 12, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, s1Tag)
    new("TextLabel", {Size = UDim2.new(1, -56, 0, 18),
        Position = UDim2.fromOffset(48, 14), BackgroundTransparency = 1,
        Text = "JOIN THE DISCORD SERVER", Font = Enum.Font.GothamBold,
        TextSize = 11, TextColor3 = Theme.text,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, s1)
    new("TextLabel", {Size = UDim2.new(1, -56, 0, 14),
        Position = UDim2.fromOffset(48, 32), BackgroundTransparency = 1,
        Text = "Copy the invite link, paste it in your browser, and join.",
        Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, s1)
    local invBtn = new("TextButton", {Size = UDim2.new(1, -28, 0, 40),
        Position = UDim2.fromOffset(14, 62), BackgroundColor3 = Theme.accent,
        Text = "🔗  COPY DISCORD INVITE", Font = Enum.Font.GothamBold, TextSize = 12,
        TextColor3 = Color3.new(1,1,1), AutoButtonColor = false,
        BorderSizePixel = 0, ZIndex = 13, ClipsDescendants = true}, s1)
    corner(invBtn, 9)
    local invGrad = grad(invBtn, Theme.accent, Theme.accent3, 0)
    local invStroke = stroke(invBtn, Theme.accent2, 1.3, 0.3)

    local s2 = new("Frame", {Size = UDim2.new(1, -60, 0, 116),
        Position = UDim2.fromOffset(30, 214), BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.2, BorderSizePixel = 0, ZIndex = 12}, card)
    corner(s2, 12)
    local s2Stroke = stroke(s2, Theme.strokeSoft, 1.2, 0.4)
    grad(s2, Color3.fromRGB(24, 34, 58), Theme.panel, 90)
    local s2Tag = new("Frame", {Size = UDim2.fromOffset(26, 26),
        Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.accent,
        BorderSizePixel = 0, ZIndex = 13}, s2)
    corner(s2Tag, 13)
    local s2TagLbl = new("TextLabel", {Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1, Text = "2", Font = Enum.Font.GothamBlack,
        TextSize = 12, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, s2Tag)
    new("TextLabel", {Size = UDim2.new(1, -56, 0, 18),
        Position = UDim2.fromOffset(48, 14), BackgroundTransparency = 1,
        Text = "AUTHORIZE THE APP", Font = Enum.Font.GothamBold,
        TextSize = 11, TextColor3 = Theme.text,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, s2)
    new("TextLabel", {Size = UDim2.new(1, -56, 0, 14),
        Position = UDim2.fromOffset(48, 32), BackgroundTransparency = 1,
        Text = "Copy the link, open it, and click Authorize.",
        Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, s2)
    local authBtn = new("TextButton", {Size = UDim2.new(1, -28, 0, 40),
        Position = UDim2.fromOffset(14, 62), BackgroundColor3 = Theme.accent,
        Text = "🔐  COPY AUTH LINK", Font = Enum.Font.GothamBold, TextSize = 12,
        TextColor3 = Color3.new(1,1,1), AutoButtonColor = false,
        BorderSizePixel = 0, ZIndex = 13, ClipsDescendants = true}, s2)
    corner(authBtn, 9)
    local authGrad = grad(authBtn, Theme.accent, Theme.accent3, 0)
    local authStroke = stroke(authBtn, Theme.accent2, 1.3, 0.3)

    local statusWrap = new("Frame", {Size = UDim2.new(1, -60, 0, 60),
        Position = UDim2.fromOffset(30, 340), BackgroundColor3 = Theme.panel,
        BackgroundTransparency = 0.4, BorderSizePixel = 0, ZIndex = 12}, card)
    corner(statusWrap, 10)
    local statusStroke = stroke(statusWrap, Theme.strokeSoft, 1, 0.5)
    local dot = new("Frame", {Size = UDim2.fromOffset(9, 9),
        Position = UDim2.fromOffset(14, 26), BackgroundColor3 = Theme.muted,
        BorderSizePixel = 0, ZIndex = 13}, statusWrap)
    corner(dot, 5)
    local statusLbl2 = new("TextLabel", {Size = UDim2.new(1, -40, 1, -10),
        Position = UDim2.fromOffset(30, 5), BackgroundTransparency = 1,
        Text = "Ready. Start with Step 1.",
        Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center,
        TextWrapped = true, ZIndex = 13}, statusWrap)
    local function setStatus(msg, col, dcol)
        statusLbl2.Text = msg
        statusLbl2.TextColor3 = col or Theme.muted
        dot.BackgroundColor3 = dcol or Theme.muted
        Tween:Create(statusStroke, TweenInfo.new(0.2), {Color = dcol or Theme.strokeSoft}):Play()
    end

    local progWrap = new("Frame", {Size = UDim2.new(1, -60, 0, 5),
        Position = UDim2.fromOffset(30, 408), BackgroundColor3 = Theme.panel2,
        BorderSizePixel = 0, ZIndex = 12}, card)
    corner(progWrap, 3)
    local progFill = new("Frame", {Size = UDim2.new(0, 0, 1, 0),
        BackgroundColor3 = Theme.success, BorderSizePixel = 0, ZIndex = 13}, progWrap)
    corner(progFill, 3)
    grad(progFill, Theme.accent, Theme.success, 0)

    local result = {done = false, user = nil}
    local sessionId = nil
    local polling = false
    local step1Done = false

    local function markStep1()
        if step1Done then return end
        step1Done = true
        Tween:Create(s1Stroke, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
        s1Tag.BackgroundColor3 = Theme.success
        s1TagLbl.Text = "✓"
        invBtn.Text = "✓ COPIED — JOIN NOW"
        invGrad.Color = ColorSequence.new(Theme.success, Theme.accent)
        Tween:Create(progFill, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
            {Size = UDim2.new(0.5, 0, 1, 0)}):Play()
    end

    invBtn.MouseEnter:Connect(function() Tween:Create(invStroke, TweenInfo.new(0.15), {Transparency = 0}):Play() end)
    invBtn.MouseLeave:Connect(function() Tween:Create(invStroke, TweenInfo.new(0.15), {Transparency = 0.3}):Play() end)
    invBtn.MouseButton1Click:Connect(function()
        copyToClipboard(DISCORD_INVITE)
        tryOpenBrowser(DISCORD_INVITE)
        markStep1()
        setStatus("Invite copied! Paste it in your browser to join.", Theme.accent2, Theme.accent2)
    end)

    authBtn.MouseEnter:Connect(function() Tween:Create(authStroke, TweenInfo.new(0.15), {Transparency = 0}):Play() end)
    authBtn.MouseLeave:Connect(function() Tween:Create(authStroke, TweenInfo.new(0.15), {Transparency = 0.3}):Play() end)

    local function pollLoop()
        while polling do
            task.wait(2)
            if not polling or not sessionId then break end
            local resp = postJSON("/oauth/poll", {session = sessionId, robloxId = tostring(LP.UserId)})
            if not resp then
                setStatus("Network hiccup — retrying…", Theme.danger, Theme.danger)
            elseif resp.status == "ok" and resp.key then
                SESSION_KEY = resp.key
                saveStoredKey(resp.key)
                Tween:Create(s2Stroke, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
                s2Tag.BackgroundColor3 = Theme.success
                s2TagLbl.Text = "✓"
                authBtn.Text = "✓ VERIFIED"
                authGrad.Color = ColorSequence.new(Theme.success, Theme.accent)
                setStatus("Verified! Loading welcome screen…", Theme.success, Theme.success)
                Tween:Create(progFill, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
                    {Size = UDim2.new(1, 0, 1, 0)}):Play()
                polling = false
                task.wait(0.9)
                Tween:Create(card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                    {Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 - 30), BackgroundTransparency = 1}):Play()
                task.wait(0.35)
                promptGui:Destroy()
                result.done = true
                result.user = {
                    key = resp.key,
                    username = resp.username or "user",
                    displayName = resp.displayName or resp.username or "Verified",
                    avatar = resp.avatar or "",
                    discordId = resp.discordId or "",
                    rank = resp.rank or nil,
                    badgeUrl = resp.badgeUrl or nil,
                }
                return
            elseif resp.status == "pending" then
                dot.BackgroundTransparency = 0.3 + math.sin(tick() * 4) * 0.3
            end
        end
    end

    authBtn.MouseButton1Click:Connect(function()
        if polling then return end
        if not step1Done then
            setStatus("Join the server first (Step 1).", Theme.gold, Theme.gold)
            task.wait(1.2)
        end
        sessionId = "rpr_" .. tostring(LP.UserId) .. "_" ..
            tostring(math.random(100000, 999999)) .. "_" ..
            tostring(math.floor(tick() * 1000))
        local link = KEY_API .. "/oauth/start?session=" .. sessionId
        copyToClipboard(link)
        local opened = tryOpenBrowser(link)
        authBtn.Text = "WAITING FOR AUTH…"
        authBtn.BackgroundColor3 = Theme.panel3
        authGrad.Color = ColorSequence.new(Theme.panel3, Theme.panel2)
        setStatus(opened and
            "Auth link copied AND browser opened. Authorize, then come back." or
            "Auth link copied. Paste it in your browser.",
            Theme.accent2, Theme.accent2)
        polling = true
        task.spawn(pollLoop)
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
        local resp = postJSON("/check", { robloxId = tostring(LP.UserId), key = k })
        if resp and resp.valid then
            return {
                key = k,
                username = resp.username or "user",
                displayName = resp.displayName or resp.username or "Verified",
                avatar = resp.avatar or "",
                discordId = resp.discordId or "",
                rank = resp.rank or nil,
                badgeUrl = resp.badgeUrl or nil,
            }
        end
        return nil
    end

    local stored = loadStoredKey()
    if stored then
        local user = tryCheck(stored)
        if user then
            SESSION_KEY = stored
            print("[REAPER] Restored session from storage")
            return user
        end
        print("[REAPER] Stored key invalid, clearing")
        clearStoredKey()
    end

    if SESSION_KEY then
        local user = tryCheck(SESSION_KEY)
        if user then saveStoredKey(SESSION_KEY); return user end
        SESSION_KEY = nil
    end

    return showKeyPrompt()
end

local verifiedUser = verifySession()
if not verifiedUser then
    warn("[REAPER] Key verification failed. Script locked.")
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

--==================== DRAG / RESIZE ====================
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
        local grip = new("Frame", {Name = "Resize_"..c, Size = UDim2.fromOffset(gs, gs),
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
        grip.InputBegan:Connect(begin); hot.InputBegan:Connect(begin)
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

--==================== ESP colour logic ====================
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
            if n:find("gun") or n:find("revolver") or n:find("pistol") or n:find("sheriff") or n:find("handgun") then
                return "sheriff"
            end
            if n:find("knife") or n:find("dagger") or n:find("blade") or n:find("machete") or n:find("murder") then
                return "murderer"
            end
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
    return b
end
function unboundKeys(n)
    local b = boundKeys()
    local out = {}
    for _, k in ipairs(PREFERRED_KEYS) do
        if not b[k] then
            out[#out+1] = k
            if #out >= n then break end
        end
    end
    return out
end

--==================== EFFECTS ====================
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
        {Size = UDim2.fromOffset(sz*2.6, sz*2.6),
         Position = UDim2.fromOffset(x - sz*1.3, y - sz*1.3),
         BackgroundTransparency = 1})
    local t2 = Tween:Create(s, TweenInfo.new(dur or 0.4, Enum.EasingStyle.Quart), {Transparency = 1, Thickness = 1})
    t1:Play(); t2:Play()
    t1.Completed:Connect(function() r:Destroy() end)
end
function pulse(inst, sc, dur)
    if not Cfg.UI.Juicy then return end
    if not inst or not inst.Parent then return end
    local base = inst:GetAttribute("PulseBase")
    if base == nil then
        base = inst.Size
        inst:SetAttribute("PulseBase", base)
    end
    local s = sc or 1.06
    local b = UDim2.new(base.X.Scale*s, base.X.Offset*s, base.Y.Scale*s, base.Y.Offset*s)
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
    s.Transparency, s.Thickness, s.Color = 0, th + 1.5, col or Theme.accent2
    Tween:Create(s, TweenInfo.new(dur or 0.35), {Transparency = t, Thickness = th}):Play()
end
function shine(inst, col, dur)
    local sh = new("Frame", {
        Size = UDim2.new(0.35, 0, 1, 0), Position = UDim2.new(-0.4, 0, 0, 0),
        BackgroundColor3 = col or Color3.new(1,1,1), BackgroundTransparency = 0.5,
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
        AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = col or Theme.accent,
        BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 38,
    }, parent)
    corner(s, 2)
    parent.MouseEnter:Connect(function() Tween:Create(s, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play() end)
    parent.MouseLeave:Connect(function() Tween:Create(s, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play() end)
end

--==================== NOTIFS ====================
function initNotifs(pg)
    notifGui = new("ScreenGui", {Name = "ReaperNotif", ResetOnSpawn = false,
        IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9996}, pg)
    notifStack = new("Frame", {Size = UDim2.new(0, 300, 1, -40),
        Position = UDim2.new(1, -310, 0, 20), BackgroundTransparency = 1, ZIndex = 1}, notifGui)
    new("UIListLayout", {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder,
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        VerticalAlignment = Enum.VerticalAlignment.Top}, notifStack)
end
function notify(title, msg, col, dur)
    if not Cfg.UI.Notifs or not notifStack then return end
    col = col or Theme.accent
    local card = new("Frame", {Size = UDim2.new(1, 0, 0, 0),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.08,
        BorderSizePixel = 0, ZIndex = 2, ClipsDescendants = true}, notifStack)
    corner(card, 12)
    local st = stroke(card, col, 1.6, 0.15)
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
    card.Position = UDim2.new(1, 60, 0, 0)
    Tween:Create(card, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
        {Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 0, 68)}):Play()
    shine(card, col, 0.7)
    task.delay(dur or 3.5, function()
        if not card or not card.Parent then return end
        local t = Tween:Create(card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
            {Position = UDim2.new(1, 60, 0, 0), BackgroundTransparency = 1})
        t:Play()
        Tween:Create(st, TweenInfo.new(0.35), {Transparency = 1}):Play()
        t.Completed:Connect(function() card:Destroy() end)
    end)
end

--==================== SAVE ====================
function serialize(v, d)
    d = d or 0
    if d > 25 then return "nil" end
    local t = typeof(v)
    if t == "Color3" then return string.format("Color3.new(%.6f,%.6f,%.6f)", v.R, v.G, v.B) end
    if t == "EnumItem" then
        local s = tostring(v)
        if s:match("^Enum%.[%w_]+%.[%w_]+$") then return s end
        return "nil"
    end
    if t == "number" then
        if v ~= v then return "0" end
        if v == math.huge then return "math.huge" end
        if v == -math.huge then return "-math.huge" end
        return tostring(v)
    end
    if t == "boolean" then return tostring(v) end
    if t == "string" then return string.format("%q", v) end
    if t == "table" then
        local p = {}
        for k, val in pairs(v) do
            if val ~= nil then p[#p+1] = "["..serialize(k, d+1).."]="..serialize(val, d+1) end
        end
        return "{"..table.concat(p, ",").."}"
    end
    return "nil"
end
function deserialize(s)
    if not s or s == "" then return nil end
    local f = loadstring or load
    if not f then return nil end
    local fn = f("return "..s)
    if not fn then return nil end
    local ok, r = pcall(fn)
    return ok and r or nil
end
function saveFile() return "Reaper_"..tostring(game.PlaceId)..".txt" end
function autoloadFile() return "Reaper_auto_"..tostring(game.PlaceId)..".txt" end
function globalAutoloadFile() return "Reaper_global_auto.txt" end
saves = _G.__ReaperSaves or {}
_G.__ReaperSaves = saves
autoloadName = _G.__ReaperAutoload or nil
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
    if IO.has then pcall(IO.write, saveFile(), serialize(t)) end
end
function saveLoadout(name, markAuto)
    local t = saveTable()
    local d = {}
    for k, v in pairs(Cfg) do if k ~= "Binds" then d[k] = deepCopy(v) end end
    d.Binds = {}
    for k, v in pairs(Cfg.Binds or {}) do d.Binds[k] = v end
    t[name] = d
    writeSave(t)
    if markAuto then
        autoloadName = name
        _G.__ReaperAutoload = name
        if IO.has then pcall(IO.write, autoloadFile(), name) end
    end
    if IO.has then pcall(IO.write, globalAutoloadFile(), game.PlaceId.."::"..name) end
    return true
end
function loadLoadout(name)
    local t = saveTable()
    local d = t[name]
    if not d then return false end
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
end--==================== GUI ROOT ====================
local pg = LP:WaitForChild("PlayerGui")
gui = new("ScreenGui", {Name = "ReaperUI", ResetOnSpawn = false,
    IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9999}, pg)
initNotifs(pg)

--==================== ANNOUNCEMENTS (fixed — no more screen glitch) ====================
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
    -- kill shadow FIRST so it can't linger
    if c.shadow and c.shadow.Parent then c.shadow:Destroy() end
    if c.card and c.card.Parent then
        local t = Tween:Create(c.card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
            {Position = UDim2.new(0, 0, 0, -180), BackgroundTransparency = 1})
        t:Play()
        if c.stroke then Tween:Create(c.stroke, TweenInfo.new(0.35), {Transparency = 1}):Play() end
        t.Completed:Connect(function()
            if c.card and c.card.Parent then c.card:Destroy() end
        end)
    end
end

function showAnnouncement(data)
    if not annSlot or not annSlot.Parent then return end
    dismissAnnouncement()

    local rank  = data.rank or "owner"
    local style = BADGE_STYLE[rank] or BADGE_STYLE.owner
    local col   = style.color

    local cardWidth = 520
    local bodyPadX = 16
    local bodyWidth = cardWidth - bodyPadX * 2 - 4
    local bodyText = tostring(data.text or "")
    local bodyHeight = 22
    pcall(function()
        local size = TextService:GetTextSize(bodyText, 13, Enum.Font.GothamBold,
            Vector2.new(bodyWidth, 500))
        bodyHeight = math.clamp(size.Y + 4, 22, 220)
    end)

    local headerH = 60
    local cardHeight = headerH + bodyHeight + 18

    -- Shadow created FIRST so it sits behind the card, and parented to annSlot
    local shadow = new("Frame", {
        Size = UDim2.fromOffset(cardWidth + 14, cardHeight + 14),
        Position = UDim2.fromOffset(-7, -160),
        BackgroundColor3 = Color3.new(0, 0, 0),
        BackgroundTransparency = 0.62,
        BorderSizePixel = 0, ZIndex = 2,
    }, annSlot)
    corner(shadow, 16)

    local card = new("Frame", {Size = UDim2.fromOffset(cardWidth, cardHeight),
        Position = UDim2.new(0, 0, 0, -180),
        BackgroundColor3 = Theme.bg, BackgroundTransparency = 0.05,
        BorderSizePixel = 0, ZIndex = 3, ClipsDescendants = true}, annSlot)
    corner(card, 14)
    local st = stroke(card, col, 2, 0.15)
    grad(card, Theme.panel2, Theme.bg, 90)

    new("Frame", {Size = UDim2.new(1, 0, 0, 3),
        BackgroundColor3 = col, BorderSizePixel = 0, ZIndex = 4}, card)

    local iconPlate = new("Frame", {Size = UDim2.fromOffset(36, 36),
        Position = UDim2.fromOffset(14, 13), BackgroundColor3 = col,
        BackgroundTransparency = 0.85, BorderSizePixel = 0, ZIndex = 4}, card)
    corner(iconPlate, 18)
    stroke(iconPlate, col, 1.5, 0.2)
    new("TextLabel", {Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1, Text = style.emoji, Font = Enum.Font.GothamBlack,
        TextSize = 19, TextColor3 = col, ZIndex = 5}, iconPlate)

    new("TextLabel", {Size = UDim2.new(1, -80, 0, 18),
        Position = UDim2.fromOffset(60, 10), BackgroundTransparency = 1,
        Text = string.upper(style.label) .. " ANNOUNCEMENT",
        Font = Enum.Font.GothamBlack, TextSize = 11, TextColor3 = col,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, card)

    new("TextLabel", {Size = UDim2.new(1, -80, 0, 14),
        Position = UDim2.fromOffset(60, 28), BackgroundTransparency = 1,
        Text = "from "..tostring(data.sender or "?"), Font = Enum.Font.Gotham, TextSize = 10,
        TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, card)

    new("TextLabel", {Size = UDim2.fromOffset(bodyWidth, bodyHeight),
        Position = UDim2.fromOffset(bodyPadX, headerH), BackgroundTransparency = 1,
        Text = bodyText, Font = Enum.Font.GothamBold, TextSize = 13,
        TextColor3 = Theme.text, TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 5}, card)

    -- Slide in together
    Tween:Create(card, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Position = UDim2.new(0, 0, 0, 0)}):Play()
    Tween:Create(shadow, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Position = UDim2.fromOffset(-7, 3)}):Play()

    task.spawn(function()
        while card.Parent do
            if iconPlate and iconPlate.Parent then
                Tween:Create(iconPlate, TweenInfo.new(0.9, Enum.EasingStyle.Sine),
                    {BackgroundTransparency = 0.6}):Play()
            end
            task.wait(0.9)
            if not card.Parent then return end
            if iconPlate and iconPlate.Parent then
                Tween:Create(iconPlate, TweenInfo.new(0.9, Enum.EasingStyle.Sine),
                    {BackgroundTransparency = 0.85}):Play()
            end
            task.wait(0.9)
        end
    end)

    local dur = math.clamp(6 + #bodyText * 0.045, 6, 16)
    annCurrent = {card = card, stroke = st, shadow = shadow}
    task.delay(dur, function()
        if annCurrent and annCurrent.card == card then
            dismissAnnouncement()
        end
    end)
end

function sendAnnouncement(text)
    if not isMod() then
        notify("Denied", "You are not an owner/mod", Theme.danger, 2)
        return false
    end
    text = tostring(text or ""):gsub("^%s+",""):gsub("%s+$","")
    if text == "" then return false end
    if not SESSION_KEY or SESSION_KEY == "" then
        notify("Announce", "Not verified yet", Theme.danger, 3)
        return false
    end
    task.spawn(function()
        local body = HttpService:JSONEncode({
            robloxId = tostring(LP.UserId),
            key = SESSION_KEY,
            text = text,
        })
        local ok, res = httpPost(KEY_API .. "/announce/send", body)
        if ok then
            -- success — no local echo, the poll loop will fetch it
            notify("Announcement sent", "Broadcast to all servers", Theme.success, 3)
        else
            notify("Announce failed", tostring(res), Theme.danger, 4)
        end
    end)
    return true
end

--==================== CROSSHAIR ====================
crossGui = new("ScreenGui", {Name = "ReaperCross", ResetOnSpawn = false,
    IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10000}, pg)
crosshair = new("Frame", {Size = UDim2.fromOffset(40, 40), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundTransparency = 1, Visible = false}, crossGui)
reticle = new("Frame", {Size = UDim2.fromOffset(110, 110), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundTransparency = 1, Visible = false}, crossGui)
RSIZE = 110
ring1 = new("Frame", {Size = UDim2.fromOffset(RSIZE, RSIZE), BackgroundTransparency = 1, ZIndex = 6}, reticle)
corner(ring1, RSIZE); ring1S = stroke(ring1, Theme.accent, 2, 0.15)
ring2 = new("Frame", {Size = UDim2.fromOffset(RSIZE-14, RSIZE-14),
    Position = UDim2.fromOffset(7, 7), BackgroundTransparency = 1, ZIndex = 7}, reticle)
corner(ring2, RSIZE); ring2S = stroke(ring2, Theme.accent, 1, 0.5)
trackLine = new("Frame", {BackgroundColor3 = Theme.accent, BackgroundTransparency = 0.55,
    AnchorPoint = Vector2.new(0, 0.5), BorderSizePixel = 0, ZIndex = 5, Visible = false}, crossGui)
hpBar = new("Frame", {Size = UDim2.fromOffset(4, 60), Position = UDim2.new(1, 10, 0.5, -30),
    BackgroundColor3 = Theme.danger, BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 10}, reticle)
corner(hpBar, 2)
hpFill = new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Theme.success,
    BorderSizePixel = 0, ZIndex = 11}, hpBar)
corner(hpFill, 2)
retName = new("TextLabel", {Size = UDim2.new(1, 60, 0, 18), Position = UDim2.new(0, -30, 1, 10),
    BackgroundTransparency = 1, Font = Enum.Font.GothamBlack, TextSize = 14, TextColor3 = Theme.accent2,
    Text = "", TextStrokeTransparency = 0.3, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)
retDist = new("TextLabel", {Size = UDim2.new(1, 60, 0, 13), Position = UDim2.new(0, -30, 1, 28),
    BackgroundTransparency = 1, Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Theme.muted,
    Text = "", TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)
retActions = new("Frame", {Size = UDim2.new(1, 100, 0, 20),
    Position = UDim2.new(0, -50, 1, 46), BackgroundTransparency = 1, ZIndex = 13}, reticle)
new("UIListLayout", {FillDirection = Enum.FillDirection.Horizontal,
    HorizontalAlignment = Enum.HorizontalAlignment.Center,
    VerticalAlignment = Enum.VerticalAlignment.Center,
    Padding = UDim.new(0, 5)}, retActions)
rainbowH = 0
RS.Heartbeat:Connect(function(dt) rainbowH = (rainbowH + dt * 0.5) % 1 end)

--==================== RETICLE ACTIONS ====================
function runAction(id)
    local t = TS.hovered
    if not t or not t.Character then
        notify("No target", "Hover someone first", Theme.danger, 2); return
    end
    if id == "teleport" then
        local tR = t.Character:FindFirstChild("HumanoidRootPart")
        local mR = hrp()
        if tR and mR then
            mR.AssemblyLinearVelocity = Vector3.zero
            mR.CFrame = tR.CFrame + Vector3.new(0, 3, 0)
            mR.AssemblyLinearVelocity = Vector3.zero
            notify("Teleported", t.Name, Theme.accent)
        end
    elseif id == "spectate" then
        if RA.spectateTarget == t then
            RA.spectateTarget = nil; RA.spectateZoom = 1
            notify("Spectate off", "", Theme.muted, 1.5)
        else
            RA.spectateTarget = t; RA.spectateZoom = 1
            notify("Spectating", t.Name.." · scroll to zoom", Theme.accent3, 3)
        end
    elseif id == "hump" then
        TS.target = t
        if not Cfg.Troll.Hump and widgets["Troll.Hump"] then widgets["Troll.Hump"].set(true) end
        HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
        HUMP.lockTimer = 1.5; HUMP.awaitingRespawn = false; HUMP.fallHold = 0
        notify("Humping", t.Name, Theme.gold)
    end
end
function rebuildChips()
    for _, c in ipairs(retActions:GetChildren()) do
        if not c:IsA("UIListLayout") then c:Destroy() end
    end
    local list = {
        {id = "teleport", label = "TP", key = RA.keys.teleport, col = Theme.accent},
        {id = "spectate", label = "SPEC", key = RA.keys.spectate, col = Theme.accent3},
    }
    if Cfg.Troll.Hump then
        list[#list+1] = {id = "hump", label = "HUMP", key = RA.keys.hump, col = Theme.gold}
    end
    for _, a in ipairs(list) do
        if a.key then
            local chip = new("TextButton", {
                Size = UDim2.new(0, 0, 1, 0), AutomaticSize = Enum.AutomaticSize.X,
                BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.2,
                Text = a.label.." ["..a.key.Name.."]", Font = Enum.Font.GothamBold,
                TextSize = 9, TextColor3 = a.col, AutoButtonColor = false, ZIndex = 14,
            }, retActions)
            corner(chip, 4)
            new("UIPadding", {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, chip)
            local cs = stroke(chip, a.col, 1, 0.35)
            chip.MouseButton1Click:Connect(function() runAction(a.id); pulse(chip, 1.1, 0.08) end)
            chip.MouseEnter:Connect(function()
                Tween:Create(chip, TweenInfo.new(0.12), {BackgroundTransparency = 0}):Play()
                cs.Transparency = 0
            end)
            chip.MouseLeave:Connect(function()
                Tween:Create(chip, TweenInfo.new(0.15), {BackgroundTransparency = 0.2}):Play()
                cs.Transparency = 0.35
            end)
        end
    end
end
do
    local u = unboundKeys(3)
    RA.keys.teleport = u[1]; RA.keys.spectate = u[2]; RA.keys.hump = u[3]
end

--==================== CROSSHAIR / RETICLE loop ====================
task.spawn(function()
    while crossGui.Parent do
        RS.RenderStepped:Wait()
        local show = Cfg.Troll.TapTarget and Cfg.UI.Crosshair
        if Cfg.UI.HideCrossOnMenu and menu and menu.Visible then show = false end
        if not show then
            crosshair.Visible, reticle.Visible, trackLine.Visible = false, false, false
        else
            crosshair.Visible = true
            local m = UIS:GetMouseLocation()
            crosshair.Position = UDim2.fromOffset(m.X, m.Y)
            crosshair.Size = UDim2.fromOffset(Cfg.UI.CrosshairSize, Cfg.UI.CrosshairSize)
            for _, t in ipairs(crosshair:GetChildren()) do
                if t:IsA("Frame") and t ~= crosshair then t:Destroy() end
            end
            local sz, tk = Cfg.UI.CrosshairSize, Cfg.UI.CrosshairThick
            local arm = math.max(6, math.floor(sz * 0.32))
            local gap = math.max(2, math.floor(sz * 0.15))
            for _, spec in ipairs({
                {Vector2.new(0, -(gap + arm/2)), Vector2.new(tk, arm)},
                {Vector2.new(0, (gap + arm/2)), Vector2.new(tk, arm)},
                {Vector2.new(-(gap + arm/2), 0), Vector2.new(arm, tk)},
                {Vector2.new((gap + arm/2), 0), Vector2.new(arm, tk)},
            }) do
                local f = new("Frame", {Size = UDim2.fromOffset(spec[2].X, spec[2].Y),
                    Position = UDim2.new(0.5, spec[1].X, 0.5, spec[1].Y),
                    AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = Theme.accent,
                    BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 5}, crosshair)
                corner(f, 1)
            end
            local ray = Cam:ViewportPointToRay(m.X, m.Y)
            local params = RaycastParams.new()
            params.FilterType = Enum.RaycastFilterType.Exclude
            params.FilterDescendantsInstances = {LP.Character}
            local res = workspace:Raycast(ray.Origin, ray.Direction * 3000, params)
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
                                if d <= bestD then best, bestD = p, d end
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
                        local pv = Cfg.UI.CrosshairPulse and (0.96 + math.sin(tick()*7)*0.06) or 1
                        local ss = RSIZE * pv
                        reticle.Position = UDim2.fromOffset(sp.X, sp.Y)
                        reticle.Size = UDim2.fromOffset(ss, ss)
                        local sc = ss / RSIZE
                        ring1.Size = UDim2.fromOffset(ss, ss)
                        ring2.Size = UDim2.fromOffset(ss - 14*sc, ss - 14*sc)
                        ring2.Position = UDim2.fromOffset(7*sc, 7*sc)
                        ring1S.Color, ring2S.Color = col, col
                        retName.TextColor3 = col
                        retName.Text = (picked.DisplayName or picked.Name).." "..roleLabel(picked)
                        local dist = (Cam.CFrame.Position - head.Position).Magnitude
                        retDist.Text = string.format("⌖ %d studs", math.floor(dist))
                        if Cfg.UI.ReticleHP and h then
                            hpBar.Visible = true
                            local hpx = math.clamp(h.Health / h.MaxHealth, 0, 1)
                            hpFill.Size = UDim2.fromScale(1, hpx)
                            hpFill.Position = UDim2.fromScale(0, 1 - hpx)
                            hpFill.BackgroundColor3 = hpx > 0.5 and Theme.success or (hpx > 0.25 and Theme.gold or Theme.danger)
                        else hpBar.Visible = false end
                        if Cfg.UI.ReticleLine then
                            local dx, dy = sp.X - m.X, sp.Y - m.Y
                            local len = math.sqrt(dx*dx + dy*dy)
                            if len > 25 then
                                trackLine.Visible = true
                                trackLine.Position = UDim2.fromOffset(m.X, m.Y)
                                trackLine.Size = UDim2.fromOffset(len, 1)
                                trackLine.Rotation = math.deg(math.atan2(dy, dx))
                                trackLine.BackgroundColor3 = col
                            else trackLine.Visible = false end
                        else trackLine.Visible = false end
                    else
                        reticle.Visible, trackLine.Visible = false, false
                    end
                end
            else
                reticle.Visible, trackLine.Visible = false, false
            end
        end
    end
end)

RS.RenderStepped:Connect(function(dt)
    pcall(function()
        local t = RA.spectateTarget
        if t and (not t.Parent or not t.Character) then
            RA.spectateTarget = nil
            Cam.CameraType = Enum.CameraType.Custom
            RA.spectateZoom = 1
            return
        end
        if t and t.Character and not Cfg.Movement.Freecam then
            local hrp_ = t.Character:FindFirstChild("HumanoidRootPart")
            if hrp_ then
                Cam.CameraType = Enum.CameraType.Scriptable
                local d = 8 * RA.spectateZoom
                local want = hrp_.Position + hrp_.CFrame.LookVector * -d + Vector3.new(0, 3*RA.spectateZoom, 0)
                Cam.CFrame = Cam.CFrame:Lerp(CFrame.new(want, hrp_.Position + hrp_.CFrame.LookVector), math.clamp(dt*6, 0, 1))
            end
        elseif Cam.CameraType == Enum.CameraType.Scriptable and not Cfg.Movement.Freecam then
            Cam.CameraType = Enum.CameraType.Custom
        end
    end)
end)

--==================== LOGO ====================
LW, LH = 160, 50
logo = new("TextButton", {Name = "Logo", Size = UDim2.fromOffset(LW, LH),
    Position = UDim2.new(0.5, -LW/2, 0, 12), BackgroundTransparency = 1, Text = "",
    AutoButtonColor = false, ZIndex = 60}, gui)
aura = tAcc(new("Frame", {Size = UDim2.fromScale(1.08, 1.2),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Theme.accent, BackgroundTransparency = 0.62,
    BorderSizePixel = 0, ZIndex = 1}, logo))
corner(aura, 14)
back = tBg(new("Frame", {Size = UDim2.fromScale(1, 1),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, logo))
corner(back, 14); grad(back, Theme.panel, Theme.bg, 90)
backStroke = tAcc(stroke(back, Theme.accent, 1.5, 0.2))
dropShadow(back, 14, 10, 0.5)
ring = new("Frame", {Size = UDim2.fromScale(1, 1),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundTransparency = 1, ZIndex = 3}, logo)
corner(ring, 14)
new("UIStroke", {Color = Color3.new(1, 1, 1), Thickness = 1.4}, ring)
ringG = new("UIGradient", {Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 90, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(230, 110, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 90, 255)),
}), Rotation = 0}, ring:FindFirstChildOfClass("UIStroke"))
plate = tPanel(new("Frame", {Size = UDim2.fromOffset(34, 34),
    Position = UDim2.new(0, 9, 0.5, -17), BackgroundColor3 = Theme.panel,
    BorderSizePixel = 0, ZIndex = 4}, back))
corner(plate, 17); tAcc(stroke(plate, Theme.accent, 1.4, 0.15))
flame = new("Frame", {Size = UDim2.fromOffset(14, 14),
    Position = UDim2.fromScale(0.5, 0.62), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Theme.accent, BorderSizePixel = 0, Rotation = 45, ZIndex = 5}, plate)
corner(flame, 3); tAcc(flame)
grad(flame, Color3.fromRGB(215, 175, 255), Color3.fromRGB(120, 40, 200), 90)
flameTop = new("Frame", {Size = UDim2.fromOffset(7, 7),
    Position = UDim2.fromScale(0.5, 0.42), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Color3.fromRGB(245, 220, 255), BorderSizePixel = 0, Rotation = 45, ZIndex = 6}, plate)
corner(flameTop, 2)
title = new("TextLabel", {Size = UDim2.new(1, -50, 0, 24), Position = UDim2.fromOffset(50, 6),
    BackgroundTransparency = 1, Text = "REAPER", Font = Enum.Font.GothamBlack,
    TextSize = 16, TextColor3 = Color3.new(1, 1, 1), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back)
titleG = new("UIGradient", {Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(215, 175, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(180, 100, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 130, 255)),
}), Rotation = 20}, title)
tAcc(stroke(title, Theme.accent, 1.2, 0.2))
tMuted(new("TextLabel", {Size = UDim2.new(1, -50, 0, 11), Position = UDim2.fromOffset(51, 30),
    BackgroundTransparency = 1, Text = "CLICK · X", Font = Enum.Font.GothamBold,
    TextSize = 7, TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back))
task.spawn(function()
    while ring.Parent do
        for i = 0, 360, 5 do
            if not ring.Parent then return end
            ringG.Rotation = i
            RS.RenderStepped:Wait()
        end
    end
end)
task.spawn(function()
    while aura.Parent do
        local t1 = Tween:Create(aura, TweenInfo.new(1.3, Enum.EasingStyle.Sine),
            {BackgroundTransparency = 0.82, Size = UDim2.fromScale(1.14, 1.26)})
        t1:Play(); t1.Completed:Wait()
        local t2 = Tween:Create(aura, TweenInfo.new(1.3, Enum.EasingStyle.Sine),
            {BackgroundTransparency = 0.58, Size = UDim2.fromScale(1.06, 1.12)})
        t2:Play(); t2.Completed:Wait()
    end
end)
logo.MouseEnter:Connect(function()
    Tween:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0}):Play()
    pulse(back, 1.03, 0.1)
end)
logo.MouseLeave:Connect(function()
    Tween:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0.2}):Play()
end)

--==================== MENU (compact, dark purple) ====================
menu = tBg(new("Frame", {Name = "Menu", Size = UDim2.fromOffset(660, 500),
    Position = UDim2.new(0.5, -330, 0.5, -250), BackgroundColor3 = Theme.bg,
    BorderSizePixel = 0, ClipsDescendants = true, Visible = false, ZIndex = 30}, gui))
corner(menu, 14)
menuStroke = tAcc(stroke(menu, Theme.accent, 2, 0.25))
dropShadow(menu, 14, 18, 0.65)
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
bgGlow = new("Frame", {Size = UDim2.fromScale(1.5, 1.5),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Theme.accent, BorderSizePixel = 0, BackgroundTransparency = 0.95, ZIndex = 0}, menu)
corner(bgGlow, 500)
bgGlowG = new("UIGradient", {Color = ColorSequence.new(Theme.accent, Theme.accent3)}, bgGlow)
task.spawn(function()
    while menu.Parent do
        for r = 0, 360, 3 do
            if not menu.Parent then return end
            bgGlowG.Rotation = r
            RS.RenderStepped:Wait()
        end
    end
end)
task.spawn(function()
    while menu.Parent do
        if menuStroke and menuStroke.Parent then
            menuStroke.Transparency = 0.15 + math.sin(tick() * 2) * 0.15
        end
        RS.RenderStepped:Wait()
    end
end)
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
            BackgroundTransparency = 0.55 + math.random()*0.3,
            BorderSizePixel = 0, ZIndex = 2}, ambient)
        corner(f, sz)
        ambientParts[#ambientParts+1] = {inst = f,
            vx = (math.random()-0.5)*0.015, vy = (math.random()-0.5)*0.015,
            phase = math.random() * math.pi * 2}
    end
end
buildAmbient()
snowLayer = new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
    ClipsDescendants = true, ZIndex = 1}, menu)
snowflakes = {}
function buildSnow()
    for _, s in ipairs(snowflakes) do if s.inst then s.inst:Destroy() end end
    snowflakes = {}
    for i = 1, Theme.snow.count do
        local sz = Theme.snow.size + math.random() * 2
        local f = new("Frame", {Size = UDim2.fromOffset(sz, sz),
            Position = UDim2.fromScale(math.random(), math.random()),
            BackgroundColor3 = Color3.fromRGB(240, 248, 255),
            BackgroundTransparency = 0.15 + math.random()*0.5,
            BorderSizePixel = 0, ZIndex = 1}, snowLayer)
        corner(f, sz)
        snowflakes[#snowflakes+1] = {inst = f,
            speed = Theme.snow.speed * (0.6 + math.random()*0.8),
            drift = (math.random()-0.5)*12}
    end
end
buildSnow()
rainLayer = new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
    ClipsDescendants = true, ZIndex = 4}, menu)
rainTrails = {}
function buildRain()
    for _, r in ipairs(rainTrails) do if r.inst then r.inst:Destroy() end end
    rainTrails = {}
    for i = 1, Theme.rain.count do
        local h = 18 + math.random() * 46
        local holder = new("Frame", {Size = UDim2.fromOffset(Theme.rain.thickness + 1, h),
            Position = UDim2.fromScale(math.random(), math.random()),
            BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 5}, rainLayer)
        local trail = new("Frame", {Size = UDim2.fromScale(1, 1),
            BackgroundColor3 = Color3.fromRGB(180, 220, 255),
            BackgroundTransparency = 0.45, BorderSizePixel = 0, ZIndex = 5}, holder)
        corner(trail, 3)
        new("UIGradient", {Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 1),
            NumberSequenceKeypoint.new(0.55, 0.7),
            NumberSequenceKeypoint.new(1, 0.05),
        }), Rotation = 90}, trail)
        rainTrails[#rainTrails+1] = {inst = holder, speed = Theme.rain.speed * (0.7 + math.random()*0.7)}
    end
end
buildRain()
sakuraLayer = new("Frame", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
    ClipsDescendants = true, ZIndex = 3}, menu)
sakuraLeaves = {}
function buildSakura()
    for _, l in ipairs(sakuraLeaves) do if l.inst then l.inst:Destroy() end end
    sakuraLeaves = {}
    if not Theme.sakura.active then return end
    local n = Theme.sakura.leaves.count
    for i = 1, n do
        local sz = Theme.sakura.leaves.size + math.random() * 3
        local leaf = new("Frame", {
            Size = UDim2.fromOffset(sz, sz * 0.55),
            Position = UDim2.fromScale(math.random(), math.random()),
            BackgroundColor3 = (math.random() > 0.5)
                and Color3.fromRGB(255, 175, 210)
                or Color3.fromRGB(255, 215, 235),
            BackgroundTransparency = 0.1 + math.random() * 0.35,
            BorderSizePixel = 0, Rotation = math.random() * 360, ZIndex = 3,
        }, sakuraLayer)
        corner(leaf, math.floor(sz))
        sakuraLeaves[#sakuraLeaves+1] = {inst = leaf,
            speed = Theme.sakura.leaves.speed * (0.6 + math.random()*0.8),
            sway = math.random() * math.pi * 2,
            swaySpeed = 0.6 + math.random() * 1.3,
            swayAmp = Theme.sakura.leaves.sway * (0.5 + math.random()),
            rot = (math.random()-0.5) * 140}
    end
end
buildSakura()

--==================== HEADER ====================
header = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 54),
    BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(header, 14)
grad(header, Color3.fromRGB(48, 26, 82), Color3.fromRGB(7, 5, 16), 90)
new("Frame", {Size = UDim2.new(1, 0, 0, 2), Position = UDim2.new(0, 0, 1, -2),
    BackgroundColor3 = Theme.accent, BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 32}, header)

tAcc2(new("TextLabel", {Size = UDim2.fromOffset(100, 54), Position = UDim2.fromOffset(14, 0),
    BackgroundTransparency = 1, Text = "REAPER", Font = Enum.Font.GothamBlack,
    TextSize = 17, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header))

local _badgeLbl = new("TextLabel", {Size = UDim2.new(0, 120, 0, 20),
    Position = UDim2.fromOffset(110, 17), BackgroundTransparency = 1,
    Text = "", Font = Enum.Font.GothamBlack, TextSize = 11,
    TextColor3 = Theme.gold, TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header)

local _avSize = 38
local _avWrap = new("Frame", {Size = UDim2.fromOffset(_avSize, _avSize),
    Position = UDim2.new(1, -320, 0.5, -19), BackgroundTransparency = 1, ZIndex = 33}, header)
local _avImg = new("ImageLabel", {Size = UDim2.fromScale(1, 1),
    BackgroundColor3 = Theme.panel3, BorderSizePixel = 0, Image = "", ZIndex = 34}, _avWrap)
corner(_avImg, _avSize / 2)
local _avLetter = new("TextLabel", {Size = UDim2.fromScale(1, 1),
    BackgroundTransparency = 1, Text = "?", Font = Enum.Font.GothamBlack, TextSize = 16,
    TextColor3 = Color3.new(1,1,1), ZIndex = 35}, _avWrap)
local _avBorder = new("Frame", {Size = UDim2.fromScale(1, 1),
    BackgroundTransparency = 1, ZIndex = 36}, _avWrap)
corner(_avBorder, _avSize / 2)
tAcc(stroke(_avBorder, Theme.accent, 1.6, 0.15))

local _nameLbl = new("TextLabel", {Size = UDim2.new(0, 240, 0, 16),
    Position = UDim2.new(1, -278, 0.5, -19), BackgroundTransparency = 1,
    Text = "@loading…", Font = Enum.Font.GothamBold, TextSize = 11,
    TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)
local _metaLbl = new("TextLabel", {Size = UDim2.new(0, 240, 0, 13),
    Position = UDim2.new(1, -278, 0.5, 1), BackgroundTransparency = 1,
    Text = "🌍 —   ⏱ 00:00:00", Font = Enum.Font.Gotham, TextSize = 9,
    TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)

task.spawn(function()
    local lastAvatarAttempt = 0
    while _nameLbl.Parent do
        if MY_USER then
            _nameLbl.Text = "@" .. (MY_USER.username or "user")
            if MY_USER.avatar and MY_USER.avatar ~= "" and _avImg.Image == "" then
                local now = tick()
                if now - lastAvatarAttempt > 3 then
                    lastAvatarAttempt = now
                    local asset = downloadAvatar(MY_USER.avatar)
                    if asset then
                        _avImg.Image = asset
                        _avImg.ScaleType = Enum.ScaleType.Crop
                        _avLetter.Visible = false
                    end
                end
            end
            if _avLetter.Visible then
                _avLetter.Text = (MY_USER.displayName or MY_USER.username or "?"):sub(1,1):upper()
            end
            local flag = flagEmoji(MY_USER.countryCode)
            local elapsed = math.max(0, tick() - (MY_USER.connectedAt or tick()))
            local hh = math.floor(elapsed / 3600)
            local mm = math.floor((elapsed % 3600) / 60)
            local ss = math.floor(elapsed % 60)
            _metaLbl.Text = string.format("%s %s   ⏱ %02d:%02d:%02d",
                flag, (MY_USER.country ~= "" and MY_USER.country) or "—", hh, mm, ss)

            local rank = MY_USER.rank
            local b = rank and BADGE_STYLE[rank]
            if b then
                _badgeLbl.Text = b.emoji.." "..b.label
                _badgeLbl.TextColor3 = b.color
            else
                _badgeLbl.Text = ""
            end
        end
        task.wait(0.5)
    end
end)

closeBtn = new("TextButton", {Size = UDim2.fromOffset(24, 24),
    Position = UDim2.new(1, -32, 0, 9), BackgroundColor3 = Theme.danger, Text = "✕",
    Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1,1,1),
    AutoButtonColor = false, ZIndex = 33}, header)
corner(closeBtn, 6)
closeBtn.MouseButton1Click:Connect(function() closeMenu() end)

--==================== TICKER ====================
TICKER_HEIGHT = 28
tickerBar = tPanel(new("Frame", {Size = UDim2.new(1, -20, 0, TICKER_HEIGHT),
    Position = UDim2.fromOffset(10, 60), BackgroundColor3 = Theme.panel,
    BackgroundTransparency = 0.15, BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 31}, menu))
corner(tickerBar, 8)
grad(tickerBar, Color3.fromRGB(16, 10, 30), Color3.fromRGB(4, 3, 10), 90)
tickerStroke = stroke(tickerBar, Theme.tickerColor, 1.4, 0.3)

tickerGlow = new("TextLabel", {Size = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 1,
    Text = Theme.ticker, Font = Enum.Font.GothamBlack, TextSize = 15,
    TextColor3 = Theme.tickerColor, TextTransparency = 0.55,
    TextXAlignment = Enum.TextXAlignment.Left, AutomaticSize = Enum.AutomaticSize.X, ZIndex = 32}, tickerBar)
tickerLabel = new("TextLabel", {Size = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 1,
    Text = Theme.ticker, Font = Enum.Font.GothamBlack, TextSize = 13,
    TextColor3 = Theme.tickerColor,
    TextStrokeTransparency = 0.35,
    TextStrokeColor3 = Color3.fromRGB(4, 3, 10),
    TextXAlignment = Enum.TextXAlignment.Left, AutomaticSize = Enum.AutomaticSize.X, ZIndex = 34}, tickerBar)
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
        tickerGlow.Position = UDim2.fromOffset(tickerX + 1, 1)
    end)
end)
task.spawn(function()
    local phase = 0
    while tickerLabel.Parent do
        phase = (phase + 0.005) % 1
        tickerLabelGrad.Offset = Vector2.new(phase, 0)
        RS.RenderStepped:Wait()
    end
end)

rail = tPanel(new("Frame", {Size = UDim2.new(0, 120, 1, -130),
    Position = UDim2.fromOffset(10, 96), BackgroundColor3 = Theme.panel,
    BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(rail, 10)
new("UIListLayout", {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, rail)
new("UIPadding", {PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 5), PaddingRight = UDim.new(0, 5)}, rail)
tabIndicator = new("Frame", {Size = UDim2.new(1, -10, 0, 26),
    Position = UDim2.fromOffset(5, 6), BackgroundColor3 = Theme.accent,
    BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 31}, rail)
corner(tabIndicator, 6)
new("UIGradient", {Color = ColorSequence.new(Theme.accent, Theme.accent3)}, tabIndicator)
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
pages = {}; tabs = {}; widgets = {}
toggleLabels = {}
pendingKeybind = nil
refreshHUD = function() end
refreshAD = function() end
function resolvePage(p) if type(p) == "string" then return pages[p] end; return p end

function makeTab(id, title)
    local tab = tPanel2(new("TextButton", {Size = UDim2.new(1, 0, 0, 26),
        BackgroundColor3 = Theme.panel2, Text = title, Font = Enum.Font.GothamBold,
        TextSize = 10, TextColor3 = Theme.muted, AutoButtonColor = false,
        LayoutOrder = #rail:GetChildren(), ZIndex = 32}, rail))
    corner(tab, 7)
    tStroke(stroke(tab, Theme.strokeSoft, 1, 0.5))
    tabs[id] = tab
    local page = new("ScrollingFrame", {Name = "Page_"..id, Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 3,
        ScrollBarImageColor3 = Theme.accent, CanvasSize = UDim2.new(0, 0, 0, 0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y, Visible = false, ZIndex = 32}, content)
    new("UIListLayout", {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, page)
    new("UIPadding", {PaddingTop = UDim.new(0, 10), PaddingLeft = UDim.new(0, 10),
        PaddingRight = UDim.new(0, 10), PaddingBottom = UDim.new(0, 10)}, page)
    pages[id] = page
    tab.MouseButton1Click:Connect(function()
        for _, p in pairs(pages) do p.Visible = false end
        page.Visible = true
        for _, t in pairs(tabs) do
            t.TextColor3 = Theme.muted
            t.BackgroundColor3 = Theme.panel2
        end
        tab.TextColor3 = Color3.new(1, 1, 1)
        tab.BackgroundColor3 = Theme.accent
        glow(tab, Theme.accent2, 0.4)
        shine(tab, Color3.new(1, 1, 1), 0.5)
        local ty = tab.AbsolutePosition.Y - rail.AbsolutePosition.Y
        Tween:Create(tabIndicator, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
            {Position = UDim2.fromOffset(5, ty)}):Play()
        ripple(tab, tab.AbsoluteSize.X/2, tab.AbsoluteSize.Y/2, Theme.accent2, 18, 0.5)
    end)
    tab.MouseEnter:Connect(function()
        if tab.BackgroundColor3 ~= Theme.accent then
            Tween:Create(tab, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel3}):Play()
        end
    end)
    tab.MouseLeave:Connect(function()
        if tab.BackgroundColor3 ~= Theme.accent then
            Tween:Create(tab, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
        end
    end)
end

function section(pageId, title, icon)
    local page = resolvePage(pageId)
    if not page then return nil end
    local wrap = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 24),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(wrap, 7)
    tStroke(stroke(wrap, Theme.strokeSoft, 1, 0.5))
    local hg = grad(wrap, Color3.fromRGB(90, 48, 150), Theme.panel2, 0)
    new("Frame", {Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = Theme.accent,
        BorderSizePixel = 0, ZIndex = 35}, wrap)
    new("TextLabel", {Size = UDim2.new(1, -14, 1, 0), Position = UDim2.fromOffset(12, 0),
        BackgroundTransparency = 1, Text = (icon and icon.."  " or "")..title,
        Font = Enum.Font.GothamBlack, TextSize = 10, TextColor3 = Theme.accent2,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, wrap)
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
    local hdr = tPanel2(new("TextButton", {Size = UDim2.new(1, 0, 0, 24),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15, Text = "",
        AutoButtonColor = false, LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(hdr, 7)
    tStroke(stroke(hdr, Theme.strokeSoft, 1, 0.5))
    grad(hdr, Color3.fromRGB(90, 48, 150), Theme.panel2, 0)
    local arrow = new("TextLabel", {Size = UDim2.fromOffset(18, 24), Position = UDim2.fromOffset(8, 0),
        BackgroundTransparency = 1, Text = state and "▼" or "▶",
        Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2, ZIndex = 34}, hdr)
    new("TextLabel", {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(26, 0),
        BackgroundTransparency = 1, Text = title, Font = Enum.Font.GothamBlack,
        TextSize = 10, TextColor3 = Theme.accent2,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, hdr)
    local holder = new("Frame", {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
        AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = #page:GetChildren(),
        Visible = state, ZIndex = 33}, page)
    new("UIListLayout", {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, holder)
    new("UIPadding", {PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4)}, holder)
    hdr.MouseButton1Click:Connect(function()
        state = not state
        arrow.Text = state and "▼" or "▶"
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
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 30),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.accent)
    new("TextLabel", {Size = UDim2.new(1, -200, 1, 0), Position = UDim2.fromOffset(14, 0),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.Gotham, TextSize = 11,
        TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, row)
    local keyBtn = tPanel2(new("TextButton", {Size = UDim2.fromOffset(72, 18),
        Position = UDim2.new(1, -116, 0.5, -9), BackgroundColor3 = Theme.panel2,
        Text = "+ bind", Font = Enum.Font.GothamBold, TextSize = 9,
        TextColor3 = Theme.muted, AutoButtonColor = false, ZIndex = 36}, row))
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
        keyBtn.Text = "press…"
        keyBtn.TextColor3 = Theme.danger
    end)
    local track = new("Frame", {Size = UDim2.fromOffset(42, 20),
        Position = UDim2.new(1, -50, 0.5, -10),
        BackgroundColor3 = state and Theme.accent or Theme.panel2,
        BorderSizePixel = 0, ZIndex = 36}, row)
    corner(track, 10)
    tStroke(stroke(track, Theme.strokeSoft, 1, 0.4))
    local thumb = new("Frame", {Size = UDim2.fromOffset(14, 14),
        Position = state and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7),
        BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 37}, track)
    corner(thumb, 7)
    tAcc(stroke(thumb, Theme.accent, 1.4, 0.2))
    local function render()
        if state then
            track.BackgroundColor3 = Theme.accent
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
            else
                HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
                HUMP.lockTimer = 1.5; HUMP.lastTier = "STILL"
                HUMP.awaitingRespawn = false; HUMP.fallHold = 0
                HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
            end
        end
        if fire ~= false and onChange then pcall(onChange, state) end
        if changed then pcall(refreshHUD); pcall(refreshAD) end
    end
    widgets[path] = {set = set, get = function() return state end,
        rerender = render, refreshKey = refreshKey, label = label}
    render()
    track.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            set(not state)
            pulse(thumb, 1.4, 0.08)
            flash(track, state and Theme.danger or Theme.success, 0.12)
            glow(track, state and Theme.danger or Theme.success, 0.4)
            ripple(track, 21, 10, state and Theme.danger or Theme.success, 18, 0.5)
        end
    end)
end

function sliderRow(pageId, path, label, mn, mx, dec, onChange)
    local page = resolvePage(pageId)
    if not page then return end
    local cur = getPath(Cfg, path)
    if type(cur) ~= "number" then cur = mn; setPath(Cfg, path, mn) end
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 38),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.accent)
    new("TextLabel", {Size = UDim2.new(1, -90, 0, 14), Position = UDim2.fromOffset(14, 4),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.Gotham, TextSize = 11,
        TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, row)
    local valLbl = new("TextLabel", {Size = UDim2.fromOffset(70, 14),
        Position = UDim2.new(1, -80, 0, 4), BackgroundTransparency = 1,
        Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
        TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 36}, row)
    local bar = tPanel2(new("Frame", {Size = UDim2.new(1, -22, 0, 5),
        Position = UDim2.fromOffset(11, 24), BackgroundColor3 = Theme.panel2, ZIndex = 34}, row))
    corner(bar, 3)
    tStroke(stroke(bar, Theme.strokeSoft, 1, 0.5))
    local fill = new("Frame", {Size = UDim2.new(0, 0, 1, 0),
        BackgroundColor3 = Theme.accent, BorderSizePixel = 0, ZIndex = 35}, bar)
    corner(fill, 3); tAcc(fill)
    grad(fill, Theme.accent, Theme.accent3, 0)
    local thumb = new("Frame", {Size = UDim2.fromOffset(12, 12),
        Position = UDim2.new(0, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 36}, bar)
    corner(thumb, 6)
    tAcc(stroke(thumb, Theme.accent, 1.5))
    local mult = 10^dec
    local value = cur
    local function setVal(v, fire)
        value = v
        setPath(Cfg, path, v)
        local a = math.clamp((v - mn) / (mx - mn), 0, 1)
        fill.Size = UDim2.new(a, 0, 1, 0)
        thumb.Position = UDim2.new(a, 0, 0.5, 0)
        valLbl.Text = string.format("%."..dec.."f", v)
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
            ripple(bar, bar.AbsoluteSize.X/2, 2, Theme.accent, 12, 0.4)
        end
    end)
    UIS.InputChanged:Connect(function(i)
        if drag and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
            fromX(i.Position.X)
        end
    end)
    UIS.InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            if drag then pulse(thumb, 1.15, 0.08) end
            drag = false
        end
    end)
end

function buttonRow(pageId, label, text, cb)
    local page = resolvePage(pageId)
    if not page then return end
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 30),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.accent)
    new("TextLabel", {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.Gotham, TextSize = 11,
        TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, row)
    local b = tPanel2(new("TextButton", {Size = UDim2.fromOffset(140, 20),
        Position = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,
        Text = text, Font = Enum.Font.GothamBold, TextSize = 9,
        TextColor3 = Theme.accent2, AutoButtonColor = false, ZIndex = 36}, row))
    corner(b, 6)
    tStroke(stroke(b, Theme.strokeSoft, 1))
    b.MouseButton1Click:Connect(function()
        pulse(b, 0.94, 0.06)
        glow(b, Theme.accent2, 0.35)
        ripple(b, b.AbsoluteSize.X/2, b.AbsoluteSize.Y/2, Theme.accent, 16, 0.45)
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
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 30),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    new("TextLabel", {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(14, 0),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.Gotham, TextSize = 11,
        TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, row)
    local tb = tPanel2(new("TextBox", {Size = UDim2.fromOffset(160, 20),
        Position = UDim2.new(1, -168, 0.5, -10), BackgroundColor3 = Theme.panel2,
        Text = initial or "", PlaceholderText = ph or "", Font = Enum.Font.Gotham,
        TextSize = 10, TextColor3 = Theme.accent2, PlaceholderColor3 = Theme.muted,
        ClearTextOnFocus = false, Active = true, Selectable = true,
        ZIndex = 50}, row))
    corner(tb, 5)
    tStroke(stroke(tb, Theme.strokeSoft, 1))
    tb.FocusLost:Connect(function() if onCommit then onCommit(tb.Text) end end)
    return tb
end

function cycleRow(pageId, path, label, options, onChange)
    local page = resolvePage(pageId)
    if not page then return end
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 30),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.accent)
    new("TextLabel", {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.Gotham, TextSize = 11,
        TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, row)
    local b = tPanel2(new("TextButton", {Size = UDim2.fromOffset(140, 20),
        Position = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,
        Text = tostring(getPath(Cfg, path) or options[1]),
        Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.accent2,
        AutoButtonColor = false, ZIndex = 36}, row))
    corner(b, 6)
    tStroke(stroke(b, Theme.strokeSoft, 1))
    b.MouseButton1Click:Connect(function()
        local cur = getPath(Cfg, path)
        local idx = 1
        for i, o in ipairs(options) do if o == cur then idx = i end end
        idx = idx % #options + 1
        setPath(Cfg, path, options[idx])
        b.Text = tostring(options[idx])
        pulse(b, 0.94, 0.06)
        glow(b, Theme.accent2, 0.35)
        ripple(b, b.AbsoluteSize.X/2, b.AbsoluteSize.Y/2, Theme.accent, 16, 0.4)
        if onChange then pcall(onChange, options[idx]) end
    end)
    widgets[path] = {set = function(v) setPath(Cfg, path, v); b.Text = tostring(v) end,
        get = function() return getPath(Cfg, path) end}
    return b
end

function infoRow(pageId, text)
    local page = resolvePage(pageId)
    if not page then return nil end
    local row = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 24),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.2,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 6)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.5))
    local lbl = new("TextLabel", {Size = UDim2.new(1, -10, 1, 0), Position = UDim2.fromOffset(12, 0),
        BackgroundTransparency = 1, Text = text or "", Font = Enum.Font.Code, TextSize = 10,
        TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, row)
    return lbl
end

function legendRow(pageId, label, col)
    local page = resolvePage(pageId)
    if not page then return end
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 26),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    local sw = new("Frame", {Size = UDim2.fromOffset(26, 14), Position = UDim2.fromOffset(12, 6),
        BackgroundColor3 = col, BorderSizePixel = 0, ZIndex = 34}, row)
    corner(sw, 4)
    stroke(sw, col, 1, 0)
    new("TextLabel", {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(46, 0),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.GothamBold,
        TextSize = 10, TextColor3 = col, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, row)
    return row
end

--==================== THEME / OPACITY ====================
function applyOpacity(op)
    op = math.clamp(tonumber(op) or 0, 0, 1)
    for _, d in ipairs(menu:GetDescendants()) do
        local anc, skip = d.Parent, false
        while anc and anc ~= menu do
            if anc == snowLayer or anc == rainLayer or anc == ambient or anc == bgGlow or anc == sakuraLayer then
                skip = true; break
            end
            anc = anc.Parent
        end
        if not skip then
            if d:IsA("Frame") or d:IsA("TextButton") or d:IsA("TextBox") or d:IsA("ScrollingFrame") then
                local base = d:GetAttribute("OpBase")
                if base == nil then base = d.BackgroundTransparency; d:SetAttribute("OpBase", base) end
                d.BackgroundTransparency = math.clamp(base + op * (1 - base), 0, 1)
            elseif d:IsA("UIStroke") then
                local base = d:GetAttribute("OpBase")
                if base == nil then base = d.Transparency; d:SetAttribute("OpBase", base) end
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
            if d:IsA("UIStroke") then d.Color = Theme.accent
            elseif d:IsA("Frame") or d:IsA("TextButton") then d.BackgroundColor3 = Theme.accent end
        end
        if d:GetAttribute("T_Acc2") and d:IsA("TextLabel") then d.TextColor3 = Theme.accent2 end
        if d:GetAttribute("T_Text") and d:IsA("TextLabel") then d.TextColor3 = Theme.text end
        if d:GetAttribute("T_Muted") and d:IsA("TextLabel") then d.TextColor3 = Theme.muted end
        if d:GetAttribute("T_Stroke") and d:IsA("UIStroke") then d.Color = Theme.stroke end
    end
    tickerLabel.TextColor3 = Theme.tickerColor
    tickerGlow.TextColor3 = Theme.tickerColor
    tickerStroke.Color = Theme.tickerColor
    if tickerLabelGrad then
        tickerLabelGrad.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Theme.tickerColor),
            ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),
            ColorSequenceKeypoint.new(1, Theme.tickerColor),
        })
    end
    for _, s in ipairs(snowflakes) do if s.inst then s.inst.BackgroundColor3 = Color3.fromRGB(240, 248, 255) end end
    for _, p in ipairs(ambientParts) do if p.inst then p.inst.BackgroundColor3 = Theme.accent2 end end
    for _, t in pairs(widgets) do if t.rerender then pcall(t.rerender) end end
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
tAcc(stroke(hudFrame, Theme.accent, 1.5, 0.3))
grad(hudFrame, Theme.panel, Theme.bg, 90)
hudHeader = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 22),
    BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, hudFrame))
corner(hudHeader, 10)
grad(hudHeader, Color3.fromRGB(48, 26, 82), Color3.fromRGB(7, 5, 16), 90)
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
        if k and widgets[path] then keys[#keys+1] = {path = path, key = k} end
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
            BackgroundTransparency = 1, Text = "["..e.key.Name.."]",
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
tAcc(stroke(adFrame, Theme.accent, 1.5, 0.3))
grad(adFrame, Theme.panel, Theme.bg, 90)
adHeader = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 22),
    BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, adFrame))
corner(adHeader, 10)
grad(adHeader, Color3.fromRGB(48, 26, 82), Color3.fromRGB(7, 5, 16), 90)
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

--==================== TABS ====================
tabOrder = {"home", "combat", "visual", "move", "world", "players", "troll", "util", "save", "theme"}
tabTitles = {
    home = "HOME", combat = "COMBAT", visual = "VISUAL", move = "MOVE",
    world = "WORLD", players = "PLAYERS", troll = "TROLL", util = "UTIL",
    save = "SAVE", theme = "THEME",
}
if isMod() then
    table.insert(tabOrder, 2, "owner")
    tabTitles.owner = "👑 OWNER"
end
for _, id in ipairs(tabOrder) do makeTab(id, tabTitles[id]) end

--====================== HOME ======================
do
    local pg2 = "home"
    section(pg2, "PROFILE", "👤")
    buttonRow(pg2, "Rejoin", "REJOIN", function()
        Teleport:Teleport(game.PlaceId, LP)
    end)
    buttonRow(pg2, "Reset Character", "RESET", function()
        local h = hum(); if h then h.Health = 0 end
    end)

    section(pg2, "GLOBAL CHAT · cross-game", "🌐")
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        Text = "every REAPER user in every game sees this same chat",
        Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])

    local chatHolder = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 260),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2]))
    corner(chatHolder, 10)
    tStroke(stroke(chatHolder, Theme.strokeSoft, 1, 0.4))
    local chatScroll = new("ScrollingFrame", {Size = UDim2.new(1, -8, 1, -66),
        Position = UDim2.fromOffset(4, 4), BackgroundTransparency = 1, BorderSizePixel = 0,
        ScrollBarThickness = 3, ScrollBarImageColor3 = Theme.accent,
        CanvasSize = UDim2.new(0, 0, 0, 0), AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ZIndex = 34}, chatHolder)
    new("UIListLayout", {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, chatScroll)
    new("UIPadding", {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
        PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, chatScroll)

    local userBar = tPanel2(new("Frame", {Size = UDim2.new(1, -8, 0, 16),
        Position = UDim2.new(0, 4, 1, -58), BackgroundColor3 = Theme.panel2,
        BackgroundTransparency = 0.3, BorderSizePixel = 0, ZIndex = 34}, chatHolder))
    corner(userBar, 4)
    local liveDot = new("Frame", {Size = UDim2.fromOffset(6, 6),
        Position = UDim2.new(0, 8, 0.5, -3), BackgroundColor3 = Theme.success,
        BorderSizePixel = 0, ZIndex = 35}, userBar)
    corner(liveDot, 3)
    local userLbl = new("TextLabel", {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(18, 0),
        BackgroundTransparency = 1, Text = "● live · global",
        Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.success,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 35}, userBar)
    task.spawn(function()
        while userBar.Parent do
            liveDot.BackgroundTransparency = 0.3 + math.sin(tick() * 3) * 0.3
            task.wait(1)
        end
    end)

    local inputBar = tPanel2(new("Frame", {Size = UDim2.new(1, -8, 0, 28),
        Position = UDim2.new(0, 4, 1, -38), BackgroundColor3 = Theme.panel2,
        BorderSizePixel = 0, ZIndex = 50, Active = true}, chatHolder))
    corner(inputBar, 7)
    tStroke(stroke(inputBar, Theme.strokeSoft, 1))

    local chatInput = new("TextBox", {Size = UDim2.new(1, -66, 1, 0),
        Position = UDim2.fromOffset(6, 0),
        BackgroundTransparency = 1, Active = true, Selectable = true,
        PlaceholderText = "message everyone, everywhere…", PlaceholderColor3 = Theme.muted,
        Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text, Text = "",
        ClearTextOnFocus = false, ZIndex = 51}, inputBar)
    local sendBtn = new("TextButton", {Size = UDim2.fromOffset(54, 20),
        Position = UDim2.new(1, -58, 0.5, -10), BackgroundColor3 = Theme.accent, Text = "SEND",
        Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Color3.new(1, 1, 1),
        AutoButtonColor = false, ZIndex = 51}, inputBar)
    corner(sendBtn, 5)

    local chatRowsById = {}

    local function addRow(e)
        if type(e) == "table" and e.__deleteMsgId then
            local target = chatRowsById[e.__deleteMsgId]
            if target and target.row and target.row.Parent then
                target.row:Destroy()
            end
            chatRowsById[e.__deleteMsgId] = nil
            return
        end
        if not chatScroll.Parent then return end
        local row = new("Frame", {Size = UDim2.new(1, 0, 0, 38), BackgroundTransparency = 1,
            LayoutOrder = (#chatScroll:GetChildren()) + 1, ZIndex = 35,
            AutomaticSize = Enum.AutomaticSize.Y}, chatScroll)
        local avWrap = new("Frame", {Size = UDim2.fromOffset(30, 30),
            Position = UDim2.fromOffset(0, 2), BackgroundTransparency = 1, ZIndex = 36}, row)
        local avImg = new("ImageLabel", {Size = UDim2.fromScale(1, 1),
            BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Image = "", ZIndex = 36}, avWrap)
        corner(avImg, 15)
        local avLetter = new("TextLabel", {Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 1, Text = (e.sender or "?"):sub(1,1):upper(),
            Font = Enum.Font.GothamBlack, TextSize = 13, TextColor3 = Color3.new(1,1,1),
            ZIndex = 37}, avWrap)
        local avBorder = new("Frame", {Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 1, ZIndex = 38}, avWrap)
        corner(avBorder, 15)
        local senderRank = e.userId and getRankFor(e.userId)
        local ringCol = e.col or Theme.accent
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
            badgePrefix = string.format('<font color="#%s">%s %s</font>  ', b.color:ToHex(), b.emoji, b.label)
        end

        local placeTag = ""
        if e.placeId and e.placeId ~= "" and tostring(e.placeId) ~= tostring(game.PlaceId) then
            placeTag = string.format('  <font color="#6E82B6">[place %s]</font>', tostring(e.placeId))
        end

        local headTxt = string.format('<font color="#8FA6BE">%s</font>  %s<font color="#%s"><b>%s</b></font>%s',
            os.date("%H:%M", math.floor(e.time or tick())),
            badgePrefix,
            (e.col or Color3.fromRGB(148, 204, 255)):ToHex(),
            (e.discordName and e.discordName ~= "" and ("@"..e.discordName)) or e.sender,
            placeTag)
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
    Chat.listeners[#Chat.listeners+1] = addRow
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

    -- Direct worker polling for chat (no server relay)
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
                                m.userId, m.id, m.placeId, m.time)
                    end
                end
            end
        end
    end)

    section(pg2, "FEEDBACK", "✉️")
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        Text = "send a message to @d9vq — bugs, ideas, anything",
        Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])
    local fbHolder = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 84),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2]))
    corner(fbHolder, 10)
    tStroke(stroke(fbHolder, Theme.strokeSoft, 1, 0.4))
    local fbInput = tPanel2(new("TextBox", {Size = UDim2.new(1, -12, 1, -42),
        Position = UDim2.fromOffset(6, 6), BackgroundColor3 = Theme.panel2,
        BackgroundTransparency = 0.2, Text = "", PlaceholderText = "type your feedback here…",
        PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 10,
        TextColor3 = Theme.text, MultiLine = true, ClearTextOnFocus = false,
        Active = true, Selectable = true,
        TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
        ZIndex = 50}, fbHolder))
    corner(fbInput, 6)
    tStroke(stroke(fbInput, Theme.strokeSoft, 1))
    local fbSend = new("TextButton", {Size = UDim2.new(1, -12, 0, 24),
        Position = UDim2.new(0, 6, 1, -30), BackgroundColor3 = Theme.accent, Text = "SEND FEEDBACK",
        Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Color3.new(1, 1, 1),
        AutoButtonColor = false, ZIndex = 34}, fbHolder)
    corner(fbSend, 6)
    fbSend.MouseButton1Click:Connect(function()
        local txt = fbInput.Text or ""
        if txt:gsub("%s", "") == "" then
            notify("Feedback", "Nothing to send", Theme.danger, 2); return
        end
        if #txt > 500 then txt = txt:sub(1, 500) end
        task.spawn(function()
            local body = HttpService:JSONEncode({
                text = txt, name = LP.Name,
                userId = tostring(LP.UserId), placeId = tostring(game.PlaceId),
            })
            local ok, res = httpPost(FEEDBACK_WEBHOOK, body)
            if ok then
                fbInput.Text = ""
                notify("Feedback sent", "Thanks", Theme.success, 3)
            else
                notify("Feedback failed", tostring(res), Theme.danger, 4)
            end
        end)
        pulse(fbSend, 0.94, 0.06)
        glow(fbSend, Theme.accent2, 0.4)
    end)
end

--====================== OWNER (staff-only) ======================
if isMod() then
    local pg2 = "owner"

    section(pg2, "LIVE ANNOUNCEMENTS", "📢")
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 16), BackgroundTransparency = 1,
        Text = "Broadcast a message to every REAPER user in every server.",
        Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])

    local annBox = tPanel2(new("TextBox", {Size = UDim2.new(1, 0, 0, 70),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
        BorderSizePixel = 0, Text = "",
        Active = true, Selectable = true,
        PlaceholderText = "type your announcement…",
        PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
        TextSize = 11, TextColor3 = Theme.text, MultiLine = true,
        ClearTextOnFocus = false, TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 50}, pages[pg2]))
    corner(annBox, 8)
    tStroke(stroke(annBox, Theme.strokeSoft, 1))

    buttonRow(pg2, "Send to everyone", "📢 SEND", function(b)
        local txt = annBox.Text or ""
        if sendAnnouncement(txt) then
            annBox.Text = ""
        end
    end)

    buttonRow(pg2, "Preview locally", "PREVIEW", function()
        local txt = annBox.Text or ""
        if txt:gsub("%s","") == "" then
            notify("Preview", "Type a message first", Theme.gold, 2); return
        end
        showAnnouncement({
            text = txt, sender = LP.Name,
            userId = LP.UserId, rank = getLocalRank() or "owner",
            time = os.time(),
        })
    end)

    section(pg2, "CHAT MODERATION", "🛡")
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        Text = "ban by Discord ID · delete messages · view ban list",
        Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])

    local banBox = tPanel2(new("TextBox", {Size = UDim2.new(1, 0, 0, 28),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
        BorderSizePixel = 0, Text = "",
        Active = true, Selectable = true,
        PlaceholderText = "target Discord ID (17-20 digits)",
        PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
        TextSize = 11, TextColor3 = Theme.text,
        ClearTextOnFocus = false,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 50}, pages[pg2]))
    corner(banBox, 7)
    tStroke(stroke(banBox, Theme.strokeSoft, 1))

    local reasonBox = tPanel2(new("TextBox", {Size = UDim2.new(1, 0, 0, 28),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
        BorderSizePixel = 0, Text = "",
        Active = true, Selectable = true,
        PlaceholderText = "reason (optional)",
        PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
        TextSize = 11, TextColor3 = Theme.text,
        ClearTextOnFocus = false,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 50}, pages[pg2]))
    corner(reasonBox, 7)
    tStroke(stroke(reasonBox, Theme.strokeSoft, 1))

    buttonRow(pg2, "Ban user from chat", "BAN", function()
        local target = (banBox.Text or ""):gsub("%s", "")
        if target == "" then
            notify("Ban", "Enter a Discord ID first", Theme.gold, 2); return
        end
        task.spawn(function()
            local body = HttpService:JSONEncode({
                robloxId = tostring(LP.UserId),
                key = SESSION_KEY or "",
                targetDiscordId = target,
                reason = reasonBox.Text or "",
            })
            local ok, res = httpPost(KEY_API .. "/chat/ban", body)
            if ok then
                notify("Banned", target, Theme.success, 3)
                reasonBox.Text = ""
            else
                notify("Ban failed", tostring(res), Theme.danger, 3)
            end
        end)
    end)
    buttonRow(pg2, "Unban user", "UNBAN", function()
        local target = (banBox.Text or ""):gsub("%s", "")
        if target == "" then
            notify("Unban", "Enter a Discord ID first", Theme.gold, 2); return
        end
        task.spawn(function()
            local body = HttpService:JSONEncode({
                robloxId = tostring(LP.UserId),
                key = SESSION_KEY or "",
                targetDiscordId = target,
            })
            local ok, res = httpPost(KEY_API .. "/chat/unban", body)
            if ok then
                notify("Unbanned", target, Theme.success, 3)
            else
                notify("Unban failed", tostring(res), Theme.danger, 3)
            end
        end)
    end)

    local delBox = tPanel2(new("TextBox", {Size = UDim2.new(1, 0, 0, 28),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
        BorderSizePixel = 0, Text = "",
        Active = true, Selectable = true,
        PlaceholderText = "message ID to delete",
        PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
        TextSize = 11, TextColor3 = Theme.text,
        ClearTextOnFocus = false,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 50}, pages[pg2]))
    corner(delBox, 7)
    tStroke(stroke(delBox, Theme.strokeSoft, 1))

    buttonRow(pg2, "Delete message", "DELETE MSG", function()
        local id = tonumber((delBox.Text or ""):gsub("%s","")) or 0
        if id <= 0 then
            notify("Delete", "Enter a message ID first", Theme.gold, 2); return
        end
        task.spawn(function()
            local body = HttpService:JSONEncode({
                robloxId = tostring(LP.UserId),
                key = SESSION_KEY or "",
                messageId = id,
            })
            local ok, res = httpPost(KEY_API .. "/chat/delete", body)
            if ok then
                notify("Deleted", "#"..id, Theme.success, 3)
                delBox.Text = ""
                for _, fn in ipairs(Chat.listeners) do
                    if fn and type(fn) == "function" then
                        pcall(fn, {__deleteMsgId = id})
                    end
                end
            else
                notify("Delete failed", tostring(res), Theme.danger, 3)
            end
        end)
    end)

    local banListHolder = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 0),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
        LayoutOrder = #pages[pg2]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y,
        ZIndex = 33}, pages[pg2]))
    corner(banListHolder, 7)
    tStroke(stroke(banListHolder, Theme.strokeSoft, 1, 0.5))
    new("UIListLayout", {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, banListHolder)
    new("UIPadding", {PaddingTop = UDim.new(0, 6), PaddingBottom = UDim.new(0, 6),
        PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}, banListHolder)

    local banListEmpty = tMuted(new("TextLabel", {Size = UDim2.new(1, 0, 0, 18),
        BackgroundTransparency = 1, Text = "click refresh to load ban list",
        Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = 1, ZIndex = 34}, banListHolder))

    _G.__REAPER_BANLIST_CB = function(bans)
        for _, c in ipairs(banListHolder:GetChildren()) do
            if not c:IsA("UIListLayout") and not c:IsA("UIPadding") and c ~= banListEmpty then
                c:Destroy()
            end
        end
        if not bans or #bans == 0 then
            banListEmpty.Visible = true
            banListEmpty.Text = "no banned users"
            return
        end
        banListEmpty.Visible = false
        for i, b in ipairs(bans) do
            local row = new("Frame", {Size = UDim2.new(1, 0, 0, 24),
                BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.3,
                LayoutOrder = i, ZIndex = 34}, banListHolder)
            corner(row, 5)
            stroke(row, Theme.danger, 1, 0.4)
            new("TextLabel", {Size = UDim2.new(1, -14, 1, 0), Position = UDim2.fromOffset(10, 0),
                BackgroundTransparency = 1,
                Text = string.format("%s  ·  %s",
                    tostring(b.discord_id or "?"),
                    tostring(b.reason or "no reason")),
                Font = Enum.Font.Code, TextSize = 9,
                TextColor3 = Theme.danger, TextXAlignment = Enum.TextXAlignment.Left,
                ZIndex = 35}, row)
        end
    end

    buttonRow(pg2, "Refresh ban list", "REFRESH BANS", function()
        task.spawn(function()
            local body = HttpService:JSONEncode({
                robloxId = tostring(LP.UserId),
                key = SESSION_KEY or "",
            })
            local ok, res = httpPost(KEY_API .. "/chat/bans", body)
            if ok and type(res) == "table" then
                local body2 = res.Body or res.body or ""
                local okD, data = pcall(function() return HttpService:JSONDecode(body2) end)
                if okD and data and data.bans and _G.__REAPER_BANLIST_CB then
                    _G.__REAPER_BANLIST_CB(data.bans)
                end
            end
        end)
    end)

    section(pg2, "ONLINE OWNERS / MODS", "🛡️")
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
                    Text = string.format("%s %s  %s", b.emoji, b.label, p.Name),
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
    Players.PlayerAdded:Connect(function() task.wait(0.5) refreshStaff() end)
    Players.PlayerRemoving:Connect(function() task.wait(0.5) refreshStaff() end)

    section(pg2, "MY IDENTITY", "🪪")
    local myInfo = infoRow(pg2, "")
    local function refreshMyInfo()
        local rank = getLocalRank() or "user"
        local dId = MY_USER and MY_USER.discordId or "—"
        myInfo.Text = string.format("discord: %s  ·  rank: %s", tostring(dId), rank)
    end
    refreshMyInfo()
    buttonRow(pg2, "Refresh identity", "REFRESH", refreshMyInfo)
end

--====================== COMBAT ======================
do
    local pg2 = "combat"
    section(pg2, "AIMBOT", "🎯")
    toggleRow(pg2, "Aimbot.Enabled", "Aimbot")
    buttonRow(pg2, "Aim Key", Cfg.Aimbot.Key.Name, function(b)
        pendingKeybind = {path = "Aimbot.Key", raw = true, btn = b}
        b.Text = "press…"
    end)
    toggleRow(pg2, "Aimbot.ToggleMode", "Toggle Mode")
    toggleRow(pg2, "Aimbot.Humanize", "Humanize")
    sliderRow(pg2, "Aimbot.FOV", "FOV", 10, 800, 0)
    sliderRow(pg2, "Aimbot.MaxDist", "Max Distance", 50, 5000, 0)
    sliderRow(pg2, "Aimbot.Smoothness", "Smoothness", 1, 20, 0)
    sliderRow(pg2, "Aimbot.Strength", "Strength", 1, 10, 1)
    buttonRow(pg2, "Target Part", Cfg.Aimbot.TargetPart, function(b)
        local parts = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}
        local idx = 1
        for i, p in ipairs(parts) do if p == Cfg.Aimbot.TargetPart then idx = i end end
        idx = idx % #parts + 1
        Cfg.Aimbot.TargetPart = parts[idx]; b.Text = parts[idx]
    end)
    toggleRow(pg2, "Aimbot.TeamCheck", "Team Check")
    toggleRow(pg2, "Aimbot.VisibleOnly", "Visible Only")
    toggleRow(pg2, "Aimbot.ShowCircle", "Show FOV Circle")

    section(pg2, "TRIGGERBOT", "⚡")
    toggleRow(pg2, "Trigger.Enabled", "Triggerbot")
    buttonRow(pg2, "Trigger Key", Cfg.Trigger.Key.Name, function(b)
        pendingKeybind = {path = "Trigger.Key", raw = true, btn = b}
        b.Text = "press…"
    end)
    sliderRow(pg2, "Trigger.Radius", "Radius", 0, 100, 0)
    sliderRow(pg2, "Trigger.Delay", "Delay (s)", 0.01, 0.5, 2)
    toggleRow(pg2, "Trigger.TeamCheck", "Team Check")

    section(pg2, "RETICLE ACTIONS", "🎯")
    local actionInfo = infoRow(pg2, "")
    local function refreshActions()
        local k = RA.keys
        actionInfo.Text = string.format("TP [%s]  SPEC [%s]  HUMP [%s]",
            k.teleport and k.teleport.Name or "—",
            k.spectate and k.spectate.Name or "—",
            k.hump and k.hump.Name or "—")
    end
    refreshActions()
    buttonRow(pg2, "Rebind Action Keys", "REDETECT", function()
        local u = unboundKeys(3)
        RA.keys.teleport, RA.keys.spectate, RA.keys.hump = u[1], u[2], u[3]
        rebuildChips(); refreshActions()
        notify("Rebound", "action keys updated", Theme.accent)
    end)
end

--====================== VISUAL ======================
do
    local pg2 = "visual"
    section(pg2, "ESP", "👁")
    toggleRow(pg2, "Visuals.Enabled", "ESP Enabled")
    cycleRow(pg2, "Visuals.Mode", "Mode", {"Team", "DOW", "PCP", "Role", "Auto", "Rainbow"})
    toggleRow(pg2, "Visuals.NameTags", "Name Tags")
    toggleRow(pg2, "Visuals.Distance", "Distance")
    toggleRow(pg2, "Visuals.ShowRole", "Role Label")
    sliderRow(pg2, "Visuals.Fill", "Fill Transparency", 0, 1, 2)

    section(pg2, "COLOR LEGEND", "🎨")
    legendRow(pg2, "TEAM · ally", ESPColours.ally)
    legendRow(pg2, "TEAM · enemy", ESPColours.enemy)
    legendRow(pg2, "PCP · police", ESPColours.police)
    legendRow(pg2, "PCP · criminal", ESPColours.criminal)
    legendRow(pg2, "PCP · prisoner", ESPColours.prisoner)
    legendRow(pg2, "DOW · united front", ESPColours.united)
    legendRow(pg2, "DOW · iron legion", ESPColours.iron)

    section(pg2, "CAMERA", "🔍")
    toggleRow(pg2, "Visuals.InfZoom", "Infinite Zoom")
    sliderRow(pg2, "Visuals.FOVMin", "Min FOV", 0.5, 30, 1)
    sliderRow(pg2, "Visuals.FOVMax", "Max FOV", 60, 400, 0)

    section(pg2, "WORLD VIEW", "🌫")
    toggleRow(pg2, "Visuals.NoFog", "No Fog")
end

--====================== MOVE ======================
do
    local pg2 = "move"
    section(pg2, "CORE", "🏃")
    toggleRow(pg2, "Movement.Noclip", "Noclip")
    toggleRow(pg2, "Movement.SpeedEnabled", "Speed Hack")
    sliderRow(pg2, "Movement.Speed", "Walk Speed", 16, 500, 0)
    toggleRow(pg2, "Movement.JumpEnabled", "Jump Power")
    sliderRow(pg2, "Movement.JumpPower", "Jump Value", 50, 800, 0)
    toggleRow(pg2, "Movement.InfiniteJump", "Infinite Jump")
    toggleRow(pg2, "Movement.GodMode", "God Mode")

    section(pg2, "FLIGHT", "✈")
    toggleRow(pg2, "Movement.Fly", "Fly")
    sliderRow(pg2, "Movement.FlySpeed", "Fly Speed", 10, 500, 0)
    sliderRow(pg2, "Movement.FlySmooth", "Smoothness", 1, 40, 0)
    sliderRow(pg2, "Movement.FlyBoost", "Boost Mult", 1, 6, 1)

    section(pg2, "EXTRAS", "⭐")
    toggleRow(pg2, "Movement.Sprint", "Sprint")
    sliderRow(pg2, "Movement.SprintSpeed", "Sprint Speed", 16, 300, 0)
    toggleRow(pg2, "Movement.Bunnyhop", "Bunnyhop")
    toggleRow(pg2, "Movement.Spinbot", "Spinbot")
    toggleRow(pg2, "Movement.AntiAFK", "Anti-AFK")

    section(pg2, "FREECAM", "🎥")
    toggleRow(pg2, "Movement.Freecam", "Freecam")
    sliderRow(pg2, "Movement.FreecamSpeed", "Speed", 10, 400, 0)
    sliderRow(pg2, "Movement.FreecamSens", "Sensitivity", 0.1, 5, 1)
end

--====================== WORLD ======================
do
    local pg2 = "world"
    section(pg2, "LIGHTING", "💡")
    toggleRow(pg2, "World.Fullbright", "Fullbright")
    toggleRow(pg2, "World.RemoveBlur", "Remove Blur")
    section(pg2, "CAMERA", "📷")
    toggleRow(pg2, "World.FOVEnabled", "FOV Changer")
    sliderRow(pg2, "World.FOV", "FOV Value", 40, 140, 0)
    section(pg2, "PHYSICS", "🌀")
    toggleRow(pg2, "World.GravityEnabled", "Gravity Control")
    sliderRow(pg2, "World.Gravity", "Gravity", 0, 500, 0)
end

--====================== PLAYERS ======================
do
    local pg2 = "players"
    section(pg2, "PLAYER LIST", "👥")
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
                hoverStripe(row, Theme.accent)
                local nameTxt = p.Name.." "..roleLabel(p)
                if b then nameTxt = b.emoji.." "..nameTxt end
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
                fb.MouseButton1Click:Connect(function() pulse(fb, 0.94, 0.06); flingPlayer(p) end)
                local tb = new("TextButton", {Text = "TP", Font = Enum.Font.GothamBold,
                    TextSize = 10, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.accent2,
                    Size = UDim2.fromOffset(42, 20), Position = UDim2.new(1, -50, 0.5, -10),
                    AutoButtonColor = false, ZIndex = 34}, row)
                corner(tb, 5)
                tStroke(stroke(tb, Theme.strokeSoft, 1))
                tb.MouseButton1Click:Connect(function()
                    pulse(tb, 0.94, 0.06)
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
    Players.PlayerAdded:Connect(function() task.wait(0.5) refresh() end)
    Players.PlayerRemoving:Connect(function() task.wait(0.5) refresh() end)
end

--====================== TROLL ======================
do
    local pg2 = "troll"
    section(pg2, "TARGET", "🎯")
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
        TS.target = nil; lbl.Text = "Target: Nearest"
    end)
    toggleRow(pg2, "Troll.TapTarget", "Tap to Target")
    sliderRow(pg2, "Troll.TapRadius", "Crosshair Radius", 5, 200, 0)

    local targetList = new("Frame", {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
        LayoutOrder = #pages[pg2]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[pg2])
    new("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, targetList)
    local function rebuild()
        for _, c in ipairs(targetList:GetChildren()) do
            if not c:IsA("UIListLayout") then c:Destroy() end
        end
        for i, p in ipairs(Players:GetPlayers()) do
            if p ~= LP then
                local cur = (TS.target == p)
                local rank = getRankFor(p.UserId)
                local b = rank and BADGE_STYLE[rank]
                local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 26),
                    BackgroundColor3 = cur and Theme.panel2 or Theme.panel,
                    BackgroundTransparency = cur and 0 or 0.15,
                    LayoutOrder = i, ZIndex = 33}, targetList))
                corner(row, 7)
                tStroke(stroke(row, cur and Theme.success or Theme.strokeSoft,
                    cur and 1.4 or 1, cur and 0 or 0.55))
                local txt = (cur and "● " or "○ ")..p.Name
                if b then txt = b.emoji.." "..txt end
                new("TextLabel", {Size = UDim2.new(1, -80, 1, 0), Position = UDim2.fromOffset(14, 0),
                    BackgroundTransparency = 1, Text = txt,
                    Font = Enum.Font.GothamBold, TextSize = 10,
                    TextColor3 = cur and Theme.success or (b and b.color or espColour(p)),
                    TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, row)
                local sb = new("TextButton", {Size = UDim2.fromOffset(58, 18),
                    Position = UDim2.new(1, -66, 0.5, -9),
                    BackgroundColor3 = cur and Theme.success or Theme.panel2,
                    Text = cur and "ON" or "SET",
                    Font = Enum.Font.GothamBold, TextSize = 9,
                    TextColor3 = cur and Color3.new(0,0,0) or Theme.accent2,
                    AutoButtonColor = false, ZIndex = 34}, row)
                corner(sb, 5)
                tStroke(stroke(sb, Theme.strokeSoft, 1))
                sb.MouseButton1Click:Connect(function()
                    TS.target = p
                    lbl.Text = "Target: "..p.Name
                    HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
                    HUMP.lockTimer = 1.0; HUMP.awaitingRespawn = false
                    HUMP.fallHold = 0; HUMP.lastGoodCF = nil
                    HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
                    rebuild()
                end)
            end
        end
    end
    rebuild()
    buttonRow(pg2, "Refresh List", "REFRESH", rebuild)

    section(pg2, "FOLLOW", "👣")
    toggleRow(pg2, "Troll.FollowTarget", "Follow Target")
    sliderRow(pg2, "Troll.FollowSpeed", "Follow Speed", 10, 300, 0)

    local hb = collapsible(pg2, "HUMP ENGINE", true)
    toggleRow(hb, "Troll.Hump", "HUMP Target")
    toggleRow(hb, "Troll.HumpAutoDetect", "Auto-Detect (scales slider)")
    toggleRow(hb, "Troll.HumpFallProtect", "Fall / Respawn Protection")
    toggleRow(hb, "UI.AD", "Show Auto-Detect HUD (J)")
    sliderRow(hb, "Troll.HumpSpeed", "Hump Speed (Hz)", 1, 100, 0)
    sliderRow(hb, "Troll.HumpAmp", "Hump Amplitude", 0.3, 5, 2)
    sliderRow(hb, "Troll.HumpDist", "Stand Behind Distance", 0.8, 5, 2)
    toggleRow(hb, "Troll.HumpYawOnly", "Yaw Only")
    toggleRow(hb, "Troll.HumpKeepOwner", "Re-claim Owner")
    toggleRow(hb, "Troll.HumpUsePlatform", "Use PlatformStand")
    toggleRow(hb, "Troll.HumpOverrideFly", "Override Fly")
    toggleRow(hb, "Troll.HumpVelMatch", "Velocity Match")
end

--====================== UTIL ======================
do
    local pg2 = "util"
    section(pg2, "AUTO", "⚙")
    toggleRow(pg2, "Utility.AutoClicker", "Auto Clicker")
    sliderRow(pg2, "Utility.AutoClickDelay", "Click Delay", 0.01, 1, 2)
    toggleRow(pg2, "Utility.AutoRespawn", "Auto Respawn")
    toggleRow(pg2, "Utility.AutoSheriff", "Auto Sheriff Pickup")
    sliderRow(pg2, "Utility.AutoSheriffRange", "Pickup Range", 10, 500, 0)
    section(pg2, "CHAT", "💬")
    toggleRow(pg2, "Utility.ChatSpam", "Chat Spam")
    textRow(pg2, "Message", "message…", Cfg.Utility.ChatSpamMsg, function(t) Cfg.Utility.ChatSpamMsg = t end)
end

--====================== SAVE ======================
do
    local pg2 = "save"
    section(pg2, "LOADOUTS", "💾")
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 32), BackgroundTransparency = 1,
        Text = "IO: "..(IO.has and ("✓ "..IO.reason) or ("✗ "..IO.reason)).."\nPlace: "..tostring(game.PlaceId),
        Font = Enum.Font.GothamBold, TextSize = 9,
        TextColor3 = IO.has and Theme.success or Theme.danger,
        TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])
    local autoLbl = new("TextLabel", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        Text = autoloadName and ("★ autoload: "..autoloadName) or "no autoload",
        Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])
    local nameBox = tPanel2(new("TextBox", {Size = UDim2.new(1, 0, 0, 28),
        BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Text = "",
        Active = true, Selectable = true,
        PlaceholderText = "loadout name", PlaceholderColor3 = Theme.muted,
        Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = Theme.text,
        ClearTextOnFocus = false, LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 50}, pages[pg2]))
    corner(nameBox, 7)
    tStroke(stroke(nameBox, Theme.strokeSoft, 1))
    local listHolder = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 0),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #pages[pg2]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[pg2]))
    corner(listHolder, 8)
    tStroke(stroke(listHolder, Theme.strokeSoft, 1, 0.5))
    new("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, listHolder)
    new("UIPadding", {PaddingTop = UDim.new(0, 6), PaddingBottom = UDim.new(0, 6),
        PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, listHolder)
    local selected = nil
    local function refreshList()
        for _, c in ipairs(listHolder:GetChildren()) do
            if not c:IsA("UIListLayout") and not c:IsA("UIPadding") then c:Destroy() end
        end
        local t = saveTable()
        local names = {}
        for n in pairs(t) do names[#names+1] = n end
        table.sort(names)
        if #names == 0 then
            new("TextLabel", {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
                Text = "no saves yet", Font = Enum.Font.Gotham, TextSize = 9,
                TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
                LayoutOrder = 1, ZIndex = 34}, listHolder)
            return
        end
        for i, n in ipairs(names) do
            local isAuto = (n == autoloadName)
            local isSel = (n == selected)
            local row = new("Frame", {Size = UDim2.new(1, 0, 0, 26),
                BackgroundColor3 = isSel and Theme.panel3 or Theme.panel2,
                BackgroundTransparency = 0.15, BorderSizePixel = 0,
                LayoutOrder = i, ZIndex = 34}, listHolder)
            corner(row, 6)
            stroke(row, isSel and Theme.accent or Theme.strokeSoft, isSel and 1.4 or 1, isSel and 0 or 0.4)
            new("TextLabel", {Size = UDim2.new(1, -14, 1, 0), Position = UDim2.fromOffset(10, 0),
                BackgroundTransparency = 1, Text = (isAuto and "★ " or "  ")..n,
                Font = Enum.Font.GothamBold, TextSize = 10,
                TextColor3 = isAuto and Theme.success or Theme.accent2,
                TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 35}, row)
            local btn = new("TextButton", {Size = UDim2.new(1, 0, 1, 0),
                BackgroundTransparency = 1, Text = "", AutoButtonColor = false, ZIndex = 36}, row)
            btn.MouseButton1Click:Connect(function()
                selected = n; nameBox.Text = n; refreshList()
            end)
        end
    end
    buttonRow(pg2, "Save", "SAVE", function()
        local n = nameBox.Text ~= "" and nameBox.Text or "default"
        saveLoadout(n, false); selected = n; refreshList()
        notify("Saved", n, Theme.success)
    end)
    buttonRow(pg2, "Save + Autoload", "SAVE+", function()
        local n = nameBox.Text ~= "" and nameBox.Text or "default"
        saveLoadout(n, true); selected = n; refreshList()
        autoLbl.Text = "★ autoload: "..n
        notify("Autoload set", n, Theme.success)
    end)
    buttonRow(pg2, "Load", "LOAD", function()
        local n = nameBox.Text ~= "" and nameBox.Text or selected
        if not n or not loadLoadout(n) then
            notify("Not found", "", Theme.danger); return
        end
        for p, w in pairs(widgets) do
            local v = getPath(Cfg, p)
            if v ~= nil then pcall(w.set, v, false) end
        end
        applyTheme(); applyOpacity(Cfg.UI.MenuOpacity or 0); refreshList()
        notify("Loaded", n, Theme.success)
    end)
    buttonRow(pg2, "Delete", "DELETE", function()
        local n = nameBox.Text ~= "" and nameBox.Text or selected
        if not n then return end
        deleteLoadout(n)
        if selected == n then selected = nil end
        autoLbl.Text = autoloadName and ("★ autoload: "..autoloadName) or "no autoload"
        refreshList()
    end)
    buttonRow(pg2, "Refresh", "REFRESH", refreshList)
    refreshList()
end

--====================== THEME ======================
do
    local pg2 = "theme"
    section(pg2, "PALETTE", "🎨")
    local palLbl = infoRow(pg2, "Current: Dark Purple")
    buttonRow(pg2, "Dark Purple", "APPLY", function()
        Theme.setPalette("Winter"); Cfg.UI.Sakura = false
        if widgets["UI.Sakura"] then widgets["UI.Sakura"].set(false, false) end
        applyTheme(); buildSakura(); palLbl.Text = "Current: Dark Purple"
    end)
    buttonRow(pg2, "Sakura", "APPLY", function()
        Theme.setPalette("Sakura"); Cfg.UI.Sakura = true
        if widgets["UI.Sakura"] then widgets["UI.Sakura"].set(true, false) end
        applyTheme(); buildSakura(); palLbl.Text = "Current: Sakura"
    end)
    toggleRow(pg2, "UI.Sakura", "Sakura Leaves", function(on)
        if on then Theme.setPalette("Sakura"); palLbl.Text = "Current: Sakura"
        else Theme.setPalette("Winter"); palLbl.Text = "Current: Dark Purple" end
        applyTheme(); buildSakura()
    end)
    sliderRow(pg2, "UI.SakuraLeaves", "Leaf Count", 10, 400, 0, function(v)
        Theme.sakura.leaves.count = v; buildSakura()
    end)
    sliderRow(pg2, "UI.SakuraSpeed", "Leaf Speed", 5, 80, 0, function(v)
        Theme.sakura.leaves.speed = v
    end)

    section(pg2, "EFFECTS", "✨")
    toggleRow(pg2, "UI.Juicy", "Juicy Effects")
    toggleRow(pg2, "UI.Notifs", "Notifications")
    toggleRow(pg2, "UI.Ambient", "Ambient Particles")
    toggleRow(pg2, "UI.ShimmerHeaders", "Animated Headers")
    toggleRow(pg2, "UI.BorderGlow", "Border Glow")
    toggleRow(pg2, "UI.AnimatedOpen", "Animated Menu")
    toggleRow(pg2, "UI.MenuBlur", "Blur Background")

    section(pg2, "HUDs", "⚡")
    toggleRow(pg2, "UI.HUD", "Keybind HUD")
    toggleRow(pg2, "UI.HUDMovable", "HUD Movable")
    toggleRow(pg2, "UI.HUDResizable", "HUD Resizable")
    toggleRow(pg2, "UI.AD", "Auto-Detect HUD")
    toggleRow(pg2, "UI.ADMovable", "Auto-Detect Movable")
    toggleRow(pg2, "UI.ADResizable", "Auto-Detect Resizable")

    section(pg2, "CROSSHAIR", "🎯")
    toggleRow(pg2, "UI.Crosshair", "Enable Crosshair")
    toggleRow(pg2, "UI.CrosshairPulse", "Pulse")
    sliderRow(pg2, "UI.CrosshairSize", "Size", 12, 60, 0)
    sliderRow(pg2, "UI.CrosshairThick", "Thickness", 1, 6, 0)
    toggleRow(pg2, "UI.ReticleLine", "Tracking Line")
    toggleRow(pg2, "UI.ReticleHP", "Health Bar")

    section(pg2, "MENU OPACITY", "🌫")
    sliderRow(pg2, "UI.MenuOpacity", "Transparency", 0, 0.9, 2, function(v) applyOpacity(v) end)
end

--==================== FINALIZE ====================
for _, p in pairs(pages) do p.Visible = false end
pages.home.Visible = true
tabs.home.BackgroundColor3 = Theme.accent
tabs.home.TextColor3 = Color3.new(1, 1, 1)
applyTheme()
applyOpacity(Cfg.UI.MenuOpacity or 0)
statusLbl.Text = "REAPER  ·  place "..tostring(game.PlaceId)
pcall(refreshHUD)
pcall(refreshAD)
rebuildChips()
task.defer(function()
    if autoloadName and loadLoadout(autoloadName) then
        for p, w in pairs(widgets) do
            local v = getPath(Cfg, p)
            if v ~= nil then pcall(w.set, v, false) end
        end
        applyTheme()
        applyOpacity(Cfg.UI.MenuOpacity or 0)
        pcall(refreshHUD)
        pcall(refreshAD)
        rebuildChips()
        notify("Autoloaded", autoloadName, Theme.success)
    end
end)

-- Announcement polling (client-direct, no relay)
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
                    -- don't re-show our own (we just saw the success notification)
                    if tostring(m.userId) ~= tostring(LP.UserId) then
                        showAnnouncement(m)
                    end
                end
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
            Cfg.UI.HUD = not Cfg.UI.HUD; pcall(refreshHUD); return
        end
        if Cfg.UI.ADKey and i.KeyCode == Cfg.UI.ADKey then
            Cfg.UI.AD = not Cfg.UI.AD; pcall(refreshAD); return
        end
        if RA.keys.teleport and i.KeyCode == RA.keys.teleport then runAction("teleport"); return end
        if RA.keys.spectate and i.KeyCode == RA.keys.spectate then runAction("spectate"); return end
        if RA.keys.hump and i.KeyCode == RA.keys.hump and Cfg.Troll.Hump then runAction("hump"); return end
    end
    if gpe then return end
    if i.UserInputType == Enum.UserInputType.MouseButton2 and Cfg.Aimbot.Enabled and not tbFocused() then
        if Cfg.Aimbot.ToggleMode then aimToggled = not aimToggled else aiming = true end
        return
    end
    if i.UserInputType == Enum.UserInputType.MouseButton1 and Cfg.Troll.TapTarget and not tbFocused() then
        local p = TS.hovered
        if p then
            TS.target = p
            HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
            HUMP.lockTimer = 1.0; HUMP.awaitingRespawn = false
            HUMP.fallHold = 0; HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
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
    if i.UserInputType == Enum.UserInputType.MouseWheel and RA.spectateTarget then
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
fovCircle = new("Frame", {AnchorPoint = Vector2.new(0.5, 0.5),
    Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(200, 200),
    BackgroundTransparency = 1, Visible = false, ZIndex = 1}, gui)
corner(fovCircle, 10000)
tAcc(stroke(fovCircle, Theme.accent, 1, 0.4))
function aimTarget()
    local c = LP.Character
    if not c then return nil end
    local mR = c:FindFirstChild("HumanoidRootPart")
    if not mR then return nil end
    local center = Vector2.new(Cam.ViewportSize.X / 2, Cam.ViewportSize.Y / 2)
    local maxD = Cfg.Aimbot.FOV
    local best, bestD, bestPart = nil, maxD, nil
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LP and p.Character then
            local skip = Cfg.Aimbot.TeamCheck and isAlly(p)
            if not skip then
                local tH = p.Character:FindFirstChildOfClass("Humanoid")
                if tH and tH.Health > 0 then
                    local part = p.Character:FindFirstChild(Cfg.Aimbot.TargetPart)
                              or p.Character:FindFirstChild("Head")
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
                                    if vis then best, bestD, bestPart = p, d, part end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return bestPart, best
end
RS.RenderStepped:Connect(function(dt)
    pcall(function()
        local showFov = Cfg.Aimbot.Enabled and Cfg.Aimbot.ShowCircle
        if fovCircle.Visible ~= showFov then fovCircle.Visible = showFov end
        if showFov then fovCircle.Size = UDim2.fromOffset(Cfg.Aimbot.FOV * 2, Cfg.Aimbot.FOV * 2) end
        if not Cfg.Aimbot.Enabled then aiming = false; aimToggled = false; return end
        if Cfg.Aimbot.ToggleMode then aiming = aimToggled
        else aiming = bindDown(Cfg.Aimbot.Key) end
        if not aiming then return end
        local part = aimTarget()
        if not part then return end
        local s = Cfg.Aimbot.Strength
        if Cfg.Aimbot.Humanize then s = s * (0.85 + math.random() * 0.3) end
        local sm = math.max(Cfg.Aimbot.Smoothness, 1)
        local a = math.clamp(dt * (s / sm) * 30, 0, 1)
        Cam.CFrame = Cam.CFrame:Lerp(CFrame.new(Cam.CFrame.Position, part.Position), a)
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
espData = {}
end

--==================== ROLE ESP ====================
local roleCache = {}
local function getRoleColor(role)
    if role == "Murderer" then return Color3.fromRGB(226, 46, 46) end
    if role == "Sheriff" then return Color3.fromRGB(70, 150, 255) end
    return Color3.fromRGB(96, 226, 126)
end
local function getRoleName(role)
    if role == "Murderer" then return "[MURDERER]" end
    if role == "Sheriff" then return "[SHERIFF]" end
    return "[INNOCENT]"
end
local function detectRole(player)
    local char = player.Character
    if not char then return "Innocent" end
    local hasKnife = char:FindFirstChild("Knife") or (player.Backpack and player.Backpack:FindFirstChild("Knife"))
    local hasGun = char:FindFirstChild("Gun") or (player.Backpack and player.Backpack:FindFirstChild("Gun"))
    if hasKnife then return "Murderer" end
    if hasGun then return "Sheriff" end
    return "Innocent"
end
local function updateAllRoleESP()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LP then
            local role = detectRole(player)
            roleCache[player.UserId] = role
            local data = espData[player]
            if data and data.hl then
                local base = getRoleColor(role)
                data.hl.FillColor = base
                data.hl.OutlineColor = Color3.new(base.R * 1.2, base.G * 1.2, base.B * 1.2)
                if data.roleLbl then
                    data.roleLbl.Text = getRoleName(role)
                    data.roleLbl.TextColor3 = base
                end
            end
        end
    end
end
task.spawn(function()
    while gui and gui.Parent do
        updateAllRoleESP()
        task.wait(1)
    end
end)

--==================== ESP ====================
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
                    local base, outline, roleL
                    if Cfg.Visuals.Mode == "Role" then
                        local role = roleCache[p.UserId] or "Innocent"
                        base = getRoleColor(role)
                        outline = Color3.new(base.R * 1.15, base.G * 1.15, base.B * 1.15)
                        roleL = getRoleName(role)
                    else
                        base = espColour(p)
                        outline = espOutline(p)
                        roleL = roleLabel(p)
                    end

                    local rank = getRankFor(p.UserId)
                    local badge = rank and BADGE_STYLE[rank]
                    local nameTagPrefix = ""
                    if badge then
                        base = badge.color
                        outline = Color3.new(base.R * 1.2, base.G * 1.2, base.B * 1.2)
                        nameTagPrefix = badge.emoji.." "
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
                        local bb = new("BillboardGui", {Name = "ReaperTag",
                            Size = UDim2.fromOffset(220, 64),
                            StudsOffsetWorldSpace = Vector3.new(0, 3.2, 0),
                            AlwaysOnTop = true, Adornee = head, Parent = head})
                        local nl = new("TextLabel", {BackgroundTransparency = 1,
                            Size = UDim2.new(1, 0, 0, 18), Font = Enum.Font.GothamBold,
                            TextSize = 13, TextColor3 = outline,
                            TextStrokeTransparency = 0.2, TextStrokeColor3 = Color3.new(0,0,0),
                            Text = nameTagPrefix..p.Name, Visible = Cfg.Visuals.NameTags, Parent = bb})
                        local dl = new("TextLabel", {BackgroundTransparency = 1,
                            Position = UDim2.new(0, 0, 0, 18), Size = UDim2.new(1, 0, 0, 14),
                            Font = Enum.Font.Gotham, TextSize = 11,
                            TextColor3 = Color3.fromRGB(200, 210, 230),
                            TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0,0,0),
                            Text = "", Visible = Cfg.Visuals.Distance, Parent = bb})
                        local rl = new("TextLabel", {BackgroundTransparency = 1,
                            Position = UDim2.new(0, 0, 0, 34), Size = UDim2.new(1, 0, 0, 16),
                            Font = Enum.Font.GothamBlack, TextSize = 12,
                            TextColor3 = base, TextStrokeTransparency = 0.3,
                            TextStrokeColor3 = Color3.new(0,0,0),
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
                        d.nameLbl.Text = nameTagPrefix..p.Name
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
                        if badge then roleText = string.format("%s %s", badge.emoji, badge.label) end
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
flyBV, flyGyro = nil, nil
flyVelTarget = Vector3.zero
flySmoothedVel = Vector3.zero
wasFlying = false
freecamCF = nil
freecamMult = 1
savedWalk, savedJump = 16, 50
wasFreecam = false
spinAngle = 0
autoClickAccum = 0
sheriffCD = 0
function stopFly()
    if flyBV then flyBV:Destroy(); flyBV = nil end
    if flyGyro then flyGyro:Destroy(); flyGyro = nil end
    flyVelTarget, flySmoothedVel = Vector3.zero, Vector3.zero
    local h = hum()
    if h and not Cfg.Troll.Hump then h.PlatformStand = false; h.AutoRotate = true end
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
        flyGyro.P = 3000; flyGyro.D = 500
        flyGyro.CFrame = r.CFrame
        flyGyro.Parent = r
    end
end
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
            if noclipOK then pcall(function() p.CollisionGroup = NOCLIP_GROUP end) end
        end
    end
end
UIS.InputChanged:Connect(function(inp)
    if not Cfg.Movement.Freecam then return end
    if inp.UserInputType == Enum.UserInputType.MouseWheel then
        freecamMult = math.clamp(freecamMult + inp.Position.Z * 0.15, 0.2, 6)
    end
end)
RS.Heartbeat:Connect(function(dt)
    pcall(function()
        local c = LP.Character
        if c then
            if Cfg.Movement.Noclip then noclipChar(c)
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
            if h then
                savedWalk, savedJump = h.WalkSpeed, h.JumpPower
                h.WalkSpeed, h.JumpPower = 0, 0
            end
            freecamCF = Cam.CFrame
            Cam.CameraType = Enum.CameraType.Scriptable
            UIS.MouseBehavior = Enum.MouseBehavior.LockCenter
            wasFreecam = true
        elseif not Cfg.Movement.Freecam and wasFreecam then
            local h = hum()
            if h then h.WalkSpeed = savedWalk or 16; h.JumpPower = savedJump or 50 end
            Cam.CameraType = Enum.CameraType.Custom
            UIS.MouseBehavior = Enum.MouseBehavior.Default
            freecamCF, wasFreecam = nil, false
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
            local flySuppress = humpActive and Cfg.Troll.HumpOverrideFly
            if Cfg.Movement.Fly and r and h and not Cfg.Movement.Freecam and not flySuppress then
                startFly(); wasFlying = true
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
                stopFly(); wasFlying = false
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
            if r and not Cfg.Troll.Hump then
                spinAngle = spinAngle + dt * 15
                r.CFrame = CFrame.new(r.Position) * CFrame.Angles(0, spinAngle, 0)
            end
        end
        if Cfg.World.Fullbright then
            Lighting.Ambient = Color3.fromRGB(180, 180, 180)
            Lighting.OutdoorAmbient = Color3.fromRGB(180, 180, 180)
            Lighting.Brightness = 3
            Lighting.FogEnd = 1e6; Lighting.FogStart = 1e6
        end
        if Cfg.Visuals.NoFog then Lighting.FogEnd = 1e6; Lighting.FogStart = 1e6 end
        if Cfg.World.RemoveBlur then
            local b = Lighting:FindFirstChildOfClass("BlurEffect")
            if b and b ~= _G.__ReaperBlur and b.Name ~= "ReaperPromptBlur" then b.Enabled = false end
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
                                    local h = obj:FindFirstChild("Handle")
                                    if h and h:IsA("BasePart") then
                                        local d = (mR.Position - h.Position).Magnitude
                                        if d < bestD then best, bestD = obj, d end
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
    spin.Transparency = 1; spin.CanCollide = false; spin.Massless = true
    spin.CFrame = r.CFrame; spin.Parent = workspace
    local w = Instance.new("WeldConstraint")
    w.Part0, w.Part1, w.Parent = spin, r, spin
    local av = Instance.new("BodyAngularVelocity")
    av.AngularVelocity = Vector3.new(1e5, 1e5, 1e5)
    av.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    av.P = 1e9; av.Parent = spin
    local bv = Instance.new("BodyVelocity")
    bv.Velocity = Vector3.new(math.random(-40, 40), 400, math.random(-40, 40))
    bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bv.P = 1e6; bv.Parent = spin
    task.wait(Cfg.Utility.FlingDur)
    if spin.Parent then spin:Destroy() end
    flinging = false
end

--==================== TROLL ====================
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
                if d < bestD then best, bestD = p, d end
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
            if v < 3 then return "STILL"
            elseif v < 25 then return "WALK"
            elseif v < 60 then return "RUN"
            elseif v < 150 then return "FAST"
            else return "EXTREME" end
        end
        local rawTier = tierFor(sm)
        if rawTier ~= HR.tier then
            HUMP.lockTimer = HUMP.lockTimer + dt
            if HUMP.lockTimer > 0.35 then HR.tier = rawTier; HUMP.lockTimer = 0 end
        else HUMP.lockTimer = 0 end

        local targetSpeedMult, targetAmpMult, targetDistMult
        if HR.tier == "STILL" then
            targetSpeedMult, targetAmpMult, targetDistMult = 0.75, 0.90, 1.00
        elseif HR.tier == "WALK" then
            targetSpeedMult, targetAmpMult, targetDistMult = 1.15, 1.05, 1.05
        elseif HR.tier == "RUN" then
            targetSpeedMult, targetAmpMult, targetDistMult = 1.65, 1.15, 1.15
        elseif HR.tier == "FAST" then
            targetSpeedMult, targetAmpMult, targetDistMult = 2.15, 1.25, 1.25
        else
            targetSpeedMult, targetAmpMult, targetDistMult = 2.80, 1.35, 1.35
        end

        if HR.airborne then
            targetSpeedMult = targetSpeedMult * 1.20
            targetAmpMult   = targetAmpMult   * 1.10
        end

        local alpha = 1 - math.exp(-3.5 * dt)
        HUMP.speedMult = HUMP.speedMult + (targetSpeedMult - HUMP.speedMult) * alpha
        HUMP.ampMult   = HUMP.ampMult   + (targetAmpMult   - HUMP.ampMult)   * alpha
        HUMP.distMult  = HUMP.distMult  + (targetDistMult  - HUMP.distMult)  * alpha

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

        --===== HUMP ENGINE =====
        if Cfg.Troll.Hump then
            local t = TS.target or getTargetPlayer()
            if t then
                local mC = LP.Character
                if mC then
                    local mR = mC:FindFirstChild("HumanoidRootPart")
                    local mH = mC:FindFirstChildOfClass("Humanoid")
                    if not (mR and mH) then return end

                    if HUMP.awaitingRespawn then
                        if t.Character and t.Character:FindFirstChild("HumanoidRootPart") then
                            local newH = t.Character:FindFirstChildOfClass("Humanoid")
                            if newH and newH.Health > 0 then
                                HUMP.awaitingRespawn = false
                                HUMP.fallHold = 0; HUMP.phase = 0
                                HUMP.lastGoodCF = nil
                                notify("Target respawned", t.Name, Theme.success, 2)
                            end
                        end
                        mR.AssemblyLinearVelocity = Vector3.zero
                        mR.AssemblyAngularVelocity = Vector3.zero
                        if not Cfg.Troll.HumpUsePlatform then
                            if mH.PlatformStand then mH.PlatformStand = false end
                        else
                            if not mH.PlatformStand then mH.PlatformStand = true end
                        end
                        TS.humpWasActive = true
                        return
                    end

                    local tR = t.Character and t.Character:FindFirstChild("HumanoidRootPart")
                    local tH = t.Character and t.Character:FindFirstChildOfClass("Humanoid")

                    if not tR or not tH or tH.Health <= 0 then
                        if Cfg.Troll.HumpFallProtect then
                            HUMP.awaitingRespawn = true
                            mR.AssemblyLinearVelocity = Vector3.zero
                            mR.AssemblyAngularVelocity = Vector3.zero
                        end
                        TS.humpWasActive = true
                        return
                    end

                    local tY = tR.Position.Y
                    local tVelY = tR.AssemblyLinearVelocity.Y
                    local isFalling = (tY < -40) or (tVelY < -75)

                    if isFalling and Cfg.Troll.HumpFallProtect then
                        HR.fallingUnder = true
                        HUMP.fallHold = 2.5
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
                        mR.AssemblyLinearVelocity = Vector3.zero
                        mR.AssemblyAngularVelocity = Vector3.zero
                        TS.humpWasActive = true
                        if HUMP.fallHold <= 0 then HR.fallingUnder = false end
                        return
                    end
                    HR.fallingUnder = false

                    if tY > -20 then HUMP.lastGoodCF = mR.CFrame end

                    if Cfg.Troll.HumpKeepOwner then
                        pcall(function() mR:SetNetworkOwner(LP) end)
                    end
                    if Cfg.Troll.HumpUsePlatform then
                        if not mH.PlatformStand then mH.PlatformStand = true end
                    else
                        if mH.PlatformStand then mH.PlatformStand = false end
                    end

                    local sm_ = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
                    local am_ = Cfg.Troll.HumpAutoDetect and HUMP.ampMult   or 1
                    local dm_ = Cfg.Troll.HumpAutoDetect and HUMP.distMult  or 1
                    local useSpeed = math.clamp(Cfg.Troll.HumpSpeed * sm_, 0.5, 200)
                    local useAmp   = math.clamp(Cfg.Troll.HumpAmp   * am_, 0.1, 8)
                    local useDist  = math.clamp(Cfg.Troll.HumpDist  * dm_, 0.5, 8)

                    HUMP.phase = HUMP.phase + dt * useSpeed
                    if HUMP.phase > math.pi * 2000 then HUMP.phase = HUMP.phase % (math.pi * 2) end

                    local pos = tR.Position
                    local look = tR.CFrame.LookVector
                    local vel = tR.AssemblyLinearVelocity

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

                    if Cfg.Troll.HumpVelMatch then mR.AssemblyLinearVelocity = vel
                    else mR.AssemblyLinearVelocity = Vector3.zero end

                    if Cfg.Movement.Noclip then noclipChar(mC) end
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
            HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
            HUMP.awaitingRespawn = false; HUMP.fallHold = 0
            HR.fallingUnder = false
        end

        pcall(refreshAD)
    end)
end)

--==================== ANIMATION LOOP ====================
snowAccum, rainAccum = 0, 0
RS.RenderStepped:Connect(function(dt)
    snowAccum = snowAccum + dt
    rainAccum = rainAccum + dt
    if snowAccum > 0.016 then
        snowAccum = 0
        local hh = math.max(snowLayer.AbsoluteSize.Y, 1)
        local ww = math.max(snowLayer.AbsoluteSize.X, 1)
        for _, s in ipairs(snowflakes) do
            local inst = s.inst
            if inst and inst.Parent then
                local p = inst.Position
                local ny = p.Y.Scale + (s.speed / hh) * dt
                local nx = p.X.Scale + (s.drift / ww) * dt
                if ny > 1.02 then ny = -0.05; nx = math.random() end
                if nx < -0.05 then nx = 1.02 end
                if nx > 1.05 then nx = -0.02 end
                inst.Position = UDim2.fromScale(nx, ny)
            end
        end
    end
    if rainAccum > 0.016 then
        rainAccum = 0
        local hh = math.max(rainLayer.AbsoluteSize.Y, 1)
        for _, r in ipairs(rainTrails) do
            local inst = r.inst
            if inst and inst.Parent then
                local p = inst.Position
                local ny = p.Y.Scale + (r.speed / hh) * dt
                if ny > 1.1 then inst.Position = UDim2.fromScale(math.random(), -0.1)
                else inst.Position = UDim2.fromScale(p.X.Scale, ny) end
            end
        end
    end
    if Theme.sakura.active then
        local hh = math.max(sakuraLayer.AbsoluteSize.Y, 1)
        local ww = math.max(sakuraLayer.AbsoluteSize.X, 1)
        for _, l in ipairs(sakuraLeaves) do
            local inst = l.inst
            if inst and inst.Parent then
                local p = inst.Position
                l.sway = l.sway + dt * l.swaySpeed
                local sx = math.sin(l.sway) * l.swayAmp / ww
                local ny = p.Y.Scale + (l.speed / hh) * dt
                local nx = p.X.Scale + sx
                if ny > 1.05 then ny = -0.05; nx = math.random() end
                if nx < -0.05 then nx = 1.02 end
                if nx > 1.05 then nx = -0.02 end
                inst.Position = UDim2.fromScale(nx, ny)
                inst.Rotation = inst.Rotation + l.rot * dt
            end
        end
    end
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

--==================== SAVE ON CLOSE ====================
pcall(function()
    game:BindToClose(function()
        if autoloadName then pcall(saveLoadout, autoloadName, true) end
    end)
end)
LP.OnTeleport:Connect(function()
    if autoloadName then pcall(saveLoadout, autoloadName, true) end
end)

print("[REAPER] loaded · place "..tostring(game.PlaceId))
