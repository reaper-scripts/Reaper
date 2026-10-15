-- REAPER — universal cheat suite. @d9vq on discord.
-- Paste into ServerScriptService (Script) AND your executor.

local RS0 = game:GetService("RunService")

--==================== SERVER HALF ====================
if RS0:IsServer() then
    local Players = game:GetService("Players")
    local RS = game:GetService("ReplicatedStorage")
    local HttpService = game:GetService("HttpService")

    local FEEDBACK_WEBHOOK = "https://proud-hill-8cf1.bigphatnigur.workers.dev/feedback"

    local remote = RS:FindFirstChild("ReaperComm")
    if not remote then
        remote = Instance.new("RemoteEvent")
        remote.Name = "ReaperComm"
        remote.Parent = RS
    end

    local users = {}
    local history = {}
    local TIMEOUT = 30

    local function prune()
        local now = tick()
        for p, d in pairs(users) do
            if now - d.lastSeen > TIMEOUT or not p.Parent then users[p] = nil end
        end
    end

    local function list()
        local t = {}
        for p in pairs(users) do
            if p.Parent then t[#t+1] = p.Name end
        end
        table.sort(t)
        return t
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

    local function bcastCount()
        local l = list()
        bcast("userCount", #l, l)
    end

    local function logFeedback(name, userId, text)
        local entry = string.format("[%s] %s (%d): %s\n",
            os.date("%Y-%m-%d %H:%M:%S"), name, userId, text)
        pcall(function()
            local fileName = "ReaperFeedback_"..game.PlaceId..".txt"
            local existing = ""
            if isfile and isfile(fileName) and readfile then
                existing = readfile(fileName) or ""
            end
            if writefile then writefile(fileName, existing..entry) end
        end)
        if FEEDBACK_WEBHOOK ~= "" then
            pcall(function()
                HttpService:PostAsync(FEEDBACK_WEBHOOK, HttpService:JSONEncode({
                    text = text,
                    name = name,
                    userId = tostring(userId),
                    placeId = tostring(game.PlaceId),
                }), Enum.HttpContentType.ApplicationJson)
            end)
        end
        print("[REAPER FEEDBACK] "..entry:gsub("%s+$",""))
    end

    remote.OnServerEvent:Connect(function(plr, channel, payload)
        if not plr or not plr.Parent then return end

        if channel == "register" then
            users[plr] = {lastSeen = tick()}
            for _, m in ipairs(history) do
                pcall(function() remote:FireClient(plr, "chat", m) end)
            end
            bcastCount()
        elseif channel == "heartbeat" then
            if users[plr] then users[plr].lastSeen = tick()
            else users[plr] = {lastSeen = tick()}; bcastCount() end
        elseif channel == "unregister" then
            users[plr] = nil
            bcastCount()
        elseif channel == "chat" then
            if type(payload) ~= "table" then return end
            local text = tostring(payload.text or ""):gsub("[\n\r]", " ")
            if text == "" then return end
            if #text > 200 then text = text:sub(1,200) end
            local msg = {sender = plr.Name, userId = plr.UserId, text = text, time = os.time()}
            history[#history+1] = msg
            if #history > 100 then table.remove(history, 1) end
            bcast("chat", msg)
        elseif channel == "feedback" then
            if type(payload) ~= "table" then return end
            local text = tostring(payload.text or ""):gsub("[\n\r]", " ")
            if text == "" then return end
            if #text > 500 then text = text:sub(1,500) end
            logFeedback(plr.Name, plr.UserId, text)
            bcast("feedbackAck", plr.Name)
        end
    end)

    Players.PlayerRemoving:Connect(function(p)
        users[p] = nil
        bcastCount()
    end)

    task.spawn(function()
        while true do
            task.wait(5)
            prune()
            bcastCount()
        end
    end)

    print("[REAPER SERVER] live relay up"..(FEEDBACK_WEBHOOK~="" and " + feedback worker" or ""))
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

--==================== FEEDBACK + KEY API ====================
FEEDBACK_WEBHOOK = "https://proud-hill-8cf1.bigphatnigur.workers.dev/feedback"
KEY_API = "https://proud-hill-8cf1.bigphatnigur.workers.dev"
AUTH_TOKEN = ""
DISCORD_INVITE = "https://discord.gg/FCMFK2Dcb"

function httpPost(url, body)
    if not url or url == "" then return false, "no webhook configured" end
    local req = (syn and syn.request) or (http and http.request) or http_request or request
    if not req then return false, "no http api available in executor" end
    local headers = { ["Content-Type"] = "application/json" }
    if AUTH_TOKEN ~= "" then headers["X-Auth-Token"] = AUTH_TOKEN end
    local ok, res = pcall(req, {
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body,
    })
    if not ok then return false, "request failed: "..tostring(res) end
    local status = nil
    local respBody = nil
    if type(res) == "table" then
        status = res.StatusCode or res.Status or res.status
        respBody = res.Body or res.body or res.Data
    end
    if status and tonumber(status) and tonumber(status) >= 400 then
        return false, "HTTP "..tostring(status)..": "..tostring(respBody or "")
    end
    return true, res
end

--==================== THEME ====================
Theme = {
    bg = Color3.fromRGB(6, 8, 14),
    panel = Color3.fromRGB(14, 18, 30),
    panel2 = Color3.fromRGB(22, 28, 45),
    panel3 = Color3.fromRGB(36, 45, 70),
    stroke = Color3.fromRGB(62, 118, 200),
    strokeSoft = Color3.fromRGB(40, 75, 130),
    accent = Color3.fromRGB(60, 160, 255),
    accent2 = Color3.fromRGB(160, 218, 255),
    accent3 = Color3.fromRGB(190, 95, 255),
    text = Color3.fromRGB(238, 244, 255),
    muted = Color3.fromRGB(112, 132, 170),
    success = Color3.fromRGB(80, 230, 130),
    danger = Color3.fromRGB(255, 75, 95),
    gold = Color3.fromRGB(255, 205, 90),
    ticker = "universal reaper script  ·  @d9vq on discord!",
    tickerColor = Color3.fromRGB(85, 200, 255),
    tickerAccent = Color3.fromRGB(190, 95, 255),
    sakura = {
        active = false,
        leaves = {count = 80, speed = 22, sway = 1.4, size = 5},
    },
    snow = {count = 60, speed = 25, size = 2},
    rain = {count = 28, speed = 90, thickness = 2},
}
local WINTER = {
    bg = Color3.fromRGB(6, 8, 14),
    panel = Color3.fromRGB(14, 18, 30),
    panel2 = Color3.fromRGB(22, 28, 45),
    panel3 = Color3.fromRGB(36, 45, 70),
    stroke = Color3.fromRGB(62, 118, 200),
    strokeSoft = Color3.fromRGB(40, 75, 130),
    accent = Color3.fromRGB(60, 160, 255),
    accent2 = Color3.fromRGB(160, 218, 255),
    accent3 = Color3.fromRGB(190, 95, 255),
    text = Color3.fromRGB(238, 244, 255),
    muted = Color3.fromRGB(112, 132, 170),
    tickerColor = Color3.fromRGB(85, 200, 255),
    tickerAccent = Color3.fromRGB(190, 95, 255),
}
local SAKURA = {
    bg = Color3.fromRGB(20, 9, 20),
    panel = Color3.fromRGB(40, 18, 36),
    panel2 = Color3.fromRGB(60, 28, 54),
    panel3 = Color3.fromRGB(95, 45, 85),
    stroke = Color3.fromRGB(220, 125, 190),
    strokeSoft = Color3.fromRGB(148, 78, 128),
    accent = Color3.fromRGB(255, 110, 180),
    accent2 = Color3.fromRGB(255, 195, 225),
    accent3 = Color3.fromRGB(205, 115, 255),
    text = Color3.fromRGB(255, 240, 250),
    muted = Color3.fromRGB(205, 160, 195),
    tickerColor = Color3.fromRGB(255, 160, 205),
    tickerAccent = Color3.fromRGB(255, 195, 225),
}
function Theme.setPalette(which)
    local S = (which == "Sakura") and SAKURA or WINTER
    for k, v in pairs(S) do Theme[k] = v end
    Theme.sakura.active = (which == "Sakura")
end

ESPColours = {
    ally = Color3.fromRGB(60, 140, 255),
    enemy = Color3.fromRGB(255, 70, 90),
    police = Color3.fromRGB(60, 140, 255),
    criminal = Color3.fromRGB(220, 40, 40),
    prisoner = Color3.fromRGB(255, 150, 60),
    sheriff = Color3.fromRGB(60, 140, 255),
    murderer = Color3.fromRGB(220, 40, 40),
    innocent = Color3.fromRGB(90, 220, 120),
    united = Color3.fromRGB(50, 130, 255),
    iron = Color3.fromRGB(220, 40, 40),
}

--==================== STATE ====================
TS = {
    target = nil,
    hovered = nil,
    humpWasActive = false,
    lastSpam = 0,
}
HR = {
    speed = 0, smoothSpeed = 0, tier = "STILL",
    airborne = false, airTimer = 0, teleporting = false,
    autoMode = "Hybrid", fallingUnder = false, lastGood = nil,
    respawnPending = false,
}
RA = {
    keys = {teleport = nil, spectate = nil, hump = nil},
    spectateTarget = nil, spectateZoom = 1,
}
PREFERRED_KEYS = {
    Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three,
    Enum.KeyCode.Four, Enum.KeyCode.Five, Enum.KeyCode.Six,
    Enum.KeyCode.Q, Enum.KeyCode.E, Enum.KeyCode.R,
    Enum.KeyCode.F, Enum.KeyCode.G, Enum.KeyCode.V,
}

--==================== NET ====================
Net = {remote = nil, up = false, count = 1, users = {}}
do
    local ok, r = pcall(function() return RS2:WaitForChild("ReaperComm", 5) end)
    if ok and r and r:IsA("RemoteEvent") then
        Net.remote = r
        Net.up = true
        print("[REAPER] server relay connected")
    else
        print("[REAPER] relay offline — local-only mode")
    end
end
function Net.send(ch, payload)
    if not Net.remote then return false end
    pcall(function() Net.remote:FireServer(ch, payload) end)
    return true
end

--==================== CHAT ====================
Chat = {messages = {}, listeners = {}, max = 400}
function addChat(sender, text, isLocal, col)
    local e = {
        sender = sender or "?",
        text = tostring(text or ""),
        isLocal = isLocal and true or false,
        col = col or Color3.fromRGB(140, 200, 255),
        time = tick(),
    }
    Chat.messages[#Chat.messages+1] = e
    if #Chat.messages > Chat.max then table.remove(Chat.messages, 1) end
    for _, fn in ipairs(Chat.listeners) do pcall(fn, e) end
end
function sendChat(text)
    text = tostring(text or ""):gsub("^%s+",""):gsub("%s+$","")
    if text == "" then return false end
    if #text > 200 then text = text:sub(1,200) end
    addChat(LP.Name, text, true, Theme.success)
    if Net.up then Net.send("chat", {text = text}) end
    return true
end

Users = {seen = {}, window = 45}
function Users.touch(name)
    if not name or name == "" then return end
    Users.seen[name] = tick()
end
function Users.count()
    if Net.up then return Net.count end
    local now, n = tick(), 0
    for _, t in pairs(Users.seen) do
        if now - t <= Users.window then n = n + 1 end
    end
    return math.max(1, n)
end
function Users.list()
    if Net.up then return Net.users end
    local out = {}
    local now = tick()
    for n, t in pairs(Users.seen) do
        if now - t <= Users.window then out[#out+1] = n end
    end
    table.sort(out)
    return out
end
function Users.clean()
    local now = tick()
    for n, t in pairs(Users.seen) do
        if now - t > Users.window then Users.seen[n] = nil end
    end
end
Users.touch(LP.Name)

if Net.up then
    Net.remote.OnClientEvent:Connect(function(ch, a, b)
        if ch == "chat" then
            if type(a) == "table" and a.sender and a.text then
                addChat(a.sender, a.text, false, Color3.fromRGB(140, 200, 255))
            end
        elseif ch == "userCount" then
            Net.count = a or 1
            Net.users = b or {}
        elseif ch == "feedbackAck" then
            notify("Feedback sent", "Thanks, "..tostring(a).."!", Theme.success, 3)
        end
    end)
    Net.send("register")
    task.spawn(function()
        while true do
            task.wait(10)
            Net.send("heartbeat")
        end
    end)
end

task.spawn(function()
    while not LP:FindFirstChild("PlayerGui") do task.wait(0.1) end
    local pg = LP:FindFirstChild("PlayerGui")
    local function killRow(d)
        local row = d
        for _ = 1, 5 do
            if row and row.Parent and row.Parent:IsA("ScrollingFrame") then break end
            if row and row.Parent then row = row.Parent else break end
        end
        if row and row.Parent and row:IsA("GuiObject") then row:Destroy() end
    end
    while pg and pg.Parent do
        for _, g in ipairs(pg:GetChildren()) do
            if g.Name:lower():find("chat") and (g:IsA("ScreenGui") or g:IsA("Folder")) then
                for _, d in ipairs(g:GetDescendants()) do
                    if (d:IsA("TextLabel") or d:IsA("TextButton")) and (d.Text or ""):find("[RPR]", 1, true) then
                        killRow(d)
                    end
                end
                g.DescendantAdded:Connect(function(d)
                    if (d:IsA("TextLabel") or d:IsA("TextButton")) and (d.Text or ""):find("[RPR]", 1, true) then
                        task.defer(function() killRow(d) end)
                    end
                end)
            end
        end
        task.wait(1.5)
    end
end)

--==================== CONFIG ====================
Cfg = {
    Aimbot = {
        Enabled = false, Key = Enum.UserInputType.MouseButton2, ToggleMode = false,
        FOV = 180, Smoothness = 8, Strength = 6, TargetPart = "Head",
        TeamCheck = false, VisibleOnly = false, ShowCircle = true, Humanize = true,
        MaxDist = 1000,
    },
    Trigger = {
        Enabled = false, Key = Enum.UserInputType.MouseButton1,
        Radius = 20, Delay = 0.05, TeamCheck = true,
    },
    Visuals = {
        Enabled = false, NameTags = true, Distance = true, ShowRole = true,
        Mode = "Team", Fill = 0.55, RainbowSpeed = 0.5,
        NoFog = false, InfZoom = false, FOVMin = 0.5, FOVMax = 120,
    },
    Movement = {
        Noclip = false, SpeedEnabled = false, Speed = 32,
        JumpEnabled = false, JumpPower = 80, InfiniteJump = false,
        Fly = false, FlySpeed = 60, FlySmooth = 12, FlyBoost = 2.5,
        GodMode = false, Freecam = false, FreecamSpeed = 50, FreecamSens = 1,
        Sprint = false, SprintSpeed = 60, Bunnyhop = false,
        Spinbot = false, AntiFling = false, AntiAFK = false,
    },
    World = {
        Fullbright = false, TimeEnabled = false, Time = 14,
        GravityEnabled = false, Gravity = 196.2,
        RemoveBlur = false, FOVEnabled = false, FOV = 70,
    },
    Utility = {
        FlingPower = 60000, FlingDur = 4,
        AutoClicker = false, AutoClickDelay = 0.05,
        AutoRespawn = false, ChatSpam = false, ChatSpamMsg = "REAPER",
        AutoSheriff = false, AutoSheriffRange = 120,
    },
    Troll = {
        FollowTarget = false, FollowSpeed = 55,
        Hump = false, HumpSpeed = 8, HumpAmp = 1.5, HumpDist = 1.6,
        HumpYawOnly = false, HumpKeepOwner = true, HumpUsePlatform = false,
        HumpOverrideFly = true, HumpVelMatch = true, HumpAutoDetect = true,
        TapTarget = false, TapRadius = 30,
    },
    UI = {
        MenuKey = Enum.KeyCode.X, HUDKey = Enum.KeyCode.H,
        HUD = true, ADKey = Enum.KeyCode.J, AD = true,
        MenuOpacity = 0, MenuBlur = true, AnimatedOpen = true,
        MenuResizable = true, MinW = 540, MinH = 420,
        HUDMovable = true, HUDResizable = true,
        ADMovable = true, ADResizable = true,
        Juicy = true, Notifs = true, Ambient = true,
        ShimmerHeaders = true, BorderGlow = true,
        Sakura = false, SakuraLeaves = 80, SakuraSpeed = 22,
        Crosshair = true, CrosshairSize = 26, CrosshairThick = 2,
        CrosshairPulse = true, HideCrossOnMenu = true,
        ReticleRings = true, ReticleLine = true, ReticleHP = true,
        ReticleMode = "Auto", ReticleR = 140, ReticleG = 220, ReticleB = 255,
    },
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
    return new("UIStroke", {
        Color = col, Thickness = th or 1, Transparency = tr or 0,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
    }, i)
end
function grad(i, c1, c2, rot)
    return new("UIGradient", {Color = ColorSequence.new(c1, c2), Rotation = rot or 90}, i)
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
end--==================== KEY SYSTEM (Redesigned) ====================
local SESSION_KEY = nil

local function postJSON(path, tbl)
    local body = game:GetService("HttpService"):JSONEncode(tbl)
    local ok, res = httpPost(KEY_API .. path, body)
    if not ok then return nil, tostring(res) end
    local status = nil
    local respBody = nil
    if type(res) == "table" then
        status = res.StatusCode or res.Status or res.status
        respBody = res.Body or res.body or res.Data
    end
    if status and tonumber(status) and tonumber(status) >= 400 then
        return nil, "HTTP "..tostring(status)..": "..tostring(respBody or "")
    end
    local okDecode, decoded = pcall(function()
        return game:GetService("HttpService"):JSONDecode(respBody)
    end)
    if okDecode then return decoded end
    return nil, "bad response: "..tostring(respBody)
end

local function showKeyPrompt()
    local pg = LP:WaitForChild("PlayerGui")
    local existing = pg:FindFirstChild("ReaperKeyPrompt")
    if existing then existing:Destroy() end

    local promptGui = new("ScreenGui", {Name = "ReaperKeyPrompt", ResetOnSpawn = false,
        IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, pg)

    -- Full-screen dark backdrop
    local backdrop = new("Frame", {Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = Color3.fromRGB(2, 3, 8), BackgroundTransparency = 1,
        BorderSizePixel = 0, ZIndex = 1}, promptGui)
    Tween:Create(backdrop, TweenInfo.new(0.4), {BackgroundTransparency = 0.35}):Play()

    -- Main card
    local cardW, cardH = 460, 320
    local card = new("Frame", {Size = UDim2.fromOffset(cardW, cardH),
        Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 + 30),
        BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 3}, promptGui)
    corner(card, 18)
    grad(card, Color3.fromRGB(12, 16, 28), Theme.bg, 90)

    -- Animated glow border
    local borderGlow = new("Frame", {Size = UDim2.new(1, 14, 1, 14),
        Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Theme.accent, BackgroundTransparency = 0.65,
        BorderSizePixel = 0, ZIndex = 2}, card)
    corner(borderGlow, 22)
    local borderGlowG = new("UIGradient", {Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Theme.accent),
        ColorSequenceKeypoint.new(0.5, Theme.accent3),
        ColorSequenceKeypoint.new(1, Theme.accent),
    })}, borderGlow)

    task.spawn(function()
        while borderGlow.Parent do
            for i = 0, 360, 4 do
                if not borderGlow.Parent then return end
                borderGlowG.Rotation = i
                RS.RenderStepped:Wait()
            end
        end
    end)

    -- Solid stroke on top
    local cs = stroke(card, Theme.accent, 1.6, 0.15)

    -- Logo circle at top
    local logoCircle = new("Frame", {Size = UDim2.fromOffset(58, 58),
        Position = UDim2.new(0.5, 0, 0, -29), AnchorPoint = Vector2.new(0.5, 0),
        BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, ZIndex = 5}, card)
    corner(logoCircle, 29)
    tAcc(stroke(logoCircle, Theme.accent, 2, 0.05))
    local logoGrad = grad(logoCircle, Theme.panel3, Theme.panel2, 90)
    local logoInner = new("Frame", {Size = UDim2.new(1, -12, 1, -12),
        Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 6}, logoCircle)
    corner(logoInner, 24)
    tAcc(stroke(logoInner, Theme.accent, 1, 0.5))
    new("TextLabel", {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
        Text = "R", Font = Enum.Font.GothamBlack, TextSize = 24,
        TextColor3 = Theme.accent2, ZIndex = 7}, logoInner)

    -- Animate logo aura
    task.spawn(function()
        while logoCircle.Parent do
            Tween:Create(logoCircle, TweenInfo.new(1.8, Enum.EasingStyle.Sine),
                {Rotation = 8}):Play()
            task.wait(1.8)
            if not logoCircle.Parent then return end
            Tween:Create(logoCircle, TweenInfo.new(1.8, Enum.EasingStyle.Sine),
                {Rotation = -8}):Play()
            task.wait(1.8)
        end
    end)

    -- Title
    local title = new("TextLabel", {Size = UDim2.new(1, 0, 0, 26),
        Position = UDim2.fromOffset(0, 46), BackgroundTransparency = 1,
        Text = "DISCORD VERIFICATION", Font = Enum.Font.GothamBlack,
        TextSize = 17, TextColor3 = Theme.accent2, ZIndex = 4}, card)
    new("UIGradient", {Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Theme.accent2),
        ColorSequenceKeypoint.new(1, Theme.accent3),
    })}, title)

    -- Subtitle
    local sub = new("TextLabel", {Size = UDim2.new(1, -40, 0, 32),
        Position = UDim2.fromOffset(20, 76), BackgroundTransparency = 1,
        Text = "You must be a member of the Discord server\nto unlock REAPER.",
        Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = Theme.muted,
        TextWrapped = true, TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 4}, card)

    -- Divider line
    new("Frame", {Size = UDim2.new(1, -56, 0, 1),
        Position = UDim2.fromOffset(28, 122), BackgroundColor3 = Theme.strokeSoft,
        BackgroundTransparency = 0.5, BorderSizePixel = 0, ZIndex = 4}, card)

    -- "STEP 01" label
    new("TextLabel", {Size = UDim2.new(0, 100, 0, 14),
        Position = UDim2.fromOffset(28, 132), BackgroundTransparency = 1,
        Text = "STEP 01  ·  ENTER USERNAME", Font = Enum.Font.GothamBold,
        TextSize = 9, TextColor3 = Theme.accent, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, card)

    -- Username input
    local inputWrap = new("Frame", {Size = UDim2.new(1, -56, 0, 38),
        Position = UDim2.fromOffset(28, 150), BackgroundColor3 = Theme.panel2,
        BorderSizePixel = 0, ZIndex = 4}, card)
    corner(inputWrap, 9)
    local inputStroke = stroke(inputWrap, Theme.strokeSoft, 1.2, 0.3)
    local inputGrad = grad(inputWrap, Color3.fromRGB(28, 36, 58), Theme.panel2, 90)
    new("UIPadding", {PaddingLeft = UDim.new(0, 12), PaddingRight = UDim.new(0, 12)}, inputWrap)
    local inputIcon = new("TextLabel", {Size = UDim2.fromOffset(20, 38),
        BackgroundTransparency = 1, Text = "@", Font = Enum.Font.GothamBold,
        TextSize = 14, TextColor3 = Theme.accent, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, inputWrap)
    local tb = new("TextBox", {Size = UDim2.new(1, -24, 1, 0), Position = UDim2.fromOffset(24, 0),
        BackgroundTransparency = 1, Text = "",
        PlaceholderText = "your discord username", PlaceholderColor3 = Theme.muted,
        Font = Enum.Font.GothamMedium, TextSize = 13, TextColor3 = Theme.text,
        ClearTextOnFocus = false, ZIndex = 5,
        TextXAlignment = Enum.TextXAlignment.Left}, inputWrap)
    tb.Focused:Connect(function()
        Tween:Create(inputStroke, TweenInfo.new(0.15), {Color = Theme.accent, Transparency = 0}):Play()
    end)
    tb.FocusLost:Connect(function()
        Tween:Create(inputStroke, TweenInfo.new(0.15), {Color = Theme.strokeSoft, Transparency = 0.3}):Play()
    end)

    -- Verify button
    local btn = new("TextButton", {Size = UDim2.new(1, -56, 0, 42),
        Position = UDim2.fromOffset(28, 200), BackgroundColor3 = Theme.accent,
        Text = "VERIFY", Font = Enum.Font.GothamBold, TextSize = 14,
        TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
        BorderSizePixel = 0, ZIndex = 4}, card)
    corner(btn, 9)
    local btnGrad = grad(btn, Theme.accent, Theme.accent3, 0)
    local btnStroke = stroke(btn, Theme.accent2, 1.4, 0.4)
    local btnShine = new("Frame", {Size = UDim2.new(0.4, 0, 1, 0),
        Position = UDim2.new(-0.5, 0, 0, 0), BackgroundColor3 = Color3.new(1,1,1),
        BackgroundTransparency = 0.75, BorderSizePixel = 0, ZIndex = 5}, btn)
    corner(btnShine, 9)
    new("UIGradient", {Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 1),
        NumberSequenceKeypoint.new(0.5, 0.4),
        NumberSequenceKeypoint.new(1, 1),
    }), Rotation = 0}, btnShine)
    task.spawn(function()
        while btnShine.Parent do
            btnShine.Position = UDim2.new(-0.5, 0, 0, 0)
            Tween:Create(btnShine, TweenInfo.new(2.4, Enum.EasingStyle.Linear),
                {Position = UDim2.new(1.4, 0, 0, 0)}):Play()
            task.wait(3.2)
        end
    end)

    btn.MouseEnter:Connect(function()
        Tween:Create(btnStroke, TweenInfo.new(0.15), {Transparency = 0}):Play()
    end)
    btn.MouseLeave:Connect(function()
        Tween:Create(btnStroke, TweenInfo.new(0.15), {Transparency = 0.4}):Play()
    end)

    -- Status / step hint area
    local statusWrap = new("Frame", {Size = UDim2.new(1, -56, 0, 40),
        Position = UDim2.fromOffset(28, 250), BackgroundTransparency = 1, ZIndex = 4}, card)
    local dot = new("Frame", {Size = UDim2.fromOffset(6, 6),
        Position = UDim2.fromOffset(0, 8), BackgroundColor3 = Theme.muted,
        BorderSizePixel = 0, ZIndex = 5}, statusWrap)
    corner(dot, 3)
    local status = new("TextLabel", {Size = UDim2.new(1, -16, 1, 0),
        Position = UDim2.fromOffset(14, 0), BackgroundTransparency = 1,
        Text = "Waiting for input…",
        Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        TextWrapped = true, ZIndex = 5}, statusWrap)

    -- Footer: discord invite link
    local invite = new("TextButton", {Size = UDim2.new(1, 0, 0, 18),
        Position = UDim2.new(0, 0, 1, -22), BackgroundTransparency = 1,
        Text = "Not in the server?  Join Discord →",
        Font = Enum.Font.GothamMedium, TextSize = 10, TextColor3 = Theme.accent,
        AutoButtonColor = false, ZIndex = 4}, card)
    invite.MouseEnter:Connect(function()
        Tween:Create(invite, TweenInfo.new(0.15), {TextColor3 = Theme.accent2}):Play()
    end)
    invite.MouseLeave:Connect(function()
        Tween:Create(invite, TweenInfo.new(0.15), {TextColor3 = Theme.accent}):Play()
    end)
    invite.MouseButton1Click:Connect(function()
        if setclipboard then
            pcall(function() setclipboard(DISCORD_INVITE) end)
            status.Text = "Invite copied to clipboard!"
            status.TextColor3 = Theme.accent2
            dot.BackgroundColor3 = Theme.accent2
        end
    end)

    -- Enter key support
    tb.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            btn:SetAttribute("click", true)
        end
    end)

    local result = {done = false, success = false}

    local function doVerify()
        local uname = (tb.Text or ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("^@", "")
        if uname == "" then
            status.Text = "Please enter a username."
            status.TextColor3 = Theme.danger
            dot.BackgroundColor3 = Theme.danger
            pulse(inputWrap, 1.03, 0.1)
            return
        end

        btn.Text = "VERIFYING…"
        btn.BackgroundColor3 = Theme.panel3
        btnGrad.Color = ColorSequence.new(Theme.panel3, Theme.panel2)
        status.Text = "Contacting verification server…"
        status.TextColor3 = Theme.accent2
        dot.BackgroundColor3 = Theme.accent2

        task.spawn(function()
            local resp, err = postJSON("/verify", {
                robloxId = tostring(LP.UserId),
                discordUsername = uname,
            })

            if not resp then
                status.Text = "Connection error: " .. tostring(err)
                status.TextColor3 = Theme.danger
                dot.BackgroundColor3 = Theme.danger
                btn.Text = "RETRY"
                btn.BackgroundColor3 = Theme.accent
                btnGrad.Color = ColorSequence.new(Theme.accent, Theme.accent3)
                return
            end

            if resp.success and resp.key then
                SESSION_KEY = resp.key
                status.Text = "Verified! Loading REAPER…"
                status.TextColor3 = Theme.success
                dot.BackgroundColor3 = Theme.success
                btn.Text = "✓ SUCCESS"
                btn.BackgroundColor3 = Theme.success
                btnGrad.Color = ColorSequence.new(Theme.success, Theme.accent)
                task.wait(1.4)
                Tween:Create(card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                    {Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 - 20), BackgroundTransparency = 1}):Play()
                task.wait(0.35)
                promptGui:Destroy()
                result.done = true
                result.success = true
            else
                status.Text = "Failed: " .. (resp.error or "unknown")
                status.TextColor3 = Theme.danger
                dot.BackgroundColor3 = Theme.danger
                btn.Text = "TRY AGAIN"
                btn.BackgroundColor3 = Theme.accent
                btnGrad.Color = ColorSequence.new(Theme.accent, Theme.accent3)
            end
        end)
    end

    btn.MouseButton1Click:Connect(doVerify)
    tb:GetPropertyChangedSignal("Text"):Connect(function()
        if tb:GetAttribute("__submitted") then return end
    end)
    -- re-bind enter behavior cleanly
    tb.FocusLost:Connect(function(enter)
        if enter then doVerify() end
    end)

    -- Entrance animation
    card.Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2 + 70)
    card.BackgroundTransparency = 1
    Tween:Create(card, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Position = UDim2.new(0.5, -cardW/2, 0.5, -cardH/2), BackgroundTransparency = 0}):Play()

    while not result.done do task.wait(0.2) end
    return result.success
