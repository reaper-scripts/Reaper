--[[ REAPER :: WINTER v15.0 — all-in-one. Paste into ServerScriptService (as Script) AND your executor. ]]
local RunService = game:GetService("RunService")

--============================ SERVER ============================
if RunService:IsServer() then
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local remote = ReplicatedStorage:FindFirstChild("ReaperComm")
    if not remote then
        remote = Instance.new("RemoteEvent")
        remote.Name = "ReaperComm"
        remote.Parent = ReplicatedStorage
    end
    local HEARTBEAT_TIMEOUT = 30
    local activeUsers = {}
    local recentMessages = {}
    local function pruneUsers()
        local now = tick()
        for plr, data in pairs(activeUsers) do
            if now - data.lastSeen > HEARTBEAT_TIMEOUT or not plr.Parent then
                activeUsers[plr] = nil
            end
        end
    end
    local function getUserList()
        local list = {}
        for plr in pairs(activeUsers) do
            if plr.Parent then table.insert(list, plr.Name) end
        end
        table.sort(list)
        return list
    end
    local function broadcast(channel, ...)
        local args = {...}
        local n = select("#", ...)
        for plr in pairs(activeUsers) do
            if plr.Parent then
                pcall(function() remote:FireClient(plr, channel, table.unpack(args, 1, n)) end)
            end
        end
    end
    local function broadcastUserCount()
        broadcast("userCount", #getUserList(), getUserList())
    end
    remote.OnServerEvent:Connect(function(plr, channel, payload)
        if not plr or not plr.Parent then return end
        if channel == "register" then
            activeUsers[plr] = {lastSeen = tick()}
            for _, msg in ipairs(recentMessages) do
                pcall(function() remote:FireClient(plr, "chat", msg) end)
            end
            broadcastUserCount()
        elseif channel == "heartbeat" then
            if activeUsers[plr] then activeUsers[plr].lastSeen = tick()
            else activeUsers[plr] = {lastSeen = tick()}; broadcastUserCount() end
        elseif channel == "unregister" then
            activeUsers[plr] = nil; broadcastUserCount()
        elseif channel == "chat" then
            if type(payload) ~= "table" then return end
            local text = tostring(payload.text or ""):gsub("[\n\r]", " ")
            if text == "" then return end
            if #text > 200 then text = text:sub(1,200) end
            local msg = {sender=plr.Name, userId=plr.UserId, text=text, time=os.time()}
            table.insert(recentMessages, msg)
            if #recentMessages > 100 then table.remove(recentMessages, 1) end
            broadcast("chat", msg)
        end
    end)
    Players.PlayerRemoving:Connect(function(plr)
        activeUsers[plr] = nil; broadcastUserCount()
    end)
    task.spawn(function()
        while true do
            task.wait(5); pruneUsers(); broadcastUserCount()
        end
    end)
    print("[REAPER SERVER] live relay initialized")
    return
end

--============================ CLIENT ============================
-- Guard: kill any old instance of this script that's still running in the executor's memory.
if _G.__REAPER_WINTER_ACTIVE then
    print("[REAPER] old instance detected — cleaning up")
    pcall(function()
        local pg = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
        if pg then
            for _, c in ipairs(pg:GetChildren()) do
                if c.Name:match("^Reaper") then c:Destroy() end
            end
        end
    end)
    -- let old connections finish firing before we clear the flag
    task.wait(0.2)
end
_G.__REAPER_WINTER_ACTIVE = true

local Players=game:GetService("Players")
local UIS=game:GetService("UserInputService")
local RS=game:GetService("RunService")
local Tween=game:GetService("TweenService")
local Lighting=game:GetService("Lighting")
local Teleport=game:GetService("TeleportService")
local Stats=game:GetService("Stats")
local VirtualUser=game:GetService("VirtualUser")
local TCS=game:GetService("TextChatService")
local RS2=game:GetService("ReplicatedStorage")
local PhysicsService=game:GetService("PhysicsService")
local LP=Players.LocalPlayer
local Cam=workspace.CurrentCamera

--======================== IO ========================
IO={has=false,reason="not found"}
do
    local function tryEnv(env)
        if not env then return nil end
        local ok,w=pcall(function() return env["writefile"] end)
        local ok2,r=pcall(function() return env["readfile"] end)
        local ok3,i=pcall(function() return env["isfile"] end)
        if ok and ok2 and ok3 and type(w)=="function" and type(r)=="function" and type(i)=="function" then
            return w,r,i
        end
    end
    local cands={}
    if getgenv then local ok,g=pcall(getgenv); if ok and type(g)=="table" then table.insert(cands,{env=g,label="getgenv()"}) end end
    table.insert(cands,{env=_G,label="_G"})
    if getrenv then local ok,e=pcall(getrenv); if ok and type(e)=="table" then table.insert(cands,{env=e,label="getrenv()"}) end end
    if shared then table.insert(cands,{env=shared,label="shared"}) end
    for _,c in ipairs(cands) do
        local w,r,i=tryEnv(c.env)
        if w and r and i then IO.write,IO.read,IO.isfile=w,r,i; IO.has=true; IO.reason=c.label; break end
    end
end
print("[REAPER SAVE] IO: "..tostring(IO.has).." ("..IO.reason..")")

--======================== THEME (v11 colors restored) ========================
Theme={
    bg=Color3.fromRGB(2,4,9), bg2=Color3.fromRGB(7,11,20),
    panel=Color3.fromRGB(11,16,29), panel2=Color3.fromRGB(19,28,50),
    panel3=Color3.fromRGB(33,48,80), panel4=Color3.fromRGB(48,70,110),
    stroke=Color3.fromRGB(65,125,210), strokeSoft=Color3.fromRGB(42,82,140),
    accent=Color3.fromRGB(35,165,255), accent2=Color3.fromRGB(150,225,255),
    accent3=Color3.fromRGB(205,85,255), accent4=Color3.fromRGB(80,255,180),
    text=Color3.fromRGB(240,246,255), muted=Color3.fromRGB(115,135,175),
    success=Color3.fromRGB(80,230,130), danger=Color3.fromRGB(255,70,90),
    gold=Color3.fromRGB(255,205,90),
    Ticker={text="REAPER :: WINTER  ·  @d9vq on discord",speed=120,size=15,color=Color3.fromRGB(90,205,255)},
    Snow={enabled=true,count=70,speed=25,size=2,color=Color3.fromRGB(240,248,255)},
    Rain={enabled=true,count=30,speed=90,thickness=2,color=Color3.fromRGB(180,220,255),tint=0.92},
    Sakura={enabled=false, leaves={enabled=true, count=90, speed=22, sway=1.4, size=5,
        color=Color3.fromRGB(255,175,210), color2=Color3.fromRGB(255,210,230)}},
}
local WINTER_SNAPSHOT = {
    bg=Color3.fromRGB(2,4,9), bg2=Color3.fromRGB(7,11,20),
    panel=Color3.fromRGB(11,16,29), panel2=Color3.fromRGB(19,28,50),
    panel3=Color3.fromRGB(33,48,80), panel4=Color3.fromRGB(48,70,110),
    stroke=Color3.fromRGB(65,125,210), strokeSoft=Color3.fromRGB(42,82,140),
    accent=Color3.fromRGB(35,165,255), accent2=Color3.fromRGB(150,225,255),
    accent3=Color3.fromRGB(205,85,255), accent4=Color3.fromRGB(80,255,180),
    text=Color3.fromRGB(240,246,255), muted=Color3.fromRGB(115,135,175),
    ticker=Color3.fromRGB(90,205,255), snow=Color3.fromRGB(240,248,255),
}
local SAKURA_SNAPSHOT = {
    bg=Color3.fromRGB(22,10,22), bg2=Color3.fromRGB(36,16,32),
    panel=Color3.fromRGB(44,20,40), panel2=Color3.fromRGB(66,30,60),
    panel3=Color3.fromRGB(102,46,92), panel4=Color3.fromRGB(140,64,122),
    stroke=Color3.fromRGB(232,130,198), strokeSoft=Color3.fromRGB(158,80,138),
    accent=Color3.fromRGB(255,115,185), accent2=Color3.fromRGB(255,198,228),
    accent3=Color3.fromRGB(210,120,255), accent4=Color3.fromRGB(255,158,205),
    text=Color3.fromRGB(255,242,250), muted=Color3.fromRGB(210,165,200),
    ticker=Color3.fromRGB(255,165,210), snow=Color3.fromRGB(255,205,230),
}
function Theme.setPalette(name)
    Theme.Palette=name
    local S = name=="Sakura" and SAKURA_SNAPSHOT or WINTER_SNAPSHOT
    Theme.bg=S.bg; Theme.bg2=S.bg2; Theme.panel=S.panel; Theme.panel2=S.panel2
    Theme.panel3=S.panel3; Theme.panel4=S.panel4
    Theme.stroke=S.stroke; Theme.strokeSoft=S.strokeSoft
    Theme.accent=S.accent; Theme.accent2=S.accent2; Theme.accent3=S.accent3; Theme.accent4=S.accent4
    Theme.text=S.text; Theme.muted=S.muted
    Theme.Ticker.color=S.ticker; Theme.Snow.color=S.snow
    Theme.Sakura.enabled=(name=="Sakura")
end
ESP={
    TeamBlue=Color3.fromRGB(60,140,255), EnemyRed=Color3.fromRGB(255,70,90),
    Police=Color3.fromRGB(60,140,255), Criminal=Color3.fromRGB(220,40,40),
    Prisoner=Color3.fromRGB(255,150,60),
    Sheriff=Color3.fromRGB(60,140,255), Murderer=Color3.fromRGB(220,40,40),
    Innocent=Color3.fromRGB(90,220,120),
    UnitedFront=Color3.fromRGB(50,130,255), IronLegion=Color3.fromRGB(220,40,40),
}

--======================== STATE ========================
TrollState={targetedPlayer=nil,humpTargetCF=nil,humpTargetPlayer=nil,lastSpam=0,
    hoveredPlayer=nil,humpWasActive=false}
HumpRuntime={speed=0,speedSmoothed=0,tier="STILL",airborne=false,airborneTimer=0,
    teleporting=false,autoMode="Hybrid",lastUpdate=0,fallingUnderMap=false,
    lastGoodPos=nil,respawnPending=false}
ReticleActions={keys={teleport=nil, spectate=nil, hump=nil},chips={},spectateTarget=nil,spectateZoom=1}
PREFERRED_ACTION_KEYS={Enum.KeyCode.One,Enum.KeyCode.Two,Enum.KeyCode.Three,Enum.KeyCode.Four,
    Enum.KeyCode.Five,Enum.KeyCode.Six,Enum.KeyCode.Seven,Enum.KeyCode.Eight,
    Enum.KeyCode.Nine,Enum.KeyCode.Zero,Enum.KeyCode.Q,Enum.KeyCode.E,Enum.KeyCode.R,Enum.KeyCode.F,
    Enum.KeyCode.G,Enum.KeyCode.Z,Enum.KeyCode.C,Enum.KeyCode.V,Enum.KeyCode.B,Enum.KeyCode.T,Enum.KeyCode.Y}

--======================== SERVER RELAY ========================
ReaperNet={remote=nil,connected=false,liveUsers={},liveCount=1}
do
    local ok, remote = pcall(function() return RS2:WaitForChild("ReaperComm", 5) end)
    if ok and remote and remote:IsA("RemoteEvent") then
        ReaperNet.remote = remote; ReaperNet.connected = true
        print("[REAPER NET] connected to server relay")
    else
        print("[REAPER NET] server relay not found — local fallback mode")
    end
end
function ReaperNet.send(channel, payload)
    if not ReaperNet.remote then return false end
    pcall(function() ReaperNet.remote:FireServer(channel, payload) end)
    return true
end
if ReaperNet.connected then
    ReaperNet.remote.OnClientEvent:Connect(function(channel, a, b)
        if channel == "chat" then
            local msg = a
            if type(msg) == "table" and msg.sender and msg.text then
                chatAdd(msg.sender, msg.text, false, Color3.fromRGB(140,200,255))
            end
        elseif channel == "userCount" then
            ReaperNet.liveCount = a or 1; ReaperNet.liveUsers = b or {}
        end
    end)
    ReaperNet.send("register")
    task.spawn(function()
        while true do
            task.wait(10); ReaperNet.send("heartbeat")
        end
    end)
end

--======================== CHAT ========================
CHAT_PREFIX="[RPR]"
AllChat={messages={},maxMessages=400,listeners={}}
function chatAdd(sender,text,isLocal,colour)
    local entry={sender=sender or "?",text=tostring(text or ""),
        isLocal=isLocal and true or false,
        colour=colour or Color3.fromRGB(140,200,255),time=tick()}
    table.insert(AllChat.messages,entry)
    if #AllChat.messages>AllChat.maxMessages then table.remove(AllChat.messages,1) end
    for _,fn in ipairs(AllChat.listeners) do pcall(fn,entry) end
end
function chatPlayerColour(plr)
    if not plr then return Color3.fromRGB(140,200,255) end
    if plr.Team and plr.Team.TeamColor then return plr.Team.TeamColor.Color end
    return Color3.fromRGB(120,210,255)
end
function chatSend(text)
    text=tostring(text or ""):gsub("^%s+",""):gsub("%s+$","")
    if text=="" then return false end
    if #text>200 then text=text:sub(1,200) end
    chatAdd(LP.Name,text,true,Theme.success)
    if ReaperNet.connected then ReaperNet.send("chat", {text = text}) end
    return true
end

--======================== LIVE USERS ========================
ScriptUsers={active={},lastSeen={},window=45}
function ScriptUsers.touch(name)
    if not name or name=="" then return end
    ScriptUsers.active[name]=true; ScriptUsers.lastSeen[name]=tick()
end
function ScriptUsers.count()
    if ReaperNet.connected then return ReaperNet.liveCount end
    local now=tick(); local n=0
    for _,t in pairs(ScriptUsers.lastSeen) do
        if now-t<=ScriptUsers.window then n=n+1 end
    end
    return math.max(1,n)
end
function ScriptUsers.refresh()
    local now=tick()
    for name,t in pairs(ScriptUsers.lastSeen) do
        if now-t>ScriptUsers.window then
            ScriptUsers.active[name]=nil; ScriptUsers.lastSeen[name]=nil
        end
    end
end
function ScriptUsers.list()
    if ReaperNet.connected then return ReaperNet.liveUsers end
    local out={}; for n in pairs(ScriptUsers.active) do table.insert(out,n) end
    table.sort(out); return out
end
ScriptUsers.touch(LP.Name)

pcall(function()
    TCS.MessageReceived:Connect(function(msg)
        if not msg then return end
        local userId=0; local senderName="?"
        if msg.TextSource then userId=msg.TextSource.UserId or 0; senderName=msg.TextSource.Name or "?" end
        local raw=msg.Text or ""
        if not raw:find(CHAT_PREFIX,1,true) then return end
        local cleaned=raw:gsub("%[RPR%]%s*","",1)
        if cleaned=="" or userId==LP.UserId or senderName==LP.Name then return end
        ScriptUsers.touch(senderName)
        if not ReaperNet.connected then
            local plr=Players:GetPlayerByUserId(userId)
            chatAdd(senderName,cleaned,false,chatPlayerColour(plr))
        end
    end)
end)

--======================== HIDE RPR FROM REAL CHAT ========================
do
    local function stripRPR(gui)
        if not gui then return end
        local function killRow(d)
            local row = d
            for _=1,5 do
                if row and row.Parent and row.Parent:IsA("ScrollingFrame") then break end
                if row and row.Parent then row = row.Parent else break end
            end
            if row and row ~= gui and row.Parent then pcall(function() row:Destroy() end) end
        end
        for _,d in ipairs(gui:GetDescendants()) do
            if (d:IsA("TextLabel") or d:IsA("TextButton")) and (d.Text or ""):find("[RPR]",1,true) then
                killRow(d)
            end
        end
        gui.DescendantAdded:Connect(function(d)
            if (d:IsA("TextLabel") or d:IsA("TextButton")) and (d.Text or ""):find("[RPR]",1,true) then
                task.defer(function() killRow(d) end)
            end
        end)
    end
    task.spawn(function()
        while playerGui==nil do task.wait(0.1) end
        while playerGui and playerGui.Parent do
            for _,g in ipairs(playerGui:GetChildren()) do
                if g.Name:lower():find("chat") and (g:IsA("ScreenGui") or g:IsA("Folder")) then
                    pcall(stripRPR, g)
                end
            end
            task.wait(1.5)
        end
    end)
end

--======================== CONFIG ========================
Cfg={
    Aimbot={Enabled=false,Key=Enum.UserInputType.MouseButton2,ToggleMode=false,
        FOV=180,Smoothness=8,Strength=6,TargetPart="Head",
        TeamCheck=false,VisibleOnly=false,ShowFOVCircle=true,AutoShoot=false,Humanize=true,
        MaxDistance=1000},
    Trigger={Enabled=false,Key=Enum.UserInputType.MouseButton1,Radius=20,TeamCheck=true,Delay=0.05},
    Teleport={TapTeleport=false,OffsetY=3},
    Visuals={Enabled=false,NameTags=true,Distance=true,ShowRoleLabel=true,
        ESPMode="Team",FillTransparency=0.55,RainbowSpeed=0.5,
        CharTransparency=false,CharTransparencyValue=1,
        NoFog=false,HitboxSize=1,RemoveAccessories=false,RemoveTextures=false,
        InfZoom=false,InfZoomThroughWalls=false,FOVMin=0.5,FOVMax=120},
    Movement={Noclip=false,SpeedEnabled=false,Speed=32,
        JumpEnabled=false,JumpPower=80,InfiniteJump=false,
        Fly=false,FlySpeed=60,FlySmooth=12,FlyBoostMult=2.5,GodMode=false,AntiAFK=false,
        Freecam=false,FreecamSpeed=50,FreecamSens=1,
        AntiFling=false,Spinbot=false,Bunnyhop=false,WallClimb=false,
        SprintEnabled=false,SprintSpeed=60,Glide=false,GlideSpeed=15,FlyNoTunnel=true,
        CFrameSpeed=false,CFrameSpeedValue=15},
    World={Fullbright=false,TimeEnabled=false,Time=14,GravityEnabled=false,Gravity=196.2,
        RemoveBlur=false,RemoveSunRays=false,FieldOfView=70,FOVEnabled=false},
    Utility={ChatSpy=false,FlingPower=60000,FlingLiftDuration=4,
        AutoClicker=false,AutoClickDelay=0.05,AutoRespawn=false,
        ChatSpam=false,ChatSpamMsg="REAPER",InstantReload=false,
        AutoSheriffPickup=false,AutoSheriffRange=120,
        AutoSheriffTools={"Gun","Revolver","Pistol","Handgun","SheriffGun","sheriff"}},
    Controller={Enabled=true,TriggerBot=false,TriggerKey=Enum.KeyCode.ButtonR2,
        Vibration=true,VibrationPower=1,ControllerFly=false},
    Perf={ShowOverlay=false,ShowFPS=true,ShowPing=true,ShowMem=true,ShowPlayers=true},
    Troll={FollowTarget=false,FollowSpeed=55,
        HumpEnabled=false,HumpSpeed=8,HumpAmplitude=1.5,HumpDistance=1.6,
        HumpYawOnly=false,HumpKeepOwner=true,HumpAllowEmotes=true,HumpUsePlatformStand=false,
        HumpOverrideFly=true,HumpVelocityMatch=true,HumpCollisionSafe=true,
        HumpVoidDetect=true,HumpSafeY=-50,HumpVoidHold=true,
        HumpTeleportOnRespawn=true,HumpRespawnDelay=0.35,HumpAutoDetect=true,
        TapTarget=false,TapTargetRadius=30,
        SpinTarget=false,SpinPower=12000,FreezeTarget=false,
        SkyboxEnabled=false,FlashlightEnabled=false,DiscoMode=false,FakeKillFeed=false},
    UI={MenuKey=Enum.KeyCode.X,HUDKey=Enum.KeyCode.H,HUD=true,MenuOpacity=0,
        TickerSpeed=120,TickerSize=15,
        CrosshairEnabled=true,CrosshairSize=26,CrosshairThick=2,
        CrosshairPulse=true,CrosshairHideOnMenu=true,
        ReticleRings=true,ReticleTrackingLine=true,ReticleHealthBar=true,
        ReticleColorMode="Auto",ReticleR=140,ReticleG=220,ReticleB=255,
        AutoDetectHUD=true,AutoDetectHUDKey=Enum.KeyCode.J,
        Juicy=true,Notifications=true,AmbientParticles=true,ShimmerHeaders=true,
        BorderGlow=true,ShineSweeps=true,AnimatedMenuOpen=true,
        MenuBlur=true,SectionGlow=true,
        MenuResizable=true,MinMenuW=520,MinMenuH=420,
        HUDMovable=true,HUDResizable=true,ADMovable=true,ADResizable=true,HUDAnimations=true,
        SakuraTheme=false,SakuraLeaves=90,SakuraSpeed=22},
    Binds={},
}

--======================== HELPERS ========================
function new(cls,props,parent)
    local i=Instance.new(cls)
    for k,v in pairs(props) do i[k]=v end
    if parent then i.Parent=parent end
    return i
end
function corner(i,r) return new("UICorner",{CornerRadius=UDim.new(0,r or 6)},i) end
function stroke(i,col,th,tr) return new("UIStroke",{Color=col,Thickness=th or 1,
    Transparency=tr or 0,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},i) end
function grad(i,c1,c2,rot) return new("UIGradient",{Color=ColorSequence.new(c1,c2),Rotation=rot or 90},i) end
function hum() local c=LP.Character; return c and c:FindFirstChildOfClass("Humanoid") end
function hrp() local c=LP.Character; return c and c:FindFirstChild("HumanoidRootPart") end
function tBg(i) i:SetAttribute("RA_Bg",true); return i end
function tPanel(i) i:SetAttribute("RA_Panel",true); return i end
function tPanel2(i) i:SetAttribute("RA_Panel2",true); return i end
function tStroke(i) i:SetAttribute("RA_Stroke",true); return i end
function tAccent(i) i:SetAttribute("RA_Accent",true); return i end
function tAccent2(i) i:SetAttribute("RA_Accent2",true); return i end
function tText(i) i:SetAttribute("RA_Text",true); return i end
function tMuted(i) i:SetAttribute("RA_Muted",true); return i end
function getPath(t,path)
    local c=t
    for p in path:gmatch("[^%.]+") do
        if type(c)~="table" then return nil end
        c=c[p]; if c==nil then return nil end
    end
    return c
end
function setPath(t,path,value)
    local parts={}
    for p in path:gmatch("[^%.]+") do parts[#parts+1]=p end
    local c=t
    for i=1,#parts-1 do c=c[parts[i]]; if type(c)~="table" then return end end
    c[parts[#parts]]=value
end
function deepCopy(t)
    if type(t)~="table" then return t end
    local o={}
    for k,v in pairs(t) do o[k]=deepCopy(v) end
    return o
end

--======================== DRAG / RESIZE ========================
function makeDraggable(frame, handle)
    local dragging, startPos, startFramePos = false, nil, nil
    handle.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
            dragging=true; startPos=i.Position; startFramePos=frame.Position
        end
    end)
    UIS.InputChanged:Connect(function(i)
        if not dragging then return end
        if i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch then
            local d=i.Position-startPos
            frame.Position=UDim2.new(startFramePos.X.Scale,startFramePos.X.Offset+d.X,
                startFramePos.Y.Scale,startFramePos.Y.Offset+d.Y)
        end
    end)
    UIS.InputEnded:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
            dragging=false
        end
    end)
end
function makeResizable(frame, opts)
    opts=opts or {}
    local minW=opts.minW or 300
    local minH=opts.minH or 200
    local corners=opts.corners or {"br","tr","bl","tl"}
    local gripSize=opts.gripSize or 14
    local baseZ=(frame.ZIndex or 1)+500
    frame.ClipsDescendants=true
    local function makeHandle(corner_)
        local grip=new("Frame",{Name="Resize_"..corner_,Size=UDim2.fromOffset(gripSize,gripSize),
            BackgroundTransparency=1,ZIndex=baseZ,Active=true},frame)
        if corner_=="br" then grip.Position=UDim2.new(1,-gripSize,1,-gripSize)
        elseif corner_=="tr" then grip.Position=UDim2.new(1,-gripSize,0,0)
        elseif corner_=="bl" then grip.Position=UDim2.new(0,0,1,-gripSize)
        elseif corner_=="tl" then grip.Position=UDim2.new(0,0,0,0) end
        local hot=new("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ZIndex=baseZ+2},grip)
        local dragging,startPos,startSize=false,nil,nil
        local function begin(i)
            if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
                dragging=true; startPos=i.Position
                startSize=Vector2.new(frame.AbsoluteSize.X,frame.AbsoluteSize.Y)
            end
        end
        grip.InputBegan:Connect(begin); hot.InputBegan:Connect(begin)
        UIS.InputChanged:Connect(function(i)
            if not dragging then return end
            if i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch then
                local d=i.Position-startPos
                local nw,nh=startSize.X,startSize.Y
                if corner_:find("r") then nw=startSize.X+d.X end
                if corner_:find("l") then nw=startSize.X-d.X end
                if corner_:find("b") then nh=startSize.Y+d.Y end
                if corner_:find("t") then nh=startSize.Y-d.Y end
                nw=math.max(minW,nw); nh=math.max(minH,nh)
                frame.Size=UDim2.fromOffset(nw,nh)
                if opts.onResize then pcall(opts.onResize,nw,nh) end
            end
        end)
        UIS.InputEnded:Connect(function(i)
            if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
                if dragging then dragging=false; if opts.onResizeEnd then pcall(opts.onResizeEnd) end end
            end
        end)
    end
    for _,c in ipairs(corners) do makeHandle(c) end
end

--======================== ESP DETECTION ========================
function teamIsAlly(plr)
    if plr==LP then return true end
    if LP.Team and plr.Team then return plr.Team==LP.Team end
    return false
end
local POLICE_KEYWORDS={"police","cop","officer","swat","guard","sheriff","law","warden","blue","patrol"}
local CRIMINAL_KEYWORDS={"criminal","crim","robber","thief","gang","mob","mafia","outlaw","red"}
local PRISONER_KEYWORDS={"prison","inmate","convict","orange","jail"}
local UF_KEYWORDS={"united front","unitedfront","uf ","united","front"}
local IL_KEYWORDS={"iron legion","ironlegion","iron ","iron","legion"}
function detectPCP(plr)
    local tn=""
    if plr.Team and plr.Team.Name then tn=plr.Team.Name:lower() end
    if tn=="" and plr.TeamColor then tn=tostring(plr.TeamColor):lower() end
    if tn~="" then
        for _,k in ipairs(POLICE_KEYWORDS) do if tn:find(k,1,true) then return "police" end end
        for _,k in ipairs(CRIMINAL_KEYWORDS) do if tn:find(k,1,true) then return "criminal" end end
        for _,k in ipairs(PRISONER_KEYWORDS) do if tn:find(k,1,true) then return "prisoner" end end
    end
end
function detectDOW(plr)
    if plr==LP then return "united_front" end
    local tn=""
    if plr.Team and plr.Team.Name then tn=plr.Team.Name:lower() end
    if tn=="" and plr.TeamColor then tn=tostring(plr.TeamColor):lower() end
    if tn~="" then
        for _,k in ipairs(UF_KEYWORDS) do if tn:find(k,1,true) then return "united_front" end end
        for _,k in ipairs(IL_KEYWORDS) do if tn:find(k,1,true) then return "iron_legion" end end
    end
end
function isUnitedFront(plr)
    local d=detectDOW(plr)
    if d=="united_front" then return true end
    if d=="iron_legion" then return false end
    return teamIsAlly(plr)
end
function getRole(plr)
    local char=plr.Character
    if char then
        local eq=char:FindFirstChildOfClass("Tool")
        if eq then
            local n=eq.Name:lower()
            if n:find("gun") or n:find("revolver") or n:find("pistol") or n:find("sheriff") or n:find("handgun") then return "sheriff" end
            if n:find("knife") or n:find("dagger") or n:find("blade") or n:find("machete") or n:find("murder") then return "murderer" end
        end
    end
    return "innocent"
end
function getESPColourFor(plr)
    if not plr then return ESP.TeamBlue end
    local mode=Cfg.Visuals.ESPMode or "Team"
    if mode=="Rainbow" then return Color3.fromHSV(rainbowHue or 0,1,1) end
    if mode=="Team" then return teamIsAlly(plr) and ESP.TeamBlue or ESP.EnemyRed end
    if mode=="PCP" then
        local role=detectPCP(plr)
        if role=="police" then return ESP.Police end
        if role=="criminal" then return ESP.Criminal end
        if role=="prisoner" then return ESP.Prisoner end
        return teamIsAlly(plr) and ESP.TeamBlue or ESP.Prisoner
    end
    if mode=="Role" then
        local role=getRole(plr)
        if role=="sheriff" then return ESP.Sheriff end
        if role=="murderer" then return ESP.Murderer end
        return ESP.Innocent
    end
    if mode=="DOW" then
        if isUnitedFront(plr) then return ESP.UnitedFront end
        return ESP.IronLegion
    end
    local dow=detectDOW(plr)
    if dow=="united_front" then return ESP.UnitedFront end
    if dow=="iron_legion" then return ESP.IronLegion end
    local pcp=detectPCP(plr)
    if pcp=="police" then return ESP.Police end
    if pcp=="criminal" then return ESP.Criminal end
    if pcp=="prisoner" then return ESP.Prisoner end
    return teamIsAlly(plr) and ESP.TeamBlue or ESP.EnemyRed
end
function getESPOutlineFor(plr)
    local c=getESPColourFor(plr)
    return Color3.new(math.min(1,c.R*1.15),math.min(1,c.G*1.15),math.min(1,c.B*1.15))
end
function getRoleLabelFor(plr)
    local mode=Cfg.Visuals.ESPMode or "Team"
    if mode=="Team" then return teamIsAlly(plr) and "[TEAM]" or "[ENEMY]" end
    if mode=="PCP" then
        local role=detectPCP(plr)
        if role=="police" then return "[POLICE]" end
        if role=="criminal" then return "[CRIMINAL]" end
        return "[PRISONER]"
    end
    if mode=="Role" then
        local role=getRole(plr)
        if role=="sheriff" then return "[SHERIFF]" end
        if role=="murderer" then return "[MURDERER]" end
        return "[INNOCENT]"
    end
    if mode=="DOW" then
        if isUnitedFront(plr) then return "[UNITED FRONT]" end
        return "[IRON LEGION]"
    end
    if mode=="Rainbow" then return "" end
    local dow=detectDOW(plr)
    if dow=="united_front" then return "[UNITED FRONT]" end
    if dow=="iron_legion" then return "[IRON LEGION]" end
    local pcp=detectPCP(plr)
    if pcp=="police" then return "[POLICE]" end
    if pcp=="criminal" then return "[CRIMINAL]" end
    if pcp=="prisoner" then return "[PRISONER]" end
    return teamIsAlly(plr) and "[TEAM]" or "[ENEMY]"
end
function getReticleColourFor(plr)
    local mode=Cfg.UI.ReticleColorMode or "Auto"
    if mode=="Custom" then
        return Color3.fromRGB(Cfg.UI.ReticleR or 140, Cfg.UI.ReticleG or 220, Cfg.UI.ReticleB or 255)
    elseif mode=="Rainbow" then
        return Color3.fromHSV((tick()*0.4)%1, 1, 1)
    end
    return getESPColourFor(plr)
end
function getBoundKeys()
    local bound={}
    if Cfg.UI.MenuKey then bound[Cfg.UI.MenuKey]=true end
    if Cfg.UI.HUDKey then bound[Cfg.UI.HUDKey]=true end
    if Cfg.UI.AutoDetectHUDKey then bound[Cfg.UI.AutoDetectHUDKey]=true end
    if Cfg.Aimbot.Key and Cfg.Aimbot.Key.EnumType==Enum.KeyCode then bound[Cfg.Aimbot.Key]=true end
    if Cfg.Trigger.Key and Cfg.Trigger.Key.EnumType==Enum.KeyCode then bound[Cfg.Trigger.Key]=true end
    for _,bind in pairs(Cfg.Binds or {}) do
        if bind and bind.EnumType==Enum.KeyCode then bound[bind]=true end
    end
    return bound
end
function getUnboundKeys(count)
    local bound=getBoundKeys()
    local out={}
    for _,k in ipairs(PREFERRED_ACTION_KEYS) do
        if not bound[k] then table.insert(out,k); if #out>=count then break end end
    end
    return out
end

--======================== EFFECTS ========================
function ripple(parent,x,y,colour,size,duration)
    if not Cfg.UI.Juicy then return end
    local r=new("Frame",{Position=UDim2.fromOffset(x-size/2,y-size/2),
        Size=UDim2.fromOffset(size,size),BackgroundColor3=colour or Theme.accent,
        BackgroundTransparency=0.35,BorderSizePixel=0,ZIndex=100},parent)
    corner(r,size)
    local s=stroke(r,colour or Theme.accent,2,0.15)
    local t1=Tween:Create(r,TweenInfo.new(duration or 0.45,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),
        {Size=UDim2.fromOffset(size*2.6,size*2.6),
         Position=UDim2.fromOffset(x-size*1.3,y-size*1.3),BackgroundTransparency=1})
    local t2=Tween:Create(s,TweenInfo.new(duration or 0.45,Enum.EasingStyle.Quart),{Transparency=1,Thickness=1})
    t1:Play(); t2:Play()
    t1.Completed:Connect(function() r:Destroy() end)
end
function pulse(inst,scale,dur)
    if not Cfg.UI.Juicy then return end
    local orig=inst.Size
    local big=UDim2.new(orig.X.Scale*(scale or 1.06),orig.X.Offset*(scale or 1.06),
        orig.Y.Scale*(scale or 1.06),orig.Y.Offset*(scale or 1.06))
    Tween:Create(inst,TweenInfo.new(dur or 0.08,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Size=big}):Play()
    task.delay(dur or 0.08,function()
        if inst and inst.Parent then
            Tween:Create(inst,TweenInfo.new(dur or 0.12,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=orig}):Play()
        end
    end)
end
function flash(inst,colour,dur)
    if not Cfg.UI.Juicy then return end
    local orig=inst.BackgroundColor3
    inst.BackgroundColor3=colour or Color3.new(1,1,1)
    task.delay(dur or 0.1,function()
        if inst and inst.Parent then Tween:Create(inst,TweenInfo.new(0.18),{BackgroundColor3=orig}):Play() end
    end)
end
function glowStroke(inst,colour,dur)
    if not Cfg.UI.Juicy then return end
    local s=inst:FindFirstChildOfClass("UIStroke"); if not s then return end
    local origT=s.Transparency; local origTh=s.Thickness
    s.Transparency=0; s.Thickness=(s.Thickness or 1)+1.5
    s.Color=colour or Theme.accent2
    Tween:Create(s,TweenInfo.new(dur or 0.35),{Transparency=origT,Thickness=origTh}):Play()
end
function shineSweep(inst,colour,dur)
    if not Cfg.UI.ShineSweeps then return end
    local shine=new("Frame",{Size=UDim2.new(0.35,0,1,0),Position=UDim2.new(-0.4,0,0,0),
        BackgroundColor3=colour or Color3.new(1,1,1),BackgroundTransparency=0.5,
        BorderSizePixel=0,ZIndex=(inst.ZIndex or 1)+5},inst)
    corner(shine,4)
    new("UIGradient",{Transparency=NumberSequence.new({
        NumberSequenceKeypoint.new(0,1),
        NumberSequenceKeypoint.new(0.5,0.1),
        NumberSequenceKeypoint.new(1,1)}),Rotation=0},shine)
    Tween:Create(shine,TweenInfo.new(dur or 0.6,Enum.EasingStyle.Quart),{Position=UDim2.new(1.2,0,0,0)}):Play()
    task.delay(dur or 0.6,function() if shine and shine.Parent then shine:Destroy() end end)
end
function attachHoverStripe(parent,colour)
    local stripe=new("Frame",{Size=UDim2.new(0,3,0.6,0),
        Position=UDim2.new(0,0,0.5,0),AnchorPoint=Vector2.new(0,0.5),
        BackgroundColor3=colour or Theme.accent,BackgroundTransparency=1,
        BorderSizePixel=0,ZIndex=38},parent)
    corner(stripe,2)
    parent.MouseEnter:Connect(function() Tween:Create(stripe,TweenInfo.new(0.15),{BackgroundTransparency=0}):Play() end)
    parent.MouseLeave:Connect(function() Tween:Create(stripe,TweenInfo.new(0.15),{BackgroundTransparency=1}):Play() end)
    return stripe
end
function hoverGlow(row,colour)
    local g=new("Frame",{Size=UDim2.new(1,0,1,0),
        BackgroundColor3=colour or Theme.accent,BackgroundTransparency=1,
        BorderSizePixel=0,ZIndex=32},row)
    corner(g,6)
    row.MouseEnter:Connect(function()
        Tween:Create(g,TweenInfo.new(0.18,Enum.EasingStyle.Quart),{BackgroundTransparency=0.92}):Play()
    end)
    row.MouseLeave:Connect(function()
        Tween:Create(g,TweenInfo.new(0.2),{BackgroundTransparency=1}):Play()
    end)
end

--======================== NOTIFICATIONS ========================
function initNotify(parentGui)
    notifyGui=new("ScreenGui",{Name="ReaperNotify",ResetOnSpawn=false,
        IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=9996},parentGui)
    notifyStack=new("Frame",{Size=UDim2.new(0,300,1,-40),
        Position=UDim2.new(1,-310,0,20),BackgroundTransparency=1,ZIndex=1},notifyGui)
    new("UIListLayout",{Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder,
        HorizontalAlignment=Enum.HorizontalAlignment.Right,
        VerticalAlignment=Enum.VerticalAlignment.Top},notifyStack)
end
function notify(title,msg,colour,dur)
    if not Cfg.UI.Notifications then return end
    if not notifyStack then return end
    colour=colour or Theme.accent
    local card=new("Frame",{Size=UDim2.new(1,0,0,68),
        BackgroundColor3=Theme.panel,BackgroundTransparency=0.1,BorderSizePixel=0,ZIndex=2},notifyStack)
    corner(card,10)
    local st=stroke(card,colour,1.6,0.15)
    grad(card,Theme.panel2,Theme.bg,90)
    new("Frame",{Size=UDim2.new(0,3,1,-14),
        Position=UDim2.new(0,7,0.5,0),AnchorPoint=Vector2.new(0,0.5),
        BackgroundColor3=colour,BorderSizePixel=0,ZIndex=3},card)
    new("TextLabel",{Size=UDim2.new(1,-28,0,18),Position=UDim2.fromOffset(20,10),
        BackgroundTransparency=1,Text=title or "Notification",Font=Enum.Font.GothamBlack,
        TextSize=12,TextColor3=colour,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=3},card)
    new("TextLabel",{Size=UDim2.new(1,-28,0,32),Position=UDim2.fromOffset(20,30),
        BackgroundTransparency=1,Text=msg or "",Font=Enum.Font.Gotham,TextSize=11,TextColor3=Theme.text,
        TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,
        TextWrapped=true,ZIndex=3},card)
    card.Position=UDim2.new(1,60,0,0); card.Size=UDim2.new(1,0,0,0)
    Tween:Create(card,TweenInfo.new(0.4,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),
        {Position=UDim2.new(0,0,0,0),Size=UDim2.new(1,0,0,68)}):Play()
    shineSweep(card,colour,0.7)
    task.delay(dur or 3.5,function()
        if not card or not card.Parent then return end
        local tt=Tween:Create(card,TweenInfo.new(0.4,Enum.EasingStyle.Quart,Enum.EasingDirection.In),
            {Position=UDim2.new(1,60,0,0),BackgroundTransparency=1})
        tt:Play()
        local ts=Tween:Create(st,TweenInfo.new(0.4),{Transparency=1}); ts:Play()
        tt.Completed:Connect(function() if card then card:Destroy() end end)
    end)
end

--======================== NOCLIP ========================
NOCLIP_GROUP="ReaperNoclip"
noclipGroupOK=false
pcall(function() PhysicsService:RegisterCollisionGroup(NOCLIP_GROUP) end)
pcall(function()
    PhysicsService:CollisionGroupSetCollidable(NOCLIP_GROUP,NOCLIP_GROUP,false)
    PhysicsService:CollisionGroupSetCollidable(NOCLIP_GROUP,"Default",false)
    noclipGroupOK=true
end)

--======================== SAVE ========================
function serializeValue(v,d)
    d=d or 0
    if d>25 then return "nil" end
    local t=typeof(v)
    if t=="Color3" then return string.format("Color3.new(%.6f,%.6f,%.6f)",v.R,v.G,v.B) end
    if t=="EnumItem" then
        local s=tostring(v)
        if type(s)=="string" and s:match("^Enum%.[%w_]+%.[%w_]+$") then return s end
        return "nil"
    end
    if t=="number" then
        if v~=v then return "0" end
        if v==math.huge then return "math.huge" end
        if v==-math.huge then return "-math.huge" end
        return tostring(v)
    end
    if t=="boolean" then return tostring(v) end
    if t=="string" then return string.format("%q",v) end
    if t=="table" then
        local p={}
        for k,val in pairs(v) do
            if val~=nil then p[#p+1]="["..serializeValue(k,d+1).."]="..serializeValue(val,d+1) end
        end
        return "{"..table.concat(p,",").."}"
    end
    return "nil"
end
function deserialize(s)
    if not s or s=="" then return nil end
    local f=loadstring or load; if not f then return nil end
    local fn=f("return "..s); if not fn then return nil end
    local ok,r=pcall(fn); return ok and r or nil
end
function saveFileFor() return "ReaperWinter_loadout_"..tostring(game.PlaceId)..".txt" end
function autoloadFileFor() return "ReaperWinter_auto_"..tostring(game.PlaceId)..".txt" end
function globalAutoloadFileFor() return "ReaperWinter_global_auto.txt" end
sessionSaves=_G.__ReaperSaves or {}; _G.__ReaperSaves=sessionSaves
autoloadName=_G.__ReaperAutoload or nil
globalAutoloadName=_G.__ReaperGlobalAutoload or nil
function getSaveTable()
    sessionSaves[game.PlaceId]=sessionSaves[game.PlaceId] or {}
    if IO.has then
        local file=saveFileFor()
        local ok,exists=pcall(IO.isfile,file)
        if ok and exists then
            local ok2,content=pcall(IO.read,file)
            if ok2 and content and content~="" then
                local d=deserialize(content)
                if type(d)=="table" then
                    for k,v in pairs(d) do sessionSaves[game.PlaceId][k]=v end
                end
            end
        end
    end
    return sessionSaves[game.PlaceId]
end
function writeSaveTable(tbl)
    sessionSaves[game.PlaceId]=tbl; _G.__ReaperSaves=sessionSaves
    if IO.has then pcall(IO.write,saveFileFor(),serializeValue(tbl)) end
end
function saveLoadoutForGame(name,markAutoload)
    local tbl=getSaveTable()
    local data={}
    for k,v in pairs(Cfg) do if k~="Binds" then data[k]=deepCopy(v) end end
    data.Binds={}
    for k,v in pairs(Cfg.Binds or {}) do data.Binds[k]=v end
    tbl[name]=data; writeSaveTable(tbl)
    if markAutoload then
        autoloadName=name; _G.__ReaperAutoload=name
        if IO.has then pcall(IO.write,autoloadFileFor(),name) end
    end
    globalAutoloadName=game.PlaceId.."::"..name; _G.__ReaperGlobalAutoload=globalAutoloadName
    if IO.has then pcall(IO.write,globalAutoloadFileFor(),globalAutoloadName) end
    return true
end
function loadLoadoutForGame(name)
    local tbl=getSaveTable(); local data=tbl[name]
    if not data then return false end
    for k,v in pairs(data) do Cfg[k]=deepCopy(v) end
    if type(Cfg.Binds)~="table" then Cfg.Binds={} end
    return true
end
function deleteLoadoutForGame(name)
    local tbl=getSaveTable(); tbl[name]=nil; writeSaveTable(tbl)
    if autoloadName==name then
        autoloadName=nil; _G.__ReaperAutoload=nil
        if IO.has then pcall(IO.write,autoloadFileFor(),"") end
    end
end
function renameLoadout(oldName,newName)
    if oldName==newName then return false end
    local tbl=getSaveTable()
    if not tbl[oldName] or tbl[newName] then return false end
    tbl[newName]=tbl[oldName]; tbl[oldName]=nil; writeSaveTable(tbl)
    if autoloadName==oldName then
        autoloadName=newName; _G.__ReaperAutoload=newName
        if IO.has then pcall(IO.write,autoloadFileFor(),newName) end
    end
    return true
end
do
    if IO.has then
        local ok,exists=pcall(IO.isfile,globalAutoloadFileFor())
        if ok and exists then
            local ok2,content=pcall(IO.read,globalAutoloadFileFor())
            if ok2 and content and content~="" then
                globalAutoloadName=content:gsub("%s+$","")
                local pid,nm=globalAutoloadName:match("^(%d+)::(.+)$")
                if pid and nm and tonumber(pid)==game.PlaceId then autoloadName=nm end
            end
        end
        local ok,exists=pcall(IO.isfile,autoloadFileFor())
        if ok and exists then
            local ok2,content=pcall(IO.read,autoloadFileFor())
            if ok2 and content and content~="" then autoloadName=content:gsub("%s+$","") end
        end
    end
end

--======================== GUI ROOT ========================
playerGui=LP:WaitForChild("PlayerGui")
gui=new("ScreenGui",{Name="ReaperPanel",ResetOnSpawn=false,IgnoreGuiInset=true,
    ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=9999},playerGui)
initNotify(playerGui)

--======================== CROSSHAIR ========================
crossGui=new("ScreenGui",{Name="ReaperCrosshair",ResetOnSpawn=false,
    IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=10000},playerGui)
crosshair=new("Frame",{Size=UDim2.fromOffset(40,40),AnchorPoint=Vector2.new(0.5,0.5),
    BackgroundTransparency=1,Visible=false},crossGui)
crossTicks={}
function makeCrossTick(offset,size)
    local f=new("Frame",{Size=UDim2.fromOffset(size.X,size.Y),
        Position=UDim2.new(0.5,offset.X,0.5,offset.Y),
        AnchorPoint=Vector2.new(0.5,0.5),
        BackgroundColor3=Theme.accent,BackgroundTransparency=0,BorderSizePixel=0,ZIndex=5},crosshair)
    corner(f,1); stroke(f,Theme.accent2,1,0.15)
    table.insert(crossTicks,f); return f
end
reticle=new("Frame",{Size=UDim2.fromOffset(110,110),AnchorPoint=Vector2.new(0.5,0.5),
    BackgroundTransparency=1,Visible=false},crossGui)
RSIZE=110
ring1=new("Frame",{Size=UDim2.fromOffset(RSIZE,RSIZE),BackgroundTransparency=1,ZIndex=6},reticle)
corner(ring1,RSIZE); ring1S=stroke(ring1,Theme.accent,2,0.15)
ring2=new("Frame",{Size=UDim2.fromOffset(RSIZE-14,RSIZE-14),
    Position=UDim2.fromOffset(7,7),BackgroundTransparency=1,ZIndex=7},reticle)
corner(ring2,RSIZE); ring2S=stroke(ring2,Theme.accent,1,0.5)
ring3=new("Frame",{Size=UDim2.fromOffset(RSIZE-30,RSIZE-30),
    Position=UDim2.fromOffset(15,15),BackgroundTransparency=1,ZIndex=8},reticle)
corner(ring3,RSIZE); ring3S=stroke(ring3,Theme.accent2,1,0.7)
BRACKET_LEN=18; BRACKET_THICK=3
bracketFrames={}
function addBracket(ox,oy,sx,sy)
    local f=new("Frame",{Size=UDim2.fromOffset(sx,sy),Position=UDim2.fromOffset(ox,oy),
        BackgroundColor3=Theme.accent,BackgroundTransparency=0,BorderSizePixel=0,ZIndex=9},reticle)
    corner(f,1); f:SetAttribute("OX",ox); f:SetAttribute("OY",oy)
    table.insert(bracketFrames,f); return f
end
addBracket(0,0,BRACKET_LEN,BRACKET_THICK); addBracket(0,0,BRACKET_THICK,BRACKET_LEN)
addBracket(RSIZE-BRACKET_LEN,0,BRACKET_LEN,BRACKET_THICK); addBracket(RSIZE-BRACKET_THICK,0,BRACKET_THICK,BRACKET_LEN)
addBracket(0,RSIZE-BRACKET_THICK,BRACKET_LEN,BRACKET_THICK); addBracket(0,RSIZE-BRACKET_LEN,BRACKET_THICK,BRACKET_LEN)
addBracket(RSIZE-BRACKET_LEN,RSIZE-BRACKET_THICK,BRACKET_LEN,BRACKET_THICK)
addBracket(RSIZE-BRACKET_THICK,RSIZE-BRACKET_LEN,BRACKET_THICK,BRACKET_LEN)
trackLine=new("Frame",{BackgroundColor3=Theme.accent,BackgroundTransparency=0.55,
    AnchorPoint=Vector2.new(0,0.5),BorderSizePixel=0,ZIndex=5,Visible=false},crossGui)
hpBar=new("Frame",{Size=UDim2.fromOffset(4,60),Position=UDim2.new(1,10,0.5,-30),
    BackgroundColor3=Theme.danger,BackgroundTransparency=0.15,BorderSizePixel=0,ZIndex=10},reticle)
corner(hpBar,2)
hpFill=new("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=Theme.success,BorderSizePixel=0,ZIndex=11},hpBar)
corner(hpFill,2)
reticleName=new("TextLabel",{Size=UDim2.new(1,60,0,18),Position=UDim2.new(0,-30,1,10),
    BackgroundTransparency=1,Font=Enum.Font.GothamBlack,TextSize=14,TextColor3=Theme.accent2,Text="",
    TextStrokeTransparency=0.3,TextStrokeColor3=Color3.new(0,0,0),ZIndex=12},reticle)
reticleDist=new("TextLabel",{Size=UDim2.new(1,60,0,13),Position=UDim2.new(0,-30,1,28),
    BackgroundTransparency=1,Font=Enum.Font.GothamBold,TextSize=11,TextColor3=Theme.muted,Text="",
    TextStrokeTransparency=0.5,TextStrokeColor3=Color3.new(0,0,0),ZIndex=12},reticle)
reticleActionBar=new("Frame",{Size=UDim2.new(1,100,0,20),Position=UDim2.new(0,-50,1,46),
    BackgroundTransparency=1,ZIndex=13},reticle)
new("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,
    HorizontalAlignment=Enum.HorizontalAlignment.Center,
    VerticalAlignment=Enum.VerticalAlignment.Center,
    Padding=UDim.new(0,5)},reticleActionBar)
rainbowHue=0
RS.Heartbeat:Connect(function(dt) rainbowHue=(rainbowHue+dt*Cfg.Visuals.RainbowSpeed)%1 end)

--======================== RETICLE ACTIONS ========================
function runTargetAction(id)
    local target=TrollState.hoveredPlayer
    if not target or not target.Character then
        notify("No Target","Hover a player first.",Theme.danger,2); return
    end
    if id=="teleport" then
        local tR=target.Character:FindFirstChild("HumanoidRootPart")
        local myR=hrp()
        if tR and myR then
            myR.AssemblyLinearVelocity=Vector3.zero
            myR.CFrame=tR.CFrame+Vector3.new(0,3,0)
            myR.AssemblyLinearVelocity=Vector3.zero
            notify("Teleported",target.Name,Theme.accent)
        end
    elseif id=="spectate" then
        if ReticleActions.spectateTarget==target then
            ReticleActions.spectateTarget=nil; ReticleActions.spectateZoom=1
            notify("Spectate Off","",Theme.muted,1.5)
        else
            ReticleActions.spectateTarget=target; ReticleActions.spectateZoom=1
            notify("Spectating",target.Name.." · scroll",Theme.accent3,3)
        end
    elseif id=="hump" then
        TrollState.targetedPlayer=target
        TrollState.humpTargetCF=nil; TrollState.humpTargetPlayer=nil
        if not Cfg.Troll.HumpEnabled and widgets["Troll.HumpEnabled"] then
            widgets["Troll.HumpEnabled"].set(true)
        end
        notify("Humping",target.Name,Theme.gold)
    end
end
function rebuildActionChips()
    for _,c in ipairs(reticleActionBar:GetChildren()) do
        if not c:IsA("UIListLayout") then c:Destroy() end
    end
    ReticleActions.chips={}
    local actions={
        {id="teleport", label="TP",   key=ReticleActions.keys.teleport, colour=Theme.accent},
        {id="spectate", label="SPEC", key=ReticleActions.keys.spectate, colour=Theme.accent3},
    }
    if Cfg.Troll.HumpEnabled then
        table.insert(actions,{id="hump", label="HUMP", key=ReticleActions.keys.hump, colour=Theme.gold})
    end
    for _,act in ipairs(actions) do
        if act.key then
            local chip=new("TextButton",{Size=UDim2.new(0,0,1,0),
                AutomaticSize=Enum.AutomaticSize.X,
                BackgroundColor3=Theme.panel,BackgroundTransparency=0.2,
                Text=act.label.." ["..act.key.Name.."]",
                Font=Enum.Font.GothamBold,TextSize=9,TextColor3=act.colour,
                AutoButtonColor=false,ZIndex=14},reticleActionBar)
            corner(chip,4)
            new("UIPadding",{PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,6)},chip)
            local cs=stroke(chip,act.colour,1,0.35)
            chip.MouseButton1Click:Connect(function()
                runTargetAction(act.id); pulse(chip,1.1,0.08)
            end)
            chip.MouseEnter:Connect(function()
                Tween:Create(chip,TweenInfo.new(0.12),{BackgroundTransparency=0}):Play()
                cs.Transparency=0
            end)
            chip.MouseLeave:Connect(function()
                Tween:Create(chip,TweenInfo.new(0.15),{BackgroundTransparency=0.2}):Play()
                cs.Transparency=0.35
            end)
            table.insert(ReticleActions.chips,{chip=chip,action=act,stroke=cs})
        end
    end
end
do
    local unbound=getUnboundKeys(3)
    ReticleActions.keys.teleport=unbound[1]
    ReticleActions.keys.spectate=unbound[2]
    ReticleActions.keys.hump=unbound[3]
end

--======================== CROSSHAIR LOOP ========================
task.spawn(function()
    while crossGui.Parent do
        RS.RenderStepped:Wait()
        local show=Cfg.Troll.TapTarget and Cfg.UI.CrosshairEnabled
        if Cfg.UI.CrosshairHideOnMenu and menu and menu.Visible then show=false end
        if not show then
            crosshair.Visible=false; reticle.Visible=false; trackLine.Visible=false
        else
            crosshair.Visible=true
            local mouse=UIS:GetMouseLocation()
            crosshair.Position=UDim2.fromOffset(mouse.X,mouse.Y)
            crosshair.Size=UDim2.fromOffset(Cfg.UI.CrosshairSize,Cfg.UI.CrosshairSize)
            for _,t in ipairs(crossTicks) do t:Destroy() end
            crossTicks={}
            local sz=Cfg.UI.CrosshairSize; local tk=Cfg.UI.CrosshairThick
            local armLen=math.max(6,math.floor(sz*0.32))
            local gap=math.max(2,math.floor(sz*0.15))
            makeCrossTick(Vector2.new(0,-(gap+armLen/2)),Vector2.new(tk,armLen))
            makeCrossTick(Vector2.new(0,(gap+armLen/2)),Vector2.new(tk,armLen))
            makeCrossTick(Vector2.new(-(gap+armLen/2),0),Vector2.new(armLen,tk))
            makeCrossTick(Vector2.new((gap+armLen/2),0),Vector2.new(armLen,tk))
            local alpha=0.85
            if Cfg.UI.CrosshairPulse then alpha=0.75+math.sin(tick()*6)*0.2 end
            for _,t in ipairs(crossTicks) do t.BackgroundTransparency=1-alpha end
            local ray=Cam:ViewportPointToRay(mouse.X,mouse.Y)
            local params=RaycastParams.new()
            params.FilterType=Enum.RaycastFilterType.Exclude
            params.FilterDescendantsInstances={LP.Character}
            local res=workspace:Raycast(ray.Origin,ray.Direction*3000,params)
            local picked=nil
            if res and res.Instance then
                local model=res.Instance:FindFirstAncestorOfClass("Model")
                if model then
                    local plr=Players:GetPlayerFromCharacter(model)
                    if plr and plr~=LP then picked=plr end
                end
            end
            if not picked then
                local best,bestD=nil,Cfg.Troll.TapTargetRadius
                for _,plr in ipairs(Players:GetPlayers()) do
                    if plr~=LP and plr.Character then
                        local head=plr.Character:FindFirstChild("Head")
                        if head then
                            local sp,onScr=Cam:WorldToViewportPoint(head.Position)
                            if onScr and sp.Z>0 then
                                local d=(Vector2.new(sp.X,sp.Y)-mouse).Magnitude
                                if d<=bestD then best,bestD=plr,d end
                            end
                        end
                    end
                end
                picked=best
            end
            TrollState.hoveredPlayer=picked
            if picked and picked.Character then
                local head=picked.Character:FindFirstChild("Head")
                local hp=picked.Character:FindFirstChildOfClass("Humanoid")
                if head and hp then
                    local sp,onScr=Cam:WorldToViewportPoint(head.Position)
                    if onScr and sp.Z>0 then
                        local col=getReticleColourFor(picked)
                        reticle.Visible=true
                        local pulseV=1
                        if Cfg.UI.CrosshairPulse then pulseV=0.96+math.sin(tick()*7)*0.06 end
                        local sizeScale=RSIZE*pulseV
                        reticle.Position=UDim2.fromOffset(sp.X,sp.Y)
                        reticle.Size=UDim2.fromOffset(sizeScale,sizeScale)
                        local sx=sizeScale/RSIZE
                        for _,f in ipairs(bracketFrames) do
                            local ox=f:GetAttribute("OX") or 0
                            local oy=f:GetAttribute("OY") or 0
                            local nx=(ox>RSIZE/2) and (sizeScale-(RSIZE-ox)) or ox
                            local ny=(oy>RSIZE/2) and (sizeScale-(RSIZE-oy)) or oy
                            f.Position=UDim2.fromOffset(nx,ny); f.BackgroundColor3=col
                        end
                        ring1.Size=UDim2.fromOffset(sizeScale,sizeScale)
                        ring2.Size=UDim2.fromOffset(sizeScale-14*sx,sizeScale-14*sx)
                        ring2.Position=UDim2.fromOffset(7*sx,7*sx)
                        ring3.Size=UDim2.fromOffset(sizeScale-30*sx,sizeScale-30*sx)
                        ring3.Position=UDim2.fromOffset(15*sx,15*sx)
                        ring1S.Color=col; ring2S.Color=col; ring3S.Color=col
                        reticleName.TextColor3=col
                        reticleName.Text=(picked.DisplayName or picked.Name).." "..getRoleLabelFor(picked)
                        local dist=(Cam.CFrame.Position-head.Position).Magnitude
                        reticleDist.Text=string.format("⌖ %d studs",math.floor(dist))
                        if Cfg.UI.ReticleHealthBar and hp then
                            hpBar.Visible=true
                            local hpx=math.clamp(hp.Health/hp.MaxHealth,0,1)
                            hpFill.Size=UDim2.fromScale(1,hpx)
                            hpFill.Position=UDim2.fromScale(0,1-hpx)
                            hpFill.BackgroundColor3=hpx>0.5 and Theme.success or (hpx>0.25 and Theme.gold or Theme.danger)
                        else hpBar.Visible=false end
                        if Cfg.UI.ReticleTrackingLine then
                            local dx=sp.X-mouse.X; local dy=sp.Y-mouse.Y
                            local len=math.sqrt(dx*dx+dy*dy)
                            if len>25 then
                                trackLine.Visible=true
                                trackLine.Position=UDim2.fromOffset(mouse.X,mouse.Y)
                                trackLine.Size=UDim2.fromOffset(len,1)
                                trackLine.Rotation=math.deg(math.atan2(dy,dx))
                                trackLine.BackgroundColor3=col
                            else trackLine.Visible=false end
                        else trackLine.Visible=false end
                    else reticle.Visible=false; trackLine.Visible=false end
                end
            else reticle.Visible=false; trackLine.Visible=false end
        end
    end
end)

RS.RenderStepped:Connect(function(dt)
    pcall(function()
        local t=ReticleActions.spectateTarget
        if t and (not t.Parent or not t.Character) then
            ReticleActions.spectateTarget=nil
            Cam.CameraType=Enum.CameraType.Custom
            ReticleActions.spectateZoom=1
            return
        end
        if t and t.Character and not Cfg.Movement.Freecam then
            local head=t.Character:FindFirstChild("Head")
            local hrp_=t.Character:FindFirstChild("HumanoidRootPart")
            if head and hrp_ then
                Cam.CameraType=Enum.CameraType.Scriptable
                local dist=8*ReticleActions.spectateZoom
                local offset=hrp_.CFrame.LookVector*-dist+Vector3.new(0,3*ReticleActions.spectateZoom,0)
                local wantPos=hrp_.Position+offset
                Cam.CFrame=Cam.CFrame:Lerp(CFrame.new(wantPos,hrp_.Position+hrp_.CFrame.LookVector),math.clamp(dt*6,0,1))
            end
        elseif Cam.CameraType==Enum.CameraType.Scriptable and not Cfg.Movement.Freecam then
            Cam.CameraType=Enum.CameraType.Custom
        end
    end)
end)

--======================== LOGO (v11 size) ========================
LW,LH=170,56
logo=new("TextButton",{Name="Logo",Size=UDim2.fromOffset(LW,LH),
    Position=UDim2.new(0.5,-LW/2,0,12),BackgroundTransparency=1,Text="",
    AutoButtonColor=false,ZIndex=60},gui)
aura=tAccent(new("Frame",{Size=UDim2.fromScale(1.06,1.15),
    Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
    BackgroundColor3=Theme.accent,BackgroundTransparency=0.6,BorderSizePixel=0,ZIndex=1},logo))
corner(aura,14)
back=tBg(new("Frame",{Size=UDim2.fromScale(1,1),
    Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
    BackgroundColor3=Theme.bg,BorderSizePixel=0,ZIndex=2},logo))
corner(back,14); grad(back,Theme.panel,Theme.bg,90)
backStroke=tAccent(stroke(back,Theme.accent,1.4,0.2))
ring=new("Frame",{Size=UDim2.fromScale(1,1),
    Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
    BackgroundTransparency=1,ZIndex=3},logo)
corner(ring,14)
new("UIStroke",{Color=Color3.new(1,1,1),Thickness=1.4},ring)
ringGrad=new("UIGradient",{Color=ColorSequence.new({
    ColorSequenceKeypoint.new(0,Color3.fromRGB(30,180,255)),
    ColorSequenceKeypoint.new(0.5,Color3.fromRGB(120,80,255)),
    ColorSequenceKeypoint.new(1,Color3.fromRGB(30,180,255))}),Rotation=0},
    ring:FindFirstChildOfClass("UIStroke"))
plate=tPanel(new("Frame",{Size=UDim2.fromOffset(36,36),
    Position=UDim2.new(0,10,0.5,-18),BackgroundColor3=Theme.panel,BorderSizePixel=0,ZIndex=4},back))
corner(plate,18); tAccent(stroke(plate,Theme.accent,1.4,0.15))
flame=new("Frame",{Size=UDim2.fromOffset(14,14),
    Position=UDim2.fromScale(0.5,0.62),AnchorPoint=Vector2.new(0.5,0.5),
    BackgroundColor3=Theme.accent,BorderSizePixel=0,Rotation=45,ZIndex=5},plate)
corner(flame,3); tAccent(flame)
grad(flame,Color3.fromRGB(180,240,255),Color3.fromRGB(30,120,220),90)
flameTop=new("Frame",{Size=UDim2.fromOffset(8,8),
    Position=UDim2.fromScale(0.5,0.44),AnchorPoint=Vector2.new(0.5,0.5),
    BackgroundColor3=Color3.fromRGB(220,245,255),BorderSizePixel=0,Rotation=45,ZIndex=6},plate)
corner(flameTop,2)
title=new("TextLabel",{Size=UDim2.new(1,-50,0,26),Position=UDim2.fromOffset(50,6),
    BackgroundTransparency=1,Text="REAPER",Font=Enum.Font.GothamBlack,
    TextSize=17,TextColor3=Color3.new(1,1,1),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=6},back)
titleGrad=new("UIGradient",{Color=ColorSequence.new({
    ColorSequenceKeypoint.new(0,Color3.fromRGB(120,220,255)),
    ColorSequenceKeypoint.new(0.5,Color3.fromRGB(60,140,255)),
    ColorSequenceKeypoint.new(1,Color3.fromRGB(160,80,255))}),Rotation=20},title)
tAccent(stroke(title,Theme.accent,1.2,0.2))
tMuted(new("TextLabel",{Size=UDim2.new(1,-50,0,11),Position=UDim2.fromOffset(51,34),
    BackgroundTransparency=1,Text="CLICK · X",Font=Enum.Font.GothamBold,
    TextSize=7,TextColor3=Theme.muted,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=6},back))
task.spawn(function()
    while ring.Parent do
        for i=0,360,5 do
            if not ring.Parent then return end
            ringGrad.Rotation=i; RS.RenderStepped:Wait()
        end
    end
end)
task.spawn(function()
    while aura.Parent do
        local t1=Tween:Create(aura,TweenInfo.new(1.3,Enum.EasingStyle.Sine),
            {BackgroundTransparency=0.8,Size=UDim2.fromScale(1.12,1.22)})
        t1:Play(); t1.Completed:Wait()
        local t2=Tween:Create(aura,TweenInfo.new(1.3,Enum.EasingStyle.Sine),
            {BackgroundTransparency=0.55,Size=UDim2.fromScale(1.04,1.1)})
        t2:Play(); t2.Completed:Wait()
    end
end)
logo.MouseEnter:Connect(function()
    Tween:Create(backStroke,TweenInfo.new(0.15),{Transparency=0}):Play()
    pulse(back,1.03,0.1)
end)
logo.MouseLeave:Connect(function()
    Tween:Create(backStroke,TweenInfo.new(0.15),{Transparency=0.2}):Play()
end)

--======================== TARGET ALERT ========================
targetAlert=tPanel(new("Frame",{Size=UDim2.fromOffset(280,28),
    Position=UDim2.new(0.5,-140,0,78),BackgroundColor3=Theme.panel,
    BackgroundTransparency=0.1,BorderSizePixel=0,Visible=false,ZIndex=55},gui))
corner(targetAlert,8); tAccent(stroke(targetAlert,Theme.accent,1.4,0.15))
targetAlertDot=new("Frame",{Size=UDim2.fromOffset(8,8),
    Position=UDim2.new(0,12,0.5,-4),BackgroundColor3=Theme.success,BorderSizePixel=0,ZIndex=56},targetAlert)
corner(targetAlertDot,4)
targetAlertLbl=new("TextLabel",{Size=UDim2.new(1,-34,1,0),Position=UDim2.fromOffset(28,0),
    BackgroundTransparency=1,Text="",Font=Enum.Font.GothamBold,TextSize=12,
    TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left,
    TextTruncate=Enum.TextTruncate.AtEnd,ZIndex=56},targetAlert)
alertToken=0
function showTargetAlert(name,colour)
    alertToken=alertToken+1
    local myTok=alertToken
    targetAlertLbl.Text="🎯 "..tostring(name)
    targetAlertLbl.TextColor3=colour or Theme.accent2
    targetAlertDot.BackgroundColor3=colour or Theme.success
    targetAlert.Visible=true
    targetAlert.Position=UDim2.new(0.5,-140,0,72)
    Tween:Create(targetAlert,TweenInfo.new(0.28,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
        {Position=UDim2.new(0.5,-140,0,78)}):Play()
    task.delay(3,function()
        if alertToken~=myTok then return end
        Tween:Create(targetAlert,TweenInfo.new(0.3),{Position=UDim2.new(0.5,-140,0,72)}):Play()
        task.wait(0.3)
        if alertToken==myTok then targetAlert.Visible=false end
    end)
end

--======================== MENU (v11 sizes/colors) ========================
menu=tBg(new("Frame",{Name="Menu",Size=UDim2.fromOffset(720,540),
    Position=UDim2.new(0.5,-360,0.5,-270),BackgroundColor3=Theme.bg,
    BorderSizePixel=0,ClipsDescendants=true,Visible=false,ZIndex=30},gui))
corner(menu,16)
menuStroke=tAccent(stroke(menu,Theme.accent,2,0.25))
if Cfg.UI.MenuBlur then
    local blur=new("BlurEffect",{Size=8,Parent=Lighting})
    task.spawn(function()
        while menu.Parent do blur.Enabled=menu.Visible; task.wait(0.1) end
        blur:Destroy()
    end)
end
bgGlow=new("Frame",{Size=UDim2.fromScale(1.4,1.4),
    Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
    BackgroundColor3=Theme.accent,BorderSizePixel=0,BackgroundTransparency=0.94,ZIndex=0},menu)
corner(bgGlow,400)
bgGlowGrad=new("UIGradient",{Color=ColorSequence.new(Theme.accent,Theme.accent3),Rotation=0},bgGlow)
task.spawn(function()
    while menu.Parent do
        for r=0,360,3 do
            if not menu.Parent then return end
            bgGlowGrad.Rotation=r; RS.RenderStepped:Wait()
        end
    end
end)
if Cfg.UI.BorderGlow then
    task.spawn(function()
        while menu.Parent do
            if menuStroke and menuStroke.Parent then
                menuStroke.Transparency=0.15+math.sin(tick()*2)*0.15
            end
            RS.RenderStepped:Wait()
        end
    end)
end
ambientLayer=new("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,
    ClipsDescendants=true,ZIndex=2},menu)
ambientParts={}
function buildAmbient()
    for _,p in ipairs(ambientParts) do if p.inst then p.inst:Destroy() end end
    ambientParts={}
    if not Cfg.UI.AmbientParticles then return end
    for i=1,25 do
        local sz=2+math.random()*3
        local f=new("Frame",{Size=UDim2.fromOffset(sz,sz),
            Position=UDim2.fromScale(math.random(),math.random()),
            BackgroundColor3=Theme.accent2,BackgroundTransparency=0.55+math.random()*0.3,
            BorderSizePixel=0,ZIndex=2},ambientLayer)
        corner(f,sz)
        table.insert(ambientParts,{inst=f,vx=(math.random()-0.5)*0.015,
            vy=(math.random()-0.5)*0.015,phase=math.random()*math.pi*2})
    end
end
buildAmbient()
snowLayer=new("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ClipsDescendants=true,ZIndex=1},menu)
snowflakes={}
function buildSnow()
    for _,s in ipairs(snowflakes) do if s.inst then s.inst:Destroy() end end
    snowflakes={}
    for i=1,math.max(0,math.floor(Theme.Snow.count)) do
        local sz=Theme.Snow.size+math.random()*2
        local f=new("Frame",{Size=UDim2.fromOffset(sz,sz),
            Position=UDim2.fromScale(math.random(),math.random()),
            BackgroundColor3=Theme.Snow.color,BackgroundTransparency=0.15+math.random()*0.5,
            BorderSizePixel=0,ZIndex=1},snowLayer)
        corner(f,sz)
        table.insert(snowflakes,{inst=f,speed=Theme.Snow.speed*(0.6+math.random()*0.8),
            sway=math.random()*math.pi*2,swaySpeed=0.6+math.random()*1.2,drift=(math.random()-0.5)*12})
    end
end
buildSnow()
glassLayer=new("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ClipsDescendants=true,ZIndex=4},menu)
glassTint=new("Frame",{Size=UDim2.fromScale(1,1),
    BackgroundColor3=Color3.fromRGB(120,180,240),
    BackgroundTransparency=Theme.Rain.tint,BorderSizePixel=0,ZIndex=4},glassLayer)
grad(glassTint,Color3.fromRGB(140,200,255),Color3.fromRGB(20,40,80),90)
rainTrails={}
function buildRain()
    for _,r in ipairs(rainTrails) do if r.inst then r.inst:Destroy() end end
    rainTrails={}
    for i=1,math.max(0,math.floor(Theme.Rain.count)) do
        local trailH=18+math.random()*46
        local holder=new("Frame",{Size=UDim2.fromOffset(Theme.Rain.thickness+1,trailH),
            Position=UDim2.fromScale(math.random(),math.random()),
            BackgroundTransparency=1,BorderSizePixel=0,ZIndex=5},glassLayer)
        local trail=new("Frame",{Size=UDim2.fromScale(1,1),
            BackgroundColor3=Theme.Rain.color,BackgroundTransparency=0.45,
            BorderSizePixel=0,ZIndex=5},holder)
        corner(trail,3)
        new("UIGradient",{Transparency=NumberSequence.new({
            NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.55,0.7),
            NumberSequenceKeypoint.new(1,0.05)}),Rotation=90},trail)
        local head=new("Frame",{Size=UDim2.fromOffset(Theme.Rain.thickness+3,Theme.Rain.thickness+3),
            Position=UDim2.new(0.5,0,1,0),AnchorPoint=Vector2.new(0.5,0.5),
            BackgroundColor3=Theme.Rain.color,BackgroundTransparency=0.1,BorderSizePixel=0,ZIndex=6},holder)
        corner(head,10)
        table.insert(rainTrails,{inst=holder,head=head,speed=Theme.Rain.speed*(0.7+math.random()*0.7)})
    end
end
buildRain()
sakuraLayer=new("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ClipsDescendants=true,ZIndex=3},menu)
sakuraLeaves={}
function buildSakura()
    for _,l in ipairs(sakuraLeaves) do if l.inst then l.inst:Destroy() end end
    sakuraLeaves={}
    if not Theme.Sakura.enabled then return end
    local n=math.max(0,math.floor(Theme.Sakura.leaves.count))
    for i=1,n do
        local sz=Theme.Sakura.leaves.size+math.random()*3
        local leaf=new("Frame",{Size=UDim2.fromOffset(sz,sz*0.55),
            Position=UDim2.fromScale(math.random(),math.random()),
            BackgroundColor3=(math.random()>0.5) and Theme.Sakura.leaves.color or Theme.Sakura.leaves.color2,
            BackgroundTransparency=0.1+math.random()*0.35,
            BorderSizePixel=0,Rotation=math.random()*360,ZIndex=3},sakuraLayer)
        corner(leaf,math.floor(sz))
        table.insert(sakuraLeaves,{inst=leaf,
            speed=Theme.Sakura.leaves.speed*(0.6+math.random()*0.8),
            sway=math.random()*math.pi*2,swaySpeed=0.6+math.random()*1.3,
            swayAmp=Theme.Sakura.leaves.sway*(0.5+math.random()),rot=(math.random()-0.5)*140})
    end
end
buildSakura()

header=tPanel2(new("Frame",{Size=UDim2.new(1,0,0,44),
    BackgroundColor3=Theme.panel2,BorderSizePixel=0,ZIndex=31},menu))
corner(header,16)
grad(header,Color3.fromRGB(30,62,112),Color3.fromRGB(6,10,22),90)
new("Frame",{Size=UDim2.new(1,0,0,2),Position=UDim2.new(0,0,1,-2),
    BackgroundColor3=Theme.accent,BackgroundTransparency=0.35,BorderSizePixel=0,ZIndex=32},header)
tAccent2(new("TextLabel",{Size=UDim2.fromOffset(260,44),Position=UDim2.fromOffset(16,0),
    BackgroundTransparency=1,Text="REAPER :: WINTER",Font=Enum.Font.GothamBlack,
    TextSize=15,TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=32},header))
closeBtn=new("TextButton",{Size=UDim2.fromOffset(26,26),
    Position=UDim2.new(1,-38,0,9),BackgroundColor3=Theme.danger,Text="✕",
    Font=Enum.Font.GothamBold,TextSize=12,TextColor3=Color3.new(1,1,1),
    AutoButtonColor=false,ZIndex=33},header)
corner(closeBtn,6)
closeBtn.MouseButton1Click:Connect(function() closeMenu() end)
tickerBar=tPanel(new("Frame",{Size=UDim2.new(1,-20,0,24),
    Position=UDim2.fromOffset(10,50),BackgroundColor3=Theme.panel,
    BackgroundTransparency=0.25,BorderSizePixel=0,ClipsDescendants=true,ZIndex=31},menu))
corner(tickerBar,5)
tickerStroke=stroke(tickerBar,Theme.Ticker.color,1,0.35)
tickerGlow=new("TextLabel",{Size=UDim2.new(0,0,1,0),BackgroundTransparency=1,
    Text=Theme.Ticker.text,Font=Enum.Font.Gotham,TextSize=Theme.Ticker.size,
    TextColor3=Theme.Ticker.color,TextTransparency=0.7,
    TextXAlignment=Enum.TextXAlignment.Left,AutomaticSize=Enum.AutomaticSize.X,ZIndex=32},tickerBar)
tickerLabel=new("TextLabel",{Size=UDim2.new(0,0,1,0),BackgroundTransparency=1,
    Text=Theme.Ticker.text,Font=Enum.Font.Gotham,TextSize=Theme.Ticker.size,
    TextColor3=Theme.Ticker.color,TextStrokeTransparency=0,
    TextStrokeColor3=Theme.Ticker.color,
    TextXAlignment=Enum.TextXAlignment.Left,AutomaticSize=Enum.AutomaticSize.X,ZIndex=33},tickerBar)
tickerX=0
task.spawn(function()
    RS.RenderStepped:Connect(function(dt)
        if not tickerLabel.Parent then return end
        local w=tickerLabel.AbsoluteSize.X
        tickerX=tickerX-Theme.Ticker.speed*dt
        if tickerX+w<0 then tickerX=tickerBar.AbsoluteSize.X+4 end
        tickerLabel.Position=UDim2.fromOffset(tickerX,0)
        tickerGlow.Position=UDim2.fromOffset(tickerX+1,0)
    end)
end)
rail=tPanel(new("Frame",{Size=UDim2.new(0,132,1,-124),
    Position=UDim2.fromOffset(10,84),BackgroundColor3=Theme.panel,
    BackgroundTransparency=0.05,BorderSizePixel=0,ZIndex=31},menu))
corner(rail,12)
new("UIListLayout",{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder},rail)
new("UIPadding",{PaddingTop=UDim.new(0,10),PaddingLeft=UDim.new(0,7),PaddingRight=UDim.new(0,7)},rail)
tabIndicator=new("Frame",{Size=UDim2.new(1,-14,0,30),
    Position=UDim2.fromOffset(7,10),BackgroundColor3=Theme.accent,
    BackgroundTransparency=0.82,BorderSizePixel=0,ZIndex=31},rail)
corner(tabIndicator,8)
new("UIGradient",{Color=ColorSequence.new(Theme.accent,Theme.accent3),Rotation=0},tabIndicator)
content=tPanel(new("Frame",{Size=UDim2.new(1,-160,1,-124),
    Position=UDim2.fromOffset(152,84),BackgroundColor3=Theme.panel,
    BackgroundTransparency=0.05,BorderSizePixel=0,ZIndex=31},menu))
corner(content,12)
status=tPanel(new("Frame",{Size=UDim2.new(1,-20,0,20),
    Position=UDim2.new(0,10,1,-28),BackgroundColor3=Theme.panel,
    BackgroundTransparency=0.35,BorderSizePixel=0,ZIndex=31},menu))
corner(status,6)
statusLbl=tMuted(new("TextLabel",{Size=UDim2.new(1,-12,1,0),
    Position=UDim2.fromOffset(12,0),BackgroundTransparency=1,Text="REAPER",
    Font=Enum.Font.Gotham,TextSize=10,TextColor3=Theme.muted,
    TextXAlignment=Enum.TextXAlignment.Left,ZIndex=32},status))

makeDraggable(menu, header)
makeResizable(menu, {minW=Cfg.UI.MinMenuW or 520, minH=Cfg.UI.MinMenuH or 420})

function openMenu()
    if Cfg.UI.AnimatedMenuOpen then
        local targetSize=menu.Size; local targetPos=menu.Position
        menu.Visible=true
        menu.Size=UDim2.fromOffset(640,480)
        menu.Position=UDim2.new(0.5,-320,0.5,-240)
        Tween:Create(menu,TweenInfo.new(0.32,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
            {Size=targetSize,Position=targetPos}):Play()
    else menu.Visible=true end
end
function closeMenu()
    if Cfg.UI.AnimatedMenuOpen and menu.Visible then
        local s=menu.Size; local p=menu.Position
        local t=Tween:Create(menu,TweenInfo.new(0.22,Enum.EasingStyle.Quart,Enum.EasingDirection.In),
            {Size=UDim2.fromOffset(640,480),Position=UDim2.new(0.5,-320,0.5,-240)})
        t:Play()
        t.Completed:Connect(function() menu.Visible=false; menu.Size=s; menu.Position=p end)
    else menu.Visible=false end
end

--======================== WIDGETS (v11 sizes restored) ========================
pages={}; tabs={}; widgets={}
toggleLabels={}
pendingKeybind=nil
refreshBindList=function() end
refreshHUD=function() end
refreshAutoDetectHUD=function() end
function resolveParent(p) if type(p)=="string" then return pages[p] end; return p end
function makeTab(id,title)
    local tab=tPanel2(new("TextButton",{Size=UDim2.new(1,0,0,30),
        BackgroundColor3=Theme.panel2,Text=title,Font=Enum.Font.GothamBold,
        TextSize=11,TextColor3=Theme.muted,AutoButtonColor=false,
        LayoutOrder=#rail:GetChildren(),ZIndex=32},rail))
    corner(tab,8); tStroke(stroke(tab,Theme.strokeSoft,1,0.5))
    tabs[id]=tab
    local page=new("ScrollingFrame",{Name="Page_"..id,Size=UDim2.fromScale(1,1),
        BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=4,
        ScrollBarImageColor3=Theme.accent,CanvasSize=UDim2.new(0,0,0,0),
        AutomaticCanvasSize=Enum.AutomaticSize.Y,Visible=false,ZIndex=32},content)
    new("UIListLayout",{Padding=UDim.new(0,7),SortOrder=Enum.SortOrder.LayoutOrder},page)
    new("UIPadding",{PaddingTop=UDim.new(0,12),PaddingLeft=UDim.new(0,12),
        PaddingRight=UDim.new(0,12),PaddingBottom=UDim.new(0,12)},page)
    pages[id]=page
    tab.MouseButton1Click:Connect(function()
        for _,p in pairs(pages) do p.Visible=false end
        page.Visible=true
        for _,t in pairs(tabs) do t.TextColor3=Theme.muted; t.BackgroundColor3=Theme.panel2 end
        tab.TextColor3=Color3.new(1,1,1); tab.BackgroundColor3=Theme.accent
        glowStroke(tab,Theme.accent2,0.4)
        shineSweep(tab,Color3.new(1,1,1),0.5)
        local targetY=tab.AbsolutePosition.Y-rail.AbsolutePosition.Y
        Tween:Create(tabIndicator,TweenInfo.new(0.32,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),
            {Position=UDim2.fromOffset(7,targetY)}):Play()
        ripple(tab,tab.AbsoluteSize.X/2,tab.AbsoluteSize.Y/2,Theme.accent2,20,0.5)
    end)
    tab.MouseEnter:Connect(function()
        if tab.BackgroundColor3~=Theme.accent then
            Tween:Create(tab,TweenInfo.new(0.15),{BackgroundColor3=Theme.panel3}):Play()
        end
    end)
    tab.MouseLeave:Connect(function()
        if tab.BackgroundColor3~=Theme.accent then
            Tween:Create(tab,TweenInfo.new(0.15),{BackgroundColor3=Theme.panel2}):Play()
        end
    end)
end
function section(pageId,title,icon)
    local page=resolveParent(pageId); if not page then return nil end
    local wrap=tPanel2(new("Frame",{Size=UDim2.new(1,0,0,28),
        BackgroundColor3=Theme.panel2,BackgroundTransparency=0.15,
        LayoutOrder=#page:GetChildren(),ZIndex=33},page))
    corner(wrap,7); tStroke(stroke(wrap,Theme.strokeSoft,1,0.5))
    local headerGrad=grad(wrap,Color3.fromRGB(52,110,185),Theme.panel2,0)
    new("Frame",{Size=UDim2.new(0,3,0.6,0),Position=UDim2.new(0,0,0.5,0),
        AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=Theme.accent,BorderSizePixel=0,ZIndex=35},wrap)
    new("TextLabel",{Size=UDim2.new(1,-14,1,0),Position=UDim2.fromOffset(12,0),
        BackgroundTransparency=1,Text=(icon and icon.."  " or "")..title,
        Font=Enum.Font.GothamBlack,TextSize=11,TextColor3=Theme.accent2,
        TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},wrap)
    if Cfg.UI.ShimmerHeaders then
        task.spawn(function()
            local phase=0
            while wrap.Parent do
                phase=(phase+0.02)%1
                headerGrad.Offset=Vector2.new(phase,0)
                RS.RenderStepped:Wait()
            end
        end)
    end
    return wrap
end
function collapsibleSection(pageId,title,defaultOpen)
    local page=resolveParent(pageId); if not page then return nil end
    local state=defaultOpen and true or false
    local hdr=tPanel2(new("TextButton",{Size=UDim2.new(1,0,0,28),
        BackgroundColor3=Theme.panel2,BackgroundTransparency=0.15,Text="",
        AutoButtonColor=false,LayoutOrder=#page:GetChildren(),ZIndex=33},page))
    corner(hdr,7); tStroke(stroke(hdr,Theme.strokeSoft,1,0.5))
    grad(hdr,Color3.fromRGB(52,110,185),Theme.panel2,0)
    local arrow=new("TextLabel",{Size=UDim2.fromOffset(18,28),Position=UDim2.fromOffset(8,0),
        BackgroundTransparency=1,Text=state and "▼" or "▶",Font=Enum.Font.GothamBold,
        TextSize=11,TextColor3=Theme.accent2,ZIndex=34},hdr)
    new("TextLabel",{Size=UDim2.new(1,-30,1,0),Position=UDim2.fromOffset(26,0),
        BackgroundTransparency=1,Text=title,Font=Enum.Font.GothamBlack,
        TextSize=11,TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},hdr)
    local holder=new("Frame",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,
        AutomaticSize=Enum.AutomaticSize.Y,LayoutOrder=#page:GetChildren(),ZIndex=33,Visible=state},page)
    new("UIListLayout",{Padding=UDim.new(0,7),SortOrder=Enum.SortOrder.LayoutOrder},holder)
    new("UIPadding",{PaddingLeft=UDim.new(0,4),PaddingRight=UDim.new(0,4)},holder)
    hdr.MouseButton1Click:Connect(function()
        state=not state; arrow.Text=state and "▼" or "▶"; holder.Visible=state
        glowStroke(hdr,Theme.accent2,0.3)
    end)
    return holder,hdr
end
function toggleRow(pageId,path,label,onChange)
    local page=resolveParent(pageId); if not page then return end
    toggleLabels[path]=label
    local state=getPath(Cfg,path)==true
    local row=tPanel(new("Frame",{Size=UDim2.new(1,0,0,32),BackgroundColor3=Theme.panel,
        BackgroundTransparency=0.15,LayoutOrder=#page:GetChildren(),ZIndex=33},page))
    corner(row,7); tStroke(stroke(row,Theme.strokeSoft,1,0.55))
    attachHoverStripe(row,Theme.accent); hoverGlow(row,Theme.accent)
    new("TextLabel",{Size=UDim2.new(1,-200,1,0),Position=UDim2.fromOffset(16,0),
        BackgroundTransparency=1,Text=label,Font=Enum.Font.Gotham,TextSize=12,
        TextColor3=Theme.text,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=36},row)
    local keyBtn=tPanel2(new("TextButton",{Size=UDim2.fromOffset(78,20),
        Position=UDim2.new(1,-126,0.5,-10),BackgroundColor3=Theme.panel2,
        Text="+ bind",Font=Enum.Font.GothamBold,TextSize=10,TextColor3=Theme.muted,
        AutoButtonColor=false,ZIndex=36},row))
    corner(keyBtn,5); tStroke(stroke(keyBtn,Theme.strokeSoft,1))
    local function refreshKeyBtn()
        local k=Cfg.Binds and Cfg.Binds[path]
        if k then keyBtn.Text=k.Name; keyBtn.TextColor3=Theme.accent2
        else keyBtn.Text="+ bind"; keyBtn.TextColor3=Theme.muted end
    end
    refreshKeyBtn()
    keyBtn.MouseButton1Click:Connect(function()
        pendingKeybind={path=path,btn=keyBtn,refresh=refreshKeyBtn}
        keyBtn.Text="press…"; keyBtn.TextColor3=Theme.danger
    end)
    local track=new("Frame",{Size=UDim2.fromOffset(44,22),
        Position=UDim2.new(1,-52,0.5,-11),
        BackgroundColor3=state and Theme.accent or Theme.panel2,BorderSizePixel=0,ZIndex=36},row)
    corner(track,11); tStroke(stroke(track,Theme.strokeSoft,1,0.4))
    local thumb=new("Frame",{Size=UDim2.fromOffset(16,16),
        Position=state and UDim2.new(1,-19,0.5,-8) or UDim2.new(0,3,0.5,-8),
        BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0,ZIndex=37},track)
    corner(thumb,8); tAccent(stroke(thumb,Theme.accent,1.4,0.2))
    local function render()
        if state then
            track.BackgroundColor3=Theme.accent
            thumb.Position=UDim2.new(1,-19,0.5,-8)
        else
            track.BackgroundColor3=Theme.panel2
            thumb.Position=UDim2.new(0,3,0.5,-8)
        end
    end
    local function set(v,fire)
        local nv=v and true or false
        local changed=nv~=state
        state=nv; setPath(Cfg,path,state); render()
        if path=="Troll.HumpEnabled" then
            if not state then
                local h=hum()
                if h then
                    h.PlatformStand=false; h.AutoRotate=true
                    pcall(function() h:ChangeState(Enum.HumanoidStateType.GettingUp) end)
                end
                TrollState.humpTargetPlayer=nil; TrollState.humpTargetCF=nil
                TrollState.humpWasActive=false
            end
            rebuildActionChips(); pcall(refreshAutoDetectHUD)
        end
        if fire~=false and onChange then pcall(onChange,state) end
        if changed then pcall(refreshBindList); pcall(refreshHUD); pcall(refreshAutoDetectHUD) end
    end
    widgets[path]={set=set,get=function() return state end,rerender=render,refreshKey=refreshKeyBtn,label=label}
    render()
    track.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
            set(not state); pulse(thumb,1.4,0.08)
            flash(track,state and Theme.danger or Theme.success,0.12)
            glowStroke(track,state and Theme.danger or Theme.success,0.4)
            ripple(track,22,11,state and Theme.danger or Theme.success,20,0.5)
        end
    end)
end
function sliderRow(pageId,path,label,mn,mx,dec,onChange)
    local page=resolveParent(pageId); if not page then return end
    local cur=getPath(Cfg,path)
    if type(cur)~="number" then cur=mn; setPath(Cfg,path,mn) end
    local row=tPanel(new("Frame",{Size=UDim2.new(1,0,0,42),BackgroundColor3=Theme.panel,
        BackgroundTransparency=0.15,LayoutOrder=#page:GetChildren(),ZIndex=33},page))
    corner(row,7); tStroke(stroke(row,Theme.strokeSoft,1,0.55))
    attachHoverStripe(row,Theme.accent); hoverGlow(row,Theme.accent)
    new("TextLabel",{Size=UDim2.new(1,-90,0,14),Position=UDim2.fromOffset(16,5),
        BackgroundTransparency=1,Text=label,Font=Enum.Font.Gotham,TextSize=12,
        TextColor3=Theme.text,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=36},row)
    local valLbl=new("TextLabel",{Size=UDim2.fromOffset(70,14),
        Position=UDim2.new(1,-80,0,5),BackgroundTransparency=1,
        Font=Enum.Font.GothamBold,TextSize=11,TextColor3=Theme.accent2,
        TextXAlignment=Enum.TextXAlignment.Right,ZIndex=36},row)
    local bar=tPanel2(new("Frame",{Size=UDim2.new(1,-24,0,6),
        Position=UDim2.fromOffset(12,27),BackgroundColor3=Theme.panel2,ZIndex=34},row))
    corner(bar,3); tStroke(stroke(bar,Theme.strokeSoft,1,0.5))
    local fill=new("Frame",{Size=UDim2.new(0,0,1,0),
        BackgroundColor3=Theme.accent,BorderSizePixel=0,ZIndex=35},bar)
    corner(fill,3); tAccent(fill); grad(fill,Theme.accent,Theme.accent3,0)
    local thumb=new("Frame",{Size=UDim2.fromOffset(14,14),
        Position=UDim2.new(0,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),
        BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0,ZIndex=36},bar)
    corner(thumb,7); tAccent(stroke(thumb,Theme.accent,1.5))
    local mult=10^dec
    local value=cur
    local function setValue(v,fire)
        value=v; setPath(Cfg,path,v)
        local a=math.clamp((v-mn)/(mx-mn),0,1)
        fill.Size=UDim2.new(a,0,1,0)
        thumb.Position=UDim2.new(a,0,0.5,0)
        valLbl.Text=string.format("%."..dec.."f",v)
        if fire~=false and onChange then pcall(onChange,v) end
    end
    widgets[path]={set=setValue,get=function() return value end}
    setValue(value,false)
    local drag=false
    local function fromX(px)
        local a=math.clamp((px-bar.AbsolutePosition.X)/math.max(bar.AbsoluteSize.X,1),0,1)
        setValue(math.floor((mn+(mx-mn)*a)*mult+0.5)/mult)
    end
    bar.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
            drag=true; fromX(i.Position.X)
            pulse(thumb,1.5,0.1)
            ripple(bar,bar.AbsoluteSize.X/2,2,Theme.accent,14,0.4)
        end
    end)
    UIS.InputChanged:Connect(function(i)
        if drag and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then fromX(i.Position.X) end
    end)
    UIS.InputEnded:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
            if drag then pulse(thumb,1.15,0.08) end
            drag=false
        end
    end)
end
function buttonRow(pageId,label,btnText,cb)
    local page=resolveParent(pageId); if not page then return end
    local row=tPanel(new("Frame",{Size=UDim2.new(1,0,0,32),BackgroundColor3=Theme.panel,
        BackgroundTransparency=0.15,LayoutOrder=#page:GetChildren(),ZIndex=33},page))
    corner(row,7); tStroke(stroke(row,Theme.strokeSoft,1,0.55))
    attachHoverStripe(row,Theme.accent); hoverGlow(row,Theme.accent)
    new("TextLabel",{Size=UDim2.new(1,-160,1,0),Position=UDim2.fromOffset(16,0),
        BackgroundTransparency=1,Text=label,Font=Enum.Font.Gotham,TextSize=12,
        TextColor3=Theme.text,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=36},row)
    local b=tPanel2(new("TextButton",{Size=UDim2.fromOffset(140,22),
        Position=UDim2.new(1,-150,0.5,-11),BackgroundColor3=Theme.panel2,
        Text=btnText,Font=Enum.Font.GothamBold,TextSize=10,TextColor3=Theme.accent2,
        AutoButtonColor=false,ZIndex=36},row))
    corner(b,6); tStroke(stroke(b,Theme.strokeSoft,1))
    b.MouseButton1Click:Connect(function()
        pulse(b,0.94,0.06); glowStroke(b,Theme.accent2,0.35)
        ripple(b,b.AbsoluteSize.X/2,b.AbsoluteSize.Y/2,Theme.accent,18,0.45)
        shineSweep(b,Theme.accent2,0.5); cb(b)
    end)
    b.MouseEnter:Connect(function()
        Tween:Create(b,TweenInfo.new(0.12),{BackgroundColor3=Theme.panel3}):Play()
    end)
    b.MouseLeave:Connect(function()
        Tween:Create(b,TweenInfo.new(0.15),{BackgroundColor3=Theme.panel2}):Play()
    end)
    return b
end
function textRow(pageId,label,placeholder,initial,onCommit)
    local page=resolveParent(pageId); if not page then return end
    local row=tPanel(new("Frame",{Size=UDim2.new(1,0,0,32),BackgroundColor3=Theme.panel,
        BackgroundTransparency=0.15,LayoutOrder=#page:GetChildren(),ZIndex=33},page))
    corner(row,7); tStroke(stroke(row,Theme.strokeSoft,1,0.55))
    new("TextLabel",{Size=UDim2.new(1,-180,1,0),Position=UDim2.fromOffset(16,0),
        BackgroundTransparency=1,Text=label,Font=Enum.Font.Gotham,TextSize=12,
        TextColor3=Theme.text,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=36},row)
    local tb=tPanel2(new("TextBox",{Size=UDim2.fromOffset(160,22),
        Position=UDim2.new(1,-168,0.5,-11),BackgroundColor3=Theme.panel2,
        Text=initial or "",PlaceholderText=placeholder or "",Font=Enum.Font.Gotham,
        TextSize=11,TextColor3=Theme.accent2,PlaceholderColor3=Theme.muted,
        ClearTextOnFocus=false,ZIndex=36},row))
    corner(tb,5); tStroke(stroke(tb,Theme.strokeSoft,1))
    tb.FocusLost:Connect(function() if onCommit then onCommit(tb.Text) end end)
    return tb
end
function cycleRow(pageId,path,label,options,onChange)
    local page=resolveParent(pageId); if not page then return end
    local row=tPanel(new("Frame",{Size=UDim2.new(1,0,0,32),BackgroundColor3=Theme.panel,
        BackgroundTransparency=0.15,LayoutOrder=#page:GetChildren(),ZIndex=33},page))
    corner(row,7); tStroke(stroke(row,Theme.strokeSoft,1,0.55))
    attachHoverStripe(row,Theme.accent); hoverGlow(row,Theme.accent)
    new("TextLabel",{Size=UDim2.new(1,-160,1,0),Position=UDim2.fromOffset(16,0),
        BackgroundTransparency=1,Text=label,Font=Enum.Font.Gotham,TextSize=12,
        TextColor3=Theme.text,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=36},row)
    local b=tPanel2(new("TextButton",{Size=UDim2.fromOffset(140,22),
        Position=UDim2.new(1,-150,0.5,-11),BackgroundColor3=Theme.panel2,
        Text=tostring(getPath(Cfg,path) or options[1]),Font=Enum.Font.GothamBold,
        TextSize=10,TextColor3=Theme.accent2,AutoButtonColor=false,ZIndex=36},row))
    corner(b,6); tStroke(stroke(b,Theme.strokeSoft,1))
    b.MouseButton1Click:Connect(function()
        local cur=getPath(Cfg,path); local idx=1
        for i,o in ipairs(options) do if o==cur then idx=i end end
        idx=idx%#options+1
        setPath(Cfg,path,options[idx]); b.Text=tostring(options[idx])
        pulse(b,0.94,0.06); glowStroke(b,Theme.accent2,0.35)
        ripple(b,b.AbsoluteSize.X/2,b.AbsoluteSize.Y/2,Theme.accent,18,0.4)
        if onChange then pcall(onChange,options[idx]) end
    end)
    widgets[path]={set=function(v) setPath(Cfg,path,v); b.Text=tostring(v) end,
        get=function() return getPath(Cfg,path) end}
    return b
end
function infoRow(pageId,label)
    local page=resolveParent(pageId); if not page then return nil end
    local row=tPanel2(new("Frame",{Size=UDim2.new(1,0,0,26),BackgroundColor3=Theme.panel2,
        BackgroundTransparency=0.2,LayoutOrder=#page:GetChildren(),ZIndex=33},page))
    corner(row,6); tStroke(stroke(row,Theme.strokeSoft,1,0.5))
    local lbl=new("TextLabel",{Size=UDim2.new(1,-10,1,0),Position=UDim2.fromOffset(12,0),
        BackgroundTransparency=1,Text=label or "",Font=Enum.Font.Code,TextSize=11,
        TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},row)
    return lbl
end
function legendRow(pageId,label,colour)
    local page=resolveParent(pageId); if not page then return end
    local row=tPanel(new("Frame",{Size=UDim2.new(1,0,0,28),BackgroundColor3=Theme.panel,
        BackgroundTransparency=0.15,LayoutOrder=#page:GetChildren(),ZIndex=33},page))
    corner(row,7); tStroke(stroke(row,Theme.strokeSoft,1,0.55))
    local sw=new("Frame",{Size=UDim2.fromOffset(28,16),Position=UDim2.fromOffset(14,6),
        BackgroundColor3=colour,BorderSizePixel=0,ZIndex=34},row)
    corner(sw,4); stroke(sw,colour,1,0)
    new("TextLabel",{Size=UDim2.new(1,-50,1,0),Position=UDim2.fromOffset(50,0),
        BackgroundTransparency=1,Text=label,Font=Enum.Font.GothamBold,
        TextSize=11,TextColor3=colour,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},row)
    return row
end

--======================== THEME / OPACITY ========================
function applyOpacity(op)
    op=math.clamp(tonumber(op) or 0,0,1)
    for _,d in ipairs(menu:GetDescendants()) do
        local anc,skip=d.Parent,false
        while anc and anc~=menu do
            if anc==snowLayer or anc==glassLayer or anc==ambientLayer or anc==bgGlow or anc==sakuraLayer then skip=true; break end
            anc=anc.Parent
        end
        if not skip then
            if d:IsA("Frame") or d:IsA("TextButton") or d:IsA("TextBox") or d:IsA("ScrollingFrame") then
                local base=d:GetAttribute("OpBase")
                if base==nil then base=d.BackgroundTransparency; d:SetAttribute("OpBase",base) end
                d.BackgroundTransparency=math.clamp(base+op*(1-base),0,1)
            elseif d:IsA("UIStroke") then
                local base=d:GetAttribute("OpBase")
                if base==nil then base=d.Transparency; d:SetAttribute("OpBase",base) end
                d.Transparency=math.clamp(base+op*0.9,0,1)
            end
        end
    end
end
function applyTheme()
    for _,d in ipairs(gui:GetDescendants()) do
        if d:GetAttribute("RA_Bg") and d:IsA("Frame") then d.BackgroundColor3=Theme.bg end
        if d:GetAttribute("RA_Panel") and (d:IsA("Frame") or d:IsA("ScrollingFrame")) then d.BackgroundColor3=Theme.panel end
        if d:GetAttribute("RA_Panel2") and (d:IsA("Frame") or d:IsA("TextBox")) then d.BackgroundColor3=Theme.panel2 end
        if d:GetAttribute("RA_Accent") then
            if d:IsA("UIStroke") then d.Color=Theme.accent
            elseif d:IsA("Frame") or d:IsA("TextButton") then d.BackgroundColor3=Theme.accent end
        end
        if d:GetAttribute("RA_Accent2") and d:IsA("TextLabel") then d.TextColor3=Theme.accent2 end
        if d:GetAttribute("RA_Text") and d:IsA("TextLabel") then d.TextColor3=Theme.text end
        if d:GetAttribute("RA_Muted") and d:IsA("TextLabel") then d.TextColor3=Theme.muted end
        if d:GetAttribute("RA_Stroke") and d:IsA("UIStroke") then d.Color=Theme.stroke end
    end
    tickerLabel.TextColor3=Theme.Ticker.color; tickerGlow.TextColor3=Theme.Ticker.color
    tickerStroke.Color=Theme.Ticker.color
    tickerLabel.Text=Theme.Ticker.text; tickerGlow.Text=Theme.Ticker.text
    tickerLabel.TextSize=Theme.Ticker.size; tickerGlow.TextSize=Theme.Ticker.size
    glassTint.BackgroundTransparency=Theme.Rain.tint
    for _,s in ipairs(snowflakes) do if s.inst then s.inst.BackgroundColor3=Theme.Snow.color end end
    for _,r in ipairs(rainTrails) do if r.head then r.head.BackgroundColor3=Theme.Rain.color end end
    for _,p in ipairs(ambientParts) do if p.inst then p.inst.BackgroundColor3=Theme.accent2 end end
    for _,t in pairs(widgets) do if t.rerender then pcall(t.rerender) end end
    pcall(refreshHUD)
end

--======================== HUD (v11 style) ========================
hudGui=new("ScreenGui",{Name="ReaperHUD",ResetOnSpawn=false,IgnoreGuiInset=true,
    ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=9998},playerGui)
hudFrame=tBg(new("Frame",{Name="HudRoot",Size=UDim2.fromOffset(220,40),
    Position=UDim2.new(0,20,0,200),BackgroundColor3=Theme.bg,
    BackgroundTransparency=0.15,BorderSizePixel=0,
    AutomaticSize=Enum.AutomaticSize.Y,Visible=false,ClipsDescendants=true},hudGui))
corner(hudFrame,8); tAccent(stroke(hudFrame,Theme.accent,1.5,0.3))
grad(hudFrame,Theme.panel,Theme.bg,90)
hudHeader=tPanel2(new("Frame",{Size=UDim2.new(1,0,0,24),
    BackgroundColor3=Theme.panel2,BackgroundTransparency=0.1,BorderSizePixel=0},hudFrame))
corner(hudHeader,8)
grad(hudHeader,Color3.fromRGB(25,55,100),Color3.fromRGB(8,12,24),90)
tAccent2(new("TextLabel",{Size=UDim2.new(1,-46,1,0),Position=UDim2.fromOffset(10,0),
    BackgroundTransparency=1,Text="⚡ KEYBINDS",Font=Enum.Font.GothamBlack,
    TextSize=11,TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left},hudHeader))
hudHideBtn=new("TextButton",{Size=UDim2.fromOffset(18,18),
    Position=UDim2.new(1,-22,0,3),BackgroundColor3=Theme.danger,Text="−",
    Font=Enum.Font.GothamBold,TextSize=12,TextColor3=Color3.new(1,1,1),AutoButtonColor=false},hudHeader)
corner(hudHideBtn,4)
hudList=new("Frame",{Size=UDim2.new(1,0,0,0),Position=UDim2.new(0,0,0,24),
    BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.Y},hudFrame)
new("UIListLayout",{Padding=UDim.new(0,2),SortOrder=Enum.SortOrder.LayoutOrder},hudList)
new("UIPadding",{PaddingTop=UDim.new(0,4),PaddingBottom=UDim.new(0,4),
    PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,6)},hudList)
hudHideBtn.MouseButton1Click:Connect(function() Cfg.UI.HUD=false; pcall(refreshHUD) end)
hudEmpty=tMuted(new("TextLabel",{Size=UDim2.new(1,0,0,18),
    BackgroundTransparency=1,Text="no binds yet",Font=Enum.Font.Gotham,
    TextSize=10,TextColor3=Theme.muted,LayoutOrder=1},hudList))
if Cfg.UI.HUDMovable then makeDraggable(hudFrame,hudHeader) end
if Cfg.UI.HUDResizable then
    makeResizable(hudFrame,{minW=180,minH=80,corners={"br","bl","tr"},
        onResize=function(w,h) hudFrame.AutomaticSize=Enum.AutomaticSize.None; hudFrame.Size=UDim2.fromOffset(w,h) end})
end
refreshHUD=function()
    hudFrame.Visible=Cfg.UI.HUD and true or false
    for _,c in ipairs(hudList:GetChildren()) do
        if not c:IsA("UIListLayout") and c~=hudEmpty then c:Destroy() end
    end
    local keys={}
    for path,k in pairs(Cfg.Binds or {}) do
        if k and widgets[path] then keys[#keys+1]={path=path,key=k} end
    end
    table.sort(keys,function(a,b) return a.path<b.path end)
    if #keys==0 then hudEmpty.Visible=true; return end
    hudEmpty.Visible=false
    for i,entry in ipairs(keys) do
        local on=widgets[entry.path].get()
        local row=new("Frame",{Size=UDim2.new(1,0,0,20),
            BackgroundColor3=on and Theme.panel2 or Theme.panel,
            BackgroundTransparency=0.3,BorderSizePixel=0,LayoutOrder=i},hudList)
        corner(row,4); stroke(row,on and Theme.success or Theme.stroke,1,0.4)
        new("Frame",{Size=UDim2.fromOffset(7,7),Position=UDim2.new(0,4,0.5,-3.5),
            BackgroundColor3=on and Theme.success or Theme.muted,BorderSizePixel=0},row)
        new("TextLabel",{Size=UDim2.new(1,-75,1,0),Position=UDim2.fromOffset(16,0),
            BackgroundTransparency=1,Text=toggleLabels[entry.path] or entry.path,
            Font=Enum.Font.Gotham,TextSize=10,
            TextColor3=on and Theme.success or Theme.muted,
            TextXAlignment=Enum.TextXAlignment.Left},row)
        new("TextLabel",{Size=UDim2.fromOffset(60,20),Position=UDim2.new(1,-62,0,0),
            BackgroundTransparency=1,Text="["..entry.key.Name.."]",
            Font=Enum.Font.GothamBold,TextSize=10,
            TextColor3=on and Theme.accent2 or Theme.muted,
            TextXAlignment=Enum.TextXAlignment.Right},row)
    end
end

--======================== AUTO-DETECT HUD ========================
adGui=new("ScreenGui",{Name="ReaperAutoDetect",ResetOnSpawn=false,
    IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=9997},playerGui)
adFrame=tBg(new("Frame",{Name="AdRoot",Size=UDim2.fromOffset(260,40),
    Position=UDim2.new(0,20,0,260),BackgroundColor3=Theme.bg,
    BackgroundTransparency=0.15,BorderSizePixel=0,
    AutomaticSize=Enum.AutomaticSize.Y,Visible=false,ClipsDescendants=true},adGui))
corner(adFrame,8); tAccent(stroke(adFrame,Theme.accent,1.5,0.3))
grad(adFrame,Theme.panel,Theme.bg,90)
adHeader=tPanel2(new("Frame",{Size=UDim2.new(1,0,0,24),
    BackgroundColor3=Theme.panel2,BackgroundTransparency=0.1,BorderSizePixel=0},adFrame))
corner(adHeader,8)
grad(adHeader,Color3.fromRGB(25,55,100),Color3.fromRGB(8,12,24),90)
tAccent2(new("TextLabel",{Size=UDim2.new(1,-70,1,0),Position=UDim2.fromOffset(10,0),
    BackgroundTransparency=1,Text="⚙ AUTO-DETECT",Font=Enum.Font.GothamBlack,
    TextSize=11,TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left},adHeader))
adHideBtn=new("TextButton",{Size=UDim2.fromOffset(18,18),
    Position=UDim2.new(1,-22,0,3),BackgroundColor3=Theme.danger,Text="−",
    Font=Enum.Font.GothamBold,TextSize=12,TextColor3=Color3.new(1,1,1),AutoButtonColor=false},adHeader)
corner(adHideBtn,4)
adBody=new("Frame",{Size=UDim2.new(1,0,0,0),Position=UDim2.new(0,0,0,24),
    BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.Y},adFrame)
new("UIListLayout",{Padding=UDim.new(0,3),SortOrder=Enum.SortOrder.LayoutOrder},adBody)
new("UIPadding",{PaddingTop=UDim.new(0,5),PaddingBottom=UDim.new(0,5),
    PaddingLeft=UDim.new(0,8),PaddingRight=UDim.new(0,8)},adBody)
adRows={}
function adRow(key,label,col)
    local row=new("Frame",{Size=UDim2.new(1,0,0,16),BackgroundTransparency=1,LayoutOrder=#adBody:GetChildren()},adBody)
    new("TextLabel",{Size=UDim2.new(0,110,1,0),BackgroundTransparency=1,Text=label,
        Font=Enum.Font.GothamBold,TextSize=10,TextColor3=Theme.muted,
        TextXAlignment=Enum.TextXAlignment.Left},row)
    local val=new("TextLabel",{Size=UDim2.new(1,-114,1,0),Position=UDim2.fromOffset(114,0),
        BackgroundTransparency=1,Text="—",Font=Enum.Font.Code,TextSize=10,
        TextColor3=col or Theme.accent2,TextXAlignment=Enum.TextXAlignment.Right},row)
    adRows[key]=val; return val
end
adRow("Target","Target:",Theme.accent2); adRow("Speed","Speed:",Theme.accent2)
adRow("Tier","Tier:",Theme.success); adRow("Air","Airborne:",Theme.accent2)
adRow("TP","Teleporting:",Theme.accent2); adRow("Void","Under Map:",Theme.danger)
adRow("Respawn","Respawn:",Theme.danger); adRow("GoodY","Safe Y:",Theme.muted)
adRow("Mode","Mode:",Theme.success)
if Cfg.UI.ADMovable then makeDraggable(adFrame,adHeader) end
if Cfg.UI.ADResizable then
    makeResizable(adFrame,{minW=200,minH=100,corners={"br","bl","tr"},
        onResize=function(w,h) adFrame.AutomaticSize=Enum.AutomaticSize.None; adFrame.Size=UDim2.fromOffset(w,h) end})
end
adHideBtn.MouseButton1Click:Connect(function() Cfg.UI.AutoDetectHUD=false; pcall(refreshAutoDetectHUD) end)
refreshAutoDetectHUD=function()
    local want=Cfg.UI.AutoDetectHUD and Cfg.Troll.HumpEnabled and Cfg.Troll.HumpAutoDetect
    adFrame.Visible=want and true or false
    if not want then return end
    local t=TrollState.targetedPlayer
    adRows.Target.Text=t and t.Name or "—"
    adRows.Speed.Text=string.format("%d",math.floor(HumpRuntime.speedSmoothed))
    adRows.Tier.Text=HumpRuntime.tier
    adRows.Air.Text=HumpRuntime.airborne and "yes" or "no"
    adRows.TP.Text=HumpRuntime.teleporting and "yes" or "no"
    adRows.Void.Text=HumpRuntime.fallingUnderMap and "YES" or "no"
    adRows.Respawn.Text=HumpRuntime.respawnPending and "YES" or "no"
    adRows.GoodY.Text=HumpRuntime.lastGoodPos and string.format("%d",math.floor(HumpRuntime.lastGoodPos.Y)) or "—"
    adRows.Mode.Text=HumpRuntime.autoMode
end

RS.Heartbeat:Connect(function(dt)
    pcall(function()
        if not (Cfg.UI.AutoDetectHUD and Cfg.Troll.HumpAutoDetect) then return end
        local t=TrollState.targetedPlayer or getTargetPlayer()
        if not t or not t.Character then return end
        local tR=t.Character:FindFirstChild("HumanoidRootPart")
        local tH=t.Character:FindFirstChildOfClass("Humanoid")
        if not tR or not tH then return end
        local vel=tR.AssemblyLinearVelocity
        local speed=vel.Magnitude
        HumpRuntime.speed=speed
        HumpRuntime.speedSmoothed=HumpRuntime.speedSmoothed+(speed-HumpRuntime.speedSmoothed)*math.min(dt*6,1)
        if tH.FloorMaterial==Enum.Material.Air or vel.Y>5 then
            HumpRuntime.airborneTimer=0.2
        else
            HumpRuntime.airborneTimer=math.max(0,HumpRuntime.airborneTimer-dt)
        end
        HumpRuntime.airborne=HumpRuntime.airborneTimer>0
        local s=HumpRuntime.speedSmoothed
        local tier
        if s<3 then tier="STILL"
        elseif s<25 then tier="WALK"
        elseif s<60 then tier="RUN"
        elseif s<150 then tier="FAST"
        else tier="EXTREME" end
        HumpRuntime.tier=tier
        if Cfg.Troll.HumpEnabled then
            local dS=math.clamp(s*0.25+6,4,40)
            local dA=math.clamp(s*0.02+1.0,0.8,4.0)
            local dD=math.clamp(1.6+s*0.005,1.2,3.5)
            Cfg.Troll.HumpSpeed=Cfg.Troll.HumpSpeed+(dS-Cfg.Troll.HumpSpeed)*math.min(dt*2,1)
            Cfg.Troll.HumpAmplitude=Cfg.Troll.HumpAmplitude+(dA-Cfg.Troll.HumpAmplitude)*math.min(dt*2,1)
            Cfg.Troll.HumpDistance=Cfg.Troll.HumpDistance+(dD-Cfg.Troll.HumpDistance)*math.min(dt*2,1)
            HumpRuntime.autoMode=tier=="STILL" and "Close" or (tier=="EXTREME" and "Catch" or "Hybrid")
        end
        if refreshAutoDetectHUD then pcall(refreshAutoDetectHUD) end
    end)
end)

--======================== TABS ========================
tabOrder={"home","combat","visual","move","world","players","troll","util","controller","save","theme"}
tabTitles={home="HOME",combat="COMBAT",visual="VISUAL",move="MOVE",world="WORLD",
    players="PLAYERS",troll="TROLL",util="UTIL",controller="CTRL",save="SAVE",theme="THEME"}
for _,id in ipairs(tabOrder) do makeTab(id,tabTitles[id]) end

--====================== HOME ======================
do
    local pg="home"
    section(pg,"PROFILE","👤")
    buttonRow(pg,"Rejoin","REJOIN",function() Teleport:Teleport(game.PlaceId,LP) end)
    buttonRow(pg,"Reset Character","RESET",function() local h=hum(); if h then h.Health=0 end end)
    section(pg,"REAPER LIVE CHAT","💬")
    local chatHolder=tPanel(new("Frame",{Size=UDim2.new(1,0,0,260),
        BackgroundColor3=Theme.panel,BackgroundTransparency=0.1,
        LayoutOrder=#pages[pg]:GetChildren(),ZIndex=33},pages[pg]))
    corner(chatHolder,8); tStroke(stroke(chatHolder,Theme.strokeSoft,1,0.4))
    local chatScroll=new("ScrollingFrame",{Size=UDim2.new(1,-8,1,-100),
        Position=UDim2.fromOffset(4,4),BackgroundTransparency=1,BorderSizePixel=0,
        ScrollBarThickness=3,ScrollBarImageColor3=Theme.accent,
        CanvasSize=UDim2.new(0,0,0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,ZIndex=34},chatHolder)
    new("UIListLayout",{Padding=UDim.new(0,2),SortOrder=Enum.SortOrder.LayoutOrder},chatScroll)
    new("UIPadding",{PaddingTop=UDim.new(0,4),PaddingBottom=UDim.new(0,4),
        PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,6)},chatScroll)
    local userFooter=tPanel2(new("Frame",{Size=UDim2.new(1,-8,0,20),
        Position=UDim2.new(0,4,1,-74),
        BackgroundColor3=Theme.panel2,BorderSizePixel=0,ZIndex=34},chatHolder))
    corner(userFooter,5); tStroke(stroke(userFooter,Theme.strokeSoft,1))
    local liveDot=new("Frame",{Size=UDim2.fromOffset(7,7),Position=UDim2.new(0,8,0.5,-3.5),
        BackgroundColor3=Theme.success,BorderSizePixel=0,ZIndex=35},userFooter)
    corner(liveDot,4)
    local userLbl=new("TextLabel",{Size=UDim2.new(1,-30,1,0),Position=UDim2.fromOffset(20,0),
        BackgroundTransparency=1,Text="● 1 script user live",
        Font=Enum.Font.GothamBold,TextSize=10,TextColor3=Theme.success,
        TextXAlignment=Enum.TextXAlignment.Left,ZIndex=35},userFooter)
    task.spawn(function()
        while userFooter.Parent do
            local n=ScriptUsers.count()
            userLbl.Text=string.format("● %d script user%s live",n,n==1 and "" or "s")
            liveDot.BackgroundTransparency=0.3+math.sin(tick()*3)*0.3
            ScriptUsers.refresh()
            task.wait(1)
        end
    end)
    local chatInputBar=tPanel2(new("Frame",{Size=UDim2.new(1,-8,0,26),
        Position=UDim2.new(0,4,1,-48),BackgroundColor3=Theme.panel2,BorderSizePixel=0,ZIndex=34},chatHolder))
    corner(chatInputBar,6); tStroke(stroke(chatInputBar,Theme.strokeSoft,1))
    new("UIPadding",{PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,6)},chatInputBar)
    local chatInput=new("TextBox",{Size=UDim2.new(1,-64,1,0),BackgroundTransparency=1,
        PlaceholderText="message REAPER chat…",PlaceholderColor3=Theme.muted,
        Font=Enum.Font.Gotham,TextSize=11,TextColor3=Theme.text,Text="",
        ClearTextOnFocus=false,ZIndex=35},chatInputBar)
    local chatSendBtn=new("TextButton",{Size=UDim2.fromOffset(56,20),
        Position=UDim2.new(1,-58,0.5,-10),BackgroundColor3=Theme.accent,Text="SEND",
        Font=Enum.Font.GothamBold,TextSize=10,TextColor3=Color3.new(1,1,1),
        AutoButtonColor=false,ZIndex=35},chatInputBar)
    corner(chatSendBtn,4)
    local function addChatRow(entry)
        if not chatScroll.Parent then return end
        local row=new("Frame",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,
            AutomaticSize=Enum.AutomaticSize.Y,LayoutOrder=(#chatScroll:GetChildren())+1,ZIndex=35},chatScroll)
        local lbl=new("TextLabel",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,
            TextWrapped=true,AutomaticSize=Enum.AutomaticSize.Y,Font=Enum.Font.Gotham,
            TextSize=11,TextColor3=Theme.text,RichText=true,
            TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,ZIndex=36},row)
        local hex=entry.colour:ToHex()
        local timeStr=os.date("%H:%M",math.floor(entry.time))
        lbl.Text=string.format('<font color="#8FA6BE">[%s]</font> <font color="#%s"><b>%s</b></font> <font color="#8FA6BE">:</font> %s',
            timeStr,hex,entry.sender,entry.text)
        task.defer(function() chatScroll.CanvasPosition=Vector2.new(0,math.max(0,chatScroll.AbsoluteCanvasSize.Y)) end)
    end
    table.insert(AllChat.listeners,addChatRow)
    for _,m in ipairs(AllChat.messages) do addChatRow(m) end
    local function trySend()
        local txt=chatInput.Text or ""
        if txt:gsub("%s","")=="" then return end
        chatInput.Text=""; chatSend(txt)
    end
    chatSendBtn.MouseButton1Click:Connect(trySend)
    chatInput.FocusLost:Connect(function(enter) if enter then trySend() end end)
end

--====================== COMBAT ======================
do
    local pg="combat"
    section(pg,"AIMBOT","🎯")
    toggleRow(pg,"Aimbot.Enabled","Aimbot Enabled")
    buttonRow(pg,"Aim Key",Cfg.Aimbot.Key.Name,function(b)
        pendingKeybind={path="Aimbot.Key",rawPath=true,btn=b}; b.Text="press…"
    end)
    toggleRow(pg,"Aimbot.ToggleMode","Toggle Mode")
    toggleRow(pg,"Aimbot.Humanize","Humanize Aim")
    sliderRow(pg,"Aimbot.FOV","Aimbot FOV",10,800,0)
    sliderRow(pg,"Aimbot.MaxDistance","Max Distance",50,5000,0)
    sliderRow(pg,"Aimbot.Smoothness","Smoothness",1,20,0)
    sliderRow(pg,"Aimbot.Strength","Strength",1,10,1)
    buttonRow(pg,"Target Part",Cfg.Aimbot.TargetPart,function(b)
        local parts={"Head","UpperTorso","HumanoidRootPart","LowerTorso"}
        local idx=1
        for i,p in ipairs(parts) do if p==Cfg.Aimbot.TargetPart then idx=i end end
        idx=idx%#parts+1; Cfg.Aimbot.TargetPart=parts[idx]; b.Text=parts[idx]
    end)
    toggleRow(pg,"Aimbot.TeamCheck","Team Check")
    toggleRow(pg,"Aimbot.VisibleOnly","Visible Only")
    toggleRow(pg,"Aimbot.ShowFOVCircle","Show FOV Circle")
    section(pg,"TRIGGERBOT","⚡")
    toggleRow(pg,"Trigger.Enabled","Triggerbot")
    buttonRow(pg,"Trigger Key",Cfg.Trigger.Key.Name,function(b)
        pendingKeybind={path="Trigger.Key",rawPath=true,btn=b}; b.Text="press…"
    end)
    sliderRow(pg,"Trigger.Radius","Trigger Radius",0,100,0)
    sliderRow(pg,"Trigger.Delay","Trigger Delay",0.01,0.5,2)
    section(pg,"RETICLE ACTIONS","🎯")
    local actionInfo=infoRow(pg,"")
    local function refreshActionInfo()
        local k=ReticleActions.keys
        actionInfo.Text=string.format("TP [%s]  SPEC [%s]  HUMP [%s]",
            k.teleport and k.teleport.Name or "—",
            k.spectate and k.spectate.Name or "—",
            k.hump and k.hump.Name or "—")
    end
    refreshActionInfo()
    buttonRow(pg,"Rebind Action Keys","REDETECT",function()
        local unbound=getUnboundKeys(3)
        ReticleActions.keys.teleport=unbound[1]
        ReticleActions.keys.spectate=unbound[2]
        ReticleActions.keys.hump=unbound[3]
        rebuildActionChips(); refreshActionInfo()
        notify("Rebound","Updated.",Theme.accent)
    end)
end

--====================== VISUAL ======================
do
    local pg="visual"
    section(pg,"ESP","👁")
    toggleRow(pg,"Visuals.Enabled","ESP Enabled")
    cycleRow(pg,"Visuals.ESPMode","ESP Mode",{"Team","DOW","PCP","Role","Auto","Rainbow"})
    toggleRow(pg,"Visuals.NameTags","Name Tags")
    toggleRow(pg,"Visuals.Distance","Distance")
    toggleRow(pg,"Visuals.ShowRoleLabel","Show Role Label")
    sliderRow(pg,"Visuals.FillTransparency","ESP Transparency",0,1,2)
    sliderRow(pg,"Visuals.RainbowSpeed","Rainbow Speed",0.1,3,1)
    section(pg,"ZOOM","🔍")
    toggleRow(pg,"Visuals.InfZoom","Infinite Zoom")
    sliderRow(pg,"Visuals.FOVMin","Min FOV",0.5,30,1)
    sliderRow(pg,"Visuals.FOVMax","Max FOV",60,400,0)
    section(pg,"COLOR LEGEND","🎨")
    legendRow(pg,"DOW :: United Front",ESP.UnitedFront)
    legendRow(pg,"DOW :: Iron Legion",ESP.IronLegion)
    legendRow(pg,"TEAM :: Blue (ally)",ESP.TeamBlue)
    legendRow(pg,"TEAM :: Red (enemy)",ESP.EnemyRed)
    legendRow(pg,"PCP :: Police",ESP.Police)
    legendRow(pg,"PCP :: Criminal",ESP.Criminal)
    legendRow(pg,"PCP :: Prisoner",ESP.Prisoner)
    section(pg,"SELF","🧍")
    toggleRow(pg,"Visuals.CharTransparency","Invisible Character")
    sliderRow(pg,"Visuals.CharTransparencyValue","Invisibility Amount",0,1,2)
    toggleRow(pg,"Visuals.NoFog","No Fog")
    section(pg,"TARGETS","🎯")
    sliderRow(pg,"Visuals.HitboxSize","Hitbox Size",1,10,1)
    toggleRow(pg,"Visuals.RemoveAccessories","Remove Accessories")
    toggleRow(pg,"Visuals.RemoveTextures","Remove Textures")
end

--====================== MOVE ======================
do
    local pg="move"
    section(pg,"CORE","🏃")
    toggleRow(pg,"Movement.Noclip","Noclip")
    toggleRow(pg,"Movement.SpeedEnabled","Speed Hack")
    sliderRow(pg,"Movement.Speed","Walk Speed",16,500,0)
    toggleRow(pg,"Movement.JumpEnabled","Jump Power")
    sliderRow(pg,"Movement.JumpPower","Jump Power Value",50,800,0)
    toggleRow(pg,"Movement.InfiniteJump","Infinite Jump")
    toggleRow(pg,"Movement.CFrameSpeed","CFrame Speed")
    sliderRow(pg,"Movement.CFrameSpeedValue","CFrame Speed (studs)",5,100,0)
    section(pg,"FLIGHT","✈")
    toggleRow(pg,"Movement.Fly","Fly")
    toggleRow(pg,"Movement.FlyNoTunnel","Anti Tunnel")
    sliderRow(pg,"Movement.FlySpeed","Fly Speed",10,500,0)
    sliderRow(pg,"Movement.FlySmooth","Fly Smoothness",1,40,0)
    sliderRow(pg,"Movement.FlyBoostMult","Fly Boost Mult",1,6,1)
    toggleRow(pg,"Movement.GodMode","God Mode")
    section(pg,"EXTRAS","⭐")
    toggleRow(pg,"Movement.SprintEnabled","Sprint")
    sliderRow(pg,"Movement.SprintSpeed","Sprint Speed",16,300,0)
    toggleRow(pg,"Movement.Bunnyhop","Bunnyhop")
    toggleRow(pg,"Movement.WallClimb","Wall Climb")
    toggleRow(pg,"Movement.Glide","Glide")
    sliderRow(pg,"Movement.GlideSpeed","Glide Fall Speed",1,40,0)
    section(pg,"FREECAM","🎥")
    toggleRow(pg,"Movement.Freecam","Freecam")
    sliderRow(pg,"Movement.FreecamSpeed","Freecam Speed",10,400,0)
    sliderRow(pg,"Movement.FreecamSens","Freecam Sens",0.1,5,1)
    section(pg,"MISC","🔧")
    toggleRow(pg,"Movement.Spinbot","Spinbot")
    toggleRow(pg,"Movement.AntiFling","Anti-Fling")
    toggleRow(pg,"Movement.AntiAFK","Anti-AFK")
end

--====================== WORLD ======================
do
    local pg="world"
    section(pg,"LIGHTING","💡")
    toggleRow(pg,"World.Fullbright","Fullbright")
    toggleRow(pg,"World.TimeEnabled","Time Changer")
    sliderRow(pg,"World.Time","Time of Day",0,24,1)
    toggleRow(pg,"World.RemoveBlur","Remove Blur")
    toggleRow(pg,"World.RemoveSunRays","Remove Sun Rays")
    section(pg,"CAMERA","📷")
    toggleRow(pg,"World.FOVEnabled","FOV Changer")
    sliderRow(pg,"World.FieldOfView","Camera FOV",40,140,0)
    section(pg,"PHYSICS","🌀")
    toggleRow(pg,"World.GravityEnabled","Gravity Control")
    sliderRow(pg,"World.Gravity","Gravity",0,500,0)
end

--====================== PLAYERS ======================
do
    local pg="players"
    section(pg,"PLAYER LIST","👥")
    local container=new("Frame",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,
        LayoutOrder=#pages[pg]:GetChildren(),AutomaticSize=Enum.AutomaticSize.Y,ZIndex=33},pages[pg])
    new("UIListLayout",{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder},container)
    local function refresh()
        for _,c in ipairs(container:GetChildren()) do if not c:IsA("UIListLayout") then c:Destroy() end end
        for _,plr in ipairs(Players:GetPlayers()) do
            if plr~=LP then
                local row=tPanel(new("Frame",{Size=UDim2.new(1,0,0,34),
                    BackgroundColor3=Theme.panel,BackgroundTransparency=0.15,ZIndex=33},container))
                corner(row,6); tStroke(stroke(row,Theme.strokeSoft,1,0.55))
                local espCol=getESPColourFor(plr); local roleLbl=getRoleLabelFor(plr)
                new("TextLabel",{Text=plr.Name.." "..roleLbl,Font=Enum.Font.GothamBold,
                    TextSize=12,TextColor3=espCol,BackgroundTransparency=1,
                    Position=UDim2.fromOffset(16,0),Size=UDim2.new(0.55,0,1,0),
                    TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},row)
                local fb=new("TextButton",{Text="FLING",Font=Enum.Font.GothamBold,
                    TextSize=10,BackgroundColor3=Theme.panel2,TextColor3=Theme.danger,
                    Size=UDim2.fromOffset(54,22),Position=UDim2.new(1,-110,0.5,-11),ZIndex=34},row)
                corner(fb,5); tStroke(stroke(fb,Theme.strokeSoft,1))
                fb.MouseButton1Click:Connect(function() pulse(fb,0.94,0.06); flingPlayer(plr) end)
                local tb=new("TextButton",{Text="TP",Font=Enum.Font.GothamBold,
                    TextSize=11,BackgroundColor3=Theme.panel2,TextColor3=Theme.accent2,
                    Size=UDim2.fromOffset(48,22),Position=UDim2.new(1,-52,0.5,-11),ZIndex=34},row)
                corner(tb,5); tStroke(stroke(tb,Theme.strokeSoft,1))
                tb.MouseButton1Click:Connect(function()
                    pulse(tb,0.94,0.06)
                    local tHrp=plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
                    local meHrp=hrp()
                    if tHrp and meHrp then
                        meHrp.AssemblyLinearVelocity=Vector3.zero
                        meHrp.CFrame=tHrp.CFrame+Vector3.new(0,3,0)
                        meHrp.AssemblyLinearVelocity=Vector3.zero
                    end
                end)
            end
        end
    end
    refresh()
    buttonRow(pg,"Refresh List","REFRESH",refresh)
    Players.PlayerAdded:Connect(function() task.wait(0.5) refresh() end)
    Players.PlayerRemoving:Connect(function() task.wait(0.5) refresh() end)
end

--====================== TROLL ======================
do
    local pg="troll"
    section(pg,"TARGET PLAYER","🎯")
    local targetBar=tPanel2(new("Frame",{Size=UDim2.new(1,0,0,32),
        BackgroundColor3=Theme.panel2,BackgroundTransparency=0.15,
        LayoutOrder=#pages[pg]:GetChildren(),ZIndex=33},pages[pg]))
    corner(targetBar,7); tStroke(stroke(targetBar,Theme.strokeSoft,1,0.55))
    local targetLbl=new("TextLabel",{Size=UDim2.new(1,-90,1,0),Position=UDim2.fromOffset(14,0),
        BackgroundTransparency=1,Text="Target: Nearest",Font=Enum.Font.GothamBold,
        TextSize=12,TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},targetBar)
    local clearBtn=new("TextButton",{Size=UDim2.fromOffset(70,22),
        Position=UDim2.new(1,-78,0.5,-11),BackgroundColor3=Theme.panel,Text="CLEAR",
        Font=Enum.Font.GothamBold,TextSize=10,TextColor3=Theme.danger,
        AutoButtonColor=false,ZIndex=34},targetBar)
    corner(clearBtn,5); tStroke(stroke(clearBtn,Theme.strokeSoft,1))
    clearBtn.MouseButton1Click:Connect(function()
        TrollState.targetedPlayer=nil
        TrollState.humpTargetCF=nil; TrollState.humpTargetPlayer=nil
        targetLbl.Text="Target: Nearest"
    end)
    toggleRow(pg,"Troll.TapTarget","Tap to Target")
    sliderRow(pg,"Troll.TapTargetRadius","Crosshair Radius",5,200,0)
    local targetList=new("Frame",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,
        LayoutOrder=#pages[pg]:GetChildren(),AutomaticSize=Enum.AutomaticSize.Y,ZIndex=33},pages[pg])
    new("UIListLayout",{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder},targetList)
    local function rebuildTargetList()
        for _,c in ipairs(targetList:GetChildren()) do if not c:IsA("UIListLayout") then c:Destroy() end end
        for i,plr in ipairs(Players:GetPlayers()) do
            if plr~=LP then
                local isCurrent=(TrollState.targetedPlayer==plr)
                local row=tPanel(new("Frame",{Size=UDim2.new(1,0,0,30),
                    BackgroundColor3=isCurrent and Theme.panel2 or Theme.panel,
                    BackgroundTransparency=isCurrent and 0 or 0.15,
                    LayoutOrder=i,ZIndex=33},targetList))
                corner(row,6)
                tStroke(stroke(row,isCurrent and Theme.success or Theme.strokeSoft,
                    isCurrent and 1.4 or 1,isCurrent and 0 or 0.55))
                local espCol=getESPColourFor(plr); local roleLbl=getRoleLabelFor(plr)
                new("TextLabel",{Size=UDim2.new(1,-96,1,0),Position=UDim2.fromOffset(16,0),
                    BackgroundTransparency=1,
                    Text=(isCurrent and "● " or "○ ")..plr.Name.." "..roleLbl,
                    Font=Enum.Font.GothamBold,TextSize=11,
                    TextColor3=isCurrent and Theme.success or espCol,
                    TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},row)
                local sb=new("TextButton",{Size=UDim2.fromOffset(78,20),
                    Position=UDim2.new(1,-86,0.5,-10),
                    BackgroundColor3=isCurrent and Theme.success or Theme.panel2,
                    Text=isCurrent and "TARGETED" or "TARGET",
                    Font=Enum.Font.GothamBold,TextSize=9,
                    TextColor3=isCurrent and Color3.new(0,0,0) or Theme.accent2,
                    AutoButtonColor=false,ZIndex=34},row)
                corner(sb,4); tStroke(stroke(sb,Theme.strokeSoft,1))
                sb.MouseButton1Click:Connect(function()
                    TrollState.targetedPlayer=plr
                    TrollState.humpTargetCF=nil; TrollState.humpTargetPlayer=nil
                    targetLbl.Text="Target: "..plr.Name
                    showTargetAlert("Targeting: "..plr.Name)
                    rebuildTargetList()
                end)
            end
        end
    end
    rebuildTargetList()
    buttonRow(pg,"Refresh Player List","REFRESH",rebuildTargetList)
    section(pg,"FOLLOW","👣")
    toggleRow(pg,"Troll.FollowTarget","Follow Target")
    sliderRow(pg,"Troll.FollowSpeed","Follow Speed",10,300,0)
    local humpBox=collapsibleSection(pg,"HUMP ENGINE",false)
    toggleRow(humpBox,"Troll.HumpEnabled","HUMP Target")
    toggleRow(humpBox,"Troll.HumpAutoDetect","Auto-Detect & Adaptive Hump")
    toggleRow(humpBox,"UI.AutoDetectHUD","Show Auto-Detect HUD (J)")
    sliderRow(humpBox,"Troll.HumpSpeed","Hump Speed",1,30,0)
    sliderRow(humpBox,"Troll.HumpAmplitude","Hump Amplitude",0.3,4,2)
    sliderRow(humpBox,"Troll.HumpDistance","Stand Behind Distance",0.8,4,2)
    toggleRow(humpBox,"Troll.HumpYawOnly","Yaw-only")
    toggleRow(humpBox,"Troll.HumpKeepOwner","Re-claim Network Owner")
    toggleRow(humpBox,"Troll.HumpUsePlatformStand","Use PlatformStand")
    toggleRow(humpBox,"Troll.HumpOverrideFly","Override Fly")
    toggleRow(humpBox,"Troll.HumpVelocityMatch","Velocity Match")
    toggleRow(humpBox,"Troll.HumpCollisionSafe","Collision Safe")
    section(pg,"SERVER TROLLS","🌐")
    toggleRow(pg,"Troll.SpinTarget","Spin All")
    toggleRow(pg,"Troll.FreezeTarget","Freeze All")
    section(pg,"WORLD","🌍")
    toggleRow(pg,"Troll.SkyboxEnabled","Skybox Changer")
    toggleRow(pg,"Troll.FlashlightEnabled","Head Flashlight")
    toggleRow(pg,"Troll.DiscoMode","Disco Mode")
end

--====================== UTIL ======================
do
    local pg="util"
    section(pg,"UTILITY","🔧")
    buttonRow(pg,"Chat Spy","TOGGLE",function() Cfg.Utility.ChatSpy=not Cfg.Utility.ChatSpy end)
    section(pg,"AUTO","⚙")
    toggleRow(pg,"Utility.AutoClicker","Auto Clicker")
    sliderRow(pg,"Utility.AutoClickDelay","Click Delay",0.01,1,2)
    toggleRow(pg,"Utility.AutoRespawn","Auto Respawn")
    toggleRow(pg,"Utility.InstantReload","Instant Reload")
    toggleRow(pg,"Utility.AutoSheriffPickup","Auto Sheriff Pickup")
    sliderRow(pg,"Utility.AutoSheriffRange","Pickup Range",10,500,0)
    section(pg,"CHAT","💬")
    toggleRow(pg,"Utility.ChatSpam","Chat Spam")
    textRow(pg,"Message","message…",Cfg.Utility.ChatSpamMsg,function(t) Cfg.Utility.ChatSpamMsg=t end)
    section(pg,"PERF","📊")
    toggleRow(pg,"Perf.ShowOverlay","Show Perf Overlay")
end

--====================== CONTROLLER ======================
do
    local pg="controller"
    section(pg,"CONTROLLER","🎮")
    toggleRow(pg,"Controller.Enabled","Controller Enabled")
    toggleRow(pg,"Controller.TriggerBot","Trigger Bot (RT)")
    toggleRow(pg,"Controller.Vibration","Vibration")
    sliderRow(pg,"Controller.VibrationPower","Vibration Power",0,1,2)
end

--====================== SAVE ======================
do
    local pg="save"
    section(pg,"SAVE LOADOUT","💾")
    new("TextLabel",{Size=UDim2.new(1,0,0,36),BackgroundTransparency=1,
        Text="IO: "..(IO.has and ("✓ "..IO.reason) or ("✗ "..IO.reason)).."\nPlaceId: "..tostring(game.PlaceId),
        Font=Enum.Font.GothamBold,TextSize=10,
        TextColor3=IO.has and Theme.success or Theme.danger,
        TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,
        LayoutOrder=#pages[pg]:GetChildren(),ZIndex=33},pages[pg])
    local autoloadLbl=new("TextLabel",{Size=UDim2.new(1,0,0,16),BackgroundTransparency=1,
        Text=autoloadName and ("★ autoload: "..tostring(autoloadName)) or "autoload: none",
        Font=Enum.Font.GothamBold,TextSize=11,TextColor3=Theme.accent2,
        LayoutOrder=#pages[pg]:GetChildren(),ZIndex=33},pages[pg])
    local nameBox=tPanel2(new("TextBox",{Size=UDim2.new(1,0,0,32),
        BackgroundColor3=Theme.panel2,BorderSizePixel=0,Text="",
        PlaceholderText="loadout name",PlaceholderColor3=Theme.muted,
        Font=Enum.Font.Gotham,TextSize=12,TextColor3=Theme.text,
        ClearTextOnFocus=false,LayoutOrder=#pages[pg]:GetChildren(),ZIndex=33},pages[pg]))
    corner(nameBox,6); tStroke(stroke(nameBox,Theme.strokeSoft,1))
    new("UIPadding",{PaddingLeft=UDim.new(0,8)},nameBox)
    new("TextLabel",{Size=UDim2.new(1,0,0,20),BackgroundTransparency=1,
        Text="SAVED LOADOUTS:",Font=Enum.Font.GothamBlack,TextSize=10,
        TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left,
        LayoutOrder=#pages[pg]:GetChildren(),ZIndex=33},pages[pg])
    local listHolder=tPanel(new("Frame",{Size=UDim2.new(1,0,0,0),
        BackgroundColor3=Theme.panel,BackgroundTransparency=0.15,
        LayoutOrder=#pages[pg]:GetChildren(),
        AutomaticSize=Enum.AutomaticSize.Y,ZIndex=33},pages[pg]))
    corner(listHolder,7); tStroke(stroke(listHolder,Theme.strokeSoft,1,0.5))
    new("UIListLayout",{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder},listHolder)
    new("UIPadding",{PaddingTop=UDim.new(0,6),PaddingBottom=UDim.new(0,6),
        PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,6)},listHolder)
    local selectedName=nil
    local function refreshSavedList()
        for _,c in ipairs(listHolder:GetChildren()) do
            if not c:IsA("UIListLayout") and not c:IsA("UIPadding") then c:Destroy() end
        end
        local tbl=getSaveTable(); local names={}
        for name in pairs(tbl) do table.insert(names,name) end
        table.sort(names)
        if #names==0 then
            new("TextLabel",{Size=UDim2.new(1,0,0,24),BackgroundTransparency=1,
                Text="  no saves yet",Font=Enum.Font.Gotham,TextSize=10,
                TextColor3=Theme.muted,TextXAlignment=Enum.TextXAlignment.Left,
                LayoutOrder=1,ZIndex=34},listHolder)
            return
        end
        for i,name in ipairs(names) do
            local isAuto=(name==autoloadName); local isSelected=(name==selectedName)
            local row=new("Frame",{Size=UDim2.new(1,0,0,30),
                BackgroundColor3=isSelected and Theme.panel3 or Theme.panel2,
                BackgroundTransparency=0.15,BorderSizePixel=0,LayoutOrder=i,ZIndex=34},listHolder)
            corner(row,5)
            stroke(row,isSelected and Theme.accent or Theme.strokeSoft,isSelected and 1.4 or 1,isSelected and 0 or 0.4)
            new("TextLabel",{Size=UDim2.new(1,-14,1,0),Position=UDim2.fromOffset(10,0),
                BackgroundTransparency=1,Text=(isAuto and "★ " or "  ")..name,
                Font=Enum.Font.GothamBold,TextSize=11,
                TextColor3=isAuto and Theme.success or Theme.accent2,
                TextXAlignment=Enum.TextXAlignment.Left,ZIndex=35},row)
            local btn=new("TextButton",{Size=UDim2.new(1,0,1,0),
                BackgroundTransparency=1,Text="",AutoButtonColor=false,ZIndex=36},row)
            btn.MouseButton1Click:Connect(function()
                selectedName=name; nameBox.Text=name
                refreshSavedList()
            end)
        end
    end
    buttonRow(pg,"Save","SAVE",function()
        local name=nameBox.Text~="" and nameBox.Text or "default"
        saveLoadoutForGame(name,false); selectedName=name; refreshSavedList()
        notify("Saved ✓","\""..name.."\"",Theme.success)
    end)
    buttonRow(pg,"Save + Autoload","SAVE & AUTO",function()
        local name=nameBox.Text~="" and nameBox.Text or "default"
        saveLoadoutForGame(name,true); selectedName=name; refreshSavedList()
        autoloadLbl.Text="★ autoload: "..name
        notify("Autoload set ✓","\""..name.."\"",Theme.success,4)
    end)
    buttonRow(pg,"Load","LOAD",function()
        local name=nameBox.Text~="" and nameBox.Text or selectedName
        if not name or not loadLoadoutForGame(name) then
            notify("Not found","",Theme.danger); return
        end
        for p,w in pairs(widgets) do
            local v=getPath(Cfg,p)
            if v~=nil then pcall(w.set,v,false) end
        end
        applyTheme(); applyOpacity(Cfg.UI.MenuOpacity or 0)
        refreshSavedList()
        notify("Loaded ✓","\""..name.."\"",Theme.success)
    end)
    buttonRow(pg,"Delete","DELETE",function()
        local name=nameBox.Text~="" and nameBox.Text or selectedName
        if not name then return end
        deleteLoadoutForGame(name)
        if selectedName==name then selectedName=nil end
        autoloadLbl.Text=autoloadName and ("★ autoload: "..autoloadName) or "autoload: none"
        refreshSavedList()
    end)
    buttonRow(pg,"Clear autoload","CLEAR AUTO",function()
        autoloadName=nil; _G.__ReaperAutoload=nil
        if IO.has then pcall(IO.write,autoloadFileFor(),"") end
        autoloadLbl.Text="autoload: none"; refreshSavedList()
    end)
    buttonRow(pg,"Refresh list","REFRESH",refreshSavedList)
    refreshSavedList()
end

--====================== THEME ======================
do
    local pg="theme"
    section(pg,"PALETTE","🌸")
    local paletteLbl=infoRow(pg,"Current: "..(Theme.Palette or "Winter"))
    buttonRow(pg,"Winter Palette","APPLY",function()
        Theme.setPalette("Winter"); applyTheme(); buildSakura()
        paletteLbl.Text="Current: Winter"
        notify("Theme","Winter ❄",Theme.accent)
    end)
    buttonRow(pg,"Sakura Palette","APPLY",function()
        Theme.setPalette("Sakura"); applyTheme(); buildSakura()
        paletteLbl.Text="Current: Sakura"
        notify("Theme","Sakura 🌸",Theme.accent3)
    end)
    section(pg,"SAKURA LEAVES","🌸")
    toggleRow(pg,"UI.SakuraTheme","Enable Sakura Leaves",function(on)
        if on then Theme.setPalette("Sakura"); applyTheme() end
        buildSakura()
    end)
    sliderRow(pg,"UI.SakuraLeaves","Leaf Count",10,400,0,function(v)
        Theme.Sakura.leaves.count=v; buildSakura()
    end)
    sliderRow(pg,"UI.SakuraSpeed","Leaf Speed",5,80,0,function(v)
        Theme.Sakura.leaves.speed=v
    end)
    section(pg,"EFFECTS","✨")
    toggleRow(pg,"UI.Juicy","Juicy Effects")
    toggleRow(pg,"UI.Notifications","Notifications")
    toggleRow(pg,"UI.AmbientParticles","Ambient Particles")
    toggleRow(pg,"UI.ShimmerHeaders","Animated Headers")
    toggleRow(pg,"UI.BorderGlow","Border Glow")
    toggleRow(pg,"UI.AnimatedMenuOpen","Animated Menu Open")
    toggleRow(pg,"UI.MenuBlur","Blur Background")
    section(pg,"HUD","⚡")
    toggleRow(pg,"UI.HUD","Show Keybind HUD")
    toggleRow(pg,"UI.HUDMovable","HUD Movable")
    toggleRow(pg,"UI.HUDResizable","HUD Resizable")
    toggleRow(pg,"UI.AutoDetectHUD","Show Auto-Detect HUD")
    toggleRow(pg,"UI.ADMovable","Auto-Detect Movable")
    toggleRow(pg,"UI.ADResizable","Auto-Detect Resizable")
    section(pg,"CROSSHAIR","🎯")
    toggleRow(pg,"UI.CrosshairEnabled","Enable Crosshair")
    toggleRow(pg,"UI.CrosshairPulse","Pulse")
    sliderRow(pg,"UI.CrosshairSize","Size",12,60,0)
    sliderRow(pg,"UI.CrosshairThick","Thickness",1,6,0)
    toggleRow(pg,"UI.ReticleRings","Rings")
    toggleRow(pg,"UI.ReticleTrackingLine","Tracking Line")
    toggleRow(pg,"UI.ReticleHealthBar","Health Bar")
    section(pg,"RETICLE COLOUR","🎨")
    cycleRow(pg,"UI.ReticleColorMode","Reticle Colour Mode",{"Auto","Custom","Rainbow"})
    sliderRow(pg,"UI.ReticleR","Custom R",0,255,0)
    sliderRow(pg,"UI.ReticleG","Custom G",0,255,0)
    sliderRow(pg,"UI.ReticleB","Custom B",0,255,0)
    section(pg,"WEATHER","❄")
    toggleRow(pg,"UI.SnowOn","Snowfall",function(on)
        if Theme.Sakura.enabled and on then
            notify("Sakura","Snow disabled",Theme.danger,2); return
        end
        Theme.Snow.enabled=on; snowLayer.Visible=on; if on then buildSnow() end
    end)
    toggleRow(pg,"UI.RainOn","Rain",function(on)
        Theme.Rain.enabled=on; glassLayer.Visible=on
        if on then buildRain() end
    end)
    section(pg,"MENU OPACITY","🌫")
    sliderRow(pg,"UI.MenuOpacity","Transparency",0,0.9,2,function(v) applyOpacity(v) end)
end

--============================================================
-- FINALIZE
--============================================================
for _,p in pairs(pages) do p.Visible=false end
pages.home.Visible=true
tabs.home.BackgroundColor3=Theme.accent
tabs.home.TextColor3=Color3.new(1,1,1)
applyTheme()
applyOpacity(Cfg.UI.MenuOpacity or 0)
statusLbl.Text="REAPER :: WINTER  ·  Place "..tostring(game.PlaceId)
pcall(refreshBindList); pcall(refreshHUD); pcall(refreshAutoDetectHUD)
rebuildActionChips()
task.defer(function()
    if autoloadName then
        if loadLoadoutForGame(autoloadName) then
            for p,w in pairs(widgets) do
                local v=getPath(Cfg,p)
                if v~=nil then pcall(w.set,v,false) end
            end
            applyTheme(); applyOpacity(Cfg.UI.MenuOpacity or 0)
            pcall(refreshBindList); pcall(refreshHUD); pcall(refreshAutoDetectHUD)
            rebuildActionChips()
            notify("Autoloaded","\""..autoloadName.."\"",Theme.success)
        end
    end
end)

--============================================================
-- INPUT (with debounce fix)
--============================================================
aiming=false
aimToggled=false
local lastMenuToggle=0
function isTextBoxFocused()
    local ok,tb=pcall(function() return UIS:GetFocusedTextBox() end)
    return ok and tb~=nil
end
UIS.InputBegan:Connect(function(i,gpe)
    if pendingKeybind then
        local path=pendingKeybind.path
        local isRaw=pendingKeybind.rawPath
        local key=nil
        if i.UserInputType==Enum.UserInputType.Keyboard then
            if i.KeyCode==Enum.KeyCode.Escape then pendingKeybind=nil; return end
            key=i.KeyCode
        elseif i.UserInputType==Enum.UserInputType.MouseButton1
            or i.UserInputType==Enum.UserInputType.MouseButton2
            or i.UserInputType==Enum.UserInputType.MouseButton3 then
            key=i.UserInputType
        end
        if key then
            if isRaw then setPath(Cfg,path,key) else Cfg.Binds[path]=key end
            if pendingKeybind and pendingKeybind.btn then pendingKeybind.btn.Text=key.Name end
            pendingKeybind=nil
            pcall(refreshBindList); pcall(refreshHUD)
        end
        return
    end
    if i.UserInputType==Enum.UserInputType.Keyboard and not isTextBoxFocused() then
        if Cfg.UI.MenuKey and i.KeyCode==Cfg.UI.MenuKey then
            local now=tick()
            if now-lastMenuToggle < 0.35 then return end   -- debounce: ignore double-fires
            lastMenuToggle=now
            if menu.Visible then closeMenu() else openMenu() end
            return
        end
        if Cfg.UI.HUDKey and i.KeyCode==Cfg.UI.HUDKey then
            Cfg.UI.HUD=not Cfg.UI.HUD; pcall(refreshHUD); return
        end
        if Cfg.UI.AutoDetectHUDKey and i.KeyCode==Cfg.UI.AutoDetectHUDKey then
            Cfg.UI.AutoDetectHUD=not Cfg.UI.AutoDetectHUD
            pcall(refreshAutoDetectHUD); return
        end
        if ReticleActions.keys.teleport and i.KeyCode==ReticleActions.keys.teleport then
            runTargetAction("teleport"); return
        end
        if ReticleActions.keys.spectate and i.KeyCode==ReticleActions.keys.spectate then
            runTargetAction("spectate"); return
        end
        if ReticleActions.keys.hump and i.KeyCode==ReticleActions.keys.hump and Cfg.Troll.HumpEnabled then
            runTargetAction("hump"); return
        end
    end
    if gpe then return end
    if i.UserInputType==Enum.UserInputType.MouseButton2 and Cfg.Aimbot.Enabled then
        if Cfg.Aimbot.ToggleMode then aimToggled=not aimToggled else aiming=true end
        return
    end
    if i.UserInputType==Enum.UserInputType.MouseButton1 and Cfg.Troll.TapTarget then
        local picked=TrollState.hoveredPlayer
        if picked then
            TrollState.targetedPlayer=picked
            TrollState.humpTargetCF=nil; TrollState.humpTargetPlayer=nil
            showTargetAlert("Targeting: "..picked.Name)
            notify("Locked On",picked.Name,Theme.success,2.5)
        end
        return
    end
    if i.UserInputType~=Enum.UserInputType.Keyboard then return end
    local k=i.KeyCode
    for path,bind in pairs(Cfg.Binds or {}) do
        if bind and bind.EnumType==Enum.KeyCode and bind==k and widgets[path] then
            local w=widgets[path]; w.set(not w.get())
        end
    end
end)
UIS.InputEnded:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseButton2 then
        if not Cfg.Aimbot.ToggleMode then aiming=false end
    end
end)
UIS.InputChanged:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseWheel and ReticleActions.spectateTarget then
        ReticleActions.spectateZoom=math.clamp(ReticleActions.spectateZoom-i.Position.Z*0.15,0.3,8)
    end
end)
logo.MouseButton1Click:Connect(function()
    local now=tick()
    if now-lastMenuToggle < 0.35 then return end
    lastMenuToggle=now
    if menu.Visible then closeMenu() else openMenu() end
end)

--============================================================
-- AIMBOT
--============================================================
function isBindDown(bind)
    if not bind or typeof(bind)~="EnumItem" then return false end
    if bind.EnumType==Enum.KeyCode then return UIS:IsKeyDown(bind) end
    if bind.EnumType==Enum.UserInputType then
        if bind==Enum.UserInputType.MouseButton1 then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) end
        if bind==Enum.UserInputType.MouseButton2 then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) end
        if bind==Enum.UserInputType.MouseButton3 then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton3) end
    end
    return false
end
fovCircle=new("Frame",{AnchorPoint=Vector2.new(0.5,0.5),
    Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(200,200),
    BackgroundTransparency=1,Visible=false,ZIndex=1},gui)
corner(fovCircle,10000)
tAccent(stroke(fovCircle,Theme.accent,1,0.4))
function getAimTarget()
    local char=LP.Character
    if not char then return nil end
    local myHrp=char:FindFirstChild("HumanoidRootPart")
    if not myHrp then return nil end
    local center=Vector2.new(Cam.ViewportSize.X/2,Cam.ViewportSize.Y/2)
    local maxD=Cfg.Aimbot.FOV
    local maxDistStuds=Cfg.Aimbot.MaxDistance or 1000
    local best,bestD,bestPart=nil,maxD,nil
    for _,plr in ipairs(Players:GetPlayers()) do
        if plr~=LP and plr.Character then
            local skip=false
            if Cfg.Aimbot.TeamCheck and teamIsAlly(plr) then skip=true end
            if not skip then
                local tH=plr.Character:FindFirstChildOfClass("Humanoid")
                if tH and tH.Health>0 then
                    local part=plr.Character:FindFirstChild(Cfg.Aimbot.TargetPart)
                              or plr.Character:FindFirstChild("Head")
                    if part then
                        local studDist=(myHrp.Position-part.Position).Magnitude
                        if studDist<=maxDistStuds then
                            local sp,onScr=Cam:WorldToViewportPoint(part.Position)
                            if onScr and sp.Z>0 then
                                local d=(Vector2.new(sp.X,sp.Y)-center).Magnitude
                                if d<=bestD then
                                    local visible=true
                                    if Cfg.Aimbot.VisibleOnly then
                                        local params=RaycastParams.new()
                                        params.FilterType=Enum.RaycastFilterType.Exclude
                                        params.FilterDescendantsInstances={char}
                                        local res=workspace:Raycast(Cam.CFrame.Position,part.Position-Cam.CFrame.Position,params)
                                        visible=res==nil or res.Instance:IsDescendantOf(part.Parent)
                                    end
                                    if visible then best,bestD,bestPart=plr,d,part end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return bestPart,best
end
RS.RenderStepped:Connect(function(dt)
    pcall(function()
        local showFov=Cfg.Aimbot.Enabled and Cfg.Aimbot.ShowFOVCircle
        if fovCircle.Visible~=showFov then fovCircle.Visible=showFov end
        if showFov then fovCircle.Size=UDim2.fromOffset(Cfg.Aimbot.FOV*2,Cfg.Aimbot.FOV*2) end
        if not Cfg.Aimbot.Enabled then aiming=false; aimToggled=false; return end
        if Cfg.Aimbot.ToggleMode then aiming=aimToggled
        else aiming=isBindDown(Cfg.Aimbot.Key) end
        if not aiming then return end
        local part=getAimTarget()
        if not part then return end
        local strength=Cfg.Aimbot.Strength
        if Cfg.Aimbot.Humanize then strength=strength*(0.85+math.random()*0.3) end
        local smooth=math.max(Cfg.Aimbot.Smoothness,1)
        local alpha=math.clamp(dt*(strength/smooth)*30,0,1)
        Cam.CFrame=Cam.CFrame:Lerp(CFrame.new(Cam.CFrame.Position,part.Position),alpha)
    end)
end)

--============================================================
-- INF ZOOM
--============================================================
do
    local lastInf=false
    RS.Heartbeat:Connect(function()
        pcall(function()
            if Cfg.Visuals.InfZoom~=lastInf then
                lastInf=Cfg.Visuals.InfZoom
                if lastInf then
                    pcall(function()
                        LP.CameraMaxZoomDistance=1000
                        LP.CameraMinZoomDistance=Cfg.Visuals.FOVMin or 0.5
                    end)
                    Cam.FieldOfView=math.clamp(Cam.FieldOfView,Cfg.Visuals.FOVMin or 0.5,Cfg.Visuals.FOVMax or 120)
                else
                    pcall(function()
                        LP.CameraMaxZoomDistance=128
                        LP.CameraMinZoomDistance=0.5
                    end)
                end
            end
            if Cfg.Visuals.InfZoom then
                pcall(function()
                    if LP.CameraMaxZoomDistance<900 then LP.CameraMaxZoomDistance=1000 end
                end)
            end
        end)
    end)
end

--============================================================
-- ESP
--============================================================
espData={}
function removeESP(plr)
    local d=espData[plr]
    if d then
        if d.hl then d.hl:Destroy() end
        if d.bb then d.bb:Destroy() end
        espData[plr]=nil
    end
end
RS.Heartbeat:Connect(function()
    pcall(function()
        if not Cfg.Visuals.Enabled then
            if next(espData) then for p in pairs(espData) do removeESP(p) end end
            return
        end
        for _,plr in ipairs(Players:GetPlayers()) do
            if plr~=LP then
                local ch=plr.Character
                local h=ch and ch:FindFirstChildOfClass("Humanoid")
                local head=ch and ch:FindFirstChild("Head")
                if ch and h and h.Health>0 and head then
                    local baseColor=getESPColourFor(plr)
                    local outlineColor=getESPOutlineFor(plr)
                    local roleLbl=getRoleLabelFor(plr)
                    local d=espData[plr]
                    if not d or not d.hl or d.hl.Adornee~=ch then
                        removeESP(plr)
                        local hl=Instance.new("Highlight")
                        hl.Name="ReaperESP"; hl.Adornee=ch
                        hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
                        hl.FillColor=baseColor; hl.OutlineColor=outlineColor
                        hl.FillTransparency=Cfg.Visuals.FillTransparency
                        hl.Parent=ch
                        local bb=new("BillboardGui",{Name="ReaperTag",
                            Size=UDim2.fromOffset(220,64),
                            StudsOffsetWorldSpace=Vector3.new(0,3.2,0),
                            AlwaysOnTop=true,Adornee=head,Parent=head})
                        local nl=new("TextLabel",{BackgroundTransparency=1,
                            Size=UDim2.new(1,0,0,18),Font=Enum.Font.GothamBold,
                            TextSize=13,TextColor3=outlineColor,
                            TextStrokeTransparency=0.2,TextStrokeColor3=Color3.new(0,0,0),
                            Text=plr.Name,Visible=Cfg.Visuals.NameTags,Parent=bb})
                        local dl=new("TextLabel",{BackgroundTransparency=1,
                            Position=UDim2.new(0,0,0,18),Size=UDim2.new(1,0,0,14),
                            Font=Enum.Font.Gotham,TextSize=11,TextColor3=Color3.fromRGB(200,210,230),
                            TextStrokeTransparency=0.5,TextStrokeColor3=Color3.new(0,0,0),
                            Text="",Visible=Cfg.Visuals.Distance,Parent=bb})
                        local rl=new("TextLabel",{BackgroundTransparency=1,
                            Position=UDim2.new(0,0,0,34),Size=UDim2.new(1,0,0,16),
                            Font=Enum.Font.GothamBlack,TextSize=12,
                            TextColor3=baseColor,TextStrokeTransparency=0.3,
                            TextStrokeColor3=Color3.new(0,0,0),
                            Text="",Visible=Cfg.Visuals.ShowRoleLabel,Parent=bb})
                        espData[plr]={hl=hl,bb=bb,nameLbl=nl,distLbl=dl,roleLbl=rl}
                        d=espData[plr]
                    end
                    if d.hl then
                        d.hl.FillColor=baseColor; d.hl.OutlineColor=outlineColor
                        d.hl.FillTransparency=Cfg.Visuals.FillTransparency
                    end
                    if d.nameLbl then d.nameLbl.Visible=Cfg.Visuals.NameTags; d.nameLbl.TextColor3=outlineColor end
                    if d.distLbl then
                        d.distLbl.Visible=Cfg.Visuals.Distance
                        if Cfg.Visuals.Distance then
                            local dist=(Cam.CFrame.Position-head.Position).Magnitude
                            d.distLbl.Text=string.format("%d studs",math.floor(dist))
                        end
                    end
                    if d.roleLbl then
                        d.roleLbl.Visible=Cfg.Visuals.ShowRoleLabel and roleLbl~=""
                        if d.roleLbl.Visible then d.roleLbl.Text=roleLbl; d.roleLbl.TextColor3=baseColor end
                    end
                else removeESP(plr) end
            end
        end
    end)
end)

--============================================================
-- MOVEMENT
--============================================================
flyBV=nil; flyGyro=nil
flyVelTarget=Vector3.zero
flySmoothedVel=Vector3.zero
wasFlying=false
freecamCF=nil
freecamSpeedMult=1
savedWalk=16; savedJump=50
wasFreecam=false
spinAngle=0
sheriffPickupCooldown=0
autoClickAccum=0
cframeSpeedAccum=0
function stopFly()
    if flyBV then flyBV:Destroy(); flyBV=nil end
    if flyGyro then flyGyro:Destroy(); flyGyro=nil end
    flyVelTarget=Vector3.zero; flySmoothedVel=Vector3.zero
    local h=hum()
    if h and not Cfg.Troll.HumpEnabled then h.PlatformStand=false; h.AutoRotate=true end
end
function startFly()
    local c=LP.Character
    local r=c and c:FindFirstChild("HumanoidRootPart")
    local h=c and c:FindFirstChildOfClass("Humanoid")
    if not r or not h then return end
    if not h.PlatformStand then h.PlatformStand=true; h.AutoRotate=false end
    if not flyBV or not flyBV.Parent then
        if flyBV then flyBV:Destroy() end
        flyBV=Instance.new("BodyVelocity")
        flyBV.MaxForce=Vector3.new(1e6,1e6,1e6)
        flyBV.P=1250; flyBV.Velocity=Vector3.zero; flyBV.Parent=r
    end
    if not flyGyro or not flyGyro.Parent then
        if flyGyro then flyGyro:Destroy() end
        flyGyro=Instance.new("BodyGyro")
        flyGyro.MaxTorque=Vector3.new(1e6,1e6,1e6)
        flyGyro.P=3000; flyGyro.D=500
        flyGyro.CFrame=r.CFrame; flyGyro.Parent=r
    end
end
function enforceNoclip(char)
    if not char then return end
    for _,p in ipairs(char:GetDescendants()) do
        if p:IsA("BasePart") then
            if p.CanCollide then p.CanCollide=false end
            if noclipGroupOK then pcall(function() p.CollisionGroup=NOCLIP_GROUP end) end
        end
    end
end
UIS.InputChanged:Connect(function(input)
    if not Cfg.Movement.Freecam then return end
    if input.UserInputType==Enum.UserInputType.MouseWheel then
        freecamSpeedMult=math.clamp(freecamSpeedMult+input.Position.Z*0.15,0.2,6)
    end
end)
RS.Heartbeat:Connect(function(dt)
    pcall(function()
        local myC=LP.Character
        if myC then
            if Cfg.Movement.Noclip then enforceNoclip(myC)
            else
                for _,p in ipairs(myC:GetDescendants()) do
                    if p:IsA("BasePart") and not p.CanCollide then
                        p.CanCollide=true
                        if noclipGroupOK then pcall(function() p.CollisionGroup="Default" end) end
                    end
                end
            end
        end
        if Cfg.Movement.Freecam and not wasFreecam then
            local h=hum()
            if h then savedWalk=h.WalkSpeed; savedJump=h.JumpPower; h.WalkSpeed=0; h.JumpPower=0 end
            freecamCF=Cam.CFrame
            Cam.CameraType=Enum.CameraType.Scriptable
            UIS.MouseBehavior=Enum.MouseBehavior.LockCenter
            wasFreecam=true
        elseif not Cfg.Movement.Freecam and wasFreecam then
            local h=hum()
            if h then h.WalkSpeed=savedWalk or 16; h.JumpPower=savedJump or 50 end
            Cam.CameraType=Enum.CameraType.Custom
            UIS.MouseBehavior=Enum.MouseBehavior.Default
            freecamCF=nil; wasFreecam=false
        end
        if Cfg.Movement.Freecam and freecamCF then
            local sens=Cfg.Movement.FreecamSens*0.3
            local delta=UIS:GetMouseDelta()
            if delta.Magnitude>0 then
                freecamCF=freecamCF*CFrame.Angles(math.rad(-delta.Y*sens),math.rad(-delta.X*sens),0)
            end
            local dir=Vector3.zero
            if UIS:IsKeyDown(Enum.KeyCode.W) then dir+=freecamCF.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.S) then dir-=freecamCF.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.A) then dir-=freecamCF.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.D) then dir+=freecamCF.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.Space) then dir+=Vector3.new(0,1,0) end
            if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then dir-=Vector3.new(0,1,0) end
            local sp=UIS:IsKeyDown(Enum.KeyCode.LeftShift) and 3 or 1
            if dir.Magnitude>0 then dir=dir.Unit end
            freecamCF=freecamCF+dir*Cfg.Movement.FreecamSpeed*sp*freecamSpeedMult*dt
            Cam.CFrame=freecamCF
        end
        local c=LP.Character
        if c then
            local h=c:FindFirstChildOfClass("Humanoid")
            local r=c:FindFirstChild("HumanoidRootPart")
            if h then
                if Cfg.Movement.SpeedEnabled and not Cfg.Movement.Freecam then h.WalkSpeed=Cfg.Movement.Speed end
                if Cfg.Movement.JumpEnabled then h.UseJumpPower=true; h.JumpPower=Cfg.Movement.JumpPower end
                if Cfg.Movement.GodMode then
                    if h.MaxHealth<9e5 then h.MaxHealth=1e6 end
                    if h.Health<h.MaxHealth then h.Health=h.MaxHealth end
                end
            end
            if Cfg.Movement.CFrameSpeed and r and not Cfg.Movement.Freecam then
                cframeSpeedAccum=cframeSpeedAccum+dt
                if cframeSpeedAccum>=1/(Cfg.Movement.CFrameSpeedValue or 15) then
                    cframeSpeedAccum=0
                    local dir=Vector3.zero
                    if UIS:IsKeyDown(Enum.KeyCode.W) then dir+=Cam.CFrame.LookVector end
                    if UIS:IsKeyDown(Enum.KeyCode.S) then dir-=Cam.CFrame.LookVector end
                    if UIS:IsKeyDown(Enum.KeyCode.A) then dir-=Cam.CFrame.RightVector end
                    if UIS:IsKeyDown(Enum.KeyCode.D) then dir+=Cam.CFrame.RightVector end
                    dir=Vector3.new(dir.X,0,dir.Z)
                    if dir.Magnitude>0 then
                        dir=dir.Unit
                        r.CFrame=r.CFrame+dir*(Cfg.Movement.CFrameSpeedValue or 15)*0.1
                    end
                end
            end
            local humpActive=Cfg.Troll.HumpEnabled and TrollState.humpTargetPlayer~=nil
            local flySuppressed=humpActive and Cfg.Troll.HumpOverrideFly
            if Cfg.Movement.Fly and r and h and not Cfg.Movement.Freecam and not flySuppressed then
                startFly(); wasFlying=true
                local dir=Vector3.zero
                if UIS:IsKeyDown(Enum.KeyCode.W) then dir+=Cam.CFrame.LookVector end
                if UIS:IsKeyDown(Enum.KeyCode.S) then dir-=Cam.CFrame.LookVector end
                if UIS:IsKeyDown(Enum.KeyCode.A) then dir-=Cam.CFrame.RightVector end
                if UIS:IsKeyDown(Enum.KeyCode.D) then dir+=Cam.CFrame.RightVector end
                if UIS:IsKeyDown(Enum.KeyCode.Space) then dir+=Vector3.new(0,1,0) end
                if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then dir-=Vector3.new(0,1,0) end
                if dir.Magnitude>0 then dir=dir.Unit end
                local speed=Cfg.Movement.FlySpeed
                if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then speed=speed*Cfg.Movement.FlyBoostMult end
                flyVelTarget=dir*speed
                local smooth=math.clamp(dt*Cfg.Movement.FlySmooth,0,1)
                flySmoothedVel=flySmoothedVel:Lerp(flyVelTarget,smooth)
                if Cfg.Movement.FlyNoTunnel then
                    local maxV=180
                    if flySmoothedVel.Magnitude>maxV then flySmoothedVel=flySmoothedVel.Unit*maxV end
                end
                if flyBV then flyBV.Velocity=flySmoothedVel end
                if flyGyro then flyGyro.CFrame=CFrame.new(r.Position,r.Position+Cam.CFrame.LookVector) end
            elseif wasFlying and not Cfg.Movement.Fly then
                stopFly(); wasFlying=false
            end
            if Cfg.Movement.SprintEnabled and not Cfg.Movement.SpeedEnabled and h then
                if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then h.WalkSpeed=Cfg.Movement.SprintSpeed
                else h.WalkSpeed=16 end
            end
            if Cfg.Movement.Bunnyhop and h and h.FloorMaterial~=Enum.Material.Air then
                h:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
        if Cfg.Movement.Spinbot and c then
            local r=c:FindFirstChild("HumanoidRootPart")
            if r and not Cfg.Troll.HumpEnabled then
                spinAngle=spinAngle+dt*15
                r.CFrame=CFrame.new(r.Position)*CFrame.Angles(0,spinAngle,0)
            end
        end
        if Cfg.World.Fullbright then
            Lighting.Ambient=Color3.fromRGB(180,180,180)
            Lighting.OutdoorAmbient=Color3.fromRGB(180,180,180)
            Lighting.Brightness=3
            Lighting.FogEnd=1e6; Lighting.FogStart=1e6
            Lighting.ClockTime=14
        end
        if Cfg.Visuals.NoFog then Lighting.FogEnd=1e6; Lighting.FogStart=1e6 end
        if Cfg.World.RemoveBlur then
            local b=Lighting:FindFirstChildOfClass("BlurEffect")
            if b and b~=_G.__ReaperBlur then b.Enabled=false end
        end
        if Cfg.World.FOVEnabled then Cam.FieldOfView=Cfg.World.FieldOfView end
        if Cfg.World.GravityEnabled then workspace.Gravity=Cfg.World.Gravity end
        if Cfg.Utility.AutoSheriffPickup then
            sheriffPickupCooldown=sheriffPickupCooldown-dt
            if sheriffPickupCooldown<=0 then
                local myChar=LP.Character
                if myChar then
                    local myR=myChar:FindFirstChild("HumanoidRootPart")
                    if myR then
                        local best,bestD=nil,Cfg.Utility.AutoSheriffRange
                        for _,tool in ipairs(workspace:GetDescendants()) do
                            if tool:IsA("Tool") then
                                local matched=false
                                for _,n in ipairs(Cfg.Utility.AutoSheriffTools) do
                                    if tool.Name:lower():find(n:lower(),1,true) then matched=true break end
                                end
                                if matched then
                                    local handle=tool:FindFirstChild("Handle")
                                    if handle and handle:IsA("BasePart") then
                                        local d=(myR.Position-handle.Position).Magnitude
                                        if d<bestD then best,bestD=tool,d end
                                    end
                                end
                            end
                        end
                        if best then
                            local handle=best:FindFirstChild("Handle")
                            if handle then
                                myR.CFrame=CFrame.new(handle.Position+Vector3.new(0,2.5,0))
                                sheriffPickupCooldown=0.3
                            end
                        end
                    end
                end
            end
        end
        if Cfg.Utility.AutoClicker and UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
            autoClickAccum=autoClickAccum+dt
            if autoClickAccum>=Cfg.Utility.AutoClickDelay then
                autoClickAccum=0
                local m=LP:GetMouse()
                pcall(function()
                    VirtualUser:CaptureController()
                    VirtualUser:ClickButton1(Vector2.new(m.X,m.Y))
                end)
            end
        end
        if Cfg.Utility.AutoRespawn then
            local h=hum()
            if h and h.Health<=0 then LP:LoadCharacter() end
        end
        if Cfg.Utility.ChatSpam then
            local now=tick()
            if not TrollState.lastSpam or now-TrollState.lastSpam>1.5 then
                TrollState.lastSpam=now; chatSend(Cfg.Utility.ChatSpamMsg)
            end
        end
    end)
end)
UIS.JumpRequest:Connect(function()
    if not Cfg.Movement.InfiniteJump then return end
    local h=hum(); if h then h:ChangeState(Enum.HumanoidStateType.Jumping) end
end)

--============================================================
-- FLING
--============================================================
flinging=false
function flingPlayer(targetPlr)
    if flinging or not targetPlr or not targetPlr.Character then return end
    local tChar=targetPlr.Character
    local tHrp=tChar:FindFirstChild("HumanoidRootPart")
    if not tHrp then return end
    flinging=true
    pcall(function() tHrp:SetNetworkOwner(LP) end)
    local spin=Instance.new("Part")
    spin.Name="ReaperFlingSpin"; spin.Size=Vector3.new(3,3,3); spin.Transparency=1
    spin.CanCollide=false; spin.Massless=true
    spin.CFrame=tHrp.CFrame; spin.Parent=workspace
    local weld=Instance.new("WeldConstraint")
    weld.Part0=spin; weld.Part1=tHrp; weld.Parent=spin
    local bav=Instance.new("BodyAngularVelocity")
    bav.AngularVelocity=Vector3.new(1e5,1e5,1e5)
    bav.MaxTorque=Vector3.new(math.huge,math.huge,math.huge)
    bav.P=1e9; bav.Parent=spin
    local bv=Instance.new("BodyVelocity")
    bv.Velocity=Vector3.new(math.random(-40,40),400,math.random(-40,40))
    bv.MaxForce=Vector3.new(math.huge,math.huge,math.huge)
    bv.P=1e6; bv.Parent=spin
    task.wait(Cfg.Utility.FlingLiftDuration)
    if spin.Parent then spin:Destroy() end
    flinging=false
end

--============================================================
-- TROLL
--============================================================
function getTargetPlayer()
    if TrollState.targetedPlayer then
        local c=TrollState.targetedPlayer.Character
        local h=c and c:FindFirstChildOfClass("Humanoid")
        if h and h.Health>0 then return TrollState.targetedPlayer end
    end
    local best,bestD=nil,math.huge
    local myHrp=hrp(); if not myHrp then return nil end
    for _,plr in ipairs(Players:GetPlayers()) do
        if plr~=LP and plr.Character then
            local r=plr.Character:FindFirstChild("HumanoidRootPart")
            local h=plr.Character:FindFirstChildOfClass("Humanoid")
            if r and h and h.Health>0 then
                local d=(myHrp.Position-r.Position).Magnitude
                if d<bestD then best,bestD=plr,d end
            end
        end
    end
    return best
end
RS.Heartbeat:Connect(function(dt)
    pcall(function()
        if Cfg.Troll.FollowTarget then
            local t=TrollState.targetedPlayer or getTargetPlayer()
            if t then
                local myR=hrp()
                local tR=t.Character and t.Character:FindFirstChild("HumanoidRootPart")
                if myR and tR then
                    local dir=tR.Position-myR.Position
                    local dist=dir.Magnitude
                    if dist>4 then
                        local step=math.min(Cfg.Troll.FollowSpeed*dt,dist-3)
                        if step>0 then myR.CFrame=myR.CFrame+dir.Unit*step end
                    end
                end
            end
        end
        if Cfg.Troll.HumpEnabled then
            local t=TrollState.targetedPlayer or getTargetPlayer()
            if t and t.Character then
                local myC=LP.Character
                if myC then
                    local myR=myC:FindFirstChild("HumanoidRootPart")
                    local myH=myC:FindFirstChildOfClass("Humanoid")
                    local tR=t.Character:FindFirstChild("HumanoidRootPart")
                    local tH=t.Character:FindFirstChildOfClass("Humanoid")
                    if myR and tR and myH and tH and tH.Health>0 then
                        if Cfg.Troll.HumpKeepOwner then pcall(function() myR:SetNetworkOwner(LP) end) end
                        if Cfg.Troll.HumpUsePlatformStand then
                            if not myH.PlatformStand then myH.PlatformStand=true end
                        else
                            if myH.PlatformStand then myH.PlatformStand=false end
                        end
                        local tPos=tR.Position
                        local tLook=tR.CFrame.LookVector
                        local tVel=tR.AssemblyLinearVelocity
                        local phase=tick()*Cfg.Troll.HumpSpeed
                        local thrust=math.sin(phase)*Cfg.Troll.HumpAmplitude
                        local behindDist=Cfg.Troll.HumpDistance
                        local behindPos=tPos-tLook*(behindDist-thrust)
                        local desiredPos=Vector3.new(behindPos.X,tPos.Y,behindPos.Z)
                        local finalCF
                        if Cfg.Troll.HumpYawOnly then
                            local _,yaw=tR.CFrame:ToEulerAnglesYXZ()
                            finalCF=CFrame.new(desiredPos)*CFrame.Angles(0,yaw,0)
                        else
                            finalCF=CFrame.lookAt(desiredPos,desiredPos+tLook,Vector3.new(0,1,0))
                        end
                        myR.CFrame=finalCF
                        if Cfg.Troll.HumpVelocityMatch then
                            myR.AssemblyLinearVelocity=tVel
                        else
                            myR.AssemblyLinearVelocity=Vector3.zero
                        end
                        myR.AssemblyAngularVelocity=Vector3.zero
                        if Cfg.Movement.Noclip then enforceNoclip(myC) end
                        TrollState.humpWasActive=true
                    end
                end
            end
        elseif TrollState.humpWasActive then
            local h=hum()
            if h then
                h.PlatformStand=false; h.AutoRotate=true
                pcall(function() h:ChangeState(Enum.HumanoidStateType.GettingUp) end)
            end
            TrollState.humpWasActive=false
        end
    end)
end)

--============================================================
-- PERF
--============================================================
perfFrame=tBg(new("Frame",{Size=UDim2.fromOffset(230,140),
    Position=UDim2.new(0,10,0,10),BackgroundColor3=Theme.bg,
    BackgroundTransparency=0.15,Visible=false,ZIndex=4},gui))
corner(perfFrame,10); tStroke(stroke(perfFrame,Theme.strokeSoft,1))
grad(perfFrame,Theme.panel,Theme.bg,90)
perfLbl=new("TextLabel",{Text="",Font=Enum.Font.Code,TextSize=12,
    TextColor3=Theme.accent2,BackgroundTransparency=1,
    TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,
    Position=UDim2.fromOffset(10,8),Size=UDim2.new(1,-20,1,-16),
    TextWrapped=true,ZIndex=5},perfFrame)
perfFPS=0; perfFC=0; perfLfu=0
RS.RenderStepped:Connect(function(dt)
    perfFC=perfFC+1; perfLfu=perfLfu+dt
    if perfLfu>=0.5 then perfFPS=math.floor(perfFC/perfLfu); perfFC=0; perfLfu=0 end
end)
RS.Heartbeat:Connect(function()
    pcall(function()
        if not Cfg.Perf.ShowOverlay then
            if perfFrame.Visible then perfFrame.Visible=false end
            return
        end
        perfFrame.Visible=true
        local lines={"REAPER :: PERF"}
        if Cfg.Perf.ShowFPS then lines[#lines+1]=string.format("fps: %d",perfFPS) end
        if Cfg.Perf.ShowPing then
            local ok,v=pcall(function() return Stats.Network.ServerStatsItem["Data Ping"]:GetValue() end)
            lines[#lines+1]=string.format("ping: %d ms",ok and math.floor(v) or 0)
        end
        if Cfg.Perf.ShowMem then
            local ok,v=pcall(function() return Stats:GetTotalMemoryUsageMb() end)
            lines[#lines+1]=string.format("mem: %d mb",ok and math.floor(v) or 0)
        end
        if Cfg.Perf.ShowPlayers then lines[#lines+1]=string.format("players: %d",#Players:GetPlayers()) end
        perfLbl.Text=table.concat(lines,"\n")
    end)
end)

--============================================================
-- ANIMATION LOOP
--============================================================
snowAccum=0; rainAccum=0
RS.RenderStepped:Connect(function(dt)
    snowAccum=snowAccum+dt; rainAccum=rainAccum+dt
    if Theme.Snow.enabled and snowAccum>0.016 then
        snowAccum=0
        local hh=snowLayer.AbsoluteSize.Y; local ww=snowLayer.AbsoluteSize.X
        for _,s in ipairs(snowflakes) do
            local inst=s.inst
            if inst and inst.Parent then
                local p=inst.Position
                local ny=p.Y.Scale+(s.speed/math.max(hh,1))*dt
                local nx=p.X.Scale+(s.drift/math.max(ww,1))*dt
                if ny>1.02 then ny=-0.05; nx=math.random() end
                if nx<-0.05 then nx=1.02 end
                if nx>1.05 then nx=-0.02 end
                inst.Position=UDim2.fromScale(nx,ny)
            end
        end
    end
    if Theme.Rain.enabled and rainAccum>0.016 then
        rainAccum=0
        local hh=glassLayer.AbsoluteSize.Y
        for _,r in ipairs(rainTrails) do
            local inst=r.inst
            if inst and inst.Parent then
                local p=inst.Position
                local ny=p.Y.Scale+(r.speed/math.max(hh,1))*dt
                if ny>1.1 then inst.Position=UDim2.fromScale(math.random(),-0.1)
                else inst.Position=UDim2.fromScale(p.X.Scale,ny) end
            end
        end
    end
    if Theme.Sakura.enabled and Theme.Sakura.leaves.enabled then
        local hh=sakuraLayer.AbsoluteSize.Y; local ww=sakuraLayer.AbsoluteSize.X
        for _,l in ipairs(sakuraLeaves) do
            local inst=l.inst
            if inst and inst.Parent then
                local p=inst.Position
                l.sway=l.sway+dt*l.swaySpeed
                local swayX=math.sin(l.sway)*l.swayAmp/math.max(ww,1)
                local ny=p.Y.Scale+(l.speed/math.max(hh,1))*dt
                local nx=p.X.Scale+swayX
                if ny>1.05 then ny=-0.05; nx=math.random() end
                if nx<-0.05 then nx=1.02 end
                if nx>1.05 then nx=-0.02 end
                inst.Position=UDim2.fromScale(nx,ny)
                inst.Rotation=inst.Rotation+l.rot*dt
            end
        end
    end
    if Cfg.UI.AmbientParticles then
        for _,p in ipairs(ambientParts) do
            local inst=p.inst
            if inst and inst.Parent then
                local pos=inst.Position
                local nx=pos.X.Scale+p.vx*dt; local ny=pos.Y.Scale+p.vy*dt
                if nx<0 then nx=1 end; if nx>1 then nx=0 end
                if ny<0 then ny=1 end; if ny>1 then ny=0 end
                local wob=math.sin(tick()*0.5+p.phase)*0.0005
                inst.Position=UDim2.fromScale(nx+wob,ny+wob)
                inst.BackgroundTransparency=0.55+math.sin(tick()+p.phase)*0.15
            end
        end
    end
end)

pcall(function()
    game:BindToClose(function()
        if autoloadName then pcall(saveLoadoutForGame,autoloadName,true) end
    end)
end)
LP.OnTeleport:Connect(function()
    if autoloadName then pcall(saveLoadoutForGame,autoloadName,true) end
end)

print("[REAPER :: WINTER] v15.0 loaded · Place "..tostring(game.PlaceId))
