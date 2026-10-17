-- ==========================================================
-- BUILD   80036F8E36034B17A6BB4B3A
-- SIG     7319944BC206D6CBB03608EC37E5C779
-- PAYLOAD 1bd12e463bee859d44d4c49157fbb58d6a978ad017aa861a
-- ==========================================================
-- 0x48 0x0d 0xd5 0x7e
-- ac993bc330a6fa55f6d524290ac51e22f1d4e0e169724b344
-- 10111011010011111011000001001110001110
-- ab420375698742edd9d5b1f054d75432414049c09c2415ed5c603dbacb
-- f0e22efdfcb87005409d8ee09eb1e9967a7e66
-- 91c30b69f7ed176aefadc10f

local _0e7849 = string.char

local _790d8 = game:GetService(_0e7849(82, 117, 110, 83, 101, 114, 118, 105, 99, 101))


-- 0x67 0x51 0xf4 0x36 0x42 0x3e
if _790d8:IsServer() then
local _37a6b3 = game:GetService(_0e7849(80, 108, 97, 121, 101, 114, 115))
local _522f90a = game:GetService(_0e7849(82, 101, 112, 108, 105, 99, 97, 116, 101, 100, 83, 116, 111, 114, 97, 103, 101))

-- 8430f589c68d7944b9370c2113316local _9e788d76e = _522f90a:FindFirstChild(_0e7849(82, 101, 97, 112, 101, 114, 67, 111, 109, 109))

-- 0xbd 0xa2 0x9c 0xf3 0x05if not _9e788d76e then
_9e788d76e = Instance.new(_0e7849(82, 101, 109, 111, 116, 101, 69, 118, 101, 110, 116))

-- 962f32daf7e3986482c312083533cc247339_9e788d76e.Name = _0e7849(82, 101, 97, 112, 101, 114, 67, 111, 109, 109)

-- 6165e8d46d5eb3672f55ef47f926b_9e788d76e.Parent = _522f90a

-- 0xb7 0xc8 0x3a 0xac 0x7bend

-- 101110000010100011100111101local _bff3df = {}
local function list()

-- 0x27 0x69 0xa9 0x99local _327b3dc4 = {}
for _1dd04044 in pairs(_bff3df) do if _1dd04044.Parent then _327b3dc4[#_327b3dc4+1] = _1dd04044.Name end end
table.sort(_327b3dc4); return _327b3dc4

-- 0x24 0x4d 0x1fend
local function bcast(ch, ...)
local _96dd28 = {...}
local _f69dc26 = select(_0e7849(35), ...)

-- 0f9100ad57285eb68a6312633b4ed97cb26cf7c9d6for _929f355e in pairs(users) do

-- 101011000010011011001101000111001101010100001000001if _929f355e.Parent then pcall(function() remote:FireClient(_929f355e, ch, table.unpack(_96dd28, 1, _f69dc26)) end) end
end
end
remote.OnServerEvent:Connect(function(_6f21c8c, _298afde2)

-- c1c2b9e9a0f437b1079aa931b4230886a68c5fif not _6f21c8c or not _6f21c8c.Parent then return end
if _298afde2 == _0e7849(114, 101, 103, 105, 115, 116, 101, 114) then users[_6f21c8c] = {lastSeen = tick()}; bcast(_0e7849(117, 115, 101, 114, 67, 111, 117, 110, 116), #list(), list())
elseif _298afde2 == _0e7849(104, 101, 97, 114, 116, 98, 101, 97, 116) then if users[_6f21c8c] then users[_6f21c8c].lastSeen = tick() end end
end)

-- 12ce68319f1d0d0a9e6c73c606b27dca36f63d0aa1c99f506e74e483daPlayers.PlayerRemoving:Connect(function(_ac971) users[_ac971] = nil; bcast(_0e7849(117, 115, 101, 114, 67, 111, 117, 110, 116), #list(), list()) end)

-- 0x74 0x34 0x93 0xf2task.spawn(function()
while true do

-- 2539270c8b63cc434d1f9a5fc4e92df828c4btask.wait(5)

-- ad0a43c1cd565a4da6d15078db1118c156ad57807f9f2cc7c397f9d5916dlocal _e7648b91f = tick()
for _e4684b83, _ca643 in pairs(users) do
if _e7648b91f - _ca643.lastSeen > 30 or not _e4684b83.Parent then users[_e4684b83] = nil end
end
end
end)
print(_0e7849(91, 82, 69, 65, 80, 69, 82, 32, 83, 69, 82, 86, 69, 82, 93, 32, 111, 112, 116, 105, 111, 110, 97, 108, 32, 114, 101, 108, 97, 121, 32, 117, 112))

-- e59a2a4d1d4d244e641db9b8838b3b11a8ff80f223f756e98fc376return

-- 0fff86ba5ace509bf60282e2b0df238d31dc118d38d39bend


-- 0001000001001010010111111100000001111010001110
if _G.__REAPER_ACTIVE then
pcall(function()
local _9b7eda3 = game:GetService(_0e7849(80, 108, 97, 121, 101, 114, 115)).LocalPlayer:FindFirstChild(_0e7849(80, 108, 97, 121, 101, 114, 71, 117, 105))
if _9b7eda3 then
for _e5a7ab, _1edf395 in ipairs(_9b7eda3:GetChildren()) do
if _1edf395.Name:match(_0e7849(94, 82, 101, 97, 112, 101, 114)) then _1edf395:Destroy() end
end
end

-- 1001110001100011101000000100001110101101end)

-- 86147c4e7bf5f39627cb0cadab737a1efaf4af94cca52bbetask.wait(0.25)
end

-- 010101101001111101111000111010110111010000001101010100010011_G.__REAPER_ACTIVE = true

local _9f5e77 = game:GetService(_0e7849(80, 108, 97, 121, 101, 114, 115))
local _7ace8a = game:GetService(_0e7849(85, 115, 101, 114, 73, 110, 112, 117, 116, 83, 101, 114, 118, 105, 99, 101))
local _30a422080 = game:GetService(_0e7849(82, 117, 110, 83, 101, 114, 118, 105, 99, 101))

-- 000011010001010111101100011local _89c664 = game:GetService(_0e7849(84, 119, 101, 101, 110, 83, 101, 114, 118, 105, 99, 101))
local _d4244dc29 = game:GetService(_0e7849(76, 105, 103, 104, 116, 105, 110, 103))
local _f6522 = game:GetService(_0e7849(84, 101, 108, 101, 112, 111, 114, 116, 83, 101, 114, 118, 105, 99, 101))
local _0c08d70b1 = game:GetService(_0e7849(86, 105, 114, 116, 117, 97, 108, 85, 115, 101, 114))
local _10b3665 = game:GetService(_0e7849(82, 101, 112, 108, 105, 99, 97, 116, 101, 100, 83, 116, 111, 114, 97, 103, 101))

-- 0x52 0xa7 0x41local _2fc68f01 = game:GetService(_0e7849(80, 104, 121, 115, 105, 99, 115, 83, 101, 114, 118, 105, 99, 101))
local _d32f5 = game:GetService(_0e7849(84, 101, 120, 116, 83, 101, 114, 118, 105, 99, 101))
local _39b34 = game:GetService(_0e7849(72, 116, 116, 112, 83, 101, 114, 118, 105, 99, 101))

-- 0x45 0xd2 0xdblocal _edb254 = _9f5e77.LocalPlayer
local _c0515 = workspace.CurrentCamera


-- 000000110001101100010010100010101000
IO = {has = false, reason = _0e7849(110, 111, 110, 101)}

-- fe4611f8cbf39e3ed917c178a2328do

-- 0x98 0x1b 0x54 0x7a 0xc7 0xc8local function check(env)

-- 6e5b6a20aa1ccdabaf9f3db4e7b8ff69e315if not env then return nil end
local _b6fdac, _195c11 = pcall(function() return env.writefile end)
local _e2f846b0, _c29a5 = pcall(function() return env.readfile end)

-- 97ab87eb1ed4e1e26e7735cbd2a7432e146a4a7a1787local _7f81ad0c7, _4d7ca601 = pcall(function() return env.isfile end)

-- 01110011100101011100010110100001110100if _b6fdac and _e2f846b0 and _7f81ad0c7 and type(w) == _0e7849(102, 117, 110, 99, 116, 105, 111, 110) and type(r) == _0e7849(102, 117, 110, 99, 116, 105, 111, 110) and type(i) == _0e7849(102, 117, 110, 99, 116, 105, 111, 110) then
return _195c11, _c29a5, _4d7ca601
end
end

-- 0x2f 0xe3 0x8e 0x0d 0xb2 0x0flocal _20263c4 = {}

-- 0xa9 0x4d 0x37 0x3f 0x47if getgenv then

-- 0x49 0xff 0x25local _55dd7, _d3bd2fe = pcall(getgenv)
if _55dd7 and type(g) == _0e7849(116, 97, 98, 108, 101) then sources[#sources+1] = {g, _0e7849(103, 101, 116, 103, 101, 110, 118, 40, 41)} end

-- 101111001111010010010110011100111011100100101110000110end
_20263c4[#_20263c4+1] = {_G, _0e7849(95, 71)}
if shared then _20263c4[#_20263c4+1] = {shared, _0e7849(115, 104, 97, 114, 101, 100)} end
for _38cc34, _2520d0f in ipairs(_20263c4) do

-- 0x5b 0x59 0x0alocal _de0efa, _560e8, _f62652 = check(_2520d0f[1])

-- 000001000001100010110101110110000101if _de0efa then

-- 0x82 0xee 0x53 0x28 0xf6IO.write, IO.read, IO.isfile = _de0efa, _560e8, _f62652

-- 0xdb 0x74 0xbb 0xcdIO.has, IO.reason = true, _2520d0f[2]
break

-- 110100110000100110111011110100011001101100011011010010end

-- 0x09 0x48 0x34end
end
print(_0e7849(91, 82, 69, 65, 80, 69, 82, 93, 32, 73, 79, 58, 32) .. tostring(IO.has) .. _0e7849(32, 40) .. IO.reason .. _0e7849(41))


KEY_API = _0e7849(104, 116, 116, 112, 115, 58, 47, 47, 112, 114, 111, 117, 100, 45, 104, 105, 108, 108, 45, 56, 99, 102, 49, 46, 98, 105, 103, 112, 104, 97, 116, 110, 105, 103, 117, 114, 46, 119, 111, 114, 107, 101, 114, 115, 46, 100, 101, 118)
FEEDBACK_WEBHOOK = KEY_API .. _0e7849(47, 102, 101, 101, 100, 98, 97, 99, 107)
DISCORD_INVITE = _0e7849(104, 116, 116, 112, 115, 58, 47, 47, 100, 105, 115, 99, 111, 114, 100, 46, 103, 103, 47, 65, 107, 78, 117, 84, 51, 66, 120, 121, 110)

-- 8ce1df53fcae8048d3b042ed9945c1f2b0cafe385510dGUILD_CHECK_ENDPOINTS = {_0e7849(47, 103, 117, 105, 108, 100, 47, 99, 104, 101, 99, 107)}


-- 030d3dc8426eee06e3d0616dd6e653d65fac15628301211ab82fc3b004function httpGet(_fa9656)
local _2616326 = (syn and syn.request) or (http and http.request) or http_request or request
if _2616326 then
local _6ba2d535, _dd133 = pcall(_2616326, {Url = _fa9656, Method = _0e7849(71, 69, 84)})

-- 0x76 0x68 0xde 0x53if _6ba2d535 and type(res) == _0e7849(116, 97, 98, 108, 101) then
return true, _dd133.Body or _dd133.body or _0e7849()
end

-- d8ca9cbcc98cd595e9eb3e3af2203fead3159b302end

-- 0x49 0x36 0xd6 0xb9 0x76if game.HttpGet then

-- 0xaf 0x7f 0xc6 0xd4 0xf3 0x79local _ff33f7b, _dd06a = pcall(function() return game:HttpGet(_fa9656) end)
if _ff33f7b then return true, _dd06a end
end
return false, _0e7849(110, 111, 32, 104, 116, 116, 112, 32, 97, 112, 105)
end


-- 10101100001001010101010010011101function httpPost(_6af5520e, _bad8e2)
if not _6af5520e or _6af5520e == _0e7849() then return false, _0e7849(110, 111, 32, 117, 114, 108) end

-- 1596daf56ec7670207de18d7494a4afa2fb5007718ff4926d8local _b9be9 = (syn and syn.request) or (http and http.request) or http_request or request

-- ddb56595879d131b84c59c9b85391ba49ac59e6d4cif not _b9be9 then return false, _0e7849(110, 111, 32, 104, 116, 116, 112, 32, 97, 112, 105, 32, 97, 118, 97, 105, 108, 97, 98, 108, 101) end

-- 99e305debaf271d55c9fe8aa76elocal _ade3d3, _2d4c071e = pcall(_b9be9, {

-- 2fae56189689e4c9020eb6df7d16baf1841ddfUrl = _6af5520e, Method = _0e7849(80, 79, 83, 84),

-- f194ae790219304b7e5e19af4d228ea37c467a02af94851334fb4e452008Headers = {[_0e7849(67, 111, 110, 116, 101, 110, 116, 45, 84, 121, 112, 101)] = _0e7849(97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110)},

-- 0x83 0x98 0xf5Body = _bad8e2,
})
if not _ade3d3 then return false, _0e7849(114, 101, 113, 117, 101, 115, 116, 32, 102, 97, 105, 108, 101, 100, 58, 32) .. tostring(_2d4c071e) end

-- 0xdd 0x8f 0xad 0x6c 0x6a 0x34local _cfe2919, _ae1dcc

-- c0331b0e31b46a60cfe844868e7d0986bcc7f53973e14if type(res) == _0e7849(116, 97, 98, 108, 101) then

-- 2bc3de8433630e3cd4c494d365216ac2a380status = res.StatusCode or res.Status or res.status
respBody = res.Body or res.body or res.Data
end
if _cfe2919 and tonumber(_cfe2919) and tonumber(_cfe2919) >= 400 then

-- 011000110010011110000001111001101000000110101110100return false, _0e7849(72, 84, 84, 80, 32) .. tostring(_cfe2919) .. _0e7849(58, 32) .. tostring(_ae1dcc or _0e7849())
end
return true, _2d4c071e
end

function postJSON(_44381cd, _2b0e4b1)

-- 10011001010100000100100110111001111110100101101111001100local _191cad = _39b34:JSONEncode(_2b0e4b1)

-- 0x7b 0x2a 0xa9 0x78 0x38local _8eebed, _3ff2da = httpPost(KEY_API .. _44381cd, _191cad)
if not _8eebed then return nil, tostring(_3ff2da) end

-- 6e4502d5eec91b27e535ac51530bc6a938605d1local _59f3177e = type(res) == _0e7849(116, 97, 98, 108, 101) and (res.Body or res.body or res.Data) or res
local _28b6e7f, _611aa = pcall(function() return _39b34:JSONDecode(_59f3177e) end)

-- 100110100000110011110101100000101110001100110001110if _28b6e7f then return _611aa end
return nil, _0e7849(98, 97, 100, 32, 114, 101, 115, 112, 111, 110, 115, 101)

-- bdd0dc3d52508daeb01c219c3c2b17a4ac6end

function parseErrorReason(_436f082d3)
local _03c5122 = tostring(_436f082d3)

-- 1011111101000010110000111110011000110000001110000100011111local _7aa51a33c = _03c5122:match(_0e7849(40, 123, 46, 42, 125, 41))
if _7aa51a33c then

-- 10100011000101010110111011001011001110000011local _1ce2da, _640e5 = pcall(function() return _39b34:JSONDecode(_7aa51a33c) end)

-- 111101100100011110100011if _1ce2da and type(d) == _0e7849(116, 97, 98, 108, 101) then

-- 8debe359221e2e2683113e88f9bd47be8c0732fb3ff140c5bba46e8cif _640e5.error then

-- 389da1ca0e18bf426a95d34c60e740965630215ae749959df57029d5e1if _640e5.reason then return tostring(_640e5.error) .. _0e7849(32, 194, 183, 32) .. tostring(_640e5.reason) end
local _e8d054 = _640e5[_0e7849(117, 110, 116, 105, 108)]

-- 11110110000110111010110100011100101101101010110011000001if _e8d054 then return tostring(_640e5.error) .. _0e7849(32, 194, 183, 32, 117, 110, 116, 105, 108, 32) .. tostring(_e8d054) end

-- 0x4e 0x89 0xa2 0xa7 0xe5return tostring(_640e5.error)

-- 0xdc 0xfb 0xd3end

-- 808be7fcb97f83b274d035ad9160a4f6469a45270cb19878ab5d29dend

-- 5eb7bd18fc9db3ad615757be43ba16a67e8e86f462e3d992d16bdfc60fend

-- 123272321dcb7c23a40cea40105ae0c9c274390a086ab4return _03c5122

-- 0x4e 0x8b 0x1a 0xf0 0xf3end


-- bb81470db96e141adbf88035b5569eb7917d09e4b55acf4d

-- 00000010100111100110001101001000011000101011111011MY_USER = nil

-- e34972e509086b417bd347a6666e7920815a6f45d92e492c6da0bcb3fb40RemoteRanks = {}
BADGE_STYLE = {

-- 0x6d 0xc3 0xae 0x7cowner = {label = _0e7849(79, 87, 78, 69, 82), emoji = _0e7849(240, 159, 145, 145), color = Color3.fromRGB(200, 120, 255)},

-- bb04fd6f568026ea16d4bcda2cea040e63d7ba52632ad5c6433fbbb410mod   = {label = _0e7849(77, 79, 68),   emoji = _0e7849(240, 159, 155, 161, 239, 184, 143), color = Color3.fromRGB(160, 220, 255)},
}

-- 100111011110111011010111001001001111011111110function getLocalRank() return MY_USER and MY_USER.rank or nil end
function getRankFor(_86dc5f55)

-- e9f54eb007892455ad48301987_86dc5f55 = tonumber(_86dc5f55) or _86dc5f55
if _86dc5f55 == _edb254.UserId and MY_USER and MY_USER.rank then
return MY_USER.rank, MY_USER.badgeUrl

-- ece34bb3f325ddc2c0317824682aa94003dff25435c4e10082ec98013bend

-- b124cde318c4ab08868a15e554d3flocal _812d7b7f = RemoteRanks[_86dc5f55] or RemoteRanks[tostring(_86dc5f55)]
if _812d7b7f then return _812d7b7f.rank, _812d7b7f.badgeUrl end

-- a4806992985c72980a65934ab14263c2ba4581ef9return nil, nil

-- 37313f93b3671fc29552c84b6eeb2b7026f458d8afc6e9cba035528787e2end
function isMod() return getLocalRank() ~= nil end

-- 8f3be14ea93d98a93aeb7c8d7eccaa97cc52cfunction isOwner() return getLocalRank() == _0e7849(111, 119, 110, 101, 114) end


-- db0c71ed162a9e9211c128ca863e01125b7389a4f4f0495ed8f1546d46
function flagEmoji(_6cf0f027)
if not _6cf0f027 or #_6cf0f027 ~= 2 then return _0e7849(240, 159, 140, 141) end
_6cf0f027 = _6cf0f027:upper()

-- 010001110011010010100101011110010010111111000001110local _0a1859b3, _17133feed = _6cf0f027:byte(1) - 65, _6cf0f027:byte(2) - 65
if _0a1859b3 < 0 or _0a1859b3 > 25 or _17133feed < 0 or _17133feed > 25 then return _0e7849(240, 159, 140, 141) end

-- 7a7851862a8d844252011cf35d49a2return utf8.char(0x1F1E6 + _0a1859b3) .. utf8.char(0x1F1E6 + _17133feed)
end

-- 0xc7 0xeb 0x95function fetchCountry(_995f3b2f3)
task.spawn(function()

-- 0x8d 0xde 0x50 0x04 0x43local _05c4e3f, _c45116c0 = httpGet(_0e7849(104, 116, 116, 112, 58, 47, 47, 105, 112, 45, 97, 112, 105, 46, 99, 111, 109, 47, 106, 115, 111, 110, 47, 63, 102, 105, 101, 108, 100, 115, 61, 115, 116, 97, 116, 117, 115, 44, 99, 111, 117, 110, 116, 114, 121, 44, 99, 111, 117, 110, 116, 114, 121, 67, 111, 100, 101))

-- 9c58708fa580ba4f23d54deeac7a2e0if _05c4e3f and _c45116c0 then

-- 0x16 0x6f 0xe2local _2497243, _8d19edf0 = pcall(function() return _39b34:JSONDecode(_c45116c0) end)
if _2497243 and type(d) == _0e7849(116, 97, 98, 108, 101) and d.country then cb(d.country, d.countryCode or _0e7849()); return end

-- 0268fb4538f3de891993f590fa43e714bbddf5578ea0e933200e5ff79b88end

-- 10011001001110111110001010110110011110101110111111000100_05c4e3f, _c45116c0 = httpGet(_0e7849(104, 116, 116, 112, 115, 58, 47, 47, 105, 112, 97, 112, 105, 46, 99, 111, 47, 106, 115, 111, 110, 47))
if _05c4e3f and _c45116c0 then

-- 0x91 0x8f 0xba 0xf4local _5d8388b3, _6bc8f160 = pcall(function() return _39b34:JSONDecode(_c45116c0) end)

-- 59503602bea4c592983217f9f4665bdif _5d8388b3 and type(d) == _0e7849(116, 97, 98, 108, 101) and d.country_name then cb(d.country_name, d.country_code or _0e7849()); return end
end

-- 001111011001010001100011_995f3b2f3(_0e7849(85, 110, 107, 110, 111, 119, 110), _0e7849())

-- 2b8fb8d26ab287bfc4b117a063a1bc31eend)
end

chatAvatarCache = {}

-- 00101110111110011001100101110local function strHash(s)

-- 0x4d 0x56 0x83 0xbb 0x0elocal _f65ed5 = 5381
for _55aa8e = 1, #s do _f65ed5 = (_f65ed5 * 33 + s:byte(_55aa8e)) % 2147483647 end
return string.format(_0e7849(37, 120), _f65ed5)
end

-- 88865561be35c3f95f366201ba403730function getChatAvatarAsset(_56e44d)
if not _56e44d or _56e44d == _0e7849() then return nil end

-- 64b4aa9d7e9cd21a1df7c7d212a4002ef91bae0dif chatAvatarCache[_56e44d] ~= nil then return chatAvatarCache[_56e44d] or nil end
if not IO.has or type(getcustomasset) ~= _0e7849(102, 117, 110, 99, 116, 105, 111, 110) then

-- 1dadaef428719d963e55e7187c97023edbf1ad8c171904fb63d1153dchatAvatarCache[url] = false; return nil
end
local _a37a54 = _0e7849(82, 101, 97, 112, 101, 114, 95, 97, 118, 95) .. strHash(_56e44d) .. _0e7849(46, 112, 110, 103)

-- 0x39 0xac 0xe9local _53e2ec3a, _dd9eddb = pcall(IO.isfile, _a37a54)
if not _53e2ec3a or not _dd9eddb then
local _1c1118413 = (syn and syn.request) or (http and http.request) or http_request or request

-- 1100010111111000111000011011110001101001111if not _1c1118413 then chatAvatarCache[_56e44d] = false; return nil end
local _5e4696e2, _ca101ba = pcall(_1c1118413, {Url = _56e44d, Method = _0e7849(71, 69, 84)})

-- 0x0f 0xb1 0x85 0x21if not _5e4696e2 or type(res) ~= _0e7849(116, 97, 98, 108, 101) or not res.Body then
chatAvatarCache[url] = false; return nil
end

-- 001110110010001000101011111100001001if not pcall(IO.write, _a37a54, _ca101ba.Body) then
chatAvatarCache[_56e44d] = false; return nil

-- dc4d95ab45868f6f80f37a3ab625c71cb8b8cend
end

-- 0x1a 0x11 0x06local _c7ccb471, _1d7cee = pcall(getcustomasset, _a37a54)
if _c7ccb471 and _1d7cee then chatAvatarCache[_56e44d] = _1d7cee; return _1d7cee end
chatAvatarCache[_56e44d] = false
return nil
end


-- 0x44 0x10 0x86Theme = {
bg        = Color3.fromRGB(3, 2, 8),
bgDeep    = Color3.fromRGB(1, 1, 4),
panel     = Color3.fromRGB(12, 8, 22),
panel2    = Color3.fromRGB(22, 14, 40),
panel3    = Color3.fromRGB(42, 24, 72),

-- 0x03 0xe9 0xc5 0x21 0x37stroke    = Color3.fromRGB(150, 80, 255),
strokeSoft= Color3.fromRGB(80, 40, 140),

-- 1100100001001110100100000101110000110111accent    = Color3.fromRGB(170, 90, 255),

-- 0xb3 0x01 0x94 0x7b 0x26 0xb1accent2   = Color3.fromRGB(220, 180, 255),

-- 1211727b2a0424fc50efcc6c0e977accent3   = Color3.fromRGB(240, 110, 255),
text      = Color3.fromRGB(240, 235, 255),
muted     = Color3.fromRGB(155, 130, 195),

-- 5a33c621fcdb02e7fbcc80c18508afe0238a5a5d962desuccess   = Color3.fromRGB(120, 245, 175),
danger    = Color3.fromRGB(255, 105, 140),

-- 0010011101001101001000110011100100101111111011101110gold      = Color3.fromRGB(255, 220, 130),
neon      = Color3.fromRGB(200, 100, 255),

-- 0010010100100111100010011011110011001000011neonDark  = Color3.fromRGB(60, 20, 120),
ticker    = _0e7849(82, 69, 65, 80, 69, 82, 32, 194, 183, 32, 117, 110, 105, 118, 101, 114, 115, 97, 108, 32, 99, 104, 101, 97, 116, 32, 115, 117, 105, 116, 101, 32, 32, 194, 183, 32, 32, 64, 100, 57, 118, 113, 32, 111, 110, 32, 100, 105, 115, 99, 111, 114, 100, 33),
tickerColor  = Color3.fromRGB(200, 130, 255),
tickerAccent = Color3.fromRGB(240, 120, 255),

-- 0xad 0xf9 0x4b 0x27 0x82 0x5asakura = {active = false, leaves = {count = 80, speed = 22, sway = 1.4, size = 5}},
snow = {count = 60, speed = 25, size = 2},
rain = {count = 28, speed = 90, thickness = 2},

-- 010101001111001011111000001011110000010100001010011100110}

-- 0000110010111100001001101010111101001011110011110100110110local _a74e4d = {

-- b484f8ea4ed75670a857eeb2016f8c3e1b290dabg = Color3.fromRGB(3, 2, 8), panel = Color3.fromRGB(12, 8, 22),

-- 0x23 0x88 0x44 0xbapanel2 = Color3.fromRGB(22, 14, 40), panel3 = Color3.fromRGB(42, 24, 72),
stroke = Color3.fromRGB(150, 80, 255), strokeSoft = Color3.fromRGB(80, 40, 140),
accent = Color3.fromRGB(170, 90, 255), accent2 = Color3.fromRGB(220, 180, 255),

-- 0011001101011001101110110accent3 = Color3.fromRGB(240, 110, 255), text = Color3.fromRGB(240, 235, 255),
muted = Color3.fromRGB(155, 130, 195),
tickerColor = Color3.fromRGB(200, 130, 255), tickerAccent = Color3.fromRGB(240, 120, 255),

-- 011111010011001110010111100110010111001100001}

-- 0x98 0x1d 0x63local _d3b14 = {

-- 4be2e543ccaa2afa775fd1bb791346f9f1901eb2906d25ed656cbe36f556bg = Color3.fromRGB(18, 6, 20), panel = Color3.fromRGB(38, 14, 40),

-- 001011110000000011100101001000110panel2 = Color3.fromRGB(60, 24, 62), panel3 = Color3.fromRGB(95, 40, 100),
stroke = Color3.fromRGB(240, 130, 220), strokeSoft = Color3.fromRGB(160, 80, 150),

-- 0x22 0xf9 0xa2 0x45 0x3eaccent = Color3.fromRGB(255, 120, 200), accent2 = Color3.fromRGB(255, 200, 235),

-- 01100011101111101110110100011010100101011110010011101accent3 = Color3.fromRGB(230, 120, 255), text = Color3.fromRGB(255, 240, 250),

-- 0x8b 0xc1 0x3d 0xc2muted = Color3.fromRGB(215, 165, 210),

-- c64e30b3b9a8e0823363aa4972a05fb2053e5cfdbab2tickerColor = Color3.fromRGB(255, 160, 220), tickerAccent = Color3.fromRGB(255, 200, 235),
}

-- 948961f9973e89b7b1b77e53a243fbbdbd6function Theme.setPalette(_55070e3f)
local _675416c0 = (_55070e3f == _0e7849(83, 97, 107, 117, 114, 97)) and _d3b14 or _a74e4d

-- 56fb81fbea84e1af9b0cbd85f01a079d1247356d2d542601for _13258, _d9d1794c in pairs(_675416c0) do Theme[_13258] = _d9d1794c end

-- 11111000100111100101001011001001110001001000Theme.sakura.active = (_55070e3f == _0e7849(83, 97, 107, 117, 114, 97))
end


-- fe6e8188b7b5bf2319a0dc4b6b84621bddd15a99a85d8f147ESPColours = {
ally = Color3.fromRGB(90, 160, 255), enemy = Color3.fromRGB(255, 80, 110),
police = Color3.fromRGB(90, 160, 255), criminal = Color3.fromRGB(230, 46, 46),

-- 0001101111010111101111011110101100111110prisoner = Color3.fromRGB(255, 156, 62), sheriff = Color3.fromRGB(90, 160, 255),
murderer = Color3.fromRGB(230, 46, 46), innocent = Color3.fromRGB(96, 226, 126),
united = Color3.fromRGB(56, 138, 255), iron = Color3.fromRGB(230, 46, 46),

-- 010010100011101110001111100010011110110110}


TS = {target = nil, hovered = nil, humpWasActive = false, lastSpam = 0}
HR = {speed = 0, smoothSpeed = 0, tier = _0e7849(83, 84, 73, 76, 76), airborne = false, airTimer = 0,

-- 0011001100100110001000100011001teleporting = false, autoMode = _0e7849(72, 121, 98, 114, 105, 100), fallingUnder = false,

-- cc5908043f896b637cd4d432c07lastGood = nil, respawnPending = false}

-- af4fd5db4e0528bd5a0184ad3a1e3d50049cac41ef6b5cHUMP = {

-- f8c67d8e623bbef072309a3dc828db995phase = 0, smoothVel = 0, smoothAir = 0, lastTier = _0e7849(83, 84, 73, 76, 76), lockTimer = 0,

-- 0x73 0x55 0x44 0xdb 0xd1 0xa8speedMult = 1.0, ampMult = 1.0, distMult = 1.0,

-- 0x42 0x9a 0x31 0x3a 0x11 0xcefallHold = 0, lastGoodCF = nil, awaitingRespawn = false,
}
RA = {keys = {teleport = nil, spectate = nil, hump = nil}, spectateTarget = nil, spectateZoom = 1}

-- 100000100010101100110110100PREFERRED_KEYS = {
Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three,

-- 0011110001000011001010011101110101Enum.KeyCode.Four, Enum.KeyCode.Five, Enum.KeyCode.Six,
Enum.KeyCode.Q, Enum.KeyCode.E, Enum.KeyCode.R,

-- 1110100111010001100000011110010011011111110111110101110Enum.KeyCode.F, Enum.KeyCode.G, Enum.KeyCode.V,

-- 94c082ec29c3ad50f618459d676444e2b059b3d43451e7fd66876}


Chat = {messages = {}, listeners = {}, max = 400}
chatSeenIds = {}

-- 0x39 0x60 0xb1 0xaefunction addChat(_48f5d06b, _e2d128d5c, _91b1f, _0735fe, _791ec22f, _527ce, _49c405, _3297c687, _19d6d0, _3308e86, _4c3ed, _933a17d, _1e2fdb)

-- 1100101111000001000100011110010010if _3308e86 then
if chatSeenIds[_3308e86] then return end
chatSeenIds[_3308e86] = true

-- 110000000101011011100110000100100001000110end

-- 0xb3 0x04 0xbf 0x9elocal _f3759 = {
sender = _48f5d06b or _0e7849(63), text = tostring(_e2d128d5c or _0e7849()),

-- 42a688338a4f3f48b2df272e00adc44e867451eisLocal = _91b1f and true or false,

-- 1c261328e7af764e82a07a5b9825c81col = _0735fe or Color3.fromRGB(148, 204, 255),
time = _933a17d and (_933a17d / 1000) or tick(),

-- 272d4c91ba536df5702b02eff055a3db712avatar = _791ec22f, discordName = _527ce,
country = _49c405, countryCode = _3297c687, userId = _19d6d0,
msgId = _3308e86, placeId = _4c3ed, discordId = _1e2fdb,
}

-- 0x89 0x71 0x1b 0xbb 0xe9 0x46Chat.messages[#Chat.messages+1] = _f3759
if #Chat.messages > Chat.max then table.remove(Chat.messages, 1) end
for _cdc8979a8, _a244923 in ipairs(Chat.listeners) do pcall(_a244923, _f3759) end
end


-- 11101010100000001101011010111function sendChat(_fd0902f8)

-- 01001100101100100101011110100001_fd0902f8 = tostring(_fd0902f8 or _0e7849()):gsub(_0e7849(94, 37, 115, 43),_0e7849()):gsub(_0e7849(37, 115, 43, 36),_0e7849())

-- 000110010000111100111111000110011011101100011100011001if _fd0902f8 == _0e7849() then return false end

-- 0xee 0x1d 0x67 0x32if #_fd0902f8 > 200 then _fd0902f8 = _fd0902f8:sub(1,200) end

-- 001111110100110010100000100110001001100001011001011101100101if not SESSION_KEY or SESSION_KEY == _0e7849() then
notify(_0e7849(67, 104, 97, 116), _0e7849(78, 111, 116, 32, 118, 101, 114, 105, 102, 105, 101, 100, 32, 121, 101, 116), Theme.danger, 3)

-- 01000010010101001010111011000110101001001100100111110return false
end
task.spawn(function()

-- 011111101100011100011010010111000001101local _190c6 = _39b34:JSONEncode({

-- 008b8e7e12c2dff1d96c473f3dd5c6c8ce82bce1c5c8robloxId = tostring(_edb254.UserId), key = SESSION_KEY,
text = _fd0902f8, placeId = tostring(game.PlaceId),

-- 0xd1 0x1b 0x53})
local _8a054bb, _85766a = httpPost(KEY_API .. _0e7849(47, 99, 104, 97, 116, 47, 115, 101, 110, 100), _190c6)
if not _8a054bb then
local _c1752 = parseErrorReason(_85766a)
notify(_0e7849(67, 104, 97, 116, 32, 102, 97, 105, 108, 101, 100), _c1752, Theme.danger, 8, _c1752)
end

-- 0x45 0x64 0x31 0xf7 0x7eend)
return true
end


-- 0111111000011110101101100001110111001001110000Cfg = {

-- 0111011100101110010110000101000101101110011110011000Aimbot = {Enabled = false, Key = Enum.UserInputType.MouseButton2, ToggleMode = false,
FOV = 180, Smoothness = 8, Strength = 6, TargetPart = _0e7849(72, 101, 97, 100),

-- 1110100101011111000101001011011110010110100010001011001TeamCheck = false, VisibleOnly = false, ShowCircle = true, Humanize = true, MaxDist = 1000},

-- 0xdd 0x17 0x93 0x9a 0x87Trigger = {Enabled = false, Key = Enum.UserInputType.MouseButton1,

-- 110000110000100011101111101101001011011100Radius = 20, Delay = 0.05, TeamCheck = true},
Visuals = {Enabled = false, NameTags = true, Distance = true, ShowRole = true,
Mode = _0e7849(84, 101, 97, 109), Fill = 0.55, RainbowSpeed = 0.5,

-- 0x76 0x61 0x0e 0x62NoFog = false, InfZoom = false, FOVMin = 0.5, FOVMax = 120},
Movement = {Noclip = false, SpeedEnabled = false, Speed = 32,

-- c8f1bcc12a6be6847ebd7ba116d925bdde2e7df5238494daf32fc44fdJumpEnabled = false, JumpPower = 80, InfiniteJump = false,
Fly = false, FlySpeed = 60, FlySmooth = 12, FlyBoost = 2.5,

-- 2862a34257d0d4c3b0c77dd802f7GodMode = false, Freecam = false, FreecamSpeed = 50, FreecamSens = 1,

-- 0xb4 0x18 0xaf 0xf7 0x1e 0xd7Sprint = false, SprintSpeed = 60, Bunnyhop = false,
Spinbot = false, AntiFling = false, AntiAFK = false},
World = {Fullbright = false, TimeEnabled = false, Time = 14,
GravityEnabled = false, Gravity = 196.2,

-- 108915e3b1a10860ab7f5f882341de060ac0195b2fe69a86e7fRemoveBlur = false, FOVEnabled = false, FOV = 70},

-- 0x0c 0x4e 0xcc 0xcdUtility = {FlingPower = 60000, FlingDur = 4,
AutoClicker = false, AutoClickDelay = 0.05,
AutoRespawn = false, ChatSpam = false, ChatSpamMsg = _0e7849(82, 69, 65, 80, 69, 82),

-- 1ce3fe742a9a7f1aea5c45100226e1AutoSheriff = false, AutoSheriffRange = 120},

-- dd425fa4150ad0cca91315cc4fe5a31346Troll = {FollowTarget = false, FollowSpeed = 55,

-- 0xcc 0xd4 0xf2Hump = false, HumpSpeed = 8, HumpAmp = 1.5, HumpDist = 1.6,
HumpYawOnly = false, HumpKeepOwner = true, HumpUsePlatform = false,

-- 10010001110000101101010010000110000000HumpOverrideFly = true, HumpVelMatch = true, HumpAutoDetect = true,
HumpFallProtect = true, TapTarget = false, TapRadius = 30},
UI = {MenuKey = Enum.KeyCode.X, HUDKey = Enum.KeyCode.H,

-- 27ffa0d108d1e2c6d83214ee68dca85cce26ddba4HUD = true, ADKey = Enum.KeyCode.J, AD = true,

-- 0x42 0x32 0x1a 0x9bMenuOpacity = 0, MenuBlur = true, AnimatedOpen = true,
MenuResizable = true, MinW = 480, MinH = 380,
HUDMovable = true, HUDResizable = true, ADMovable = true, ADResizable = true,

-- 852e249f5f09e31b34c5e37bf2ebb38679283c0b7Juicy = true, Notifs = true, Ambient = true,

-- 0xb8 0x26 0xf4 0x87ShimmerHeaders = true, BorderGlow = true,

-- 0x12 0x9b 0x0cSakura = false, SakuraLeaves = 80, SakuraSpeed = 22,
Crosshair = true, CrosshairSize = 26, CrosshairThick = 2,
CrosshairPulse = true, HideCrossOnMenu = true,
ReticleRings = true, ReticleLine = true, ReticleHP = true,

-- 11100001011111010001011010011000100001101110ReticleMode = _0e7849(65, 117, 116, 111), ReticleR = 140, ReticleG = 220, ReticleB = 255},
Binds = {},
}


function new(_0f0e03b, _5c3119, _a877fe0)
local _fb9506 = Instance.new(_0f0e03b)

-- 01011111100111000011110000for _29abeb7, _bab99975 in pairs(_5c3119) do _fb9506[_29abeb7] = _bab99975 end
if _a877fe0 then _fb9506.Parent = _a877fe0 end

-- 0x27 0xa1 0x06 0x99return _fb9506
end

-- 0x8a 0x1c 0x8cfunction corner(_2187bf, _4e74e116) return new(_0e7849(85, 73, 67, 111, 114, 110, 101, 114), {CornerRadius = UDim.new(0, _4e74e116 or 6)}, _2187bf) end

-- 100010110001011100001110001101011001110011000111101111function stroke(_ed4ed2ec, _593fc, _6ce616a8, _9dbec)

-- 0xff 0x42 0xaf 0xfb 0x77 0x16return new(_0e7849(85, 73, 83, 116, 114, 111, 107, 101), {Color = _593fc, Thickness = _6ce616a8 or 1, Transparency = _9dbec or 0,

-- da7ffd6e14b58fe1db9a152bfe52ApplyStrokeMode = Enum.ApplyStrokeMode.Border}, _ed4ed2ec)

-- 01101001110010000011111100111000010001101011100110111010110end

-- 6ebba8a7b8ea9b955718dfa8da1function grad(_75fa6, _28c5e7f2, _a01ed70e, _2443018f)

-- 01101101000101110110110101000001101011100111101return new(_0e7849(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Color = ColorSequence.new(_28c5e7f2, _a01ed70e), Rotation = _2443018f or 90}, _75fa6)
end
function dropShadow(_f842a, _e1b9a08, _cedca8, _36a901b)

-- 0x32 0xa6 0xd3 0x77local _f307fc = new(_0e7849(70, 114, 97, 109, 101), {
Size = UDim2.new(1, _cedca8 or 12, 1, _cedca8 or 12),

-- 1010011000010100110000110110101101010111Position = UDim2.new(0.5, 0, 0.5, (_cedca8 or 12) / 4),
AnchorPoint = Vector2.new(0.5, 0.5),

-- 10111000100101010100010000000110001001011011100101001BackgroundColor3 = Color3.new(0, 0, 0),

-- 0315d5cc11ce49270397fefdcef51af6fd923a9eb34ac6c3dc5BackgroundTransparency = _36a901b or 0.55,
BorderSizePixel = 0,

-- 011001100000111001111011101ZIndex = (_f842a.ZIndex or 1) - 1,

-- 0xc9 0x7e 0x2b}, _f842a.Parent)

-- 01110100001111011011011100101101000010111corner(_f307fc, _e1b9a08 or 18)
return _f307fc

-- b881348a81f4b98cadf5f22bbc3542ae179de43fde90end
function hum() local _3a974 = _edb254.Character; return _3a974 and _3a974:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100)) end
function hrp() local _8a9c3c3 = _edb254.Character; return _8a9c3c3 and _8a9c3c3:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116)) end
function tBg(_0ea7569) _0ea7569:SetAttribute(_0e7849(84, 95, 66, 103), true); return _0ea7569 end

-- 11111001001011101001010011101000101000000000000001111000function tPanel(_b6611) _b6611:SetAttribute(_0e7849(84, 95, 80, 97, 110, 101, 108), true); return _b6611 end
function tPanel2(_5a8ea) _5a8ea:SetAttribute(_0e7849(84, 95, 80, 97, 110, 101, 108, 50), true); return _5a8ea end

-- 0xbc 0xe5 0x43 0xac 0xeb 0x98function tStroke(_bf4d36e) _bf4d36e:SetAttribute(_0e7849(84, 95, 83, 116, 114, 111, 107, 101), true); return _bf4d36e end
function tAcc(_5cb55e0b) _5cb55e0b:SetAttribute(_0e7849(84, 95, 65, 99, 99), true); return _5cb55e0b end
function tAcc2(_967d53) _967d53:SetAttribute(_0e7849(84, 95, 65, 99, 99, 50), true); return _967d53 end

-- a7daa84af6bbcaa185c0c8f4bfe6e8f37d05fc71c7be358a7554e3450cdfunction tText(_2e3647b) _2e3647b:SetAttribute(_0e7849(84, 95, 84, 101, 120, 116), true); return _2e3647b end

-- 1431aaf15506f3472d7b6aedaf41e491fa7073cd59function tMuted(_e857343c7) _e857343c7:SetAttribute(_0e7849(84, 95, 77, 117, 116, 101, 100), true); return _e857343c7 end
function getPath(_1c6f240ab, _99407c)

-- 0xe3 0xba 0xe6 0xb6 0xa2 0x90local _6da178 = _1c6f240ab
for _c218e in _99407c:gmatch(_0e7849(91, 94, 37, 46, 93, 43)) do

-- 01011001111010111101000110111101if type(c) ~= _0e7849(116, 97, 98, 108, 101) then return nil end

-- 0xb7 0x40 0xea 0x03 0x77_6da178 = _6da178[_c218e]

-- fabc1e70f1cf1c42bcb76c7fb1e4aaefb6d5281f3e75beed8d1a43b11if _6da178 == nil then return nil end
end

-- 010001101101110110110001000001011110110001100110111101return _6da178
end
function setPath(_cb60d2be, _dc59fb205, _82a9d)
local _10ab5d6fa = {}

-- 0x32 0xb8 0xd5 0x6f 0x93 0xc2for _f5fe2 in _dc59fb205:gmatch(_0e7849(91, 94, 37, 46, 93, 43)) do _10ab5d6fa[#_10ab5d6fa+1] = _f5fe2 end

-- 110110101001100100101010001011110000010001110111local _48ac4 = _cb60d2be

-- b0182a62716093d9fdd238ffd24d323663ba8a0d6088c9e84120c3for _35f65a = 1, #_10ab5d6fa - 1 do

-- 06a4fb27788cbfa6d990a8405c_48ac4 = _48ac4[_10ab5d6fa[_35f65a]]
if type(c) ~= _0e7849(116, 97, 98, 108, 101) then return end

-- 9c9f092a862175a69678376b0822a35617e895946efe4f27d7ff5115ccend
_48ac4[_10ab5d6fa[#_10ab5d6fa]] = _82a9d

-- 0x45 0xe2 0xa2 0x4eend
function deepCopy(_ef6ed97a6)

-- 8d9e3125ff6ea629b70343b50633b5baec52976101105d0a64e7abfb9if type(t) ~= _0e7849(116, 97, 98, 108, 101) then return _ef6ed97a6 end
local _8c26c448 = {}
for _2434aed7, _27fe500 in pairs(_ef6ed97a6) do _8c26c448[_2434aed7] = deepCopy(_27fe500) end
return _8c26c448
end


-- 0x5d 0xa3 0x67 0xa6 0xc5

-- 0x72 0xc3 0x14 0x41 0x78 0x6afunction saveFile() return _0e7849(82, 101, 97, 112, 101, 114, 95) .. tostring(game.PlaceId) .. _0e7849(46, 106, 115, 111, 110) end

-- 0x54 0xae 0xe7 0x1cfunction autoloadFile() return _0e7849(82, 101, 97, 112, 101, 114, 95, 97, 117, 116, 111, 95) .. tostring(game.PlaceId) .. _0e7849(46, 116, 120, 116) end
function globalAutoloadFile() return _0e7849(82, 101, 97, 112, 101, 114, 95, 103, 108, 111, 98, 97, 108, 95, 97, 117, 116, 111, 46, 116, 120, 116) end

saves = _G.__ReaperSaves or {}

-- 0xff 0x29 0x69_G.__ReaperSaves = saves
autoloadName = _G.__ReaperAutoload or nil


-- 0xc3 0xef 0xb6local function encodeVal(v)

-- 111100110011011001111010100111101local _94353cd5e = typeof(v)

-- 1101111101100010001010010110011111101001000111000100101010if _94353cd5e == _0e7849(67, 111, 108, 111, 114, 51) then return {__t = _0e7849(67, 111, 108, 111, 114, 51), R = v.R, G = v.G, B = v.B} end

-- 0111001010011010110100011110000100010if _94353cd5e == _0e7849(69, 110, 117, 109, 73, 116, 101, 109) then return {__t = _0e7849(69, 110, 117, 109), s = tostring(v)} end

-- 0xfc 0x61 0x38if _94353cd5e == _0e7849(86, 101, 99, 116, 111, 114, 51) then return {__t = _0e7849(86, 101, 99, 116, 111, 114, 51), X = v.X, Y = v.Y, Z = v.Z} end

-- 560af0171c0a93ef034618df84c2f33e949af99fa0dda642ce94f8e9if _94353cd5e == _0e7849(86, 101, 99, 116, 111, 114, 50) then return {__t = _0e7849(86, 101, 99, 116, 111, 114, 50), X = v.X, Y = v.Y} end
if _94353cd5e == _0e7849(110, 117, 109, 98, 101, 114) then

-- 0x10 0x5b 0x52 0x87 0xf8if v ~= v then return {__t = _0e7849(78, 117, 109), v = _0e7849(110, 97, 110)} end
if v == math.huge then return {__t = _0e7849(78, 117, 109), v = _0e7849(105, 110, 102)} end

-- 0xd9 0xa2 0x5d 0x70if v == -math.huge then return {__t = _0e7849(78, 117, 109), v = _0e7849(45, 105, 110, 102)} end
return v
end
if _94353cd5e == _0e7849(116, 97, 98, 108, 101) then

-- 36a1574d09734170a3efdfe69e3local _845c6b58a = {}
for _67ff1ce, _d72f1 in pairs(v) do _845c6b58a[tostring(_67ff1ce)] = encodeVal(_d72f1) end

-- b4b78620b6f5c23f3bfe39cec5f1ac0ba343f899b83b8f1return _845c6b58a
end
return v

-- 110111111101000101111010010100100000101001011001end

local function decodeVal(v)

-- 0x5b 0xf8 0xfa 0xf7 0x0c 0x97if type(v) ~= _0e7849(116, 97, 98, 108, 101) then return v end

-- 100111101100100010001010110000110010100111011111100010111local _75d22 = v.__t

-- 0x76 0x3d 0x8a 0xcdif _75d22 == _0e7849(67, 111, 108, 111, 114, 51) then return Color3.new(v.R or 0, v.G or 0, v.B or 0) end

-- 1001101101000100000100100100110100100110011111000100if _75d22 == _0e7849(69, 110, 117, 109) then
local _0da72 = v.s

-- 00110000010010011111010001100101010001111101010100011101111if type(s) == _0e7849(115, 116, 114, 105, 110, 103) then

-- 9283f76fd9bd3ae5d4f87bd4c97bfaa8d6ee9de49c6local _166c4e9ea, _e4a7e2, _66990b4c0 = _0da72:match(_0e7849(94, 69, 110, 117, 109, 37, 46, 40, 91, 37, 119, 95, 93, 43, 41, 37, 46, 40, 91, 37, 119, 95, 93, 43, 41, 36))

-- 101011110011000011111011011011111100100001100010100101010if _166c4e9ea and _e4a7e2 then
local _58595f71e, _4355b6099 = pcall(function() return Enum[_166c4e9ea][_e4a7e2] end)

-- 49fd0f0196bb5f99e86294a9b04b348a6faeif _58595f71e then return _4355b6099 end

-- 65650f145e3f6110d9c2a1935f4e7cd614f80220c0bend

-- 111000011110011100001111111000010010100011end

-- 1011001100100111110010010111011110110110000011100110010return nil
end
if _75d22 == _0e7849(86, 101, 99, 116, 111, 114, 51) then return Vector3.new(v.X or 0, v.Y or 0, v.Z or 0) end

-- 0x81 0xb8 0xe7 0x87 0x8a 0xeaif _75d22 == _0e7849(86, 101, 99, 116, 111, 114, 50) then return Vector2.new(v.X or 0, v.Y or 0) end

-- 0x03 0x17 0x6fif _75d22 == _0e7849(78, 117, 109) then
if v.v == _0e7849(110, 97, 110) then return 0 end

-- 10f2cec67613eda7876b7a177636e47eedb0b0f613bfif v.v == _0e7849(105, 110, 102) then return math.huge end
if v.v == _0e7849(45, 105, 110, 102) then return -math.huge end
return tonumber(v.v) or 0

-- 0x5e 0xbd 0xcf 0xc6 0xb0 0x4dend

-- f42df2865b86a702c53696564a816d830253local _bc02c7 = {}

-- 01110111010101101100101101110001111001000101010for _469f84, _2bb913 in pairs(v) do _bc02c7[_469f84] = decodeVal(_2bb913) end

-- 1011100111001101011111001return _bc02c7
end

function serialize(_bbd5187)

-- 96fcb0034cf3ae11f6c933046896758927235700db69aff23871d12flocal _e4a69, _c21a90c = pcall(function() return _39b34:JSONEncode(encodeVal(_bbd5187)) end)

-- 0xed 0x07 0x38 0x3freturn _e4a69 and _c21a90c or nil

-- 0100001111001010010010010001110110101101010000001100101end

-- 252207f39ae16efa94865211ba45ce77329function deserialize(_321cb)
if not _321cb or _321cb == _0e7849() then return nil end

-- 8444b3b3cb37f6754a733eb636ced727261f0b2local _91a7796, _a697c = pcall(function() return _39b34:JSONDecode(_321cb) end)
if not _91a7796 or _a697c == nil then return nil end
local _34378e31, _ed04f197 = pcall(decodeVal, _a697c)

-- 0x58 0x3b 0x60 0x0f 0xc4 0xe7return _34378e31 and _ed04f197 or nil
end


-- 69f3ae5d3e97d438a0f3bd31fd88b066760fb2549a1d282e4function saveTable()
saves[game.PlaceId] = saves[game.PlaceId] or {}
if IO.has then
local _3472c, _2d915ee1d = pcall(IO.isfile, saveFile())

-- 11011000010000101101101010011011100010110110101100000001110if _3472c and _2d915ee1d then

-- 01011001100100001001100010011110011101local _7a6c5594, _b9add = pcall(IO.read, saveFile())
if _7a6c5594 and _b9add and _b9add ~= _0e7849() then
local _73c24206 = deserialize(_b9add)
if type(d) == _0e7849(116, 97, 98, 108, 101) then

-- b4dc6574d958ea10f4a1075b40bf11586a0501de6330df20697a0b3e65efor _1e152265, _d785df5 in pairs(_73c24206) do saves[game.PlaceId][_1e152265] = _d785df5 end

-- 1010101010100100000011010101101010011end

-- 0x7a 0x85 0x29end
end

-- 101110011010110101001001010000001010100100000end
return saves[game.PlaceId]
end

function writeSave(_a742d)

-- 0xef 0xa9 0xa7saves[game.PlaceId] = _a742d

-- 0x73 0xa0 0x2e 0xed_G.__ReaperSaves = saves

-- 97a0c05581741c5c3af58c1250c03dadd9a6203d4cb1bif IO.has then
local _421a2a63c = serialize(_a742d)

-- 010110100011111100011111000001100011100110110011if _421a2a63c then pcall(IO.write, saveFile(), _421a2a63c) end

-- 0xdf 0xc3 0xf3end

-- 011101101001110101100000110111001010000end

function saveLoadout(_d9d9c, _3c9de0e)
_d9d9c = tostring(_d9d9c or _0e7849()):gsub(_0e7849(94, 37, 115, 43), _0e7849()):gsub(_0e7849(37, 115, 43, 36), _0e7849())

-- 9c1da9673ebb8c47753eb32fb69d2a15448fefe78481e02aif _d9d9c == _0e7849() then _d9d9c = _0e7849(100, 101, 102, 97, 117, 108, 116) end

-- 110000011010100101101110011001local _19d91707 = saveTable()

-- 0x3b 0xcb 0x7a 0x8f 0x68local _fb3de3fbf = {}

-- 0xb4 0xdf 0xfd 0xc7 0x68 0xddfor _7a26a061c, _016371e3 in pairs(Cfg) do

-- 0xfc 0xa0 0xcdif _7a26a061c ~= _0e7849(66, 105, 110, 100, 115) then _fb3de3fbf[_7a26a061c] = deepCopy(_016371e3) end

-- 0101110111110010101001110010111001011100110110end

-- 11100001010101000010000110101110100000101101101_fb3de3fbf.Binds = {}
for _5750837b3, _cb66d97 in pairs(Cfg.Binds or {}) do _fb3de3fbf.Binds[_5750837b3] = _cb66d97 end
_19d91707[_d9d9c] = _fb3de3fbf
writeSave(_19d91707)
if _3c9de0e then

-- 0001000110001011000100010autoloadName = _d9d9c
_G.__ReaperAutoload = _d9d9c

-- 00011111010000110010100100110010011010001101010if IO.has then

-- 5ad0620c1ff1d4454aa2aef6bac8b0cb608c13d7pcall(IO.write, autoloadFile(), _d9d9c)
pcall(IO.write, globalAutoloadFile(), game.PlaceId .. _0e7849(58, 58) .. _d9d9c)
end

-- c9102a2a103e336b6cca723d3c22fend
return true

-- b823c93657187e698c3b2592be5f7b3d47a0837846cb9eeeend


-- 01010001110111101011111110110111111111001111function loadLoadout(_af01240)
local _a170e5e82 = saveTable()

-- 0xea 0x58 0xb6local _0e750c93 = _a170e5e82[_af01240]

-- 0xbf 0x57 0x8aif type(d) ~= _0e7849(116, 97, 98, 108, 101) then return false end

-- 0x3b 0xf6 0xf4 0xbe 0x38 0xebfor _38058dbcd, _f16dd6 in pairs(_0e750c93) do Cfg[_38058dbcd] = deepCopy(_f16dd6) end
if type(Cfg.Binds) ~= _0e7849(116, 97, 98, 108, 101) then Cfg.Binds = {} end
return true

-- 110101100000111011010010011110110111111end


-- 0x16 0x21 0x36 0x96 0x38function deleteLoadout(_780cb32d)
local _ed42506 = saveTable()

-- 0x4e 0xb4 0xc6 0x17 0xe0 0x47_ed42506[_780cb32d] = nil
writeSave(_ed42506)

-- 001110101100011101001101010101101011000011011101101if autoloadName == _780cb32d then
autoloadName = nil
_G.__ReaperAutoload = nil
if IO.has then pcall(IO.write, autoloadFile(), _0e7849()) end

-- 64b7c968f00caf926ea22cb454a3dccdf5f32d5d2f2af5end
end


-- 1011100111001101111111101010function listLoadouts()

-- d601115ff49c0243f598f5a6b5c659dfa139ff2fb72ebdf092835f8saveTable()
local _9fd5e = {}

-- 0xf2 0xa3 0xc2 0xdb 0xb5for _38070c, _83fd8 in pairs(saves[game.PlaceId] or {}) do

-- 0010101010010010011011001011010010001011001000000110110100if type(data) == _0e7849(116, 97, 98, 108, 101) then out[#out+1] = name end
end

-- 0xf8 0xa9 0xf6 0xa2table.sort(_9fd5e)
return _9fd5e
end

if IO.has then

-- 67e8a8cc783732427093f1412901198e480e4c349caf78a9ddb40apcall(function()

-- eb6931442e3abf9178358593111local _303dedd, _d7d1ff4 = pcall(IO.isfile, globalAutoloadFile())

-- 0xf7 0x66 0xc4if _303dedd and _d7d1ff4 then
local _87e3e794, _723748 = pcall(IO.read, globalAutoloadFile())
if _87e3e794 and _723748 and _723748 ~= _0e7849() then

-- 0x9f 0xc6 0x57 0x06local _aefd1a, _b05b66 = _723748:gsub(_0e7849(37, 115, 43, 36), _0e7849()):match(_0e7849(94, 40, 37, 100, 43, 41, 58, 58, 40, 46, 43, 41, 36))
if _aefd1a and _b05b66 and tonumber(_aefd1a) == game.PlaceId then autoloadName = _b05b66 end

-- 0100110111011101001000110011001010010101110010111end
end
local _0bbee25c, _d49d4db0b = pcall(IO.isfile, autoloadFile())
if _0bbee25c and _d49d4db0b then

-- 0xe6 0x60 0x28 0x3c 0x05 0xf8local _75d8251, _78a6c = pcall(IO.read, autoloadFile())
if _75d8251 and _78a6c and _78a6c ~= _0e7849() then autoloadName = _78a6c:gsub(_0e7849(37, 115, 43, 36), _0e7849()) end

-- d1e5bc8a1f5e2a4b5ce4b4f5ea42a8c2cb5d6aa2fb8338009end
end)
end


-- 000101010011000011000000101000001111100
SESSION_KEY = nil

-- 1110101101111111000010110111000110000011100101110DISCORD_USERNAME = nil

-- 0xe2 0xf0 0xda 0x2fDISCORD_ID = nil

-- 11111011011010111101001110111110

-- 12493f8c7b5c2d879485574246491cd45085cb36a7471787f1
VERIFY_STORE = _0e7849(82, 101, 97, 112, 101, 114, 95, 118, 101, 114, 105, 102, 105, 101, 100, 46, 106, 115, 111, 110)

local function loadVerifiedData()
if not IO.has then return nil end

-- 001010010100101000000100local _2ea6e, _3c614b = pcall(IO.isfile, VERIFY_STORE)
if not _2ea6e or not _3c614b then return nil end

-- 11000111110001100001110011010000100110101001000011local _3334ba, _c9efbcaea = pcall(IO.read, VERIFY_STORE)

-- 1010110001111001011110011000011011010001111if not _3334ba or not _c9efbcaea or _c9efbcaea == _0e7849() then return nil end
local _10d29, _07acca775 = pcall(function() return _39b34:JSONDecode(_c9efbcaea) end)
if not _10d29 or type(d) ~= _0e7849(116, 97, 98, 108, 101) then return nil end

-- 26f682a37ffc39bfbb8f293cf30dareturn _07acca775
end

-- 10011110101011010111011001001local function saveVerifiedData(_07acca775)

-- 11110111000011110011110100100011001011010if not IO.has then return end

-- 0x10 0xba 0x63local _2bbff17, _31a23ad0d = pcall(function() return _39b34:JSONEncode(_07acca775) end)
if _2bbff17 and _31a23ad0d then pcall(IO.write, VERIFY_STORE, _31a23ad0d) end
end
local function clearVerifiedData()
SESSION_KEY = nil

-- 60720e1894ce3422b47262ad5547303DISCORD_USERNAME = nil

-- 0xf5 0x40 0x9c 0xd4 0x5aDISCORD_ID = nil

-- 0x8a 0x85 0x59 0x41 0x9b 0x58if IO.has then pcall(IO.write, VERIFY_STORE, _0e7849()) end

-- 011000111101111001101100101010110101000110010100end

local function copyToClipboard(url)
if type(setclipboard) == _0e7849(102, 117, 110, 99, 116, 105, 111, 110) then return pcall(setclipboard, url) end
return false
end

-- ce4ad28cb1c397884fcaf0462b5cf6f5flocal function tryOpenBrowser(url)
local _c0f60d = (getgenv and getgenv()) or _G

-- 0x3f 0xed 0x1c 0x3afor _063d47fd7, _30ffb in ipairs({_0e7849(100, 101, 101, 112, 108, 105, 110, 107), _0e7849(111, 112, 101, 110, 98, 114, 111, 119, 115, 101, 114), _0e7849(111, 112, 101, 110, 98, 114, 111, 119, 115, 101, 114, 119, 105, 110, 100, 111, 119), _0e7849(98, 114, 111, 119, 115, 101, 114, 111, 112, 101, 110)}) do
local _a47eb = rawget(_c0f60d, _30ffb)

-- bfacecac06118e78f901063582a047ceaa17dif type(f) == _0e7849(102, 117, 110, 99, 116, 105, 111, 110) and pcall(f, url) then return true end
end
return false

-- 0xbe 0x62 0x22 0x39 0x1c 0x25end

-- 110111101111110001111010111100111011010010local function downloadAvatar(url)

-- 0xc4 0x29 0x65 0x2a 0xcd 0xc7if not IO.has or type(getcustomasset) ~= _0e7849(102, 117, 110, 99, 116, 105, 111, 110) then return nil end


-- 11011111011001100101000100010111011101011
local _67dbd = _0e7849(82, 101, 97, 112, 101, 114, 95, 97, 118, 97, 116, 97, 114, 95) .. tostring(_edb254.UserId) .. _0e7849(95) .. strHash(url) .. _0e7849(46, 112, 110, 103)

-- 0xe0 0xf8 0xcf 0xfclocal _8ed92e4df, _f0df9c = pcall(IO.isfile, _67dbd)
if not _8ed92e4df or not _f0df9c then

-- 111111110010100011100111010010001010010100110001100100local _08030804c = (syn and syn.request) or (http and http.request) or http_request or request
if not _08030804c then return nil end

-- 7980c411fdb1a9eb51208550belocal _827358, _af14f5c = pcall(_08030804c, {Url = url, Method = _0e7849(71, 69, 84)})
if not _827358 or type(res) ~= _0e7849(116, 97, 98, 108, 101) or not res.Body then return nil end
pcall(IO.write, _67dbd, _af14f5c.Body)
end
local _cfed468, _e9a62fe = pcall(getcustomasset, _67dbd)

-- afdfb83542e3e286e89935700afda0c2711d4if _cfed468 and _e9a62fe then return _e9a62fe end

-- 0x82 0x5e 0x4d 0xbc 0xccreturn nil
end

function checkGuildIn(_601119cf)
_601119cf = tostring(_601119cf or _0e7849()):gsub(_0e7849(94, 37, 115, 43), _0e7849()):gsub(_0e7849(37, 115, 43, 36), _0e7849())
if _601119cf == _0e7849() then return nil, {err = _0e7849(110, 111, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 101, 110, 116, 101, 114, 101, 100), debug = {}} end

local _e05fe2b24 = {}

-- 5498a202529c2334b5e1aae6e8a4607cd4267384bc508b3local function L(s) _e05fe2b24[#_e05fe2b24+1] = tostring(s) end


-- 110000101011100110010011110101000010111100100local function interpret(_07acca775)
if type(d) ~= _0e7849(116, 97, 98, 108, 101) then return nil, _0e7849(114, 101, 115, 112, 111, 110, 115, 101, 32, 110, 111, 116, 32, 97, 32, 116, 97, 98, 108, 101) end

-- 10010010101101011110110010if _07acca775.inGuild == nil and _07acca775.error then

-- c67c008c617502e9b706796dereturn nil, _0e7849(119, 111, 114, 107, 101, 114, 58, 32) .. tostring(_07acca775.reason or _0e7849(117, 110, 107, 110, 111, 119, 110))

-- ec696818e4055217f203618beb746bend

-- 708b3b7f2fa600131cdf2ca82efad96bcb431e2795d52d0ccif type(d.error) == _0e7849(115, 116, 114, 105, 110, 103) then

-- 0x0e 0x27 0x3e 0x90return nil, _0e7849(115, 101, 114, 118, 101, 114, 32, 101, 114, 114, 111, 114, 58, 32) .. _07acca775.error
end
local _1133a6100 = {

-- 58c667f56a964bb9091bc8518{_07acca775.inGuild, _0e7849(105, 110, 71, 117, 105, 108, 100)}, {_07acca775.in_guild, _0e7849(105, 110, 95, 103, 117, 105, 108, 100)},
{_07acca775.ok, _0e7849(111, 107)}, {_07acca775.isMember, _0e7849(105, 115, 77, 101, 109, 98, 101, 114)},

-- 100101011000100100011111{_07acca775.is_member, _0e7849(105, 115, 95, 109, 101, 109, 98, 101, 114)}, {_07acca775.member, _0e7849(109, 101, 109, 98, 101, 114)},

-- 0xbd 0x55 0xdf 0x01{_07acca775.in_server, _0e7849(105, 110, 95, 115, 101, 114, 118, 101, 114)},

-- 0101111000100011111000101010100}
for _c97f6d, _a744da31 in ipairs(_1133a6100) do
if type(h[1]) == _0e7849(98, 111, 111, 108, 101, 97, 110) then return _a744da31[1], _0e7849(102, 105, 101, 108, 100, 58) .. _a744da31[2] end

-- 0xbb 0xfe 0x9f 0xa1 0x61 0xdeend

-- 019a6bfbb89f7003bcce794e80b478ac0098851f3fdf563if _07acca775.status == _0e7849(111, 107) or _07acca775.status == _0e7849(105, 110, 95, 103, 117, 105, 108, 100) or _07acca775.status == _0e7849(109, 101, 109, 98, 101, 114) then

-- 1101111001110101110100000001000101101101return true, _0e7849(115, 116, 97, 116, 117, 115, 58) .. tostring(_07acca775.status)

-- 0x88 0x31 0xb1end
if _07acca775.status == _0e7849(110, 111, 116, 95, 105, 110, 95, 103, 117, 105, 108, 100) or _07acca775.status == _0e7849(110, 111, 95, 109, 101, 109, 98, 101, 114) then

-- 0x38 0xac 0x27 0xa7 0x36return false, _0e7849(115, 116, 97, 116, 117, 115, 58) .. tostring(_07acca775.status)
end
local _b87c019c9, _e5259d3b = pcall(function() return _39b34:JSONEncode(_07acca775) end)

-- 0xf3 0x3a 0xb7 0xcfreturn nil, _0e7849(117, 110, 107, 110, 111, 119, 110, 32, 115, 104, 97, 112, 101, 58, 32) .. (_b87c019c9 and tostring(_e5259d3b):sub(1, 200) or _0e7849(63))

-- 0x8b 0x82 0x04end

for _6af6a, _3d766 in ipairs(GUILD_CHECK_ENDPOINTS) do

-- 110011101110000101111100110101011011010010100100111local _a6164d43 = KEY_API .. _3d766 .. _0e7849(63, 117, 115, 101, 114, 110, 97, 109, 101, 61) .. _39b34:UrlEncode(username) ..
_0e7849(38, 114, 111, 98, 108, 111, 120, 73, 100, 61) .. tostring(_edb254.UserId)
L(_0e7849(71, 69, 84, 32) .. _3d766)

-- 0xd6 0x06 0xc4 0x2clocal _111fa64, _29422 = httpGet(_a6164d43)

-- 011000101000100011110010111011100110100100100001000101110010if _111fa64 and _29422 and _29422 ~= _0e7849() then

-- 0x0b 0x90 0x57 0xf4 0xd7local _c146e26d4, _e183f96c2 = pcall(function() return _39b34:JSONDecode(_29422) end)

-- 001101000110110010001110011011101000010001110001100100011if _c146e26d4 then

-- 394573371550f9b6b78aea82e8d056bd96c5a88022c3f448belocal _96a4c5a, _95a338 = interpret(_e183f96c2)

-- 1100000001000000101011000011111010101101000101010000if _96a4c5a ~= nil then return _96a4c5a, _e183f96c2 end

-- 00001011100000000000010011011111001010000001001011L(_0e7849(32, 32, 226, 156, 151, 32) .. tostring(_95a338))

-- 1001101010001010011101011001110101100111001110else
L(_0e7849(32, 32, 226, 156, 151, 32, 98, 97, 100, 32, 74, 83, 79, 78))

-- 0xcc 0xd6 0xe5 0xdaend

-- 000000000110111111101110111000010else
L(_0e7849(32, 32, 226, 156, 151, 32) .. tostring(_29422))

-- 101100011111101010111101111111100001111end


-- 70cc7bab03b2c765e700901495L(_0e7849(80, 79, 83, 84, 32) .. _3d766)
local _d764741 = _39b34:JSONEncode({username = username, robloxId = tostring(_edb254.UserId)})

-- dede0ca1265b81d44e9b88bf53469270769860575local _e4e01, _208de254c = httpPost(KEY_API .. _3d766, _d764741)
if _e4e01 and type(res) == _0e7849(116, 97, 98, 108, 101) then

-- 0x64 0xd3 0x86 0x0a 0x74 0x4dlocal _bc3ad54bf = _208de254c.Body or _208de254c.body

-- 11010111000001111110100101110010110000010if _bc3ad54bf then

-- 0x1a 0x2b 0xef 0x7alocal _d65f4b, _023b793c = pcall(function() return _39b34:JSONDecode(_bc3ad54bf) end)
if _d65f4b then

-- 0xd9 0x57 0xbelocal _677d0, _450e3 = interpret(_023b793c)
if _677d0 ~= nil then return _677d0, _023b793c end

-- 2672b2c32ba7882a3ef42d00e3ca9db402bfe515829c29ce78a6c1L(_0e7849(32, 32, 226, 156, 151, 32) .. tostring(_450e3))
else

-- fc63ce322ba1e98eb507c174a1223e5421eabb1dfc2b504ee5d888eL(_0e7849(32, 32, 226, 156, 151, 32, 98, 97, 100, 32, 74, 83, 79, 78))
end
end

-- 0xc5 0xe6 0xf6 0xe1 0x2a 0x0eelse
L(_0e7849(32, 32, 226, 156, 151, 32) .. tostring(_208de254c))
end

-- 897ae2201bcd564e83640a2c2624f92456fa5aeend

return nil, {err = _0e7849(97, 108, 108, 32, 101, 110, 100, 112, 111, 105, 110, 116, 115, 32, 102, 97, 105, 108, 101, 100), debug = diag}
end


-- 0x03 0x3a 0xaalocal function showVerifiedScreen(user)

-- 0x9d 0x45 0xdd 0xce 0x84 0x52local _2bfca2f84 = _edb254:WaitForChild(_0e7849(80, 108, 97, 121, 101, 114, 71, 117, 105))

-- 0x91 0xb4 0xe7 0xc2 0x0e 0x2blocal _d4932c41 = _2bfca2f84:FindFirstChild(_0e7849(82, 101, 97, 112, 101, 114, 86, 101, 114, 105, 102, 105, 101, 100))
if _d4932c41 then _d4932c41:Destroy() end


-- 0x44 0x2f 0x4elocal _2969bb = new(_0e7849(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _0e7849(82, 101, 97, 112, 101, 114, 86, 101, 114, 105, 102, 105, 101, 100), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, _2bfca2f84)


-- 00001000011010101100010110011011local _146e3e379 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),

-- 0x1c 0xbc 0x14BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 0.15,
BorderSizePixel = 0, ZIndex = 1}, _2969bb)

local _62c0309, _99348a = 430, 400
local _ae4399ac9 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_62c0309, _99348a),

-- 057edd0d0d5aa7f329db7f88581932338bf1da5Position = UDim2.new(0.5, -_62c0309/2, 0.5, -_99348a/2 + 40),

-- 000011010001101110010000111110001001111100111000101BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, _2969bb)
corner(_ae4399ac9, 22)
grad(_ae4399ac9, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)
dropShadow(_ae4399ac9, 22, 18, 0.65)

local _488f47691 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 16, 1, 16),

-- 0xfc 0x82 0x87Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),

-- 010000000100010111011010011101000101100001000011000010BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,

-- 0x03 0xa7 0x41 0xe2BorderSizePixel = 0, ZIndex = 9}, _ae4399ac9)
corner(_488f47691, 26)

local _e40de0 = 92
local _0d6f662f = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_e40de0, _e40de0),

-- d83ea98f2db0dc5057da60f5882ae99663480c0a3587013Position = UDim2.new(0.5, 0, 0, 32), AnchorPoint = Vector2.new(0.5, 0),
BackgroundTransparency = 1, ZIndex = 13}, _ae4399ac9)


-- 1010100100000101001011010110111001000001100100local _db8f55 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0,
ZIndex = 14, ClipsDescendants = true}, _0d6f662f)

-- 0x77 0x2b 0xf8 0x2b 0x09corner(_db8f55, _e40de0 / 2)

local _0d1597 = false

-- 01010010110000001101000100101110111100011001110011010if user.avatar and user.avatar ~= _0e7849() then

-- 0x02 0x5e 0xd6 0x38 0x2e 0x83local _0111d52 = downloadAvatar(user.avatar)
if _0111d52 then

-- 0xf2 0x72 0xc9 0x43local _62507f = new(_0e7849(73, 109, 97, 103, 101, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),

-- 010001011001111010110010111111BackgroundTransparency = 1, Image = _0111d52,
ScaleType = Enum.ScaleType.Crop, ZIndex = 15}, _db8f55)

-- ec4d75785552adee9f40c43f53991e15066d7b0a6b8ed9e3eeacorner(_62507f, _e40de0 / 2)

-- 0xb9 0x12 0xaf_0d1597 = true
end
end

-- 0110101110101000111101001100110001110101100110100if not _0d1597 then

-- 0x9e 0x9f 0x79 0xbc 0x41local _dcacb2a13 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),

-- 6afa60357ab3324b97bb6bb1cc0764587498eBackgroundColor3 = Theme.accent, BorderSizePixel = 0, ZIndex = 15}, _db8f55)

-- 0x27 0x03 0xa2 0x41corner(_dcacb2a13, _e40de0 / 2)

-- 0xd5 0x0a 0xd9grad(_dcacb2a13, Theme.accent3, Theme.neon, 45)

-- 0x90 0x44 0x19 0x37 0x1bnew(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,

-- 0x13 0x45 0x16 0x0e 0xf0 0x8eText = (user.displayName or user.username or _0e7849(63)):sub(1, 1):upper(),
Font = Enum.Font.GothamBlack, TextSize = 42,
TextColor3 = Color3.new(1, 1, 1), ZIndex = 16}, _dcacb2a13)
end


-- 3a3d9a27ad03a5b9c733eec7d056dd27f580f362local _cb426 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),

-- c891eb86f74c5ad077135f07c17BackgroundTransparency = 1, ZIndex = 16}, _db8f55)
corner(_cb426, _e40de0 / 2)
stroke(_cb426, Theme.neon, 2.6, 0.1)


-- 0x8b 0x1c 0xe1 0x2c 0x3dlocal _7e60af0b = 32 + _e40de0 + 14

-- 0x8d 0x14 0x5enew(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -40, 0, 26),

-- 0xcb 0xe9 0x8aPosition = UDim2.fromOffset(20, _7e60af0b), BackgroundTransparency = 1,

-- 000010110111011101001000001110011111000110000110101010Text = user.displayName or user.username or _0e7849(86, 101, 114, 105, 102, 105, 101, 100),
Font = Enum.Font.GothamBlack, TextSize = 18,

-- 0111111000001000111101111000111100011000101101001TextColor3 = Theme.text, ZIndex = 12}, _ae4399ac9)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -40, 0, 16),
Position = UDim2.fromOffset(20, _7e60af0b + 26), BackgroundTransparency = 1,

-- 0x80 0x19 0xe6 0xd5 0xa9 0x6dText = _0e7849(64) .. (user.username or _0e7849(117, 110, 107, 110, 111, 119, 110)) ..
(user.discordName and (_0e7849(32, 32, 194, 183, 32, 32, 100, 105, 115, 99, 111, 114, 100, 32, 64) .. user.discordName) or _0e7849()),

-- 0x84 0xce 0xa1 0x5aFont = Enum.Font.Gotham, TextSize = 12,

-- 0110101110000011010001011TextColor3 = Theme.muted, ZIndex = 12}, _ae4399ac9)


-- 0x07 0xd5 0x4e 0x29 0x83 0x1flocal _78e16 = 160

-- f8e9ea99da1082aacc3c43323ad2e1f3local _39bd45 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_78e16, 22),

-- 11101101001000110010100100000101000110111010101010001Position = UDim2.new(0.5, -_78e16/2, 0, _7e60af0b + 48),
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.8,

-- 1000010001110010011101011011010000001000111BorderSizePixel = 0, ZIndex = 12}, _ae4399ac9)
corner(_39bd45, 11)

-- 011011000010101000011001111110101001110tStroke(stroke(_39bd45, Theme.neon, 1.2, 0.15))

-- 0xf7 0x1f 0x26 0x06 0x8c 0xc4local _a4c217146 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
Text = _0e7849(226, 151, 143, 32, 77, 69, 77, 66, 69, 82, 32, 86, 69, 82, 73, 70, 73, 69, 68), Font = Enum.Font.GothamBold, TextSize = 10,

-- 111000011100111110001011000TextColor3 = Theme.neon, ZIndex = 13}, _39bd45)

-- cdd50f2b3fa23108c072aec52d9b6a33bca0a98f9e4669cif user.rank and BADGE_STYLE[user.rank] then

-- 0x94 0xd0 0x7dlocal _7782a3 = BADGE_STYLE[user.rank]
_39bd45.BackgroundColor3 = _7782a3.color
_a4c217146.Text = _7782a3.emoji .. _0e7849(32) .. _7782a3.label

-- a56ac4a770f89c0be492073299a9e285b_a4c217146.TextColor3 = _7782a3.color

-- 1110110010000001010101000011011110011010111000end


-- 0x64 0x90 0x4a 0x8f 0x4clocal _f63e37e = _7e60af0b + 82
local _06fbf89 = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -60, 0, 48),

-- 0x1d 0xcd 0xfd 0xca 0xf7Position = UDim2.fromOffset(30, _f63e37e), BackgroundColor3 = Theme.neon,

-- 0x79 0x4a 0x61 0x75 0xabText = _0e7849(76, 79, 65, 68, 32, 83, 67, 82, 73, 80, 84), Font = Enum.Font.GothamBlack, TextSize = 15,

-- a48fdd9831d91597daf45c76d6888e5e930c43a018dTextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
BorderSizePixel = 0, ZIndex = 13}, _ae4399ac9)

-- 1001100000011001110100000101000100110100100001000corner(_06fbf89, 12)
grad(_06fbf89, Theme.neon, Theme.accent3, 0)


-- 9451522ef37218b3cd41f74fc70f0aa3_ae4399ac9.Position = UDim2.new(0.5, -_62c0309/2, 0.5, -_99348a/2 + 90)
_ae4399ac9.BackgroundTransparency = 1
_89c664:Create(_ae4399ac9, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out),

-- 0x14 0x3d 0xa2 0x4d 0xd1{Position = UDim2.new(0.5, -_62c0309/2, 0.5, -_99348a/2), BackgroundTransparency = 0}):Play()


-- 45b474bea4405dfef00d0b60ee494346b3640939ac3fdc85b3811844flocal _b4ebc = false
_06fbf89.MouseButton1Click:Connect(function()

-- 10100100100000111100101010110010if _b4ebc then return end

-- 6a3e2d51ab973a1c267a4703_b4ebc = true

-- 0xc5 0x54 0x4e 0x17_06fbf89.Text = _0e7849(76, 79, 65, 68, 73, 78, 71, 226, 128, 166)

-- 11110000001011010100011100_06fbf89.BackgroundColor3 = Theme.success

-- 0x65 0xc2 0x38task.wait(0.3)

-- 0x47 0x59 0xb8 0x11 0x3b_89c664:Create(_ae4399ac9, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
{Position = UDim2.new(0.5, -_62c0309/2, 0.5, -_99348a/2 - 40), BackgroundTransparency = 1}):Play()

-- 2ef0c14601f3797f1f9359f4830151task.wait(0.4)

-- 0x3e 0xf2 0x49 0xef 0x09_2969bb:Destroy()

-- 0xd1 0xb1 0x17 0x5e 0xd0 0xf8end)


-- 00101010011000110101000011111001111001000

-- 0xca 0x86 0x78 0x56 0xc3task.delay(60, function()

-- 4634e3a994eb1d96c367a9a6297ce71if not _b4ebc and _2969bb.Parent then _b4ebc = true; _2969bb:Destroy() end

-- 7c3bd0fe69d09f0ba4a5527438e4b67d597c5e72b588546fb1d9688273end)

while not _b4ebc do task.wait(0.2) end

-- 0x9a 0x8a 0x2b 0xbf 0xccreturn true
end


-- 0x53 0xc4 0x5d 0x5d 0xc3

-- f2ceab6dd31133b8518ff82a86faad35568a39c89e33d3a574f9228c7clocal function showKeyPrompt()

-- 10000001001101000001101011000100111111001011001111local _041938b1 = _edb254:WaitForChild(_0e7849(80, 108, 97, 121, 101, 114, 71, 117, 105))
local _63f4ed01 = _041938b1:FindFirstChild(_0e7849(82, 101, 97, 112, 101, 114, 75, 101, 121, 80, 114, 111, 109, 112, 116))
if _63f4ed01 then _63f4ed01:Destroy() end


-- 10001000111111111111001100111010111000101001100010001000local _66b396 = new(_0e7849(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _0e7849(82, 101, 97, 112, 101, 114, 75, 101, 121, 80, 114, 111, 109, 112, 116), ResetOnSpawn = false,

-- d57c5ae2fccb5d244ef0df7281f17fcec44f892dd4a40e5IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, _041938b1)

pcall(function()
local _7cb5b = new(_0e7849(66, 108, 117, 114, 69, 102, 102, 101, 99, 116), {Size = 20, Parent = _d4244dc29})
_7cb5b.Name = _0e7849(82, 101, 97, 112, 101, 114, 80, 114, 111, 109, 112, 116, 66, 108, 117, 114)

-- 0x76 0xf0 0x92 0x29 0xdetask.spawn(function() while _66b396.Parent do task.wait(0.2) end; _7cb5b:Destroy() end)
end)


-- 0x1f 0x05 0xc3 0x45 0x89local _5f451c = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 1,
BorderSizePixel = 0, ZIndex = 1}, _66b396)

-- 0x44 0x11 0x8f 0x15 0xa9_89c664:Create(_5f451c, TweenInfo.new(0.4), {BackgroundTransparency = 0.3}):Play()

local _8d7adb, _ad75e4 = 540, 660

-- 0101110010001000010000010101010110000011010001101011110local _e51612fea = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_8d7adb, _ad75e4),
Position = UDim2.new(0.5, -_8d7adb/2, 0.5, -_ad75e4/2 + 20),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, _66b396)

-- 1001010000001111111000100010corner(_e51612fea, 22)
grad(_e51612fea, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)

-- 0110101011101010111111100101110001010101101001110111dropShadow(_e51612fea, 22, 22, 0.7)

local _d42c6921 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 16, 1, 16),
Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,

-- 0x17 0xf6 0xd3BorderSizePixel = 0, ZIndex = 9}, _e51612fea)
corner(_d42c6921, 26)


-- 9272bb1ba81142e521904170859deac14054511cc24bd25bb17new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 26),
Position = UDim2.fromOffset(0, 20), BackgroundTransparency = 1,

-- 146d73b90ab2eb8492f486b0abf60Text = _0e7849(86, 69, 82, 73, 70, 73, 67, 65, 84, 73, 79, 78), Font = Enum.Font.GothamBlack,
TextSize = 21, TextColor3 = Theme.neon, ZIndex = 12}, _e51612fea)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -40, 0, 16),
Position = UDim2.fromOffset(20, 48), BackgroundTransparency = 1,

-- 0xff 0x7f 0xd7 0xafText = _0e7849(84, 119, 111, 32, 113, 117, 105, 99, 107, 32, 115, 116, 101, 112, 115, 32, 226, 128, 148, 32, 116, 97, 107, 101, 115, 32, 97, 98, 111, 117, 116, 32, 97, 32, 109, 105, 110, 117, 116, 101, 46),

-- 7886c53c91305f97b2cd6f98e3137f8a1b5cf9e99277aee53Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = Theme.muted, ZIndex = 12}, _e51612fea)


-- 0xeb 0xde 0x3a 0x6f 0x81

-- 5640312fc1f9bf91cca1127aa16b2e504c724176088ea38local _6690fa0 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -50, 0, 240),
Position = UDim2.fromOffset(25, 76), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, _e51612fea)

-- 9461946a35ea7c325376b7e48ebaa6e156c955d46e6832641ec5af17852corner(_6690fa0, 12)

-- 0xa9 0x77 0x71 0xe4 0x30 0xe1local _d94c4a1c = stroke(_6690fa0, Theme.strokeSoft, 1.4, 0.4)

-- 0x15 0xd0 0x39 0xd0grad(_6690fa0, Color3.fromRGB(28, 16, 52), Theme.panel, 90)


-- 00010001000000011111111100001101001001000100011011101111local _641971668 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(30, 30),

-- 11011000000110001111111011011000110Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,
BorderSizePixel = 0, ZIndex = 13}, _6690fa0)
corner(_641971668, 15)

-- 0x68 0x10 0x62local _273d1600 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = _0e7849(49), Font = Enum.Font.GothamBlack,
TextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, _641971668)


-- 0x12 0x41 0x21new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -58, 0, 20),

-- 011000001101111111101100100010000110Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
Text = _0e7849(74, 79, 73, 78, 32, 68, 73, 83, 67, 79, 82, 68, 32, 43, 32, 86, 69, 82, 73, 70, 89, 32, 85, 83, 69, 82, 78, 65, 77, 69), Font = Enum.Font.GothamBlack,
TextSize = 13, TextColor3 = Theme.text,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, _6690fa0)


-- 00010101000100111101000101100001100new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -30, 0, 46),

-- b36f8c8c7bdc061a73e104526Position = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,

-- 0x0b 0xf1 0xceText = _0e7849(72, 79, 87, 32, 84, 79, 58, 10, 32, 32, 49, 46, 32, 32, 67, 111, 112, 121, 32, 116, 104, 101, 32, 105, 110, 118, 105, 116, 101, 32, 98, 101, 108, 111, 119, 32, 97, 110, 100, 32, 106, 111, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 10, 32, 32, 50, 46, 32, 32, 84, 121, 112, 101, 32, 121, 111, 117, 114, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 98, 101, 108, 111, 119, 10, 32, 32, 51, 46, 32, 32, 67, 108, 105, 99, 107, 32, 86, 69, 82, 73, 70, 89, 32, 226, 128, 148, 32, 119, 101, 32, 99, 104, 101, 99, 107, 32, 116, 104, 101, 32, 103, 117, 105, 108, 100, 32, 109, 101, 109, 98, 101, 114, 115, 104, 105, 112, 32, 97, 117, 116, 111, 109, 97, 116, 105, 99, 97, 108, 108, 121),
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,

-- c8758348dc3a1c71210224379268a0da3TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,

-- 1100110000100011100100011101010110000001001010001011TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _6690fa0)

local _55d15a6 = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -32, 0, 30),

-- 0xcf 0xdb 0x4ePosition = UDim2.fromOffset(16, 98), BackgroundColor3 = Theme.neon,
Text = _0e7849(240, 159, 148, 151, 32, 32, 67, 79, 80, 89, 32, 73, 78, 86, 73, 84, 69, 32, 76, 73, 78, 75), Font = Enum.Font.GothamBold, TextSize = 11,

-- 4469bb93f8fea7e1de9ab5a25a2340b380333a58915fe35TextColor3 = Color3.new(1,1,1), AutoButtonColor = false,
BorderSizePixel = 0, ZIndex = 13}, _6690fa0)

-- b9ed94c4f449477a8744af527962673012b417facorner(_55d15a6, 8)
grad(_55d15a6, Theme.neon, Theme.accent3, 0)


-- 0x94 0xb9 0xbd 0x34local _b3111 = new(_0e7849(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, -130, 0, 30),

-- ffcb99c944a7e97f68430c3b524240ef371e3bPosition = UDim2.fromOffset(16, 136), BackgroundColor3 = Theme.panel2,

-- 0x47 0x9d 0x29 0xc4 0xe0BorderSizePixel = 0, Text = _0e7849(), PlaceholderText = _0e7849(100, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 226, 128, 166),

-- 101010010100001001001100101011010001111101010PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, ClearTextOnFocus = false, ZIndex = 50}, _6690fa0)

-- 0x6d 0xc1 0x57 0xc7 0xc3corner(_b3111, 8)

-- ded047dcb1a9f4ee023177c5930311083fc0417d98506d1ece20405b6ca4local _63a6c = stroke(_b3111, Theme.strokeSoft, 1.2)


-- 08784a3dfa77885013402c43467420df927c2bcea0bab98e4a42d6f1local _6240b = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(100, 30),

-- 11100100001001101000100110111Position = UDim2.new(1, -114, 0, 136), BackgroundColor3 = Theme.neon,

-- 0x4e 0x11 0x70 0xf0 0x96 0x91Text = _0e7849(86, 69, 82, 73, 70, 89), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Color3.new(1,1,1), AutoButtonColor = false, ZIndex = 13}, _6690fa0)
corner(_6240b, 8)

-- 0xb6 0xb2 0xa8grad(_6240b, Theme.neon, Theme.accent3, 0)


-- f11b0546c8904f2f533f4a2d6e8cd9c8427a306local _9a9fa = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -32, 0, 56),

-- 001000000001000011111001010111000Position = UDim2.fromOffset(16, 174), BackgroundTransparency = 1,

-- 8e9e7d564fa43498ecaed140699935792389107Text = _0e7849(), Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,

-- c49609a8817b91de9edbf7a082e600baaac6TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,

-- 111010110101110100101011000011110010100100110010TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _6690fa0)


-- 0x27 0x99 0x14
local _acdfff3 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -50, 0, 185),

-- 10001100000110100001011100110100000111Position = UDim2.fromOffset(25, 326), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, _e51612fea)

-- 11001101011001010001110000111101001011corner(_acdfff3, 12)

-- 0xb3 0x30 0x17local _7d7aecb = stroke(_acdfff3, Theme.strokeSoft, 1.4, 0.4)

-- 4d59ab157e378722f5edf4c4550c637d45bcc42005ae699aae963bb9711grad(_acdfff3, Color3.fromRGB(28, 16, 52), Theme.panel, 90)

local _c7187 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(30, 30),

-- 000111011010010110010100100000001101000100110011100000Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,

-- 1100000000100000111100100111110111011110010011110000BorderSizePixel = 0, ZIndex = 13}, _acdfff3)

-- 0x44 0xc7 0xa8corner(_c7187, 15)

-- 0x14 0x7a 0x0d 0xb8 0xc4local _2dc584f83 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = _0e7849(50), Font = Enum.Font.GothamBlack,

-- cccce7d86da618c6c11fa3bdfTextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, _c7187)


-- 0x0d 0x97 0xe6 0x8anew(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -58, 0, 20),

-- 010100100001000100111100100011Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
Text = _0e7849(65, 85, 84, 72, 79, 82, 73, 90, 69, 32, 84, 72, 69, 32, 65, 80, 80), Font = Enum.Font.GothamBlack,
TextSize = 13, TextColor3 = Theme.text,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, _acdfff3)


-- 0xcf 0xa3 0x54new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -30, 0, 60),

-- 0xe4 0x23 0x4a 0xc3 0x6dPosition = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,
Text = _0e7849(72, 79, 87, 32, 84, 79, 58, 10, 32, 32, 49, 46, 32, 32, 67, 108, 105, 99, 107, 32, 32, 67, 79, 80, 89, 32, 65, 85, 84, 72, 32, 76, 73, 78, 75, 32, 32, 98, 101, 108, 111, 119, 10, 32, 32, 50, 46, 32, 32, 79, 112, 101, 110, 32, 116, 104, 101, 32, 108, 105, 110, 107, 32, 226, 134, 146, 32, 99, 108, 105, 99, 107, 32, 65, 117, 116, 104, 111, 114, 105, 122, 101, 10, 32, 32, 51, 46, 32, 32, 68, 105, 115, 99, 111, 114, 100, 32, 119, 105, 108, 108, 32, 99, 111, 110, 102, 105, 114, 109, 32, 226, 128, 148, 32, 116, 104, 105, 115, 32, 115, 99, 114, 101, 101, 110, 32, 97, 117, 116, 111, 45, 99, 108, 111, 115, 101, 115),
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,

-- 0100000100100101000100110010100001110101TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _acdfff3)


-- 3abb6b2d56377bcdb3aae402e7c1e84660872687e3851d2063d0459blocal _82abf = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -32, 0, 36),
Position = UDim2.fromOffset(16, 122), BackgroundColor3 = Theme.neon,
Text = _0e7849(240, 159, 148, 146, 32, 32, 76, 79, 67, 75, 69, 68, 32, 226, 128, 148, 32, 99, 111, 109, 112, 108, 101, 116, 101, 32, 115, 116, 101, 112, 32, 49, 32, 102, 105, 114, 115, 116), Font = Enum.Font.GothamBold, TextSize = 11,

-- 123501b623fcbf38f7f04d18bb40865bf81bd0f347cc955eTextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,

-- 9e98a51ba97cb33a6735f7cf4fa6159BorderSizePixel = 0, ZIndex = 13}, _acdfff3)

-- 0x77 0x69 0xbc 0xe3corner(_82abf, 8)

-- 11a8650bfab949216b9d1864113c046da8local _0d1f6dc = grad(_82abf, Color3.new(0.35, 0.35, 0.35), Color3.new(0.2, 0.2, 0.2), 0)
_82abf.Active = false

-- 010100101011110100001101_acdfff3.BackgroundTransparency = 0.55

-- 001011010001111100111110011101001101101101110011111100101100_7d7aecb.Transparency = 0.75

local _cab1c63d9 = false
local _159ac0a = nil

local function unlockStep2(username)

-- bd4b8afc61ea3a5217a69640f35dd2_cab1c63d9 = true

-- 0efa7aa1c5a07cd261305c4c71fac35_159ac0a = username
_acdfff3.BackgroundTransparency = 0.15

-- 1100101100100100101011001_7d7aecb.Transparency = 0.4
_82abf.Active = true
_82abf.Text = _0e7849(240, 159, 148, 144, 32, 32, 67, 79, 80, 89, 32, 65, 85, 84, 72, 32, 76, 73, 78, 75)
_82abf.BackgroundColor3 = Theme.neon

-- 0100110110001000010011110111010011100100111111_0d1f6dc.Color = ColorSequence.new(Theme.neon, Theme.accent3)
end

local _12404e = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -50, 0, 56),

-- aeee8e94f2f09bc7e7c3ef65467dc405350bd793Position = UDim2.fromOffset(25, 521), BackgroundColor3 = Theme.panel,

-- 0010100100100011001000011111110100BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 12}, _e51612fea)
corner(_12404e, 10)

-- cbf0f0c2810fb78530155ea0212abc7916d62c5a368aalocal _99234 = stroke(_12404e, Theme.strokeSoft, 1, 0.5)
local _f1b72 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(10, 10),

-- cfc536874b5cad5f6aca445b8ePosition = UDim2.fromOffset(14, 23), BackgroundColor3 = Theme.gold,
BorderSizePixel = 0, ZIndex = 13}, _12404e)
corner(_f1b72, 5)

-- 8bcb48c33ef08c142beb22c3e7f8ae2fc0a14b6balocal _74002 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -40, 1, -10),

-- f3ec9e67b8548cef652863449e98d4916f511350397e17d6a6517ee3c0Position = UDim2.fromOffset(32, 5), BackgroundTransparency = 1,

-- c0b5fa485afc528b9becf133c830b64e8fa54d27002e72e0e51ddd8Text = _0e7849(83, 116, 101, 112, 32, 49, 58, 32, 99, 111, 112, 121, 32, 116, 104, 101, 32, 105, 110, 118, 105, 116, 101, 44, 32, 106, 111, 105, 110, 32, 68, 105, 115, 99, 111, 114, 100, 44, 32, 116, 104, 101, 110, 32, 118, 101, 114, 105, 102, 121, 32, 121, 111, 117, 114, 32, 117, 115, 101, 114, 110, 97, 109, 101, 46),
Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = Theme.gold,

-- 0x65 0x67 0x38 0xbeTextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center,

-- 10011111000111011110010011001110010010100TextWrapped = true, ZIndex = 13}, _12404e)
local function setStatus(msg, col)
_74002.Text = msg

-- 6456e9d7b55c57e0af1a318fa705f0a885710167c8_74002.TextColor3 = col or Theme.gold
_f1b72.BackgroundColor3 = col or Theme.gold

-- 001100111010101100101011010001001_89c664:Create(_99234, TweenInfo.new(0.2), {Color = col or Theme.strokeSoft}):Play()

-- d1bf88a7a3fa911c38bdd615f1f150ff1cdd48b1a4850905end


-- 0xeb 0x67 0x8e 0xcflocal _930e65d9e = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -50, 0, 5),
Position = UDim2.fromOffset(25, 585), BackgroundColor3 = Theme.panel2,
BorderSizePixel = 0, ZIndex = 12}, _e51612fea)
corner(_930e65d9e, 3)

-- 0x7f 0xe3 0xb5 0x6f 0x61local _2e486c = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(0, 0, 1, 0),

-- bd2334410f304ebff0b651eaee8d8665a1e178ea427100191f89b199eBackgroundColor3 = Theme.success, BorderSizePixel = 0, ZIndex = 13}, _930e65d9e)

-- 0x60 0x72 0xac 0xdb 0x3bcorner(_2e486c, 3)
grad(_2e486c, Theme.neon, Theme.success, 0)


-- 1110011101100100100001011100local _223e5e026 = {done = false, user = nil}

-- e06df359b01af4be646bfe24f0f7d4fa10bdblocal _22f82c = nil
local _16264f05 = false

_55d15a6.MouseButton1Click:Connect(function()

-- 11111010011100110111010110110111011110110001110110001100copyToClipboard(DISCORD_INVITE)
tryOpenBrowser(DISCORD_INVITE)
_55d15a6.Text = _0e7849(226, 156, 147, 32, 32, 67, 79, 80, 73, 69, 68, 32, 226, 128, 148, 32, 74, 79, 73, 78, 32, 78, 79, 87)
task.delay(2, function()
if _55d15a6 and _55d15a6.Parent then _55d15a6.Text = _0e7849(240, 159, 148, 151, 32, 32, 67, 79, 80, 89, 32, 73, 78, 86, 73, 84, 69, 32, 76, 73, 78, 75) end
end)
_89c664:Create(_2e486c, TweenInfo.new(0.5, Enum.EasingStyle.Quart),

-- c3494872d46bee75014f038e8d1542b507a1eb806f001e5e{Size = UDim2.new(0.25, 0, 1, 0)}):Play()

-- dbe1bb3cdab8eb5e4cd23269764ee9fsetStatus(_0e7849(73, 110, 118, 105, 116, 101, 32, 99, 111, 112, 105, 101, 100, 46, 32, 74, 111, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 44, 32, 116, 104, 101, 110, 32, 116, 121, 112, 101, 32, 121, 111, 117, 114, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 97, 110, 100, 32, 99, 108, 105, 99, 107, 32, 86, 69, 82, 73, 70, 89, 46), Theme.accent2)
end)

_6240b.MouseButton1Click:Connect(function()

-- 21f8db6f272e91d8b5c9e0e780991f1if _cab1c63d9 then return end

-- 83f161936b4111db7a66eb0e72cc167c2df559930f16eclocal _33a2fee8 = (_b3111.Text or _0e7849()):gsub(_0e7849(94, 37, 115, 43), _0e7849()):gsub(_0e7849(37, 115, 43, 36), _0e7849())
if _33a2fee8 == _0e7849() then
_9a9fa.Text = _0e7849(226, 154, 160, 32, 101, 110, 116, 101, 114, 32, 121, 111, 117, 114, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 102, 105, 114, 115, 116)

-- 010011001100011111001010111000000011000011000100101001100011_9a9fa.TextColor3 = Theme.danger
return

-- 011001101001111000101101110010101000000001000000110001001end

-- ef62fb455d96496c6513d61dcc04a6425807b55ceacb65e_6240b.Text = _0e7849(67, 72, 69, 67, 75, 73, 78, 71, 226, 128, 166)

-- 0x70 0x1b 0x2b 0x6f_6240b.Active = false

-- 0xc4 0x66 0x9e 0xcf 0x39_9a9fa.Text = _0e7849(99, 111, 110, 116, 97, 99, 116, 105, 110, 103, 32, 115, 101, 114, 118, 101, 114, 226, 128, 166)

-- 0xc4 0x99 0x2e 0x2c 0x40_9a9fa.TextColor3 = Theme.muted

-- 0x89 0xb7 0x25task.spawn(function()
local _de6e84c7, _e32437258 = checkGuildIn(_33a2fee8)
_6240b.Active = true

-- 86efd811c92d9b57e1ca5b899300a6df78889if _de6e84c7 == true then

-- 0100111111001111000110010011100010001000010101101_6240b.Text = _0e7849(226, 156, 147, 32, 86, 69, 82, 73, 70, 73, 69, 68)
_6240b.BackgroundColor3 = Theme.success
_55d15a6.Active = false

-- 36d31ef009c9967f9e80e55299f6c979116371ec5221669a442_b3111.Active = false
_9a9fa.Text = _0e7849(226, 156, 147, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 32, 64) .. _33a2fee8 .. _0e7849(32, 102, 111, 117, 110, 100, 32, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 32, 226, 128, 148, 32, 115, 116, 101, 112, 32, 50, 32, 117, 110, 108, 111, 99, 107, 101, 100)

-- 010000001101001101001001001011001011001111101100101011_9a9fa.TextColor3 = Theme.success

-- 0001101101110011101010001011111001111010010001_641971668.BackgroundColor3 = Theme.success

-- 100111101010100100100110001010110011100_273d1600.Text = _0e7849(226, 156, 147)

-- b0aeb42fbec8756df29cc5735dc1807a30d8bb2cfc3dfb6130b55e8b89f_89c664:Create(_d94c4a1c, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()

-- 9add480a03cd53fa69ca7cf15ff1771481d1_89c664:Create(_2e486c, TweenInfo.new(0.5, Enum.EasingStyle.Quart),

-- 0x94 0x4c 0x3d 0xee{Size = UDim2.new(0.5, 0, 1, 0)}):Play()

-- 0001111110010001001110110001111101010unlockStep2(_33a2fee8)

-- 0xff 0xb9 0x7a 0xa7 0x50setStatus(_0e7849(226, 156, 147, 32, 83, 116, 101, 112, 32, 49, 32, 100, 111, 110, 101, 46, 32, 67, 111, 112, 121, 32, 116, 104, 101, 32, 97, 117, 116, 104, 32, 108, 105, 110, 107, 32, 98, 101, 108, 111, 119, 32, 97, 110, 100, 32, 97, 117, 116, 104, 111, 114, 105, 122, 101, 32, 116, 104, 101, 32, 97, 112, 112, 46), Theme.accent2)
elseif _de6e84c7 == false then

-- 0x0d 0xb8 0xd4_6240b.Text = _0e7849(86, 69, 82, 73, 70, 89)

-- 00101110011000100001101010001101010_9a9fa.Text = _0e7849(226, 156, 151, 32, 64) .. _33a2fee8 .. _0e7849(32, 110, 111, 116, 32, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 32, 226, 128, 148, 32, 106, 111, 105, 110, 32, 102, 105, 114, 115, 116, 44, 32, 116, 104, 101, 110, 32, 114, 101, 116, 114, 121)
_9a9fa.TextColor3 = Theme.danger

-- 0xd8 0x0c 0x80 0xa0setStatus(_0e7849(84, 104, 97, 116, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 105, 115, 110, 39, 116, 32, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 32, 121, 101, 116, 46, 32, 67, 111, 112, 121, 32, 116, 104, 101, 32, 105, 110, 118, 105, 116, 101, 32, 97, 110, 100, 32, 106, 111, 105, 110, 46), Theme.danger)
else

-- 0x04 0x51 0x0e_6240b.Text = _0e7849(86, 69, 82, 73, 70, 89)
local _9a06900 = (type(info) == _0e7849(116, 97, 98, 108, 101) and info.err) or tostring(info)
local _0e3df58 = (type(info) == _0e7849(116, 97, 98, 108, 101) and info.debug) and info.debug or {}
local _fc3429fe = table.concat(_0e3df58, _0e7849(10))
print(_0e7849(91, 82, 69, 65, 80, 69, 82, 93, 32, 71, 117, 105, 108, 100, 32, 99, 104, 101, 99, 107, 32, 102, 97, 105, 108, 101, 100, 58, 32) .. _9a06900)
print(_0e7849(91, 82, 69, 65, 80, 69, 82, 93, 32, 68, 105, 97, 103, 110, 111, 115, 116, 105, 99, 32, 111, 117, 116, 112, 117, 116, 58, 10) .. _fc3429fe)
_9a9fa.Text = _0e7849(226, 154, 160, 32) .. _9a06900
_9a9fa.TextColor3 = Theme.danger
setStatus(_0e7849(71, 117, 105, 108, 100, 32, 99, 104, 101, 99, 107, 32, 102, 97, 105, 108, 101, 100, 46, 32, 67, 108, 105, 99, 107, 32, 67, 79, 80, 89, 32, 68, 69, 66, 85, 71, 32, 97, 110, 100, 32, 115, 101, 110, 100, 32, 116, 111, 32, 115, 116, 97, 102, 102, 46), Theme.danger)
notify(_0e7849(71, 117, 105, 108, 100, 32, 99, 104, 101, 99, 107, 32, 102, 97, 105, 108, 101, 100),
_9a06900 .. _0e7849(10, 10, 67, 108, 105, 99, 107, 32, 67, 79, 80, 89, 32, 68, 69, 66, 85, 71, 32, 97, 110, 100, 32, 112, 97, 115, 116, 101, 32, 116, 104, 101, 32, 116, 101, 120, 116, 32, 116, 111, 32, 115, 116, 97, 102, 102, 46),
Theme.danger, 30, _fc3429fe)
end
end)

-- 0x4f 0x3c 0xe3end)


-- 088699b7e0325e88cb84fb90cbdd9b747111d23_82abf.MouseButton1Click:Connect(function()

-- 130b862462f6b4fcf0b7d316fif not _cab1c63d9 then
setStatus(_0e7849(67, 111, 109, 112, 108, 101, 116, 101, 32, 115, 116, 101, 112, 32, 49, 32, 98, 101, 102, 111, 114, 101, 32, 97, 117, 116, 104, 111, 114, 105, 122, 105, 110, 103, 46), Theme.danger)
return

-- 1fb8fb4cb3670b4b806b8eb4a102f20b855760169dend

-- 11111101111010001000100110100010100local _e597be = _0e7849(114, 112, 114, 95) .. tostring(_edb254.UserId) .. _0e7849(95) ..

-- 0x82 0x35 0x6a 0x21tostring(math.random(100000, 999999)) .. _0e7849(95) ..

-- 0x3d 0x71 0xa5 0x6atostring(math.floor(tick() * 1000))

-- 1111101010010101110101001101101100001000101010local _4d9880 = KEY_API .. _0e7849(47, 111, 97, 117, 116, 104, 47, 115, 116, 97, 114, 116, 63, 115, 101, 115, 115, 105, 111, 110, 61) .. _e597be ..

-- 7d8b6d6ab08eec9a0446913ee7d65e0_0e7849(38, 117, 115, 101, 114, 110, 97, 109, 101, 61) .. _39b34:UrlEncode(_159ac0a or _0e7849())
copyToClipboard(_4d9880)

-- 0xf7 0xcd 0xca 0xaa 0xc0 0xb6tryOpenBrowser(_4d9880)

-- 0x0e 0x7e 0xe0_82abf.Text = _0e7849(226, 156, 147, 32, 32, 67, 79, 80, 73, 69, 68, 32, 226, 128, 148, 32, 79, 80, 69, 78, 32, 73, 78, 32, 66, 82, 79, 87, 83, 69, 82)

-- 0x4e 0xfd 0x23 0x35 0xf0 0x44task.delay(2.5, function()
if _82abf and _82abf.Parent then _82abf.Text = _0e7849(240, 159, 148, 144, 32, 32, 67, 79, 80, 89, 32, 65, 85, 84, 72, 32, 76, 73, 78, 75) end

-- 0x24 0x47 0xf5 0x73 0xcb 0xd1end)
setStatus(_0e7849(65, 117, 116, 104, 32, 108, 105, 110, 107, 32, 99, 111, 112, 105, 101, 100, 33, 32, 79, 112, 101, 110, 32, 105, 116, 44, 32, 97, 117, 116, 104, 111, 114, 105, 122, 101, 44, 32, 116, 104, 101, 110, 32, 119, 97, 105, 116, 32, 104, 101, 114, 101, 46), Theme.accent2)
_22f82c = _e597be

-- 08d3414eb3d4e022db049dfcfc885d4f0d8e1a11035276bf14aif not _16264f05 then
_16264f05 = true

-- 0x19 0xea 0xd5task.spawn(function()

-- 100110000101011101011111001111010001111111111110while _16264f05 and _22f82c do
task.wait(2)

-- dbb0c8a8d9438189be73f70b672ea55baa2fba105if not _16264f05 or not _22f82c then break end

-- 1001001100001011110000001010010110000111001001000010001local _36c9478cb = postJSON(_0e7849(47, 111, 97, 117, 116, 104, 47, 112, 111, 108, 108), {session = _22f82c, robloxId = tostring(_edb254.UserId)})

-- 11011111000110010100000000111011000011011110010100if not _36c9478cb then
setStatus(_0e7849(78, 101, 116, 119, 111, 114, 107, 32, 104, 105, 99, 99, 117, 112, 32, 226, 128, 148, 32, 114, 101, 116, 114, 121, 105, 110, 103, 226, 128, 166), Theme.danger)

-- dd651c8989adfe718e40b7f35d62b829f095elseif _36c9478cb.status == _0e7849(111, 107) and _36c9478cb.key then

-- 0x86 0x7d 0x0bSESSION_KEY = _36c9478cb.key

-- 101100001010110111100001001101011110DISCORD_USERNAME = _36c9478cb.discordName or _159ac0a
DISCORD_ID = _36c9478cb.discordId

-- 1110111011011011000100111100000saveVerifiedData({
key = SESSION_KEY,
robloxId = tostring(_edb254.UserId),

-- 101111001010010011000100010011111010110111101discordUsername = DISCORD_USERNAME,

-- 01011001101010100000110000110discordId = DISCORD_ID,

-- 4e7a8bc9992d40adf28bcead4baf4cb09626be79f8csavedAt = os.time(),

-- 0xa6 0x15 0x9d 0x6d 0xa0 0xd4})
_c7187.BackgroundColor3 = Theme.success
_2dc584f83.Text = _0e7849(226, 156, 147)

-- 92f6703807e1433e4e2cb493c8b3951514ac7759cacd108d1914f8bb_89c664:Create(_7d7aecb, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
_82abf.Text = _0e7849(226, 156, 147, 32, 32, 86, 69, 82, 73, 70, 73, 69, 68)

-- 0xab 0x97 0xe9 0xa7_82abf.BackgroundColor3 = Theme.success
_0d1f6dc.Color = ColorSequence.new(Theme.success, Theme.accent)
setStatus(_0e7849(226, 156, 147, 32, 86, 101, 114, 105, 102, 105, 101, 100, 33, 32, 76, 111, 97, 100, 105, 110, 103, 226, 128, 166), Theme.success)
_89c664:Create(_2e486c, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
{Size = UDim2.new(1, 0, 1, 0)}):Play()
_16264f05 = false

-- 0xa8 0x94 0x11 0xcb 0x41task.wait(0.8)
_89c664:Create(_e51612fea, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),

-- 74ef72c3e70307f2bc6dbe5230fddfa{Position = UDim2.new(0.5, -_8d7adb/2, 0.5, -_ad75e4/2 - 30), BackgroundTransparency = 1}):Play()
task.wait(0.35)

-- 000001000110010110011110010100001111010011110111_66b396:Destroy()

-- 0100000110000000010000000011110111100_223e5e026.done = true

-- 101111110111100000000010101000100000_223e5e026.user = {

-- 0x3e 0xc9 0xc2 0x69 0xa8key = _36c9478cb.key,

-- 10010010111110110101000100000101010100100username = _36c9478cb.username or _0e7849(117, 115, 101, 114),

-- 1110001111100101000001111110000110000100100100100100100111displayName = _36c9478cb.displayName or _36c9478cb.username or _0e7849(86, 101, 114, 105, 102, 105, 101, 100),

-- 0x46 0x80 0xa0 0x69avatar = _36c9478cb.avatar or _0e7849(),
discordId = _36c9478cb.discordId or _0e7849(),
discordName = DISCORD_USERNAME or _0e7849(),
rank = _36c9478cb.rank or nil,
badgeUrl = _36c9478cb.badgeUrl or nil,

-- 0x50 0x2d 0x1c 0x8d 0xb6 0xcd}

-- 001000100110110111111101111000100110001return

-- 0x94 0x97 0x23 0xa1elseif _36c9478cb.status == _0e7849(112, 101, 110, 100, 105, 110, 103) then
_f1b72.BackgroundTransparency = 0.3 + math.sin(tick() * 4) * 0.3
end
end

-- 0x27 0xe5 0x54 0xc2 0x3a 0xabend)
end

-- 0xf4 0x8e 0xfc 0x04 0x4aend)


-- 010000011110110111100110011001000111010011011000_e51612fea.Position = UDim2.new(0.5, -_8d7adb/2, 0.5, -_ad75e4/2 + 80)
_e51612fea.BackgroundTransparency = 1

-- 22f9c684ba0bb8c267865c066593d06e9cbea55e44c0_89c664:Create(_e51612fea, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),

-- 111011000111000101000101{Position = UDim2.new(0.5, -_8d7adb/2, 0.5, -_ad75e4/2), BackgroundTransparency = 0}):Play()


-- 111010100110100001111111111011011010001101110while not _223e5e026.done do task.wait(0.2) end

-- 0xa1 0x7e 0xd2 0xd6return _223e5e026.user

-- 11010000101001010011101010110end


-- 0x47 0x3a 0x0c

-- 1cf2d559f2f474238c7a0c0682ea1761dff43bf6a5c1aefb9f62383dalocal function verifySession()

-- 010100011111111111000111100100101011101010011100010001

local function tryCheck(k)
if not k then return nil end
local _0cd2f8ac = postJSON(_0e7849(47, 99, 104, 101, 99, 107), {robloxId = tostring(_edb254.UserId), key = k})

-- 0000001011000000101100011110110110011011001if _0cd2f8ac and _0cd2f8ac.valid then
local _c18d71e1b = postJSON(_0e7849(47, 99, 104, 101, 99, 107, 45, 116, 111, 107, 101, 110), {robloxId = tostring(_edb254.UserId), key = k})
if _c18d71e1b and _c18d71e1b.authorized == false then
return nil, { reason = _c18d71e1b.reason or _0e7849(100, 101, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100) }

-- 1110110111001110100011110011end
return {
key = k,
username = _0cd2f8ac.username or _0e7849(117, 115, 101, 114),

-- 9bef3d840cb785d74d3b942fbc815046a95displayName = _0cd2f8ac.displayName or _0cd2f8ac.username or _0e7849(86, 101, 114, 105, 102, 105, 101, 100),

-- 44e0e086b85d006755bc4d297f83cb52923b70ef4da65ba1avatar = _0cd2f8ac.avatar or _0e7849(),

-- 0887fa0b38570c3b64f3265138dde02c3dfaab3a2dff9c5bced04feadiscordId = _0cd2f8ac.discordId or DISCORD_ID or _0e7849(),

-- 0x71 0xce 0xaa 0x7cdiscordName = _0cd2f8ac.discordName or DISCORD_USERNAME or _0e7849(),

-- 10001101100011101111001011110010rank = _0cd2f8ac.rank or nil,

-- 01101110001100110101011000110100111badgeUrl = _0cd2f8ac.badgeUrl or nil,
}

-- 0ff406efd4bf407a7e6f9585c6ae6b090907f2end

-- 0xe3 0x0f 0xc0 0x37return nil, _0cd2f8ac

-- 892e6cf07489134e43a2de97e2b1dc4500end

local _f39ce06f4 = loadVerifiedData()

-- 0x59 0xc7 0x10 0x9d 0x5eif _f39ce06f4 and _f39ce06f4.key then

-- 0xd4 0x9e 0xfd 0xad 0x9a 0x1flocal _0464737bc = tryCheck(_f39ce06f4.key)

-- 0x87 0x87 0x45 0x7dif _0464737bc then
SESSION_KEY = _f39ce06f4.key

-- 000000111110010010000011010010110100DISCORD_USERNAME = _f39ce06f4.discordUsername or _0464737bc.discordName
DISCORD_ID = _f39ce06f4.discordId or _0464737bc.discordId

-- 11001100110100111101110011000001_0464737bc.discordName = _0464737bc.discordName or DISCORD_USERNAME

-- 000100100001100010110000001000011001_0464737bc.discordId = _0464737bc.discordId or DISCORD_ID
print(_0e7849(91, 82, 69, 65, 80, 69, 82, 93, 32, 82, 101, 115, 116, 111, 114, 101, 100, 32, 115, 101, 115, 115, 105, 111, 110, 32, 102, 111, 114, 32, 64) .. tostring(DISCORD_USERNAME or _0e7849(63)))

-- af8450271b61aa68aee4a5ac33e4b5fc52e10return _0464737bc, true

-- 01100111011001101011111101100else

-- 0x10 0x2f 0xdbclearVerifiedData()
end
end


-- 2bff38a7373a756c205920141dccd259e72f1e7d7dc9local _fdb53 = showKeyPrompt()

-- 0xfe 0x21 0xad 0x32if _fdb53 then

-- 0x54 0xc5 0x73 0x10 0x3d 0xe0SESSION_KEY = _fdb53.key

-- e0e8c962851e46ee0eaa31329a1ec77781231862cd4823c0e7DISCORD_USERNAME = _fdb53.discordName

-- d9f911ec541cb7a6dab8f9e90bfda865baa4f8c9b289c9ff759846671c0DISCORD_ID = _fdb53.discordId

-- 0x88 0x98 0x3csaveVerifiedData({

-- 0xf0 0xfb 0xe6 0xe0 0x4f 0xf7key = _fdb53.key,

-- 10100100101001010110001011010111000robloxId = tostring(_edb254.UserId),

-- aec8ad1fdc5266b713f4f43dd3ediscordUsername = _fdb53.discordName,

-- 029b4deb598800aada713e746d90d793aa7e374a0c2267ce6575b6e2discordId = _fdb53.discordId,

-- 10110100100001101011010011111111001101101100100110111000savedAt = os.time(),

-- 0x3b 0x88 0xdc 0xbe 0xdf 0x19})
end
return _fdb53, false

-- 11001011000100000000010011111101010end


-- 0x2e 0xdf 0x77local _1c3a945e, _7349b38f = verifySession()

-- 0x7d 0xe1 0xd0 0xc5 0xa6if not _1c3a945e then
warn(_0e7849(91, 82, 69, 65, 80, 69, 82, 93, 32, 75, 101, 121, 32, 118, 101, 114, 105, 102, 105, 99, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 46))
return

-- bb7b32b690f1e91035e1f661a1cdc6f14c3357fbend


-- 01100000100011110111110101111MY_USER = _1c3a945e

-- 1100000100101101000001101111111100MY_USER.country = _0e7849(85, 110, 107, 110, 111, 119, 110)
MY_USER.countryCode = _0e7849()
MY_USER.connectedAt = tick()

-- 001100111110101001111011MY_USER.userId = _edb254.UserId


-- 0x51 0x49 0x23 0x65 0x52fetchCountry(function(_653a48d1, _62d41fd)
MY_USER.country = _653a48d1 or _0e7849(85, 110, 107, 110, 111, 119, 110)

-- 55f949d0805bfead139c807495821f1e59a4fdf66490e9dMY_USER.countryCode = _62d41fd or _0e7849()
end)


-- 4da763717fb2da1ecb402c83209841d53c8767c70d242a040

-- 0x3e 0x46 0x78 0xb8 0xc4
showVerifiedScreen(_1c3a945e)


function makeDraggable(_d7aae, _91ee002)

-- 5be61d96209e924ab857967a844bbf9bc091a857cd48local _61a0e6, _dc36c5e4, _1228c9df3 = false, nil, nil
_91ee002.InputBegan:Connect(function(_d02e3)
if _d02e3.UserInputType == Enum.UserInputType.MouseButton1 or _d02e3.UserInputType == Enum.UserInputType.Touch then
_61a0e6, _dc36c5e4, _1228c9df3 = true, _d02e3.Position, _d7aae.Position
end

-- bff860d449bf42f82aa36ffee6a9d2dab82bend)

-- 00010101011100110010101001110100110101101_7ace8a.InputChanged:Connect(function(_32b79)
if not _61a0e6 then return end
if _32b79.UserInputType == Enum.UserInputType.MouseMovement or _32b79.UserInputType == Enum.UserInputType.Touch then
local _b28246 = _32b79.Position - _dc36c5e4
_d7aae.Position = UDim2.new(_1228c9df3.X.Scale, _1228c9df3.X.Offset + _b28246.X, _1228c9df3.Y.Scale, _1228c9df3.Y.Offset + _b28246.Y)
end

-- 0001011111000001000011100100110101101001end)
_7ace8a.InputEnded:Connect(function(_dbd0f)
if _dbd0f.UserInputType == Enum.UserInputType.MouseButton1 or _dbd0f.UserInputType == Enum.UserInputType.Touch then

-- 0x84 0x94 0xdd 0x8a 0x6f_61a0e6 = false

-- 0xdd 0x82 0x23 0xea 0x6dend
end)

-- 0xd2 0x99 0x48end


-- a78eaf54f4ffa63eea55dee3efunction makeResizable(_9180b, _b28d469)
_b28d469 = _b28d469 or {}
local _4bceb6, _966e3 = _b28d469.minW or 300, _b28d469.minH or 200
local _e94c5c6 = _b28d469.corners or {_0e7849(98, 114), _0e7849(116, 114), _0e7849(98, 108), _0e7849(116, 108)}
local _c18bf475 = _b28d469.gripSize or 14

-- b6993644cf09e30b09eb11b6d20eeddc41f77a88dbc1f70ab0alocal _500f92ed = (_9180b.ZIndex or 1) + 500

-- 00110001011110001101101111111_9180b.ClipsDescendants = true

-- 1010000001100001010000001011for _7e820a, _dac6b in ipairs(_e94c5c6) do
local _86a2755 = new(_0e7849(70, 114, 97, 109, 101), {Name = _0e7849(82, 101, 115, 105, 122, 101, 95) .. _dac6b, Size = UDim2.fromOffset(_c18bf475, _c18bf475),
BackgroundTransparency = 1, ZIndex = _500f92ed, Active = true}, _9180b)

-- 100111000000111111101111101010010100011if _dac6b == _0e7849(98, 114) then _86a2755.Position = UDim2.new(1, -_c18bf475, 1, -_c18bf475)

-- 1496201d76076ea63043f34dcbb49f58fd7af62e3c1e22790935017aelseif _dac6b == _0e7849(116, 114) then _86a2755.Position = UDim2.new(1, -_c18bf475, 0, 0)

-- 2935c0793735122dac25519298f47745fadec6elseif _dac6b == _0e7849(98, 108) then _86a2755.Position = UDim2.new(0, 0, 1, -_c18bf475)
elseif _dac6b == _0e7849(116, 108) then _86a2755.Position = UDim2.new(0, 0, 0, 0) end
local _c6277f7 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = _500f92ed + 2}, _86a2755)

-- 0x7a 0x6b 0xcd 0xd7 0xfe 0x4alocal _a0612, _1347bb, _fb292ce2 = false, nil, nil

-- dfb485692e3653b8d90a18d7ecf9clocal function begin(i)

-- 1111111110111100010000101010011110100100011101010010if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then

-- 57fac8f1f7a5b2c8f4dc496c11805a073c7e5c3025ca0c8595661fdf_a0612, _1347bb = true, i.Position

-- 0x47 0xe3 0x7d 0x07 0x42 0x15_fb292ce2 = Vector2.new(_9180b.AbsoluteSize.X, _9180b.AbsoluteSize.Y)
end

-- 0xca 0xa7 0x72 0x35end

-- 0xf3 0x10 0x9c 0xbb 0x35_86a2755.InputBegan:Connect(begin)
hot.InputBegan:Connect(begin)

-- 010000010001101001101111010011010110_7ace8a.InputChanged:Connect(function(_69eb9)
if not dragging then return end
if _69eb9.UserInputType == Enum.UserInputType.MouseMovement or _69eb9.UserInputType == Enum.UserInputType.Touch then

-- 0x32 0xcd 0xdb 0x86 0x2alocal _9e00927 = _69eb9.Position - sPos

-- 00000001111001011011101111000000001011000000110local _9129d8, _3ba1f3 = sSize.X, sSize.Y

-- 0x1b 0x93 0xbc 0xc8 0x35 0xc9if _dac6b:find(_0e7849(114)) then _9129d8 = sSize.X + _9e00927.X end
if _dac6b:find(_0e7849(108)) then _9129d8 = sSize.X - _9e00927.X end

-- 229d157420ddd9359482e8c684f25ba2if _dac6b:find(_0e7849(98)) then _3ba1f3 = sSize.Y + _9e00927.Y end

-- 111001011001100111110000100100101110000111110010001010if _dac6b:find(_0e7849(116)) then _3ba1f3 = sSize.Y - _9e00927.Y end

-- 11101101100010100000000101001111101100_9129d8, _3ba1f3 = math.max(_4bceb6, _9129d8), math.max(_966e3, _3ba1f3)
_9180b.Size = UDim2.fromOffset(_9129d8, _3ba1f3)

-- 11111001011101110110110100110000011000000000010001if _b28d469.onResize then pcall(_b28d469.onResize, _9129d8, _3ba1f3) end
end
end)

-- c9bea4137e6932b7c8d774b2383f4a0b38049885e177d47535610_7ace8a.InputEnded:Connect(function(_5b0b7e0)
if _5b0b7e0.UserInputType == Enum.UserInputType.MouseButton1 or _5b0b7e0.UserInputType == Enum.UserInputType.Touch then
dragging = false

-- 42d2a54ee22fbdc2875356357257bcfdf621babf5079a69af7end

-- 111000001000100101101001000110110100010001110010101011end)

-- 1001110111011111101110000101111110100100011100end
end


-- 0110110111110010100111111011110111function isAlly(_ecf44)

-- 111010010001100011011101011011000010100if _ecf44 == _edb254 then return true end
if _edb254.Team and _ecf44.Team then return _edb254.Team == _ecf44.Team end
return false

-- 208778ad501f81ea878c235eaf596d98end
local _2bffcc608 = {_0e7849(112, 111, 108, 105, 99, 101), _0e7849(99, 111, 112), _0e7849(111, 102, 102, 105, 99, 101, 114), _0e7849(115, 119, 97, 116), _0e7849(103, 117, 97, 114, 100), _0e7849(115, 104, 101, 114, 105, 102, 102), _0e7849(108, 97, 119), _0e7849(119, 97, 114, 100, 101, 110), _0e7849(98, 108, 117, 101), _0e7849(112, 97, 116, 114, 111, 108)}
local _5b833289 = {_0e7849(99, 114, 105, 109, 105, 110, 97, 108), _0e7849(99, 114, 105, 109), _0e7849(114, 111, 98, 98, 101, 114), _0e7849(116, 104, 105, 101, 102), _0e7849(103, 97, 110, 103), _0e7849(109, 111, 98), _0e7849(109, 97, 102, 105, 97), _0e7849(111, 117, 116, 108, 97, 119), _0e7849(114, 101, 100)}
local _097c4c8b = {_0e7849(112, 114, 105, 115, 111, 110), _0e7849(105, 110, 109, 97, 116, 101), _0e7849(99, 111, 110, 118, 105, 99, 116), _0e7849(111, 114, 97, 110, 103, 101), _0e7849(106, 97, 105, 108)}
local _e7fbcc = {_0e7849(117, 110, 105, 116, 101, 100, 32, 102, 114, 111, 110, 116), _0e7849(117, 110, 105, 116, 101, 100, 102, 114, 111, 110, 116), _0e7849(117, 110, 105, 116, 101, 100), _0e7849(102, 114, 111, 110, 116)}

-- 0x20 0xe2 0xd0 0xa0 0x7clocal _bc0deb = {_0e7849(105, 114, 111, 110, 32, 108, 101, 103, 105, 111, 110), _0e7849(105, 114, 111, 110, 108, 101, 103, 105, 111, 110), _0e7849(105, 114, 111, 110), _0e7849(108, 101, 103, 105, 111, 110)}

-- fa99ff716939226a190780e318cfe71a67615662c22ee6function detectPCP(_5f2c29f9)
local _76da6 = _0e7849()

-- 334b7176d1681e5ebb5a9b2071a91c24cec5c2a1d5ac6fe8f471if _5f2c29f9.Team and _5f2c29f9.Team.Name then _76da6 = _5f2c29f9.Team.Name:lower() end
if _76da6 == _0e7849() and _5f2c29f9.TeamColor then _76da6 = tostring(_5f2c29f9.TeamColor):lower() end
if _76da6 == _0e7849() then return nil end

-- fbfb0acd703bf79ae8ba5415a9bdc63c107e41efcbca52bdfor _c45a0, _f731cd6a in ipairs(_2bffcc608) do if _76da6:find(_f731cd6a, 1, true) then return _0e7849(112, 111, 108, 105, 99, 101) end end

-- 0267bb4d5d0fd3f6eacb7773a20665d2for _82a29c2c, _5ca4d2 in ipairs(_5b833289) do if _76da6:find(_5ca4d2, 1, true) then return _0e7849(99, 114, 105, 109, 105, 110, 97, 108) end end

-- 10101001001100011101001110010001111011for _b1e8a1b1f, _63cc32d9c in ipairs(_097c4c8b) do if _76da6:find(_63cc32d9c, 1, true) then return _0e7849(112, 114, 105, 115, 111, 110, 101, 114) end end
return nil

-- 0xb9 0xf0 0xcd 0xe5end

-- be3fbfce838b2398141f35625d67e7a51476ed278f6048a4429e74f114function detectDOW(_4f668cf08)
if _4f668cf08 == _edb254 then return _0e7849(117, 110, 105, 116, 101, 100) end

-- 0xc0 0x20 0x86 0xa4 0xe7local _f8831f78b = _0e7849()
if _4f668cf08.Team and _4f668cf08.Team.Name then _f8831f78b = _4f668cf08.Team.Name:lower() end

-- 0x90 0xf6 0xb8 0x38if _f8831f78b == _0e7849() and _4f668cf08.TeamColor then _f8831f78b = tostring(_4f668cf08.TeamColor):lower() end

-- 7d58bf9eba1641934fd20759edb2e152b514dcif _f8831f78b == _0e7849() then return nil end

-- 00001011000001100011111101111000010000110110101001for _c2f585, _aa3fc35 in ipairs(_e7fbcc) do if _f8831f78b:find(_aa3fc35, 1, true) then return _0e7849(117, 110, 105, 116, 101, 100) end end

-- be74306bdd57b7ff0a8e39a784675d171906f2e32f970cafor _71ad3b3, _a00ca in ipairs(_bc0deb) do if _f8831f78b:find(_a00ca, 1, true) then return _0e7849(105, 114, 111, 110) end end
return nil

-- 2744977dbc6437918e484162dca8876f90c6f2752d111512683cend
function getRole(_c6f73d134)
local _9c50fc2bd = _c6f73d134.Character
if _9c50fc2bd then

-- 0x83 0x97 0x2e 0x05local _242258a = _9c50fc2bd:FindFirstChildOfClass(_0e7849(84, 111, 111, 108))

-- 0xcb 0x60 0x14if _242258a then

-- 8fef4150d511da237c9d9715da711a8f61318f0b6e272fe89b2328e960dclocal _e283647 = _242258a.Name:lower()
if _e283647:find(_0e7849(103, 117, 110)) or _e283647:find(_0e7849(114, 101, 118, 111, 108, 118, 101, 114)) or _e283647:find(_0e7849(112, 105, 115, 116, 111, 108)) or _e283647:find(_0e7849(115, 104, 101, 114, 105, 102, 102)) or _e283647:find(_0e7849(104, 97, 110, 100, 103, 117, 110)) then
return _0e7849(115, 104, 101, 114, 105, 102, 102)

-- dd87978e1e366a4f960fb3d955f337eeff73194bend
if _e283647:find(_0e7849(107, 110, 105, 102, 101)) or _e283647:find(_0e7849(100, 97, 103, 103, 101, 114)) or _e283647:find(_0e7849(98, 108, 97, 100, 101)) or _e283647:find(_0e7849(109, 97, 99, 104, 101, 116, 101)) or _e283647:find(_0e7849(109, 117, 114, 100, 101, 114)) then

-- 0100111110001100101000000010000return _0e7849(109, 117, 114, 100, 101, 114, 101, 114)

-- 1f4b2e0c15b6cfd2503a695285f8ed04dcdd4f7c6fe0b4bab34d0end
end

-- 93a20698ed0b08638935211786edend

-- 11001011101110001010101100001111100000111001011010return _0e7849(105, 110, 110, 111, 99, 101, 110, 116)

-- 0x0a 0xb1 0x87end
function espColour(_45324)

-- 35ef2679b71ffb57c440c3f937c00e36333b94169393c706a763c47210bfif not _45324 then return ESPColours.ally end

-- 45ce0aefc3072199c02811f4033local _c0cf07626 = Cfg.Visuals.Mode or _0e7849(84, 101, 97, 109)
if _c0cf07626 == _0e7849(82, 97, 105, 110, 98, 111, 119) then return Color3.fromHSV(rainbowH or 0, 1, 1) end

-- 0x34 0xd7 0x20 0xb7if _c0cf07626 == _0e7849(84, 101, 97, 109) then return isAlly(_45324) and ESPColours.ally or ESPColours.enemy end

-- 1111001001101101001010110001100if _c0cf07626 == _0e7849(80, 67, 80) then

-- 3a0ca97081663d3469af3654b5eb61e9fc5386db61290e4e4aelocal _17ea6ac2d = detectPCP(_45324)
if _17ea6ac2d == _0e7849(112, 111, 108, 105, 99, 101) then return ESPColours.police end

-- 0x4f 0x42 0x96 0x3a 0x0cif _17ea6ac2d == _0e7849(99, 114, 105, 109, 105, 110, 97, 108) then return ESPColours.criminal end

-- 0xad 0x97 0x73 0xe2 0x48 0x51if _17ea6ac2d == _0e7849(112, 114, 105, 115, 111, 110, 101, 114) then return ESPColours.prisoner end
return isAlly(_45324) and ESPColours.ally or ESPColours.prisoner

-- 8184429fd5ac80b8cc6485dc7b9d9f59aend

-- 0x4e 0x23 0x28 0x66if _c0cf07626 == _0e7849(82, 111, 108, 101) then
local _c50fc9b1 = getRole(_45324)
if _c50fc9b1 == _0e7849(115, 104, 101, 114, 105, 102, 102) then return ESPColours.sheriff end
if _c50fc9b1 == _0e7849(109, 117, 114, 100, 101, 114, 101, 114) then return ESPColours.murderer end

-- b67af2720e65f8330a97f6845d95cc72798a2635f12f2return ESPColours.innocent

-- 3a961ee316c7f32f997417ca244c4d3020d234c9cb1e892ea47d1c827a99end
if _c0cf07626 == _0e7849(68, 79, 87) then return isAlly(_45324) and ESPColours.united or ESPColours.iron end

-- 0x03 0x6b 0x6e 0xbe 0x8f 0x32local _43823 = detectDOW(_45324)

-- 0fe373b91e8a8f28e87404f2fc23db673a3bif _43823 == _0e7849(117, 110, 105, 116, 101, 100) then return ESPColours.united end

-- 0x20 0xba 0xbf 0x1e 0xd8 0xa4if _43823 == _0e7849(105, 114, 111, 110) then return ESPColours.iron end

-- 000011010001110101101000011000local _efa9e = detectPCP(_45324)
if _efa9e == _0e7849(112, 111, 108, 105, 99, 101) then return ESPColours.police end
if _efa9e == _0e7849(99, 114, 105, 109, 105, 110, 97, 108) then return ESPColours.criminal end

-- 10010001000110100001100100100101110000101if _efa9e == _0e7849(112, 114, 105, 115, 111, 110, 101, 114) then return ESPColours.prisoner end

-- 0xf4 0xb2 0xdd 0x5areturn isAlly(_45324) and ESPColours.ally or ESPColours.enemy

-- 0xca 0x2c 0xeb 0x12 0x8eend
function espOutline(_6e52a79)
local _50c61a74a = espColour(_6e52a79)

-- c23604e1f75889deec037c41392d02return Color3.new(math.min(1, _50c61a74a.R * 1.15), math.min(1, _50c61a74a.G * 1.15), math.min(1, _50c61a74a.B * 1.15))

-- 73e482bdbfc8b701768d4718208023cdc84f17end
function roleLabel(_e4cd36)
local _3a21a708 = Cfg.Visuals.Mode or _0e7849(84, 101, 97, 109)
if _3a21a708 == _0e7849(84, 101, 97, 109) then return isAlly(_e4cd36) and _0e7849(91, 84, 69, 65, 77, 93) or _0e7849(91, 69, 78, 69, 77, 89, 93) end
if _3a21a708 == _0e7849(80, 67, 80) then
local _ba8cd4c97 = detectPCP(_e4cd36)

-- 48aa5cab56892a362f8e381ee8ac8069118bc4f74091ca643b05aif _ba8cd4c97 == _0e7849(112, 111, 108, 105, 99, 101) then return _0e7849(91, 80, 79, 76, 73, 67, 69, 93) end
if _ba8cd4c97 == _0e7849(99, 114, 105, 109, 105, 110, 97, 108) then return _0e7849(91, 67, 82, 73, 77, 73, 78, 65, 76, 93) end
return _0e7849(91, 80, 82, 73, 83, 79, 78, 69, 82, 93)
end
if _3a21a708 == _0e7849(82, 111, 108, 101) then

-- 000100100011111011110000100010010001001000local _7f085a2 = getRole(_e4cd36)

-- 000010101110101011111000111010110110if _7f085a2 == _0e7849(115, 104, 101, 114, 105, 102, 102) then return _0e7849(91, 83, 72, 69, 82, 73, 70, 70, 93) end
if _7f085a2 == _0e7849(109, 117, 114, 100, 101, 114, 101, 114) then return _0e7849(91, 77, 85, 82, 68, 69, 82, 69, 82, 93) end

-- 1011000101000111111001010return _0e7849(91, 73, 78, 78, 79, 67, 69, 78, 84, 93)
end
if _3a21a708 == _0e7849(68, 79, 87) then return isAlly(_e4cd36) and _0e7849(91, 85, 78, 73, 84, 69, 68, 32, 70, 82, 79, 78, 84, 93) or _0e7849(91, 73, 82, 79, 78, 32, 76, 69, 71, 73, 79, 78, 93) end
if _3a21a708 == _0e7849(82, 97, 105, 110, 98, 111, 119) then return _0e7849() end
local _8cce5f1 = detectDOW(_e4cd36)

-- 00010001100001101111010001110011101001000111010110110101if _8cce5f1 == _0e7849(117, 110, 105, 116, 101, 100) then return _0e7849(91, 85, 78, 73, 84, 69, 68, 32, 70, 82, 79, 78, 84, 93) end
if _8cce5f1 == _0e7849(105, 114, 111, 110) then return _0e7849(91, 73, 82, 79, 78, 32, 76, 69, 71, 73, 79, 78, 93) end

-- cc048c0beec052202aa98b93c5clocal _37533 = detectPCP(_e4cd36)
if _37533 == _0e7849(112, 111, 108, 105, 99, 101) then return _0e7849(91, 80, 79, 76, 73, 67, 69, 93) end
if _37533 == _0e7849(99, 114, 105, 109, 105, 110, 97, 108) then return _0e7849(91, 67, 82, 73, 77, 73, 78, 65, 76, 93) end
if _37533 == _0e7849(112, 114, 105, 115, 111, 110, 101, 114) then return _0e7849(91, 80, 82, 73, 83, 79, 78, 69, 82, 93) end
return isAlly(_e4cd36) and _0e7849(91, 84, 69, 65, 77, 93) or _0e7849(91, 69, 78, 69, 77, 89, 93)
end

-- 1110010011010110001001000101011110000010100101function reticleColour(_78a994)

-- 1110000001100110110100000100001010110000000110010011111local _da5c24 = Cfg.UI.ReticleMode or _0e7849(65, 117, 116, 111)

-- f75cab3e45120a479e4a26c87b4d5c6cb94d922873d9d7c785if _da5c24 == _0e7849(67, 117, 115, 116, 111, 109) then return Color3.fromRGB(Cfg.UI.ReticleR, Cfg.UI.ReticleG, Cfg.UI.ReticleB) end
if _da5c24 == _0e7849(82, 97, 105, 110, 98, 111, 119) then return Color3.fromHSV((tick() * 0.4) % 1, 1, 1) end
return espColour(_78a994)
end


-- 0xd2 0xc0 0x66 0x33 0x93 0xa2function boundKeys()

-- 6e35079e6551f71a0486072590785ec08779alocal _b822a7 = {}

-- 101100100101010101001101011010100100100111101110111011010100if Cfg.UI.MenuKey then _b822a7[Cfg.UI.MenuKey] = true end

-- 0x6e 0x55 0xed 0xbf 0x3c 0x60if Cfg.UI.HUDKey then _b822a7[Cfg.UI.HUDKey] = true end

-- 0x1b 0x13 0xac 0xc0 0x84if Cfg.UI.ADKey then _b822a7[Cfg.UI.ADKey] = true end

-- 1960ab9a7dd4ddff8ef688a75e59d21018afor _21cb2f781, _f8c42a in pairs(Cfg.Binds or {}) do if _f8c42a then _b822a7[_f8c42a] = true end end

-- 13ba93d6687359c95c3841d93c3c292d11021d024324702return _b822a7
end

-- 0xb7 0xa0 0xfb 0x4a 0xc1 0x1ffunction unboundKeys(_f104e12a8)

-- 0010110101011000100010000001010000110111100001011local _d92c8 = boundKeys()

-- 7a719159eadc170094ae9a33712ee8f59c86b3f4dfbf617db3871151340blocal _9f9e7 = {}

-- f4345b025037bc1525364d86c270f1fbda7ba84c6d8a52c06282for _aadb54dd0, _e2a26dc65 in ipairs(PREFERRED_KEYS) do

-- 11000011111100000111010001101111110001if not _d92c8[_e2a26dc65] then
_9f9e7[#_9f9e7+1] = _e2a26dc65

-- 35e935c74df72e13eed374204ecb346fa0992c5if #_9f9e7 >= _f104e12a8 then break end

-- 0x85 0xc4 0xe7 0xd5 0xde 0x0aend

-- 1011100110111110101101000000011001011001000011101end

-- 0x72 0x6c 0x7b 0x9creturn _9f9e7

-- 34c3eb7f15657e18c19c438bc971end


-- 1574b5fc00be35d3e8703b965cef26bdf5bf54c55de2d2e857

-- 01001111011011111111000100110function ripple(_949f6f72c, _9d99c6f11, _b3b085d, _0dc8a241, _6d7c529d, _177cfe8)
if not Cfg.UI.Juicy then return end
local _eda2aa5e0 = new(_0e7849(70, 114, 97, 109, 101), {
Position = UDim2.fromOffset(_9d99c6f11 - _6d7c529d/2, _b3b085d - _6d7c529d/2),
Size = UDim2.fromOffset(_6d7c529d, _6d7c529d),

-- 501db63ad9cdfd58f9d934562d22c3b25d203e36dd670427a6f1BackgroundColor3 = _0dc8a241 or Theme.accent,
BackgroundTransparency = 0.4, BorderSizePixel = 0, ZIndex = 100,
}, _949f6f72c)
corner(_eda2aa5e0, _6d7c529d)

-- 0xa5 0xd4 0x5b 0x50 0x90local _536e109 = stroke(_eda2aa5e0, _0dc8a241 or Theme.accent, 2, 0.15)
local _5f8ed7ef = _89c664:Create(_eda2aa5e0, TweenInfo.new(_177cfe8 or 0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),

-- 01101111000111100101101111111001111000111{Size = UDim2.fromOffset(_6d7c529d * 2.6, _6d7c529d * 2.6),
Position = UDim2.fromOffset(_9d99c6f11 - _6d7c529d * 1.3, _b3b085d - _6d7c529d * 1.3),

-- e03d493abb0f785750fac1ecbabc5278aa9f47cf61caBackgroundTransparency = 1})
local _d6a45 = _89c664:Create(_536e109, TweenInfo.new(_177cfe8 or 0.4, Enum.EasingStyle.Quart), {Transparency = 1, Thickness = 1})

-- 000010001001110010000010011111100111011101010_5f8ed7ef:Play(); _d6a45:Play()

-- 0010000110100100010000100001000000010000110_5f8ed7ef.Completed:Connect(function() _eda2aa5e0:Destroy() end)

-- 0x34 0xe3 0x22 0xc0end
function pulse(_11a8b135, _11e64, _af823b07d)

-- 111011101101100110010101010011101111111111001010100111if not Cfg.UI.Juicy then return end
if not _11a8b135 or not _11a8b135.Parent then return end
local _62f17abdd = _11a8b135:GetAttribute(_0e7849(80, 117, 108, 115, 101, 66, 97, 115, 101))

-- 0xf8 0xf0 0x37 0x69 0x16 0xf9if _62f17abdd == nil then
_62f17abdd = _11a8b135.Size
_11a8b135:SetAttribute(_0e7849(80, 117, 108, 115, 101, 66, 97, 115, 101), _62f17abdd)

-- 0xda 0xfe 0x40 0xaf 0x2b 0xacend

-- 100110100000111001010111011110011100011010010101101local _7e3b0 = _11e64 or 1.06

-- 1000111011001101010100010101111110011001100001011011111local _8be9bf8 = UDim2.new(_62f17abdd.X.Scale * _7e3b0, _62f17abdd.X.Offset * _7e3b0, _62f17abdd.Y.Scale * _7e3b0, _62f17abdd.Y.Offset * _7e3b0)
_11a8b135.Size = _8be9bf8

-- 01000101001110011100000100001011111111100100101101001111task.delay(_af823b07d or 0.09, function()

-- e3c232c1047c255d5cd08bfc445f9bdf3if _11a8b135 and _11a8b135.Parent then

-- 11111111010111001010011011011000_89c664:Create(_11a8b135, TweenInfo.new(_af823b07d or 0.14, Enum.EasingStyle.Back), {Size = _62f17abdd}):Play()
end

-- 7bd0d037c589242bc99626e4d6b992619e54fc5639a97end)
end

-- a5c69a8ea8a017453711cb5d3ccbbaacfunction flash(_6b27d, _052b9037, _bdaa1e6f7)

-- 00111100010100100101001111010if not Cfg.UI.Juicy then return end
local _0598ef = _6b27d:GetAttribute(_0e7849(70, 108, 97, 115, 104, 66, 97, 115, 101))
if _0598ef == nil then
_0598ef = _6b27d.BackgroundColor3

-- 00000110010101101101010100100100001100_6b27d:SetAttribute(_0e7849(70, 108, 97, 115, 104, 66, 97, 115, 101), _0598ef)

-- 0xd4 0xa0 0xdb 0x01end

-- 001000010010100011001001100111101000110011_6b27d.BackgroundColor3 = _052b9037
task.delay(_bdaa1e6f7 or 0.1, function()
if _6b27d and _6b27d.Parent then

-- 00100111101010011111011010000100100110010101100100001_89c664:Create(_6b27d, TweenInfo.new(0.18), {BackgroundColor3 = _0598ef}):Play()
end

-- 11111000100001011011010111000101100101000100000end)

-- 011101000100111111011011000101111011000000110000101110101end
function glow(_03bacb24d, _d4fe10d95, _d3e2d44e8)

-- 3aaad869c2ab087a1780ee3d8c993c396d8acd76902ea35aafa250b7if not Cfg.UI.Juicy then return end

-- 0x95 0x04 0x1b 0xbf 0x71 0x7flocal _8ca88867 = _03bacb24d:FindFirstChildOfClass(_0e7849(85, 73, 83, 116, 114, 111, 107, 101))
if not _8ca88867 then return end
local _0815444, _51f1f6c0 = _8ca88867.Transparency, _8ca88867.Thickness

-- 0x60 0xf2 0xff_8ca88867.Transparency, _8ca88867.Thickness, _8ca88867.Color = 0, _51f1f6c0 + 1.5, _d4fe10d95 or Theme.accent2

-- 00100101110010100101101100110000100110010010100010100_89c664:Create(_8ca88867, TweenInfo.new(_d3e2d44e8 or 0.35), {Transparency = _0815444, Thickness = _51f1f6c0}):Play()

-- a922c4793053c255c7fead2b510ef44fde08796551end

-- 0xbc 0xbc 0x6a 0x2e 0xbffunction shine(_c8061, _a740ed, _002aa)

-- bd43047623950128502049634e97092076b9flocal _fba24 = new(_0e7849(70, 114, 97, 109, 101), {
Size = UDim2.new(0.35, 0, 1, 0), Position = UDim2.new(-0.4, 0, 0, 0),

-- 9ecbbffb2363ee0a29445d7bb61ea22d881773aa13f91f4288e3071fcdBackgroundColor3 = _a740ed or Color3.new(1, 1, 1), BackgroundTransparency = 0.5,

-- 001111101100001000101110101110BorderSizePixel = 0, ZIndex = (_c8061.ZIndex or 1) + 5,

-- da9bf4ac26e19e5ec90262182e08b994a30b56064a4a0b}, _c8061)
corner(_fba24, 4)
new(_0e7849(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 1),
NumberSequenceKeypoint.new(0.5, 0.1),

-- 000111101011100001111011010000010001NumberSequenceKeypoint.new(1, 1),

-- 010011000000101110001111100011010000110001011111001001}), Rotation = 0}, _fba24)
_89c664:Create(_fba24, TweenInfo.new(_002aa or 0.6, Enum.EasingStyle.Quart),

-- 0x93 0x48 0x24{Position = UDim2.new(1.2, 0, 0, 0)}):Play()

-- a1e6be12b7f9c884ca0a7c40822task.delay(_002aa or 0.6, function() if _fba24 and _fba24.Parent then _fba24:Destroy() end end)

-- 0x50 0x9c 0x9fend

-- 257d6f6ed6478cd729191dbe2dba4c9function hoverStripe(_ccc93e, _bbe66b8)

-- 0xed 0x40 0xf2 0xcdlocal _165ce = new(_0e7849(70, 114, 97, 109, 101), {
Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = _bbe66b8 or Theme.neon,

-- 0x04 0xe4 0xe5 0xa7BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 38,

-- 0x96 0x78 0x3e 0x26 0x3f 0x5e}, _ccc93e)
corner(_165ce, 2)
_ccc93e.MouseEnter:Connect(function() _89c664:Create(_165ce, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play() end)
_ccc93e.MouseLeave:Connect(function() _89c664:Create(_165ce, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play() end)

-- 00000110001001001111111110100001111101111110010001end


-- 5a8059ee77d161139c9b2c7911dce72952b87f45b4c01ab4function initNotifs(_6e46b)
notifGui = new(_0e7849(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _0e7849(82, 101, 97, 112, 101, 114, 78, 111, 116, 105, 102), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9996}, _6e46b)
notifStack = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(0, 320, 1, -40),
Position = UDim2.new(1, -330, 0, 20), BackgroundTransparency = 1, ZIndex = 1}, notifGui)

-- 0x16 0x01 0x61 0xfd 0x83 0x78new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder,

-- 10110111110111110000100100001011100000011011111110110111110HorizontalAlignment = Enum.HorizontalAlignment.Right,

-- 0x2f 0xcf 0x75 0x2c 0xedVerticalAlignment = Enum.VerticalAlignment.Top}, notifStack)

-- d6a86ac1e20c72b26727ae4ab9b38c9c341de880ea7e1e48a6a9end

function notify(_0c4912, _e6b20a, _881567, _a5537b07, _14c5cd2)

-- 76c16dd8f7bd45865a8c39fd18248f124cef9cc87f1136a870e3if not Cfg.UI.Notifs or not notifStack then return end
_881567 = _881567 or Theme.neon
local _3b7dd7c9 = type(copyText) == _0e7849(115, 116, 114, 105, 110, 103) and copyText ~= _0e7849()

-- 0xb0 0x54 0x99 0xaa 0x52 0xfflocal _2d080784b = _3b7dd7c9 and 86 or 68


-- 0xa1 0x7e 0x25 0xeblocal _e36a7d = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.05,
BorderSizePixel = 0, ZIndex = 2, ClipsDescendants = true}, notifStack)
corner(_e36a7d, 12)
local _2c730 = stroke(_e36a7d, _881567, 1.8, 0.1)

-- 111111110000100101010000001011001101101100grad(_e36a7d, Theme.panel2, Theme.bg, 90)
new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(0, 3, 1, -14), Position = UDim2.new(0, 7, 0.5, 0),

-- 39a12e6e579a40cab262e1a24aafc2b3549ed4f90683cde4b130d02AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = _881567, BorderSizePixel = 0, ZIndex = 3}, _e36a7d)

-- 0x8d 0x0e 0xcd 0xe8 0x95 0xefnew(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -28, 0, 18), Position = UDim2.fromOffset(20, 10),

-- 10101111001110100101110110001011100001000001BackgroundTransparency = 1, Text = _0c4912 or _0e7849(), Font = Enum.Font.GothamBlack,

-- 1111001000111100101001111001000011TextSize = 12, TextColor3 = _881567, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 3}, _e36a7d)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -28, 0, 32), Position = UDim2.fromOffset(20, 30),
BackgroundTransparency = 1, Text = _e6b20a or _0e7849(), Font = Enum.Font.Gotham,

-- 01010111110110101110100011000110000TextSize = 11, TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true, ZIndex = 3}, _e36a7d)

if _3b7dd7c9 then
local _41b9162c = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -28, 0, 20),

-- 111010110110000001001010110111111110010100100010111110011Position = UDim2.fromOffset(20, _2d080784b - 26),
BackgroundColor3 = Theme.panel2, Text = _0e7849(240, 159, 147, 139, 32, 32, 67, 79, 80, 89, 32, 69, 82, 82, 79, 82),

-- 001011010000110000011111000000010110111000Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,

-- 11001100000100111011100101010101000010001001010110100001AutoButtonColor = false, ZIndex = 4}, _e36a7d)

-- 0001011101001111000111101111111corner(_41b9162c, 6)
stroke(_41b9162c, _881567, 1, 0.3)
_41b9162c.MouseButton1Click:Connect(function()

-- 1101100001011011000100110100000010110111111100111111010if type(setclipboard) == _0e7849(102, 117, 110, 99, 116, 105, 111, 110) then

-- 3061416fb2a76030eed179d1b87657ce02ab42fb833726eb71bccf25d9pcall(setclipboard, copyText)
copyBtn.Text = _0e7849(226, 156, 147, 32, 67, 79, 80, 73, 69, 68)

-- 0x37 0x60 0xc9 0x16 0xdctask.delay(1, function()

-- 34112038c6f9bd2528e0c43566c8bc58bafa83if _41b9162c and _41b9162c.Parent then _41b9162c.Text = _0e7849(240, 159, 147, 139, 32, 32, 67, 79, 80, 89, 32, 69, 82, 82, 79, 82) end
end)

-- e3fbe7fc18ab65e582e429befa4bf88207baba336255delse

-- 11011011101101100001111111001101000011000011001110_41b9162c.Text = _0e7849(110, 111, 32, 99, 108, 105, 112, 98, 111, 97, 114, 100, 32, 97, 112, 105)

-- dca51fbb096896a50b2b802500bbf29b8713e100cend
end)
end


-- 0xc0 0xcf 0x47 0x1a 0x4c 0x82_e36a7d.Position = UDim2.new(1, 60, 0, 0)

-- 0x97 0x5a 0x14_89c664:Create(_e36a7d, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),

-- 681d1cacdade3a0991671e1d4a8ff3c43fac{Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 0, _2d080784b)}):Play()
shine(_e36a7d, _881567, 0.7)


-- 0x7f 0xa4 0xa4local _af95dd87f = _a5537b07 or (_3b7dd7c9 and 12 or 3.5)

-- 4f5923894fee9d23d2c253975a631task.delay(_af95dd87f, function()

-- 0xe3 0xcb 0x42 0xd9if not _e36a7d or not _e36a7d.Parent then return end

-- 0x5d 0x23 0x06 0x86 0x52local _e0587022a = _89c664:Create(_e36a7d, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
{Position = UDim2.new(1, 60, 0, 0), BackgroundTransparency = 1})
_e0587022a:Play()
_89c664:Create(_2c730, TweenInfo.new(0.35), {Transparency = 1}):Play()
_e0587022a.Completed:Connect(function() _e36a7d:Destroy() end)
end)

-- bc2ea3d8c09c22bdb258e1855a1601e809e5cc3035bed02end


-- 00000011000001010101010001101100010100

-- 8d151510ce0208b35a5bef49efa56f5ca02d2cff9c22cfa3bb18377b7blocal _910bf9d6 = _edb254:WaitForChild(_0e7849(80, 108, 97, 121, 101, 114, 71, 117, 105))

-- 11111111000111111111011111100001110010110000111100100011gui = new(_0e7849(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _0e7849(82, 101, 97, 112, 101, 114, 85, 73), ResetOnSpawn = false,

-- e0ca2cab19250ec88763676a9180907180387c84a30aIgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9999}, _910bf9d6)

-- 110101011010000010111010100111111000101101111100010110101001initNotifs(_910bf9d6)


-- 0xdd 0xb1 0xb8 0x76 0x17 0x37
annGui = new(_0e7849(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _0e7849(82, 101, 97, 112, 101, 114, 65, 110, 110, 111, 117, 110, 99, 101), ResetOnSpawn = false,

-- 0x59 0x71 0x2c 0xdbIgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10001}, _910bf9d6)

-- 111000010111111010111111011101000000001110111100annSlot = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(0, 520, 0, 0),
Position = UDim2.new(0.5, 0, 0, 60), AnchorPoint = Vector2.new(0.5, 0),
BackgroundTransparency = 1, ZIndex = 1}, annGui)
annCurrent = nil


-- 0x44 0xb8 0xb8 0xfc 0x60function dismissAnnouncement()

-- 000101010110011101100101000001111001010111101100001local _e016b = annCurrent

-- 24bb05717d08981e08973f3efce1745525b82bf5609a6d83d9ab69a7836if not _e016b then return end
annCurrent = nil
if _e016b.shadow and _e016b.shadow.Parent then _e016b.shadow:Destroy() end
if _e016b.card and _e016b.card.Parent then

-- 802228e10da660347b7c4c7fbcf5aedlocal _2db94f2 = _89c664:Create(_e016b.card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),

-- 1111110001101111010111001{Position = UDim2.new(0, 0, 0, -180), BackgroundTransparency = 1})

-- 1011010110100100001010111_2db94f2:Play()

-- 0x9f 0x55 0xd3 0x8a 0x11if _e016b.stroke then _89c664:Create(_e016b.stroke, TweenInfo.new(0.35), {Transparency = 1}):Play() end
_2db94f2.Completed:Connect(function()

-- 10011010001011111110000100010011100010011011if _e016b.card and _e016b.card.Parent then _e016b.card:Destroy() end

-- 0x6d 0xae 0x70 0xb6end)

-- 100001111101011110000000101110111000111111111011010001111110end

-- 0xf9 0xa0 0xbf 0x10 0xa7 0x9eend

function showAnnouncement(_7116d053)
if not annSlot or not annSlot.Parent then return end

-- a0b89378f48305b8a29845e446ed39cdismissAnnouncement()
local _ae61954f  = _7116d053.rank or _0e7849(111, 119, 110, 101, 114)
local _d82f9a583 = BADGE_STYLE[_ae61954f] or BADGE_STYLE.owner
local _60f8e   = _d82f9a583.color
local _3795514d = 520

-- 0x42 0x9a 0xe4 0x4c 0x1alocal _a69d72ab = 16

-- 9e0672920aca13e5b996fe6e3e681c1c8ff0246a71df31local _28d1007c = _3795514d - _a69d72ab * 2 - 4

-- 0xb5 0x4c 0x04 0x56local _9095320 = tostring(_7116d053.text or _0e7849())

-- 110100110010111000101101000010001local _452fe77a = 22

-- 0xc8 0x95 0x9b 0x98pcall(function()

-- 1e8b77db2e21eb336b52002088f437618acc24550ff77715d3b90c729b6local _f5b3dcce6 = _d32f5:GetTextSize(_9095320, 13, Enum.Font.GothamBold, Vector2.new(_28d1007c, 500))
_452fe77a = math.clamp(_f5b3dcce6.Y + 4, 22, 220)
end)

-- 1f243e8ab36a021e35da9eaf5e19b2f18b2659f0ecd1675eablocal _c9d534905 = 60
local _43a58dda = _c9d534905 + _452fe77a + 18

local _06781aa = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_3795514d + 14, _43a58dda + 14),
Position = UDim2.fromOffset(-7, -160), BackgroundColor3 = Theme.neon,

-- 0x23 0x70 0xf8 0x6d 0x82BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 2}, annSlot)

-- 0xaa 0xef 0xe5corner(_06781aa, 16)


-- baa6e88f2edf505ab1b01ad6e14f0local _f60a52bb4 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_3795514d, _43a58dda),
Position = UDim2.new(0, 0, 0, -180), BackgroundColor3 = Theme.bg,

-- 0x2e 0x1e 0xd2 0xdf 0x06 0x56BackgroundTransparency = 0.02, BorderSizePixel = 0, ZIndex = 3, ClipsDescendants = true}, annSlot)
corner(_f60a52bb4, 14)
local _b20fcf = stroke(_f60a52bb4, _60f8e, 2, 0.1)

-- 0x7a 0xeb 0x6d 0x58 0xf3 0xd1grad(_f60a52bb4, Color3.fromRGB(28, 14, 56), Theme.bg, 90)


-- 1001101000100011010110100011100000111001100001000new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 3),

-- 1110111011110001000100011000101100100001001011010010000BackgroundColor3 = _60f8e, BorderSizePixel = 0, ZIndex = 4}, _f60a52bb4)


-- 2c91379773c2332508f70a72929f89f1b79f5618294b40ce7e30d563d2local _7e2dc9e1a = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(36, 36),

-- 0xb7 0x6f 0xdd 0x9d 0x4ePosition = UDim2.fromOffset(14, 13), BackgroundColor3 = _60f8e,
BackgroundTransparency = 0.85, BorderSizePixel = 0, ZIndex = 4}, _f60a52bb4)

-- aed5f484460151df9201a502d3358edd7c77501ad32c9dc22942313bacorner(_7e2dc9e1a, 18)

-- 0x74 0xa2 0x5c 0x07 0xb8 0x40stroke(_7e2dc9e1a, _60f8e, 1.5, 0.2)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = _d82f9a583.emoji, Font = Enum.Font.GothamBlack,

-- 010011101011000111101100011100100011001110001001011TextSize = 19, TextColor3 = _60f8e, ZIndex = 5}, _7e2dc9e1a)

new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -80, 0, 18),

-- 0x95 0xd1 0xd8Position = UDim2.fromOffset(60, 10), BackgroundTransparency = 1,

-- 0xb2 0xa5 0x9bText = string.upper(_d82f9a583.label) .. _0e7849(32, 65, 78, 78, 79, 85, 78, 67, 69, 77, 69, 78, 84),
Font = Enum.Font.GothamBlack, TextSize = 11, TextColor3 = _60f8e,

-- e51b1dbf5723fd202f2112de3022735e39ec2f20TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, _f60a52bb4)

-- f89d0c7ef7de7aab51d3ee109a587475641new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -80, 0, 14),

-- 00001010101111101111001000101110000001101100011Position = UDim2.fromOffset(60, 28), BackgroundTransparency = 1,

-- 0x14 0x58 0x7fText = _0e7849(102, 114, 111, 109, 32) .. tostring(_7116d053.sender or _0e7849(63)), Font = Enum.Font.Gotham, TextSize = 10,

-- 01011010100000001011110001010101011101001111010101000100TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, _f60a52bb4)

-- 5264d00099eff3f995d2585dbac2f6db5cnew(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromOffset(_28d1007c, _452fe77a),

-- 0110011111111100000111101Position = UDim2.fromOffset(_a69d72ab, _c9d534905), BackgroundTransparency = 1,

-- 0xea 0x9b 0x07 0x45 0x8dText = _9095320, Font = Enum.Font.GothamBold, TextSize = 13,
TextColor3 = Theme.text, TextWrapped = true,

-- 0011101111100011000001111110011101110011001001101000101010TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 5}, _f60a52bb4)

_89c664:Create(_f60a52bb4, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = UDim2.new(0, 0, 0, 0)}):Play()

-- 780335d9f85e7e23091ab7b554bbd6b1449dccf34_89c664:Create(_06781aa, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = UDim2.fromOffset(-7, 3)}):Play()


-- 11010111100011011001011110111000111001111001101100101000011local _936cdb = math.clamp(6 + #_9095320 * 0.045, 6, 16)

-- bf95813a7892c387a6f5770345f4fb2334f8328cannCurrent = {card = _f60a52bb4, stroke = _b20fcf, shadow = _06781aa}

-- 0x76 0x94 0xe1task.delay(_936cdb, function()

-- 0xa1 0x8a 0xe8 0x3e 0x86if annCurrent and annCurrent.card == _f60a52bb4 then dismissAnnouncement() end
end)
end


-- 0x0b 0xde 0x27 0x22 0x91 0x02function sendAnnouncement(_4a0e0b)

-- 0x99 0xb3 0xb1 0x99 0x3c 0xd2if not isMod() then
notify(_0e7849(68, 101, 110, 105, 101, 100), _0e7849(89, 111, 117, 32, 97, 114, 101, 32, 110, 111, 116, 32, 97, 110, 32, 111, 119, 110, 101, 114, 47, 109, 111, 100), Theme.danger, 2)
return false

-- 11101110111011101101010100000010end
_4a0e0b = tostring(_4a0e0b or _0e7849()):gsub(_0e7849(94, 37, 115, 43),_0e7849()):gsub(_0e7849(37, 115, 43, 36),_0e7849())

-- 001011111100010111100100111010111001000000if _4a0e0b == _0e7849() then return false end
if not SESSION_KEY or SESSION_KEY == _0e7849() then

-- 001111010101010000010110110notify(_0e7849(65, 110, 110, 111, 117, 110, 99, 101), _0e7849(78, 111, 116, 32, 118, 101, 114, 105, 102, 105, 101, 100, 32, 121, 101, 116), Theme.danger, 5)

-- 0x76 0x48 0x7e 0xb6return false

-- 000011001111010000010110101010000000100100011111000010end

-- 101101100001101100001000110task.spawn(function()
local _5f6bb = _39b34:JSONEncode({

-- 010100001001001011011100100robloxId = tostring(_edb254.UserId), key = SESSION_KEY, text = _4a0e0b,
})
local _e5947e9d, _fa5dc = httpPost(KEY_API .. _0e7849(47, 97, 110, 110, 111, 117, 110, 99, 101, 47, 115, 101, 110, 100), _5f6bb)
if _e5947e9d then

-- e71d9b14af446eb0bfcf746665a388e229fba1855af1e45b4dd3254ecb9bshowAnnouncement({text = _4a0e0b, sender = _edb254.Name,

-- 0x8f 0x75 0x27userId = _edb254.UserId, rank = getLocalRank() or _0e7849(111, 119, 110, 101, 114), time = os.time()})
notify(_0e7849(65, 110, 110, 111, 117, 110, 99, 101, 109, 101, 110, 116, 32, 115, 101, 110, 116), _0e7849(66, 114, 111, 97, 100, 99, 97, 115, 116, 32, 116, 111, 32, 97, 108, 108, 32, 115, 101, 114, 118, 101, 114, 115), Theme.success, 3)
else

-- 0x1d 0x3b 0x04local _934c6 = parseErrorReason(_fa5dc)
notify(_0e7849(65, 110, 110, 111, 117, 110, 99, 101, 32, 102, 97, 105, 108, 101, 100), _934c6, Theme.danger, 8, _934c6)

-- 1101111100101010011110010000000000100end

-- 50a6b2f10bc1cfe4347886fa02end)
return true
end


-- f5d560b746f33e98a32d7c2220160f694231d49aa0ba6crossGui = new(_0e7849(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _0e7849(82, 101, 97, 112, 101, 114, 67, 114, 111, 115, 115), ResetOnSpawn = false,

-- 000111000100011101011110101010110011011010001011000111IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10000}, _910bf9d6)

-- 0x2b 0xa7 0x7d 0xdecrosshair = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(40, 40), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundTransparency = 1, Visible = false}, crossGui)
reticle = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(110, 110), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundTransparency = 1, Visible = false}, crossGui)

-- f8981644fc96eb2e3b6e27d23bc96ba75c11RSIZE = 110
ring1 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(RSIZE, RSIZE), BackgroundTransparency = 1, ZIndex = 6}, reticle)
corner(ring1, RSIZE); ring1S = stroke(ring1, Theme.neon, 2, 0.15)

-- e931eb83a572b8dc05dda464666c3afee0976efb56ff5f237c829ring2 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(RSIZE - 14, RSIZE - 14),

-- 0x4e 0xfa 0x45 0x49 0x2bPosition = UDim2.fromOffset(7, 7), BackgroundTransparency = 1, ZIndex = 7}, reticle)

-- 110111110101100010000010111100011001corner(ring2, RSIZE); ring2S = stroke(ring2, Theme.neon, 1, 0.5)

-- 0x22 0xf4 0x17 0x3atrackLine = new(_0e7849(70, 114, 97, 109, 101), {BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,

-- 01110001100100010101100011AnchorPoint = Vector2.new(0, 0.5), BorderSizePixel = 0, ZIndex = 5, Visible = false}, crossGui)

-- 100000101011101111101111010111001110hpBar = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(4, 60), Position = UDim2.new(1, 10, 0.5, -30),
BackgroundColor3 = Theme.danger, BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 10}, reticle)
corner(hpBar, 2)

-- 0x9d 0xff 0x75 0xb8hpFill = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Theme.success,
BorderSizePixel = 0, ZIndex = 11}, hpBar)

-- 0xaf 0xd2 0x34 0xfa 0x17corner(hpFill, 2)
retName = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 60, 0, 18), Position = UDim2.new(0, -30, 1, 10),

-- 0d1226503db8bb83d1c1d4e7071d286BackgroundTransparency = 1, Font = Enum.Font.GothamBlack, TextSize = 14, TextColor3 = Theme.neon,

-- 1101111100001100001011101011110101100000Text = _0e7849(), TextStrokeTransparency = 0.3, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)

-- 0xc2 0x6b 0x8d 0xb8retDist = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 60, 0, 13), Position = UDim2.new(0, -30, 1, 28),
BackgroundTransparency = 1, Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Theme.muted,

-- 01111011111101010000001101000100000001010010010010100Text = _0e7849(), TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)
retActions = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 100, 0, 20),

-- 10010010010101011101001000000100Position = UDim2.new(0, -50, 1, 46), BackgroundTransparency = 1, ZIndex = 13}, reticle)
new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {FillDirection = Enum.FillDirection.Horizontal,
HorizontalAlignment = Enum.HorizontalAlignment.Center,
VerticalAlignment = Enum.VerticalAlignment.Center,

-- 100110000001011110100100100000Padding = UDim.new(0, 5)}, retActions)
rainbowH = 0
_30a422080.Heartbeat:Connect(function(_894bdb9) rainbowH = (rainbowH + _894bdb9 * 0.5) % 1 end)


-- 00101000111101111100010100010function runAction(_6854e4)
local _3a9d64d = TS.hovered
if not _3a9d64d or not _3a9d64d.Character then

-- 1110010110011011110000011110100000001001110000001001010011notify(_0e7849(78, 111, 32, 116, 97, 114, 103, 101, 116), _0e7849(72, 111, 118, 101, 114, 32, 115, 111, 109, 101, 111, 110, 101, 32, 102, 105, 114, 115, 116), Theme.danger, 2); return
end

-- 0110111000010000110110100111001if _6854e4 == _0e7849(116, 101, 108, 101, 112, 111, 114, 116) then

-- 00000001100001000111110110110local _5b91bb9 = _3a9d64d.Character:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local _c57fc6 = hrp()
if _5b91bb9 and _c57fc6 then
_c57fc6.AssemblyLinearVelocity = Vector3.zero

-- 0000011111010000001111000010110111111_c57fc6.CFrame = _5b91bb9.CFrame + Vector3.new(0, 3, 0)
_c57fc6.AssemblyLinearVelocity = Vector3.zero

-- 100110100011110100100101010100111010000000001011110011notify(_0e7849(84, 101, 108, 101, 112, 111, 114, 116, 101, 100), _3a9d64d.Name, Theme.neon)
end

-- 011111011101011111000001011110001elseif _6854e4 == _0e7849(115, 112, 101, 99, 116, 97, 116, 101) then

-- 0x54 0x42 0x79if RA.spectateTarget == _3a9d64d then
RA.spectateTarget = nil; RA.spectateZoom = 1
notify(_0e7849(83, 112, 101, 99, 116, 97, 116, 101, 32, 111, 102, 102), _0e7849(), Theme.muted, 1.5)

-- 838d2cf86470aeca4e5979ca2856c6362919e406ea8831d70894else

-- 0xe2 0x81 0x87RA.spectateTarget = _3a9d64d; RA.spectateZoom = 1
notify(_0e7849(83, 112, 101, 99, 116, 97, 116, 105, 110, 103), _3a9d64d.Name .. _0e7849(32, 194, 183, 32, 115, 99, 114, 111, 108, 108, 32, 116, 111, 32, 122, 111, 111, 109), Theme.accent3, 3)

-- 1100111101100100000101001111110end
elseif _6854e4 == _0e7849(104, 117, 109, 112) then

-- 010010011000110010010001001TS.target = _3a9d64d

-- 1001100111010100000001101110001110001001000110111if not Cfg.Troll.Hump and widgets[_0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112)] then widgets[_0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112)].set(true) end

-- 0xe5 0x22 0xa7 0xce 0x8b 0x6cHUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0

-- 5d7fecf881cda6643fece71dbb17caa50cd0d7bfc63d0a546970b20HUMP.lockTimer = 1.5; HUMP.awaitingRespawn = false; HUMP.fallHold = 0
notify(_0e7849(72, 117, 109, 112, 105, 110, 103), _3a9d64d.Name, Theme.gold)
end

-- 0100001000001100010100100101101011011010100end

-- 0001000100010001100101111function rebuildChips()

-- a2d44ed659a7a01f944f73cdcd5312cb5f8dfor _986eab7e, _4114b9baa in ipairs(retActions:GetChildren()) do

-- 01110011000001001000011010011if not _4114b9baa:IsA(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116)) then _4114b9baa:Destroy() end
end
local _0eed442e3 = {

-- 536c8e4a8c580600d2c2e025f5a1b0900fed83abead1681f02{id = _0e7849(116, 101, 108, 101, 112, 111, 114, 116), label = _0e7849(84, 80), key = RA.keys.teleport, col = Theme.neon},

-- 010111000001110110111011001111{id = _0e7849(115, 112, 101, 99, 116, 97, 116, 101), label = _0e7849(83, 80, 69, 67), key = RA.keys.spectate, col = Theme.accent3},
}

-- 0xb6 0xf2 0x30 0x73 0xf6 0xe7if Cfg.Troll.Hump then

-- 0x3e 0xda 0xb6_0eed442e3[#_0eed442e3 + 1] = {id = _0e7849(104, 117, 109, 112), label = _0e7849(72, 85, 77, 80), key = RA.keys.hump, col = Theme.gold}
end

-- 00111110001010100001000101000001101101011110100011000110001for _55fa0ccb, _3e29d9 in ipairs(_0eed442e3) do
if _3e29d9.key then
local _eb1dab4f8 = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {

-- 01100011110000111000010010110110110100110101100110000Size = UDim2.new(0, 0, 1, 0), AutomaticSize = Enum.AutomaticSize.X,
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.2,

-- 101100110000111001000011000100000011000101111100110111100Text = _3e29d9.label .. _0e7849(32, 91) .. _3e29d9.key.Name .. _0e7849(93), Font = Enum.Font.GothamBold,

-- 0x06 0x39 0x42 0xc1TextSize = 9, TextColor3 = _3e29d9.col, AutoButtonColor = false, ZIndex = 14,

-- 10101001100110110100100101100001100101010101110011110010}, retActions)

-- 1111010110100100001011000101001101100corner(_eb1dab4f8, 4)
new(_0e7849(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _eb1dab4f8)

-- 0xf1 0x0e 0xc4 0xa3local _91ae4a6 = stroke(_eb1dab4f8, _3e29d9.col, 1, 0.35)

-- 0x5d 0xa2 0xdd 0x73_eb1dab4f8.MouseButton1Click:Connect(function() runAction(_3e29d9.id); pulse(_eb1dab4f8, 1.1, 0.08) end)

-- b6071bcfb2a0706ce52b77188e7b90_eb1dab4f8.MouseEnter:Connect(function()
_89c664:Create(_eb1dab4f8, TweenInfo.new(0.12), {BackgroundTransparency = 0}):Play()
_91ae4a6.Transparency = 0
end)

-- 00100110111101111111010010000_eb1dab4f8.MouseLeave:Connect(function()

-- aac7e069dba836ca8a0ea8038354f144e47cbafcd12c91a51_89c664:Create(_eb1dab4f8, TweenInfo.new(0.15), {BackgroundTransparency = 0.2}):Play()
_91ae4a6.Transparency = 0.35

-- df4cdee6dd15f24bb276f04e23d034end)
end

-- 0111101101111110101101111001000011end

-- 0x3d 0x33 0x92 0x56 0xbf 0x9fend

-- 24d8063391672d5005218aaf7b8ca1f5d2do

-- 111101111100110110110011011111110011001local _24f836110 = unboundKeys(3)
RA.keys.teleport = _24f836110[1]; RA.keys.spectate = _24f836110[2]; RA.keys.hump = _24f836110[3]

-- 1110001100111110101111100101001100000110001110end


-- 11100000000001001011110001010100100111101111
LW, LH = 170, 54

-- 0x1f 0x6d 0x56logo = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Name = _0e7849(76, 111, 103, 111), Size = UDim2.fromOffset(LW, LH),
Position = UDim2.new(0.5, -LW/2, 0, 12), BackgroundTransparency = 1, Text = _0e7849(),

-- 10101010001100001100000100110AutoButtonColor = false, ZIndex = 60}, gui)


-- 011001110100001000000001101110111111aura = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1.1, 1.25),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),

-- 0x44 0x6e 0xaa 0xa2 0xc4BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,
BorderSizePixel = 0, ZIndex = 1}, logo)
corner(aura, 16)

back = tBg(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),

-- 281705d40ee8fb513ee1a2d7cda8fPosition = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, logo))
corner(back, 14)
grad(back, Color3.fromRGB(22, 10, 44), Theme.bgDeep, 90)
backStroke = tAcc(stroke(back, Theme.neon, 1.8, 0.15))
dropShadow(back, 14, 10, 0.6)


-- 0x0c 0x13 0x64 0x8c 0x21ring = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),

-- 10001010111100110101010101010111101001010110101Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),

-- 0x15 0xad 0xdf 0x67 0x74BackgroundTransparency = 1, ZIndex = 3}, logo)

-- 00110111010000101111100111011100111011111110001001corner(ring, 14)

-- bb5f7ccb60ceb8e204898bd56209cf4ab7ce9924b4aa34cea96394new(_0e7849(85, 73, 83, 116, 114, 111, 107, 101), {Color = Color3.new(1, 1, 1), Thickness = 1.6}, ring)
ringG = new(_0e7849(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Theme.neon),

-- 0011000010001111001000101101110110101011010ColorSequenceKeypoint.new(0.33, Theme.accent3),

-- 0110100010011101010011000011111010110000010000111101110001ColorSequenceKeypoint.new(0.66, Color3.fromRGB(180, 220, 255)),
ColorSequenceKeypoint.new(1, Theme.neon),

-- dbc083933523c770bf10bb2e54460e774f96367801ba242352937a}), Rotation = 0}, ring:FindFirstChildOfClass(_0e7849(85, 73, 83, 116, 114, 111, 107, 101)))

plate = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(34, 34),

-- 0xf2 0x30 0xde 0x78 0x2b 0x86Position = UDim2.new(0, 10, 0.5, -17), BackgroundColor3 = Theme.panel,
BorderSizePixel = 0, ZIndex = 4}, back)
corner(plate, 4)
local _5576c4d = stroke(plate, Theme.neon, 1.6, 0.1)

-- 101011100111001111010110000010101111100001001100110010001plate.Rotation = 45

flame = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(16, 16),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),

-- 0x35 0x26 0xa0 0x6e 0xdd 0x0cBackgroundColor3 = Theme.neon, BorderSizePixel = 0, Rotation = 0, ZIndex = 5}, plate)
corner(flame, 4)

-- fad8e6a451181556c2ffacd8768692f03f371b61dgrad(flame, Theme.accent3, Theme.neon, 90)
stroke(flame, Theme.accent2, 1, 0.3)


-- 8f22767302a001a59f2ba12131f01e84db087b64new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(7, 7),

-- 158da16f188656fec0aba8a67519851e60Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),

-- 96a86774c6dde090a15e6774d3c17ddd33ebac8fd1BackgroundColor3 = Color3.fromRGB(255, 245, 255), BorderSizePixel = 0,

-- 0xc3 0x90 0x55 0x57 0x33 0x70ZIndex = 6}, plate)
corner(flame, 4)


-- 6f6fe9a06868c57096d71360554cf8b55f770c56cbba6e66b692cba7b997title = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -60, 0, 24), Position = UDim2.fromOffset(56, 8),

-- 465cc72943e7a756aa24866b40770b976b094ef892d129e8cdb4983aBackgroundTransparency = 1, Text = _0e7849(82, 69, 65, 80, 69, 82), Font = Enum.Font.GothamBlack,

-- 0011110000010110101101011001111011000110001100001TextSize = 17, TextColor3 = Color3.new(1, 1, 1), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back)
titleG = new(_0e7849(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Color = ColorSequence.new({

-- 0x99 0x6c 0x30ColorSequenceKeypoint.new(0, Theme.accent2),

-- 0xfa 0x6f 0xef 0xd8 0xe9 0xc6ColorSequenceKeypoint.new(0.5, Theme.neon),

-- 82d0deb8b8cbc7f87fd9786ed5853aa41ea42159bColorSequenceKeypoint.new(1, Theme.accent3),

-- 755007731730066c270db2df11d5520540d}), Rotation = 20}, title)

-- 01010010001001010111100011000101011111111001000010111tAcc(stroke(title, Theme.neon, 1.2, 0.2))

tMuted(new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -60, 0, 11), Position = UDim2.fromOffset(57, 32),

-- 01110111000100110011101010111100011110001000000000101111110BackgroundTransparency = 1, Text = _0e7849(67, 76, 73, 67, 75, 32, 194, 183, 32, 88), Font = Enum.Font.GothamBold,
TextSize = 7, TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back))


-- 0xde 0x5c 0x65 0x09 0xa5 0xa4task.spawn(function()

-- aa50b70e86cab74eebfd763a143b5e30279f334b7bb889cbb4while ring.Parent do

-- e1d3df04331679d2166b2275b68d0914485c865a235e4ffor _bba9c60b = 0, 360, 4 do

-- 0x36 0x70 0x9fif not ring.Parent then return end

-- 1101101101001001100101011110ringG.Rotation = _bba9c60b
_30a422080.RenderStepped:Wait()

-- 4c33a9686dccd3c84f217e2028end

-- d532cc14b15fad82ff0625dca7a15061e35356a89921d8end
end)


-- 0011001001100011000010101111110010010000000001111000logo.MouseEnter:Connect(function()

-- 0x6e 0x73 0x7f 0x15 0xe7_89c664:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0}):Play()

-- 0011011111111101010001100001001111000000101110000001pulse(back, 1.03, 0.1)

-- fe4a7b27a81854eb9a588e1f4c3a4bcaedf6ac31abd106da45b4842646cbend)
logo.MouseLeave:Connect(function()

-- 0x15 0x16 0x04 0x58 0x0c 0x75_89c664:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0.15}):Play()

-- 000101000110110011100000end)


-- 62e77c04c6c104f964f747139d1d9317a3c7df198257c615875b55c5ca2

-- 0x81 0x12 0x99 0x92menu = tBg(new(_0e7849(70, 114, 97, 109, 101), {Name = _0e7849(77, 101, 110, 117), Size = UDim2.fromOffset(660, 500),
Position = UDim2.new(0.5, -330, 0.5, -250), BackgroundColor3 = Theme.bg,
BorderSizePixel = 0, ClipsDescendants = true, Visible = false, ZIndex = 30}, gui))
corner(menu, 14)

-- 0x0b 0x96 0xf5menuStroke = tAcc(stroke(menu, Theme.neon, 2, 0.25))

-- 0x81 0x47 0x0d 0xd2 0xbc 0x01dropShadow(menu, 14, 18, 0.7)


-- 0xa4 0x4d 0xae 0x91if Cfg.UI.MenuBlur then
local _387e9f048 = new(_0e7849(66, 108, 117, 114, 69, 102, 102, 101, 99, 116), {Size = 8, Parent = _d4244dc29})

-- 97cd3aa93ad45f57d37ed4222cdea2087deda8a07647f2a3363ec316e5cdtask.spawn(function()
while menu.Parent do
_387e9f048.Enabled = menu.Visible

-- 540ebdd789d3f9716dd693582e170c6fe3fe48925f4task.wait(0.1)
end
_387e9f048:Destroy()

-- 3ca2bc9cfc6f91bf116fe0ce0373eb8b6ea421b6181a20end)
end


-- 0x38 0x86 0x18ambient = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,

-- 011100001011001000110001111110100010110110010110111110011ClipsDescendants = true, ZIndex = 2}, menu)
ambientParts = {}

-- 0111000001000111111101110110101010001010110101010010000001function buildAmbient()

-- 100111101001111001000110100000for _12c7699, _04ba4 in ipairs(ambientParts) do if _04ba4.inst then _04ba4.inst:Destroy() end end
ambientParts = {}
if not Cfg.UI.Ambient then return end

-- 1110010101010001100011111011110111010for _a3ca7e = 1, 18 do

-- 0x5a 0x7f 0xa7 0x29 0xf3 0xa4local _6e576db18 = 2 + math.random() * 3
local _424334d2a = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_6e576db18, _6e576db18),

-- 100010101111101011101101010110100Position = UDim2.fromScale(math.random(), math.random()),

-- 10001011001001010111111010101111101010111011110011010BackgroundColor3 = Theme.accent2,

-- 1f7a7dee07611ee9f75652c12d30ae166b3d8f0b2BackgroundTransparency = 0.55 + math.random() * 0.3,
BorderSizePixel = 0, ZIndex = 2}, ambient)

-- cc68ad0a50cc21f72e8b2568356c89713fd12bb49cb10cba995fe297e508corner(_424334d2a, _6e576db18)
ambientParts[#ambientParts + 1] = {inst = _424334d2a,
vx = (math.random() - 0.5) * 0.015, vy = (math.random() - 0.5) * 0.015,

-- 4af613a0befb6e60d503e9a3cb9eed0273aff3af0phase = math.random() * math.pi * 2}

-- 0010110001101011010010110010011100000100001001101010000110end
end
buildAmbient()


-- 36e6ce770ebfd2484d20d2a15c88584header = tPanel2(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 54),

-- 0x94 0x94 0x88BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(header, 14)

-- 5a34f9c7468a94b0b494fe907a887a2cgrad(header, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 2), Position = UDim2.new(0, 0, 1, -2),

-- 00111101101111100110110010110000101101010BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 32}, header)

tAcc2(new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromOffset(100, 54), Position = UDim2.fromOffset(14, 0),

-- 000001111101110000011111100011BackgroundTransparency = 1, Text = _0e7849(82, 69, 65, 80, 69, 82), Font = Enum.Font.GothamBlack,
TextSize = 17, TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header))

local _baff700df = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(0, 120, 0, 20),
Position = UDim2.fromOffset(110, 17), BackgroundTransparency = 1,

-- 0xe5 0x0a 0x26 0xae 0xf9Text = _0e7849(), Font = Enum.Font.GothamBlack, TextSize = 11,

-- 0xd4 0x64 0x18TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header)


-- 0010110100101000101010111001011001000100101100001111local _900f78 = 38

-- 0x4c 0xc2 0x90local _a409e33 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_900f78, _900f78),

-- 10001010010100010111101010010001001111001001101001101010100Position = UDim2.new(1, -320, 0.5, -19), BackgroundTransparency = 1, ZIndex = 33}, header)

-- 0x48 0x2d 0x11 0xa6 0xf6local _6e0da = new(_0e7849(73, 109, 97, 103, 101, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Theme.panel3, BorderSizePixel = 0, Image = _0e7849(), ZIndex = 34}, _a409e33)
corner(_6e0da, _900f78 / 2)

-- 11001111010101011100110110111001010001100011111local _0b60c7dad = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = _0e7849(63), Font = Enum.Font.GothamBlack, TextSize = 16,
TextColor3 = Color3.new(1, 1, 1), ZIndex = 35}, _a409e33)
local _f2f64 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),

-- bfa9c96821b43967ce1dba485a84109ae9a7253985615527ce497d4BackgroundTransparency = 1, ZIndex = 36}, _a409e33)

-- 1042749a4e78a595d1e2b8236d1corner(_f2f64, _900f78 / 2)

-- 0x63 0x78 0x0b 0x32 0xc2 0x00tAcc(stroke(_f2f64, Theme.neon, 1.6, 0.15))


-- 0xd9 0xba 0x30 0x5c 0xe6 0x46local _ad00cc8c = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(0, 240, 0, 16),

-- f6e832a51f2d4d41874268ce564df1Position = UDim2.new(1, -278, 0.5, -19), BackgroundTransparency = 1,

-- 0x03 0xbd 0x8f 0x8aText = _0e7849(64, 108, 111, 97, 100, 105, 110, 103, 226, 128, 166), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left,

-- 0xcb 0xf6 0x78 0xa0 0x0a 0x24TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)

-- ac8ae96e98a27d5afdb02181da522729516c41dc8cf82ceecc407bflocal _5722c = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(0, 240, 0, 13),

-- 95718ef3e4edcd52006822cb3e61024daPosition = UDim2.new(1, -278, 0.5, 1), BackgroundTransparency = 1,
Text = _0e7849(240, 159, 140, 141, 32, 226, 128, 148, 32, 32, 32, 226, 143, 177, 32, 48, 48, 58, 48, 48, 58, 48, 48), Font = Enum.Font.Gotham, TextSize = 9,
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,

-- 0xb4 0xe6 0x39TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)

task.spawn(function()

-- 001000110001010101010111101111101110101100111101001111010local _ce204e = 0

-- 11011011010101100111011000111101101101111110101011while _ad00cc8c.Parent do
if MY_USER then

-- 00011001001110111010101000101000100011111101000110110_ad00cc8c.Text = _0e7849(64) .. (MY_USER.username or _0e7849(117, 115, 101, 114)) ..

-- 0x3b 0x52 0xaf 0xda(MY_USER.discordName and (_0e7849(32, 32, 194, 183, 32, 32, 100, 105, 115, 99, 111, 114, 100, 32, 64) .. MY_USER.discordName) or _0e7849())

-- 3c8508fffbf8321f9eafc9252396bdfa9ad71ce93520bf0a14e18bif MY_USER.avatar and MY_USER.avatar ~= _0e7849() and _6e0da.Image == _0e7849() then

-- 0xf3 0xa1 0x9f 0xbelocal _a0ec3587 = tick()

-- 0x27 0xa7 0xf9 0x50 0xddif _a0ec3587 - _ce204e > 3 then
_ce204e = _a0ec3587

-- 0xc8 0xd9 0x99local _3ccaa80 = downloadAvatar(MY_USER.avatar)

-- 158a7021c23fe82f7029620db58724f2054268if _3ccaa80 then

-- 101010000100110111110010111011110100101001100_6e0da.Image = _3ccaa80

-- 0x2f 0x7f 0x4c 0x89_6e0da.ScaleType = Enum.ScaleType.Crop

-- 81073249f57f0cfda5a8cda788f07b599a60bd969791d2d8a2772bbdf24b_0b60c7dad.Visible = false

-- 00000100111010000000010001001100001110101110000001end
end
end
if _0b60c7dad.Visible then

-- 0x7c 0x6f 0x39 0x62_0b60c7dad.Text = (MY_USER.displayName or MY_USER.username or _0e7849(63)):sub(1, 1):upper()

-- 4d5983d51a354c535f0e5025c2d294579270182df9d5245end
local _783be = flagEmoji(MY_USER.countryCode)

-- 00101011011011011110110000101101011111110001011010local _f66aaa = math.max(0, tick() - (MY_USER.connectedAt or tick()))

-- 0xc3 0xa2 0xc9 0xb3local _a62aed = math.floor(_f66aaa / 3600)

-- d5cefb027d93932f72fd9b9109e72876957b14local _bea60 = math.floor((_f66aaa % 3600) / 60)

-- 0x1e 0x0c 0xb8 0xf5 0xb0local _7915bb1c = math.floor(_f66aaa % 60)

-- 10101001011001101010001111111000100110011011001001001111_5722c.Text = string.format(_0e7849(37, 115, 32, 37, 115, 32, 32, 32, 226, 143, 177, 32, 37, 48, 50, 100, 58, 37, 48, 50, 100, 58, 37, 48, 50, 100),

-- 0001010010010110100010001001011100111101110000_783be, (MY_USER.country ~= _0e7849() and MY_USER.country) or _0e7849(226, 128, 148), _a62aed, _bea60, _7915bb1c)

-- 0f3f7fa23bf2e608bc53bc482d897bddlocal _51604 = MY_USER.rank

-- 70741e970321119f0dea06948cbblocal _23cb54e5 = _51604 and BADGE_STYLE[_51604]
if _23cb54e5 then

-- 0xdb 0x7f 0xaf 0xe7 0x11_baff700df.Text = _23cb54e5.emoji .. _0e7849(32) .. _23cb54e5.label

-- 11010100010100100110010010101110010010011101_baff700df.TextColor3 = _23cb54e5.color
else

-- 0x8e 0x19 0xb1 0x73 0xd0_baff700df.Text = _0e7849()

-- 9a3b1db739f60c7b30ac26bf11fda7a0cb2517d35a015a4e5aa59dend
end
task.wait(0.5)
end
end)


-- 00010101100010111100000000010111101110010110010closeBtn = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(24, 24),
Position = UDim2.new(1, -32, 0, 9), BackgroundColor3 = Theme.danger, Text = _0e7849(226, 156, 149),

-- 01101001101000101111101001001101101001101111110111001001Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false, ZIndex = 33}, header)

-- 101110011100000001100010111101corner(closeBtn, 6)

-- 0xcc 0x12 0xfd 0xa9 0xcfcloseBtn.MouseButton1Click:Connect(function() closeMenu() end)


-- 0x93 0xa5 0x58 0x32 0xd1

-- 101010111111110101101110100000TICKER_HEIGHT = 28
tickerBar = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -20, 0, TICKER_HEIGHT),
Position = UDim2.fromOffset(10, 60), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.15, BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 31}, menu))
corner(tickerBar, 8)
grad(tickerBar, Color3.fromRGB(20, 10, 40), Color3.fromRGB(3, 2, 8), 90)

-- bb4b8a29584bfd1a03d0586cd5atickerStroke = stroke(tickerBar, Theme.neon, 1.4, 0.3)


-- 01110001110010000100011100110001100111111010100tickerLabel = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 1,
Text = Theme.ticker, Font = Enum.Font.GothamBlack, TextSize = 13,
TextColor3 = Theme.tickerColor, TextStrokeTransparency = 0.35,

-- 010001101111100000100010010001110001101TextStrokeColor3 = Color3.fromRGB(3, 2, 8),

-- 01110111011011000000100001101100110110001010100TextXAlignment = Enum.TextXAlignment.Left, AutomaticSize = Enum.AutomaticSize.X, ZIndex = 34}, tickerBar)
tickerLabelGrad = new(_0e7849(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Color = ColorSequence.new({

-- 1111001100101011010001100101ColorSequenceKeypoint.new(0, Theme.tickerColor),
ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),

-- 0xc3 0x84 0x93 0x06ColorSequenceKeypoint.new(1, Theme.tickerColor),
}), Rotation = 0}, tickerLabel)

tickerX = 0

-- 0xd1 0x4e 0x6a 0x14 0x75 0xd5task.spawn(function()

-- 2ae9ee4890ef4ee3f82f38de75aa98d03c04d_30a422080.RenderStepped:Connect(function(_bf89d)
if not tickerLabel.Parent then return end

-- 0x99 0x48 0x60 0x04 0x2dlocal _94bc8 = tickerLabel.AbsoluteSize.X
tickerX = tickerX - 110 * _bf89d
if tickerX + _94bc8 < 0 then tickerX = tickerBar.AbsoluteSize.X + 4 end
tickerLabel.Position = UDim2.fromOffset(tickerX, 0)
end)

-- 0xb4 0x62 0x8e 0xf4 0x5f 0x47end)


-- 1ade7777aeb0c6c09624437f50ee472rail = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(0, 120, 1, -130),

-- 0x6a 0x60 0x09 0x53 0x82Position = UDim2.fromOffset(10, 96), BackgroundColor3 = Theme.panel,

-- 00100010010111000101011101010010010111011000011BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))

-- 0110001111100101001110000110001000101010001corner(rail, 10)
new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, rail)
new(_0e7849(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 5), PaddingRight = UDim.new(0, 5)}, rail)


-- 0763990b1672f8e68ee845428472e92730b6ftabIndicator = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -10, 0, 26),

-- d60429f1fc17319154187f105445Position = UDim2.fromOffset(5, 6), BackgroundColor3 = Theme.neon,
BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 31}, rail)
corner(tabIndicator, 6)

-- 0xbc 0x4d 0x79 0xebnew(_0e7849(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Color = ColorSequence.new(Theme.neon, Theme.accent3)}, tabIndicator)

content = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -148, 1, -130),

-- 11100001110000010000111010011000001100000100111000Position = UDim2.fromOffset(138, 96), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(content, 10)

status = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -20, 0, 20),
Position = UDim2.new(0, 10, 1, -25), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 31}, menu))

-- 0xcd 0x4c 0x6a 0xd1 0x7f 0x04corner(status, 6)
statusLbl = tMuted(new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -12, 1, 0),

-- d4c9b61bbd907c7f2a67786babbb8826f962aa569a27dc588467Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1, Text = _0e7849(82, 69, 65, 80, 69, 82),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,

-- 0xb7 0xd9 0xf4 0xcc 0xa7TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 32}, status))


-- 0x18 0xe5 0x7f 0xcfmakeDraggable(menu, header)

-- dd89c870f0bd04e9e5ce5be7dada6641ac924fmakeResizable(menu, {minW = Cfg.UI.MinW, minH = Cfg.UI.MinH})

function openMenu()
if Cfg.UI.AnimatedOpen then

-- cc2282455569d70741db8e1fd0f6flocal _585267e7, _bd3e7df2 = menu.Size, menu.Position
menu.Visible = true
menu.Size = UDim2.fromOffset(600, 460)

-- 8b15b180f575952d4b7227b04fdbc03de11fca3630246d953menu.Position = UDim2.new(0.5, -300, 0.5, -230)
_89c664:Create(menu, TweenInfo.new(0.32, Enum.EasingStyle.Back, Enum.EasingDirection.Out),

-- 0x48 0x65 0xa3{Size = _585267e7, Position = _bd3e7df2}):Play()

-- 0x81 0x5c 0xf1else

-- 0xe0 0x07 0xc7 0xb5 0x4emenu.Visible = true
end
end
function closeMenu()
if Cfg.UI.AnimatedOpen and menu.Visible then
local _dd463, _c9b1e = menu.Size, menu.Position
local _e9ab259 = _89c664:Create(menu, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
{Size = UDim2.fromOffset(600, 460), Position = UDim2.new(0.5, -300, 0.5, -230)})

-- 0001100011111000111110010_e9ab259:Play()

-- bb29d03cdb88b508331ab877a842f3edc1ac310c92fb89f26ca_e9ab259.Completed:Connect(function()
menu.Visible = false

-- 00101110110000111010110011000111000111100111110111010110menu.Size, menu.Position = _dd463, _c9b1e

-- 0x6c 0xfb 0x8c 0x07end)

-- 100101010000111100010101011010100110010else

-- 11110001011100011110101100110011011000110111100101menu.Visible = false

-- a3b0b5db6c5bf76558d96856300end

-- 1110010001110010011010001010101000000001110101end


-- 0xaa 0xac 0x59 0xc0 0x6c

-- 5bf5b22f754229b2cd47b3331b9pages = {}; tabs = {}; widgets = {}
toggleLabels = {}
pendingKeybind = nil

-- 10111110101010000000101011010101101100001000101refreshHUD = function() end
refreshAD = function() end
function resolvePage(_9c165c) if type(p) == _0e7849(115, 116, 114, 105, 110, 103) then return pages[_9c165c] end; return _9c165c end

function makeTab(_f87725495, _09c17)
local _442a2504 = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, 0, 0, 26),

-- 001111100111111100000000100BackgroundColor3 = Theme.panel2, Text = _09c17, Font = Enum.Font.GothamBold,

-- cd54f460fd76afdfd3e65dae5TextSize = 10, TextColor3 = Theme.muted, AutoButtonColor = false,

-- 0x27 0x75 0xb3 0xc2LayoutOrder = #rail:GetChildren(), ZIndex = 32}, rail))
corner(_442a2504, 7)

-- 0xd0 0x6f 0x76 0x66 0x03 0xbftStroke(stroke(_442a2504, Theme.strokeSoft, 1, 0.5))

-- 0x10 0x03 0x19 0x75 0x1ctabs[_f87725495] = _442a2504

-- 17d97a84e76578824ff787c17179clocal _d8db239d = new(_0e7849(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101), {Name = _0e7849(80, 97, 103, 101, 95) .. _f87725495, Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 3,

-- 06e3671a7d85fe4b1e9cf54c384266b30c3abfe9ecc686fc0379ScrollBarImageColor3 = Theme.neon, CanvasSize = UDim2.new(0, 0, 0, 0),

-- 7e3127c007f8a852d125e23a47375AutomaticCanvasSize = Enum.AutomaticSize.Y, Visible = false, ZIndex = 32}, content)
new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, _d8db239d)
new(_0e7849(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingTop = UDim.new(0, 10), PaddingLeft = UDim.new(0, 10),

-- 0010010000110110101101100110PaddingRight = UDim.new(0, 10), PaddingBottom = UDim.new(0, 10)}, _d8db239d)

-- 82af875b119fcc2e6287c95135e9da7b339886f9pages[_f87725495] = _d8db239d

-- 0x97 0x4b 0xd7 0x28_442a2504.MouseButton1Click:Connect(function()
for _e90c241, _fb42e4d0 in pairs(pages) do _fb42e4d0.Visible = false end
_d8db239d.Visible = true

-- 10873381bf4a16b093810d65e9961a7df21dfor _29a1fb, _812d61e4 in pairs(tabs) do
_812d61e4.TextColor3 = Theme.muted
_812d61e4.BackgroundColor3 = Theme.panel2

-- 0x8f 0xf4 0x08 0x8e 0x23end

-- 2a8f1acf5fbddf0152ec40c2a659fb1862a2d109_442a2504.TextColor3 = Color3.new(1, 1, 1)
_442a2504.BackgroundColor3 = Theme.neon

-- 0x9d 0xba 0x52 0x97 0x7dglow(_442a2504, Theme.accent2, 0.4)

-- 0x55 0xe2 0xd6 0xbe 0xeashine(_442a2504, Color3.new(1, 1, 1), 0.5)
local _a3df4 = _442a2504.AbsolutePosition.Y - rail.AbsolutePosition.Y

-- 0x87 0x96 0xea_89c664:Create(tabIndicator, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
{Position = UDim2.fromOffset(5, _a3df4)}):Play()
ripple(_442a2504, _442a2504.AbsoluteSize.X / 2, _442a2504.AbsoluteSize.Y / 2, Theme.accent2, 18, 0.5)

-- 0xd8 0x77 0x0c 0xab 0x0fend)

-- 1823b22c605952d42bdf670fb776519489ea7_442a2504.MouseEnter:Connect(function()

-- 101110001010110111110010111011if _442a2504.BackgroundColor3 ~= Theme.neon then

-- 0xde 0x5a 0x00 0x6f 0x63_89c664:Create(_442a2504, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel3}):Play()

-- 6fe31a88495ca1ff1340f947252444a2e807bf968fe64b73816324136e65end
end)

-- 0x9e 0xc9 0x80_442a2504.MouseLeave:Connect(function()
if _442a2504.BackgroundColor3 ~= Theme.neon then

-- 0xa3 0x93 0xc3_89c664:Create(_442a2504, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
end

-- 11110101110100110101000011110110end)
end


-- 0xfb 0xb9 0x0dfunction section(_468d3, _ce6627a, _9b9400a20)
local _fa4334 = resolvePage(_468d3)

-- 01010111001101100111011001111100011if not _fa4334 then return nil end
local _8150e = tPanel2(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 24),

-- 0xa5 0x1c 0xe1 0xd6 0x48 0xecBackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
LayoutOrder = #_fa4334:GetChildren(), ZIndex = 33}, _fa4334))
corner(_8150e, 7)

-- 0xb6 0x0f 0xe5 0xbctStroke(stroke(_8150e, Theme.strokeSoft, 1, 0.5))

-- 0xec 0xc7 0xcb 0x73 0xc4local _2004c54 = grad(_8150e, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)

-- 0x0d 0x9e 0x39 0x7f 0x70new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = Theme.neon,

-- 001111011000011100010011100001BorderSizePixel = 0, ZIndex = 35}, _8150e)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -14, 1, 0), Position = UDim2.fromOffset(12, 0),
BackgroundTransparency = 1, Text = (_9b9400a20 and _9b9400a20 .. _0e7849(32, 32) or _0e7849()) .. _ce6627a,

-- 01011111000111000011011000001001011101100Font = Enum.Font.GothamBlack, TextSize = 10, TextColor3 = Theme.accent2,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _8150e)
if Cfg.UI.ShimmerHeaders then

-- 0xb0 0xe0 0x51 0x1b 0x24task.spawn(function()

-- 562f43e1182faf37c648b68calocal _e08c135a = 0
while _8150e.Parent do
_e08c135a = (_e08c135a + 0.02) % 1

-- 0x24 0xc3 0x4d 0x5f_2004c54.Offset = Vector2.new(_e08c135a, 0)

-- 0x61 0x91 0xb4_30a422080.RenderStepped:Wait()
end

-- 0x04 0xab 0x42end)
end
return _8150e
end

function collapsible(_b69fa58, _dd81ed, _3617fc9f6)

-- f0439805f2608df5c7b16c7a074f8f109230a4df71c9f8b719d0100eb03local _ca9af07da = resolvePage(_b69fa58)
if not _ca9af07da then return nil end
local _51ea85e = _3617fc9f6 and true or false

-- 0xf6 0x52 0x15 0x5b 0x30local _c7c0e = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, 0, 0, 24),

-- 11110001000100011000011110010000000000011000BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15, Text = _0e7849(),
AutoButtonColor = false, LayoutOrder = #_ca9af07da:GetChildren(), ZIndex = 33}, _ca9af07da))
corner(_c7c0e, 7)
tStroke(stroke(_c7c0e, Theme.strokeSoft, 1, 0.5))

-- 01000110000011111010001101100011010010101101010111111grad(_c7c0e, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)
local _97662ee = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromOffset(18, 24), Position = UDim2.fromOffset(8, 0),

-- 4ce329162e7d99d650091be2d2b810f14d198f342ecabBackgroundTransparency = 1, Text = _51ea85e and _0e7849(226, 150, 188) or _0e7849(226, 150, 182),

-- 0xf2 0x0e 0x2bFont = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2, ZIndex = 34}, _c7c0e)

-- 97fe4baed61eb310aa26a1f01852a5f850e037220b49d41014a6ce6aenew(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(26, 0),
BackgroundTransparency = 1, Text = _dd81ed, Font = Enum.Font.GothamBlack,
TextSize = 10, TextColor3 = Theme.accent2,

-- 01001010001010110011000101101111000101TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _c7c0e)

-- 0x86 0x66 0x97 0x2flocal _5e5e0c = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = #_ca9af07da:GetChildren(),

-- 0010110111111110100100001011011100100001001000011Visible = _51ea85e, ZIndex = 33}, _ca9af07da)
new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, _5e5e0c)

-- 1111001001001010010010111111new(_0e7849(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4)}, _5e5e0c)

-- 1001110111011110100011000001011010000110001101110001_c7c0e.MouseButton1Click:Connect(function()
_51ea85e = not _51ea85e

-- 00001010000000110100001100011100100_97662ee.Text = _51ea85e and _0e7849(226, 150, 188) or _0e7849(226, 150, 182)
_5e5e0c.Visible = _51ea85e
glow(_c7c0e, Theme.accent2, 0.3)
end)
return _5e5e0c, _c7c0e
end


-- 0x1d 0x2d 0x64 0x4cfunction toggleRow(_8da01696, _3e7c0e, _25460e5, _0408d)

-- 8e785365be8155f3f06ab0fe0ffcd845dfbb4891flocal _c187b29 = resolvePage(_8da01696)
if not _c187b29 then return end

-- 0xcf 0xc0 0xc4 0x89toggleLabels[_3e7c0e] = _25460e5

-- 000010110000111101011000011000local _b777ecd6 = getPath(Cfg, _3e7c0e) == true

-- 111000011101010111101000001010011111001010local _8660b1d = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,

-- a24e37d7951d186cf1f4f61ebbdc6aae11dbb8b4cLayoutOrder = #_c187b29:GetChildren(), ZIndex = 33}, _c187b29))

-- ea32ae7a58f7820fca704056corner(_8660b1d, 7)
tStroke(stroke(_8660b1d, Theme.strokeSoft, 1, 0.55))
hoverStripe(_8660b1d, Theme.neon)

-- 0x02 0x88 0x0a 0x3e 0x84new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -200, 1, 0), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _25460e5, Font = Enum.Font.Gotham, TextSize = 11,

-- 0xb8 0xfb 0x60TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _8660b1d)

-- 10110101011101100000010001110011local _e19a641 = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(72, 18),
Position = UDim2.new(1, -116, 0.5, -9), BackgroundColor3 = Theme.panel2,

-- 0x8c 0x37 0x07 0x7dText = _0e7849(43, 32, 98, 105, 110, 100), Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.muted, AutoButtonColor = false, ZIndex = 36}, _8660b1d))
corner(_e19a641, 5)

-- 53ba4b07810a167078f85c7b6dd46b06e0e04b14tStroke(stroke(_e19a641, Theme.strokeSoft, 1))
local function refreshKey()
local _4a3a262 = Cfg.Binds and Cfg.Binds[_3e7c0e]

-- 0x8f 0xe6 0x21 0xf8 0x89 0x84if _4a3a262 then

-- 0010101000000011111101000010001100011100101101_e19a641.Text = _4a3a262.Name

-- 11001011011110110011000001111001000001001101001111_e19a641.TextColor3 = Theme.accent2
else

-- 0xfd 0x90 0xc9_e19a641.Text = _0e7849(43, 32, 98, 105, 110, 100)

-- 110011010000000000011001001110_e19a641.TextColor3 = Theme.muted

-- 84419c41cde34037e52a647304fend

-- 0x2c 0xa8 0x1f 0x20end

-- 11011111001001011001001101111101refreshKey()
keyBtn.MouseButton1Click:Connect(function()

-- 923f129f3e7a29b0e3328c05945de08ependingKeybind = {path = path, btn = keyBtn, refresh = refreshKey}
keyBtn.Text = _0e7849(112, 114, 101, 115, 115, 226, 128, 166)
keyBtn.TextColor3 = Theme.danger
end)

-- 01000001101100110001101001010010100110001110local _77887c = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(42, 20),

-- 101011101101010010001001010111010111000100Position = UDim2.new(1, -50, 0.5, -10),

-- 0x71 0x23 0x3cBackgroundColor3 = state and Theme.neon or Theme.panel2,
BorderSizePixel = 0, ZIndex = 36}, row)

-- 0x54 0x5e 0x74 0x3e 0x23corner(_77887c, 10)

-- 0010100101000110010101111010000110110110000010000tStroke(stroke(_77887c, Theme.strokeSoft, 1, 0.4))

-- 0010011110111100101100000100001000100100110101010100100001local _7abd8 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(14, 14),

-- 0x1d 0x7e 0xd1 0x93Position = state and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7),

-- 0x7f 0x9e 0x9d 0x43 0xc3 0x4fBackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 37}, _77887c)
corner(_7abd8, 7)

-- 46bcd54c500feaea8487365a4276263c7tAcc(stroke(_7abd8, Theme.neon, 1.4, 0.2))
local function render()

-- 0x2d 0x97 0x76 0x07 0xfe 0xefif state then

-- 100000110111010111011111100110000011010100000011101000001011_77887c.BackgroundColor3 = Theme.neon

-- c43df42abe2767709355f799a222841e_7abd8.Position = UDim2.new(1, -17, 0.5, -7)

-- 0x26 0xe3 0xd3 0x0e 0xc4 0x6celse

-- 0x8d 0x80 0x56 0xd8 0x52 0x74_77887c.BackgroundColor3 = Theme.panel2
_7abd8.Position = UDim2.new(0, 3, 0.5, -7)
end
end

-- 0x68 0xe1 0xdc 0x1c 0xc2 0x2elocal function set(v, fire)
local _a0215fbe5 = v and true or false
local _6e9bd6 = _a0215fbe5 ~= state
state = _a0215fbe5
setPath(Cfg, path, state)

-- 010011110100110010001110render()

-- f1261705e4b0fbea00215b55fa84f38205cd9712d86627ecc436d4f72973if path == _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112) then

-- 0x55 0x7b 0x3e 0x0fif not state then
local _0b7b1fa8 = hum()
if _0b7b1fa8 then
_0b7b1fa8.PlatformStand = false

-- 782f2d5c90ff2efd3f43c0b6dee0fa401ec117f5746e7e20c7b_0b7b1fa8.AutoRotate = true
pcall(function() _0b7b1fa8:ChangeState(Enum.HumanoidStateType.GettingUp) end)
end

-- 0xb6 0xf2 0x1c 0x37 0x75TS.humpWasActive = false

-- 0x52 0x40 0xf5 0xf7else

-- 011101111000110101011011101000000000010HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
HUMP.lockTimer = 1.5; HUMP.lastTier = _0e7849(83, 84, 73, 76, 76)

-- 0x80 0x39 0x7f 0x8f 0xaa 0x42HUMP.awaitingRespawn = false; HUMP.fallHold = 0
HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0

-- 252fd84a2253141fb7862c4f6c7a749c04c786d60d1d4958741b65end

-- 0x3f 0x3a 0x43 0x24end

-- 0x8d 0x31 0x45 0x37 0x1d 0xecif fire ~= false and onChange then pcall(onChange, state) end

-- 0xab 0xc8 0x28 0x8dif _6e9bd6 then pcall(refreshHUD); pcall(refreshAD) end
end

-- 5947792356d63bc1d90a6aeea57ccfwidgets[path] = {set = set, get = function() return state end,

-- 010100110111011001010110111000010001111001rerender = render, refreshKey = refreshKey, label = label}
render()

-- 0xc4 0x73 0x22 0x19 0x96 0xe6track.InputBegan:Connect(function(_eb82fd)
if _eb82fd.UserInputType == Enum.UserInputType.MouseButton1 or _eb82fd.UserInputType == Enum.UserInputType.Touch then
set(not state)

-- 0xfb 0xb3 0xa6 0xe0 0x60 0xfdpulse(thumb, 1.4, 0.08)
flash(track, state and Theme.danger or Theme.success, 0.12)

-- ee57496f2d50413b1fce56044cglow(track, state and Theme.danger or Theme.success, 0.4)

-- 0001000011001100110000111100011110001001101111100111end

-- 111010110111000000000101001111end)

-- e8a7c6ef04dc8c1d9e885bb5cb3df124b7af87c0cfe619ff40bed4end

function sliderRow(_a4d5ca2, _67dc003, _ff84099, _88a61, _6f125e, _f4ea0f, _9e711)

-- 0a31a1e4259ea53c155f7625eelocal _74ca0de4 = resolvePage(_a4d5ca2)

-- 0x4d 0x72 0x6c 0x3b 0x87if not _74ca0de4 then return end

-- 0xf6 0x75 0x62 0xf5local _cdaae = getPath(Cfg, _67dc003)
if type(cur) ~= _0e7849(110, 117, 109, 98, 101, 114) then cur = mn; setPath(Cfg, path, mn) end
local _0a3c0134 = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 38),

-- 0656a75127b175467dab86084c7bdBackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,

-- 1d02402c365855dae6612f2bc2a4a0220e84e614aacabc0e96edb9fb6eLayoutOrder = #_74ca0de4:GetChildren(), ZIndex = 33}, _74ca0de4))

-- 0x0b 0xf4 0x16 0x19corner(_0a3c0134, 7)
tStroke(stroke(_0a3c0134, Theme.strokeSoft, 1, 0.55))
hoverStripe(_0a3c0134, Theme.neon)

-- 75b34dcc1b8335563fefa699e0c172d107c11new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -90, 0, 14), Position = UDim2.fromOffset(14, 4),
BackgroundTransparency = 1, Text = _ff84099, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _0a3c0134)

-- 0xf7 0x6b 0x7e 0x97local _0f523265 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromOffset(70, 14),

-- 0x21 0x89 0xc9 0xa2Position = UDim2.new(1, -80, 0, 4), BackgroundTransparency = 1,

-- 10101111101101111101000110010001011100001110000101Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 36}, _0a3c0134)

-- 0xc9 0x1f 0x4b 0x87local _547d28db = tPanel2(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -22, 0, 5),

-- ee52241bf1ceb2a67d3dcaca4Position = UDim2.fromOffset(11, 24), BackgroundColor3 = Theme.panel2, ZIndex = 34}, _0a3c0134))
corner(_547d28db, 3)

-- 0xc8 0x9d 0xda 0x1d 0xe9 0xb1tStroke(stroke(_547d28db, Theme.strokeSoft, 1, 0.5))
local _92bb0b9dd = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(0, 0, 1, 0),

-- 020c0db821907b3ccb74aa1bd3BackgroundColor3 = Theme.neon, BorderSizePixel = 0, ZIndex = 35}, _547d28db)
corner(_92bb0b9dd, 3)
grad(_92bb0b9dd, Theme.neon, Theme.accent3, 0)
local _c360f8 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(12, 12),
Position = UDim2.new(0, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),

-- 010101000111010010010001001100BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 36}, _547d28db)
corner(_c360f8, 6)

-- 0x2a 0xdc 0x2e 0x46tAcc(stroke(_c360f8, Theme.neon, 1.5))

-- 0x33 0xe0 0x03 0xdelocal _b338a = 10 ^ _f4ea0f

-- 8df771c79583bdd32c4d3497clocal _0d917 = _cdaae

-- 0x9b 0xbe 0x71 0x6dlocal function setVal(v, fire)

-- 7582dfbfeffae542d1eb2879d64a0da64bff55bb932c58_0d917 = v
setPath(Cfg, _67dc003, v)
local _7326e = math.clamp((v - _88a61) / (_6f125e - _88a61), 0, 1)

-- 0x54 0x38 0xee_92bb0b9dd.Size = UDim2.new(_7326e, 0, 1, 0)

-- 00001010011110111101011001001110111011_c360f8.Position = UDim2.new(_7326e, 0, 0.5, 0)
_0f523265.Text = string.format(_0e7849(37, 46) .. _f4ea0f .. _0e7849(102), v)

-- 100101001100010000110101011if fire ~= false and _9e711 then pcall(_9e711, v) end
end

-- 011011000011001000101100000101101101000001101110011widgets[path] = {set = setVal, get = function() return value end}

-- 0x56 0xed 0x07 0xe4 0x4csetVal(value, false)

-- 0x52 0x2f 0x47 0x58local _91b593f = false

-- 0x01 0x96 0x6f 0xa0local function fromX(px)

-- 01001000111110101110001110001011110100100011100010010110local _4d992ded = math.clamp((px - bar.AbsolutePosition.X) / math.max(bar.AbsoluteSize.X, 1), 0, 1)

-- 0x82 0xf9 0x9a 0x4fsetVal(math.floor((mn + (mx - mn) * _4d992ded) * mult + 0.5) / mult)
end
bar.InputBegan:Connect(function(_845311a)

-- 0xe6 0xd7 0x91 0xc2if _845311a.UserInputType == Enum.UserInputType.MouseButton1 or _845311a.UserInputType == Enum.UserInputType.Touch then

-- 010000100001011100101100111drag = true

-- 0xde 0xec 0xc2fromX(_845311a.Position.X)

-- 0xe5 0x3c 0x9d 0xc2 0xad 0xe3pulse(thumb, 1.5, 0.1)

-- 0xcb 0x49 0x10end

-- 0x18 0x55 0x06 0x2a 0xfcend)

-- 7b8b11b1af58bed376cd6f04e0e88a1826432af_7ace8a.InputChanged:Connect(function(_cf96e0)
if drag and (_cf96e0.UserInputType == Enum.UserInputType.MouseMovement or _cf96e0.UserInputType == Enum.UserInputType.Touch) then
fromX(_cf96e0.Position.X)

-- 001000000001111111000001010011001110end

-- 0x6b 0xe2 0xcaend)
_7ace8a.InputEnded:Connect(function(_112756d)

-- 0x78 0x63 0x05 0xd6 0xa2 0xe8if _112756d.UserInputType == Enum.UserInputType.MouseButton1 or _112756d.UserInputType == Enum.UserInputType.Touch then
drag = false
end
end)

-- 0xd4 0x58 0x87 0x2dend

function buttonRow(_d681371, _f017c, _d715773c, _6868aa06)

-- 01110100011010110100000011010000111110100000001111110local _bdd182 = resolvePage(_d681371)
if not _bdd182 then return end

-- 1011100010110111111110110000001110101110local _226a2 = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,

-- 6190376b2ddc8514fb061ee908f15d0e57135230531bd4ce0LayoutOrder = #_bdd182:GetChildren(), ZIndex = 33}, _bdd182))

-- 0x3d 0x42 0x1b 0xb9 0x0ccorner(_226a2, 7)

-- 95241cfb75889e88cabcddfbdtStroke(stroke(_226a2, Theme.strokeSoft, 1, 0.55))
hoverStripe(_226a2, Theme.neon)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _f017c, Font = Enum.Font.Gotham, TextSize = 11,

-- 0xdc 0x51 0x54 0xdc 0x46TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _226a2)
local _79527e5c = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(140, 20),

-- 0x63 0x42 0x5fPosition = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,

-- 0x5c 0x9b 0xf7Text = _d715773c, Font = Enum.Font.GothamBold, TextSize = 9,

-- c593c79a210daa05842313b2bb415024bb666c1b76d6c1c3392016e058dTextColor3 = Theme.accent2, AutoButtonColor = false, ZIndex = 36}, _226a2))
corner(_79527e5c, 6)

-- 0x3f 0x31 0xec 0x0b 0x03tStroke(stroke(_79527e5c, Theme.strokeSoft, 1))

-- 0000111000101110110101111011011001110110_79527e5c.MouseButton1Click:Connect(function()
pulse(_79527e5c, 0.94, 0.06)

-- 8a551b22dbf77c51c6cf29c0glow(_79527e5c, Theme.accent2, 0.35)

-- 11000011000001111100111001100100000000011011shine(_79527e5c, Theme.accent2, 0.5)
_6868aa06(_79527e5c)
end)

-- 0x80 0x47 0x22 0xa1 0xfc_79527e5c.MouseEnter:Connect(function()

-- 0110001001000111101000001_89c664:Create(_79527e5c, TweenInfo.new(0.12), {BackgroundColor3 = Theme.panel3}):Play()
end)

-- 0111011101100101100010110000_79527e5c.MouseLeave:Connect(function()

-- e46222ac576da67922c9e1d5a_89c664:Create(_79527e5c, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()

-- 0x50 0xcf 0x83 0x31 0xf2 0x2dend)

-- 0xca 0x34 0x26 0xfa 0xc2 0xf6return _79527e5c

-- 37a5dc6626b43f4fa1a638ed5bb7138da62f3ec185fcend


-- 0x42 0x35 0xe7 0x00 0xb9 0xc1function infoRow(_ae25a, _14aec69)
local _f5d6e3e = resolvePage(_ae25a)
if not _f5d6e3e then return nil end

-- 011111111010000000110010local _edf9e00 = tPanel2(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 24),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.2,
LayoutOrder = #_f5d6e3e:GetChildren(), ZIndex = 33}, _f5d6e3e))
corner(_edf9e00, 6)

-- 0x9d 0x30 0x04 0xff 0xf5tStroke(stroke(_edf9e00, Theme.strokeSoft, 1, 0.5))
local _6ec32 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -10, 1, 0), Position = UDim2.fromOffset(12, 0),

-- 1001101111111011100011100100001111001000111111000000110011BackgroundTransparency = 1, Text = _14aec69 or _0e7849(), Font = Enum.Font.Code, TextSize = 10,

-- 11000001011001001010001111100011111001100110TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _edf9e00)
return _6ec32
end


-- 00111100001110110100100001010100000000011001000010110010000function textRow(_94ce501a5, _89a98, _6aea7bc8, _e7bcd, _ffb1323a6)
local _3adaf627 = resolvePage(_94ce501a5)

-- 0101000001100000011010000001110if not _3adaf627 then return end
local _74b26a5 = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),

-- 01100101000010110010011010100000000010010BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,

-- 1101110100110101110011101000011010000001011000LayoutOrder = #_3adaf627:GetChildren(), ZIndex = 33}, _3adaf627))

-- f89e15a57254297c343117dc5acorner(_74b26a5, 7)

-- 1000101010001101011101000010111110111101010000111010110000tStroke(stroke(_74b26a5, Theme.strokeSoft, 1, 0.55))

-- 010111000110100010000110101100111001011001000new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _89a98, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _74b26a5)

-- 0xa5 0x54 0xdalocal _03b205 = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.fromOffset(160, 20),
Position = UDim2.new(1, -168, 0.5, -10), BackgroundColor3 = Theme.panel2,

-- 0x2c 0xde 0xef 0x38 0xad 0x4fText = _e7bcd or _0e7849(), PlaceholderText = _6aea7bc8 or _0e7849(), Font = Enum.Font.Gotham,

-- 11010100101001000100101001111001011100111110101110TextSize = 10, TextColor3 = Theme.accent2, PlaceholderColor3 = Theme.muted,
ClearTextOnFocus = false, Active = true, Selectable = true, ZIndex = 50}, _74b26a5))

-- 17d710cca81e1d356aff02d8595cb09d353ab1f4fbd1639afcorner(_03b205, 5)
tStroke(stroke(_03b205, Theme.strokeSoft, 1))

-- 1101010010101011001100111010101110001000010110111011011_03b205.FocusLost:Connect(function() if _ffb1323a6 then _ffb1323a6(_03b205.Text) end end)
return _03b205
end


-- 1100011010000011011100101001110001function cycleRow(_393ce66c2, _3f4aff5, _577e6f45, _b61571, _85318e7)

-- 01110110001101011101011000local _276bd04 = resolvePage(_393ce66c2)

-- 108da9dbc8860dfee1831559if not _276bd04 then return end

-- 22e7867ec410307c373e28471df18922cc4df20099f3blocal _f143f9e2 = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),

-- 01100011111000000010000000101BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,

-- 0x92 0xb5 0xfc 0xaeLayoutOrder = #_276bd04:GetChildren(), ZIndex = 33}, _276bd04))
corner(_f143f9e2, 7)
tStroke(stroke(_f143f9e2, Theme.strokeSoft, 1, 0.55))

-- ffa6f23acdde894483d8fc890e721d0a3cd3a2a6a0a0fa93hoverStripe(_f143f9e2, Theme.neon)

-- 0001111101000110000000000001101000011new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),

-- 9e348d85a47931c491033ecb6fa88f25debbad824a9BackgroundTransparency = 1, Text = _577e6f45, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _f143f9e2)

-- e5b3e53275a01d86ddc0218c0e03cdf05dc47d569cclocal _d07a85 = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(140, 20),

-- 0xc5 0x83 0xf9Position = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,

-- 00011110101001010001110001Text = tostring(getPath(Cfg, _3f4aff5) or _b61571[1]),
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.accent2,
AutoButtonColor = false, ZIndex = 36}, _f143f9e2))
corner(_d07a85, 6)
tStroke(stroke(_d07a85, Theme.strokeSoft, 1))
_d07a85.MouseButton1Click:Connect(function()

-- 001010111010011100101110100010010000000111010101101local _b14792 = getPath(Cfg, _3f4aff5)

-- 0x19 0x5b 0x52local _1944cf81 = 1

-- 6981d21c9e23876ad8d0ea11abdb4d6ff8afor _2140708d, _3f72d in ipairs(_b61571) do if _3f72d == _b14792 then _1944cf81 = _2140708d end end
_1944cf81 = _1944cf81 % #_b61571 + 1

-- 0xb1 0x48 0x32 0xaf 0x2asetPath(Cfg, _3f4aff5, _b61571[_1944cf81])

-- 1d1f3b613f0bff6f1d164e196bb68d48ad9fef79c7_d07a85.Text = tostring(_b61571[_1944cf81])
pulse(_d07a85, 0.94, 0.06)

-- 0x57 0xcf 0xc1if _85318e7 then pcall(_85318e7, _b61571[_1944cf81]) end

-- 0110101101011010011110100011100110110110end)

-- 00110110001101100001010000000000110001001010101100101110010widgets[_3f4aff5] = {set = function(_c78528631) setPath(Cfg, _3f4aff5, _c78528631); _d07a85.Text = tostring(_c78528631) end,
get = function() return getPath(Cfg, _3f4aff5) end}
return _d07a85

-- d4a9b161069b4809043a3bcfd74aend

function legendRow(_fa19e59, _15d74, _9c3d3)
local _6eb434d55 = resolvePage(_fa19e59)
if not _6eb434d55 then return end
local _53091 = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 26),

-- 0xcd 0xc2 0xcc 0x00BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = #_6eb434d55:GetChildren(), ZIndex = 33}, _6eb434d55))

-- 0x49 0xe8 0xc9corner(_53091, 7)
tStroke(stroke(_53091, Theme.strokeSoft, 1, 0.55))

-- 5d414b2fb461f3d821b472c00e22be65flocal _af63d = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(26, 14), Position = UDim2.fromOffset(12, 6),
BackgroundColor3 = _9c3d3, BorderSizePixel = 0, ZIndex = 34}, _53091)

-- 0xff 0x86 0x15 0x76 0x30 0x5ecorner(_af63d, 4)

-- a334c838eab63934d4a18ff2929a9a6astroke(_af63d, _9c3d3, 1, 0)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(46, 0),
BackgroundTransparency = 1, Text = _15d74, Font = Enum.Font.GothamBold,
TextSize = 10, TextColor3 = _9c3d3, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _53091)
return _53091

-- 0xcd 0xd1 0xa4end


-- 84872b03a0b46c3b4c6d7e5634502

-- 0x7a 0x40 0xf2 0x0ffunction applyOpacity(_bf2eb61)

-- c3883b66dcbb3785ddb87e88bc1_bf2eb61 = math.clamp(tonumber(_bf2eb61) or 0, 0, 1)

-- 0x40 0xf8 0x89 0x63 0xd2 0xa0for _d077deb, _fb13a07d in ipairs(menu:GetDescendants()) do
local _bb06dae45, _b58dde6e = _fb13a07d.Parent, false

-- 102e094dcd8ac4b56c555b2cfab73b7c8611c6630dfwhile _bb06dae45 and _bb06dae45 ~= menu do

-- 0x6b 0xd4 0x1aif _bb06dae45 == ambient then _b58dde6e = true; break end

-- 0xb3 0xd3 0x1b 0x8d 0x08_bb06dae45 = _bb06dae45.Parent

-- 2ae8b45ee54eb102faac30f38d5313112c315f5205eec2end

-- 1001111110101010100111101000if not _b58dde6e then

-- 0xc6 0x3e 0x46 0xd5 0xd2 0xfeif _fb13a07d:IsA(_0e7849(70, 114, 97, 109, 101)) or _fb13a07d:IsA(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110)) or _fb13a07d:IsA(_0e7849(84, 101, 120, 116, 66, 111, 120)) or _fb13a07d:IsA(_0e7849(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101)) then

-- 0xbd 0x6d 0x93local _7f2948f = _fb13a07d:GetAttribute(_0e7849(79, 112, 66, 97, 115, 101))

-- 11e7deaa82953a077fc937805a1a69aa9e2922143if _7f2948f == nil then _7f2948f = _fb13a07d.BackgroundTransparency; _fb13a07d:SetAttribute(_0e7849(79, 112, 66, 97, 115, 101), _7f2948f) end
_fb13a07d.BackgroundTransparency = math.clamp(_7f2948f + _bf2eb61 * (1 - _7f2948f), 0, 1)
elseif _fb13a07d:IsA(_0e7849(85, 73, 83, 116, 114, 111, 107, 101)) then
local _0e95cff = _fb13a07d:GetAttribute(_0e7849(79, 112, 66, 97, 115, 101))
if _0e95cff == nil then _0e95cff = _fb13a07d.Transparency; _fb13a07d:SetAttribute(_0e7849(79, 112, 66, 97, 115, 101), _0e95cff) end

-- 93416f82eabda1a9fd41bdc18b05350051f4c_fb13a07d.Transparency = math.clamp(_0e95cff + _bf2eb61 * 0.9, 0, 1)
end
end
end
end

-- 64e43ea7c23a4aed445965a05cc96a3b297fc68e247d184c08add47b1function applyTheme()

-- dd46ff3adeac57866be1e3b6cefor _18d6b1f8, _64ed40012 in ipairs(gui:GetDescendants()) do

-- e93efd3a1b1fa1708c8ab0287f47911828e0b60a5b5if _64ed40012:GetAttribute(_0e7849(84, 95, 66, 103)) and _64ed40012:IsA(_0e7849(70, 114, 97, 109, 101)) then _64ed40012.BackgroundColor3 = Theme.bg end

-- 0xd0 0x6e 0x2dif _64ed40012:GetAttribute(_0e7849(84, 95, 80, 97, 110, 101, 108)) and (_64ed40012:IsA(_0e7849(70, 114, 97, 109, 101)) or _64ed40012:IsA(_0e7849(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101))) then _64ed40012.BackgroundColor3 = Theme.panel end

-- 0xa3 0x0e 0x4fif _64ed40012:GetAttribute(_0e7849(84, 95, 80, 97, 110, 101, 108, 50)) and (_64ed40012:IsA(_0e7849(70, 114, 97, 109, 101)) or _64ed40012:IsA(_0e7849(84, 101, 120, 116, 66, 111, 120))) then _64ed40012.BackgroundColor3 = Theme.panel2 end
if _64ed40012:GetAttribute(_0e7849(84, 95, 65, 99, 99)) then
if _64ed40012:IsA(_0e7849(85, 73, 83, 116, 114, 111, 107, 101)) then _64ed40012.Color = Theme.neon

-- 0011011110000000010111000101011101010001000011elseif _64ed40012:IsA(_0e7849(70, 114, 97, 109, 101)) or _64ed40012:IsA(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110)) then _64ed40012.BackgroundColor3 = Theme.neon end
end
if _64ed40012:GetAttribute(_0e7849(84, 95, 65, 99, 99, 50)) and _64ed40012:IsA(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108)) then _64ed40012.TextColor3 = Theme.accent2 end

-- 91be8bd90d7eed221e9e53012cf9303adad10a0aeif _64ed40012:GetAttribute(_0e7849(84, 95, 84, 101, 120, 116)) and _64ed40012:IsA(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108)) then _64ed40012.TextColor3 = Theme.text end

-- 100011100101001010110101if _64ed40012:GetAttribute(_0e7849(84, 95, 77, 117, 116, 101, 100)) and _64ed40012:IsA(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108)) then _64ed40012.TextColor3 = Theme.muted end

-- f66f8cafa3274e619bbe547fa74fdcae76debb740fa4698d9b2if _64ed40012:GetAttribute(_0e7849(84, 95, 83, 116, 114, 111, 107, 101)) and _64ed40012:IsA(_0e7849(85, 73, 83, 116, 114, 111, 107, 101)) then _64ed40012.Color = Theme.stroke end

-- 18696789c4779a33ea9b3cd80c5d46886390387a65a21fff15ba725f0d53end

-- 33288780bd1fe8a5408c682628e6b2c6d8bede33tickerLabel.TextColor3 = Theme.tickerColor
tickerStroke.Color = Theme.neon
if tickerLabelGrad then

-- 10010010000110110110111001010tickerLabelGrad.Color = ColorSequence.new({

-- 0xf5 0xaa 0x2cColorSequenceKeypoint.new(0, Theme.tickerColor),

-- 100010010111110101111010001000100011ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),

-- 010010000010011011000000011100010010001100111110ColorSequenceKeypoint.new(1, Theme.tickerColor),

-- 76d465243fc8de9c53b72b62d4148420181ad7})
end
for _17d3f, _8f989a09 in ipairs(ambientParts) do if _8f989a09.inst then _8f989a09.inst.BackgroundColor3 = Theme.accent2 end end
for _0af066, _288803d in pairs(widgets) do if _288803d.rerender then pcall(_288803d.rerender) end end
pcall(refreshHUD)
end


-- 2a36e25e04995e80536877b19
hudGui = new(_0e7849(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _0e7849(82, 101, 97, 112, 101, 114, 72, 85, 68), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9998}, _041938b1)

-- 0x13 0x92 0xa0 0xa5 0x4a 0xf9hudFrame = tBg(new(_0e7849(70, 114, 97, 109, 101), {Name = _0e7849(72, 117, 100, 82, 111, 111, 116), Size = UDim2.fromOffset(220, 40),

-- 63c4c7508548e39a6e4d391ad6cPosition = UDim2.new(0, 20, 0, 200), BackgroundColor3 = Theme.bg,

-- c48b2ce40cffc026e710739a3e82BackgroundTransparency = 0.12, BorderSizePixel = 0,

-- 0110110111100010001110010AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, hudGui))

-- 0100001000001101001011101010corner(hudFrame, 10)

-- e0740c06c30574c1e11623031d52248589df7tAcc(stroke(hudFrame, Theme.neon, 1.5, 0.3))
grad(hudFrame, Theme.panel, Theme.bg, 90)

-- 000011001110111110010111110111111001110011100011000010000hudHeader = tPanel2(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 22),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, hudFrame))
corner(hudHeader, 10)

-- 5117a62762b655ce98386eaf798b73a4b2899ba2833grad(hudHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
tAcc2(new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(10, 0),

-- 6edc42ec8c7e0c18d0c7039caae49e9c118490f004fe89ab5eeBackgroundTransparency = 1, Text = _0e7849(226, 154, 161, 32, 75, 69, 89, 66, 73, 78, 68, 83), Font = Enum.Font.GothamBlack,
TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, hudHeader))

-- 0x5d 0x1d 0x31hudHide = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(18, 18),
Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = _0e7849(226, 136, 146),
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false}, hudHeader)
corner(hudHide, 4)
hudList = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),

-- 0x0f 0x50 0x31BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, hudFrame)

-- 0xed 0x34 0xf3new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder}, hudList)

-- 0111101100001011001100100111001001100100010011001new(_0e7849(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),

-- 2090ebfce687c69952efdad0e4d44PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, hudList)

-- 0xcd 0x2d 0x93 0x22 0x92 0x6chudHide.MouseButton1Click:Connect(function() Cfg.UI.HUD = false; pcall(refreshHUD) end)
hudEmpty = tMuted(new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 16),

-- 11001100101011100101111101001011001101100100000111BackgroundTransparency = 1, Text = _0e7849(110, 111, 32, 98, 105, 110, 100, 115), Font = Enum.Font.Gotham,

-- 0x29 0x95 0xa7 0x99 0xd3 0xb8TextSize = 9, TextColor3 = Theme.muted, LayoutOrder = 1}, hudList))

-- 0x6e 0x05 0x55 0xcaif Cfg.UI.HUDMovable then makeDraggable(hudFrame, hudHeader) end

-- 11111000111001010111100010111if Cfg.UI.HUDResizable then
makeResizable(hudFrame, {minW = 180, minH = 80, corners = {_0e7849(98, 114), _0e7849(98, 108), _0e7849(116, 114)},

-- fd1373292bc147e23bd31909c01899deb4b052c3efonResize = function(_1c8279, _4231592)

-- e29a276f4058ffca287ad2dc43945d688240d8559b3d55e3ef7faahudFrame.AutomaticSize = Enum.AutomaticSize.None

-- 011101011001010110011011010100101000011111100000110001001hudFrame.Size = UDim2.fromOffset(_1c8279, _4231592)

-- 101110001011001010010011000001101000000001111101011001111101end})
end

-- 0xfa 0x03 0x02 0x25 0xe3 0xd9refreshHUD = function()

-- 0xdf 0xdd 0x25hudFrame.Visible = Cfg.UI.HUD and true or false

-- 001011101101011001101100001001011110000010111001101111101111for _bddeedb2, _e1ff300f in ipairs(hudList:GetChildren()) do

-- 0x61 0xc2 0x6a 0x7d 0xdb 0x20if not _e1ff300f:IsA(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116)) and _e1ff300f ~= hudEmpty then _e1ff300f:Destroy() end
end

-- 0001011000000001010001011100111100local _1688b = {}

-- 17d40b7be8e00a68615ad7a2a61afor _f9644bd2b, _3cc5d4a3 in pairs(Cfg.Binds or {}) do

-- 00011001000100101110000000101000010011011if _3cc5d4a3 and widgets[_f9644bd2b] then _1688b[#_1688b + 1] = {path = _f9644bd2b, key = _3cc5d4a3} end
end
table.sort(_1688b, function(_ecc7463fa, _c921d) return _ecc7463fa.path < _c921d.path end)
if #_1688b == 0 then hudEmpty.Visible = true; return end

-- 10100001011111100100100110001011hudEmpty.Visible = false

-- 0x5b 0x9b 0x72 0xab 0x3bfor _52e704, _8674f1e in ipairs(_1688b) do

-- 0x7a 0x62 0x32 0x07 0xbdlocal _19300bca6 = widgets[_8674f1e.path].get()
local _8a836882 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 18),

-- 1f4ffa0a557e8adf8d1db3d38929819ea5ecbd63b69eb521fbf2e9aBackgroundColor3 = _19300bca6 and Theme.panel2 or Theme.panel,

-- 0xe7 0xe0 0x50 0x49 0xc8 0x42BackgroundTransparency = 0.3, BorderSizePixel = 0, LayoutOrder = _52e704}, hudList)

-- 0xbb 0x0f 0x9b 0x1ecorner(_8a836882, 4)

-- 10111010001111001000101001110stroke(_8a836882, _19300bca6 and Theme.success or Theme.stroke, 1, 0.4)

-- 0x20 0x9a 0x33new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(7, 7), Position = UDim2.new(0, 4, 0.5, -3.5),
BackgroundColor3 = _19300bca6 and Theme.success or Theme.muted, BorderSizePixel = 0}, _8a836882)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -75, 1, 0), Position = UDim2.fromOffset(16, 0),

-- 110101010011110100010110001100011001111000111101011BackgroundTransparency = 1, Text = toggleLabels[_8674f1e.path] or _8674f1e.path,
Font = Enum.Font.Gotham, TextSize = 9,

-- 0xc8 0x28 0x13TextColor3 = _19300bca6 and Theme.success or Theme.muted,

-- 011000000010010011011110100001001101000111110111011TextXAlignment = Enum.TextXAlignment.Left}, _8a836882)

-- 8a70131aee4a3144f5a7522d23a516f3b5a80d4b59new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromOffset(60, 18), Position = UDim2.new(1, -62, 0, 0),
BackgroundTransparency = 1, Text = _0e7849(91) .. _8674f1e.key.Name .. _0e7849(93),

-- 0x8d 0x0f 0xdfFont = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = _19300bca6 and Theme.accent2 or Theme.muted,
TextXAlignment = Enum.TextXAlignment.Right}, _8a836882)

-- c577cdc0c88f389aa944b86e38end
end


-- 0x7b 0x11 0x7e

-- 0xe7 0xaa 0x87 0xe4adGui = new(_0e7849(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _0e7849(82, 101, 97, 112, 101, 114, 65, 68), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9997}, _041938b1)

-- 11100001011111111011101100adFrame = tBg(new(_0e7849(70, 114, 97, 109, 101), {Name = _0e7849(65, 68, 82, 111, 111, 116), Size = UDim2.fromOffset(240, 40),
Position = UDim2.new(0, 20, 0, 260), BackgroundColor3 = Theme.bg,
BackgroundTransparency = 0.12, BorderSizePixel = 0,
AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, adGui))
corner(adFrame, 10)

-- 2c5ae4963d630b7ed8479aff7cf1dectAcc(stroke(adFrame, Theme.neon, 1.5, 0.3))
grad(adFrame, Theme.panel, Theme.bg, 90)
adHeader = tPanel2(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 22),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, adFrame))

-- 4d93004aca12a9db2bb5b0b830ecb72bff5cf67283340023e417f4corner(adHeader, 10)

-- b39f49c92ad595cd22e944882f32041146f44c5grad(adHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)

-- b00f60ab1d96ce89307e79f150b24d4a70096fa4867f0627e48tAcc2(new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -70, 1, 0), Position = UDim2.fromOffset(10, 0),
BackgroundTransparency = 1, Text = _0e7849(226, 154, 153, 32, 65, 85, 84, 79, 45, 68, 69, 84, 69, 67, 84), Font = Enum.Font.GothamBlack,

-- 0x0a 0x9b 0x7b 0xf4 0x72TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, adHeader))

-- 0011101100000110010010100001111010011001001111111010010111adHide = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(18, 18),

-- 0x5b 0x18 0x05 0xb3Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = _0e7849(226, 136, 146),

-- 0x14 0x81 0xf8 0x54 0x01Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),

-- 110111011000111001110100101010110101000111110100011AutoButtonColor = false}, adHeader)
corner(adHide, 4)

-- 10100110010100101101001001adBody = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),

-- 11011110000101111111110101011111001010101000100100011010BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, adFrame)

-- 0x59 0xda 0x98 0x25new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}, adBody)

-- 0100101100010011111011110110new(_0e7849(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5),

-- 81f18e29495347c06d70a42ef05cbbfe465053bf12930a77a2fd34dc14e6PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}, adBody)
adRows = {}
function adRow(_9ef13, _ac889dcc, _c12ab)

-- 6007d02cd36937df15b9cdd5da1deb7c9e2bc7cbe103be83e2fc90local _f3d6db64 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
LayoutOrder = #adBody:GetChildren()}, adBody)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(0, 100, 1, 0), BackgroundTransparency = 1, Text = _ac889dcc,
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.muted,

-- 0xb8 0x1e 0xd7 0xe3 0x5f 0x3cTextXAlignment = Enum.TextXAlignment.Left}, _f3d6db64)
local _d4a0a = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -104, 1, 0), Position = UDim2.fromOffset(104, 0),

-- f9d47e20f86790c7b75d0965ec15BackgroundTransparency = 1, Text = _0e7849(226, 128, 148), Font = Enum.Font.Code, TextSize = 9,

-- 11101001111100101100011011000001110000010TextColor3 = _c12ab or Theme.accent2, TextXAlignment = Enum.TextXAlignment.Right}, _f3d6db64)
adRows[_9ef13] = _d4a0a

-- 0101010111111101101000111010101111101return _d4a0a
end

-- 0x4d 0xb2 0xfaadRow(_0e7849(83, 116, 97, 116, 117, 115), _0e7849(83, 116, 97, 116, 117, 115, 58), Theme.success)

-- 0x38 0xa9 0x1c 0x94adRow(_0e7849(84, 97, 114, 103, 101, 116), _0e7849(84, 97, 114, 103, 101, 116, 58), Theme.accent2)
adRow(_0e7849(66, 97, 115, 101, 83, 112, 101, 101, 100), _0e7849(66, 97, 115, 101, 32, 83, 112, 101, 101, 100, 58), Theme.accent2)

-- 10100001110101101111101100110100000111001011100001adRow(_0e7849(83, 112, 101, 101, 100, 77, 117, 108, 116), _0e7849(83, 112, 101, 101, 100, 32, 195, 151, 58), Theme.accent3)
adRow(_0e7849(69, 102, 102, 83, 112, 101, 101, 100), _0e7849(69, 102, 102, 101, 99, 116, 105, 118, 101, 58), Theme.gold)
adRow(_0e7849(84, 105, 101, 114), _0e7849(84, 105, 101, 114, 58), Theme.success)

-- 101001101000001001111111011111001adRow(_0e7849(65, 105, 114), _0e7849(65, 105, 114, 98, 111, 114, 110, 101, 58), Theme.accent2)
adRow(_0e7849(70, 97, 108, 108), _0e7849(70, 97, 108, 108, 58), Theme.danger)

-- 0xdb 0x00 0x52 0x89 0x96 0x30adRow(_0e7849(82, 101, 115, 112, 97, 119, 110), _0e7849(82, 101, 115, 112, 97, 119, 110, 58), Theme.gold)

-- 622f532d03d57b68968280d0e1bdbaad7adRow(_0e7849(77, 111, 100, 101), _0e7849(77, 111, 100, 101, 58), Theme.success)
if Cfg.UI.ADMovable then makeDraggable(adFrame, adHeader) end
if Cfg.UI.ADResizable then
makeResizable(adFrame, {minW = 200, minH = 100, corners = {_0e7849(98, 114), _0e7849(98, 108), _0e7849(116, 114)},
onResize = function(_249d3, _ba7294765)
adFrame.AutomaticSize = Enum.AutomaticSize.None
adFrame.Size = UDim2.fromOffset(_249d3, _ba7294765)

-- 9a121894cff5cb8be3369ea070cb0b66588d35f6436d9030end})

-- 0xae 0xd8 0x1b 0x8aend

-- 110100011111101111111101010001101100001000010001101110001adHide.MouseButton1Click:Connect(function() Cfg.UI.AD = false; pcall(refreshAD) end)
refreshAD = function()
local _4ba480a = Cfg.UI.AD and Cfg.Troll.Hump

-- 1011010101011100011110010111011111001110111011adFrame.Visible = _4ba480a and true or false

-- 0xa4 0xfb 0x86 0x81if not _4ba480a then return end

-- 0xbd 0x4f 0x74 0x06 0xa5 0x9clocal _86af1 = TS.target
if HUMP.awaitingRespawn then

-- 00010111011100001011011000101000111110001101110111010010adRows.Status.Text = _0e7849(87, 65, 73, 84, 73, 78, 71, 32, 82, 69, 83, 80, 65, 87, 78); adRows.Status.TextColor3 = Theme.gold
elseif HUMP.fallHold > 0 then

-- 0xa4 0x96 0x98 0xb1 0xf6 0x1dadRows.Status.Text = _0e7849(72, 79, 76, 68, 73, 78, 71, 32, 65, 73, 82); adRows.Status.TextColor3 = Theme.danger

-- 0x31 0xb0 0x5e 0xca 0xcdelse
adRows.Status.Text = _0e7849(65, 67, 84, 73, 86, 69); adRows.Status.TextColor3 = Theme.success

-- 0xf3 0xa7 0xe8 0xf5end

-- 0100000010010100001100010adRows.Target.Text = _86af1 and _86af1.Name or _0e7849(226, 128, 148)

-- 0x2d 0x17 0x5d 0xddlocal _5bbbaf2 = Cfg.Troll.HumpSpeed
local _c882a5 = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1

-- 89e06eea226a9886a61a1fa41f2899c1c195f4local _18833daaa = math.clamp(_5bbbaf2 * _c882a5, 0.5, 200)
adRows.BaseSpeed.Text = string.format(_0e7849(37, 46, 49, 102, 32, 72, 122), _5bbbaf2)

-- 001100100110101101101000110110011101001100001adRows.SpeedMult.Text = Cfg.Troll.HumpAutoDetect and string.format(_0e7849(195, 151, 37, 46, 50, 102), HUMP.speedMult) or _0e7849(195, 151, 49, 46, 48, 48)

-- 2396a6552db1b707aacccaf5421f76ff334d5adRows.EffSpeed.Text = string.format(_0e7849(37, 46, 49, 102, 32, 72, 122), _18833daaa)

-- 87d78929e5ffc46dad82dba8eccd192c019c04cf98adRows.Tier.Text = HR.tier
adRows.Air.Text = HR.airborne and _0e7849(121, 101, 115) or _0e7849(110, 111)
adRows.Fall.Text = HR.fallingUnder and _0e7849(121, 101, 115) or _0e7849(110, 111)

-- 0x5a 0x71 0xb5 0xc1adRows.Respawn.Text = HUMP.awaitingRespawn and _0e7849(104, 111, 108, 100) or _0e7849(226, 128, 148)
adRows.Mode.Text = HR.autoMode

-- 4cb30b711c545019d5776a0177eb28973a285bed5ecfcfceb158155end


-- 2e5812f9c98f8456fc98eb1eab042d01f6d2d0845f3778ca2

-- b500f69b9ad14f2aab1e16d83b961d03d113449eff8d77daa0336e2dtabOrder = {_0e7849(104, 111, 109, 101), _0e7849(99, 111, 109, 98, 97, 116), _0e7849(118, 105, 115, 117, 97, 108), _0e7849(109, 111, 118, 101), _0e7849(119, 111, 114, 108, 100), _0e7849(112, 108, 97, 121, 101, 114, 115), _0e7849(116, 114, 111, 108, 108), _0e7849(117, 116, 105, 108), _0e7849(115, 97, 118, 101), _0e7849(116, 104, 101, 109, 101)}

-- 0xc0 0x78 0x61 0x5f 0xab 0x2atabTitles = {
home = _0e7849(72, 79, 77, 69), combat = _0e7849(67, 79, 77, 66, 65, 84), visual = _0e7849(86, 73, 83, 85, 65, 76), move = _0e7849(77, 79, 86, 69),

-- 0xe4 0x24 0xdfworld = _0e7849(87, 79, 82, 76, 68), players = _0e7849(80, 76, 65, 89, 69, 82, 83), troll = _0e7849(84, 82, 79, 76, 76), util = _0e7849(85, 84, 73, 76),
save = _0e7849(83, 65, 86, 69), theme = _0e7849(84, 72, 69, 77, 69),
}

-- 1110100110010000010010001000000if isMod() then

-- 0xd2 0x76 0xeatable.insert(tabOrder, 2, _0e7849(111, 119, 110, 101, 114))

-- b4b414169f760d356c2560fdc2e8254283tabTitles.owner = _0e7849(240, 159, 145, 145, 32, 79, 87, 78, 69, 82)
end
for _eaeaf, _f056f84 in ipairs(tabOrder) do makeTab(_f056f84, tabTitles[_f056f84]) end


-- 12d2a4b265845cc2cc42b07b6e8d44e8b22e3a33
function doModBan(_903d5, _d8eab226d, _d4b25)
if not _903d5 or _903d5 == _0e7849() then

-- 0x11 0xbb 0x27 0xcc 0xa4 0x7cnotify(_0e7849(66, 97, 110), _0e7849(78, 111, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 97, 118, 97, 105, 108, 97, 98, 108, 101), Theme.gold, 3); return
end

-- 92367ce959a456a088aab4601fc2b41a385task.spawn(function()
local _69464ff = _39b34:JSONEncode({
robloxId = tostring(_edb254.UserId), key = SESSION_KEY or _0e7849(),
targetDiscordId = tostring(_903d5),

-- 0x67 0xcb 0x1d 0x2d 0x84reason = _d8eab226d or _0e7849(), duration = _d4b25 or 0,
})
local _b8f2c, _e1359 = httpPost(KEY_API .. _0e7849(47, 99, 104, 97, 116, 47, 98, 97, 110), _69464ff)
if _b8f2c then
local _3c760c5 = (_d4b25 and _d4b25 > 0) and (_0e7849(102, 111, 114, 32) .. tostring(math.floor(_d4b25 / 60)) .. _0e7849(109)) or _0e7849(112, 101, 114, 109, 97, 110, 101, 110, 116, 108, 121)

-- 01101111000101101101101011011notify(_0e7849(66, 97, 110, 110, 101, 100), tostring(_903d5) .. _0e7849(32) .. _3c760c5, Theme.success, 3)
else

-- 0111000110111100100001011111001001110110011111010011101110local _ec5d7a0 = parseErrorReason(_e1359)

-- 00100110001101101110101010000110001111010notify(_0e7849(66, 97, 110, 32, 102, 97, 105, 108, 101, 100), _ec5d7a0, Theme.danger, 8, _ec5d7a0)

-- 11101010111001111011000100end

-- 4dc840693206316b02c8dba8ea087bd09b8bend)
end


-- b5635387d911cdf90574836e9822ab6dcb878683bcea41a3f086a607function doModDelete(_953ba7762)

-- 187e2e791be331fb0378655476fae3a28d5e97d4762f9a06b5if not _953ba7762 then return end
task.spawn(function()
local _a805d = _39b34:JSONEncode({

-- 0110000100101101001111000100010110001000000100110110111000robloxId = tostring(_edb254.UserId), key = SESSION_KEY or _0e7849(),

-- 000011010001000100010111011100100100010111101001111100000000messageId = _953ba7762,

-- 82349f74afd138bf36af834380})

-- 0x72 0x4b 0x54 0x13local _0969c, _99b0fbea = httpPost(KEY_API .. _0e7849(47, 99, 104, 97, 116, 47, 100, 101, 108, 101, 116, 101), _a805d)

-- 0110110010001000011000001100111001111100001101101100if _0969c then
for _f689adc, _4452d54c in ipairs(Chat.listeners) do
if _4452d54c and type(fn) == _0e7849(102, 117, 110, 99, 116, 105, 111, 110) then
pcall(fn, {__deleteMsgId = msgId})
end

-- 0010001111101111011001011010000101000011end
notify(_0e7849(68, 101, 108, 101, 116, 101, 100), _0e7849(109, 101, 115, 115, 97, 103, 101, 32, 35) .. tostring(_953ba7762), Theme.success, 2.5)
else
local _f03e9bb1f = parseErrorReason(_99b0fbea)

-- 0x47 0x00 0x92notify(_0e7849(68, 101, 108, 101, 116, 101, 32, 102, 97, 105, 108, 101, 100), _f03e9bb1f, Theme.danger, 8, _f03e9bb1f)
end
end)

-- 0cd7ad680d11c4155966794728c91445e0df8end


local function openQuickMod(target)

-- 0x9f 0xde 0x64 0x7eif not isMod() then return end

-- 931413ecc03209884aba0f892e090bcfb104b53813862899556c4d36afaif not target or not target.discordId then

-- 0xbf 0x23 0xa2 0x92 0x97notify(_0e7849(77, 111, 100), _0e7849(78, 111, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 97, 118, 97, 105, 108, 97, 98, 108, 101, 32, 102, 111, 114, 32, 116, 104, 105, 115, 32, 117, 115, 101, 114), Theme.gold, 3); return

-- 0xb2 0x3f 0x03 0x86end
local _b65c419 = _041938b1:FindFirstChild(_0e7849(82, 101, 97, 112, 101, 114, 81, 117, 105, 99, 107, 77, 111, 100))
if _b65c419 then _b65c419:Destroy() end
local _be2aa = new(_0e7849(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _0e7849(82, 101, 97, 112, 101, 114, 81, 117, 105, 99, 107, 77, 111, 100), ResetOnSpawn = false,

-- 0x15 0x36 0xd1 0xa6 0xe1 0x44IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10050}, _041938b1)

-- 00101010110100010100111000111010010010000100000111101local _32c105 = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromScale(1, 1),

-- 97b6e64ab72578a9e0309c4f4f75b514967c3e0b9dad9efc41a98651BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 0.65,
Text = _0e7849(), AutoButtonColor = false, ZIndex = 1}, _be2aa)
_32c105.MouseButton1Click:Connect(function() _be2aa:Destroy() end)

local _a302ddc3, _25de565ff = 340, 330
local _402a5451, _f822edddf = _7ace8a:GetMouseLocation()

-- 011101110011111110010111100000010110101100110101local _60c13 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_a302ddc3, _25de565ff),
Position = UDim2.fromOffset(
math.clamp(_402a5451 - _a302ddc3 / 2, 20, _c0515.ViewportSize.X - _a302ddc3 - 20),
math.clamp(_f822edddf - 40, 20, _c0515.ViewportSize.Y - _25de565ff - 20)),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, _be2aa)

-- 275ced54d978885350c3609e7d27912d00ae246c6corner(_60c13, 14)

-- bdfbab43e2436a95c5a22625b170b99cce7e44c6fegrad(_60c13, Color3.fromRGB(20, 10, 40), Theme.bgDeep, 90)

-- f0761ad03b1310f056f72f337e38215d49eca8f1e14stroke(_60c13, Theme.neon, 2, 0.15)

-- 0xfa 0xab 0xef 0x8d 0xd6 0x0ddropShadow(_60c13, 14, 16, 0.7)
new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 3), BackgroundColor3 = Theme.neon,

-- 1001001001000101100111101011011110BorderSizePixel = 0, ZIndex = 3}, _60c13)

-- 10011001110010011010001001111001010100001101101000001new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -20, 0, 20), Position = UDim2.fromOffset(14, 12),

-- a7a1f8985aae7571e2684411a90ca88ae3cddf747ffedf7d1299BackgroundTransparency = 1, Text = _0e7849(77, 79, 68, 69, 82, 65, 84, 73, 79, 78), Font = Enum.Font.GothamBlack,

-- 0xae 0xf6 0xc1 0xd2 0x62TextSize = 12, TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _60c13)

-- e3ca0c3e765763390307784ddf4889908e1ba7ed2dnew(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -20, 0, 15), Position = UDim2.fromOffset(14, 32),

-- 0xa0 0xe6 0x91BackgroundTransparency = 1, Text = _0e7849(64) .. tostring(target.name or _0e7849(63)),
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,

-- 648a27fe791cbbb71b29cd814d096b7dTextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _60c13)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -20, 0, 15), Position = UDim2.fromOffset(14, 48),
BackgroundTransparency = 1, Text = _0e7849(100, 105, 115, 99, 111, 114, 100, 58, 32) .. tostring(target.discordId),
Font = Enum.Font.Code, TextSize = 9, TextColor3 = Theme.accent2,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _60c13)


-- 0010010000101011000100000000101101010001local _0f441bc = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, -28, 0, 26),

-- 01000001111110011011110000011011001011Position = UDim2.fromOffset(14, 70), BackgroundColor3 = Theme.panel2,
Text = _0e7849(), PlaceholderText = _0e7849(114, 101, 97, 115, 111, 110, 32, 40, 111, 112, 116, 105, 111, 110, 97, 108, 41), PlaceholderColor3 = Theme.muted,
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text,
ClearTextOnFocus = false, Active = true, Selectable = true, ZIndex = 50}, _60c13))
corner(_0f441bc, 6)
tStroke(stroke(_0f441bc, Theme.strokeSoft, 1))


-- 0x3b 0x88 0xe3local function mkBtn(y, label, col, cb)
local _e8586e = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -28, 0, 26),
Position = UDim2.fromOffset(14, y), BackgroundColor3 = Theme.panel2,

-- 0xea 0x3d 0x29 0xdb 0x99 0xaeText = label, Font = Enum.Font.GothamBold, TextSize = 10,

-- 1101011010001000101111111010TextColor3 = col, AutoButtonColor = false, ZIndex = 5}, _60c13)

-- 3c09123f9b15c6aed3db038815df0corner(_e8586e, 6)

-- c9521389c7f012a43870c54634b1fbbe8e730a05fcc9blocal _5e12af9 = stroke(_e8586e, Theme.strokeSoft, 1)
_e8586e.MouseEnter:Connect(function()
_89c664:Create(_e8586e, TweenInfo.new(0.12), {BackgroundColor3 = Theme.panel3}):Play()
_5e12af9.Color = col

-- 7ef6de4fb08d70df079f5a61end)
_e8586e.MouseLeave:Connect(function()

-- 0x83 0x26 0x8f 0x4f 0xa8 0x6f_89c664:Create(_e8586e, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
_5e12af9.Color = Theme.strokeSoft

-- 0x8b 0x87 0x1f 0x00 0xc6 0xb0end)
_e8586e.MouseButton1Click:Connect(function()
cb()

-- 46a595be5c69a479148fbce0685d255_be2aa:Destroy()

-- 0x72 0x35 0x4d 0x9c 0x78 0x9bend)
end

-- 0xc1 0xb6 0xbf 0xcamkBtn(104, _0e7849(226, 143, 177, 32, 32, 84, 105, 109, 101, 111, 117, 116, 32, 53, 32, 109, 105, 110), Theme.gold, function() doModBan(target.discordId, reasonBox.Text, 300) end)

-- 0xbe 0xaa 0xb0 0x35 0x81mkBtn(134, _0e7849(226, 143, 177, 32, 32, 84, 105, 109, 101, 111, 117, 116, 32, 49, 32, 104, 111, 117, 114), Theme.gold, function() doModBan(target.discordId, reasonBox.Text, 3600) end)

-- d764ffbc82c1f7e557779bbc45da972aec2b42c09fdmkBtn(164, _0e7849(226, 143, 177, 32, 32, 84, 105, 109, 101, 111, 117, 116, 32, 50, 52, 32, 104, 111, 117, 114, 115), Theme.gold, function() doModBan(target.discordId, reasonBox.Text, 86400) end)

-- 0xb2 0xc8 0x87 0x08 0x96mkBtn(194, _0e7849(240, 159, 148, 168, 32, 32, 66, 97, 110, 32, 112, 101, 114, 109, 97, 110, 101, 110, 116, 108, 121), Theme.danger, function() doModBan(target.discordId, reasonBox.Text, 0) end)

-- 1010111011100111010101011111111111110001110if target.msgId then

-- dc74ceb080946368f0c9f202a8mkBtn(224, _0e7849(240, 159, 151, 145, 32, 32, 68, 101, 108, 101, 116, 101, 32, 116, 104, 105, 115, 32, 109, 101, 115, 115, 97, 103, 101), Theme.danger, function() doModDelete(target.msgId) end)
end

-- c1449c05463adc0dc32ce5338b6b113c8d8bmkBtn(254, _0e7849(226, 156, 149, 32, 32, 67, 97, 110, 99, 101, 108), Theme.muted, function() end)

-- 0xf5 0x07 0x05end


-- 0xb5 0xf4 0x3b 0xec
do

-- 0x12 0xe4 0x06 0xd8 0xe3 0xb6local _962261d5 = _0e7849(104, 111, 109, 101)

-- 101011100011011011110111111110section(_962261d5, _0e7849(80, 82, 79, 70, 73, 76, 69), _0e7849(240, 159, 145, 164))
buttonRow(_962261d5, _0e7849(82, 101, 106, 111, 105, 110), _0e7849(82, 69, 74, 79, 73, 78), function()

-- 01001101000001001110011100101011011000001101_f6522:Teleport(game.PlaceId, _edb254)

-- 08e9b3159da64774e11f9418cb3b9c5b88666a1edf8a0db64f55788dend)
buttonRow(_962261d5, _0e7849(82, 101, 115, 101, 116, 32, 67, 104, 97, 114, 97, 99, 116, 101, 114), _0e7849(82, 69, 83, 69, 84), function()
local _86373 = hum(); if _86373 then _86373.Health = 0 end
end)


-- b2d3e41a7207a4c69f360be19bb8bf25a62df41b51d5f6bsection(_962261d5, _0e7849(71, 76, 79, 66, 65, 76, 32, 67, 72, 65, 84, 32, 194, 183, 32, 99, 114, 111, 115, 115, 45, 103, 97, 109, 101), _0e7849(240, 159, 140, 144))

-- f249e1f1273768edcd6f891e04e74c5ec4a7e7387anew(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
Text = _0e7849(101, 118, 101, 114, 121, 32, 82, 69, 65, 80, 69, 82, 32, 117, 115, 101, 114, 32, 105, 110, 32, 101, 118, 101, 114, 121, 32, 103, 97, 109, 101, 32, 115, 101, 101, 115, 32, 116, 104, 105, 115, 32, 115, 97, 109, 101, 32, 99, 104, 97, 116),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,

-- 0xa1 0xc7 0x13 0xd5 0x45 0xf5TextXAlignment = Enum.TextXAlignment.Left,

-- 2a79d0673930e4d86c9856ed98003e4119596080b4034c713ae1682a91LayoutOrder = #pages[_962261d5]:GetChildren(), ZIndex = 33}, pages[_962261d5])

local _76a8b26a3 = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 300),

-- 315cd6c3a1d9186e52add0ed6d7e1488fd49ff4e640070ca4c5807BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,

-- 0xdf 0x86 0x0f 0xd9 0xc5 0xabLayoutOrder = #pages[_962261d5]:GetChildren(), ZIndex = 33}, pages[_962261d5]))

-- 0x57 0xb4 0x75 0x21 0x51 0x1ecorner(_76a8b26a3, 10)
tStroke(stroke(_76a8b26a3, Theme.strokeSoft, 1, 0.4))


-- 0xf9 0x74 0x42 0xbf 0xd6 0xdblocal _d715c = new(_0e7849(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101), {Size = UDim2.new(1, -8, 1, -66),

-- add0d59a7ea882d52bbc2f9f7d2527bb31e9b4a97fdePosition = UDim2.fromOffset(4, 4), BackgroundTransparency = 1, BorderSizePixel = 0,

-- 0110110010101000110011111101000110000001010110ScrollBarThickness = 3, ScrollBarImageColor3 = Theme.neon,
CanvasSize = UDim2.new(0, 0, 0, 0), AutomaticCanvasSize = Enum.AutomaticSize.Y,
ZIndex = 34}, _76a8b26a3)

-- fe680e97735b77dfd4ebbf7317d7513new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, _d715c)
new(_0e7849(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),

-- 0xfb 0xc0 0xf0 0x6bPaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _d715c)


-- 10001011110111001000000100100001011001000local _a3dad = tPanel2(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -8, 0, 18),

-- ed766e5edd4b4483ada82efa34eb8b8632Position = UDim2.new(0, 4, 1, -58), BackgroundColor3 = Theme.panel2,
BackgroundTransparency = 0.3, BorderSizePixel = 0, ZIndex = 34}, _76a8b26a3))

-- 333436e7356c66043cddbd5fc8a9382a1ff1d493fcorner(_a3dad, 4)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(12, 0),

-- 1001100111001011110001100001011000000010BackgroundTransparency = 1, Text = _0e7849(226, 151, 143, 32, 108, 105, 118, 101, 32, 194, 183, 32, 103, 108, 111, 98, 97, 108, 32, 194, 183, 32, 112, 111, 108, 108, 105, 110, 103, 32, 52, 115),

-- 11011100100001101001011010011110000100101010Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.success,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 35}, _a3dad)


-- 0x35 0x41 0xcflocal _0547fd7 = tPanel2(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -8, 0, 28),
Position = UDim2.new(0, 4, 1, -38), BackgroundColor3 = Theme.panel2,

-- 0xff 0x70 0x68 0x7d 0x43BorderSizePixel = 0, ZIndex = 50, Active = true}, _76a8b26a3))
corner(_0547fd7, 7)

-- 100101100001010011010100tStroke(stroke(_0547fd7, Theme.strokeSoft, 1))


-- 0xf1 0x73 0x73local _d90c88 = new(_0e7849(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, -66, 1, 0),

-- 7763a3e92b10ec274a8a9097a597f111ef97335dPosition = UDim2.fromOffset(6, 0), BackgroundTransparency = 1,

-- 0110101110101111011001000011011110010111001100010Active = true, Selectable = true,

-- 0x2c 0x12 0x9aPlaceholderText = _0e7849(109, 101, 115, 115, 97, 103, 101, 32, 101, 118, 101, 114, 121, 111, 110, 101, 44, 32, 101, 118, 101, 114, 121, 119, 104, 101, 114, 101, 226, 128, 166), PlaceholderColor3 = Theme.muted,

-- 0xd7 0x15 0x89 0xa5 0x45Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text, Text = _0e7849(),

-- 01000001000101011010110000110000000010011ClearTextOnFocus = false, ZIndex = 51}, _0547fd7)

-- 10111001111011001000011011local _9e02b5c1 = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(54, 20),
Position = UDim2.new(1, -58, 0.5, -10), BackgroundColor3 = Theme.neon, Text = _0e7849(83, 69, 78, 68),

-- 0xa2 0x46 0xf8Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false, ZIndex = 51}, _0547fd7)
corner(_9e02b5c1, 5)


-- c2ea83e98353d1d92b8ba2b68da9865dcc3e7850e6bc04550local _2a39d5 = {}

-- dbaf4ea5e0b7275e11440861local function addRow(_f0df9c)

-- 58fba44c9003bd1384d8148b3be9c3ebeif type(e) == _0e7849(116, 97, 98, 108, 101) and e.__deleteMsgId then

-- 01111010111101001010110011010010local _799deda = _2a39d5[_f0df9c.__deleteMsgId]
if _799deda and _799deda.row and _799deda.row.Parent then _799deda.row:Destroy() end
_2a39d5[_f0df9c.__deleteMsgId] = nil

-- 0x5d 0x86 0x57return
end

-- 3de8109ef5f64641c3d557ffif not _d715c.Parent then return end

-- ae017a3e5376ced99cf0f59a1fd0370e00local _807b073fa = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 42), BackgroundTransparency = 1,

-- 0x55 0x2c 0xd6 0x40 0x16 0xa6LayoutOrder = (#_d715c:GetChildren()) + 1, ZIndex = 35,

-- 3dda77ab391799c39045802250dd329a2442cbe77AutomaticSize = Enum.AutomaticSize.Y}, _d715c)
local _83318d = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(30, 30),

-- 0d03b344f746ee8bbcddd68a6c0dcc31ff179e78Position = UDim2.fromOffset(0, 2), BackgroundTransparency = 1,

-- c8c24f9db8db25d8045e0343296ae166d8c1e523ee9b9502Text = _0e7849(), AutoButtonColor = false, ZIndex = 36}, _807b073fa)

-- 7c1400ecdd5b8e8caeb227a2fa30e5c7b768c6c6ff9ea3c6local _4de4362 = new(_0e7849(73, 109, 97, 103, 101, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Image = _0e7849(), ZIndex = 36}, _83318d)

-- 1111001100100111001100001110110111111010100100011000100corner(_4de4362, 15)
local _26b2e0 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = (_f0df9c.sender or _0e7849(63)):sub(1, 1):upper(),

-- 0xbf 0xee 0x6e 0x2d 0x48Font = Enum.Font.GothamBlack, TextSize = 13, TextColor3 = Color3.new(1, 1, 1),

-- 0x13 0x11 0x45 0x95 0xdbZIndex = 37}, _83318d)
local _f8ede89 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, ZIndex = 38}, _83318d)
corner(_f8ede89, 15)

-- 1011101100100100111010101001110101001110011100011111000100local _777f5f = _f0df9c.userId and getRankFor(_f0df9c.userId)

-- 0x8b 0xe5 0xfe 0xc6 0xfelocal _96ddb44 = _f0df9c.col or Theme.neon
if _777f5f and BADGE_STYLE[_777f5f] then _96ddb44 = BADGE_STYLE[_777f5f].color end

-- 0xdf 0x4f 0xb1 0x43 0x6f 0x30stroke(_f8ede89, _96ddb44, _777f5f and 2 or 1.4, 0.15)
if _f0df9c.avatar and _f0df9c.avatar ~= _0e7849() then

-- 11001111110001010110001010111100101101101000110101task.spawn(function()

-- 20d72e68dc612ea774f27af43b5daec8e3dblocal _224b626cf = getChatAvatarAsset(_f0df9c.avatar)
if _224b626cf and _4de4362.Parent then

-- 1010001000111110011101001101010111010001101100010_4de4362.Image = _224b626cf

-- 26393738bd919c072183ea44_4de4362.ScaleType = Enum.ScaleType.Crop
_26b2e0.Visible = false
end

-- 9c5c7f23ed7274e22979b4ca9f8091ec2b53f6c219ae12130fd25end)

-- 0x21 0xb8 0xc0 0xa2 0xdaend

-- 0x93 0xcb 0xa9 0xed 0xdd 0xf0if isMod() then

-- 2aaf7506e8e1466c31f60734_83318d.MouseButton1Click:Connect(function()
openQuickMod({

-- 0x85 0xa5 0xe3 0xb5 0xf5 0xe9userId = _f0df9c.userId, discordId = _f0df9c.discordId,
name = (_f0df9c.discordName and _f0df9c.discordName ~= _0e7849() and (_0e7849(64) .. _f0df9c.discordName)) or _f0df9c.sender,

-- 00110110110111110101011110001100000101111msgId = _f0df9c.msgId,

-- 0x65 0x53 0x6a 0xad 0x23 0xac})

-- 14f48c3f036040cc93461fe26ea526b03bdaa3a34de6be9eb8a99end)
end

-- 0xc2 0x60 0xcb 0x4elocal _b6c5f5 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -38, 0, 0),

-- 23cf0dd4e3e8d5cb2d26993b012c12cb094da46082cf4ce2c6Position = UDim2.fromOffset(38, 0), BackgroundTransparency = 1,

-- 40e99ad38851a648317789a21943017AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 36}, _807b073fa)
local _93b9ada5e = _0e7849()

-- 4ff5c0d0a3ffa127424cc4a55fa40bdf350edcc6if _777f5f and BADGE_STYLE[_777f5f] then

-- 07db40769d7ed2c6cb59ca5f26f487759d56b78local _ab2869e = BADGE_STYLE[_777f5f]

-- cb65385a05c71e58dc26030555ef9_93b9ada5e = string.format(_0e7849(60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 37, 115, 34, 62, 37, 115, 32, 37, 115, 60, 47, 102, 111, 110, 116, 62, 32, 32), _ab2869e.color:ToHex(), _ab2869e.emoji, _ab2869e.label)

-- 01110101110100011110001010000end
local _d713800a7 = _0e7849()

-- 101011110110000111011001110100111110101001100if _f0df9c.placeId and _f0df9c.placeId ~= _0e7849() and tostring(_f0df9c.placeId) ~= tostring(game.PlaceId) then

-- 21da2372d760ddef785503077c67ee87425d09f265fdf57473a998a9_d713800a7 = string.format(_0e7849(32, 32, 60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 54, 69, 56, 50, 66, 54, 34, 62, 91, 112, 108, 97, 99, 101, 32, 37, 115, 93, 60, 47, 102, 111, 110, 116, 62), tostring(_f0df9c.placeId))

-- 10000000010111001000111011110110110010101111111010000011100end

-- 690d9dd14f0fcfc4d476b9565531fd9ac2a66b5421df0de35043381local _6bb41dd6 = string.format(_0e7849(60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 56, 70, 65, 54, 66, 69, 34, 62, 37, 115, 60, 47, 102, 111, 110, 116, 62, 32, 32, 37, 115, 60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 37, 115, 34, 62, 60, 98, 62, 37, 115, 60, 47, 98, 62, 60, 47, 102, 111, 110, 116, 62, 37, 115),
os.date(_0e7849(37, 72, 58, 37, 77), math.floor(_f0df9c.time or tick())),

-- e9b413efb021cc2966bec80b43941d6755095c029_93b9ada5e,
(_f0df9c.col or Color3.fromRGB(148, 204, 255)):ToHex(),

-- 0xd0 0xec 0x27 0xe1 0xa4(_f0df9c.discordName and _f0df9c.discordName ~= _0e7849() and (_0e7849(64) .. _f0df9c.discordName)) or _f0df9c.sender,

-- e247f245283e25145dca11e0e9eb_d713800a7)

-- 0x3d 0x0a 0xb8 0xe3 0x8c 0x6anew(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
RichText = true, Font = Enum.Font.GothamBold, TextSize = 9,

-- 1100100101100011001010101011000000010010110011001010010TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,

-- 747d043b472ccad20c50892ccab152b4d6bca1e91764cText = _6bb41dd6, ZIndex = 37}, _b6c5f5)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,

-- e30a99380bc7bafca16796f2cb7ea72114f6d8ad94d0aTextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y, Font = Enum.Font.Gotham,
TextSize = 10, TextColor3 = Theme.text, RichText = true,
TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,

-- 0xe7 0x4f 0xc2 0x61Position = UDim2.fromOffset(0, 14), Text = _f0df9c.text or _0e7849(), ZIndex = 37}, _b6c5f5)
if isMod() and _f0df9c.discordId then

-- 95435ea69dd71349f31c34eelocal _b4933db7 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, -38, 0, 22),
Position = UDim2.fromOffset(38, 34), BackgroundTransparency = 1,
Visible = false, ZIndex = 40}, _807b073fa)

-- 10000111001010000111010011001011001101100100new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {FillDirection = Enum.FillDirection.Horizontal,
HorizontalAlignment = Enum.HorizontalAlignment.Left,

-- 101010011100111100001000011111010VerticalAlignment = Enum.VerticalAlignment.Center,

-- d79ddc07fd19e7473e99093ce95720aa3661b1dd61eb7acea13213cfaa7Padding = UDim.new(0, 4)}, _b4933db7)

-- 1100111011100001111000000local function trayBtn(label, col, cb)

-- eb245a526e91343c3ea1ce37ea1664ab9d83dff7a615ba2659f2elocal _fdfdb6 = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(0, 18),

-- 1110000100110100010011011100100AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = Theme.panel2,

-- 011101101111100111011110011011010000011101Text = label, Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = col, AutoButtonColor = false, ZIndex = 41}, _b4933db7)

-- dcdb78ffef25aa0ce95506659a0d3f9b1761c0c34d9c0a7cb5182af70corner(_fdfdb6, 4)
new(_0e7849(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _fdfdb6)
stroke(_fdfdb6, col, 1, 0.4)
_fdfdb6.MouseButton1Click:Connect(cb)

-- 0000110110111100100110001011111001111010001100001end
if _f0df9c.msgId then trayBtn(_0e7849(240, 159, 151, 145, 32, 100, 101, 108, 101, 116, 101), Theme.danger, function() doModDelete(_f0df9c.msgId) end) end
trayBtn(_0e7849(226, 143, 177, 32, 53, 109), Theme.gold, function() doModBan(_f0df9c.discordId, _0e7849(), 300) end)

-- 0xf3 0xfe 0x3a 0x1b 0x0a 0xdftrayBtn(_0e7849(226, 143, 177, 32, 49, 104), Theme.gold, function() doModBan(_f0df9c.discordId, _0e7849(), 3600) end)
trayBtn(_0e7849(240, 159, 148, 168, 32, 98, 97, 110), Theme.danger, function() doModBan(_f0df9c.discordId, _0e7849(), 0) end)

-- 0x37 0x2b 0xb5 0x6c 0x87 0x64_807b073fa.MouseEnter:Connect(function() tray.Visible = true end)

-- 0111101100111010110011100011111101_807b073fa.MouseLeave:Connect(function() tray.Visible = false end)

-- c999455af4dc68c98f5e5e4a46fe3def2af0ef5c1745466aeend

-- 0x54 0x4f 0x66 0x9fif _f0df9c.msgId then chatRowsById[_f0df9c.msgId] = {row = row, userId = _f0df9c.userId, discordId = _f0df9c.discordId} end

-- 1011111001100001100111110010111101110101011task.defer(function()
chatScroll.CanvasPosition = Vector2.new(0, math.max(0, chatScroll.AbsoluteCanvasSize.Y))

-- 85d0f9021b190e99a5265ad5d5ce43780d49bb8081ee561314d97836end)

-- 0xbc 0xba 0xb2 0xa3 0xb1 0xefend

-- cac33c31d55d6cb352be890079f9015a866b9f0f4ce230a8736706083Chat.listeners[#Chat.listeners + 1] = addRow

-- 2e38a8c1026ad45944f7fbf8773e3for _23b2a81f8, _df32b4b in ipairs(Chat.messages) do addRow(_df32b4b) end

local function trySend()
local _28ea3577 = chatInput.Text or _0e7849()

-- 0100001000110100110000111100011100111010001010000111110if _28ea3577:gsub(_0e7849(37, 115), _0e7849()) == _0e7849() then return end
chatInput.Text = _0e7849()
local _0ad169a = sendChat(_28ea3577)
if _0ad169a then
pulse(sendBtn, 0.94, 0.06)
glow(sendBtn, Theme.accent2, 0.4)
end
end
sendBtn.MouseButton1Click:Connect(trySend)

-- 2bbc05d2ed4c9fb23d10d386e6e70d1d052c69de5609c1807ae8d54ce593chatInput.FocusLost:Connect(function(_e3c52ee4) if _e3c52ee4 then trySend() end end)


-- 0xaa 0xab 0x9b 0x5btask.spawn(function()
local _e5f7a1148 = 0
while gui and gui.Parent do

-- a319d4256f6e03e44b633d5a439589d6044487f270093fb468atask.wait(4)
local _0a42ccbd2, _9a2e9dec = httpGet(KEY_API .. _0e7849(47, 99, 104, 97, 116, 47, 102, 101, 116, 99, 104, 63, 115, 105, 110, 99, 101, 61) .. _e5f7a1148 .. _0e7849(38, 108, 105, 109, 105, 116, 61, 53, 48))

-- b39d7879332af22e1023a310d1309f3cef2333cdif _0a42ccbd2 and _9a2e9dec then

-- 0xe7 0x8b 0xcblocal _f9c02, _95a7be8f8 = pcall(function() return _39b34:JSONDecode(_9a2e9dec) end)
if _f9c02 and type(data) == _0e7849(116, 97, 98, 108, 101) and data.messages then
for _69da91988, _2bcd077 in ipairs(_95a7be8f8.messages) do

-- 10111100111111110100001111101111110010011if _2bcd077.id and _2bcd077.id > _e5f7a1148 then _e5f7a1148 = _2bcd077.id end

-- f77ed2615a864612ca8c673aa279c66cf0addChat(_2bcd077.sender, _2bcd077.text, false, Color3.fromRGB(148, 204, 255),
_2bcd077.avatar, _2bcd077.discordName, _2bcd077.country, _2bcd077.countryCode,

-- bae49024d542d28a4f8b938c12e51619948ccdbe8b15e90e_2bcd077.userId, _2bcd077.id, _2bcd077.placeId, _2bcd077.time, _2bcd077.discordId)

-- 0xa1 0xd2 0x02end

-- 011111110011111011010110001011111101110110010101111000end
end

-- 11110010100111111101001000010001111110101110011end

-- 0xf9 0xc4 0x7d 0x71end)

section(pg2, _0e7849(70, 69, 69, 68, 66, 65, 67, 75), _0e7849(226, 156, 137, 239, 184, 143))

-- 0x79 0x44 0xbd 0x30local _92937 = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 84),

-- 0x40 0xa3 0x1e 0x67 0xab 0xe3BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,

-- 0x68 0xad 0xfb 0x58 0x77 0xe4LayoutOrder = #pages[pg2]:GetChildren(), ZIndex = 33}, pages[pg2]))

-- 7f545eaa1148ff92ec8c36873e3027800fe8e9b6c9corner(_92937, 10)

-- 2d7980795c9938fe02900199ca217d5ccetStroke(stroke(_92937, Theme.strokeSoft, 1, 0.4))

-- 0x15 0xf5 0xd2 0x7clocal _28e4aa = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, -12, 1, -42),

-- 0110100000001101111010101100101100010101101011110011011010Position = UDim2.fromOffset(6, 6), BackgroundColor3 = Theme.panel2,
BackgroundTransparency = 0.2, Text = _0e7849(), PlaceholderText = _0e7849(116, 121, 112, 101, 32, 121, 111, 117, 114, 32, 102, 101, 101, 100, 98, 97, 99, 107, 32, 104, 101, 114, 101, 226, 128, 166),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 10,

-- a5e8249aae8a314b65af8c7fTextColor3 = Theme.text, MultiLine = true, ClearTextOnFocus = false,

-- 4d70c1bcb5e82183dbef5e601db7318afe4fd7224ecffActive = true, Selectable = true,
TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,

-- 43f9ea534bb48c0c81e812307ca9f1c69ea945552d47b41428e451e6c92ZIndex = 50}, _92937))
corner(_28e4aa, 6)
tStroke(stroke(_28e4aa, Theme.strokeSoft, 1))

-- 101000000000010011100110001000111001111011101010local _d21d6d2bb = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -12, 0, 24),
Position = UDim2.new(0, 6, 1, -30), BackgroundColor3 = Theme.neon, Text = _0e7849(83, 69, 78, 68, 32, 70, 69, 69, 68, 66, 65, 67, 75),
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Color3.new(1, 1, 1),

-- 0010011111001101110010100111001011010010010100000AutoButtonColor = false, ZIndex = 34}, _92937)
corner(_d21d6d2bb, 6)

-- 00100100000000010110001000000001001001010010_d21d6d2bb.MouseButton1Click:Connect(function()
local _f3add3 = _28e4aa.Text or _0e7849()
if _f3add3:gsub(_0e7849(37, 115), _0e7849()) == _0e7849() then

-- 073c1db63dcf87ab7790370fe1fbfe81e46ec49c8287d059notify(_0e7849(70, 101, 101, 100, 98, 97, 99, 107), _0e7849(78, 111, 116, 104, 105, 110, 103, 32, 116, 111, 32, 115, 101, 110, 100), Theme.danger, 2); return

-- 000010010100001111101011111110011010011101101010110001000end
if #_f3add3 > 500 then _f3add3 = _f3add3:sub(1, 500) end

-- d543930e75868b98fcab85631d0ctask.spawn(function()

-- a20dfa8e531692a9a347d37af443341745b4ee99b37local _ac1b27357 = _39b34:JSONEncode({
text = _f3add3, name = _edb254.Name,

-- ecccae8d50360ea0fc8cdb86e3userId = tostring(_edb254.UserId), placeId = tostring(game.PlaceId),

-- e1bb5b1e47356adf31f8cb16244915ee})

-- 138208c90309dec2134fefe26b5488ff3a4c817ad1fa14f5bd7b078d2local _8f55bb0e9, _a1a5189 = httpPost(FEEDBACK_WEBHOOK, _ac1b27357)

-- 11110101111111101000101001000110110010011111101if _8f55bb0e9 then
_28e4aa.Text = _0e7849()
notify(_0e7849(70, 101, 101, 100, 98, 97, 99, 107, 32, 115, 101, 110, 116), _0e7849(84, 104, 97, 110, 107, 115), Theme.success, 3)

-- 0x2f 0x6b 0x16 0x49 0x15else
notify(_0e7849(70, 101, 101, 100, 98, 97, 99, 107, 32, 102, 97, 105, 108, 101, 100), tostring(_a1a5189), Theme.danger, 5, tostring(_a1a5189))
end

-- 543ab6ceb637ac5ebea408f7f3854316end)
end)

-- 0x24 0xdb 0xd5 0x3a 0x05 0x3bend


-- d9868e10999c2ccdf630790b251afa5d457867dafdf666ebcc4e7ca410if isMod() then

-- 0x4f 0x66 0xa5 0xb6 0xdf 0x32local _03acd61 = _0e7849(111, 119, 110, 101, 114)

-- 11101010001011000110011100101111100section(_03acd61, _0e7849(76, 73, 86, 69, 32, 65, 78, 78, 79, 85, 78, 67, 69, 77, 69, 78, 84, 83), _0e7849(240, 159, 147, 162))

-- 38b16f762290b1107bd1871b6e3787f1b7f6fec5b8b88fe6a49new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 16), BackgroundTransparency = 1,

-- 0110000001110110011101101011110011010000010111111110000Text = _0e7849(98, 114, 111, 97, 100, 99, 97, 115, 116, 32, 116, 111, 32, 101, 118, 101, 114, 121, 32, 82, 69, 65, 80, 69, 82, 32, 117, 115, 101, 114, 32, 105, 110, 32, 101, 118, 101, 114, 121, 32, 115, 101, 114, 118, 101, 114),

-- 2ba6d3182b65fdcf20279e44fee48543325053e96a00abc7abf890e07Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,

-- 0xf8 0xc1 0x86 0x0e 0x78TextXAlignment = Enum.TextXAlignment.Left,

-- 0xbb 0xbd 0xe7 0xd3 0x74 0x32LayoutOrder = #pages[_03acd61]:GetChildren(), ZIndex = 33}, pages[_03acd61])

local _2d426b = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, 0, 0, 70),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
BorderSizePixel = 0, Text = _0e7849(),
Active = true, Selectable = true,
PlaceholderText = _0e7849(116, 121, 112, 101, 32, 121, 111, 117, 114, 32, 97, 110, 110, 111, 117, 110, 99, 101, 109, 101, 110, 116, 226, 128, 166),

-- 0x13 0x49 0x02 0x8dPlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,

-- 9953272df926b7e146f9dbe0c14f4e1c594b65c0f042bf08TextSize = 11, TextColor3 = Theme.text, MultiLine = true,
ClearTextOnFocus = false, TextXAlignment = Enum.TextXAlignment.Left,

-- 101011000000011110110011TextYAlignment = Enum.TextYAlignment.Top,
LayoutOrder = #pages[_03acd61]:GetChildren(), ZIndex = 50}, pages[_03acd61]))
corner(_2d426b, 8)

-- 0xf5 0xe0 0x62 0x6c 0x5b 0x64tStroke(stroke(_2d426b, Theme.strokeSoft, 1))


-- 50db923b16746b175c65d60b5c4b7f77ce02c0518a0b06a45buttonRow(_03acd61, _0e7849(83, 101, 110, 100, 32, 116, 111, 32, 101, 118, 101, 114, 121, 111, 110, 101), _0e7849(240, 159, 147, 162, 32, 83, 69, 78, 68), function(_a13a20)

-- 0x04 0xa7 0x30 0x77 0x72 0x0blocal _00acc297 = _2d426b.Text or _0e7849()
if sendAnnouncement(_00acc297) then _2d426b.Text = _0e7849() end

-- f93f5aa5863a427f5083b18a63813132541414c63af9f00aa74fd7fa1end)

-- 0xfa 0xa4 0x53 0x51 0x5dbuttonRow(_03acd61, _0e7849(80, 114, 101, 118, 105, 101, 119, 32, 108, 111, 99, 97, 108, 108, 121), _0e7849(80, 82, 69, 86, 73, 69, 87), function()

-- 0xbf 0xda 0x15local _b889f7002 = _2d426b.Text or _0e7849()
if _b889f7002:gsub(_0e7849(37, 115), _0e7849()) == _0e7849() then

-- 02e965dd067f4c061ad09bd0c17558ea9notify(_0e7849(80, 114, 101, 118, 105, 101, 119), _0e7849(84, 121, 112, 101, 32, 97, 32, 109, 101, 115, 115, 97, 103, 101, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return

-- 0xa1 0x08 0x24 0xea 0x06 0xa4end
showAnnouncement({text = _b889f7002, sender = _edb254.Name,
userId = _edb254.UserId, rank = getLocalRank() or _0e7849(111, 119, 110, 101, 114), time = os.time()})

-- e2b0fcc2448310b57f4727f61b41a342fdbc0f582063c78e70end)

section(_03acd61, _0e7849(67, 72, 65, 84, 32, 77, 79, 68, 69, 82, 65, 84, 73, 79, 78, 32, 67, 79, 78, 83, 79, 76, 69), _0e7849(240, 159, 155, 161))

-- 101000110001111001000100110010010011001100new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,

-- 01100100101100111010100100101111001011111011010110Text = _0e7849(113, 117, 105, 99, 107, 45, 98, 97, 110, 32, 98, 121, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 194, 183, 32, 118, 105, 101, 119, 32, 98, 97, 110, 32, 108, 105, 115, 116),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,

-- 449340269e87f8328ca38bca9d8f244c1270f67bcb7708ab425LayoutOrder = #pages[_03acd61]:GetChildren(), ZIndex = 33}, pages[_03acd61])


-- aa9f835ca39437a8c37196b1601local _c83cdd = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, 0, 0, 28),

-- 110111110011000001000001001101011101111010111101111111001010BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,

-- 0x56 0x47 0x9e 0x4cBorderSizePixel = 0, Text = _0e7849(),

-- 11011010000110101011101100101001100011001110100Active = true, Selectable = true,

-- 0x76 0xbf 0xea 0xa3 0xc0PlaceholderText = _0e7849(116, 97, 114, 103, 101, 116, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 40, 49, 55, 45, 50, 48, 32, 100, 105, 103, 105, 116, 115, 41),

-- 0x07 0xd3 0x62PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
TextSize = 11, TextColor3 = Theme.text,
ClearTextOnFocus = false,

-- 00110111101101110010100010001110000110LayoutOrder = #pages[_03acd61]:GetChildren(), ZIndex = 50}, pages[_03acd61]))
corner(_c83cdd, 7)
tStroke(stroke(_c83cdd, Theme.strokeSoft, 1))

local _223f810 = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, 0, 0, 28),

-- 01110001000100110011010011000001000100100001BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,

-- 0x8c 0x74 0xc8BorderSizePixel = 0, Text = _0e7849(),

-- 100110110100100010111010000010Active = true, Selectable = true,

-- c88a2798eaab06bd1546a81ee2870PlaceholderText = _0e7849(114, 101, 97, 115, 111, 110, 32, 40, 111, 112, 116, 105, 111, 110, 97, 108, 41),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,

-- 0x3d 0x23 0xa5 0xb6 0x7b 0xc9TextSize = 11, TextColor3 = Theme.text,
ClearTextOnFocus = false,

-- 45e277229efc34932e196bf18739989782e127060f60c63383dLayoutOrder = #pages[_03acd61]:GetChildren(), ZIndex = 50}, pages[_03acd61]))
corner(_223f810, 7)
tStroke(stroke(_223f810, Theme.strokeSoft, 1))


-- e574e23338f20eb80471b5616619099bc2c9buttonRow(_03acd61, _0e7849(84, 105, 109, 101, 111, 117, 116, 32, 53, 32, 109, 105, 110), _0e7849(53, 77), function()
local _fb8862 = (_c83cdd.Text or _0e7849()):gsub(_0e7849(37, 115), _0e7849())
if _fb8862 == _0e7849() then notify(_0e7849(66, 97, 110), _0e7849(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return end

-- 0x46 0x76 0xbe 0xad 0xb1 0xd7doModBan(_fb8862, _223f810.Text, 300); _223f810.Text = _0e7849()
end)

-- a0de08116c6d5fb2cac37985883afafaa440da82d85e2fbuttonRow(_03acd61, _0e7849(84, 105, 109, 101, 111, 117, 116, 32, 49, 32, 104, 111, 117, 114), _0e7849(49, 72), function()
local _c23636f6 = (_c83cdd.Text or _0e7849()):gsub(_0e7849(37, 115), _0e7849())
if _c23636f6 == _0e7849() then notify(_0e7849(66, 97, 110), _0e7849(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return end

-- bdeafda4fc81e47c8bd6f50de1af56b8647c164e04f2820d6a2e071f11doModBan(_c23636f6, _223f810.Text, 3600); _223f810.Text = _0e7849()
end)
buttonRow(_03acd61, _0e7849(84, 105, 109, 101, 111, 117, 116, 32, 50, 52, 32, 104, 111, 117, 114, 115), _0e7849(50, 52, 72), function()

-- 0x09 0x7c 0x38local _04219 = (_c83cdd.Text or _0e7849()):gsub(_0e7849(37, 115), _0e7849())

-- 0xcd 0x6b 0x25 0xf0 0x84 0x27if _04219 == _0e7849() then notify(_0e7849(66, 97, 110), _0e7849(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return end

-- 0xe9 0x96 0xfadoModBan(_04219, _223f810.Text, 86400); _223f810.Text = _0e7849()

-- 011001111101101000111000001000101end)

-- 88b1f9a7dd362e1f184ad1363f302079df0936afada6buttonRow(_03acd61, _0e7849(66, 97, 110, 32, 112, 101, 114, 109, 97, 110, 101, 110, 116, 108, 121), _0e7849(66, 65, 78), function()

-- dcc5cbbc0d81406711e45520e70e39a1ba8f0f2d934cbd8e98810fc80local _9a181 = (_c83cdd.Text or _0e7849()):gsub(_0e7849(37, 115), _0e7849())

-- 1c39c9e6b7339177ffc21eb91a78b4if _9a181 == _0e7849() then notify(_0e7849(66, 97, 110), _0e7849(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return end

-- 0xf1 0x32 0x50doModBan(_9a181, _223f810.Text, 0); _223f810.Text = _0e7849()

-- 3e5ecd9a394b9ffcced1c4fdc7f4fbf875a694cc85136722484bfd944818end)

-- a984e5210b62be9fd460a1dfed5ba7c0091011393c0edefbuttonRow(_03acd61, _0e7849(85, 110, 98, 97, 110, 32, 117, 115, 101, 114), _0e7849(85, 78, 66, 65, 78), function()

-- 0x13 0xbd 0x00 0xd4 0x69 0x55local _3e28ac6 = (_c83cdd.Text or _0e7849()):gsub(_0e7849(37, 115), _0e7849())

-- 1010110011101110010000100111011001000001if _3e28ac6 == _0e7849() then notify(_0e7849(85, 110, 98, 97, 110), _0e7849(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return end

-- a77e411b5695460d40e3716c9f9966c0b14a2c02da6d7d55152c4cec94task.spawn(function()
local _dd08ac368 = _39b34:JSONEncode({
robloxId = tostring(_edb254.UserId), key = SESSION_KEY or _0e7849(),

-- 0xe0 0x06 0xa7targetDiscordId = _3e28ac6,
})
local _7fcfda12, _4531a = httpPost(KEY_API .. _0e7849(47, 99, 104, 97, 116, 47, 117, 110, 98, 97, 110), _dd08ac368)

-- 0x2a 0xed 0xf3 0xddif _7fcfda12 then
notify(_0e7849(85, 110, 98, 97, 110, 110, 101, 100), _3e28ac6, Theme.success, 3)

-- 0xc9 0x03 0x66 0x3f 0xffelse

-- 010100001010110100110111101011local _cbf97fdeb = parseErrorReason(_4531a)

-- 01011101010000101111011010111001010notify(_0e7849(85, 110, 98, 97, 110, 32, 102, 97, 105, 108, 101, 100), _cbf97fdeb, Theme.danger, 8, _cbf97fdeb)

-- 1fa8693d96e03d7becd7fd600e279cea6665588231end

-- 74b4634c14bfd0f2dd927c7d46130fcc815fd408aend)

-- 00110000010001010110110101101011010011010111end)


-- f3b6bd2c1fee0383f3f2c1ffsection(_03acd61, _0e7849(79, 78, 76, 73, 78, 69, 32, 83, 84, 65, 70, 70), _0e7849(240, 159, 155, 161, 239, 184, 143))
local _fc47fadcd = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0),

-- 11000101101001011101100101000011011011BackgroundTransparency = 1, LayoutOrder = #pages[_03acd61]:GetChildren(),

-- 61bac76a3020c9280b9938033e47be392b8b7331ecAutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_03acd61])
new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, _fc47fadcd)
local function refreshStaff()

-- f9aaec62550645bdd91b0d4f5c37e721ebafor _351499, _e82f94 in ipairs(_fc47fadcd:GetChildren()) do
if not _e82f94:IsA(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116)) then _e82f94:Destroy() end

-- 111110110001000011111111101000end

-- d6af5009ccca4bca1f0cdf10d4ba19b4local _bd145d8 = 0

-- a4862421fbe5e1112c795c8fbc851d2734e8f4for _0bd817, _91c029375 in ipairs(_9f5e77:GetPlayers()) do
local _b2f2d = getRankFor(_91c029375.UserId)
local _ec7187d = _b2f2d and BADGE_STYLE[_b2f2d]
if _ec7187d then

-- 0xf4 0xa7 0x9a 0x69_bd145d8 = _bd145d8 + 1
local _ee326 = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 26),

-- 0xeb 0xbf 0x65 0xf8 0xacBackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,

-- f2f3dc52dc0c8d5a193b0321c22b1206e65fLayoutOrder = _bd145d8, ZIndex = 34}, _fc47fadcd))
corner(_ee326, 6)

-- 0xa0 0xb9 0xff 0x90 0x58stroke(_ee326, _ec7187d.color, 1.4, 0.2)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -10, 1, 0),

-- 011011101011011100011110010010100000111000100110111100Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1,
Text = string.format(_0e7849(37, 115, 32, 37, 115, 32, 32, 37, 115), _ec7187d.emoji, _ec7187d.label, _91c029375.Name),
Font = Enum.Font.GothamBold, TextSize = 10,

-- 01000010000000110111010001011000001001111101001010001TextColor3 = _ec7187d.color, TextXAlignment = Enum.TextXAlignment.Left,

-- 0xb0 0xfe 0xe6ZIndex = 35}, _ee326)

-- 035340fc9532fc96b1aeb57055fedb5ecfend
end

-- 0xf1 0x5c 0xd7if _bd145d8 == 0 then

-- 0x96 0x4b 0x89 0x3anew(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
Text = _0e7849(110, 111, 32, 115, 116, 97, 102, 102, 32, 111, 110, 108, 105, 110, 101), Font = Enum.Font.Gotham, TextSize = 9,
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,

-- 0x3c 0x61 0x28 0xf0 0x52LayoutOrder = 1, ZIndex = 34}, _fc47fadcd)

-- 0x92 0x85 0x71 0xe4 0x80 0x9fend

-- 001100011001111110001001end
refreshStaff()

-- 889a2c1f81f40989f4a871bf19894buttonRow(pg2, _0e7849(82, 101, 102, 114, 101, 115, 104, 32, 115, 116, 97, 102, 102, 32, 108, 105, 115, 116), _0e7849(82, 69, 70, 82, 69, 83, 72), refreshStaff)

-- aad0dbb3464a2f5668da53d4a98e5d1de12b886ed684end


-- cefb5e1914aac4344007f9a6dd85cc63b57afee98932ab7a0ec6a95f696

-- 0x1b 0x54 0x3a 0x59 0xc4 0x38do
local _739177 = _0e7849(99, 111, 109, 98, 97, 116)

-- 13787989bf9ccdc48aa6c7a6ac1bc1ac328a936cba8b9f2f29753b5section(_739177, _0e7849(65, 73, 77, 66, 79, 84), _0e7849(240, 159, 142, 175))
toggleRow(_739177, _0e7849(65, 105, 109, 98, 111, 116, 46, 69, 110, 97, 98, 108, 101, 100), _0e7849(65, 105, 109, 98, 111, 116))

-- 111001011000001110010111100011buttonRow(_739177, _0e7849(65, 105, 109, 32, 75, 101, 121), Cfg.Aimbot.Key.Name, function(_21650c)

-- bdc4a42067bd9d84848a0810pendingKeybind = {path = _0e7849(65, 105, 109, 98, 111, 116, 46, 75, 101, 121), raw = true, btn = _21650c}

-- 0x96 0x0e 0x63 0xa4_21650c.Text = _0e7849(112, 114, 101, 115, 115, 226, 128, 166)
end)
toggleRow(_739177, _0e7849(65, 105, 109, 98, 111, 116, 46, 84, 111, 103, 103, 108, 101, 77, 111, 100, 101), _0e7849(84, 111, 103, 103, 108, 101, 32, 77, 111, 100, 101))
toggleRow(_739177, _0e7849(65, 105, 109, 98, 111, 116, 46, 72, 117, 109, 97, 110, 105, 122, 101), _0e7849(72, 117, 109, 97, 110, 105, 122, 101))

-- 0a9a9bdb1ec71145971e5981bee05sliderRow(_739177, _0e7849(65, 105, 109, 98, 111, 116, 46, 70, 79, 86), _0e7849(70, 79, 86), 10, 800, 0)

-- 0x21 0xa0 0xb4sliderRow(_739177, _0e7849(65, 105, 109, 98, 111, 116, 46, 77, 97, 120, 68, 105, 115, 116), _0e7849(77, 97, 120, 32, 68, 105, 115, 116, 97, 110, 99, 101), 50, 5000, 0)

-- 0x94 0xcf 0x5f 0x05sliderRow(_739177, _0e7849(65, 105, 109, 98, 111, 116, 46, 83, 109, 111, 111, 116, 104, 110, 101, 115, 115), _0e7849(83, 109, 111, 111, 116, 104, 110, 101, 115, 115), 1, 20, 0)
sliderRow(_739177, _0e7849(65, 105, 109, 98, 111, 116, 46, 83, 116, 114, 101, 110, 103, 116, 104), _0e7849(83, 116, 114, 101, 110, 103, 116, 104), 1, 10, 1)
toggleRow(_739177, _0e7849(65, 105, 109, 98, 111, 116, 46, 84, 101, 97, 109, 67, 104, 101, 99, 107), _0e7849(84, 101, 97, 109, 32, 67, 104, 101, 99, 107))
toggleRow(_739177, _0e7849(65, 105, 109, 98, 111, 116, 46, 86, 105, 115, 105, 98, 108, 101, 79, 110, 108, 121), _0e7849(86, 105, 115, 105, 98, 108, 101, 32, 79, 110, 108, 121))
toggleRow(_739177, _0e7849(65, 105, 109, 98, 111, 116, 46, 83, 104, 111, 119, 67, 105, 114, 99, 108, 101), _0e7849(83, 104, 111, 119, 32, 70, 79, 86, 32, 67, 105, 114, 99, 108, 101))

section(_739177, _0e7849(84, 82, 73, 71, 71, 69, 82, 66, 79, 84), _0e7849(226, 154, 161))
toggleRow(_739177, _0e7849(84, 114, 105, 103, 103, 101, 114, 46, 69, 110, 97, 98, 108, 101, 100), _0e7849(84, 114, 105, 103, 103, 101, 114, 98, 111, 116))

-- 1101100010001101101000110buttonRow(_739177, _0e7849(84, 114, 105, 103, 103, 101, 114, 32, 75, 101, 121), Cfg.Trigger.Key.Name, function(_61b6cc)
pendingKeybind = {path = _0e7849(84, 114, 105, 103, 103, 101, 114, 46, 75, 101, 121), raw = true, btn = _61b6cc}

-- 10011010010110101111000111011110101000011_61b6cc.Text = _0e7849(112, 114, 101, 115, 115, 226, 128, 166)

-- 0xe4 0x30 0x6b 0x85 0x47end)

-- 0x0d 0x8d 0xfa 0x04 0x13 0x5dsliderRow(_739177, _0e7849(84, 114, 105, 103, 103, 101, 114, 46, 82, 97, 100, 105, 117, 115), _0e7849(82, 97, 100, 105, 117, 115), 0, 100, 0)
sliderRow(_739177, _0e7849(84, 114, 105, 103, 103, 101, 114, 46, 68, 101, 108, 97, 121), _0e7849(68, 101, 108, 97, 121, 32, 40, 115, 41), 0.01, 0.5, 2)
toggleRow(_739177, _0e7849(84, 114, 105, 103, 103, 101, 114, 46, 84, 101, 97, 109, 67, 104, 101, 99, 107), _0e7849(84, 101, 97, 109, 32, 67, 104, 101, 99, 107))
end


-- 04f34d053a0cfa963b566db1ff06356089278
do
local _08e3a = _0e7849(118, 105, 115, 117, 97, 108)
section(_08e3a, _0e7849(69, 83, 80), _0e7849(240, 159, 145, 129))
toggleRow(_08e3a, _0e7849(86, 105, 115, 117, 97, 108, 115, 46, 69, 110, 97, 98, 108, 101, 100), _0e7849(69, 83, 80, 32, 69, 110, 97, 98, 108, 101, 100))

-- 82f9ee414f5e2f9a8a3461ac1aa3c2c05da79cycleRow(_08e3a, _0e7849(86, 105, 115, 117, 97, 108, 115, 46, 77, 111, 100, 101), _0e7849(77, 111, 100, 101), {_0e7849(84, 101, 97, 109), _0e7849(68, 79, 87), _0e7849(80, 67, 80), _0e7849(82, 111, 108, 101), _0e7849(65, 117, 116, 111), _0e7849(82, 97, 105, 110, 98, 111, 119)})

-- 10001011000000010101000100000001000010011toggleRow(_08e3a, _0e7849(86, 105, 115, 117, 97, 108, 115, 46, 78, 97, 109, 101, 84, 97, 103, 115), _0e7849(78, 97, 109, 101, 32, 84, 97, 103, 115))

-- 100100100100000110110000100000010000111110toggleRow(_08e3a, _0e7849(86, 105, 115, 117, 97, 108, 115, 46, 68, 105, 115, 116, 97, 110, 99, 101), _0e7849(68, 105, 115, 116, 97, 110, 99, 101))

-- 0xe3 0x2b 0x6e 0x2e 0xca 0xb9toggleRow(_08e3a, _0e7849(86, 105, 115, 117, 97, 108, 115, 46, 83, 104, 111, 119, 82, 111, 108, 101), _0e7849(82, 111, 108, 101, 32, 76, 97, 98, 101, 108))

-- 0xdc 0x6e 0x25 0x95sliderRow(_08e3a, _0e7849(86, 105, 115, 117, 97, 108, 115, 46, 70, 105, 108, 108), _0e7849(70, 105, 108, 108, 32, 84, 114, 97, 110, 115, 112, 97, 114, 101, 110, 99, 121), 0, 1, 2)


-- 0x28 0x2e 0x92section(_08e3a, _0e7849(67, 79, 76, 79, 82, 32, 76, 69, 71, 69, 78, 68), _0e7849(240, 159, 142, 168))

-- 110101101011111110101110110111100011001010100010100legendRow(_08e3a, _0e7849(84, 69, 65, 77, 32, 194, 183, 32, 97, 108, 108, 121), ESPColours.ally)

-- 0111111001010110110010011001110legendRow(_08e3a, _0e7849(84, 69, 65, 77, 32, 194, 183, 32, 101, 110, 101, 109, 121), ESPColours.enemy)

-- 4fc4822195f54de62416a54fda6fd7956ee9837e0d70c4964a1legendRow(_08e3a, _0e7849(80, 67, 80, 32, 194, 183, 32, 112, 111, 108, 105, 99, 101), ESPColours.police)
legendRow(_08e3a, _0e7849(80, 67, 80, 32, 194, 183, 32, 99, 114, 105, 109, 105, 110, 97, 108), ESPColours.criminal)
legendRow(_08e3a, _0e7849(80, 67, 80, 32, 194, 183, 32, 112, 114, 105, 115, 111, 110, 101, 114), ESPColours.prisoner)
legendRow(_08e3a, _0e7849(68, 79, 87, 32, 194, 183, 32, 117, 110, 105, 116, 101, 100, 32, 102, 114, 111, 110, 116), ESPColours.united)

-- 010001100111010100101000011010111010101101010010011legendRow(_08e3a, _0e7849(68, 79, 87, 32, 194, 183, 32, 105, 114, 111, 110, 32, 108, 101, 103, 105, 111, 110), ESPColours.iron)

section(_08e3a, _0e7849(67, 65, 77, 69, 82, 65), _0e7849(240, 159, 148, 141))

-- 0xf0 0x3b 0x2a 0x50 0xc8 0x92toggleRow(_08e3a, _0e7849(86, 105, 115, 117, 97, 108, 115, 46, 73, 110, 102, 90, 111, 111, 109), _0e7849(73, 110, 102, 105, 110, 105, 116, 101, 32, 90, 111, 111, 109))

-- 100111010110100110101100010111sliderRow(_08e3a, _0e7849(86, 105, 115, 117, 97, 108, 115, 46, 70, 79, 86, 77, 105, 110), _0e7849(77, 105, 110, 32, 70, 79, 86), 0.5, 30, 1)

-- 0x43 0xcd 0x9asliderRow(_08e3a, _0e7849(86, 105, 115, 117, 97, 108, 115, 46, 70, 79, 86, 77, 97, 120), _0e7849(77, 97, 120, 32, 70, 79, 86), 60, 400, 0)


-- 1dbe1777dd0ff8da8c198bdasection(_08e3a, _0e7849(87, 79, 82, 76, 68, 32, 86, 73, 69, 87), _0e7849(240, 159, 140, 171))

-- 1111001101000001001100011010001011000111010010100001100toggleRow(_08e3a, _0e7849(86, 105, 115, 117, 97, 108, 115, 46, 78, 111, 70, 111, 103), _0e7849(78, 111, 32, 70, 111, 103))
end


-- 10001100100111101001011111110010001do

-- 0x33 0x2c 0x3elocal _38271cb3a = _0e7849(109, 111, 118, 101)

-- 7294e3063813c8883cb3d86d159e720f0a90section(_38271cb3a, _0e7849(67, 79, 82, 69), _0e7849(240, 159, 143, 131))

-- 0x1c 0x93 0x35 0xc1toggleRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 78, 111, 99, 108, 105, 112), _0e7849(78, 111, 99, 108, 105, 112))

-- 1309afdb1c408df3d985428dd915fe31d0e00e217btoggleRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 101, 101, 100, 69, 110, 97, 98, 108, 101, 100), _0e7849(83, 112, 101, 101, 100, 32, 72, 97, 99, 107))
sliderRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 101, 101, 100), _0e7849(87, 97, 108, 107, 32, 83, 112, 101, 101, 100), 16, 500, 0)
toggleRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 74, 117, 109, 112, 69, 110, 97, 98, 108, 101, 100), _0e7849(74, 117, 109, 112, 32, 80, 111, 119, 101, 114))

-- 00101001001100011110101100010000000110001sliderRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 74, 117, 109, 112, 80, 111, 119, 101, 114), _0e7849(74, 117, 109, 112, 32, 86, 97, 108, 117, 101), 50, 800, 0)

-- 1010110110101111101111110001110101toggleRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 73, 110, 102, 105, 110, 105, 116, 101, 74, 117, 109, 112), _0e7849(73, 110, 102, 105, 110, 105, 116, 101, 32, 74, 117, 109, 112))

-- 1290cfd95e738019dfcccbe5db65f6ce068ctoggleRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 71, 111, 100, 77, 111, 100, 101), _0e7849(71, 111, 100, 32, 77, 111, 100, 101))


-- 11101100010010100011011001011001001111section(_38271cb3a, _0e7849(70, 76, 73, 71, 72, 84), _0e7849(226, 156, 136))

-- 01010001100101100111011011toggleRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121), _0e7849(70, 108, 121))

-- 0xc8 0x22 0xa8 0x7fsliderRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121, 83, 112, 101, 101, 100), _0e7849(70, 108, 121, 32, 83, 112, 101, 101, 100), 10, 500, 0)
sliderRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121, 83, 109, 111, 111, 116, 104), _0e7849(83, 109, 111, 111, 116, 104, 110, 101, 115, 115), 1, 40, 0)
sliderRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121, 66, 111, 111, 115, 116), _0e7849(66, 111, 111, 115, 116, 32, 77, 117, 108, 116), 1, 6, 1)

section(_38271cb3a, _0e7849(69, 88, 84, 82, 65, 83), _0e7849(226, 173, 144))
toggleRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 114, 105, 110, 116), _0e7849(83, 112, 114, 105, 110, 116))

-- 0xdc 0xb1 0x91 0xe5 0x28sliderRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 114, 105, 110, 116, 83, 112, 101, 101, 100), _0e7849(83, 112, 114, 105, 110, 116, 32, 83, 112, 101, 101, 100), 16, 300, 0)
toggleRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 66, 117, 110, 110, 121, 104, 111, 112), _0e7849(66, 117, 110, 110, 121, 104, 111, 112))
toggleRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 105, 110, 98, 111, 116), _0e7849(83, 112, 105, 110, 98, 111, 116))

-- 2961a6f7d5f2e379f00ce278a511f689974eabb8b6e943002ce0toggleRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 65, 110, 116, 105, 65, 70, 75), _0e7849(65, 110, 116, 105, 45, 65, 70, 75))

section(_38271cb3a, _0e7849(70, 82, 69, 69, 67, 65, 77), _0e7849(240, 159, 142, 165))
toggleRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 114, 101, 101, 99, 97, 109), _0e7849(70, 114, 101, 101, 99, 97, 109))

-- 9ab37de74d9e8a7730ed4f2cebbd64csliderRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 114, 101, 101, 99, 97, 109, 83, 112, 101, 101, 100), _0e7849(83, 112, 101, 101, 100), 10, 400, 0)

-- 0x90 0x28 0x86 0x00sliderRow(_38271cb3a, _0e7849(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 114, 101, 101, 99, 97, 109, 83, 101, 110, 115), _0e7849(83, 101, 110, 115, 105, 116, 105, 118, 105, 116, 121), 0.1, 5, 1)
end


do

-- 0x2e 0x4f 0x4b 0x20local _65a62 = _0e7849(119, 111, 114, 108, 100)

-- 0xce 0xfc 0x28 0xfa 0xd5 0xb0section(_65a62, _0e7849(76, 73, 71, 72, 84, 73, 78, 71), _0e7849(240, 159, 146, 161))

-- 1111100100001001100010001000010010111toggleRow(_65a62, _0e7849(87, 111, 114, 108, 100, 46, 70, 117, 108, 108, 98, 114, 105, 103, 104, 116), _0e7849(70, 117, 108, 108, 98, 114, 105, 103, 104, 116))
toggleRow(_65a62, _0e7849(87, 111, 114, 108, 100, 46, 82, 101, 109, 111, 118, 101, 66, 108, 117, 114), _0e7849(82, 101, 109, 111, 118, 101, 32, 66, 108, 117, 114))
section(_65a62, _0e7849(67, 65, 77, 69, 82, 65), _0e7849(240, 159, 147, 183))

-- 0xae 0x6f 0x98toggleRow(_65a62, _0e7849(87, 111, 114, 108, 100, 46, 70, 79, 86, 69, 110, 97, 98, 108, 101, 100), _0e7849(70, 79, 86, 32, 67, 104, 97, 110, 103, 101, 114))

-- 100110011100001101001100111110101111001sliderRow(_65a62, _0e7849(87, 111, 114, 108, 100, 46, 70, 79, 86), _0e7849(70, 79, 86, 32, 86, 97, 108, 117, 101), 40, 140, 0)

-- 011001110011000111001001010101101000000011010111section(_65a62, _0e7849(80, 72, 89, 83, 73, 67, 83), _0e7849(240, 159, 140, 128))

-- 77157150cf0c59529bc4b70f183761336a4684a2toggleRow(_65a62, _0e7849(87, 111, 114, 108, 100, 46, 71, 114, 97, 118, 105, 116, 121, 69, 110, 97, 98, 108, 101, 100), _0e7849(71, 114, 97, 118, 105, 116, 121, 32, 67, 111, 110, 116, 114, 111, 108))

-- 0xce 0x2f 0xc7sliderRow(_65a62, _0e7849(87, 111, 114, 108, 100, 46, 71, 114, 97, 118, 105, 116, 121), _0e7849(71, 114, 97, 118, 105, 116, 121), 0, 500, 0)

-- 0x66 0xb2 0xbb 0xb7 0xbe 0xe9end


-- 0x75 0xa1 0x95do
local _371e3f2 = _0e7849(112, 108, 97, 121, 101, 114, 115)

-- eabe59f6f03fd9aba59fab415e2e0aeaa727dc24e75284cf724e8fa392dsection(_371e3f2, _0e7849(80, 76, 65, 89, 69, 82, 32, 76, 73, 83, 84), _0e7849(240, 159, 145, 165))
local _c968f66 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,

-- 0xe5 0xf8 0x5d 0x1d 0xc7LayoutOrder = #pages[_371e3f2]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_371e3f2])

-- 011100110111101110101010101new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, _c968f66)

-- 8181ef23ec4c43b255c955168ec3a390644a9b30ad0f4flocal function refresh()
for _29c35, _baa93 in ipairs(_c968f66:GetChildren()) do

-- 352244d867f5077ae9678bbe1cb94559ae12f615d52073eed5f8if not _baa93:IsA(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116)) then _baa93:Destroy() end

-- 0xc5 0x77 0x29end
for _c0e137b, _213cf in ipairs(_9f5e77:GetPlayers()) do

-- 0x88 0x11 0xa6 0x32if _213cf ~= _edb254 then

-- 000101101100010000100110101111010101000001110110111010001local _0a920ec = getRankFor(_213cf.UserId)

-- 010101110001011101000001010100110101011011011101011local _a21a58e7 = _0a920ec and BADGE_STYLE[_0a920ec]

-- 0x72 0x16 0x49 0xbalocal _f5a09 = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15, ZIndex = 33}, _c968f66))
corner(_f5a09, 7)

-- 100111011111010110100001001100110100000100001010001if _a21a58e7 then stroke(_f5a09, _a21a58e7.color, 1.6, 0.1)
else stroke(_f5a09, Theme.strokeSoft, 1, 0.55) end

-- 0xe7 0x69 0x8flocal _bde8d53 = _213cf.Name .. _0e7849(32) .. roleLabel(_213cf)
if _a21a58e7 then _bde8d53 = _a21a58e7.emoji .. _0e7849(32) .. _bde8d53 end
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Text = _bde8d53, Font = Enum.Font.GothamBold,
TextSize = 11, TextColor3 = _a21a58e7 and _a21a58e7.color or espColour(_213cf),

-- 1111101100110100001101011100000010000100000BackgroundTransparency = 1,

-- 888f9b2a0ae155bd89eedba8b52fe5fPosition = UDim2.fromOffset(12, 0), Size = UDim2.new(0.55, 0, 1, 0),

-- 00110000111101010101100000110110111TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _f5a09)

-- 1111000001010101100101011011local _40724d9 = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Text = _0e7849(70, 76, 73, 78, 71), Font = Enum.Font.GothamBold,

-- 5d4f11ba20564614b58355ff388efb164ce26866e9f9TextSize = 9, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.danger,
Size = UDim2.fromOffset(50, 20), Position = UDim2.new(1, -104, 0.5, -10),

-- 566f3162bd1ad5a8dbf6cc230ccfbAutoButtonColor = false, ZIndex = 34}, _f5a09)

-- 0x11 0x19 0x7a 0xb2corner(_40724d9, 5)
tStroke(stroke(_40724d9, Theme.strokeSoft, 1))

-- 0x15 0xea 0x85_40724d9.MouseButton1Click:Connect(function() flingPlayer(_213cf) end)
local _6a816a = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Text = _0e7849(84, 80), Font = Enum.Font.GothamBold,
TextSize = 10, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.accent2,
Size = UDim2.fromOffset(42, 20), Position = UDim2.new(1, -50, 0.5, -10),
AutoButtonColor = false, ZIndex = 34}, _f5a09)

-- 0x68 0x3a 0x10 0x4c 0xae 0x3dcorner(_6a816a, 5)
tStroke(stroke(_6a816a, Theme.strokeSoft, 1))
_6a816a.MouseButton1Click:Connect(function()
local _d968c741 = _213cf.Character and _213cf.Character:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))

-- 000100001101011011000111110100010111010000010010001local _82205 = hrp()

-- 0x6a 0x25 0x04 0x45 0x5eif _d968c741 and _82205 then
_82205.AssemblyLinearVelocity = Vector3.zero

-- 223bf6e8b9e3e7d90a7452e0f_82205.CFrame = _d968c741.CFrame + Vector3.new(0, 3, 0)

-- 10010001001111101010111010_82205.AssemblyLinearVelocity = Vector3.zero

-- 0010011101011111110010101110end

-- 01000110010000101011110100111011000end)

-- 0x15 0x4a 0x36 0x99 0xa5end
end

-- 48c806328371ab6cfbd4724609e0846fd506dba64ebe99bbb3a52deend

-- 10111010111101010110011001001100010110011010010001011011001refresh()

-- 0001101011000010000001110111011011buttonRow(pg2, _0e7849(82, 101, 102, 114, 101, 115, 104, 32, 76, 105, 115, 116), _0e7849(82, 69, 70, 82, 69, 83, 72), refresh)

-- 0xec 0xd4 0x0f 0x39end


do

-- 0010100010111010101100100110001100000100000110110001000000local _f9db40 = _0e7849(116, 114, 111, 108, 108)
section(_f9db40, _0e7849(84, 65, 82, 71, 69, 84), _0e7849(240, 159, 142, 175))
local _bbb8e4 = tPanel2(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
LayoutOrder = #pages[_f9db40]:GetChildren(), ZIndex = 33}, pages[_f9db40]))

-- 111000010100011000111100011100100111101110101000010corner(_bbb8e4, 8)
tStroke(stroke(_bbb8e4, Theme.strokeSoft, 1, 0.55))

-- 299a721dfcc4f168f7de9d0a5deef7417e0f282elocal _a5725 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -90, 1, 0), Position = UDim2.fromOffset(14, 0),

-- 0x80 0xcc 0xda 0x93 0x3eBackgroundTransparency = 1, Text = _0e7849(84, 97, 114, 103, 101, 116, 58, 32, 78, 101, 97, 114, 101, 115, 116), Font = Enum.Font.GothamBold,

-- 5c4820f5d153dbde458ada03939edTextSize = 11, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _bbb8e4)
local _ff07bb = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(70, 20),

-- 1011001010110110010001101Position = UDim2.new(1, -78, 0.5, -10), BackgroundColor3 = Theme.panel, Text = _0e7849(67, 76, 69, 65, 82),

-- bad6007782ad35091a5bf49fe1c3aFont = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.danger,
AutoButtonColor = false, ZIndex = 34}, _bbb8e4)

-- 0x50 0xa2 0x10corner(_ff07bb, 5)
tStroke(stroke(_ff07bb, Theme.strokeSoft, 1))
_ff07bb.MouseButton1Click:Connect(function()

-- 0x79 0xe0 0x0b 0x94 0x56 0xfdTS.target = nil; _a5725.Text = _0e7849(84, 97, 114, 103, 101, 116, 58, 32, 78, 101, 97, 114, 101, 115, 116)
end)

-- 77af7a0bd757bebcaf4d4f86e8b5a27cdb10catoggleRow(_f9db40, _0e7849(84, 114, 111, 108, 108, 46, 84, 97, 112, 84, 97, 114, 103, 101, 116), _0e7849(84, 97, 112, 32, 116, 111, 32, 84, 97, 114, 103, 101, 116))

-- 001011111001001111010011110110100001011111110101101111001100sliderRow(_f9db40, _0e7849(84, 114, 111, 108, 108, 46, 84, 97, 112, 82, 97, 100, 105, 117, 115), _0e7849(67, 114, 111, 115, 115, 104, 97, 105, 114, 32, 82, 97, 100, 105, 117, 115), 5, 200, 0)


-- 330ca5409e725d8f5e19ab901ac9a5c160dd9699542f6c3e3absection(_f9db40, _0e7849(70, 79, 76, 76, 79, 87), _0e7849(240, 159, 145, 163))

-- 92518d474e9b8e80437339c3ec5c0e11ef97919ceba36691toggleRow(_f9db40, _0e7849(84, 114, 111, 108, 108, 46, 70, 111, 108, 108, 111, 119, 84, 97, 114, 103, 101, 116), _0e7849(70, 111, 108, 108, 111, 119, 32, 84, 97, 114, 103, 101, 116))
sliderRow(_f9db40, _0e7849(84, 114, 111, 108, 108, 46, 70, 111, 108, 108, 111, 119, 83, 112, 101, 101, 100), _0e7849(70, 111, 108, 108, 111, 119, 32, 83, 112, 101, 101, 100), 10, 300, 0)

local _fc43a5 = collapsible(_f9db40, _0e7849(72, 85, 77, 80, 32, 69, 78, 71, 73, 78, 69), true)

-- 94387f75a030d40c5fa3a0addtoggleRow(_fc43a5, _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112), _0e7849(72, 85, 77, 80, 32, 84, 97, 114, 103, 101, 116))

-- 110000111000011011111000000001011010000110001110010111001toggleRow(_fc43a5, _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 65, 117, 116, 111, 68, 101, 116, 101, 99, 116), _0e7849(65, 117, 116, 111, 45, 68, 101, 116, 101, 99, 116, 32, 40, 115, 99, 97, 108, 101, 115, 32, 115, 108, 105, 100, 101, 114, 41))

-- 01000100000010000010100000100001101111110011010111010100toggleRow(_fc43a5, _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 70, 97, 108, 108, 80, 114, 111, 116, 101, 99, 116), _0e7849(70, 97, 108, 108, 32, 47, 32, 82, 101, 115, 112, 97, 119, 110, 32, 80, 114, 111, 116, 101, 99, 116, 105, 111, 110))
toggleRow(_fc43a5, _0e7849(85, 73, 46, 65, 68), _0e7849(83, 104, 111, 119, 32, 65, 117, 116, 111, 45, 68, 101, 116, 101, 99, 116, 32, 72, 85, 68, 32, 40, 74, 41))
sliderRow(_fc43a5, _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 83, 112, 101, 101, 100), _0e7849(72, 117, 109, 112, 32, 83, 112, 101, 101, 100, 32, 40, 72, 122, 41), 1, 100, 0)

-- 0x45 0x7d 0xd8 0xd3sliderRow(_fc43a5, _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 65, 109, 112), _0e7849(72, 117, 109, 112, 32, 65, 109, 112, 108, 105, 116, 117, 100, 101), 0.3, 5, 2)

-- 11011110011111011011111101sliderRow(_fc43a5, _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 68, 105, 115, 116), _0e7849(83, 116, 97, 110, 100, 32, 66, 101, 104, 105, 110, 100, 32, 68, 105, 115, 116, 97, 110, 99, 101), 0.8, 5, 2)
toggleRow(_fc43a5, _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 89, 97, 119, 79, 110, 108, 121), _0e7849(89, 97, 119, 32, 79, 110, 108, 121))
toggleRow(_fc43a5, _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 75, 101, 101, 112, 79, 119, 110, 101, 114), _0e7849(82, 101, 45, 99, 108, 97, 105, 109, 32, 79, 119, 110, 101, 114))

-- 0xa3 0x03 0xbb 0xa5toggleRow(_fc43a5, _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 85, 115, 101, 80, 108, 97, 116, 102, 111, 114, 109), _0e7849(85, 115, 101, 32, 80, 108, 97, 116, 102, 111, 114, 109, 83, 116, 97, 110, 100))
toggleRow(_fc43a5, _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 79, 118, 101, 114, 114, 105, 100, 101, 70, 108, 121), _0e7849(79, 118, 101, 114, 114, 105, 100, 101, 32, 70, 108, 121))
toggleRow(_fc43a5, _0e7849(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 86, 101, 108, 77, 97, 116, 99, 104), _0e7849(86, 101, 108, 111, 99, 105, 116, 121, 32, 77, 97, 116, 99, 104))
end


do
local _e9da0d = _0e7849(117, 116, 105, 108)

-- 0101101010001100000100101101000110111section(_e9da0d, _0e7849(65, 85, 84, 79), _0e7849(226, 154, 153))

-- 0xd3 0xc5 0x1a 0xcdtoggleRow(_e9da0d, _0e7849(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 67, 108, 105, 99, 107, 101, 114), _0e7849(65, 117, 116, 111, 32, 67, 108, 105, 99, 107, 101, 114))

-- 0xbe 0xfb 0x86 0x53 0xad 0x78sliderRow(_e9da0d, _0e7849(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 67, 108, 105, 99, 107, 68, 101, 108, 97, 121), _0e7849(67, 108, 105, 99, 107, 32, 68, 101, 108, 97, 121), 0.01, 1, 2)

-- 0xd8 0x09 0xdf 0x5btoggleRow(_e9da0d, _0e7849(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 82, 101, 115, 112, 97, 119, 110), _0e7849(65, 117, 116, 111, 32, 82, 101, 115, 112, 97, 119, 110))

-- 837f38091e428094a1761138230e6e4e9toggleRow(_e9da0d, _0e7849(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 83, 104, 101, 114, 105, 102, 102), _0e7849(65, 117, 116, 111, 32, 83, 104, 101, 114, 105, 102, 102, 32, 80, 105, 99, 107, 117, 112))

-- 2ddca1d828f5efc5a01e8d404ae9e40fcc2006e15de1d0566e8bsliderRow(_e9da0d, _0e7849(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 83, 104, 101, 114, 105, 102, 102, 82, 97, 110, 103, 101), _0e7849(80, 105, 99, 107, 117, 112, 32, 82, 97, 110, 103, 101), 10, 500, 0)

-- f9c0ee0126169d525627d485b5a6d2ecdsection(_e9da0d, _0e7849(67, 72, 65, 84), _0e7849(240, 159, 146, 172))

-- 0x57 0x3f 0x05 0xbb 0x02 0x9atoggleRow(_e9da0d, _0e7849(85, 116, 105, 108, 105, 116, 121, 46, 67, 104, 97, 116, 83, 112, 97, 109), _0e7849(67, 104, 97, 116, 32, 83, 112, 97, 109))

-- 0x26 0x3d 0x46 0x45textRow(_e9da0d, _0e7849(77, 101, 115, 115, 97, 103, 101), _0e7849(109, 101, 115, 115, 97, 103, 101, 226, 128, 166), Cfg.Utility.ChatSpamMsg, function(_868f1ad73) Cfg.Utility.ChatSpamMsg = _868f1ad73 end)

-- 0xe1 0x61 0x90 0xd9 0x16end


-- 0x27 0x08 0x29 0xa5 0xe3
do

-- 0xca 0xf6 0x37 0x44 0x42 0x7flocal _2319a = _0e7849(115, 97, 118, 101)

-- 0x71 0xaf 0xe7section(_2319a, _0e7849(76, 79, 65, 68, 79, 85, 84, 83), _0e7849(240, 159, 146, 190))

-- 00100010110111110101100101110100new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 32), BackgroundTransparency = 1,

-- 0x62 0xbf 0xc8 0x21 0x19Text = _0e7849(73, 79, 58, 32) .. (IO.has and (_0e7849(226, 156, 147, 32) .. IO.reason) or (_0e7849(226, 156, 151, 32) .. IO.reason)) .. _0e7849(10, 80, 108, 97, 99, 101, 58, 32) .. tostring(game.PlaceId),
Font = Enum.Font.GothamBold, TextSize = 9,

-- 5099c377c96964fd0c2ab02cc2e706695e2ea8c5588093f9216eTextColor3 = IO.has and Theme.success or Theme.danger,
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = #pages[_2319a]:GetChildren(), ZIndex = 33}, pages[_2319a])
local _51bdebe9 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
Text = autoloadName and (_0e7849(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32) .. autoloadName) or _0e7849(110, 111, 32, 97, 117, 116, 111, 108, 111, 97, 100),

-- 011001011100010011100111011101100100110011011Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
LayoutOrder = #pages[_2319a]:GetChildren(), ZIndex = 33}, pages[_2319a])


-- 0xf7 0x0a 0x5c 0xbd 0xd4 0x73local _54583 = tPanel2(new(_0e7849(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, 0, 0, 28),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Text = _0e7849(),
Active = true, Selectable = true,
PlaceholderText = _0e7849(108, 111, 97, 100, 111, 117, 116, 32, 110, 97, 109, 101, 32, 40, 101, 103, 46, 32, 97, 105, 109, 98, 111, 116, 44, 32, 109, 111, 118, 101, 109, 101, 110, 116, 44, 32, 116, 114, 111, 108, 108, 41),

-- 111010111000111110111101111000101010010111000PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,

-- 0xb1 0xc5 0xff 0x36 0x2aTextColor3 = Theme.text, ClearTextOnFocus = false,

-- ded106482f098e85a3ccdbdc7547c7dc3da7cdb2a77LayoutOrder = #pages[_2319a]:GetChildren(), ZIndex = 50}, pages[_2319a]))

-- 1000110110001001111101000111110001corner(_54583, 7)
tStroke(stroke(_54583, Theme.strokeSoft, 1))

local _358eb = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,

-- 0xc1 0x5f 0x8b 0x90 0x9d 0x6dLayoutOrder = #pages[_2319a]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_2319a])

-- 11100001100010010101100101001100new(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, _358eb)

local function refreshList()

-- 33234d10b0c89c651a0030f46fe4966a3531966e32ec2c5bfor _2af30, _a182c0 in ipairs(_358eb:GetChildren()) do

-- 0xa6 0x06 0x4a 0xc5 0x65 0x0eif not _a182c0:IsA(_0e7849(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116)) then _a182c0:Destroy() end
end

-- 1011100001010111001010010110100111110010010010001110001local _7e09b48e = listLoadouts()
if #_7e09b48e == 0 then

-- 6035e6a9349dc03d11fa51ce166local _d51e1 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
Text = _0e7849(110, 111, 32, 115, 97, 118, 101, 100, 32, 108, 111, 97, 100, 111, 117, 116, 115, 32, 121, 101, 116, 32, 226, 128, 148, 32, 116, 121, 112, 101, 32, 97, 32, 110, 97, 109, 101, 32, 97, 98, 111, 118, 101, 32, 97, 110, 100, 32, 104, 105, 116, 32, 83, 65, 86, 69),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,

-- b48d5efdb7d796ae762eac3071aebcf849a8531d09cd60c87TextXAlignment = Enum.TextXAlignment.Left,

-- 0x2a 0xa5 0xbe 0xffLayoutOrder = 1, ZIndex = 34}, _358eb)
_d51e1.Visible = true

-- 0011111111010101110011010011return
end

-- 00e469dc38b47a1cc12a556169for _8ebc69ab1, _753a652e2 in ipairs(_7e09b48e) do
local _2ac7f = (_753a652e2 == autoloadName)

-- 0xd4 0xae 0xf9local _ba8a2b = tPanel(new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 28),

-- ef425c1a2ae8ed0e84be227a36b07652086dc9385a2cb8e0dbc4c3BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,

-- 0xa6 0x57 0x03 0xd1LayoutOrder = _8ebc69ab1, ZIndex = 33}, _358eb))
corner(_ba8a2b, 7)

-- 11101101000110001110100001tStroke(stroke(_ba8a2b, _2ac7f and Theme.accent3 or Theme.strokeSoft, _2ac7f and 1.6 or 1, 0.55))

-- 11100011001011011000000111101hoverStripe(_ba8a2b, Theme.neon)
new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(12, 0),
BackgroundTransparency = 1,

-- f81beef0d578fb2a5ac74872623eText = (_2ac7f and _0e7849(226, 152, 133, 32) or _0e7849()) .. _753a652e2,

-- 0x74 0xb1 0xac 0xdeFont = Enum.Font.GothamBold, TextSize = 10,

-- bdd818933893089c2d301ad40b0c11f1ade625b453261b5637ad9TextColor3 = _2ac7f and Theme.accent2 or Theme.text,

-- 00110110000011010110110010001001110TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _ba8a2b)
local _4f54b09ac = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(50, 18),

-- 0x0c 0x48 0x8fPosition = UDim2.new(1, -170, 0.5, -9), BackgroundColor3 = Theme.panel2,
Text = _0e7849(76, 79, 65, 68), Font = Enum.Font.GothamBold, TextSize = 9,

-- efdb9f51bd34c6e7062ce18913fd609e2a391b6c4eb0575974ac40f85TextColor3 = Theme.success, AutoButtonColor = false, ZIndex = 34}, _ba8a2b)

-- e203d4338a99eaab6aecefab87e97corner(_4f54b09ac, 4); stroke(_4f54b09ac, Theme.strokeSoft, 1)

-- c90ea84edfb0d57830a410f3677_4f54b09ac.MouseButton1Click:Connect(function()

-- e1408f8de49397580e96584bb4da58868593686758e9330ac825aa0c9if loadLoadout(_753a652e2) then

-- 3aeddeafb4981febbd25fca86aab17ab7afor _f99f49ebc, _82c74b4e in pairs(widgets) do
local _3e49b8 = getPath(Cfg, _f99f49ebc)

-- 001000010010000001000110111100if _3e49b8 ~= nil then pcall(_82c74b4e.set, _3e49b8, false) end

-- 11100101111011000010011011110011111end

-- 0xca 0xa5 0x56 0x9eapplyTheme(); applyOpacity(Cfg.UI.MenuOpacity or 0)

-- fcb7732bb7b7ca1de1259671d6ab93866351d173cdb976e05c6de4918bnotify(_0e7849(76, 111, 97, 100, 101, 100), _753a652e2, Theme.success, 2.5)

-- 0x85 0x90 0x34refreshList()

-- 0xd2 0x6a 0x18else

-- 11011001010111001001100110001110111110011000000000100notify(_0e7849(76, 111, 97, 100, 32, 102, 97, 105, 108, 101, 100), _753a652e2, Theme.danger, 2.5)

-- 0x4d 0x59 0x75 0x44 0x8d 0x7eend
end)
local _985d85 = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(50, 18),
Position = UDim2.new(1, -116, 0.5, -9), BackgroundColor3 = Theme.panel2,

-- 0x22 0xeb 0xbeText = _0e7849(65, 85, 84, 79), Font = Enum.Font.GothamBold, TextSize = 9,

-- 00111100110100001001011010111011111010111001011TextColor3 = Theme.gold, AutoButtonColor = false, ZIndex = 34}, _ba8a2b)
corner(_985d85, 4); stroke(_985d85, Theme.strokeSoft, 1)

-- 11101110011100110100001011_985d85.MouseButton1Click:Connect(function()
autoloadName = _753a652e2
_G.__ReaperAutoload = _753a652e2
if IO.has then

-- 7d38fc7fb61e56e838acd94d8f39b2058fdc7ddf5f74e5d12pcall(IO.write, autoloadFile(), _753a652e2)

-- 90b196237549e1579b52628458f0dd285183409704d79dd60b594pcall(IO.write, globalAutoloadFile(), game.PlaceId .. _0e7849(58, 58) .. _753a652e2)

-- 011011101110101110111111011101end

-- 52c5acf65671ca63f12668541ae17_51bdebe9.Text = _0e7849(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32) .. _753a652e2
notify(_0e7849(65, 117, 116, 111, 108, 111, 97, 100, 32, 115, 101, 116), _753a652e2, Theme.success, 2.5)
refreshList()

-- 0xf9 0x96 0x61 0x29 0xe3 0xa9end)

-- 0xc7 0x0a 0xca 0x49local _1177b7 = new(_0e7849(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(50, 18),
Position = UDim2.new(1, -62, 0.5, -9), BackgroundColor3 = Theme.panel2,

-- 1110011011010001101010101010010010Text = _0e7849(68, 69, 76), Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.danger, AutoButtonColor = false, ZIndex = 34}, _ba8a2b)

-- 43b6efa14ba3796d2c7e6691e7a95308399e348241b1cf1a2acorner(_1177b7, 4); stroke(_1177b7, Theme.strokeSoft, 1)

-- 010010001101110111101000000110111100001001101111010101_1177b7.MouseButton1Click:Connect(function()

-- a2249a4d3b6740bdf2ac09b927deleteLoadout(_753a652e2)

-- 0xc9 0x97 0x47 0xd5 0xe2 0x38if _51bdebe9 then _51bdebe9.Text = autoloadName and (_0e7849(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32) .. autoloadName) or _0e7849(110, 111, 32, 97, 117, 116, 111, 108, 111, 97, 100) end

-- 0000011000101110010110001010111001010010111110notify(_0e7849(68, 101, 108, 101, 116, 101, 100), _753a652e2, Theme.muted, 2)
refreshList()

-- 0x78 0xe6 0x9bend)
end

-- 76dddce871bfeaf9ae5dfb46aed41ca3138d7c2f612e86ba1a990e43end

-- 0b8061df1067fadf72dda93862d7751de09125ac44bb78arefreshList()

local function resolveName()

-- 011000110110100100110010011110010001011011100return (nameBox.Text ~= _0e7849() and nameBox.Text) or autoloadName or _0e7849(100, 101, 102, 97, 117, 108, 116)
end


-- 0x37 0x14 0x42 0x0b 0xad 0x27buttonRow(pg2, _0e7849(83, 97, 118, 101, 32, 99, 117, 114, 114, 101, 110, 116, 32, 115, 101, 116, 116, 105, 110, 103, 115), _0e7849(83, 65, 86, 69), function()

-- 00001110001100001111111001110000111010101000000100101001local _da53acdb5 = resolveName()

-- 10110100110010110001101111001saveLoadout(_da53acdb5, false)
notify(_0e7849(83, 97, 118, 101, 100), _da53acdb5, Theme.success)

-- 06808c12aab1b4cb455d24f0220dd9a6c23refreshList()
end)
buttonRow(pg2, _0e7849(83, 97, 118, 101, 32, 43, 32, 115, 101, 116, 32, 97, 117, 116, 111, 108, 111, 97, 100), _0e7849(83, 65, 86, 69, 32, 43, 32, 65, 85, 84, 79), function()
local _864ea = resolveName()

-- 662cf942a3c42bd97ce97b7a8c6saveLoadout(_864ea, true)

-- 03f7b5d7c1149a03ae68fa8aac2ffd49aa81dbc12abd93b00f26588a82autoLbl.Text = _0e7849(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32) .. _864ea
notify(_0e7849(65, 117, 116, 111, 108, 111, 97, 100, 32, 115, 101, 116), _864ea, Theme.success)
refreshList()

-- 010001010100110001001110110101110000000110end)
buttonRow(pg2, _0e7849(82, 101, 108, 111, 97, 100, 32, 108, 105, 115, 116), _0e7849(82, 69, 70, 82, 69, 83, 72), function() refreshList() end)

-- 0c450f2e4a1943440ca2b799c06end


-- 0x54 0xd8 0xfb 0x27
do

-- 8019eb02038748d8f1f8d0fe7ebe9b750e884local _40f21d7 = _0e7849(116, 104, 101, 109, 101)

-- 0xf2 0x7f 0x45 0xee 0x55 0x97section(_40f21d7, _0e7849(80, 65, 76, 69, 84, 84, 69), _0e7849(240, 159, 142, 168))

-- 0xed 0x79 0x10 0xd5 0x68 0xc3buttonRow(_40f21d7, _0e7849(78, 101, 111, 110, 32, 80, 117, 114, 112, 108, 101), _0e7849(65, 80, 80, 76, 89), function()
Theme.setPalette(_0e7849(87, 105, 110, 116, 101, 114)); Cfg.UI.Sakura = false

-- 0x0b 0x87 0xc3 0x97 0x0capplyTheme()
end)

-- 6197dac0b0ed7029b45db6eff6fe073buttonRow(_40f21d7, _0e7849(83, 97, 107, 117, 114, 97), _0e7849(65, 80, 80, 76, 89), function()
Theme.setPalette(_0e7849(83, 97, 107, 117, 114, 97)); Cfg.UI.Sakura = true

-- 1010110000010001000101001101111000101110applyTheme()

-- da4bb69d211923a6751a387c6dccc4bend)

-- 0xf7 0x29 0x2f 0x42section(_40f21d7, _0e7849(69, 70, 70, 69, 67, 84, 83), _0e7849(226, 156, 168))
toggleRow(_40f21d7, _0e7849(85, 73, 46, 74, 117, 105, 99, 121), _0e7849(74, 117, 105, 99, 121, 32, 69, 102, 102, 101, 99, 116, 115))

-- 001110011110010100010100010010010111011010101111000110110toggleRow(_40f21d7, _0e7849(85, 73, 46, 78, 111, 116, 105, 102, 115), _0e7849(78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 115))
toggleRow(_40f21d7, _0e7849(85, 73, 46, 65, 109, 98, 105, 101, 110, 116), _0e7849(65, 109, 98, 105, 101, 110, 116, 32, 80, 97, 114, 116, 105, 99, 108, 101, 115))

-- e73fe6b19eaf178e6fd92922aefcd3da14da48dbb656e7b9e334toggleRow(_40f21d7, _0e7849(85, 73, 46, 65, 110, 105, 109, 97, 116, 101, 100, 79, 112, 101, 110), _0e7849(65, 110, 105, 109, 97, 116, 101, 100, 32, 77, 101, 110, 117))

-- 00010000001111000010111101001011000111011011100111toggleRow(_40f21d7, _0e7849(85, 73, 46, 77, 101, 110, 117, 66, 108, 117, 114), _0e7849(66, 108, 117, 114, 32, 66, 97, 99, 107, 103, 114, 111, 117, 110, 100))

-- 110001010011110100101011000110101100010000010111110011011001section(_40f21d7, _0e7849(77, 69, 78, 85, 32, 79, 80, 65, 67, 73, 84, 89), _0e7849(240, 159, 140, 171))

-- e35aa22ac910701167fea8cf4d8837c10575b2dcd8c09b2a3c0sliderRow(_40f21d7, _0e7849(85, 73, 46, 77, 101, 110, 117, 79, 112, 97, 99, 105, 116, 121), _0e7849(84, 114, 97, 110, 115, 112, 97, 114, 101, 110, 99, 121), 0, 0.9, 2, function(_18b4557b) applyOpacity(_18b4557b) end)
end


-- 479a7400ad8b059167a91929

-- d8509102c20e41b43cfedac8a18dfor _b30bba7f, _4b1f61ff in pairs(pages) do _4b1f61ff.Visible = false end
pages.home.Visible = true
tabs.home.BackgroundColor3 = Theme.neon
tabs.home.TextColor3 = Color3.new(1, 1, 1)

-- 0xd0 0xef 0xd8applyTheme()

-- 101100000010110111111011001100001001011111101101100010applyOpacity(Cfg.UI.MenuOpacity or 0)
statusLbl.Text = _0e7849(82, 69, 65, 80, 69, 82, 32, 32, 194, 183, 32, 32, 112, 108, 97, 99, 101, 32) .. tostring(game.PlaceId) ..

-- 9df29c529f426c6833b73207f6a0d1a61bf85a1e7ea(DISCORD_USERNAME and (_0e7849(32, 32, 194, 183, 32, 32, 64) .. DISCORD_USERNAME) or _0e7849())
pcall(refreshHUD)

-- 0x13 0xab 0x15 0x1b 0x4fpcall(refreshAD)
rebuildChips()


-- 0x4e 0xb9 0xf6

-- 680b6dc8d9433ea5c8eadaf28ccbaa82c051014

-- 9e5f50902680a58769be030145b1970de8de829baf5196


-- 1100001111100011100001000011001111010111001000101011


-- 00100101001011001100011011
task.spawn(function()

-- 1011111100110011000011010001011local _ce8609f0 = false

-- 0x7f 0xf5 0xc5 0x92 0x5elocal _77bb5f = 0
local function forceRePrompt(reason, kick)

-- 101000100011100001110001010000001101001101101110001010if _ce8609f0 then return end

-- 0x25 0xc9 0x8e 0x4c 0xa9_ce8609f0 = true

-- 9ce94f181d01d795ec8fc418d04e4fbfddb2f243e0f787c2fca0ee60clearVerifiedData()
notify(_0e7849(86, 101, 114, 105, 102, 105, 99, 97, 116, 105, 111, 110, 32, 108, 111, 115, 116), reason or _0e7849(82, 101, 45, 118, 101, 114, 105, 102, 121, 32, 116, 111, 32, 99, 111, 110, 116, 105, 110, 117, 101, 46),

-- 0xa5 0x0d 0xaa 0xad 0x4a 0xe6Theme.danger, 8)

-- 0xab 0x93 0xffif kick then

-- 1087053329503c4731b52cbff6f6task.delay(2, function()
pcall(function()

-- 5d1d85ad35c862df46bd54aa65a0248b8602d0ad383a20925e59f6_edb254:Kick(_0e7849(89, 111, 117, 32, 100, 101, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100, 32, 116, 104, 101, 32, 82, 69, 65, 80, 69, 82, 32, 97, 112, 112, 46, 32, 82, 101, 106, 111, 105, 110, 32, 116, 104, 101, 32, 103, 97, 109, 101, 32, 116, 111, 32, 114, 101, 45, 118, 101, 114, 105, 102, 121, 46))
end)
end)
end

-- 0x7a 0x51 0x29 0x2a 0x0e 0x2ftask.spawn(function()

-- 41bee40192a904ea71672ecffe46f5782ad8134dbc7a2df155860a407clocal _b379984dd = showKeyPrompt()

-- 0x01 0x6b 0x28 0x17if _b379984dd then
MY_USER = _b379984dd

-- 8b9d1f342c34794901169c3c1d680d31c0bf4b81aff57MY_USER.country = _0e7849(85, 110, 107, 110, 111, 119, 110); MY_USER.countryCode = _0e7849()
MY_USER.connectedAt = tick(); MY_USER.userId = _edb254.UserId
SESSION_KEY = _b379984dd.key

-- 0x25 0xcd 0x2a 0x5dDISCORD_USERNAME = _b379984dd.discordName

-- 110001010010100011011101110011011010DISCORD_ID = _b379984dd.discordId
saveVerifiedData({

-- 1111011011100011011100001001110011101101110101001key = _b379984dd.key, robloxId = tostring(_edb254.UserId),

-- 01101011000110111110111111100010000111100100011000011101discordUsername = _b379984dd.discordName,
discordId = _b379984dd.discordId,
savedAt = os.time(),

-- 1f09db600bf03cc0b08a6987e95a578b9})

-- 3d18c944dd797d6b231a4a1afb31293abe34e6390140cshowVerifiedScreen(_b379984dd)

-- 597578a8abea886f72dd383d7if statusLbl then

-- 100101100100010010111100110101010000010100000000001111statusLbl.Text = _0e7849(82, 69, 65, 80, 69, 82, 32, 32, 194, 183, 32, 32, 112, 108, 97, 99, 101, 32) .. tostring(game.PlaceId) ..

-- 22cadc291881bad6f718643686f9(DISCORD_USERNAME and (_0e7849(32, 32, 194, 183, 32, 32, 64) .. DISCORD_USERNAME) or _0e7849())

-- 079853022c344d84b0f0f71de9601b9310e374072a131a05942a6end

-- a10ea86ed44b5c73c471b5505770cbd08a4deee4f77c6b14d793b5end

-- 0xa8 0x2d 0xc7 0xe3 0x46_ce8609f0 = false

-- 2d3e754982b98c1f9882710b6bf98cbbdf9c50ae61bb46end)

-- 01101111100011000001110111100end

-- 1100111010001011001110111100while gui and gui.Parent do
task.wait(60)

-- 89803d4035832bc80ef90e717c2888c845cd3b91dd6d07019e60fe1b16counter = counter + 1
if not SESSION_KEY or rePrompting then continue end


-- 0x7a 0xa4 0xbc 0xe0if counter % 5 == 0 then
local _88aa5987d = postJSON(_0e7849(47, 99, 104, 101, 99, 107, 45, 116, 111, 107, 101, 110),

-- 0x2c 0x22 0xe8{robloxId = tostring(_edb254.UserId), key = SESSION_KEY})
if _88aa5987d and _88aa5987d.authorized == false then

-- 100011010101011100111110101001001001011110001100111100010001forceRePrompt(_0e7849(89, 111, 117, 32, 114, 101, 109, 111, 118, 101, 100, 32, 116, 104, 101, 32, 97, 112, 112, 32, 226, 128, 148, 32, 114, 101, 45, 118, 101, 114, 105, 102, 121, 32, 116, 111, 32, 99, 111, 110, 116, 105, 110, 117, 101, 46), true)
continue
end
end

local _0824ad2 = postJSON(_0e7849(47, 99, 104, 101, 99, 107), {robloxId = tostring(_edb254.UserId), key = SESSION_KEY})
if _0824ad2 and not _0824ad2.valid then
forceRePrompt(_0e7849(89, 111, 117, 32, 108, 101, 102, 116, 32, 116, 104, 101, 32, 68, 105, 115, 99, 111, 114, 100, 32, 226, 128, 148, 32, 114, 101, 45, 118, 101, 114, 105, 102, 121, 32, 116, 111, 32, 99, 111, 110, 116, 105, 110, 117, 101, 46))
end
end

-- f6c834cc93120a2cd27cf1e8c8ba7237e8dend)


-- 0xf5 0x3b 0xa2 0xf2 0x01task.spawn(function()

-- 0x1c 0x1e 0xfb 0x69local _98d6d1 = 0
while gui and gui.Parent do
task.wait(6)

-- 41331fa468c036f19a32ff55fef8f8ac90568c9local _ab3326, _24febb4 = httpGet(KEY_API .. _0e7849(47, 97, 110, 110, 111, 117, 110, 99, 101, 47, 102, 101, 116, 99, 104, 63, 115, 105, 110, 99, 101, 61) .. _98d6d1 .. _0e7849(38, 108, 105, 109, 105, 116, 61, 50, 48))
if _ab3326 and _24febb4 then
local _9bff4861, _e0ac4 = pcall(function() return _39b34:JSONDecode(_24febb4) end)

-- 0x90 0x93 0x84 0x36 0xe0if _9bff4861 and type(data) == _0e7849(116, 97, 98, 108, 101) and data.announcements then
for _c88c6e0c4, _10682b0 in ipairs(_e0ac4.announcements) do
if _10682b0.id and _10682b0.id > _98d6d1 then _98d6d1 = _10682b0.id end

-- aea660c905b08cf303bcf58c2f09304609860fe8fd4b7147eif tostring(_10682b0.userId) ~= tostring(_edb254.UserId) then

-- 00010101000101100011011111101101000000100101001100111001010showAnnouncement(_10682b0)
end
end
end
end

-- 111111001110101111001101110111101101end

-- 0100100000011110111001011111000010100end)


task.spawn(function()
while crossGui.Parent do
_30a422080.RenderStepped:Wait()

-- 1011110010110100001111001100111010000111001111local _222ba11 = Cfg.Troll.TapTarget and Cfg.UI.Crosshair
if Cfg.UI.HideCrossOnMenu and menu and menu.Visible then _222ba11 = false end

-- 0xa6 0x4a 0x36 0xb6if not _222ba11 then

-- 01100010100011011111111101000101100000101001010110crosshair.Visible, reticle.Visible, trackLine.Visible = false, false, false

-- 0x8b 0xd6 0x48 0xf3else

-- 3e93050b2bdff57581cef6ce2b4b0ddc8fbc182103ac248b9c4d3d07crosshair.Visible = true
local _e6c80 = _7ace8a:GetMouseLocation()

-- 0597cb18cd4080f3aa9217195ce125crosshair.Position = UDim2.fromOffset(_e6c80.X, _e6c80.Y)
crosshair.Size = UDim2.fromOffset(Cfg.UI.CrosshairSize, Cfg.UI.CrosshairSize)

-- 11111111111110000000001011111011011111110110011for _5ac4356, _cd74a44dc in ipairs(crosshair:GetChildren()) do

-- eca595731a11d2d59429b8e40877475705183ecif _cd74a44dc:IsA(_0e7849(70, 114, 97, 109, 101)) and _cd74a44dc ~= crosshair then _cd74a44dc:Destroy() end
end
local _3f85062, _c44a3db8c = Cfg.UI.CrosshairSize, Cfg.UI.CrosshairThick
local _ab14fb6c0 = math.max(6, math.floor(_3f85062 * 0.32))
local _5f3a513 = math.max(2, math.floor(_3f85062 * 0.15))
for _ae1ab, _3d0c7f9 in ipairs({

-- 1ff4d809f0fe872093a2a52cdc1c8e1241c5ea1d0b542d94223251aaabd{Vector2.new(0, -(_5f3a513 + _ab14fb6c0/2)), Vector2.new(_c44a3db8c, _ab14fb6c0)},

-- 0xad 0x6e 0x26 0xee 0xa9 0x78{Vector2.new(0, (_5f3a513 + _ab14fb6c0/2)), Vector2.new(_c44a3db8c, _ab14fb6c0)},

-- 0xbd 0x20 0x50 0x68 0xc5{Vector2.new(-(_5f3a513 + _ab14fb6c0/2), 0), Vector2.new(_ab14fb6c0, _c44a3db8c)},
{Vector2.new((_5f3a513 + _ab14fb6c0/2), 0), Vector2.new(_ab14fb6c0, _c44a3db8c)},

-- 01010001111011110101011110100111011000011111101}) do

-- efc933d0a391a974bbe122c62aa1bb0fd7dlocal _ad066bb8 = new(_0e7849(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_3d0c7f9[2].X, _3d0c7f9[2].Y),
Position = UDim2.new(0.5, _3d0c7f9[1].X, 0.5, _3d0c7f9[1].Y),

-- 00101101110100100110110011001111100011100010010AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = Theme.neon,
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 5}, crosshair)

-- 00010100101011000110111000010000011111101111corner(_ad066bb8, 1)
end

-- 0011110001011010110011011010110101011011local _8cfec3a = _c0515:ViewportPointToRay(_e6c80.X, _e6c80.Y)
local _9fd33084 = RaycastParams.new()

-- 8c54051cfc2b8d8c83f8d4cd17f63a4630dbba377_9fd33084.FilterType = Enum.RaycastFilterType.Exclude

-- 0xed 0x7b 0x9f_9fd33084.FilterDescendantsInstances = {_edb254.Character}

-- 88eea14ebcbf0d0ece92a4b729c37c229209b719c315a4656c2local _34e7f9 = workspace:Raycast(_8cfec3a.Origin, _8cfec3a.Direction * 3000, _9fd33084)

-- 00101000010110100001010111local _f6f101d7 = nil

-- 0x27 0x22 0xcd 0x79 0x40if _34e7f9 and _34e7f9.Instance then
local _30b1d9956 = _34e7f9.Instance:FindFirstAncestorOfClass(_0e7849(77, 111, 100, 101, 108))
if _30b1d9956 then

-- 0010101101101001001110011101010010000local _494151d = _9f5e77:GetPlayerFromCharacter(_30b1d9956)
if _494151d and _494151d ~= _edb254 then _f6f101d7 = _494151d end

-- 013b1322adc23706b8b09480aa2fend

-- 0xbe 0x38 0xae 0xa4end
if not _f6f101d7 then

-- 0x2b 0xaf 0x55local _eba8b4, _0f5dd01 = nil, Cfg.Troll.TapRadius

-- 89d04136bd585ab680acbf45884943539d865796360for _50b8604, _e9121 in ipairs(_9f5e77:GetPlayers()) do

-- 010000000000111111111011000110111011111110100111100if _e9121 ~= _edb254 and _e9121.Character then

-- 0x8a 0xf1 0x3alocal _aabb6b28 = _e9121.Character:FindFirstChild(_0e7849(72, 101, 97, 100))
if _aabb6b28 then

-- 0xf5 0x9d 0xde 0x40local _e2cd7, _03cc00f = _c0515:WorldToViewportPoint(_aabb6b28.Position)
if _03cc00f and _e2cd7.Z > 0 then
local _ad7ddf = (Vector2.new(_e2cd7.X, _e2cd7.Y) - _e6c80).Magnitude

-- 01010000100100100010010110101110001000001if _ad7ddf <= _0f5dd01 then _eba8b4, _0f5dd01 = _e9121, _ad7ddf end
end

-- 165738f532e69b246d0e51454751e66fe478f8eb5ec3d057ed2a14end

-- 110001111011111001110110011011110110010001end

-- 1000000001110000001010101100000001end
_f6f101d7 = _eba8b4
end
TS.hovered = _f6f101d7
if _f6f101d7 and _f6f101d7.Character then
local _f262a50 = _f6f101d7.Character:FindFirstChild(_0e7849(72, 101, 97, 100))

-- 0x6a 0xaf 0xf8 0x90 0xealocal _569b600b9 = _f6f101d7.Character:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))
if _f262a50 and _569b600b9 then
local _fcded851, _5ce60 = _c0515:WorldToViewportPoint(_f262a50.Position)
if _5ce60 and _fcded851.Z > 0 then
local _e46ddc1e5 = reticleColour(_f6f101d7)
reticle.Visible = true
local _b80263a = Cfg.UI.CrosshairPulse and (0.96 + math.sin(tick() * 7) * 0.06) or 1

-- 0x75 0xc8 0xf3 0x48 0x1f 0x0clocal _bac2a3274 = RSIZE * _b80263a
reticle.Position = UDim2.fromOffset(_fcded851.X, _fcded851.Y)

-- 4ecab335ab35a6365b8b30273f58860b71e83499reticle.Size = UDim2.fromOffset(_bac2a3274, _bac2a3274)

-- 0x33 0xad 0xa2local _1a599faae = _bac2a3274 / RSIZE

-- 0ba55be6c0404694c7f7a27aa0482276d32a95c0ring1.Size = UDim2.fromOffset(_bac2a3274, _bac2a3274)
ring2.Size = UDim2.fromOffset(_bac2a3274 - 14 * _1a599faae, _bac2a3274 - 14 * _1a599faae)
ring2.Position = UDim2.fromOffset(7 * _1a599faae, 7 * _1a599faae)

-- 1011011010000000101001010111000100110000000001110ring1S.Color, ring2S.Color = _e46ddc1e5, _e46ddc1e5

-- 101001001010001111111001001000001011111000100111retName.TextColor3 = _e46ddc1e5
retName.Text = (_f6f101d7.DisplayName or _f6f101d7.Name) .. _0e7849(32) .. roleLabel(_f6f101d7)
local _411609 = (_c0515.CFrame.Position - _f262a50.Position).Magnitude

-- 10010000001001000110101000100010100retDist.Text = string.format(_0e7849(226, 140, 150, 32, 37, 100, 32, 115, 116, 117, 100, 115), math.floor(_411609))

-- 1001010111011010111100110110000000101100011010101111if Cfg.UI.ReticleHP and _569b600b9 then
hpBar.Visible = true

-- 101011111110110101000011011110101100101000001000010011local _1fda00a41 = math.clamp(_569b600b9.Health / _569b600b9.MaxHealth, 0, 1)

-- 21c028bfdece80a3d78745480b23b5ee72eca2eb110632e2hpFill.Size = UDim2.fromScale(1, _1fda00a41)
hpFill.Position = UDim2.fromScale(0, 1 - _1fda00a41)
hpFill.BackgroundColor3 = _1fda00a41 > 0.5 and Theme.success or (_1fda00a41 > 0.25 and Theme.gold or Theme.danger)

-- 0xaa 0x49 0xc4 0x4e 0x7c 0x12else hpBar.Visible = false end
if Cfg.UI.ReticleLine then

-- 0x61 0xb6 0xa9local _9b0f0, _cf5b9 = _fcded851.X - _e6c80.X, _fcded851.Y - _e6c80.Y

-- 0x95 0x9f 0xf8 0x55local _1908c7c = math.sqrt(_9b0f0 * _9b0f0 + _cf5b9 * _cf5b9)

-- 9d1f7eed784e0673c72f7c562if _1908c7c > 25 then
trackLine.Visible = true

-- d4b036f4e40db91b4f6f7656c7236ed5f858trackLine.Position = UDim2.fromOffset(_e6c80.X, _e6c80.Y)

-- 589fce41d0276542b0a7f8e738a38ebctrackLine.Size = UDim2.fromOffset(_1908c7c, 1)

-- 111001100010011100101000110010000trackLine.Rotation = math.deg(math.atan2(_cf5b9, _9b0f0))
trackLine.BackgroundColor3 = _e46ddc1e5

-- c84105cfb597b75e03137c97edafd54d6ddfc0a3c0461b7a8bd96a2c9c2else trackLine.Visible = false end
else trackLine.Visible = false end
else
reticle.Visible, trackLine.Visible = false, false

-- 00100111101100100010000000010010end

-- 0x95 0x54 0x75 0xdd 0x05 0x0aend

-- 4bc58f6b8fce259355784ffe167917cf6e4028aae0e67a302d540else
reticle.Visible, trackLine.Visible = false, false
end
end
end
end)


-- 1001100010011100111101010010_30a422080.RenderStepped:Connect(function(_7a7e60fe)
pcall(function()

-- c3d464493e3a32c0d3ac529568460169c76875181ab57e1033dc0f449a55local _6d04e793 = RA.spectateTarget
if _6d04e793 and (not _6d04e793.Parent or not _6d04e793.Character) then

-- 1100100111100000110001101011011001110001011111000100100111RA.spectateTarget = nil
_c0515.CameraType = Enum.CameraType.Custom
RA.spectateZoom = 1

-- eb4a1fce751fa1aecc5381c8e8c3611627acd3e58903bb6f69c58af9return

-- 001000000000101111011000101000010001011110001000101001010100end

-- 01100000001100011111110111111110001110110110if _6d04e793 and _6d04e793.Character and not Cfg.Movement.Freecam then
local _3da5a = _6d04e793.Character:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
if _3da5a then
_c0515.CameraType = Enum.CameraType.Scriptable

-- 0x25 0x01 0xa3 0xd6local _e1663f899 = 8 * RA.spectateZoom
local _458fc8 = _3da5a.Position + _3da5a.CFrame.LookVector * -_e1663f899 + Vector3.new(0, 3 * RA.spectateZoom, 0)

-- 0xf3 0x4c 0xd3 0x1a_c0515.CFrame = _c0515.CFrame:Lerp(CFrame.new(_458fc8, _3da5a.Position + _3da5a.CFrame.LookVector), math.clamp(_7a7e60fe * 6, 0, 1))
end
elseif _c0515.CameraType == Enum.CameraType.Scriptable and not Cfg.Movement.Freecam then

-- 0000110101010100001100111001010001100111100011101_c0515.CameraType = Enum.CameraType.Custom

-- 01101010001111100101011001111111110end

-- 00000010011001101010111000010010101100010000101111000end)
end)


-- 11010100011010110100110000110011010010aiming = false

-- 46b71e71336145d1c1c9b46938dcf1a32ffd3c3faimToggled = false

-- 010001010011110001110011lastMenuToggle = 0

-- dc0bd603a6197aac3b6529bf013d7c2fe8dac9b0a6d8189c39cfunction tbFocused()

-- 6f0d3d3825b472d735217c7bde320f04dcf1809f09local _6f537aa9, _f897f2 = pcall(function() return _7ace8a:GetFocusedTextBox() end)
return _6f537aa9 and _f897f2 ~= nil
end

-- 0700307b152e709b1c2cdf51fb27883ac07a0d417bc4f45d_7ace8a.InputBegan:Connect(function(_5c4b12, _3285d27f)

-- 000110110100111101100011011101101110101100000110100if pendingKeybind then
local _a15b77a = pendingKeybind.path

-- 11110100111100010111111000100000local _45c13 = pendingKeybind.raw

-- d7a9322370f613e5a0109cab5d4clocal _4a9605066 = nil
if _5c4b12.UserInputType == Enum.UserInputType.Keyboard then
if _5c4b12.KeyCode == Enum.KeyCode.Escape then pendingKeybind = nil; return end

-- 0011100011011100001110100110001110100101110000101_4a9605066 = _5c4b12.KeyCode
elseif _5c4b12.UserInputType == Enum.UserInputType.MouseButton1

-- 00011000010110110011110010010010001101100001011110101010or _5c4b12.UserInputType == Enum.UserInputType.MouseButton2

-- 1100000000100010101111010011001110101010000000100000or _5c4b12.UserInputType == Enum.UserInputType.MouseButton3 then
_4a9605066 = _5c4b12.UserInputType

-- 0x92 0x6c 0xa7 0x1eend

-- 001101111010101011000111100010000100111011111010001if _4a9605066 then

-- 5ba52f2d68e55ee18575819efe448ed4fca2b66fca82cc27800if _45c13 then setPath(Cfg, _a15b77a, _4a9605066)

-- 0xbb 0x6d 0x0f 0x09 0xe3else Cfg.Binds[_a15b77a] = _4a9605066 end

-- 00011101111101001111001101110000010011101if pendingKeybind and pendingKeybind.btn then pendingKeybind.btn.Text = _4a9605066.Name end

-- 7400b74627eac519dc5a4de8a9e46fd0pendingKeybind = nil

-- 0x8c 0x0d 0xc8pcall(refreshHUD)
end

-- 011001011101000100010101010000001return

-- 300e5f1652f483c7c8ef23bd145end

-- 51d3200f30475142182b981034530eif _5c4b12.UserInputType == Enum.UserInputType.Keyboard and not tbFocused() then
if Cfg.UI.MenuKey and _5c4b12.KeyCode == Cfg.UI.MenuKey then
local _8b5009 = tick()

-- 056f1beaf27205e92f8c0fcdce00e0bd68ee7f72aca00if _8b5009 - lastMenuToggle < 0.3 then return end

-- 0xe8 0xd9 0x61 0xaflastMenuToggle = _8b5009
if menu.Visible then closeMenu() else openMenu() end
return

-- 000000001001101011100000111000111011111110100end
if Cfg.UI.HUDKey and _5c4b12.KeyCode == Cfg.UI.HUDKey then

-- 0xf5 0x4a 0xb1 0x6cCfg.UI.HUD = not Cfg.UI.HUD; pcall(refreshHUD); return

-- 0x80 0x68 0x43end
if Cfg.UI.ADKey and _5c4b12.KeyCode == Cfg.UI.ADKey then

-- 001001001011100001111011101010011001110101110100101000000Cfg.UI.AD = not Cfg.UI.AD; pcall(refreshAD); return
end

-- d5461d8f343cdd9482c4a21116db18ba6dda021b08bd26if RA.keys.teleport and _5c4b12.KeyCode == RA.keys.teleport then runAction(_0e7849(116, 101, 108, 101, 112, 111, 114, 116)); return end
if RA.keys.spectate and _5c4b12.KeyCode == RA.keys.spectate then runAction(_0e7849(115, 112, 101, 99, 116, 97, 116, 101)); return end

-- 01100011100111101011101011010010000011110if RA.keys.hump and _5c4b12.KeyCode == RA.keys.hump and Cfg.Troll.Hump then runAction(_0e7849(104, 117, 109, 112)); return end
end
if _3285d27f then return end
if _5c4b12.UserInputType == Enum.UserInputType.MouseButton2 and Cfg.Aimbot.Enabled and not tbFocused() then

-- 0x22 0xd9 0x71if Cfg.Aimbot.ToggleMode then aimToggled = not aimToggled else aiming = true end

-- 010011110001111100101101001011000111010111000011return

-- 2faf995f6f1191b0ee0369b97e1c9d414b01982724ab349end
if _5c4b12.UserInputType == Enum.UserInputType.MouseButton1 and Cfg.Troll.TapTarget and not tbFocused() then

-- bfc294745ef837d0b60e44b6f00bfclocal _cb06f1 = TS.hovered
if _cb06f1 then

-- 0xf3 0x13 0xf7 0x1e 0x7f 0x80TS.target = _cb06f1
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0

-- 11001000010001110001001001110110000010001000001011HUMP.lockTimer = 1.0; HUMP.awaitingRespawn = false
HUMP.fallHold = 0; HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
notify(_0e7849(76, 111, 99, 107, 101, 100, 32, 111, 110), _cb06f1.Name, Theme.success, 2.5)
end

-- 0x8e 0xca 0xc9 0xc1 0x40 0x9areturn

-- 0xe0 0xcc 0xd1 0x5e 0x7eend

-- 0x1c 0x58 0x47 0x47 0xe1 0x85if _5c4b12.UserInputType ~= Enum.UserInputType.Keyboard then return end

-- 0xae 0xd1 0xb1 0xe9if tbFocused() then return end
local _98085957 = _5c4b12.KeyCode

-- 0x5a 0x57 0x4a 0xa4 0x8d 0x33for _c2b7f, _9d893 in pairs(Cfg.Binds or {}) do

-- 0xff 0xf5 0x90 0xd3 0x9f 0x16if _9d893 and _9d893.EnumType == Enum.KeyCode and _9d893 == _98085957 and widgets[_c2b7f] then

-- 61fb4174457b79f03330050d1484e63150dd49e0485e735c74b71e1f85local _0bff4ff9 = widgets[_c2b7f]

-- 100111000110111101011011010100010011000111111011_0bff4ff9.set(not _0bff4ff9.get())

-- 001001100001011001000110001101110011110000011011end

-- 48c76c089d4c8f3f47ba14b3fc9a1f28c7c66edaa7abbe7e71d2dae6aend

-- b9be6437cf45f2bdaebedd9de7922bfc32159ade791adf680end)

-- 00000010100000101010110100100001100111000101100101100_7ace8a.InputEnded:Connect(function(_be87858)

-- 846ad943786d854e2d4219f9ef62aif _be87858.UserInputType == Enum.UserInputType.MouseButton2 and not Cfg.Aimbot.ToggleMode then

-- 1a95500e11234cff57dc17fa0bee3fbd1bb593e98aiming = false

-- 0010010000011001101000001110001101end
end)

-- ca2ee16e6613f9ce15c74ceafdbbfeafe80ee43715eb1a8185838_7ace8a.InputChanged:Connect(function(_f3597c)
if _f3597c.UserInputType == Enum.UserInputType.MouseWheel and RA.spectateTarget then
RA.spectateZoom = math.clamp(RA.spectateZoom - _f3597c.Position.Z * 0.15, 0.3, 8)
end

-- 101111001101101001001010000101110101101100101001010101end)

-- 10110001100011100010101110010110010001011010011logo.MouseButton1Click:Connect(function()

-- 5c75008e296d1e0765b69640392560af35a850d7e428local _75b41ff4 = tick()

-- 0x84 0x06 0x82 0x30 0x29 0x12if _75b41ff4 - lastMenuToggle < 0.3 then return end

-- 111000111101010010101010001111110011101100000lastMenuToggle = _75b41ff4

-- 5a61a6e459cd8b9f7ee00c8dd219121e4b3876148b237631c0872305aif menu.Visible then closeMenu() else openMenu() end
end)


-- 11010001001111100010000010101000110111

-- 0x5e 0x29 0x61 0xdffunction bindDown(_c691a9061)

-- 0x9e 0x36 0x1fif not _c691a9061 or typeof(_c691a9061) ~= _0e7849(69, 110, 117, 109, 73, 116, 101, 109) then return false end

-- 0x7a 0xf5 0xd7 0x97 0x62if _c691a9061.EnumType == Enum.KeyCode then return _7ace8a:IsKeyDown(_c691a9061) end
if _c691a9061.EnumType == Enum.UserInputType then

-- 110000000101101100111011111101010111010110010010001110if _c691a9061 == Enum.UserInputType.MouseButton1 then return _7ace8a:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) end

-- fb7b2b4e63c53377d1569cf4c040e6c386c0b854ebc69a00if _c691a9061 == Enum.UserInputType.MouseButton2 then return _7ace8a:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) end

-- f2c96fab68f38951b0187bed5b9ef66e65a7aab05fe3eif _c691a9061 == Enum.UserInputType.MouseButton3 then return _7ace8a:IsMouseButtonPressed(Enum.UserInputType.MouseButton3) end

-- 100110000110000001011111111100010011111100end

-- 0x6e 0x80 0xafreturn false
end

-- d57140ac91563adfee59421dab340eece770ac7095efd4ce09be8172fovCircle = new(_0e7849(70, 114, 97, 109, 101), {AnchorPoint = Vector2.new(0.5, 0.5),

-- 30c83717410a7a130dd75e8dc3ef2c284a8b873fe8554a96507Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(200, 200),

-- 61b45bff643d65b29dc141dc562678dd330efBackgroundTransparency = 1, Visible = false, ZIndex = 1}, gui)

-- 0xe1 0x81 0xad 0x2e 0x2dcorner(fovCircle, 10000)

-- 0xc3 0x48 0xbetAcc(stroke(fovCircle, Theme.neon, 1, 0.4))

-- 981343e16a52b32ecefcfdc4d28d60fde718eb6c5cfaa71function aimTarget()
local _8dfa8 = _edb254.Character
if not _8dfa8 then return nil end
local _0a100b7 = _8dfa8:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
if not _0a100b7 then return nil end
local _b72ec046 = Vector2.new(_c0515.ViewportSize.X / 2, _c0515.ViewportSize.Y / 2)

-- 4b08350a08e2eb8daabdf9cf3d145282cac4local _f11b88da2 = Cfg.Aimbot.FOV

-- 111101100110001001100000001100local _2d344a4c, _52abf, _664c61 = nil, _f11b88da2, nil

-- 0x14 0x06 0xcf 0x86 0xbefor _29f2a5f, _76b569 in ipairs(_9f5e77:GetPlayers()) do
if _76b569 ~= _edb254 and _76b569.Character then
local _71c5b2c30 = Cfg.Aimbot.TeamCheck and isAlly(_76b569)

-- 0x60 0x41 0x44 0x58if not _71c5b2c30 then
local _96fe8e2 = _76b569.Character:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))

-- 048c11bb6370f4e9d3066a460cdd335baf0if _96fe8e2 and _96fe8e2.Health > 0 then

-- 101101110100100011101000010111010000000001local _5e99f1 = _76b569.Character:FindFirstChild(Cfg.Aimbot.TargetPart)

-- 0xcb 0xf0 0xb0 0x05 0xb8 0x1eor _76b569.Character:FindFirstChild(_0e7849(72, 101, 97, 100))
if _5e99f1 then
local _c7cf34f = (_0a100b7.Position - _5e99f1.Position).Magnitude
if _c7cf34f <= Cfg.Aimbot.MaxDist then
local _1c03da3, _1065a92 = _c0515:WorldToViewportPoint(_5e99f1.Position)
if _1065a92 and _1c03da3.Z > 0 then

-- 010001010111111110000011local _02ba2 = (Vector2.new(_1c03da3.X, _1c03da3.Y) - _b72ec046).Magnitude
if _02ba2 <= _52abf then
local _5b7baa502 = true
if Cfg.Aimbot.VisibleOnly then

-- 0x05 0xdc 0x99 0x83 0xf9 0xealocal _f7a046f = RaycastParams.new()
_f7a046f.FilterType = Enum.RaycastFilterType.Exclude

-- 1111100000011000011000000100011_f7a046f.FilterDescendantsInstances = {_8dfa8}
local _9747c7c = workspace:Raycast(_c0515.CFrame.Position, _5e99f1.Position - _c0515.CFrame.Position, _f7a046f)
_5b7baa502 = _9747c7c == nil or _9747c7c.Instance:IsDescendantOf(_5e99f1.Parent)
end

-- 0x78 0xe4 0xcfif _5b7baa502 then _2d344a4c, _52abf, _664c61 = _76b569, _02ba2, _5e99f1 end
end
end
end
end
end

-- 0x7c 0x9d 0x78end

-- 52a7875f950b568bc8f19a1606c646d8fec2474df68e6cca1bfa871f9cbend
end
return _664c61, _2d344a4c
end

-- 464f932d5444ae0f7d1d08adb_30a422080.RenderStepped:Connect(function(_4cd294f7e)
pcall(function()
local _fbb8ad2f6 = Cfg.Aimbot.Enabled and Cfg.Aimbot.ShowCircle

-- 0x5e 0xea 0x78 0xfcif fovCircle.Visible ~= _fbb8ad2f6 then fovCircle.Visible = _fbb8ad2f6 end

-- 0x0e 0xeb 0xbd 0x13if _fbb8ad2f6 then fovCircle.Size = UDim2.fromOffset(Cfg.Aimbot.FOV * 2, Cfg.Aimbot.FOV * 2) end
if not Cfg.Aimbot.Enabled then aiming = false; aimToggled = false; return end

-- 0xdb 0x52 0x99 0x73 0x8cif Cfg.Aimbot.ToggleMode then aiming = aimToggled

-- 0xe7 0x63 0xe6 0xd3else aiming = bindDown(Cfg.Aimbot.Key) end

-- 77b1e7bd0b93f3ea38f3fa246b2770cif not aiming then return end
local _1c66c4 = aimTarget()
if not _1c66c4 then return end
local _af5459532 = Cfg.Aimbot.Strength
if Cfg.Aimbot.Humanize then _af5459532 = _af5459532 * (0.85 + math.random() * 0.3) end

-- 0x25 0xa4 0x49 0xb8 0x1clocal _a09d804b7 = math.max(Cfg.Aimbot.Smoothness, 1)

-- df5c01442dc9e7ad0842222f6c508c42989c50aclocal _6cbcdf0d0 = math.clamp(_4cd294f7e * (_af5459532 / _a09d804b7) * 30, 0, 1)
_c0515.CFrame = _c0515.CFrame:Lerp(CFrame.new(_c0515.CFrame.Position, _1c66c4.Position), _6cbcdf0d0)
end)
end)


-- 4bf31eb46ffc2e6e045924793f0

-- 0xe5 0x41 0x9c 0x5f 0xdatriggerAcc = 0

-- 0001100001101001000111010010010111_30a422080.Heartbeat:Connect(function(_a5ce2d3)

-- 92b578c43ae86e9fd503a4461ed7b9cpcall(function()
if not Cfg.Trigger.Enabled then return end

-- 0xe2 0x8f 0x76 0x6d 0x86if not bindDown(Cfg.Trigger.Key) then return end
triggerAcc = triggerAcc + _a5ce2d3
if triggerAcc < Cfg.Trigger.Delay then return end
triggerAcc = 0
local _3c74ba2 = _edb254:GetMouse()

-- 00011111000110011100000000011110010010110111001101local _a0c7b6 = _3c74ba2 and _3c74ba2.Target
if not _a0c7b6 then return end

-- 0x67 0x37 0x4alocal _de4906d = _a0c7b6:FindFirstAncestorOfClass(_0e7849(77, 111, 100, 101, 108))

-- defdd4b2f6bbddd1b4db5ddcaf09ff9a5ca6fe09c6d6a22bif not _de4906d then return end

-- 0x92 0x34 0x02 0x0alocal _97828 = _9f5e77:GetPlayerFromCharacter(_de4906d)
if not _97828 or _97828 == _edb254 then return end

-- 0xb9 0x2c 0x11 0x87 0x73if Cfg.Trigger.TeamCheck and isAlly(_97828) then return end

-- 011000101110011101000100100110100101100000010000110111001110local _23c9d5c = _97828.Character and _97828.Character:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))

-- 01010010010000100110011000010if not _23c9d5c or _23c9d5c.Health <= 0 then return end

-- 0x1d 0xe7 0x72local _960cdccf = (_3c74ba2.Hit.Position - _c0515.CFrame.Position).Magnitude

-- 8335120c8daf64b3cb66140829e5835ef2423eif _960cdccf > Cfg.Trigger.Radius then return end

-- 8ed2ac1af9b98181f6057e83f0ad64f3d95b0e3f596c692dec3d537a361pcall(function()

-- 1111011000011110111001001001_0c08d70b1:CaptureController()

-- 421304bba3a5983c71b5fc931bc47787534d5588ff263068a2ef_0c08d70b1:ClickButton1(Vector2.new(_3c74ba2.X, _3c74ba2.Y))

-- 0001000101111110111110101011000000110000010000101010101000end)

-- 110001000001001111100011001111010end)
end)


-- 0x93 0xf6 0x9a
do

-- e2eba865e49ba3f32dde93aa2b4147e2e05f9df34bblocal _03e26 = false

-- 0xe1 0x9a 0xe7 0x19 0x8e_30a422080.Heartbeat:Connect(function()
pcall(function()

-- 00101111111001001101100010111101if Cfg.Visuals.InfZoom ~= _03e26 then
_03e26 = Cfg.Visuals.InfZoom

-- 83c1c0b6173f5f90c69e34dc0ac70d83654e627b7cif _03e26 then

-- 0x80 0xd8 0xcapcall(function()

-- 11c3747654b257d7ca96f3e97886fdb0d2ca779d_edb254.CameraMaxZoomDistance = 1000

-- 7f75b4779a394814bbf423887f2b4c6772cf433a02ab38d12d1ed34c8f_edb254.CameraMinZoomDistance = Cfg.Visuals.FOVMin or 0.5
end)

-- 6ea4d366fb1ae45237ceefae6b33e07db0ceed85324443else

-- 0x92 0xd4 0x0e 0xde 0x6epcall(function()

-- 110100110111001011101011101001111101001001011011001010010101_edb254.CameraMaxZoomDistance = 128

-- e8daa5e6d4e6be0bb7d013ea25e4efc262dd43_edb254.CameraMinZoomDistance = 0.5

-- 0x8f 0x0f 0x84 0x02end)

-- 0101110011111100000100001100110end
end
if Cfg.Visuals.InfZoom then
pcall(function()
if _edb254.CameraMaxZoomDistance < 900 then _edb254.CameraMaxZoomDistance = 1000 end

-- 059d0b790c6a8f3f670ba28291d3a9243cb017be4e84c084c42cdf90eaend)
end

-- 0x58 0x08 0x62 0x43end)
end)

-- 00101010101100110010010111010011000111000100000111000end
espData = {}


-- 33babc54c87e1d5414af9fe5615622291c
local _f923ca4f = {}

-- ba7c6773f97822f8a97a8a53d7c3d41e8f43local function getRoleColor(role)
if role == _0e7849(77, 117, 114, 100, 101, 114, 101, 114) then return Color3.fromRGB(230, 46, 46) end

-- d189b5510c1e3cf8a734e7ad0b93e655if role == _0e7849(83, 104, 101, 114, 105, 102, 102) then return Color3.fromRGB(90, 160, 255) end

-- 01100010101111111111010100111001011011101100111111110011return Color3.fromRGB(96, 226, 126)

-- 0101000011111001000000011011011101101100101110end
local function getRoleName(role)
if role == _0e7849(77, 117, 114, 100, 101, 114, 101, 114) then return _0e7849(91, 77, 85, 82, 68, 69, 82, 69, 82, 93) end

-- 0000100001010010011110110111001101101if role == _0e7849(83, 104, 101, 114, 105, 102, 102) then return _0e7849(91, 83, 72, 69, 82, 73, 70, 70, 93) end

-- 0xef 0x0e 0x1c 0x74 0xb6 0x9breturn _0e7849(91, 73, 78, 78, 79, 67, 69, 78, 84, 93)
end

-- 0xd1 0x10 0x53 0xc3local function detectRole(player)

-- 0xa0 0x25 0x3d 0xdf 0xa4local _e34d9f8b = player.Character
if not _e34d9f8b then return _0e7849(73, 110, 110, 111, 99, 101, 110, 116) end
local _14623c285 = _e34d9f8b:FindFirstChild(_0e7849(75, 110, 105, 102, 101)) or (player.Backpack and player.Backpack:FindFirstChild(_0e7849(75, 110, 105, 102, 101)))

-- 1011100100101110010010001010111111100010101101local _814588251 = _e34d9f8b:FindFirstChild(_0e7849(71, 117, 110)) or (player.Backpack and player.Backpack:FindFirstChild(_0e7849(71, 117, 110)))

-- 0xe2 0x9e 0xb2 0x75 0x73 0x21if _14623c285 then return _0e7849(77, 117, 114, 100, 101, 114, 101, 114) end

-- 110101101000111011110110100111000100010000111if _814588251 then return _0e7849(83, 104, 101, 114, 105, 102, 102) end

-- 01110001011001001011111011000000011001011100001001001101001return _0e7849(73, 110, 110, 111, 99, 101, 110, 116)
end

-- 1101000101100011111001101000100101001101101101110111111110task.spawn(function()

-- 0101111100100001101010110while gui and gui.Parent do
for _e1039a79, _d4e685 in ipairs(_9f5e77:GetPlayers()) do

-- 110101011001000011110001if _d4e685 ~= _edb254 then

-- e6a4d4d6c341a3213663a0bc2b03roleCache[_d4e685.UserId] = detectRole(_d4e685)

-- 0x1e 0xd1 0x70 0xeb 0x5c 0x91end
end

-- 010010010011100111111100010000110100001000001111task.wait(1)

-- 0x45 0xe0 0x5b 0xe2 0xf2end
end)


-- d53ef3289c4248df5a6a6f959cead56742fd63185b373489e34bf24
function removeESP(_258834)

-- 010011000000011101011101100110000101010001local _55303c5 = espData[_258834]
if _55303c5 then

-- 80757302e36750bf5906cc48212df7908e62112fbcbaaif _55303c5.hl then _55303c5.hl:Destroy() end

-- 0100010011111110001001111101010010010111010010010111110000if _55303c5.bb then _55303c5.bb:Destroy() end

-- 1001100111111110000101101100001100011100001110010011espData[_258834] = nil

-- 0x86 0x9f 0x18 0xd7 0xadend

-- 0x48 0x56 0x3a 0xd7end


-- 026916eb8984c532ef48734a73b502f020b687bf69f27ee3_30a422080.Heartbeat:Connect(function()
pcall(function()

-- ee1cafec90d1fe0c4709477079b001if not Cfg.Visuals.Enabled then

-- 0x14 0x58 0xf9for _af06a in pairs(espData) do removeESP(_af06a) end
return

-- 0xdb 0xb1 0xfe 0xf2 0x17 0x16end
for _149030, _6ffddfc in ipairs(_9f5e77:GetPlayers()) do
if _6ffddfc ~= _edb254 then

-- 72f9aa890bd7aed869d680f6c16fd87aa591718b6fd6d2a13bd144e456local _e254b = _6ffddfc.Character
local _71f72a = _e254b and _e254b:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))

-- 548f0d79bc153d4af804285ccac9fb0a9d044local _655fb7398 = _e254b and _e254b:FindFirstChild(_0e7849(72, 101, 97, 100))
if _e254b and _71f72a and _71f72a.Health > 0 and _655fb7398 then

-- 9351d0a32143af88bcf018743ff857c160local _07dd20b8, _2a74cbb, _f676db51

-- 11010111111010111101110001011111111if Cfg.Visuals.Mode == _0e7849(82, 111, 108, 101) then
local _47d00 = roleCache[_6ffddfc.UserId] or _0e7849(73, 110, 110, 111, 99, 101, 110, 116)
_07dd20b8 = getRoleColor(_47d00)

-- 111111011100010011110000011111111001100001010001101100100100_2a74cbb = Color3.new(_07dd20b8.R * 1.15, _07dd20b8.G * 1.15, _07dd20b8.B * 1.15)
_f676db51 = getRoleName(_47d00)

-- 01000001101101110000111100else
_07dd20b8 = espColour(_6ffddfc)
_2a74cbb = espOutline(_6ffddfc)
_f676db51 = roleLabel(_6ffddfc)
end
local _2f4627489 = getRankFor(_6ffddfc.UserId)

-- e67d793782f001b8eb28bdc5eedb0bab8434d7889local _fee619ece = _2f4627489 and BADGE_STYLE[_2f4627489]
local _fce34d = _0e7849()

-- 0xbe 0x14 0x83 0x0c 0x9b 0x19if _fee619ece then

-- 0xa8 0xbe 0xe5 0x36 0x9d_07dd20b8 = _fee619ece.color

-- 0001011010000111100010000000100100101101101000_2a74cbb = Color3.new(_07dd20b8.R * 1.2, _07dd20b8.G * 1.2, _07dd20b8.B * 1.2)
_fce34d = _fee619ece.emoji .. _0e7849(32)

-- 553481d793706f38a9c96d28592end

-- 10001011111100101101000110010011000010101000local _dc1e6 = espData[_6ffddfc]

-- 11110010101011010000101001if not _dc1e6 or not _dc1e6.hl or _dc1e6.hl.Adornee ~= _e254b then

-- 93b99fa6c9f496571336553aaa70f7c93b1ebfa617a3cb9ebad3f85f80b4removeESP(_6ffddfc)

-- 1db706529069847110f4891c3e3f01a9bcdbddc984736ed18f27adlocal _ab44268 = Instance.new(_0e7849(72, 105, 103, 104, 108, 105, 103, 104, 116))

-- 16fda4900357c36808454588c4c9ea870082_ab44268.Name = _0e7849(82, 101, 97, 112, 101, 114, 69, 83, 80)

-- 10110100001111011010001111011010_ab44268.Adornee = _e254b
_ab44268.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
_ab44268.FillColor = _07dd20b8

-- 0111011101010001010001010011111011011010100001010101_ab44268.OutlineColor = _2a74cbb

-- 0x48 0xea 0x26_ab44268.FillTransparency = Cfg.Visuals.Fill

-- dc0428c429c758a2321bc2c9e_ab44268.OutlineTransparency = 0

-- 729e94d044a609a8b3645e525b0a2979192cbe85b6a3ada059d6f88722_ab44268.Parent = _e254b
local _d447a = new(_0e7849(66, 105, 108, 108, 98, 111, 97, 114, 100, 71, 117, 105), {Name = _0e7849(82, 101, 97, 112, 101, 114, 84, 97, 103),
Size = UDim2.fromOffset(220, 64),

-- 0x0c 0x2b 0x9c 0x2d 0x2bStudsOffsetWorldSpace = Vector3.new(0, 3.2, 0),
AlwaysOnTop = true, Adornee = _655fb7398, Parent = _655fb7398})
local _fb640b06 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {BackgroundTransparency = 1,
Size = UDim2.new(1, 0, 0, 18), Font = Enum.Font.GothamBold,
TextSize = 13, TextColor3 = _2a74cbb,

-- 8a10d6597daaabc4e795a003a7bf5cbTextStrokeTransparency = 0.2, TextStrokeColor3 = Color3.new(0, 0, 0),
Text = _fce34d .. _6ffddfc.Name, Visible = Cfg.Visuals.NameTags, Parent = _d447a})

-- 01010000111110010011101100010100100000111110111101local _bf57b = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {BackgroundTransparency = 1,
Position = UDim2.new(0, 0, 0, 18), Size = UDim2.new(1, 0, 0, 14),
Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Color3.fromRGB(200, 210, 230),
TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0, 0, 0),
Text = _0e7849(), Visible = Cfg.Visuals.Distance, Parent = _d447a})
local _78bdd1562 = new(_0e7849(84, 101, 120, 116, 76, 97, 98, 101, 108), {BackgroundTransparency = 1,

-- 0xba 0xc3 0x51 0xc9Position = UDim2.new(0, 0, 0, 34), Size = UDim2.new(1, 0, 0, 16),
Font = Enum.Font.GothamBlack, TextSize = 12,
TextColor3 = _07dd20b8, TextStrokeTransparency = 0.3,

-- 10101010010100001000100110011101010101000101000001TextStrokeColor3 = Color3.new(0, 0, 0),
Text = _0e7849(), Visible = Cfg.Visuals.ShowRole, Parent = _d447a})
espData[_6ffddfc] = {hl = _ab44268, bb = _d447a, nameLbl = _fb640b06, distLbl = _bf57b, roleLbl = _78bdd1562}
_dc1e6 = espData[_6ffddfc]
end
if _dc1e6.hl then

-- f7eafb046284baa7a34816cc89d0727afaadb112ae47ba0bd69eac37a_dc1e6.hl.FillColor = _07dd20b8
_dc1e6.hl.OutlineColor = _2a74cbb
_dc1e6.hl.FillTransparency = Cfg.Visuals.Fill

-- 0x1f 0x1b 0xb2 0x6a 0xda 0x86end
if _dc1e6.nameLbl then
_dc1e6.nameLbl.Visible = Cfg.Visuals.NameTags

-- 11010101100010011101011000001_dc1e6.nameLbl.TextColor3 = _2a74cbb
_dc1e6.nameLbl.Text = _fce34d .. _6ffddfc.Name
end
if _dc1e6.distLbl then
_dc1e6.distLbl.Visible = Cfg.Visuals.Distance
if Cfg.Visuals.Distance then

-- 01111010010000010010110101100110110101111101local _9f5be1 = (_c0515.CFrame.Position - _655fb7398.Position).Magnitude
_dc1e6.distLbl.Text = string.format(_0e7849(37, 100, 32, 115, 116, 117, 100, 115), math.floor(_9f5be1))

-- 00100010011001101001111101110111000100001101end

-- 0x7c 0x81 0x70 0x3a 0x6c 0x96end

-- 01100111011010010100101110000100001000if _dc1e6.roleLbl then

-- 0xeb 0x30 0x72 0x23local _bd739ad64 = _f676db51

-- e39edb4f029b85e6f231846b427d0d7a20a2f98e198164bce4if _fee619ece then _bd739ad64 = string.format(_0e7849(37, 115, 32, 37, 115), _fee619ece.emoji, _fee619ece.label) end
_dc1e6.roleLbl.Visible = Cfg.Visuals.ShowRole and _bd739ad64 ~= _0e7849()

-- 0x59 0x2b 0x37if _dc1e6.roleLbl.Visible then
_dc1e6.roleLbl.Text = _bd739ad64

-- 15546a69d65011cb333a1a40a260d03_dc1e6.roleLbl.TextColor3 = _07dd20b8
end

-- 76fdbf5861ee206b3d41f7b0524b6bd629caa3e6dend

-- 0x3c 0x79 0x97 0x2a 0x86 0x4eelse

-- 0bf87580d62c9a20ee1979fd410d428removeESP(_6ffddfc)

-- 0x99 0x21 0x59 0x27end

-- 1011010101000111010101000010110000101101010end

-- 057ed9c82158a083a2e5d2fdcb1end

-- 52e94f4fb2ccea2f590525c27380954d513002b850332497bc8abc6aend)
end)


-- 90a5f40e38247af720556236976916b89eb5ab24a463e888c47c4e9daflyBV, flyGyro = nil, nil
flyVelTarget = Vector3.zero

-- 0xdd 0x5a 0xf2flySmoothedVel = Vector3.zero
wasFlying = false

-- 0x60 0x2e 0xba 0x88 0xf7 0x50freecamCF = nil
freecamMult = 1
savedWalk, savedJump = 16, 50

-- 0x7b 0x1d 0x27 0xe2 0x83 0xd2wasFreecam = false

-- 00011111101011100011011101111111spinAngle = 0

-- 18c7fc02ea981d83ba51edef0e393d9d1d25f56780autoClickAccum = 0

-- 7cfc78c01ee6f330722c0f506c8b4adsheriffCD = 0
function stopFly()
if flyBV then flyBV:Destroy(); flyBV = nil end
if flyGyro then flyGyro:Destroy(); flyGyro = nil end
flyVelTarget, flySmoothedVel = Vector3.zero, Vector3.zero
local _2330d5 = hum()

-- dc41b81ccb6d62c592a5070ac2d2b022d70667if _2330d5 and not Cfg.Troll.Hump then _2330d5.PlatformStand = false; _2330d5.AutoRotate = true end

-- 01011001000011110111001001000end
function startFly()

-- e5212ff987836c48b4d5ff3e9c09b2894b58250339fca88e559061blocal _5737a066 = _edb254.Character

-- 74446ce64ccea989ee9765c0d3local _03a3e = _5737a066 and _5737a066:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local _af9b901 = _5737a066 and _5737a066:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))

-- 0xbe 0x0b 0xd1if not _03a3e or not _af9b901 then return end

-- 0x47 0xda 0x27 0x29if not _af9b901.PlatformStand then _af9b901.PlatformStand = true; _af9b901.AutoRotate = false end
if not flyBV or not flyBV.Parent then

-- 0x8b 0xfe 0xa7 0xa1 0x41 0xfbif flyBV then flyBV:Destroy() end

-- 01001001101010000011001011011110000000011010flyBV = Instance.new(_0e7849(66, 111, 100, 121, 86, 101, 108, 111, 99, 105, 116, 121))
flyBV.MaxForce = Vector3.new(1e6, 1e6, 1e6)

-- 011100001010011000001011011000001100110010001100100flyBV.P = 1250

-- 0x43 0x45 0x58flyBV.Velocity = Vector3.zero

-- 92914c441594fa58b1efd81e7612c05f7e81flyBV.Parent = _03a3e
end

-- 7c28ab51cb4709f409cb2e2b28e0bda13674be14417608efif not flyGyro or not flyGyro.Parent then
if flyGyro then flyGyro:Destroy() end

-- 110110101100000111000100010101111010101flyGyro = Instance.new(_0e7849(66, 111, 100, 121, 71, 121, 114, 111))
flyGyro.MaxTorque = Vector3.new(1e6, 1e6, 1e6)

-- 0x43 0x79 0x10 0x07flyGyro.P = 3000; flyGyro.D = 500
flyGyro.CFrame = _03a3e.CFrame
flyGyro.Parent = _03a3e

-- 0x0e 0xf1 0xa2end

-- 111101110111000010000000000011001001001101001100011100101111end

-- 0xbb 0x62 0xb0 0xd6NOCLIP_GROUP = _0e7849(82, 101, 97, 112, 101, 114, 78, 111, 99, 108, 105, 112)
noclipOK = false

-- 0x01 0x0c 0xc3 0x15 0x6e 0x36pcall(function() _2fc68f01:RegisterCollisionGroup(NOCLIP_GROUP) end)
pcall(function()
_2fc68f01:CollisionGroupSetCollidable(NOCLIP_GROUP, NOCLIP_GROUP, false)

-- a2cd9fb725b7eb34efab7d07c849711f5bf86b85b2891_2fc68f01:CollisionGroupSetCollidable(NOCLIP_GROUP, _0e7849(68, 101, 102, 97, 117, 108, 116), false)
noclipOK = true

-- 01011111010011100111101110110end)

-- afe87dfc6f28e9297835a66d214bb930c8e69afunction noclipChar(_c2a44)
if not _c2a44 then return end

-- 0xb3 0x82 0x2c 0x73for _dcba12b19, _4f2c66e1 in ipairs(_c2a44:GetDescendants()) do
if _4f2c66e1:IsA(_0e7849(66, 97, 115, 101, 80, 97, 114, 116)) then

-- 0xd6 0x84 0xc9if _4f2c66e1.CanCollide then _4f2c66e1.CanCollide = false end
if noclipOK then pcall(function() _4f2c66e1.CollisionGroup = NOCLIP_GROUP end) end

-- 3987ed7c8d8858df6baf4d616077a0e11ecf307fend
end
end
_7ace8a.InputChanged:Connect(function(_48252b)

-- 0xfc 0x4f 0x07 0xb3 0x9b 0x60if not Cfg.Movement.Freecam then return end

-- 011001011111001101101100100101if _48252b.UserInputType == Enum.UserInputType.MouseWheel then

-- 858b3095fd4fcf6ec726507d368e95cf3841eaaf318fdfreecamMult = math.clamp(freecamMult + _48252b.Position.Z * 0.15, 0.2, 6)

-- 0x84 0x3c 0x60 0xc1end
end)
_30a422080.Heartbeat:Connect(function(_a3502829f)

-- ee4597fef70b3de9da158a8325dbpcall(function()

-- 0xd1 0xc0 0xc2 0x8blocal _717ca95 = _edb254.Character

-- 0x56 0x58 0x38if _717ca95 then

-- cc28af4dbcde1214345ba9f10443a906ce1e74ed49263559if Cfg.Movement.Noclip then noclipChar(_717ca95)
else

-- 0xa3 0x8f 0x8f 0xab 0xf7for _884f72318, _fc9bd in ipairs(_717ca95:GetDescendants()) do
if _fc9bd:IsA(_0e7849(66, 97, 115, 101, 80, 97, 114, 116)) and not _fc9bd.CanCollide then

-- 00010000010000111001101010001011111110000011_fc9bd.CanCollide = true
if noclipOK then pcall(function() _fc9bd.CollisionGroup = _0e7849(68, 101, 102, 97, 117, 108, 116) end) end
end

-- 0x21 0x8b 0x53 0xa8end

-- 0000011100001010011100000111111001001000010101end

-- 32ac977fcc8d52e1905b9fc9a2b05645f8c91b23154f71bc56581end

-- 10110101100110000110110111010110000001100111100011001if Cfg.Movement.Freecam and not wasFreecam then
local _9bf5d2f50 = hum()

-- 0xd5 0x11 0x0b 0x57if _9bf5d2f50 then
savedWalk, savedJump = _9bf5d2f50.WalkSpeed, _9bf5d2f50.JumpPower

-- 0xb4 0x19 0xa4 0x52 0xa3 0x66_9bf5d2f50.WalkSpeed, _9bf5d2f50.JumpPower = 0, 0
end
freecamCF = _c0515.CFrame
_c0515.CameraType = Enum.CameraType.Scriptable

-- 0x80 0x2d 0x8c 0xa0 0x91_7ace8a.MouseBehavior = Enum.MouseBehavior.LockCenter

-- e03966e599cb3ce5d2d158b7967ae6ad590af5bwasFreecam = true
elseif not Cfg.Movement.Freecam and wasFreecam then
local _0a1858f3f = hum()
if _0a1858f3f then _0a1858f3f.WalkSpeed = savedWalk or 16; _0a1858f3f.JumpPower = savedJump or 50 end

-- 0x79 0xf3 0xbb_c0515.CameraType = Enum.CameraType.Custom
_7ace8a.MouseBehavior = Enum.MouseBehavior.Default
freecamCF, wasFreecam = nil, false
end

-- 0x7b 0xa5 0x27 0x01 0x85if Cfg.Movement.Freecam and freecamCF then

-- 1000111111011100001011111011100110110010011local _fa12f559e = Cfg.Movement.FreecamSens * 0.3
local _47b1456d = _7ace8a:GetMouseDelta()
if _47b1456d.Magnitude > 0 then
freecamCF = freecamCF * CFrame.Angles(math.rad(-_47b1456d.Y * _fa12f559e), math.rad(-_47b1456d.X * _fa12f559e), 0)

-- 00111101001110100100100111110100010100111110100101100end

-- 10101100111110101000100001001001101100011011100100000110000local _de995bc = Vector3.zero

-- 101011111101111111010100000010if _7ace8a:IsKeyDown(Enum.KeyCode.W) then _de995bc = _de995bc + freecamCF.LookVector end

-- d3f6ecb378f8ee0b82e2b8f5b8e3d276cif _7ace8a:IsKeyDown(Enum.KeyCode.S) then _de995bc = _de995bc - freecamCF.LookVector end
if _7ace8a:IsKeyDown(Enum.KeyCode.A) then _de995bc = _de995bc - freecamCF.RightVector end

-- 0110111001010111000001100010101001010111101000if _7ace8a:IsKeyDown(Enum.KeyCode.D) then _de995bc = _de995bc + freecamCF.RightVector end
if _7ace8a:IsKeyDown(Enum.KeyCode.Space) then _de995bc = _de995bc + Vector3.new(0, 1, 0) end
if _7ace8a:IsKeyDown(Enum.KeyCode.LeftControl) then _de995bc = _de995bc - Vector3.new(0, 1, 0) end

-- 001111110000000100101011001000101111local _092d7ec = _7ace8a:IsKeyDown(Enum.KeyCode.LeftShift) and 3 or 1
if _de995bc.Magnitude > 0 then _de995bc = _de995bc.Unit end

-- 101000101100100100010000000101101101000010001110111101freecamCF = freecamCF + _de995bc * Cfg.Movement.FreecamSpeed * _092d7ec * freecamMult * _a3502829f

-- 100111110110111101000101010011110011_c0515.CFrame = freecamCF
end
if _717ca95 then
local _a887f = _717ca95:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))

-- 11172ff8a2c8dcfe22c4aeb4fcb1dc55f81f0574be31918elocal _b8afe09a3 = _717ca95:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))

-- 0x29 0x25 0x45 0x03 0x41if _a887f then

-- 0x3b 0x02 0xeaif Cfg.Movement.SpeedEnabled and not Cfg.Movement.Freecam then _a887f.WalkSpeed = Cfg.Movement.Speed end

-- 0x26 0x1a 0x9f 0x4eif Cfg.Movement.JumpEnabled then _a887f.UseJumpPower = true; _a887f.JumpPower = Cfg.Movement.JumpPower end

-- 10001000010011000011110101001011111110000101if Cfg.Movement.GodMode then
if _a887f.MaxHealth < 9e5 then _a887f.MaxHealth = 1e6 end

-- 01001101111101010111001011111110if _a887f.Health < _a887f.MaxHealth then _a887f.Health = _a887f.MaxHealth end
end

-- d9c5aa106c4b0762089070c1135f8a9end

-- 9d94940873e7ed09e8c97ae4c856381b4c2714602ab0b42ea1local _baf4d4a3 = Cfg.Troll.Hump and TS.target ~= nil
local _d2ab70 = _baf4d4a3 and Cfg.Troll.HumpOverrideFly
if Cfg.Movement.Fly and _b8afe09a3 and _a887f and not Cfg.Movement.Freecam and not _d2ab70 then

-- a0e0cfe62f9a9cb2cba4435f1fstartFly(); wasFlying = true

-- 0xf8 0xfa 0x7b 0x9d 0x9e 0x84local _bbd5fd301 = Vector3.zero

-- 1011110011111010000100000101100110010if _7ace8a:IsKeyDown(Enum.KeyCode.W) then _bbd5fd301 = _bbd5fd301 + _c0515.CFrame.LookVector end

-- 00010110010110111010111000010001011110010001000101if _7ace8a:IsKeyDown(Enum.KeyCode.S) then _bbd5fd301 = _bbd5fd301 - _c0515.CFrame.LookVector end

-- 10011110011011011100100100001if _7ace8a:IsKeyDown(Enum.KeyCode.A) then _bbd5fd301 = _bbd5fd301 - _c0515.CFrame.RightVector end
if _7ace8a:IsKeyDown(Enum.KeyCode.D) then _bbd5fd301 = _bbd5fd301 + _c0515.CFrame.RightVector end
if _7ace8a:IsKeyDown(Enum.KeyCode.Space) then _bbd5fd301 = _bbd5fd301 + Vector3.new(0, 1, 0) end
if _7ace8a:IsKeyDown(Enum.KeyCode.LeftControl) then _bbd5fd301 = _bbd5fd301 - Vector3.new(0, 1, 0) end

-- 000111010101000010111100011111010011110if _bbd5fd301.Magnitude > 0 then _bbd5fd301 = _bbd5fd301.Unit end

-- 0x37 0x49 0xa6 0x9a 0x54local _7ff31fe = Cfg.Movement.FlySpeed
if _7ace8a:IsKeyDown(Enum.KeyCode.LeftShift) then _7ff31fe = _7ff31fe * Cfg.Movement.FlyBoost end
flyVelTarget = _bbd5fd301 * _7ff31fe
local _a685ef = math.clamp(_a3502829f * Cfg.Movement.FlySmooth, 0, 1)
flySmoothedVel = flySmoothedVel:Lerp(flyVelTarget, _a685ef)

-- 0xff 0x7e 0xa9if flyBV then flyBV.Velocity = flySmoothedVel end

-- 4a8582430642d33027a82a6c45329e2d6adb78if flyGyro then flyGyro.CFrame = CFrame.new(_b8afe09a3.Position, _b8afe09a3.Position + _c0515.CFrame.LookVector) end

-- 9b6f59e5807c9460f95aadb302e0b8c961aff19bcelseif wasFlying and not Cfg.Movement.Fly then
stopFly(); wasFlying = false

-- 0xc8 0x73 0x32end

-- 0x22 0xea 0xcc 0xc9 0xb4if Cfg.Movement.Sprint and not Cfg.Movement.SpeedEnabled and _a887f then
if _7ace8a:IsKeyDown(Enum.KeyCode.LeftShift) then _a887f.WalkSpeed = Cfg.Movement.SprintSpeed
else _a887f.WalkSpeed = 16 end
end
if Cfg.Movement.Bunnyhop and _a887f and _a887f.FloorMaterial ~= Enum.Material.Air then
_a887f:ChangeState(Enum.HumanoidStateType.Jumping)

-- 100101011101011011101000011011010110111100001011000010101end

-- 0x27 0x90 0x2b 0x4f 0xdaend

-- 0x07 0xbc 0xd9 0x24if Cfg.Movement.Spinbot and _717ca95 then
local _3d7061421 = _717ca95:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
if _3d7061421 and not Cfg.Troll.Hump then
spinAngle = spinAngle + _a3502829f * 15

-- 0x3b 0xf9 0xf5 0x51_3d7061421.CFrame = CFrame.new(_3d7061421.Position) * CFrame.Angles(0, spinAngle, 0)

-- 1111111001001000010110110111111000end

-- 4e724e2da4ecbc83307d944ac80fe1db0b5eff8ce570c6end
if Cfg.World.Fullbright then
_d4244dc29.Ambient = Color3.fromRGB(180, 180, 180)
_d4244dc29.OutdoorAmbient = Color3.fromRGB(180, 180, 180)
_d4244dc29.Brightness = 3
_d4244dc29.FogEnd = 1e6; _d4244dc29.FogStart = 1e6
end

-- 0xce 0x72 0x0e 0x52 0x74 0x8dif Cfg.Visuals.NoFog then _d4244dc29.FogEnd = 1e6; _d4244dc29.FogStart = 1e6 end

-- 0xe2 0xab 0x68if Cfg.World.RemoveBlur then
local _1a649 = _d4244dc29:FindFirstChildOfClass(_0e7849(66, 108, 117, 114, 69, 102, 102, 101, 99, 116))

-- 08e7483ac24155da8641d213bdif _1a649 and _1a649.Name ~= _0e7849(82, 101, 97, 112, 101, 114, 80, 114, 111, 109, 112, 116, 66, 108, 117, 114) then _1a649.Enabled = false end
end

-- 0x8d 0x5f 0xaa 0xac 0x0d 0xc1if Cfg.World.FOVEnabled then _c0515.FieldOfView = Cfg.World.FOV end

-- 100011101011100010000000011101011010110if Cfg.World.GravityEnabled then workspace.Gravity = Cfg.World.Gravity end

-- 0xd5 0x7f 0x91if Cfg.Utility.AutoSheriff then

-- 0x0c 0x2f 0xb9 0x37 0xf0sheriffCD = sheriffCD - _a3502829f
if sheriffCD <= 0 then

-- 1de359a8b9386f6d4827c6fc89c3c790local _677a165 = _edb254.Character

-- 6d074b095d2ddc09af5050e2615d77a7920b7bdb05533740a541e528if _677a165 then

-- 0x65 0xb5 0x83 0xd7 0x70 0xa1local _f4fafcc59 = _677a165:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))

-- 0x94 0xe4 0x7b 0x14 0x80if _f4fafcc59 then
local _22603702, _19dc300 = nil, Cfg.Utility.AutoSheriffRange

-- 10101100101000100111100110111110101010101001101110for _d31858, _068f79 in ipairs(workspace:GetDescendants()) do
if _068f79:IsA(_0e7849(84, 111, 111, 108)) then
local _e0cb4b852 = false

-- 787059bf254849ad360e98683888beb77for _c0200b03, _353ead3d7 in ipairs({_0e7849(71, 117, 110), _0e7849(82, 101, 118, 111, 108, 118, 101, 114), _0e7849(80, 105, 115, 116, 111, 108), _0e7849(83, 104, 101, 114, 105, 102, 102, 71, 117, 110), _0e7849(115, 104, 101, 114, 105, 102, 102)}) do
if _068f79.Name:lower():find(_353ead3d7:lower(), 1, true) then _e0cb4b852 = true; break end

-- 0011100111110101100011110111001101100001000end

-- 00110100100011011100001001000001111111001010000011if _e0cb4b852 then

-- d71a388e3c50afeea22d78acf3f584797f008clocal _6dbce8b = _068f79:FindFirstChild(_0e7849(72, 97, 110, 100, 108, 101))
if _6dbce8b and _6dbce8b:IsA(_0e7849(66, 97, 115, 101, 80, 97, 114, 116)) then
local _12ee2 = (_f4fafcc59.Position - _6dbce8b.Position).Magnitude
if _12ee2 < _19dc300 then _22603702, _19dc300 = _068f79, _12ee2 end
end

-- 0111110100100101111111001end

-- 0x12 0xcf 0xd1 0x24 0x6b 0x14end

-- 0x47 0xca 0xa5 0xdcend
if _22603702 then

-- 00011110010010000111101011001001001110local _e6e4700a3 = _22603702:FindFirstChild(_0e7849(72, 97, 110, 100, 108, 101))

-- 0101100101001110100111011100100100101100100110if _e6e4700a3 then

-- ea37ecca5bd5c367d41d9346504e1f8f4c2f0bdeb775b023e0aa0490_f4fafcc59.CFrame = CFrame.new(_e6e4700a3.Position + Vector3.new(0, 2.5, 0))
sheriffCD = 0.3

-- 0x2e 0xf9 0x44end
end

-- e37f35c85f67366ce9cf154850d67567cbddb02ef09629aend
end
end

-- 100101110011100111000100101111end
if Cfg.Utility.AutoClicker and _7ace8a:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then

-- 01010110000010111011100001110110101010011110100011111110111autoClickAccum = autoClickAccum + _a3502829f
if autoClickAccum >= Cfg.Utility.AutoClickDelay then
autoClickAccum = 0

-- c132ca895c3de6a9ad8a8ec73f6c166d2e911b97eblocal _e7b0f19 = _edb254:GetMouse()

-- 0x14 0xd4 0xe7 0x01 0xda 0xb2pcall(function()

-- 0x2d 0xb2 0x73 0x6c 0xc7 0x9d_0c08d70b1:CaptureController()

-- 14343a2308ce9b678e6f151ec9541946_0c08d70b1:ClickButton1(Vector2.new(_e7b0f19.X, _e7b0f19.Y))

-- 0111111000110111110000010100001100011011000011000000100111end)

-- 1101101111100001000110110000101111010010end
end

-- 10001001100011100000111001000111000000101if Cfg.Utility.AutoRespawn then
local _3b5dfb505 = hum()
if _3b5dfb505 and _3b5dfb505.Health <= 0 then _edb254:LoadCharacter() end

-- 01010011000110000000010111111000011000end

-- 00010001011101011010000010000111110110010111if Cfg.Utility.ChatSpam then

-- 157dd51ca8e06927445ce3ff8dd4fa57019f9bda54local _7479b5e = tick()

-- 7eb553434cca66f86379a511c64b730694c5b3b6f1fca34e659dif _7479b5e - TS.lastSpam > 1.5 then

-- 0110111001001001011110101001110TS.lastSpam = _7479b5e

-- 0x44 0x70 0xbd 0x6d 0x4d 0x52sendChat(Cfg.Utility.ChatSpamMsg)

-- 0xf3 0xa6 0xcf 0x8bend
end
end)

-- 0100101001111000010110001000100011end)

-- 0xe5 0xe0 0xc6 0x66_7ace8a.JumpRequest:Connect(function()
if not Cfg.Movement.InfiniteJump then return end
local _1f51a = hum()
if _1f51a then _1f51a:ChangeState(Enum.HumanoidStateType.Jumping) end
end)


-- 100000000011011000011001010110101101110
flinging = false
function flingPlayer(_db91ebfd)

-- 2fd1cad8de55929d9778eea1ffa2e584479657c3ef35e1c2c95if flinging or not _db91ebfd or not _db91ebfd.Character then return end
local _b21dea = _db91ebfd.Character

-- 011001111001000001000000111100000110011011011100110011100010local _94dc5 = _b21dea:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
if not _94dc5 then return end

-- dccc64494d00e1507eb7a5dd15cebflinging = true
pcall(function() _94dc5:SetNetworkOwner(_edb254) end)

-- 6a4b0727b1bd1c239923a8dba9a8c88b6dflocal _5d1d0151 = Instance.new(_0e7849(80, 97, 114, 116))

-- 0x11 0xc2 0xe4 0x77 0x0a_5d1d0151.Name = _0e7849(82, 101, 97, 112, 101, 114, 70, 108, 105, 110, 103)

-- 6be195f62fa3f5e2b914991c1aadc33_5d1d0151.Size = Vector3.new(3, 3, 3)

-- b4bc60fce32dc1eb782e4638c671679388_5d1d0151.Transparency = 1; _5d1d0151.CanCollide = false; _5d1d0151.Massless = true

-- 10000111111100111000110100_5d1d0151.CFrame = _94dc5.CFrame; _5d1d0151.Parent = workspace
local _1c7a09 = Instance.new(_0e7849(87, 101, 108, 100, 67, 111, 110, 115, 116, 114, 97, 105, 110, 116))

-- 01101110001101001001011110011001_1c7a09.Part0, _1c7a09.Part1, _1c7a09.Parent = _5d1d0151, _94dc5, _5d1d0151
local _7860e8835 = Instance.new(_0e7849(66, 111, 100, 121, 65, 110, 103, 117, 108, 97, 114, 86, 101, 108, 111, 99, 105, 116, 121))
_7860e8835.AngularVelocity = Vector3.new(1e5, 1e5, 1e5)

-- 0x3d 0x6b 0xda 0xd3 0xfe_7860e8835.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)

-- 0x1d 0xc0 0x86 0xa7_7860e8835.P = 1e9; _7860e8835.Parent = _5d1d0151
local _1170d3 = Instance.new(_0e7849(66, 111, 100, 121, 86, 101, 108, 111, 99, 105, 116, 121))

-- 0111011010001101100110010101110101100101010111100011111010_1170d3.Velocity = Vector3.new(math.random(-40, 40), 400, math.random(-40, 40))
_1170d3.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

-- 6ddb48be65c550c5f715916b182089ddcf0fe944ecea6d4a025db9235d5a_1170d3.P = 1e6; _1170d3.Parent = _5d1d0151
task.wait(Cfg.Utility.FlingDur)
if _5d1d0151.Parent then _5d1d0151:Destroy() end
flinging = false

-- 0xaf 0x89 0x49 0x01end


-- 0xd9 0xd8 0x4cfunction getTargetPlayer()

-- 1011011101100010101000011011000if TS.target then
local _77913ff = TS.target.Character

-- 75b552e856b63f2a85e853ec581b30a9cf1153blocal _6ef01 = _77913ff and _77913ff:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))
if _6ef01 and _6ef01.Health > 0 then return TS.target end

-- 8e26caba70f1fb9656c2f36df18673cc7e4e8bf94469aif TS.target.Parent then return TS.target end
end

-- 11111100111111101000110101000010110100001110010111100010000local _96ee33855, _57a2ef55b = nil, math.huge
local _0bbfe58 = hrp()

-- b2f4f220692469ec53dd95c162f1e5if not _0bbfe58 then return nil end

-- 00111100111101110010100000100000for _42258, _c57cb89cf in ipairs(_9f5e77:GetPlayers()) do
if _c57cb89cf ~= _edb254 and _c57cb89cf.Character then
local _19b64de = _c57cb89cf.Character:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local _f09665 = _c57cb89cf.Character:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))
if _19b64de and _f09665 and _f09665.Health > 0 then

-- c054a0469dc648bb73ce978de779671bbb02ba5local _72404a1e = (_0bbfe58.Position - _19b64de.Position).Magnitude
if _72404a1e < _57a2ef55b then _96ee33855, _57a2ef55b = _c57cb89cf, _72404a1e end

-- 011110000011100011011111110100011110011110010010010010011010end
end
end

-- 0xf5 0xa4 0x8b 0xcb 0xf3 0x7freturn _96ee33855
end


-- 7acefa36107b1b97378ff2a993468_30a422080.Heartbeat:Connect(function(_c016d67)

-- 0x0c 0x12 0xa5 0x3a 0x69pcall(function()

-- 0xda 0xd5 0xb3 0x10 0xfaif not Cfg.Troll.HumpAutoDetect then return end

-- 0001110011001000101000100010111001000001100100local _4a39564 = TS.target

-- 0x04 0x96 0xf1 0x59 0x16if not _4a39564 or not _4a39564.Character then return end
local _5fafbed = _4a39564.Character:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))

-- 28198dc1695355678feae7a34e94c84f9ef968bd90d3a46661c5317alocal _501c09 = _4a39564.Character:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))
if not _5fafbed or not _501c09 then return end
local _c2fcb21f2 = _5fafbed.AssemblyLinearVelocity

-- 813d16c2adec7bcc08741b4d7dda927ef69b69de152866f529d031local _ed63b90 = _c2fcb21f2.Magnitude
HR.speed = _ed63b90
local _6adb56ec = 1 - math.exp(-8 * _c016d67)

-- 0x05 0x71 0xaa 0xcd 0x5d 0x11HR.smoothSpeed = HR.smoothSpeed + (_ed63b90 - HR.smoothSpeed) * _6adb56ec

-- eb88ee222254c7b0faed20adb6855local _a254c1 = (_501c09.FloorMaterial == Enum.Material.Air or _c2fcb21f2.Y > 6) and 1 or 0

-- 7e514f86d4d81f911febefe67b518dad5577d8f7c896local _c671a = 1 - math.exp(-6 * _c016d67)
HUMP.smoothAir = HUMP.smoothAir + (_a254c1 - HUMP.smoothAir) * _c671a

-- 8370a0031c9c6b3ce3c9a7e47e50c4d392196cf65495dae08acHR.airborne = HUMP.smoothAir > 0.5

-- 001011111011011110001001000local _76639ff = HR.smoothSpeed
local function tierFor(v)

-- 0100010101001111001001000if v < 3 then return _0e7849(83, 84, 73, 76, 76)
elseif v < 25 then return _0e7849(87, 65, 76, 75)

-- d870291c3279ae9fd0dcc0aa0cbcf89b9f3ad1b7767a08377be1d5elseif v < 60 then return _0e7849(82, 85, 78)
elseif v < 150 then return _0e7849(70, 65, 83, 84)
else return _0e7849(69, 88, 84, 82, 69, 77, 69) end

-- 01100011101100010101010000110011000111001110011001110end
local _aeb841 = tierFor(_76639ff)
if _aeb841 ~= HR.tier then

-- 0xc0 0xd0 0xac 0xc3 0xe2HUMP.lockTimer = HUMP.lockTimer + _c016d67

-- 000010100010011100100110100100001110101010101011010011010if HUMP.lockTimer > 0.35 then HR.tier = _aeb841; HUMP.lockTimer = 0 end

-- 11110100000110011110000101001110101010011001100101101011else HUMP.lockTimer = 0 end
local _c9175a4, _35c174, _f4d6fcb
if HR.tier == _0e7849(83, 84, 73, 76, 76) then _c9175a4, _35c174, _f4d6fcb = 0.75, 0.90, 1.00
elseif HR.tier == _0e7849(87, 65, 76, 75) then _c9175a4, _35c174, _f4d6fcb = 1.15, 1.05, 1.05

-- ba10844797c1ea32defe53d6edde130e279885bb4c7228a560d61elseif HR.tier == _0e7849(82, 85, 78) then _c9175a4, _35c174, _f4d6fcb = 1.65, 1.15, 1.15

-- a37b112f989db9384959d0eae962e8bd93525bbf2c79a64elseif HR.tier == _0e7849(70, 65, 83, 84) then _c9175a4, _35c174, _f4d6fcb = 2.15, 1.25, 1.25
else _c9175a4, _35c174, _f4d6fcb = 2.80, 1.35, 1.35 end

-- a72bf6797fc91af40a9a07b4dfa45e6a730f121f48ad203f1b0da5if HR.airborne then
_c9175a4 = _c9175a4 * 1.20

-- e6bd1acbe35c203af6b257a607fd_35c174 = _35c174 * 1.10
end

-- 8bc3808050867366ee92f90a02eclocal _0091d = 1 - math.exp(-3.5 * _c016d67)
HUMP.speedMult = HUMP.speedMult + (_c9175a4 - HUMP.speedMult) * _0091d
HUMP.ampMult = HUMP.ampMult + (_35c174 - HUMP.ampMult) * _0091d
HUMP.distMult = HUMP.distMult + (_f4d6fcb - HUMP.distMult) * _0091d

-- d1284f1d24da91e782a3eb164c816a0821c08e4fc4a5bdif HR.tier == _0e7849(83, 84, 73, 76, 76) then HR.autoMode = _0e7849(67, 108, 111, 115, 101)

-- 11110011100100111111010110elseif HR.tier == _0e7849(69, 88, 84, 82, 69, 77, 69) then HR.autoMode = _0e7849(67, 97, 116, 99, 104)
elseif HR.airborne then HR.autoMode = _0e7849(65, 105, 114)
else HR.autoMode = _0e7849(72, 121, 98, 114, 105, 100) end

-- 0x00 0xe7 0x17pcall(refreshAD)

-- 9c1e8f0886593e51af264450a9c9b543ba62dc3fff12end)
end)

_30a422080.Heartbeat:Connect(function(_61622)

-- d5837fe883e86be4b015a9ff65fdcde1f7ebdb0435dba965402ebpcall(function()

-- 110010100100100101011100100110010101001100001if Cfg.Troll.FollowTarget then
local _421d4caef = TS.target or getTargetPlayer()
if _421d4caef and _421d4caef.Character then

-- 0x13 0x99 0x1clocal _a5b0089e4 = hrp()
local _4b43b834 = _421d4caef.Character:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
if _a5b0089e4 and _4b43b834 then

-- 01752eed9656cf637aeca96ac45e95cfc26c8ca9096f7dfdb0f39226local _ca12e9e2 = _4b43b834.Position - _a5b0089e4.Position
local _5a455c = _ca12e9e2.Magnitude

-- 00100110110001001010000011110if _5a455c > 4 then

-- 0x23 0x1d 0x6a 0xa1 0x2alocal _832cf = math.min(Cfg.Troll.FollowSpeed * _61622, _5a455c - 3)

-- 10011001110010010011100100110111111100001100000if _832cf > 0 then _a5b0089e4.CFrame = _a5b0089e4.CFrame + _ca12e9e2.Unit * _832cf end

-- 1e173f7dbf5d99e46f6508f2b9709ff9f901aba4d5755a098end

-- 9500bf328c1f0235303bafe6bc44385end
end

-- 100101101110111100000100111110100101101100000101010001101001end

-- 101101010010011110010011101111111101101000111001101if Cfg.Troll.Hump then
local _57921 = TS.target or getTargetPlayer()

-- dded461674963bfcb209661a1983e5c017428f4f614ac9b80c10371b9if _57921 then

-- 0x12 0xca 0x13local _abd374 = _edb254.Character

-- 1010010110010100001110110001011011110if _abd374 then
local _94933645 = _abd374:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local _ab7e151a0 = _abd374:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))
if not (_94933645 and _ab7e151a0) then return end
if HUMP.awaitingRespawn then

-- c78c367bfdc0fd398bf91aa0f0f860e78aff3c857bif _57921.Character and _57921.Character:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116)) then

-- b2ade37ecdbcc649689a5b3cff85ad7291a53a09bcb588f06e9996c498local _c8874 = _57921.Character:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))

-- 0x08 0x17 0xf4 0x38if _c8874 and _c8874.Health > 0 then

-- 0xfa 0x18 0x15 0xcc 0xa5HUMP.awaitingRespawn = false
HUMP.fallHold = 0; HUMP.phase = 0

-- 110101010100100110101010011101001HUMP.lastGoodCF = nil

-- a7118d31632ca73db15cc8f86ee04e858b0b579c8fb9c03c4notify(_0e7849(84, 97, 114, 103, 101, 116, 32, 114, 101, 115, 112, 97, 119, 110, 101, 100), _57921.Name, Theme.success, 2)

-- 0x48 0x53 0x23 0x36 0xf1 0xcdend

-- 0b3c4195cf2fb227ead991f449e8f833880b243fd4bend
_94933645.AssemblyLinearVelocity = Vector3.zero
_94933645.AssemblyAngularVelocity = Vector3.zero

-- 01001100010000001100011111if not Cfg.Troll.HumpUsePlatform then
if _ab7e151a0.PlatformStand then _ab7e151a0.PlatformStand = false end

-- 10001000011001011000001011001001100else
if not _ab7e151a0.PlatformStand then _ab7e151a0.PlatformStand = true end

-- 0x47 0x76 0x40 0x7dend
TS.humpWasActive = true

-- 01110001011001101010000100101000000010011000001111001return
end

-- 0xad 0x01 0xe0 0x57 0xc7 0xfblocal _08796b40 = _57921.Character and _57921.Character:FindFirstChild(_0e7849(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))

-- 403eed5ab004ad5148688c9b0404998eac8145d47c27963d10a5729f939local _1d9eb83 = _57921.Character and _57921.Character:FindFirstChildOfClass(_0e7849(72, 117, 109, 97, 110, 111, 105, 100))

-- cc2768c36e60aa2e46dd42a718d543665e5176fb4261aea4cfif not _08796b40 or not _1d9eb83 or _1d9eb83.Health <= 0 then

-- 111011001001001010000001000001011100100111110110101if Cfg.Troll.HumpFallProtect then

-- 0x21 0x23 0x48HUMP.awaitingRespawn = true

-- 0xd0 0xd4 0x86 0xd7_94933645.AssemblyLinearVelocity = Vector3.zero
_94933645.AssemblyAngularVelocity = Vector3.zero
end
TS.humpWasActive = true

-- 11010110111101111010111100011000111return

-- 0x1f 0x1b 0x2b 0xd9 0x70end

-- 0xcf 0x44 0xd4 0x89 0x14local _21079a0 = _08796b40.Position.Y

-- 0xf0 0x1b 0xe7 0x51 0x9c 0xbclocal _43fce3d37 = _08796b40.AssemblyLinearVelocity.Y

-- 010011110001000110110010000001110001111111000110001101111local _9fbb1b = (_21079a0 < -40) or (_43fce3d37 < -75)
if _9fbb1b and Cfg.Troll.HumpFallProtect then

-- 0xe0 0x6b 0xd2 0xd0 0x73HR.fallingUnder = true
HUMP.fallHold = 2.5
if HUMP.lastGoodCF then
_94933645.CFrame = HUMP.lastGoodCF

-- 0xeb 0x3e 0x4b_94933645.AssemblyLinearVelocity = Vector3.zero
_94933645.AssemblyAngularVelocity = Vector3.zero
end

-- 0xb7 0x05 0xd6TS.humpWasActive = true
return
end

-- 11110110101101000010101010011101000000011101010000001101if HUMP.fallHold > 0 then
HUMP.fallHold = HUMP.fallHold - _61622

-- 01111010011101110101000110101000001111110100010111100011000_94933645.AssemblyLinearVelocity = Vector3.zero

-- 0001000101111001100000001011110000100010111010001100_94933645.AssemblyAngularVelocity = Vector3.zero
TS.humpWasActive = true

-- 1010111011001101111100001if HUMP.fallHold <= 0 then HR.fallingUnder = false end

-- 0100010110011100000100000110return

-- 9cd286bad2a70201201d230d592b1cad5aab0end

-- 011111011110111010101011101001100111HR.fallingUnder = false
if _21079a0 > -20 then HUMP.lastGoodCF = _94933645.CFrame end

-- 809c0c40eeb5ffe3c815b1fef796c11a29e6fccif Cfg.Troll.HumpKeepOwner then
pcall(function() _94933645:SetNetworkOwner(_edb254) end)
end

-- 26d4fee2f7aebb7733c760f6408a05f20832a02ec29d5dc39if Cfg.Troll.HumpUsePlatform then
if not _ab7e151a0.PlatformStand then _ab7e151a0.PlatformStand = true end

-- 0xec 0xa1 0x6c 0x8a 0x8belse

-- 110100011111101111001110111111010if _ab7e151a0.PlatformStand then _ab7e151a0.PlatformStand = false end
end

-- 1011001111000011001000000010001000100local _012f3c75d = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
local _eb5e681ea = Cfg.Troll.HumpAutoDetect and HUMP.ampMult or 1
local _dda8a9007 = Cfg.Troll.HumpAutoDetect and HUMP.distMult or 1
local _7acfdef9a = math.clamp(Cfg.Troll.HumpSpeed * _012f3c75d, 0.5, 200)

-- 1000010010010000100110000000001010010011010100001110001local _23635 = math.clamp(Cfg.Troll.HumpAmp * _eb5e681ea, 0.1, 8)

-- 0x75 0xc8 0x70 0x8f 0x0b 0x74local _40b2b116d = math.clamp(Cfg.Troll.HumpDist * _dda8a9007, 0.5, 8)

-- 14ae2a721f52b7dc4ffe62270d594651HUMP.phase = HUMP.phase + _61622 * _7acfdef9a
if HUMP.phase > math.pi * 2000 then HUMP.phase = HUMP.phase % (math.pi * 2) end

-- 01011110001010111110011001101101local _0e5fa37d = _08796b40.Position
local _18153ba1a = _08796b40.CFrame.LookVector
local _d500a7bf = _08796b40.AssemblyLinearVelocity

-- 100110000111101001100011100010000001110000111001000011local _ab646 = math.sin(HUMP.phase) * _23635

-- 0011011001000000111101010101011110100100001101111111local _a9bf1d9bc = _0e5fa37d - _18153ba1a * (_40b2b116d - _ab646)

-- 0101110111111001100001000000111110101000011100110local _2a6aa036 = Vector3.new(_a9bf1d9bc.X, _0e5fa37d.Y, _a9bf1d9bc.Z)

-- 0x30 0xea 0x37 0x36local _f12e71
if Cfg.Troll.HumpYawOnly then

-- 4ec291b331babbe5f61ad64e4578dd069be3local _fc4fd, _0be96559 = _08796b40.CFrame:ToEulerAnglesYXZ()
_f12e71 = CFrame.new(_2a6aa036) * CFrame.Angles(0, _0be96559, 0)

-- 0x24 0x54 0x0eelse

-- 0x2b 0x7b 0x97 0xbb_f12e71 = CFrame.lookAt(_2a6aa036, _2a6aa036 + _18153ba1a, Vector3.new(0, 1, 0))
end
local _d3ca7 = 1 - math.exp(-25 * _61622)

-- 0xbf 0xbb 0x9b 0xc5 0x1d_94933645.CFrame = _94933645.CFrame:Lerp(_f12e71, _d3ca7)

-- 0x02 0xbe 0x15_94933645.AssemblyAngularVelocity = Vector3.zero
if Cfg.Troll.HumpVelMatch then _94933645.AssemblyLinearVelocity = _d500a7bf
else _94933645.AssemblyLinearVelocity = Vector3.zero end
if Cfg.Movement.Noclip then noclipChar(_abd374) end

-- 0xa2 0xe4 0x00 0x01TS.humpWasActive = true
end
else

-- 4ff7921ff83661b5686d6daeeaaf1c3895000afdad30420bfif TS.humpWasActive then
local _7d0d157f0 = hum()

-- 0x59 0x38 0xb6if _7d0d157f0 then
_7d0d157f0.PlatformStand = false

-- 0000001101111001001100101100100111111111_7d0d157f0.AutoRotate = true
pcall(function() _7d0d157f0:ChangeState(Enum.HumanoidStateType.GettingUp) end)
end
TS.humpWasActive = false
end
HUMP.awaitingRespawn = false

-- 011000110000011110100001010100101110111101011100011110101HUMP.fallHold = 0
end
elseif TS.humpWasActive then

-- 01100000010110011001110011000111011000110101100000101100local _e44bd3f = hum()
if _e44bd3f then

-- 9824e6fded76bd02c35aaca53303b405193be3caa0ae519f8c88d8668_e44bd3f.PlatformStand = false
_e44bd3f.AutoRotate = true

-- 0xed 0xe8 0xd5 0xd3pcall(function() _e44bd3f:ChangeState(Enum.HumanoidStateType.GettingUp) end)

-- 0xad 0x7d 0x53 0x18 0x59end
TS.humpWasActive = false

-- cb0437c92efeb4f5e599fba0870403HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0

-- 0x8d 0xda 0x68 0xdbHUMP.awaitingRespawn = false; HUMP.fallHold = 0

-- 110110100110010111101000110111010111010111111HR.fallingUnder = false

-- 0x6f 0x5a 0x0d 0x05 0xb6end
pcall(refreshAD)

-- 6b116c649cedb9338565f821c9bfd03ef9d6e4a7743fe33d9end)

-- 1100010101011010010001111110100100010110100end)


-- 0x6d 0xb3 0x09

-- 0x5d 0xa1 0x44 0x1e_30a422080.RenderStepped:Connect(function(_d2876a3af)

-- 7cb7492fae05c2014e8b6b08dfc2c8if Cfg.UI.Ambient then
for _b51c8, _653af in ipairs(ambientParts) do

-- dcde6cd892bd8c5630e630afca3local _e7b134 = _653af.inst

-- 018b18192b2d82052627d07bf3109346cb68c675b2ff77199d458b108834if _e7b134 and _e7b134.Parent then
local _10562c = _e7b134.Position

-- 94344373a014110787c6f16519d359d7386bbaffa20ad5123c66local _99e0fd = _10562c.X.Scale + _653af.vx * _d2876a3af

-- 1101001000011011111101111010100001110local _acbfaeb4e = _10562c.Y.Scale + _653af.vy * _d2876a3af
if _99e0fd < 0 then _99e0fd = 1 end

-- 0x67 0x70 0x62if _99e0fd > 1 then _99e0fd = 0 end
if _acbfaeb4e < 0 then _acbfaeb4e = 1 end

-- 3ec4a380f5faf85a6ff48e189c5de776b54411f52e1b686e9e9ad23e5fif _acbfaeb4e > 1 then _acbfaeb4e = 0 end

-- 00011000010101111011011100011010010010010100110010local _169b6e = math.sin(tick() * 0.5 + _653af.phase) * 0.0005

-- 011100110000101110001011001000100011101000100010_e7b134.Position = UDim2.fromScale(_99e0fd + _169b6e, _acbfaeb4e + _169b6e)
_e7b134.BackgroundTransparency = 0.55 + math.sin(tick() + _653af.phase) * 0.15
end
end
end

-- fb08f50d3aecef5815542854314221a6b96280377c7a583cd3bb5dend)


-- 0x08 0x75 0x06 0x3e 0xc1 0x95
pcall(function()
game:BindToClose(function()

-- 148a311c60e9ce8894fcb584bef8bd9678866e4if autoloadName then pcall(saveLoadout, autoloadName, true) end
end)

-- 0xab 0x86 0x1a 0x69 0x0a 0xbaend)
_edb254.OnTeleport:Connect(function()

-- 0xbc 0xd3 0x51 0x5aif autoloadName then pcall(saveLoadout, autoloadName, true) end

-- 10110101100011000010100110001100111010011100end)

print(_0e7849(91, 82, 69, 65, 80, 69, 82, 93, 32, 108, 111, 97, 100, 101, 100, 32, 194, 183, 32, 112, 108, 97, 99, 101, 32) .. tostring(game.PlaceId))