end

local function verifySession()
    if SESSION_KEY then
        local resp = postJSON("/check", {
            robloxId = tostring(LP.UserId),
            key = SESSION_KEY,
        })
        if resp and resp.valid then return true end
        SESSION_KEY = nil
    end
    return showKeyPrompt()
end

if not verifySession() then
    warn("[REAPER] Key verification failed. Script locked.")
    return
end

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
    local minW = opts.minW or 300
    local minH = opts.minH or 200
    local corners_ = opts.corners or {"br", "tr", "bl", "tl"}
    local gs = opts.gripSize or 14
    local baseZ = (frame.ZIndex or 1) + 500
    frame.ClipsDescendants = true
    for _, c in ipairs(corners_) do
        local grip = new("Frame", {
            Name = "Resize_"..c, Size = UDim2.fromOffset(gs, gs),
            BackgroundTransparency = 1, ZIndex = baseZ, Active = true,
        }, frame)
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
    local o = inst.Size
    local b = UDim2.new(o.X.Scale*(sc or 1.06), o.X.Offset*(sc or 1.06),
        o.Y.Scale*(sc or 1.06), o.Y.Offset*(sc or 1.06))
    Tween:Create(inst, TweenInfo.new(dur or 0.08), {Size = b}):Play()
    task.delay(dur or 0.08, function()
        if inst and inst.Parent then
            Tween:Create(inst, TweenInfo.new(dur or 0.12, Enum.EasingStyle.Back), {Size = o}):Play()
        end
    end)
end
function flash(inst, col, dur)
    if not Cfg.UI.Juicy then return end
    local o = inst.BackgroundColor3
    inst.BackgroundColor3 = col
    task.delay(dur or 0.1, function()
        if inst and inst.Parent then
            Tween:Create(inst, TweenInfo.new(0.18), {BackgroundColor3 = o}):Play()
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
    local card = new("Frame", {Size = UDim2.new(1, 0, 0, 68),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
        BorderSizePixel = 0, ZIndex = 2}, notifStack)
    corner(card, 10)
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
    card.Position = UDim2.new(1, 60, 0, 0); card.Size = UDim2.new(1, 0, 0, 0)
    Tween:Create(card, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
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
end--==================== SAVE ====================
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
function renameLoadout(old, new)
    if old == new then return false end
    local t = saveTable()
    if not t[old] or t[new] then return false end
    t[new] = t[old]
    t[old] = nil
    writeSave(t)
    if autoloadName == old then
        autoloadName = new
        _G.__ReaperAutoload = new
        if IO.has then pcall(IO.write, autoloadFile(), new) end
    end
    return true
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
end

--==================== GUI ROOT ====================
local pg = LP:WaitForChild("PlayerGui")
gui = new("ScreenGui", {Name = "ReaperUI", ResetOnSpawn = false,
    IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9999}, pg)
initNotifs(pg)

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
            RA.spectateTarget = nil
            RA.spectateZoom = 1
            notify("Spectate off", "", Theme.muted, 1.5)
        else
            RA.spectateTarget = t
            RA.spectateZoom = 1
            notify("Spectating", t.Name.." · scroll to zoom", Theme.accent3, 3)
        end
    elseif id == "hump" then
        TS.target = t
        if not Cfg.Troll.Hump and widgets["Troll.Hump"] then
            widgets["Troll.Hump"].set(true)
        end
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
            chip.MouseButton1Click:Connect(function()
                runAction(a.id); pulse(chip, 1.1, 0.08)
            end)
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
    RA.keys.teleport = u[1]
    RA.keys.spectate = u[2]
    RA.keys.hump = u[3]
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
LW, LH = 165, 52
logo = new("TextButton", {Name = "Logo", Size = UDim2.fromOffset(LW, LH),
    Position = UDim2.new(0.5, -LW/2, 0, 10), BackgroundTransparency = 1, Text = "",
    AutoButtonColor = false, ZIndex = 60}, gui)
aura = tAcc(new("Frame", {Size = UDim2.fromScale(1.06, 1.15),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Theme.accent, BackgroundTransparency = 0.6,
    BorderSizePixel = 0, ZIndex = 1}, logo))
corner(aura, 13)
back = tBg(new("Frame", {Size = UDim2.fromScale(1, 1),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, logo))
corner(back, 13); grad(back, Theme.panel, Theme.bg, 90)
backStroke = tAcc(stroke(back, Theme.accent, 1.4, 0.2))
ring = new("Frame", {Size = UDim2.fromScale(1, 1),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundTransparency = 1, ZIndex = 3}, logo)
corner(ring, 13)
new("UIStroke", {Color = Color3.new(1, 1, 1), Thickness = 1.4}, ring)
ringG = new("UIGradient", {Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 180, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 80, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 180, 255)),
}), Rotation = 0}, ring:FindFirstChildOfClass("UIStroke"))
plate = tPanel(new("Frame", {Size = UDim2.fromOffset(34, 34),
    Position = UDim2.new(0, 9, 0.5, -17), BackgroundColor3 = Theme.panel,
    BorderSizePixel = 0, ZIndex = 4}, back))
corner(plate, 17); tAcc(stroke(plate, Theme.accent, 1.4, 0.15))
flame = new("Frame", {Size = UDim2.fromOffset(13, 13),
    Position = UDim2.fromScale(0.5, 0.62), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Theme.accent, BorderSizePixel = 0, Rotation = 45, ZIndex = 5}, plate)
corner(flame, 3); tAcc(flame)
grad(flame, Color3.fromRGB(180, 240, 255), Color3.fromRGB(30, 120, 220), 90)
flameTop = new("Frame", {Size = UDim2.fromOffset(7, 7),
    Position = UDim2.fromScale(0.5, 0.44), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Color3.fromRGB(220, 245, 255), BorderSizePixel = 0, Rotation = 45, ZIndex = 6}, plate)
corner(flameTop, 2)
title = new("TextLabel", {Size = UDim2.new(1, -48, 0, 24), Position = UDim2.fromOffset(48, 6),
    BackgroundTransparency = 1, Text = "REAPER", Font = Enum.Font.GothamBlack,
    TextSize = 17, TextColor3 = Color3.new(1, 1, 1), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back)
titleG = new("UIGradient", {Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 220, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(60, 140, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 80, 255)),
}), Rotation = 20}, title)
tAcc(stroke(title, Theme.accent, 1.2, 0.2))
tMuted(new("TextLabel", {Size = UDim2.new(1, -48, 0, 11), Position = UDim2.fromOffset(49, 32),
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
            {BackgroundTransparency = 0.8, Size = UDim2.fromScale(1.12, 1.22)})
        t1:Play(); t1.Completed:Wait()
        local t2 = Tween:Create(aura, TweenInfo.new(1.3, Enum.EasingStyle.Sine),
            {BackgroundTransparency = 0.55, Size = UDim2.fromScale(1.04, 1.1)})
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

--==================== MENU ====================
menu = tBg(new("Frame", {Name = "Menu", Size = UDim2.fromOffset(740, 560),
    Position = UDim2.new(0.5, -370, 0.5, -280), BackgroundColor3 = Theme.bg,
    BorderSizePixel = 0, ClipsDescendants = true, Visible = false, ZIndex = 30}, gui))
corner(menu, 14)
menuStroke = tAcc(stroke(menu, Theme.accent, 2, 0.25))
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
bgGlow = new("Frame", {Size = UDim2.fromScale(1.4, 1.4),
    Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
    BackgroundColor3 = Theme.accent, BorderSizePixel = 0, BackgroundTransparency = 0.94, ZIndex = 0}, menu)
corner(bgGlow, 400)
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
    for i = 1, 20 do
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
        rainTrails[#rainTrails+1] = {inst = holder,
            speed = Theme.rain.speed * (0.7 + math.random()*0.7)}
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

header = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 40),
    BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(header, 14)
grad(header, Color3.fromRGB(30, 62, 112), Color3.fromRGB(6, 10, 22), 90)
new("Frame", {Size = UDim2.new(1, 0, 0, 2), Position = UDim2.new(0, 0, 1, -2),
    BackgroundColor3 = Theme.accent, BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 32}, header)
tAcc2(new("TextLabel", {Size = UDim2.fromOffset(260, 40), Position = UDim2.fromOffset(14, 0),
    BackgroundTransparency = 1, Text = "REAPER", Font = Enum.Font.GothamBlack,
    TextSize = 15, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 32}, header))
closeBtn = new("TextButton", {Size = UDim2.fromOffset(24, 24),
    Position = UDim2.new(1, -34, 0, 8), BackgroundColor3 = Theme.danger, Text = "✕",
    Font = Enum.Font.GothamBold, TextSize = 12, TextColor3 = Color3.new(1,1,1),
    AutoButtonColor = false, ZIndex = 33}, header)
corner(closeBtn, 6)
closeBtn.MouseButton1Click:Connect(function() closeMenu() end)

--==================== TICKER (Redesigned — bigger, bolder) ====================
TICKER_HEIGHT = 32
tickerBar = tPanel(new("Frame", {Size = UDim2.new(1, -20, 0, TICKER_HEIGHT),
    Position = UDim2.fromOffset(10, 46), BackgroundColor3 = Theme.panel,
    BackgroundTransparency = 0.15, BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 31}, menu))
corner(tickerBar, 8)
grad(tickerBar, Color3.fromRGB(10, 16, 30), Color3.fromRGB(4, 6, 14), 90)
tickerStroke = stroke(tickerBar, Theme.tickerColor, 1.4, 0.3)
new("UIPadding", {PaddingTop = UDim.new(0, 2), PaddingBottom = UDim.new(0, 2)}, tickerBar)

-- Gradient shimmer on the ticker bar itself
tickerBarGrad = new("UIGradient", {Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 62, 112)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(60, 160, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 62, 112)),
}), Rotation = 0, Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.9),
    NumberSequenceKeypoint.new(0.5, 0.4),
    NumberSequenceKeypoint.new(1, 0.9),
})}, tickerBar)

tickerGlow = new("TextLabel", {Size = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 1,
    Text = Theme.ticker, Font = Enum.Font.GothamBlack, TextSize = 18,
    TextColor3 = Theme.tickerColor, TextTransparency = 0.55,
    TextXAlignment = Enum.TextXAlignment.Left, AutomaticSize = Enum.AutomaticSize.X, ZIndex = 32}, tickerBar)
tickerLabel = new("TextLabel", {Size = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 1,
    Text = Theme.ticker, Font = Enum.Font.GothamBlack, TextSize = 16,
    TextColor3 = Theme.tickerColor,
    TextStrokeTransparency = 0.35,
    TextStrokeColor3 = Color3.fromRGB(4, 6, 14),
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
        tickerX = tickerX - 130 * dt
        if tickerX + w < 0 then tickerX = tickerBar.AbsoluteSize.X + 4 end
        tickerLabel.Position = UDim2.fromOffset(tickerX, 0)
        tickerGlow.Position = UDim2.fromOffset(tickerX + 1, 1)
    end)
end)

-- shimmer offset animation on the label gradient
task.spawn(function()
    local phase = 0
    while tickerLabel.Parent do
        phase = (phase + 0.005) % 1
        tickerLabelGrad.Offset = Vector2.new(phase, 0)
        RS.RenderStepped:Wait()
    end
end)

-- Positions shifted down to accommodate taller ticker
rail = tPanel(new("Frame", {Size = UDim2.new(0, 130, 1, -128),
    Position = UDim2.fromOffset(10, 86), BackgroundColor3 = Theme.panel,
    BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(rail, 10)
new("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, rail)
new("UIPadding", {PaddingTop = UDim.new(0, 8), PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, rail)
tabIndicator = new("Frame", {Size = UDim2.new(1, -12, 0, 28),
    Position = UDim2.fromOffset(6, 8), BackgroundColor3 = Theme.accent,
    BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 31}, rail)
corner(tabIndicator, 6)
new("UIGradient", {Color = ColorSequence.new(Theme.accent, Theme.accent3)}, tabIndicator)
content = tPanel(new("Frame", {Size = UDim2.new(1, -158, 1, -128),
    Position = UDim2.fromOffset(148, 86), BackgroundColor3 = Theme.panel,
    BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(content, 10)
status = tPanel(new("Frame", {Size = UDim2.new(1, -20, 0, 20),
    Position = UDim2.new(0, 10, 1, -26), BackgroundColor3 = Theme.panel,
    BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(status, 6)
statusLbl = tMuted(new("TextLabel", {Size = UDim2.new(1, -12, 1, 0),
    Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1, Text = "REAPER",
    Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
    TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 32}, status))

makeDraggable(menu, header)
makeResizable(menu, {minW = Cfg.UI.MinW, minH = Cfg.UI.MinH})

function openMenu()
    if Cfg.UI.AnimatedOpen then
        local sz, ps = menu.Size, menu.Position
        menu.Visible = true
        menu.Size = UDim2.fromOffset(660, 500)
        menu.Position = UDim2.new(0.5, -330, 0.5, -250)
        Tween:Create(menu, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size = sz, Position = ps}):Play()
    else
        menu.Visible = true
    end
end
function closeMenu()
    if Cfg.UI.AnimatedOpen and menu.Visible then
        local sz, ps = menu.Size, menu.Position
        local t = Tween:Create(menu, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
            {Size = UDim2.fromOffset(660, 500), Position = UDim2.new(0.5, -330, 0.5, -250)})
        t:Play()
        t.Completed:Connect(function()
            menu.Visible = false
            menu.Size, menu.Position = sz, ps
        end)
    else
        menu.Visible = false
    end
end

--==================== WIDGETS ====================
pages = {}; tabs = {}; widgets = {}
toggleLabels = {}
pendingKeybind = nil
refreshHUD = function() end
refreshAD = function() end
function resolvePage(p) if type(p) == "string" then return pages[p] end; return p end

function makeTab(id, title)
    local tab = tPanel2(new("TextButton", {Size = UDim2.new(1, 0, 0, 28),
        BackgroundColor3 = Theme.panel2, Text = title, Font = Enum.Font.GothamBold,
        TextSize = 11, TextColor3 = Theme.muted, AutoButtonColor = false,
        LayoutOrder = #rail:GetChildren(), ZIndex = 32}, rail))
    corner(tab, 7)
    tStroke(stroke(tab, Theme.strokeSoft, 1, 0.5))
    tabs[id] = tab
    local page = new("ScrollingFrame", {Name = "Page_"..id, Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 4,
        ScrollBarImageColor3 = Theme.accent, CanvasSize = UDim2.new(0, 0, 0, 0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y, Visible = false, ZIndex = 32}, content)
    new("UIListLayout", {Padding = UDim.new(0, 7), SortOrder = Enum.SortOrder.LayoutOrder}, page)
    new("UIPadding", {PaddingTop = UDim.new(0, 12), PaddingLeft = UDim.new(0, 12),
        PaddingRight = UDim.new(0, 12), PaddingBottom = UDim.new(0, 12)}, page)
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
            {Position = UDim2.fromOffset(6, ty)}):Play()
        ripple(tab, tab.AbsoluteSize.X/2, tab.AbsoluteSize.Y/2, Theme.accent2, 20, 0.5)
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
    local wrap = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 28),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(wrap, 7)
    tStroke(stroke(wrap, Theme.strokeSoft, 1, 0.5))
    local hg = grad(wrap, Color3.fromRGB(52, 110, 185), Theme.panel2, 0)
    new("Frame", {Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = Theme.accent,
        BorderSizePixel = 0, ZIndex = 35}, wrap)
    new("TextLabel", {Size = UDim2.new(1, -14, 1, 0), Position = UDim2.fromOffset(12, 0),
        BackgroundTransparency = 1, Text = (icon and icon.."  " or "")..title,
        Font = Enum.Font.GothamBlack, TextSize = 11, TextColor3 = Theme.accent2,
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
    local hdr = tPanel2(new("TextButton", {Size = UDim2.new(1, 0, 0, 28),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15, Text = "",
        AutoButtonColor = false, LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(hdr, 7)
    tStroke(stroke(hdr, Theme.strokeSoft, 1, 0.5))
    grad(hdr, Color3.fromRGB(52, 110, 185), Theme.panel2, 0)
    local arrow = new("TextLabel", {Size = UDim2.fromOffset(18, 28), Position = UDim2.fromOffset(8, 0),
        BackgroundTransparency = 1, Text = state and "▼" or "▶",
        Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Theme.accent2, ZIndex = 34}, hdr)
    new("TextLabel", {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(26, 0),
        BackgroundTransparency = 1, Text = title, Font = Enum.Font.GothamBlack,
        TextSize = 11, TextColor3 = Theme.accent2,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, hdr)
    local holder = new("Frame", {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
        AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = #page:GetChildren(),
        Visible = state, ZIndex = 33}, page)
    new("UIListLayout", {Padding = UDim.new(0, 7), SortOrder = Enum.SortOrder.LayoutOrder}, holder)
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
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.accent)
    new("TextLabel", {Size = UDim2.new(1, -200, 1, 0), Position = UDim2.fromOffset(16, 0),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.Gotham, TextSize = 12,
        TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, row)
    local keyBtn = tPanel2(new("TextButton", {Size = UDim2.fromOffset(78, 20),
        Position = UDim2.new(1, -126, 0.5, -10), BackgroundColor3 = Theme.panel2,
        Text = "+ bind", Font = Enum.Font.GothamBold, TextSize = 10,
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
    local track = new("Frame", {Size = UDim2.fromOffset(44, 22),
        Position = UDim2.new(1, -52, 0.5, -11),
        BackgroundColor3 = state and Theme.accent or Theme.panel2,
        BorderSizePixel = 0, ZIndex = 36}, row)
    corner(track, 11)
    tStroke(stroke(track, Theme.strokeSoft, 1, 0.4))
    local thumb = new("Frame", {Size = UDim2.fromOffset(16, 16),
        Position = state and UDim2.new(1, -19, 0.5, -8) or UDim2.new(0, 3, 0.5, -8),
        BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 37}, track)
    corner(thumb, 8)
    tAcc(stroke(thumb, Theme.accent, 1.4, 0.2))
    local function render()
        if state then
            track.BackgroundColor3 = Theme.accent
            thumb.Position = UDim2.new(1, -19, 0.5, -8)
        else
            track.BackgroundColor3 = Theme.panel2
            thumb.Position = UDim2.new(0, 3, 0.5, -8)
        end
    end
    local function set(v, fire)
        local nv = v and true or false
        local changed = nv ~= state
        state = nv
        setPath(Cfg, path, state)
        render()
        if path == "Troll.Hump" and not state then
            local h = hum()
            if h then
                h.PlatformStand = false
                h.AutoRotate = true
                pcall(function() h:ChangeState(Enum.HumanoidStateType.GettingUp) end)
            end
            TS.humpWasActive = false
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
            ripple(track, 22, 11, state and Theme.danger or Theme.success, 20, 0.5)
        end
    end)
end

function sliderRow(pageId, path, label, mn, mx, dec, onChange)
    local page = resolvePage(pageId)
    if not page then return end
    local cur = getPath(Cfg, path)
    if type(cur) ~= "number" then cur = mn; setPath(Cfg, path, mn) end
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 42),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.accent)
    new("TextLabel", {Size = UDim2.new(1, -90, 0, 14), Position = UDim2.fromOffset(16, 5),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.Gotham, TextSize = 12,
        TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, row)
    local valLbl = new("TextLabel", {Size = UDim2.fromOffset(70, 14),
        Position = UDim2.new(1, -80, 0, 5), BackgroundTransparency = 1,
        Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Theme.accent2,
        TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 36}, row)
    local bar = tPanel2(new("Frame", {Size = UDim2.new(1, -24, 0, 6),
        Position = UDim2.fromOffset(12, 27), BackgroundColor3 = Theme.panel2, ZIndex = 34}, row))
    corner(bar, 3)
    tStroke(stroke(bar, Theme.strokeSoft, 1, 0.5))
    local fill = new("Frame", {Size = UDim2.new(0, 0, 1, 0),
        BackgroundColor3 = Theme.accent, BorderSizePixel = 0, ZIndex = 35}, bar)
    corner(fill, 3); tAcc(fill)
    grad(fill, Theme.accent, Theme.accent3, 0)
    local thumb = new("Frame", {Size = UDim2.fromOffset(14, 14),
        Position = UDim2.new(0, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 36}, bar)
    corner(thumb, 7)
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
            ripple(bar, bar.AbsoluteSize.X/2, 2, Theme.accent, 14, 0.4)
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
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.accent)
    new("TextLabel", {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(16, 0),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.Gotham, TextSize = 12,
        TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, row)
    local b = tPanel2(new("TextButton", {Size = UDim2.fromOffset(140, 22),
        Position = UDim2.new(1, -150, 0.5, -11), BackgroundColor3 = Theme.panel2,
        Text = text, Font = Enum.Font.GothamBold, TextSize = 10,
        TextColor3 = Theme.accent2, AutoButtonColor = false, ZIndex = 36}, row))
    corner(b, 6)
    tStroke(stroke(b, Theme.strokeSoft, 1))
    b.MouseButton1Click:Connect(function()
        pulse(b, 0.94, 0.06)
        glow(b, Theme.accent2, 0.35)
        ripple(b, b.AbsoluteSize.X/2, b.AbsoluteSize.Y/2, Theme.accent, 18, 0.45)
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
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    new("TextLabel", {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(16, 0),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.Gotham, TextSize = 12,
        TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, row)
    local tb = tPanel2(new("TextBox", {Size = UDim2.fromOffset(160, 22),
        Position = UDim2.new(1, -168, 0.5, -11), BackgroundColor3 = Theme.panel2,
        Text = initial or "", PlaceholderText = ph or "", Font = Enum.Font.Gotham,
        TextSize = 11, TextColor3 = Theme.accent2, PlaceholderColor3 = Theme.muted,
        ClearTextOnFocus = false, ZIndex = 36}, row))
    corner(tb, 5)
    tStroke(stroke(tb, Theme.strokeSoft, 1))
    tb.FocusLost:Connect(function() if onCommit then onCommit(tb.Text) end end)
    return tb
end

function cycleRow(pageId, path, label, options, onChange)
    local page = resolvePage(pageId)
    if not page then return end
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    hoverStripe(row, Theme.accent)
    new("TextLabel", {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(16, 0),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.Gotham, TextSize = 12,
        TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, row)
    local b = tPanel2(new("TextButton", {Size = UDim2.fromOffset(140, 22),
        Position = UDim2.new(1, -150, 0.5, -11), BackgroundColor3 = Theme.panel2,
        Text = tostring(getPath(Cfg, path) or options[1]),
        Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
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
        ripple(b, b.AbsoluteSize.X/2, b.AbsoluteSize.Y/2, Theme.accent, 18, 0.4)
        if onChange then pcall(onChange, options[idx]) end
    end)
    widgets[path] = {set = function(v) setPath(Cfg, path, v); b.Text = tostring(v) end,
        get = function() return getPath(Cfg, path) end}
    return b
end

function infoRow(pageId, text)
    local page = resolvePage(pageId)
    if not page then return nil end
    local row = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 26),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.2,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 6)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.5))
    local lbl = new("TextLabel", {Size = UDim2.new(1, -10, 1, 0), Position = UDim2.fromOffset(12, 0),
        BackgroundTransparency = 1, Text = text or "", Font = Enum.Font.Code, TextSize = 11,
        TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, row)
    return lbl
end

function legendRow(pageId, label, col)
    local page = resolvePage(pageId)
    if not page then return end
    local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 28),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #page:GetChildren(), ZIndex = 33}, page))
    corner(row, 7)
    tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
    local sw = new("Frame", {Size = UDim2.fromOffset(28, 16), Position = UDim2.fromOffset(14, 6),
        BackgroundColor3 = col, BorderSizePixel = 0, ZIndex = 34}, row)
    corner(sw, 4)
    stroke(sw, col, 1, 0)
    new("TextLabel", {Size = UDim2.new(1, -50, 1, 0), Position = UDim2.fromOffset(50, 0),
        BackgroundTransparency = 1, Text = label, Font = Enum.Font.GothamBold,
        TextSize = 11, TextColor3 = col, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, row)
    return row
end

--==================== THEME / OPACITY ====================
function applyOpacity(op)
    op = math.clamp(tonumber(op) or 0, 0, 1)
    for _, d in ipairs(menu:GetDescendants()) do
        local anc, skip = d.Parent, false
        while anc and anc ~= menu do
            if anc == snowLayer or anc == rainLayer or anc == ambient or anc == bgGlow or anc == sakuraLayer then
                skip = true
                break
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
corner(hudFrame, 8)
tAcc(stroke(hudFrame, Theme.accent, 1.5, 0.3))
grad(hudFrame, Theme.panel, Theme.bg, 90)
hudHeader = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 24),
    BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, hudFrame))
corner(hudHeader, 8)
grad(hudHeader, Color3.fromRGB(25, 55, 100), Color3.fromRGB(8, 12, 24), 90)
tAcc2(new("TextLabel", {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(10, 0),
    BackgroundTransparency = 1, Text = "⚡ KEYBINDS", Font = Enum.Font.GothamBlack,
    TextSize = 11, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, hudHeader))
hudHide = new("TextButton", {Size = UDim2.fromOffset(18, 18),
    Position = UDim2.new(1, -22, 0, 3), BackgroundColor3 = Theme.danger, Text = "−",
    Font = Enum.Font.GothamBold, TextSize = 12, TextColor3 = Color3.new(1, 1, 1),
    AutoButtonColor = false}, hudHeader)
corner(hudHide, 4)
hudList = new("Frame", {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 24),
    BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, hudFrame)
new("UIListLayout", {Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder}, hudList)
new("UIPadding", {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
    PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, hudList)
hudHide.MouseButton1Click:Connect(function() Cfg.UI.HUD = false; pcall(refreshHUD) end)
hudEmpty = tMuted(new("TextLabel", {Size = UDim2.new(1, 0, 0, 18),
    BackgroundTransparency = 1, Text = "no binds", Font = Enum.Font.Gotham,
    TextSize = 10, TextColor3 = Theme.muted, LayoutOrder = 1}, hudList))
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
        local row = new("Frame", {Size = UDim2.new(1, 0, 0, 20),
            BackgroundColor3 = on and Theme.panel2 or Theme.panel,
            BackgroundTransparency = 0.3, BorderSizePixel = 0, LayoutOrder = i}, hudList)
        corner(row, 4)
        stroke(row, on and Theme.success or Theme.stroke, 1, 0.4)
        new("Frame", {Size = UDim2.fromOffset(7, 7), Position = UDim2.new(0, 4, 0.5, -3.5),
            BackgroundColor3 = on and Theme.success or Theme.muted, BorderSizePixel = 0}, row)
        new("TextLabel", {Size = UDim2.new(1, -75, 1, 0), Position = UDim2.fromOffset(16, 0),
            BackgroundTransparency = 1, Text = toggleLabels[e.path] or e.path,
            Font = Enum.Font.Gotham, TextSize = 10,
            TextColor3 = on and Theme.success or Theme.muted,
            TextXAlignment = Enum.TextXAlignment.Left}, row)
        new("TextLabel", {Size = UDim2.fromOffset(60, 20), Position = UDim2.new(1, -62, 0, 0),
            BackgroundTransparency = 1, Text = "["..e.key.Name.."]",
            Font = Enum.Font.GothamBold, TextSize = 10,
            TextColor3 = on and Theme.accent2 or Theme.muted,
            TextXAlignment = Enum.TextXAlignment.Right}, row)
    end
end

--==================== AUTO-DETECT HUD ====================
adGui = new("ScreenGui", {Name = "ReaperAD", ResetOnSpawn = false,
    IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9997}, pg)
adFrame = tBg(new("Frame", {Name = "ADRoot", Size = UDim2.fromOffset(260, 40),
    Position = UDim2.new(0, 20, 0, 260), BackgroundColor3 = Theme.bg,
    BackgroundTransparency = 0.12, BorderSizePixel = 0,
    AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, adGui))
corner(adFrame, 8)
tAcc(stroke(adFrame, Theme.accent, 1.5, 0.3))
grad(adFrame, Theme.panel, Theme.bg, 90)
adHeader = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 24),
    BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, adFrame))
corner(adHeader, 8)
grad(adHeader, Color3.fromRGB(25, 55, 100), Color3.fromRGB(8, 12, 24), 90)
tAcc2(new("TextLabel", {Size = UDim2.new(1, -70, 1, 0), Position = UDim2.fromOffset(10, 0),
    BackgroundTransparency = 1, Text = "⚙ AUTO-DETECT", Font = Enum.Font.GothamBlack,
    TextSize = 11, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, adHeader))
adHide = new("TextButton", {Size = UDim2.fromOffset(18, 18),
    Position = UDim2.new(1, -22, 0, 3), BackgroundColor3 = Theme.danger, Text = "−",
    Font = Enum.Font.GothamBold, TextSize = 12, TextColor3 = Color3.new(1, 1, 1),
    AutoButtonColor = false}, adHeader)
corner(adHide, 4)
adBody = new("Frame", {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 24),
    BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, adFrame)
new("UIListLayout", {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}, adBody)
new("UIPadding", {PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5),
    PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}, adBody)
adRows = {}
function adRow(key, label, col)
    local row = new("Frame", {Size = UDim2.new(1, 0, 0, 16), BackgroundTransparency = 1,
        LayoutOrder = #adBody:GetChildren()}, adBody)
    new("TextLabel", {Size = UDim2.new(0, 110, 1, 0), BackgroundTransparency = 1, Text = label,
        Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left}, row)
    local val = new("TextLabel", {Size = UDim2.new(1, -114, 1, 0), Position = UDim2.fromOffset(114, 0),
        BackgroundTransparency = 1, Text = "—", Font = Enum.Font.Code, TextSize = 10,
        TextColor3 = col or Theme.accent2, TextXAlignment = Enum.TextXAlignment.Right}, row)
    adRows[key] = val
    return val
end
adRow("Target", "Target:", Theme.accent2)
adRow("Speed", "Speed:", Theme.accent2)
adRow("Tier", "Tier:", Theme.success)
adRow("Air", "Airborne:", Theme.accent2)
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
    local want = Cfg.UI.AD and Cfg.Troll.Hump and Cfg.Troll.HumpAutoDetect
    adFrame.Visible = want and true or false
    if not want then return end
    local t = TS.target
    adRows.Target.Text = t and t.Name or "—"
    adRows.Speed.Text = string.format("%d", math.floor(HR.smoothSpeed))
    adRows.Tier.Text = HR.tier
    adRows.Air.Text = HR.airborne and "yes" or "no"
    adRows.Mode.Text = HR.autoMode
end

RS.Heartbeat:Connect(function(dt)
    pcall(function()
        if not (Cfg.UI.AD and Cfg.Troll.HumpAutoDetect) then return end
        local t = TS.target or getTargetPlayer()
        if not t or not t.Character then return end
        local tR = t.Character:FindFirstChild("HumanoidRootPart")
        local tH = t.Character:FindFirstChildOfClass("Humanoid")
        if not tR or not tH then return end
        local vel = tR.AssemblyLinearVelocity
        local s = vel.Magnitude
        HR.speed = s
        HR.smoothSpeed = HR.smoothSpeed + (s - HR.smoothSpeed) * math.min(dt * 6, 1)
        if tH.FloorMaterial == Enum.Material.Air or vel.Y > 5 then
            HR.airTimer = 0.2
        else
            HR.airTimer = math.max(0, HR.airTimer - dt)
        end
        HR.airborne = HR.airTimer > 0
        local sm = HR.smoothSpeed
        local tier
        if sm < 3 then tier = "STILL"
        elseif sm < 25 then tier = "WALK"
        elseif sm < 60 then tier = "RUN"
        elseif sm < 150 then tier = "FAST"
        else tier = "EXTREME" end
        HR.tier = tier
        if Cfg.Troll.Hump then
            local dS = math.clamp(sm * 0.25 + 6, 4, 40)
            local dA = math.clamp(sm * 0.02 + 1.0, 0.8, 4.0)
            local dD = math.clamp(1.6 + sm * 0.005, 1.2, 3.5)
            Cfg.Troll.HumpSpeed = Cfg.Troll.HumpSpeed + (dS - Cfg.Troll.HumpSpeed) * math.min(dt * 2, 1)
            Cfg.Troll.HumpAmp = Cfg.Troll.HumpAmp + (dA - Cfg.Troll.HumpAmp) * math.min(dt * 2, 1)
            Cfg.Troll.HumpDist = Cfg.Troll.HumpDist + (dD - Cfg.Troll.HumpDist) * math.min(dt * 2, 1)
            HR.autoMode = tier == "STILL" and "Close" or (tier == "EXTREME" and "Catch" or "Hybrid")
        end
        pcall(refreshAD)
    end)
end)

--==================== TABS ====================
tabOrder = {"home", "combat", "visual", "move", "world", "players", "troll", "util", "save", "theme"}
tabTitles = {
    home = "HOME", combat = "COMBAT", visual = "VISUAL", move = "MOVE",
    world = "WORLD", players = "PLAYERS", troll = "TROLL", util = "UTIL",
    save = "SAVE", theme = "THEME",
}
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

    section(pg2, "REAPER CHAT", "💬")
    local chatHolder = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 240),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2]))
    corner(chatHolder, 8)
    tStroke(stroke(chatHolder, Theme.strokeSoft, 1, 0.4))
    local chatScroll = new("ScrollingFrame", {Size = UDim2.new(1, -8, 1, -66),
        Position = UDim2.fromOffset(4, 4), BackgroundTransparency = 1, BorderSizePixel = 0,
        ScrollBarThickness = 3, ScrollBarImageColor3 = Theme.accent,
        CanvasSize = UDim2.new(0, 0, 0, 0), AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ZIndex = 34}, chatHolder)
    new("UIListLayout", {Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder}, chatScroll)
    new("UIPadding", {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
        PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, chatScroll)

    local userBar = tPanel2(new("Frame", {Size = UDim2.new(1, -8, 0, 18),
        Position = UDim2.new(0, 4, 1, -62), BackgroundColor3 = Theme.panel2,
        BackgroundTransparency = 0.3, BorderSizePixel = 0, ZIndex = 34}, chatHolder))
    corner(userBar, 4)
    local liveDot = new("Frame", {Size = UDim2.fromOffset(7, 7),
        Position = UDim2.new(0, 8, 0.5, -3.5), BackgroundColor3 = Theme.success,
        BorderSizePixel = 0, ZIndex = 35}, userBar)
    corner(liveDot, 4)
    local userLbl = new("TextLabel", {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(20, 0),
        BackgroundTransparency = 1, Text = "● 1 script user live",
        Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.success,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 35}, userBar)
    task.spawn(function()
        while userBar.Parent do
            local n = Users.count()
            userLbl.Text = string.format("● %d script user%s live", n, n == 1 and "" or "s")
            liveDot.BackgroundTransparency = 0.3 + math.sin(tick() * 3) * 0.3
            Users.clean()
            task.wait(1)
        end
    end)

    local inputBar = tPanel2(new("Frame", {Size = UDim2.new(1, -8, 0, 26),
        Position = UDim2.new(0, 4, 1, -40), BackgroundColor3 = Theme.panel2,
        BorderSizePixel = 0, ZIndex = 34}, chatHolder))
    corner(inputBar, 6)
    tStroke(stroke(inputBar, Theme.strokeSoft, 1))
    new("UIPadding", {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, inputBar)
    local chatInput = new("TextBox", {Size = UDim2.new(1, -64, 1, 0), BackgroundTransparency = 1,
        PlaceholderText = "message reaper chat…", PlaceholderColor3 = Theme.muted,
        Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = Theme.text, Text = "",
        ClearTextOnFocus = false, ZIndex = 35}, inputBar)
    local sendBtn = new("TextButton", {Size = UDim2.fromOffset(56, 20),
        Position = UDim2.new(1, -58, 0.5, -10), BackgroundColor3 = Theme.accent, Text = "SEND",
        Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Color3.new(1, 1, 1),
        AutoButtonColor = false, ZIndex = 35}, inputBar)
    corner(sendBtn, 4)

    local function addRow(e)
        if not chatScroll.Parent then return end
        local row = new("Frame", {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
            AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = (#chatScroll:GetChildren()) + 1, ZIndex = 35}, chatScroll)
        local lbl = new("TextLabel", {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
            TextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y, Font = Enum.Font.Gotham,
            TextSize = 11, TextColor3 = Theme.text, RichText = true,
            TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 36}, row)
        local hex = e.col:ToHex()
        local tm = os.date("%H:%M", math.floor(e.time))
        lbl.Text = string.format('<font color="#8FA6BE">[%s]</font> <font color="#%s"><b>%s</b></font> <font color="#8FA6BE">:</font> %s',
            tm, hex, e.sender, e.text)
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
        sendChat(txt)
    end
    sendBtn.MouseButton1Click:Connect(trySend)
    chatInput.FocusLost:Connect(function(enter) if enter then trySend() end end)

    section(pg2, "FEEDBACK", "✉️")
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
        Text = "send a message to @d9vq — bugs, ideas, anything",
        Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])
    local fbHolder = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 90),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2]))
    corner(fbHolder, 8)
    tStroke(stroke(fbHolder, Theme.strokeSoft, 1, 0.4))
    local fbInput = tPanel2(new("TextBox", {Size = UDim2.new(1, -12, 1, -44),
        Position = UDim2.fromOffset(6, 6), BackgroundColor3 = Theme.panel2,
        BackgroundTransparency = 0.2, Text = "", PlaceholderText = "type your feedback here…",
        PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
        TextColor3 = Theme.text, MultiLine = true, ClearTextOnFocus = false,
        TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
        ZIndex = 34}, fbHolder))
    corner(fbInput, 5)
    tStroke(stroke(fbInput, Theme.strokeSoft, 1))
    new("UIPadding", {PaddingTop = UDim.new(0, 5), PaddingLeft = UDim.new(0, 6),
        PaddingRight = UDim.new(0, 6)}, fbInput)
    local fbSend = new("TextButton", {Size = UDim2.new(1, -12, 0, 26),
        Position = UDim2.new(0, 6, 1, -32), BackgroundColor3 = Theme.accent, Text = "SEND FEEDBACK",
        Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
        AutoButtonColor = false, ZIndex = 34}, fbHolder)
    corner(fbSend, 5)
    fbSend.MouseButton1Click:Connect(function()
        local txt = fbInput.Text or ""
        if txt:gsub("%s", "") == "" then
            notify("Feedback", "Nothing to send", Theme.danger, 2)
            return
        end
        if #txt > 500 then txt = txt:sub(1, 500) end
        local payload = game:GetService("HttpService"):JSONEncode({
            text = txt,
            name = LP.Name,
            userId = tostring(LP.UserId),
            placeId = tostring(game.PlaceId),
        })
        if Net.up then
            Net.send("feedback", {text = txt})
            fbInput.Text = ""
            notify("Feedback sent", "via server relay", Theme.success, 3)
        else
            local ok, res = httpPost(FEEDBACK_WEBHOOK, payload)
            if ok then
                fbInput.Text = ""
                notify("Feedback sent", "via Cloudflare Worker", Theme.success, 3)
            else
                notify("Feedback failed", tostring(res), Theme.danger, 4)
            end
        end
        pulse(fbSend, 0.94, 0.06)
        glow(fbSend, Theme.accent2, 0.4)
    end)
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
        Cfg.Aimbot.TargetPart = parts[idx]
        b.Text = parts[idx]
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
        actionInfo.Text = string.format("TP [%s]   SPEC [%s]   HUMP [%s]",
            k.teleport and k.teleport.Name or "—",
            k.spectate and k.spectate.Name or "—",
            k.hump and k.hump.Name or "—")
    end
    refreshActions()
    buttonRow(pg2, "Rebind Action Keys", "REDETECT", function()
        local u = unboundKeys(3)
        RA.keys.teleport, RA.keys.spectate, RA.keys.hump = u[1], u[2], u[3]
        rebuildChips()
        refreshActions()
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
                local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 32),
                    BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15, ZIndex = 33}, cont))
                corner(row, 6)
                tStroke(stroke(row, Theme.strokeSoft, 1, 0.55))
                hoverStripe(row, Theme.accent)
                new("TextLabel", {Text = p.Name.." "..roleLabel(p), Font = Enum.Font.GothamBold,
                    TextSize = 12, TextColor3 = espColour(p), BackgroundTransparency = 1,
                    Position = UDim2.fromOffset(14, 0), Size = UDim2.new(0.55, 0, 1, 0),
                    TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, row)
                local fb = new("TextButton", {Text = "FLING", Font = Enum.Font.GothamBold,
                    TextSize = 10, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.danger,
                    Size = UDim2.fromOffset(52, 22), Position = UDim2.new(1, -108, 0.5, -11),
                    AutoButtonColor = false, ZIndex = 34}, row)
                corner(fb, 5)
                tStroke(stroke(fb, Theme.strokeSoft, 1))
                fb.MouseButton1Click:Connect(function() pulse(fb, 0.94, 0.06); flingPlayer(p) end)
                local tb = new("TextButton", {Text = "TP", Font = Enum.Font.GothamBold,
                    TextSize = 11, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.accent2,
                    Size = UDim2.fromOffset(44, 22), Position = UDim2.new(1, -52, 0.5, -11),
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
    local bar = tPanel2(new("Frame", {Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2]))
    corner(bar, 7)
    tStroke(stroke(bar, Theme.strokeSoft, 1, 0.55))
    local lbl = new("TextLabel", {Size = UDim2.new(1, -90, 1, 0), Position = UDim2.fromOffset(14, 0),
        BackgroundTransparency = 1, Text = "Target: Nearest", Font = Enum.Font.GothamBold,
        TextSize = 12, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, bar)
    local clearB = new("TextButton", {Size = UDim2.fromOffset(70, 22),
        Position = UDim2.new(1, -78, 0.5, -11), BackgroundColor3 = Theme.panel, Text = "CLEAR",
        Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.danger,
        AutoButtonColor = false, ZIndex = 34}, bar)
    corner(clearB, 5)
    tStroke(stroke(clearB, Theme.strokeSoft, 1))
    clearB.MouseButton1Click:Connect(function()
        TS.target = nil
        lbl.Text = "Target: Nearest"
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
                local row = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 28),
                    BackgroundColor3 = cur and Theme.panel2 or Theme.panel,
                    BackgroundTransparency = cur and 0 or 0.15,
                    LayoutOrder = i, ZIndex = 33}, targetList))
                corner(row, 6)
                tStroke(stroke(row, cur and Theme.success or Theme.strokeSoft,
                    cur and 1.4 or 1, cur and 0 or 0.55))
                new("TextLabel", {Size = UDim2.new(1, -80, 1, 0), Position = UDim2.fromOffset(14, 0),
                    BackgroundTransparency = 1, Text = (cur and "● " or "○ ")..p.Name,
                    Font = Enum.Font.GothamBold, TextSize = 11,
                    TextColor3 = cur and Theme.success or espColour(p),
                    TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, row)
                local sb = new("TextButton", {Size = UDim2.fromOffset(60, 20),
                    Position = UDim2.new(1, -68, 0.5, -10),
                    BackgroundColor3 = cur and Theme.success or Theme.panel2,
                    Text = cur and "ON" or "SET",
                    Font = Enum.Font.GothamBold, TextSize = 9,
                    TextColor3 = cur and Color3.new(0,0,0) or Theme.accent2,
                    AutoButtonColor = false, ZIndex = 34}, row)
                corner(sb, 4)
                tStroke(stroke(sb, Theme.strokeSoft, 1))
                sb.MouseButton1Click:Connect(function()
                    TS.target = p
                    lbl.Text = "Target: "..p.Name
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

    local hb = collapsible(pg2, "HUMP ENGINE", false)
    toggleRow(hb, "Troll.Hump", "HUMP Target")
    toggleRow(hb, "Troll.HumpAutoDetect", "Auto-Detect Adaptive")
    toggleRow(hb, "UI.AD", "Show Auto-Detect HUD (J)")
    sliderRow(hb, "Troll.HumpSpeed", "Hump Speed", 1, 30, 0)
    sliderRow(hb, "Troll.HumpAmp", "Hump Amplitude", 0.3, 4, 2)
    sliderRow(hb, "Troll.HumpDist", "Stand Behind Distance", 0.8, 4, 2)
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
    new("TextLabel", {Size = UDim2.new(1, 0, 0, 34), BackgroundTransparency = 1,
        Text = "IO: "..(IO.has and ("✓ "..IO.reason) or ("✗ "..IO.reason)).."\nPlace: "..tostring(game.PlaceId),
        Font = Enum.Font.GothamBold, TextSize = 10,
        TextColor3 = IO.has and Theme.success or Theme.danger,
        TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])
    local autoLbl = new("TextLabel", {Size = UDim2.new(1, 0, 0, 16), BackgroundTransparency = 1,
        Text = autoloadName and ("★ autoload: "..autoloadName) or "no autoload",
        Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Theme.accent2,
        LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2])
    local nameBox = tPanel2(new("TextBox", {Size = UDim2.new(1, 0, 0, 30),
        BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Text = "",
        PlaceholderText = "loadout name", PlaceholderColor3 = Theme.muted,
        Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = Theme.text,
        ClearTextOnFocus = false, LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2]))
    corner(nameBox, 6)
    tStroke(stroke(nameBox, Theme.strokeSoft, 1))
    new("UIPadding", {PaddingLeft = UDim.new(0, 8)}, nameBox)
    local listHolder = tPanel(new("Frame", {Size = UDim2.new(1, 0, 0, 0),
        BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
        LayoutOrder = #pages[pg2]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[pg2]))
    corner(listHolder, 7)
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
            new("TextLabel", {Size = UDim2.new(1, 0, 0, 22), BackgroundTransparency = 1,
                Text = "no saves yet", Font = Enum.Font.Gotham, TextSize = 10,
                TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
                LayoutOrder = 1, ZIndex = 34}, listHolder)
            return
        end
        for i, n in ipairs(names) do
            local isAuto = (n == autoloadName)
            local isSel = (n == selected)
            local row = new("Frame", {Size = UDim2.new(1, 0, 0, 28),
                BackgroundColor3 = isSel and Theme.panel3 or Theme.panel2,
                BackgroundTransparency = 0.15, BorderSizePixel = 0,
                LayoutOrder = i, ZIndex = 34}, listHolder)
            corner(row, 5)
            stroke(row, isSel and Theme.accent or Theme.strokeSoft, isSel and 1.4 or 1, isSel and 0 or 0.4)
            new("TextLabel", {Size = UDim2.new(1, -14, 1, 0), Position = UDim2.fromOffset(10, 0),
                BackgroundTransparency = 1, Text = (isAuto and "★ " or "  ")..n,
                Font = Enum.Font.GothamBold, TextSize = 11,
                TextColor3 = isAuto and Theme.success or Theme.accent2,
                TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 35}, row)
            local btn = new("TextButton", {Size = UDim2.new(1, 0, 1, 0),
                BackgroundTransparency = 1, Text = "", AutoButtonColor = false, ZIndex = 36}, row)
            btn.MouseButton1Click:Connect(function()
                selected = n
                nameBox.Text = n
                refreshList()
            end)
        end
    end
    buttonRow(pg2, "Save", "SAVE", function()
        local n = nameBox.Text ~= "" and nameBox.Text or "default"
        saveLoadout(n, false)
        selected = n
        refreshList()
        notify("Saved", n, Theme.success)
    end)
    buttonRow(pg2, "Save + Autoload", "SAVE+", function()
        local n = nameBox.Text ~= "" and nameBox.Text or "default"
        saveLoadout(n, true)
        selected = n
        refreshList()
        autoLbl.Text = "★ autoload: "..n
        notify("Autoload set", n, Theme.success)
    end)
    buttonRow(pg2, "Load", "LOAD", function()
        local n = nameBox.Text ~= "" and nameBox.Text or selected
        if not n or not loadLoadout(n) then
            notify("Not found", "", Theme.danger)
            return
        end
        for p, w in pairs(widgets) do
            local v = getPath(Cfg, p)
            if v ~= nil then pcall(w.set, v, false) end
        end
        applyTheme()
        applyOpacity(Cfg.UI.MenuOpacity or 0)
        refreshList()
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
    section(pg2, "PALETTE", "🌸")
    local palLbl = infoRow(pg2, "Current: Winter")
    buttonRow(pg2, "Winter", "APPLY", function()
        Theme.setPalette("Winter")
        Cfg.UI.Sakura = false
        if widgets["UI.Sakura"] then widgets["UI.Sakura"].set(false, false) end
        applyTheme()
        buildSakura()
        palLbl.Text = "Current: Winter"
    end)
    buttonRow(pg2, "Sakura", "APPLY", function()
        Theme.setPalette("Sakura")
        Cfg.UI.Sakura = true
        if widgets["UI.Sakura"] then widgets["UI.Sakura"].set(true, false) end
        applyTheme()
        buildSakura()
        palLbl.Text = "Current: Sakura"
    end)
    toggleRow(pg2, "UI.Sakura", "Sakura Leaves", function(on)
        if on then
            Theme.setPalette("Sakura")
            palLbl.Text = "Current: Sakura"
        else
            Theme.setPalette("Winter")
            palLbl.Text = "Current: Winter"
        end
        applyTheme()
        buildSakura()
    end)
    sliderRow(pg2, "UI.SakuraLeaves", "Leaf Count", 10, 400, 0, function(v)
        Theme.sakura.leaves.count = v
        buildSakura()
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
            Cfg.UI.HUD = not Cfg.UI.HUD
            pcall(refreshHUD)
            return
        end
        if Cfg.UI.ADKey and i.KeyCode == Cfg.UI.ADKey then
            Cfg.UI.AD = not Cfg.UI.AD
            pcall(refreshAD)
            return
        end
        if RA.keys.teleport and i.KeyCode == RA.keys.teleport then runAction("teleport"); return end
        if RA.keys.spectate and i.KeyCode == RA.keys.spectate then runAction("spectate"); return end
        if RA.keys.hump and i.KeyCode == RA.keys.hump and Cfg.Troll.Hump then runAction("hump"); return end
    end
    if gpe then return end
    if i.UserInputType == Enum.UserInputType.MouseButton2 and Cfg.Aimbot.Enabled then
        if Cfg.Aimbot.ToggleMode then aimToggled = not aimToggled else aiming = true end
        return
    end
    if i.UserInputType == Enum.UserInputType.MouseButton1 and Cfg.Troll.TapTarget then
        local p = TS.hovered
        if p then
            TS.target = p
            notify("Locked on", p.Name, Theme.success, 2.5)
        end
        return
    end
    if i.UserInputType ~= Enum.UserInputType.Keyboard then return end
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
        if showFov then
            fovCircle.Size = UDim2.fromOffset(Cfg.Aimbot.FOV * 2, Cfg.Aimbot.FOV * 2)
        end
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
                            Text = p.Name, Visible = Cfg.Visuals.NameTags, Parent = bb})
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
                    end
                    if d.distLbl then
                        d.distLbl.Visible = Cfg.Visuals.Distance
                        if Cfg.Visuals.Distance then
                            local dist = (Cam.CFrame.Position - head.Position).Magnitude
                            d.distLbl.Text = string.format("%d studs", math.floor(dist))
                        end
                    end
                    if d.roleLbl then
                        d.roleLbl.Visible = Cfg.Visuals.ShowRole and roleL ~= ""
                        if d.roleLbl.Visible then
                            d.roleLbl.Text = roleL
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
        flyGyro.P = 3000
        flyGyro.D = 500
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
            if r and not Cfg.Troll.Hump then
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
        if Cfg.Visuals.NoFog then
            Lighting.FogEnd = 1e6
            Lighting.FogStart = 1e6
        end
        if Cfg.World.RemoveBlur then
            local b = Lighting:FindFirstChildOfClass("BlurEffect")
            if b and b ~= _G.__ReaperBlur then b.Enabled = false end
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
    spin.Transparency = 1
    spin.CanCollide = false
    spin.Massless = true
    spin.CFrame = r.CFrame
    spin.Parent = workspace
    local w = Instance.new("WeldConstraint")
    w.Part0, w.Part1, w.Parent = spin, r, spin
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

--==================== TROLL ====================
function getTargetPlayer()
    if TS.target then
        local c = TS.target.Character
        local h = c and c:FindFirstChildOfClass("Humanoid")
        if h and h.Health > 0 then return TS.target end
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
            if t and t.Character then
                local mC = LP.Character
                if mC then
                    local mR = mC:FindFirstChild("HumanoidRootPart")
                    local mH = mC:FindFirstChildOfClass("Humanoid")
                    local tR = t.Character:FindFirstChild("HumanoidRootPart")
                    local tH = t.Character:FindFirstChildOfClass("Humanoid")
                    if mR and tR and mH and tH and tH.Health > 0 then
                        if Cfg.Troll.HumpKeepOwner then
                            pcall(function() mR:SetNetworkOwner(LP) end)
                        end
                        if Cfg.Troll.HumpUsePlatform then
                            if not mH.PlatformStand then mH.PlatformStand = true end
                        else
                            if mH.PlatformStand then mH.PlatformStand = false end
                        end
                        local pos = tR.Position
                        local look = tR.CFrame.LookVector
                        local vel = tR.AssemblyLinearVelocity
                        local phase = tick() * Cfg.Troll.HumpSpeed
                        local thrust = math.sin(phase) * Cfg.Troll.HumpAmp
                        local behindPos = pos - look * (Cfg.Troll.HumpDist - thrust)
                        local want = Vector3.new(behindPos.X, pos.Y, behindPos.Z)
                        local cf
                        if Cfg.Troll.HumpYawOnly then
                            local _, yaw = tR.CFrame:ToEulerAnglesYXZ()
                            cf = CFrame.new(want) * CFrame.Angles(0, yaw, 0)
                        else
                            cf = CFrame.lookAt(want, want + look, Vector3.new(0, 1, 0))
                        end
                        mR.CFrame = cf
                        if Cfg.Troll.HumpVelMatch then mR.AssemblyLinearVelocity = vel
                        else mR.AssemblyLinearVelocity = Vector3.zero end
                        mR.AssemblyAngularVelocity = Vector3.zero
                        if Cfg.Movement.Noclip then noclipChar(mC) end
                        TS.humpWasActive = true
                    end
                end
            end
        elseif TS.humpWasActive then
            local h = hum()
            if h then
                h.PlatformStand = false
                h.AutoRotate = true
                pcall(function() h:ChangeState(Enum.HumanoidStateType.GettingUp) end)
            end
            TS.humpWasActive = false
        end
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
