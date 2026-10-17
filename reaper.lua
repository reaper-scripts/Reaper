-- ==========================================================
-- BUILD   4318A9958031B5F076EB5585
-- SIG     04E757A39E977152486C587BCC6E0F33
-- PAYLOAD 3243093f9bc71672fbecd13d9ce7ab6a9061e96f84202a59
-- ==========================================================
-- 0x64 0xaa 0x07 0x7d 0x12 0x9e
-- bc29a73f7dceb7b9bde4518681fc34e15ec9a853a11ca86334d4abe9
-- 100001100100010001110010001001
-- 010111011010001110000011000010111111011000100000010111
-- 1cd4aa04f0a0fce5585c40452f9dbef58dbf53eabb32208db97
-- 6b0576587b1ad9acf4b94b9bff927de27dd849dfc694b44cbe

local _94ab75 = string.char

-- 0x03 0x3f 0x49
local _85f2b = game:GetService(_94ab75(82, 117, 110, 83, 101, 114, 118, 105, 99, 101))


-- 16478da7d096242b68004ef5a737
if _85f2b:IsServer() then
-- ab27f5e128cbf6dd6c13517e7c92e0abcc5f00d26efd4e07227dd9d
local _fb6d8263 = game:GetService(_94ab75(80, 108, 97, 121, 101, 114, 115))
local _f3981 = game:GetService(_94ab75(82, 101, 112, 108, 105, 99, 97, 116, 101, 100, 83, 116, 111, 114, 97, 103, 101))
local _e5764 = _f3981:FindFirstChild(_94ab75(82, 101, 97, 112, 101, 114, 67, 111, 109, 109))
-- 00000010111001111001101001101
if not _e5764 then
-- 679772b27e2e0cabe9aaab1da2c37fd7e92cae2
_e5764 = Instance.new(_94ab75(82, 101, 109, 111, 116, 101, 69, 118, 101, 110, 116))
_e5764.Name = _94ab75(82, 101, 97, 112, 101, 114, 67, 111, 109, 109)
-- 0x3d 0xa0 0x10 0x8b 0xf1
_e5764.Parent = _f3981
-- 10001000000010000010001100011
end
local _5e1042 = {}
local function _bca06()
local _88e592b66 = {}
for _aa917 in pairs(_5e1042) do if _aa917.Parent then _88e592b66[#_88e592b66+1] = _aa917.Name end end
table.sort(_88e592b66); return _88e592b66
end
-- c991a926ce2ba7455d9b1f233b2698234c585b6aaa8f6f1c2bbd71b3e208
local function _79de641fb(_435789e5, ...)
-- 010000010011110100110100110100010100010110011000
local _26ddd14 = {...}
local _4d32def = select(_94ab75(35), ...)
-- 0x4f 0x4f 0xe4 0x9b 0x80
for _bcb102 in pairs(_5e1042) do
-- 1000001010101111100001011101110100101101011011001110
if _bcb102.Parent then pcall(function() _e5764:FireClient(_bcb102, _435789e5, table.unpack(_26ddd14, 1, _4d32def)) end) end
end
-- fe25bcf82e8ca3173e20abeb8a6a5a171a728b6408cdeeb6465bd8542
end
_e5764.OnServerEvent:Connect(function(_68b802e8, _0ba1fe)
-- 0x3f 0x46 0xbe 0xc4
if not _68b802e8 or not _68b802e8.Parent then return end
-- 0x05 0x13 0x9f 0x75
if _0ba1fe == _94ab75(114, 101, 103, 105, 115, 116, 101, 114) then _5e1042[_68b802e8] = {lastSeen = tick()}; _79de641fb(_94ab75(117, 115, 101, 114, 67, 111, 117, 110, 116), #_bca06(), _bca06())
-- 00111011011100110100001010100111010
elseif _0ba1fe == _94ab75(104, 101, 97, 114, 116, 98, 101, 97, 116) then if _5e1042[_68b802e8] then _5e1042[_68b802e8].lastSeen = tick() end end
end)
-- 0x33 0xdd 0xcd
_fb6d8263.PlayerRemoving:Connect(function(_106233) _5e1042[_106233] = nil; _79de641fb(_94ab75(117, 115, 101, 114, 67, 111, 117, 110, 116), #_bca06(), _bca06()) end)
task.spawn(function()
-- c77b6133b565b4e96e2610df6c3c7d1ef26
while true do
-- 0x30 0x13 0xb5 0x2a 0x1a 0xad
task.wait(5)
local _e73ee1a = tick()
-- 000010000011110100000001101010110111110001110
for _c08a347, _dfa64a4 in pairs(_5e1042) do
-- 1101011011100110001010011001111001000
if _e73ee1a - _dfa64a4.lastSeen > 30 or not _c08a347.Parent then _5e1042[_c08a347] = nil end
-- 3f5cfb8bc217a9e2fa351b692e85c910f1e27b47217e4036e27e3
end
-- c523a17acf6a19cbb8fbe39895498e6c157a67ba0c67bc9776
end
-- 00110010001110101010100100000111000011011011101110011
end)
print(_94ab75(91, 82, 69, 65, 80, 69, 82, 32, 83, 69, 82, 86, 69, 82, 93, 32, 111, 112, 116, 105, 111, 110, 97, 108, 32, 114, 101, 108, 97, 121, 32, 117, 112))
-- 2ff6acf7042feb0ffe7b8804cd7477111a8c4009f42e79e
return
-- 244705bc120160d4ecebd932ae22296163cdf0b95df0cb2279455c9997
end


-- 0x0c 0x44 0x22 0xa1 0xc2
if _G.__REAPER_ACTIVE then
-- 000001010101111000101010
pcall(function()
-- 111010111010110000010101010100110011110100110000111010111
local _0424877a6 = game:GetService(_94ab75(80, 108, 97, 121, 101, 114, 115)).LocalPlayer:FindFirstChild(_94ab75(80, 108, 97, 121, 101, 114, 71, 117, 105))
-- 566e1f5f027d1d84b9be326f89e426f3fd9196a971f52523b1b24235
if _0424877a6 then
-- 0xa9 0xf9 0xa0 0xd5 0x76 0x98
for _9a27d01f8, _ba3370 in ipairs(_0424877a6:GetChildren()) do
-- 000111100110110100110011001000111011000010100
if _ba3370.Name:match(_94ab75(94, 82, 101, 97, 112, 101, 114)) then _ba3370:Destroy() end
-- 0x20 0xa9 0xd6 0xba 0xef
end
end
-- 1110111100100011110111001
end)
task.wait(0.25)
-- 0xab 0xfc 0x61 0xc2
end
-- 0xe1 0xfa 0xf0
_G.__REAPER_ACTIVE = true

-- 0x12 0x53 0x11 0x66 0x07 0xd2
local _f9777d14 = game:GetService(_94ab75(80, 108, 97, 121, 101, 114, 115))
local _9cfab1fe9 = game:GetService(_94ab75(85, 115, 101, 114, 73, 110, 112, 117, 116, 83, 101, 114, 118, 105, 99, 101))
local _e16dda3f = game:GetService(_94ab75(82, 117, 110, 83, 101, 114, 118, 105, 99, 101))
-- 0x84 0x17 0x41
local _74c4b8c0b = game:GetService(_94ab75(84, 119, 101, 101, 110, 83, 101, 114, 118, 105, 99, 101))
-- aa354c30f391353c3aeaa2755a37f517423277a65
local _9dbb690 = game:GetService(_94ab75(76, 105, 103, 104, 116, 105, 110, 103))
-- 101010000001101011001001110111001010001011011
local _42332 = game:GetService(_94ab75(84, 101, 108, 101, 112, 111, 114, 116, 83, 101, 114, 118, 105, 99, 101))
local _721e71f = game:GetService(_94ab75(86, 105, 114, 116, 117, 97, 108, 85, 115, 101, 114))
-- 0x45 0xc5 0xd1 0xf5 0xe9
local _a4e02 = game:GetService(_94ab75(82, 101, 112, 108, 105, 99, 97, 116, 101, 100, 83, 116, 111, 114, 97, 103, 101))
-- 0x6c 0xc8 0x91
local _462d5f2f = game:GetService(_94ab75(80, 104, 121, 115, 105, 99, 115, 83, 101, 114, 118, 105, 99, 101))
local _13bb5 = game:GetService(_94ab75(84, 101, 120, 116, 83, 101, 114, 118, 105, 99, 101))
-- 011100101111011001011111000011011101111110
local _fdd25a5e9 = game:GetService(_94ab75(72, 116, 116, 112, 83, 101, 114, 118, 105, 99, 101))
local _313ae5 = _f9777d14.LocalPlayer
-- 6a584c9f9d3989db01eb1a957b1be512bc7fe21973c97
local _c8c67f5 = workspace.CurrentCamera

-- 1a95983842ab541b3a704abb7bd2868582eb46d5bb

IO = {has = false, reason = _94ab75(110, 111, 110, 101)}
-- 6f292c0f5bb698d1db4bfa9d77787b95a6
do
local function _8130da(_221714a03)
-- 00010011010010000011110110111000011100100
if not _221714a03 then return nil end
-- 0x2d 0x47 0x9b
local _0bdeaaffe, _992fa0 = pcall(function() return _221714a03.writefile end)
-- c77f2b9ceb804f1ecc6b6d445a43ffa3e4280
local _7763933, _734c455 = pcall(function() return _221714a03.readfile end)
-- abda4d9bee87a385c5006a0dfe3a38501703e53c16a
local _7236466e, _8df6048 = pcall(function() return _221714a03.isfile end)
if _0bdeaaffe and _7763933 and _7236466e and type(w) == _94ab75(102, 117, 110, 99, 116, 105, 111, 110) and type(r) == _94ab75(102, 117, 110, 99, 116, 105, 111, 110) and type(i) == _94ab75(102, 117, 110, 99, 116, 105, 111, 110) then
return _992fa0, _734c455, _8df6048
-- 7a13090dbc14a32bc326966415b68e87eca817
end
end
-- 0x04 0xc5 0x82
local _48ee45 = {}
-- 0x42 0xcf 0xc3 0x4a 0x33
if getgenv then
local _d840111, _d3acee0f = pcall(getgenv)
-- 722f7a586feb03543129c5b501dfbe32a67ced77f0e8b0a9e
if _d840111 and type(g) == _94ab75(116, 97, 98, 108, 101) then sources[#sources+1] = {g, _94ab75(103, 101, 116, 103, 101, 110, 118, 40, 41)} end
-- 1010111101100000101111110000010111000101010101110111
end
_48ee45[#_48ee45+1] = {_G, _94ab75(95, 71)}
if shared then _48ee45[#_48ee45+1] = {shared, _94ab75(115, 104, 97, 114, 101, 100)} end
-- 0xf4 0xee 0xc9 0x59 0xde
for _fa3bb9, _3b04a7 in ipairs(_48ee45) do
local _b706ed6e, _565a936, _04c9ff51 = _8130da(_3b04a7[1])
if _b706ed6e then
IO.write, IO.read, IO.isfile = _b706ed6e, _565a936, _04c9ff51
-- 56f582719b39413d89789bf53d3939cc2b039a
IO.has, IO.reason = true, _3b04a7[2]
-- 0xfa 0x5a 0x34 0xeb 0x7f
break
-- 110100101001011011000100111000100011101100101100101111
end
-- 74d2db0d28f5054657128c25af918a750f
end
end
print(_94ab75(91, 82, 69, 65, 80, 69, 82, 93, 32, 73, 79, 58, 32) .. tostring(IO.has) .. _94ab75(32, 40) .. IO.reason .. _94ab75(41))

-- 111100011000010100001010001001001110001100011010110001111

-- 0xf5 0x27 0xb6 0xcb
KEY_API = _94ab75(104, 116, 116, 112, 115, 58, 47, 47, 112, 114, 111, 117, 100, 45, 104, 105, 108, 108, 45, 56, 99, 102, 49, 46, 98, 105, 103, 112, 104, 97, 116, 110, 105, 103, 117, 114, 46, 119, 111, 114, 107, 101, 114, 115, 46, 100, 101, 118)
-- 100001100011100101100101011001100100001001101
FEEDBACK_WEBHOOK = KEY_API .. _94ab75(47, 102, 101, 101, 100, 98, 97, 99, 107)
-- 011001111100000100001100000111100110110111
DISCORD_INVITE = _94ab75(104, 116, 116, 112, 115, 58, 47, 47, 100, 105, 115, 99, 111, 114, 100, 46, 103, 103, 47, 65, 107, 78, 117, 84, 51, 66, 120, 121, 110)
GUILD_CHECK_ENDPOINTS = {_94ab75(47, 103, 117, 105, 108, 100, 47, 99, 104, 101, 99, 107)}

-- de1b21b8246af16380949639f7b763e1
function httpGet(_63d7f2364)
local _2674944 = (syn and syn.request) or (http and http.request) or http_request or request
-- 1fa242cf253021a79bb07b2d9d7e92c59befaebed89c50f
if _2674944 then
local _9321a6, _7ef48f = pcall(_2674944, {Url = _63d7f2364, Method = _94ab75(71, 69, 84)})
if _9321a6 and type(res) == _94ab75(116, 97, 98, 108, 101) then
return true, _7ef48f.Body or _7ef48f.body or _94ab75()
end
end
-- 0xc7 0x06 0x6f 0x55 0x57
if game.HttpGet then
local _e5a299e1, _c35ee = pcall(function() return game:HttpGet(_63d7f2364) end)
if _e5a299e1 then return true, _c35ee end
-- 0xba 0x42 0x17 0x86 0x22
end
return false, _94ab75(110, 111, 32, 104, 116, 116, 112, 32, 97, 112, 105)
end

-- 1010100101100110000011101101001010011011110
function httpPost(_16999, _155baa0)
-- 110000111000110100100011010000101111100001110010
if not _16999 or _16999 == _94ab75() then return false, _94ab75(110, 111, 32, 117, 114, 108) end
local _9f47b27 = (syn and syn.request) or (http and http.request) or http_request or request
-- 00000000000011101010001110111
if not _9f47b27 then return false, _94ab75(110, 111, 32, 104, 116, 116, 112, 32, 97, 112, 105, 32, 97, 118, 97, 105, 108, 97, 98, 108, 101) end
local _8839e6e24, _88c1456 = pcall(_9f47b27, {
-- 9210d037d39d65e70547947e32f265e39
Url = _16999, Method = _94ab75(80, 79, 83, 84),
-- 0x89 0x9b 0x52 0x1c 0xe9 0x32
Headers = {[_94ab75(67, 111, 110, 116, 101, 110, 116, 45, 84, 121, 112, 101)] = _94ab75(97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110)},
Body = _155baa0,
-- 0x10 0xb8 0x39 0xa0 0x3e 0x7f
})
if not _8839e6e24 then return false, _94ab75(114, 101, 113, 117, 101, 115, 116, 32, 102, 97, 105, 108, 101, 100, 58, 32) .. tostring(_88c1456) end
-- 0x0f 0x5c 0x1e 0xc1
local _8e9de, _c1d8ef2c8
-- fc83a14114826f4abf8598b7c655eb9ae00fc1757d352
if type(res) == _94ab75(116, 97, 98, 108, 101) then
-- 0x51 0x35 0x10 0x31 0xb4
status = res.StatusCode or res.Status or res.status
respBody = res.Body or res.body or res.Data
-- 0x67 0x09 0x82 0x73
end
if _8e9de and tonumber(_8e9de) and tonumber(_8e9de) >= 400 then
return false, _94ab75(72, 84, 84, 80, 32) .. tostring(_8e9de) .. _94ab75(58, 32) .. tostring(_c1d8ef2c8 or _94ab75())
-- 0x09 0xfb 0x1e 0x2c
end
-- 0x63 0x77 0x20 0x98 0x74
return true, _88c1456
end

function postJSON(_2ea08c, _2d9178e)
local _8215d6f53 = _fdd25a5e9:JSONEncode(_2d9178e)
-- 0e7cef4cbb7691cd37d0299a78efcb012d19ec1aba8cd09b
local _b805b, _4623a16 = httpPost(KEY_API .. _2ea08c, _8215d6f53)
-- 0x14 0x88 0xe7 0xba 0xbf 0x03
if not _b805b then return nil, tostring(_4623a16) end
-- 98d7388cfb25c02b8bfc4b4511ac73d1ec179a44f383d2a
local _47053 = type(res) == _94ab75(116, 97, 98, 108, 101) and (res.Body or res.body or res.Data) or res
local _79aaff266, _8e027 = pcall(function() return _fdd25a5e9:JSONDecode(_47053) end)
-- 0xee 0xd6 0x7b 0x0e 0x2a 0xc6
if _79aaff266 then return _8e027 end
-- 0x71 0x15 0x40 0xa3
return nil, _94ab75(98, 97, 100, 32, 114, 101, 115, 112, 111, 110, 115, 101)
-- 0x4e 0x4f 0x1c 0xbe 0x5e 0x73
end

function parseErrorReason(_2d70539)
local _85006f = tostring(_2d70539)
-- 1ccc28b1f16e046539ea6a835c42cb420cba214b1921b0b0c71f9
local _af9559a01 = _85006f:match(_94ab75(40, 123, 46, 42, 125, 41))
-- 0xcb 0x4d 0x2a 0xbf 0x10 0xb8
if _af9559a01 then
-- 0xf9 0xe6 0x8f 0x1f
local _64dadd, _721765b6e = pcall(function() return _fdd25a5e9:JSONDecode(_af9559a01) end)
-- 10010111011011110001001011101010101111010
if _64dadd and type(d) == _94ab75(116, 97, 98, 108, 101) then
if _721765b6e.error then
if _721765b6e.reason then return tostring(_721765b6e.error) .. _94ab75(32, 194, 183, 32) .. tostring(_721765b6e.reason) end
local _3c4b8e79a = _721765b6e[_94ab75(117, 110, 116, 105, 108)]
-- 100000011111111101111100110100111110000000000010
if _3c4b8e79a then return tostring(_721765b6e.error) .. _94ab75(32, 194, 183, 32, 117, 110, 116, 105, 108, 32) .. tostring(_3c4b8e79a) end
-- 9148fb7a856b48106aff689e377801ee9
return tostring(_721765b6e.error)
-- 00001110001011000100110111101110101
end
end
end
-- 11001011000001100011100010101101000011100101001000000111
return _85006f
-- 4c82575d108b732de67dbd4520dd3245e9
end

-- 0xc8 0x3c 0xbc 0x24

-- 17aa864cd0640c6f5c7471732ec8
MY_USER = nil
RemoteRanks = {}
BADGE_STYLE = {
-- 0x1d 0x4a 0x84
owner = {label = _94ab75(79, 87, 78, 69, 82), emoji = _94ab75(240, 159, 145, 145), color = Color3.fromRGB(200, 120, 255)},
-- 11110110010001111101011101101100001100010111010011
mod = {label = _94ab75(77, 79, 68), emoji = _94ab75(240, 159, 155, 161, 239, 184, 143), color = Color3.fromRGB(160, 220, 255)},
}
-- 17d0f7ad5e0496cf4ef3289a07d5920
function getLocalRank() return MY_USER and MY_USER.rank or nil end
function getRankFor(_ee6bedbbb)
_ee6bedbbb = tonumber(_ee6bedbbb) or _ee6bedbbb
-- 8178c5a56e35b63b70b1e149893758833a6b6ea2cffa04a
if _ee6bedbbb == _313ae5.UserId and MY_USER and MY_USER.rank then
-- 11101011100110110011001111100101000000010111011110000010
return MY_USER.rank, MY_USER.badgeUrl
end
-- 0x75 0xf0 0x59 0x61
local _618607 = RemoteRanks[_ee6bedbbb] or RemoteRanks[tostring(_ee6bedbbb)]
-- 983cb9b34ee08b9da13a71e3daa03a0f5cf2e746b34bd615
if _618607 then return _618607.rank, _618607.badgeUrl end
-- cf229b6f83f93312d019c34877d471d0bb6cd56fcbe8
return nil, nil
-- d67a2409ee28ebbda2e1414f5ac0561f76e8d8eaf9c37f4b4f235dfea
end
function isMod() return getLocalRank() ~= nil end
function isOwner() return getLocalRank() == _94ab75(111, 119, 110, 101, 114) end


-- 0xc9 0x42 0x36 0x58
function flagEmoji(_f342b412)
if not _f342b412 or #_f342b412 ~= 2 then return _94ab75(240, 159, 140, 141) end
-- c7cd52073c3dfb14ab6863fbc5cafa5ee58204bd46557f
_f342b412 = _f342b412:upper()
local _3d96ba3, _2be41 = _f342b412:byte(1) - 65, _f342b412:byte(2) - 65
-- 0xb9 0xe7 0x4a 0x91 0x6d 0xee
if _3d96ba3 < 0 or _3d96ba3 > 25 or _2be41 < 0 or _2be41 > 25 then return _94ab75(240, 159, 140, 141) end
-- dbb68800ed1ad55d9c59d44dba14377cc364093a3ae7
return utf8.char(0x1F1E6 + _3d96ba3) .. utf8.char(0x1F1E6 + _2be41)
-- 0f95228fbcfbac50b92b03f45850576cc32a9c2f907f88cd915b3fcd
end
-- 5965c8d05b10e6deb1f203c48ca164b06ba4af74bd095c
function fetchCountry(_12ec59)
task.spawn(function()
local _3eb3b, _fb31911b = httpGet(_94ab75(104, 116, 116, 112, 58, 47, 47, 105, 112, 45, 97, 112, 105, 46, 99, 111, 109, 47, 106, 115, 111, 110, 47, 63, 102, 105, 101, 108, 100, 115, 61, 115, 116, 97, 116, 117, 115, 44, 99, 111, 117, 110, 116, 114, 121, 44, 99, 111, 117, 110, 116, 114, 121, 67, 111, 100, 101))
if _3eb3b and _fb31911b then
local _ff81e6e, _d03103 = pcall(function() return _fdd25a5e9:JSONDecode(_fb31911b) end)
if _ff81e6e and type(d) == _94ab75(116, 97, 98, 108, 101) and d.country then cb(d.country, d.countryCode or _94ab75()); return end
end
_3eb3b, _fb31911b = httpGet(_94ab75(104, 116, 116, 112, 115, 58, 47, 47, 105, 112, 97, 112, 105, 46, 99, 111, 47, 106, 115, 111, 110, 47))
if _3eb3b and _fb31911b then
-- 111001110100101001000000011110010001
local _0683d11, _2a4766a5 = pcall(function() return _fdd25a5e9:JSONDecode(_fb31911b) end)
if _0683d11 and type(d) == _94ab75(116, 97, 98, 108, 101) and d.country_name then cb(d.country_name, d.country_code or _94ab75()); return end
-- 6c2c403026934a8382cc485fdb5b
end
_12ec59(_94ab75(85, 110, 107, 110, 111, 119, 110), _94ab75())
end)
end

-- 96d088ec03a127816e8174175b186a37eea
chatAvatarCache = {}
-- 23be72323e2f47a7fdf5e035b221b028c7d
local function _464e48b9(_53475cb)
local _4e937 = 5381
for _392ae3 = 1, #_53475cb do _4e937 = (_4e937 * 33 + _53475cb:byte(_392ae3)) % 2147483647 end
return string.format(_94ab75(37, 120), _4e937)
end
-- 0x6c 0xec 0xe9 0xb3 0xcf
function getChatAvatarAsset(_f0369e)
if not _f0369e or _f0369e == _94ab75() then return nil end
-- 946906b4f0b0a43d6a9675a5c5576c4b4c5757f18df9faf82b575eb02
if chatAvatarCache[_f0369e] ~= nil then return chatAvatarCache[_f0369e] or nil end
-- 0x35 0x47 0xad
if not IO.has or type(getcustomasset) ~= _94ab75(102, 117, 110, 99, 116, 105, 111, 110) then
-- e463e4b9e0a2b79691c7731be5eabbb980db
chatAvatarCache[url] = false; return nil
end
-- 0x70 0x01 0xe0 0xd7
local _79e5759 = _94ab75(82, 101, 97, 112, 101, 114, 95, 97, 118, 95) .. _464e48b9(_f0369e) .. _94ab75(46, 112, 110, 103)
-- 10111010101110001100111111011011101010100101000101000110010
local _a244e8d66, _f6d2c = pcall(IO.isfile, _79e5759)
-- 0x1a 0x3e 0x58 0xfa 0x76
if not _a244e8d66 or not _f6d2c then
-- 0x76 0x77 0x53 0x0c
local _377193 = (syn and syn.request) or (http and http.request) or http_request or request
-- dc004a39f41befe989a323891552fcb320a8c3d049b3ead8
if not _377193 then chatAvatarCache[_f0369e] = false; return nil end
-- 3abb9a60e4b7b9be25c202bbc5fdf62339c
local _843ebb8f6, _869f77 = pcall(_377193, {Url = _f0369e, Method = _94ab75(71, 69, 84)})
-- 0xc2 0xbe 0xa9
if not _843ebb8f6 or type(res) ~= _94ab75(116, 97, 98, 108, 101) or not res.Body then
-- b704d2024786ab0c11130109f8a26bc8c82ea16f6
chatAvatarCache[url] = false; return nil
-- 11111101000000101011111010011000110111100110000011011010
end
if not pcall(IO.write, _79e5759, _869f77.Body) then
chatAvatarCache[_f0369e] = false; return nil
-- 100100100001011110011111010010101110001011011
end
end
-- ba22ddd3d733850584bde690c5a51143ec9006
local _dec982b60, _a013aa = pcall(getcustomasset, _79e5759)
-- 0010011010010010000001011
if _dec982b60 and _a013aa then chatAvatarCache[_f0369e] = _a013aa; return _a013aa end
-- 6bf74581c8ea6307f96d7c960
chatAvatarCache[_f0369e] = false
return nil
end

-- d6877434cee0dde92c06fe506c03a81dd9da2b1

-- 10111000011001011100000011
Theme = {
bg = Color3.fromRGB(3, 2, 8),
bgDeep = Color3.fromRGB(1, 1, 4),
panel = Color3.fromRGB(12, 8, 22),
-- 00000010000101110001111000110101001111101010001011000011111
panel2 = Color3.fromRGB(22, 14, 40),
-- 0x2a 0x5c 0xac 0xdd 0x63 0x8e
panel3 = Color3.fromRGB(42, 24, 72),
stroke = Color3.fromRGB(150, 80, 255),
-- 0xf3 0x1b 0x35 0xec 0x0c 0xe2
strokeSoft= Color3.fromRGB(80, 40, 140),
-- 11010001101001011010001110011000111100101011111110111
accent = Color3.fromRGB(170, 90, 255),
-- 0110011000100001100000101110110001100001
accent2 = Color3.fromRGB(220, 180, 255),
-- 6d82f60c695d79dfa50503c5aadad553d69686105ba64e705
accent3 = Color3.fromRGB(240, 110, 255),
-- 0xf0 0x75 0xa7 0xf7
text = Color3.fromRGB(240, 235, 255),
muted = Color3.fromRGB(155, 130, 195),
-- 0x06 0x3c 0x63 0xd5
success = Color3.fromRGB(120, 245, 175),
-- 11100011000010111010110001
danger = Color3.fromRGB(255, 105, 140),
gold = Color3.fromRGB(255, 220, 130),
-- 0xf9 0x86 0xb7 0xfe 0x61
neon = Color3.fromRGB(200, 100, 255),
neonDark = Color3.fromRGB(60, 20, 120),
ticker = _94ab75(82, 69, 65, 80, 69, 82, 32, 194, 183, 32, 117, 110, 105, 118, 101, 114, 115, 97, 108, 32, 99, 104, 101, 97, 116, 32, 115, 117, 105, 116, 101, 32, 32, 194, 183, 32, 32, 64, 100, 57, 118, 113, 32, 111, 110, 32, 100, 105, 115, 99, 111, 114, 100, 33),
-- 0xa1 0x33 0x03
tickerColor = Color3.fromRGB(200, 130, 255),
tickerAccent = Color3.fromRGB(240, 120, 255),
sakura = {active = false, leaves = {count = 80, speed = 22, sway = 1.4, size = 5}},
snow = {count = 60, speed = 25, size = 2},
rain = {count = 28, speed = 90, thickness = 2},
-- 1011010000011001001111101
}
-- 0x3a 0x33 0xae
local _255794 = {
bg = Color3.fromRGB(3, 2, 8), panel = Color3.fromRGB(12, 8, 22),
-- 0x08 0x95 0xb4 0xa0 0x3e
panel2 = Color3.fromRGB(22, 14, 40), panel3 = Color3.fromRGB(42, 24, 72),
-- 00111001000110011010011001101011110011001111010
stroke = Color3.fromRGB(150, 80, 255), strokeSoft = Color3.fromRGB(80, 40, 140),
-- 0xf5 0xa5 0xcc 0xd9 0xe0
accent = Color3.fromRGB(170, 90, 255), accent2 = Color3.fromRGB(220, 180, 255),
-- 1010010011111001110111111110
accent3 = Color3.fromRGB(240, 110, 255), text = Color3.fromRGB(240, 235, 255),
muted = Color3.fromRGB(155, 130, 195),
tickerColor = Color3.fromRGB(200, 130, 255), tickerAccent = Color3.fromRGB(240, 120, 255),
}
-- 0x72 0x01 0x12 0x7c 0x4b
local _a92cc45 = {
bg = Color3.fromRGB(18, 6, 20), panel = Color3.fromRGB(38, 14, 40),
-- 8001f959d2def2cffa7769f1537916d0d43f1bb596599564890
panel2 = Color3.fromRGB(60, 24, 62), panel3 = Color3.fromRGB(95, 40, 100),
stroke = Color3.fromRGB(240, 130, 220), strokeSoft = Color3.fromRGB(160, 80, 150),
-- 0xe9 0xff 0x02 0x5b 0x97
accent = Color3.fromRGB(255, 120, 200), accent2 = Color3.fromRGB(255, 200, 235),
-- 0xdc 0x0c 0x3b
accent3 = Color3.fromRGB(230, 120, 255), text = Color3.fromRGB(255, 240, 250),
muted = Color3.fromRGB(215, 165, 210),
tickerColor = Color3.fromRGB(255, 160, 220), tickerAccent = Color3.fromRGB(255, 200, 235),
-- 8afd1192465749452f306c63a8248a2af65081b43f7bd0191ca02d4900b1
}
function Theme.setPalette(_e18158)
-- 0xa9 0x77 0x76 0x16
local _a7df20 = (_e18158 == _94ab75(83, 97, 107, 117, 114, 97)) and _a92cc45 or _255794
for _cd3b3, _f1ee76cd6 in pairs(_a7df20) do Theme[_cd3b3] = _f1ee76cd6 end
Theme.sakura.active = (_e18158 == _94ab75(83, 97, 107, 117, 114, 97))
-- 0x4a 0x13 0x7b 0x26
end

ESPColours = {
ally = Color3.fromRGB(90, 160, 255), enemy = Color3.fromRGB(255, 80, 110),
police = Color3.fromRGB(90, 160, 255), criminal = Color3.fromRGB(230, 46, 46),
prisoner = Color3.fromRGB(255, 156, 62), sheriff = Color3.fromRGB(90, 160, 255),
murderer = Color3.fromRGB(230, 46, 46), innocent = Color3.fromRGB(96, 226, 126),
united = Color3.fromRGB(56, 138, 255), iron = Color3.fromRGB(230, 46, 46),
-- 0xe1 0xdb 0x27 0xac 0x83 0x48
}


-- 0xc0 0xc8 0x4a
TS = {target = nil, hovered = nil, humpWasActive = false, lastSpam = 0}
HR = {speed = 0, smoothSpeed = 0, tier = _94ab75(83, 84, 73, 76, 76), airborne = false, airTimer = 0,
-- 0010101111100101000101101000101011111011101101
teleporting = false, autoMode = _94ab75(72, 121, 98, 114, 105, 100), fallingUnder = false,
-- 42705717779e0f8cab3e7af5a33926caea8
lastGood = nil, respawnPending = false}
-- 497061f9d374fbc687987fd4df5a7844f0868
HUMP = {
-- 11000010101011000010010110010000100
phase = 0, smoothVel = 0, smoothAir = 0, lastTier = _94ab75(83, 84, 73, 76, 76), lockTimer = 0,
speedMult = 1.0, ampMult = 1.0, distMult = 1.0,
fallHold = 0, lastGoodCF = nil, awaitingRespawn = false,
-- bc248ad9d5a33221a04eb8fcaa128c294b2ebceee5fb5739484
}
RA = {keys = {teleport = nil, spectate = nil, hump = nil}, spectateTarget = nil, spectateZoom = 1}
PREFERRED_KEYS = {
Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three,
-- 0x98 0x34 0x6c 0xd3
Enum.KeyCode.Four, Enum.KeyCode.Five, Enum.KeyCode.Six,
-- 731f7798b2ec820047bc9e92719aba4889699f0
Enum.KeyCode.Q, Enum.KeyCode.E, Enum.KeyCode.R,
-- 0xa0 0xf5 0x59
Enum.KeyCode.F, Enum.KeyCode.G, Enum.KeyCode.V,
}


-- 110001100101101010110110101000
Chat = {messages = {}, listeners = {}, max = 400}
-- 31af234d1a60b7e71730746c6e
chatSeenIds = {}
function addChat(_309d79694, _2a84a311b, _e9c81, _ca36d984, _d3615db, _458f8760, _e4fa9be, _fe2b8995c, _b4644a, _9f1fbe49, _29b62, _8064a, _7c70ce)
if _9f1fbe49 then
-- 0x37 0x16 0x12 0x75
if chatSeenIds[_9f1fbe49] then return end
chatSeenIds[_9f1fbe49] = true
end
-- 0x9b 0xe6 0x32 0x89 0x9f 0x68
local _75c34 = {
-- 1110111110010010110111101011101001110001110101110101000
sender = _309d79694 or _94ab75(63), text = tostring(_2a84a311b or _94ab75()),
-- 5cfda198ce2b2f3aa7d79fc733421ef861a6e
isLocal = _e9c81 and true or false,
-- 845237cae58a837f736c699b1870abb3
col = _ca36d984 or Color3.fromRGB(148, 204, 255),
-- 6aad1d0f8c514f2ad8a07c881536
time = _8064a and (_8064a / 1000) or tick(),
-- 0x00 0x4f 0x61 0xae 0xc4 0x69
avatar = _d3615db, discordName = _458f8760,
country = _e4fa9be, countryCode = _fe2b8995c, userId = _b4644a,
msgId = _9f1fbe49, placeId = _29b62, discordId = _7c70ce,
}
Chat.messages[#Chat.messages+1] = _75c34
if #Chat.messages > Chat.max then table.remove(Chat.messages, 1) end
-- 0xcf 0x6a 0x30 0x29 0xca
for _3c6e2, _96739956 in ipairs(Chat.listeners) do pcall(_96739956, _75c34) end
end

-- 6d3ae01c933c70c1f3af2f914365e93c8d9637671a8
function sendChat(_ed0a4d57)
_ed0a4d57 = tostring(_ed0a4d57 or _94ab75()):gsub(_94ab75(94, 37, 115, 43),_94ab75()):gsub(_94ab75(37, 115, 43, 36),_94ab75())
if _ed0a4d57 == _94ab75() then return false end
if #_ed0a4d57 > 200 then _ed0a4d57 = _ed0a4d57:sub(1,200) end
-- 715c0a957c38ee0282d91c78f2d45ec34bc81bbe78a70becfead
if not SESSION_KEY or SESSION_KEY == _94ab75() then
notify(_94ab75(67, 104, 97, 116), _94ab75(78, 111, 116, 32, 118, 101, 114, 105, 102, 105, 101, 100, 32, 121, 101, 116), Theme.danger, 3)
-- 09a17aa062ac88fe2e646b700fd2fa
return false
end
task.spawn(function()
-- 010011111001100011110000110101010011100000111000100
local _4c91d = _fdd25a5e9:JSONEncode({
robloxId = tostring(_313ae5.UserId), key = SESSION_KEY,
-- 6b812a850c6790fa55517abe7eb62923
text = _ed0a4d57, placeId = tostring(game.PlaceId),
})
-- 0x8d 0x43 0x3d
local _2cc8269, _50effaf0a = httpPost(KEY_API .. _94ab75(47, 99, 104, 97, 116, 47, 115, 101, 110, 100), _4c91d)
-- 1011011001101000111010101
if not _2cc8269 then
local _49598 = parseErrorReason(_50effaf0a)
-- 0x0b 0x83 0x11
notify(_94ab75(67, 104, 97, 116, 32, 102, 97, 105, 108, 101, 100), _49598, Theme.danger, 8, _49598)
-- 0101101001110011001100101111110010101010011101
end
end)
return true
end


Cfg = {
Aimbot = {Enabled = false, Key = Enum.UserInputType.MouseButton2, ToggleMode = false,
-- 0xf3 0xc4 0xf8 0xc0
FOV = 180, Smoothness = 8, Strength = 6, TargetPart = _94ab75(72, 101, 97, 100),
TeamCheck = false, VisibleOnly = false, ShowCircle = true, Humanize = true, MaxDist = 1000},
-- 4d70163b0c721f40a2d083ac3b3b3afe5ee907a7a0bd9cc7d911c1e213f
Trigger = {Enabled = false, Key = Enum.UserInputType.MouseButton1,
-- f4cb2ef9f933d63955e1464a7e49643dc1f133fbd052a81da670826
Radius = 20, Delay = 0.05, TeamCheck = true},
Visuals = {Enabled = false, NameTags = true, Distance = true, ShowRole = true,
Mode = _94ab75(84, 101, 97, 109), Fill = 0.55, RainbowSpeed = 0.5,
-- 4ede2b520144cd9e47227cd7865df410b04d326edcb9f3bbbeb7ea9606
NoFog = false, InfZoom = false, FOVMin = 0.5, FOVMax = 120},
Movement = {Noclip = false, SpeedEnabled = false, Speed = 32,
-- 0xfd 0xa5 0x08 0x38 0x09
JumpEnabled = false, JumpPower = 80, InfiniteJump = false,
-- 0x39 0x2c 0xa2 0xa8
Fly = false, FlySpeed = 60, FlySmooth = 12, FlyBoost = 2.5,
GodMode = false, Freecam = false, FreecamSpeed = 50, FreecamSens = 1,
Sprint = false, SprintSpeed = 60, Bunnyhop = false,
-- 11000101111101101101111001100101011100100100000
Spinbot = false, AntiFling = false, AntiAFK = false},
-- 830de60fd41ed949a187550b
World = {Fullbright = false, TimeEnabled = false, Time = 14,
-- 123f437820593dc37cc5e0f130d0bd7ef1199a9c6f
GravityEnabled = false, Gravity = 196.2,
-- 11110000010000101011101000101101101101
RemoveBlur = false, FOVEnabled = false, FOV = 70},
Utility = {FlingPower = 60000, FlingDur = 4,
AutoClicker = false, AutoClickDelay = 0.05,
-- 0x83 0x5c 0x77 0xb2 0x0b 0x83
AutoRespawn = false, ChatSpam = false, ChatSpamMsg = _94ab75(82, 69, 65, 80, 69, 82),
-- 5282474fa64dbfd2a09cfcf81301
AutoSheriff = false, AutoSheriffRange = 120},
-- 11100000100011011101010111111011010001
Troll = {FollowTarget = false, FollowSpeed = 55,
-- 694a9e8e94b10647a2bdfa825f207089aa2baaf2e34d3044c7dbd48141
Hump = false, HumpSpeed = 8, HumpAmp = 1.5, HumpDist = 1.6,
-- 100001101011011101101110101000001000101000001001100
HumpYawOnly = false, HumpKeepOwner = true, HumpUsePlatform = false,
-- d061c40535f1bd30996c7ea88671f00abf59c540f0ada628333b4
HumpOverrideFly = true, HumpVelMatch = true, HumpAutoDetect = true,
-- 0xb3 0xe9 0x93
HumpFallProtect = true, TapTarget = false, TapRadius = 30},
-- 046e0f4ef6e96195fefe14610a86f30eeebea
UI = {MenuKey = Enum.KeyCode.X, HUDKey = Enum.KeyCode.H,
-- 1aa8ca103c93e59cd6925c6a32fd44ea2ab7b9a9
HUD = true, ADKey = Enum.KeyCode.J, AD = true,
-- 0xfa 0x79 0xbf 0xc0 0xf8 0xd1
MenuOpacity = 0, MenuBlur = true, AnimatedOpen = true,
MenuResizable = true, MinW = 480, MinH = 380,
-- c2af275bee71f116b1f6f167fd5d6f84416d3fdd
HUDMovable = true, HUDResizable = true, ADMovable = true, ADResizable = true,
-- e8fbaccfbb01fbb528254416ba26e12cdaa8fdbd89532e2e5
Juicy = true, Notifs = true, Ambient = true,
-- 0000111001000001101001101011100110110001110
ShimmerHeaders = true, BorderGlow = true,
Sakura = false, SakuraLeaves = 80, SakuraSpeed = 22,
-- 1100010101011000110011010011100100
Crosshair = true, CrosshairSize = 26, CrosshairThick = 2,
CrosshairPulse = true, HideCrossOnMenu = true,
ReticleRings = true, ReticleLine = true, ReticleHP = true,
ReticleMode = _94ab75(65, 117, 116, 111), ReticleR = 140, ReticleG = 220, ReticleB = 255},
-- 101011010001010111111101100010011011000110011101110
Binds = {},
-- e9628630c5a046b474a11a5b013ef62062e95bf01f0c
}


function new(_cc1ff454, _ab2a50, _f55603)
local _b6d8bf = Instance.new(_cc1ff454)
-- 0xb9 0xf5 0x96 0xbc 0x35
for _78a334, _13e212d94 in pairs(_ab2a50) do _b6d8bf[_78a334] = _13e212d94 end
-- 1010001011011011101011110001010001011101101110000001
if _f55603 then _b6d8bf.Parent = _f55603 end
-- 1100011001001011010010110101000110001001
return _b6d8bf
-- 9659373a8c58776298b8343f2cf855a6be05570a10da904410b2304
end
function corner(_e78a92, _610604) return new(_94ab75(85, 73, 67, 111, 114, 110, 101, 114), {CornerRadius = UDim.new(0, _610604 or 6)}, _e78a92) end
function stroke(_2cd64087a, _2edc9c709, _b60f0, _ac8ab748)
-- 0xa9 0xc6 0xa9
return new(_94ab75(85, 73, 83, 116, 114, 111, 107, 101), {Color = _2edc9c709, Thickness = _b60f0 or 1, Transparency = _ac8ab748 or 0,
-- 09aea87a64fc967ab2023774fb53ee44fa90e739b7
ApplyStrokeMode = Enum.ApplyStrokeMode.Border}, _2cd64087a)
end
function grad(_9d7ad9, _15f704, _5c773c, _fb9d7b25)
-- 0x22 0x75 0xd3 0xad 0x23 0x35
return new(_94ab75(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Color = ColorSequence.new(_15f704, _5c773c), Rotation = _fb9d7b25 or 90}, _9d7ad9)
-- 101011010101011111111110011100010111110
end
function dropShadow(_e6ef38, _5559f9a, _5d50a04a, _83cae27)
local _1990a9 = new(_94ab75(70, 114, 97, 109, 101), {
Size = UDim2.new(1, _5d50a04a or 12, 1, _5d50a04a or 12),
-- 0x5f 0x04 0xec 0x85 0xc5 0x43
Position = UDim2.new(0.5, 0, 0.5, (_5d50a04a or 12) / 4),
AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Color3.new(0, 0, 0),
-- 010110010001010100000011110100110101111
BackgroundTransparency = _83cae27 or 0.55,
-- 101100011111000001000110111101110110000010111101001110000100
BorderSizePixel = 0,
ZIndex = (_e6ef38.ZIndex or 1) - 1,
-- 0xe2 0x12 0x99 0x92
}, _e6ef38.Parent)
-- 00101010000001011110001000100010010100001
corner(_1990a9, _5559f9a or 18)
-- 0xf1 0x84 0xa9 0xbd 0x83 0x92
return _1990a9
-- 0xeb 0xe1 0x3f 0xba
end
-- 1000111000010001100101001000
function hum() local _f404145 = _313ae5.Character; return _f404145 and _f404145:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100)) end
function hrp() local _2a225deb = _313ae5.Character; return _2a225deb and _2a225deb:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116)) end
-- 1293b4819bdbcc4f1a836ae1531d
function tBg(_42c6f7c) _42c6f7c:SetAttribute(_94ab75(84, 95, 66, 103), true); return _42c6f7c end
-- 11001101001000011101000011100001111101000
function tPanel(_e488ae7c9) _e488ae7c9:SetAttribute(_94ab75(84, 95, 80, 97, 110, 101, 108), true); return _e488ae7c9 end
function tPanel2(_99a352484) _99a352484:SetAttribute(_94ab75(84, 95, 80, 97, 110, 101, 108, 50), true); return _99a352484 end
-- 08e1a63b44e08cb041b29e71f86f02032bdf1
function tStroke(_b7a96) _b7a96:SetAttribute(_94ab75(84, 95, 83, 116, 114, 111, 107, 101), true); return _b7a96 end
function tAcc(_53141332) _53141332:SetAttribute(_94ab75(84, 95, 65, 99, 99), true); return _53141332 end
-- a009a9eaef9504f6d61145faf97f
function tAcc2(_ba570) _ba570:SetAttribute(_94ab75(84, 95, 65, 99, 99, 50), true); return _ba570 end
function tText(_c1b97) _c1b97:SetAttribute(_94ab75(84, 95, 84, 101, 120, 116), true); return _c1b97 end
function tMuted(_d04fae) _d04fae:SetAttribute(_94ab75(84, 95, 77, 117, 116, 101, 100), true); return _d04fae end
-- 0x8f 0x36 0x45 0x1e 0x38 0xb9
function getPath(_3ce619a, _d473b86)
local _001def5 = _3ce619a
-- 0xa0 0x63 0xc0 0x98 0x1a 0x57
for _831c11a in _d473b86:gmatch(_94ab75(91, 94, 37, 46, 93, 43)) do
-- 010111101110010100001101011100111100
if type(c) ~= _94ab75(116, 97, 98, 108, 101) then return nil end
_001def5 = _001def5[_831c11a]
-- 0x90 0xf4 0x0c 0xc9 0xc7 0xc8
if _001def5 == nil then return nil end
-- 987cc3f8600b0ae8e4c89ed23ea1ed44dda67e91cbed4515
end
-- 10100000111001001111011111010001010010101001010011111000011
return _001def5
end
function setPath(_2641dba, _0996a88, _7bf3d5622)
-- 011111010001100111111111111
local _3b91b = {}
-- 9c217ed217b2af1ce15c42df1fc
for _93d9d94a in _0996a88:gmatch(_94ab75(91, 94, 37, 46, 93, 43)) do _3b91b[#_3b91b+1] = _93d9d94a end
-- 1100111011111111110111110011110110000111110
local _69293 = _2641dba
for _8df42 = 1, #_3b91b - 1 do
_69293 = _69293[_3b91b[_8df42]]
-- f1eda61185d369f69c4d49e8697e6db75e50a129
if type(c) ~= _94ab75(116, 97, 98, 108, 101) then return end
-- 1000101011111111010011001101111010101001110
end
_69293[_3b91b[#_3b91b]] = _7bf3d5622
-- 2fd04f430a44e671d3f0b763868baecef642a24f05e4df21b987b
end
-- 111100111100101001101100001001
function deepCopy(_c24e0)
-- c3a8707cfcd2b6a9196bf34a3b8c730391f6c08f68f277d6842f0
if type(t) ~= _94ab75(116, 97, 98, 108, 101) then return _c24e0 end
-- 110110110001101100111110000111101001010011011001000000000110
local _b9030 = {}
-- b3471597d193b845a2d057b3b176903ea4c7efd13
for _cdab969e0, _e327cd44 in pairs(_c24e0) do _b9030[_cdab969e0] = deepCopy(_e327cd44) end
return _b9030
end

-- 0dac2ebfd4e59d833ec94637b4fe0fbdb4a286a27a01f1c17bd71dea0db

-- 0xd4 0x26 0xbf 0x5b 0x55
function saveFile() return _94ab75(82, 101, 97, 112, 101, 114, 95) .. tostring(game.PlaceId) .. _94ab75(46, 106, 115, 111, 110) end
function autoloadFile() return _94ab75(82, 101, 97, 112, 101, 114, 95, 97, 117, 116, 111, 95) .. tostring(game.PlaceId) .. _94ab75(46, 116, 120, 116) end
-- 11110101001010000011010101111101011
function globalAutoloadFile() return _94ab75(82, 101, 97, 112, 101, 114, 95, 103, 108, 111, 98, 97, 108, 95, 97, 117, 116, 111, 46, 116, 120, 116) end

-- 10101000110000011010011100101
saves = _G.__ReaperSaves or {}
_G.__ReaperSaves = saves
-- 7055e46e993eda93f97b045b53d0c7ea00
autoloadName = _G.__ReaperAutoload or nil

-- 42e557c475de665f1cc2288c260c7f89a320a5817f738640ad098186f462
local function _4014eb32(_8862e726)
-- 0xd7 0xe9 0x28 0xbf
local _a849644ff = typeof(_8862e726)
-- 0x65 0xf6 0xa3 0xf2 0xed
if _a849644ff == _94ab75(67, 111, 108, 111, 114, 51) then return {__t = _94ab75(67, 111, 108, 111, 114, 51), R = _8862e726.R, G = _8862e726.G, B = _8862e726.B} end
-- 0xea 0xa2 0xe5 0xda
if _a849644ff == _94ab75(69, 110, 117, 109, 73, 116, 101, 109) then return {__t = _94ab75(69, 110, 117, 109), s = tostring(_8862e726)} end
-- 0x57 0xe0 0xc4 0xb5 0x68 0xe5
if _a849644ff == _94ab75(86, 101, 99, 116, 111, 114, 51) then return {__t = _94ab75(86, 101, 99, 116, 111, 114, 51), X = _8862e726.X, Y = _8862e726.Y, Z = _8862e726.Z} end
-- 0xd3 0x70 0xd9 0x35 0x34
if _a849644ff == _94ab75(86, 101, 99, 116, 111, 114, 50) then return {__t = _94ab75(86, 101, 99, 116, 111, 114, 50), X = _8862e726.X, Y = _8862e726.Y} end
if _a849644ff == _94ab75(110, 117, 109, 98, 101, 114) then
if _8862e726 ~= _8862e726 then return {__t = _94ab75(78, 117, 109), v = _94ab75(110, 97, 110)} end
-- 4c7c6cc731b652232445fe5d9d0b3287132ae864517614
if _8862e726 == math.huge then return {__t = _94ab75(78, 117, 109), v = _94ab75(105, 110, 102)} end
-- e54dc95fe75b378d14331777a246de3f291
if _8862e726 == -math.huge then return {__t = _94ab75(78, 117, 109), v = _94ab75(45, 105, 110, 102)} end
-- 0x83 0x82 0x18 0x3a 0x6b
return _8862e726
-- e4429abb7442f5d0ec9c2840090da88f82877fc6052c94976d5
end
-- 0x48 0xa6 0x5d 0x15
if _a849644ff == _94ab75(116, 97, 98, 108, 101) then
local _4fb92 = {}
-- 0x33 0xd1 0xfe 0x10 0xc9 0x89
for _142efdb4, _8b4fed in pairs(_8862e726) do _4fb92[tostring(_142efdb4)] = _4014eb32(_8b4fed) end
return _4fb92
end
-- 0xbc 0x2d 0x0f 0xac
return _8862e726
-- 0x62 0x75 0x74
end

local function _9b07d2aee(_1fa1915)
-- 0xf8 0xb1 0x4e 0x67 0x99 0xdd
if type(v) ~= _94ab75(116, 97, 98, 108, 101) then return _1fa1915 end
-- 10100101001101100001110100001
local _565fbb7 = _1fa1915.__t
-- 0x47 0x42 0xad 0x32 0x75
if _565fbb7 == _94ab75(67, 111, 108, 111, 114, 51) then return Color3.new(_1fa1915.R or 0, _1fa1915.G or 0, _1fa1915.B or 0) end
-- 0x9e 0x41 0xf3 0x19 0x9b 0x12
if _565fbb7 == _94ab75(69, 110, 117, 109) then
-- 01111100011101001001101101011011111100
local _9e4a09 = _1fa1915.s
if type(s) == _94ab75(115, 116, 114, 105, 110, 103) then
-- 0x66 0x87 0xfa 0xb8 0x10 0xb8
local _8bb69, _cd058b6d6, _7288cd37d = _9e4a09:match(_94ab75(94, 69, 110, 117, 109, 37, 46, 40, 91, 37, 119, 95, 93, 43, 41, 37, 46, 40, 91, 37, 119, 95, 93, 43, 41, 36))
-- cbca6c22acecf13291d4ba0ccbf9bb9c1913c829631dccf79d39a3901
if _8bb69 and _cd058b6d6 then
-- 8ef3d4f97ef21aba2543efa6f352d2e
local _d61bbe24, _dabeeae = pcall(function() return Enum[_8bb69][_cd058b6d6] end)
-- 0010110111110111001011110000101010001111
if _d61bbe24 then return _dabeeae end
-- 00010010111111111111101000010101101011111001100011111110101
end
-- 0x37 0xfe 0x63 0x1e 0x50 0xfd
end
return nil
-- 0x0e 0xb1 0x57
end
-- 0x0e 0xfc 0xb5 0x80 0xcd 0x3c
if _565fbb7 == _94ab75(86, 101, 99, 116, 111, 114, 51) then return Vector3.new(_1fa1915.X or 0, _1fa1915.Y or 0, _1fa1915.Z or 0) end
-- 0x48 0xae 0x28
if _565fbb7 == _94ab75(86, 101, 99, 116, 111, 114, 50) then return Vector2.new(_1fa1915.X or 0, _1fa1915.Y or 0) end
-- 7d90c9b58d845306f69773ff1e257196d8fc61389d6c97b4657862286e
if _565fbb7 == _94ab75(78, 117, 109) then
-- 0011010001101110011100010001011011101100100100
if _1fa1915.v == _94ab75(110, 97, 110) then return 0 end
-- 0xb5 0x1c 0xad
if _1fa1915.v == _94ab75(105, 110, 102) then return math.huge end
-- ac9da2ed80160cb2f57fa42578b8f6a4fe48d83351d3ff4d9ab627
if _1fa1915.v == _94ab75(45, 105, 110, 102) then return -math.huge end
-- 0101010101101010111100010010101001101110101111100
return tonumber(_1fa1915.v) or 0
-- 4952c4b9637565b00e187dadadeb9c0f648e62335ec3d22dde1
end
-- 801821253ccaf9ab03e488e8168b3847c4a5cdd72703e5a07ea4b
local _d5ac1 = {}
for _0981219b, _2b24ac97 in pairs(_1fa1915) do _d5ac1[_0981219b] = _9b07d2aee(_2b24ac97) end
-- 101100010001000110101010
return _d5ac1
-- 100100011100100100110000101010111110101010110100
end

function serialize(_3e10c050e)
-- 01100111011101010011100001
local _857e7, _50de6adc = pcall(function() return _fdd25a5e9:JSONEncode(_4014eb32(_3e10c050e)) end)
return _857e7 and _50de6adc or nil
-- 00110111011011111110000100110110011011
end
function deserialize(_1bbaf2e0a)
-- 0x65 0xe8 0x50 0x14 0xcd 0x50
if not _1bbaf2e0a or _1bbaf2e0a == _94ab75() then return nil end
local _0ed44b, _77fe1012f = pcall(function() return _fdd25a5e9:JSONDecode(_1bbaf2e0a) end)
if not _0ed44b or _77fe1012f == nil then return nil end
local _c59740, _19af9d = pcall(_9b07d2aee, _77fe1012f)
-- cc2929836fd903846c787eb87848297e733
return _c59740 and _19af9d or nil
end

-- 11010010100000110100010101
function saveTable()
-- 10100110110110110111001100101111
saves[game.PlaceId] = saves[game.PlaceId] or {}
if IO.has then
-- 1110011110110100101110001000100
local _4bced, _c5c88d2c2 = pcall(IO.isfile, saveFile())
-- 10001111101000000101001101101110100011
if _4bced and _c5c88d2c2 then
-- 000011001001110110101010101100
local _30db7a, _835544 = pcall(IO.read, saveFile())
-- 041716eb114b2004c5f08e262fdb116ccd770efbeb9
if _30db7a and _835544 and _835544 ~= _94ab75() then
-- 110011100100001101100001111110100011
local _caf8b5df9 = deserialize(_835544)
if type(d) == _94ab75(116, 97, 98, 108, 101) then
for _f9971, _9c52f950 in pairs(_caf8b5df9) do saves[game.PlaceId][_f9971] = _9c52f950 end
-- 111001111110011101001101011101010001100101
end
-- 0xe6 0xe7 0x17 0x21 0x87 0x75
end
end
end
-- 0xdf 0x4f 0x59 0xb8 0x5a 0x48
return saves[game.PlaceId]
end

-- ad985f6986e8b93ac7c8ab6b7674bb0da61
function writeSave(_c4eb1977f)
saves[game.PlaceId] = _c4eb1977f
_G.__ReaperSaves = saves
if IO.has then
-- 0011001011000100010110101110001101001111
local _d4ebc = serialize(_c4eb1977f)
if _d4ebc then pcall(IO.write, saveFile(), _d4ebc) end
end
-- 0x52 0x6d 0x0d 0xad 0x14
end

function saveLoadout(_6666c2, _d7306a1fb)
_6666c2 = tostring(_6666c2 or _94ab75()):gsub(_94ab75(94, 37, 115, 43), _94ab75()):gsub(_94ab75(37, 115, 43, 36), _94ab75())
if _6666c2 == _94ab75() then _6666c2 = _94ab75(100, 101, 102, 97, 117, 108, 116) end
-- 11110011011101000111011011111111101011
local _46621b76 = saveTable()
local _4ac894 = {}
-- 3a9c9a9b032cb88b7f2d26a2
for _d82ac5, _a226ef5e in pairs(Cfg) do
-- be825224397cf58dffaeb1115d407739161517386dd11299d449c
if _d82ac5 ~= _94ab75(66, 105, 110, 100, 115) then _4ac894[_d82ac5] = deepCopy(_a226ef5e) end
end
_4ac894.Binds = {}
for _1e4a191, _3cf68 in pairs(Cfg.Binds or {}) do _4ac894.Binds[_1e4a191] = _3cf68 end
-- 0xb5 0x71 0x32 0x85 0x09
_46621b76[_6666c2] = _4ac894
-- 12406ac9b3a5baba29cd1e2401d07422847d549dc53e1d8b79
writeSave(_46621b76)
-- 000100011001011110011000010010110
if _d7306a1fb then
-- d9e71a0dfe744ebc036c13d777e38fa5466
autoloadName = _6666c2
_G.__ReaperAutoload = _6666c2
-- 0x71 0x3d 0x99 0xd1 0xac 0xc4
if IO.has then
pcall(IO.write, autoloadFile(), _6666c2)
-- 0x34 0x27 0xfc
pcall(IO.write, globalAutoloadFile(), game.PlaceId .. _94ab75(58, 58) .. _6666c2)
-- 0x3d 0xe3 0xcb 0x5c
end
-- 1001001111001110001111010000011100010010111011
end
-- 10011111111101011001010011011010000100001111
return true
end

-- 110001111100100100010000110100011100111100000
function loadLoadout(_5cc8fd61)
local _94d572348 = saveTable()
-- 3a13f61c4a720684c9e4566527f602a6401a513ff5802b3
local _70983 = _94d572348[_5cc8fd61]
-- 10011001101100001010100001
if type(d) ~= _94ab75(116, 97, 98, 108, 101) then return false end
for _c338d58e, _ce938aec in pairs(_70983) do Cfg[_c338d58e] = deepCopy(_ce938aec) end
-- 000011010000111011010000000
if type(Cfg.Binds) ~= _94ab75(116, 97, 98, 108, 101) then Cfg.Binds = {} end
return true
-- e116464121fdc7c8468a511ac03cd11fa639dbfaca1dcec07cdd8
end

-- 0111111100110011001000110000010000001010001111
function deleteLoadout(_0b583)
local _7c20bf4 = saveTable()
_7c20bf4[_0b583] = nil
-- 0x1c 0x6f 0x32
writeSave(_7c20bf4)
-- 011000110111000100101011
if autoloadName == _0b583 then
autoloadName = nil
_G.__ReaperAutoload = nil
-- 0x14 0x0a 0x3a 0x07 0xa7
if IO.has then pcall(IO.write, autoloadFile(), _94ab75()) end
end
end

-- 0xb7 0x88 0x3e 0x03 0x34 0x72
function listLoadouts()
saveTable()
local _f8629d66 = {}
for _e5bac4f41, _a1de895 in pairs(saves[game.PlaceId] or {}) do
-- 11000010010110101010100011101000100111111111111100
if type(data) == _94ab75(116, 97, 98, 108, 101) then out[#out+1] = name end
-- 0xd7 0xbe 0x59 0xa2 0x14 0x30
end
-- 0x00 0x45 0x29 0x2d 0xc1
table.sort(_f8629d66)
-- 0x12 0x03 0x45
return _f8629d66
end

-- 12f55bebe6ba13ee171806e5e37
if IO.has then
pcall(function()
local _5f362002, _a7070 = pcall(IO.isfile, globalAutoloadFile())
-- 80a64164d39f43d04521a149
if _5f362002 and _a7070 then
local _37f0d834, _dc89a66cd = pcall(IO.read, globalAutoloadFile())
-- 06a506ec192e6b3fea57ef0375f8339396
if _37f0d834 and _dc89a66cd and _dc89a66cd ~= _94ab75() then
-- 0x4a 0x4c 0x93 0x2f 0x01
local _555d8, _f44bd98 = _dc89a66cd:gsub(_94ab75(37, 115, 43, 36), _94ab75()):match(_94ab75(94, 40, 37, 100, 43, 41, 58, 58, 40, 46, 43, 41, 36))
if _555d8 and _f44bd98 and tonumber(_555d8) == game.PlaceId then autoloadName = _f44bd98 end
end
end
local _2db313, _c98a6f46 = pcall(IO.isfile, autoloadFile())
if _2db313 and _c98a6f46 then
-- 0xf0 0xa9 0x95 0xa0 0x49 0x58
local _4428cf2, _cad1067fd = pcall(IO.read, autoloadFile())
-- 101110000001111000100111111000010110110100001
if _4428cf2 and _cad1067fd and _cad1067fd ~= _94ab75() then autoloadName = _cad1067fd:gsub(_94ab75(37, 115, 43, 36), _94ab75()) end
end
end)
-- 0x9a 0x5b 0xef 0xe8
end


-- 01000110111111101110011001110010101001000000100000001
SESSION_KEY = nil
-- ba553f94064f7abf5b1847a1e203f937a0
DISCORD_USERNAME = nil
-- bc970ebc01479d7d2f227076c084a7
DISCORD_ID = nil

-- 0x42 0x7d 0x75

-- 010010100010011001110001101111100011
VERIFY_STORE = _94ab75(82, 101, 97, 112, 101, 114, 95, 118, 101, 114, 105, 102, 105, 101, 100, 46, 106, 115, 111, 110)

local function _3d294()
-- 0x6b 0xec 0x91 0x6d
if not IO.has then return nil end
-- 00011011011000110100100001001000000
local _4d009d, _e50b04e8d = pcall(IO.isfile, VERIFY_STORE)
if not _4d009d or not _e50b04e8d then return nil end
local _df238a0a6, _d978285 = pcall(IO.read, VERIFY_STORE)
if not _df238a0a6 or not _d978285 or _d978285 == _94ab75() then return nil end
local _0d6086, _048fb58 = pcall(function() return _fdd25a5e9:JSONDecode(_d978285) end)
if not _0d6086 or type(d) ~= _94ab75(116, 97, 98, 108, 101) then return nil end
return _048fb58
-- 0xc3 0x1a 0x4c 0x30 0xa4
end
local function _0d332040(_22ae61e)
if not IO.has then return end
local _b5120, _8d5c0f74e = pcall(function() return _fdd25a5e9:JSONEncode(_22ae61e) end)
-- ce4013b73f7f3a6065be092ad4746182570d787aa13efefb241437f6
if _b5120 and _8d5c0f74e then pcall(IO.write, VERIFY_STORE, _8d5c0f74e) end
-- 72ea302262200d6ff25a4f6bd6058e12657ba082b0acf1afe1
end
local function _a8c647()
-- ccede600c2bd32dc149a11865188a5d2c
SESSION_KEY = nil
-- 0x49 0x2c 0xb0 0x55 0xa7 0x3c
DISCORD_USERNAME = nil
DISCORD_ID = nil
-- 0x79 0xdb 0xb3
if IO.has then pcall(IO.write, VERIFY_STORE, _94ab75()) end
-- 11101001010100101111110010011000111011
end

local function _439ff5bf3(_e1974ed)
if type(setclipboard) == _94ab75(102, 117, 110, 99, 116, 105, 111, 110) then return pcall(setclipboard, _e1974ed) end
-- 9c6ea98928924eb73e9355ed87c215c863f
return false
end
-- 0x44 0xa3 0x63
local function _968c1587(_7a6ca5ca)
-- 0x97 0x2c 0xc1 0x47
local _84c39 = (getgenv and getgenv()) or _G
-- 0x3a 0x50 0xf2 0x5c 0x39 0x6e
for _7e722, _002913 in ipairs({_94ab75(100, 101, 101, 112, 108, 105, 110, 107), _94ab75(111, 112, 101, 110, 98, 114, 111, 119, 115, 101, 114), _94ab75(111, 112, 101, 110, 98, 114, 111, 119, 115, 101, 114, 119, 105, 110, 100, 111, 119), _94ab75(98, 114, 111, 119, 115, 101, 114, 111, 112, 101, 110)}) do
local _72f2ab11 = rawget(_84c39, _002913)
if type(f) == _94ab75(102, 117, 110, 99, 116, 105, 111, 110) and pcall(f, url) then return true end
end
-- 011001010001100000010101111011110110
return false
end
-- 6e4f4d630170b48a23e93ac3408
local function _fe65ea58f(_490a1)
if not IO.has or type(getcustomasset) ~= _94ab75(102, 117, 110, 99, 116, 105, 111, 110) then return nil end
-- 0xff 0x53 0x20 0x37 0x65 0x97

-- 00011010101101110001011101011000001011

-- c7e13ad1d97cdee18689cba15449325ee94f0
local _635a5e = _94ab75(82, 101, 97, 112, 101, 114, 95, 97, 118, 97, 116, 97, 114, 95) .. tostring(_313ae5.UserId) .. _94ab75(95) .. _464e48b9(_490a1) .. _94ab75(46, 112, 110, 103)
local _c2b9f204, _636d7 = pcall(IO.isfile, _635a5e)
if not _c2b9f204 or not _636d7 then
-- 9b2c22f0b78846e5499b2835bf885b37189
local _e03b3 = (syn and syn.request) or (http and http.request) or http_request or request
-- 0x09 0xa4 0x58 0x7f
if not _e03b3 then return nil end
-- 1110110110100010111101100111011010100010000011010100
local _1fbb7a, _8dedb0eae = pcall(_e03b3, {Url = _490a1, Method = _94ab75(71, 69, 84)})
if not _1fbb7a or type(res) ~= _94ab75(116, 97, 98, 108, 101) or not res.Body then return nil end
-- 0x51 0xac 0x0b 0xa1 0x45 0xc2
pcall(IO.write, _635a5e, _8dedb0eae.Body)
end
local _bb5ab, _3606e65 = pcall(getcustomasset, _635a5e)
if _bb5ab and _3606e65 then return _3606e65 end
-- 11110010100100100001111101110000011111000010
return nil
-- 110000100001000110101110011001000101100111
end

function checkGuildIn(_ac3519)
_ac3519 = tostring(_ac3519 or _94ab75()):gsub(_94ab75(94, 37, 115, 43), _94ab75()):gsub(_94ab75(37, 115, 43, 36), _94ab75())
-- 1df3b01dcc20b32c1a971953b10affb5900456d6561b89b2c07c4980e572
if _ac3519 == _94ab75() then return nil, {err = _94ab75(110, 111, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 101, 110, 116, 101, 114, 101, 100), debug = {}} end

-- 01000000010111001011010011100110111011011101101111100010
local _8605d = {}
local function _781c5(_97e3fbc2) _8605d[#_8605d+1] = tostring(_97e3fbc2) end

local function _86cff(_eb53113)
-- 1011111100001111000000011011001010001100110101
if type(d) ~= _94ab75(116, 97, 98, 108, 101) then return nil, _94ab75(114, 101, 115, 112, 111, 110, 115, 101, 32, 110, 111, 116, 32, 97, 32, 116, 97, 98, 108, 101) end
-- 00111110101001110100000011110000011111100
if _eb53113.inGuild == nil and _eb53113.error then
return nil, _94ab75(119, 111, 114, 107, 101, 114, 58, 32) .. tostring(_eb53113.reason or _94ab75(117, 110, 107, 110, 111, 119, 110))
end
if type(d.error) == _94ab75(115, 116, 114, 105, 110, 103) then
-- 194ca330297c906dc6b1235f63cb1645e86a55d68
return nil, _94ab75(115, 101, 114, 118, 101, 114, 32, 101, 114, 114, 111, 114, 58, 32) .. _eb53113.error
end
local _7ff6fe7 = {
-- 0xc6 0xd4 0xfe 0x23 0xd0 0xef
{_eb53113.inGuild, _94ab75(105, 110, 71, 117, 105, 108, 100)}, {_eb53113.in_guild, _94ab75(105, 110, 95, 103, 117, 105, 108, 100)},
{_eb53113.ok, _94ab75(111, 107)}, {_eb53113.isMember, _94ab75(105, 115, 77, 101, 109, 98, 101, 114)},
{_eb53113.is_member, _94ab75(105, 115, 95, 109, 101, 109, 98, 101, 114)}, {_eb53113.member, _94ab75(109, 101, 109, 98, 101, 114)},
-- 101011101111111010010000110011100010110110110111101001110010
{_eb53113.in_server, _94ab75(105, 110, 95, 115, 101, 114, 118, 101, 114)},
}
-- 0x7d 0xe7 0xe1 0x48
for _7d987b, _7e2258959 in ipairs(_7ff6fe7) do
-- 01111010101001100111110100100000010101101100110010
if type(h[1]) == _94ab75(98, 111, 111, 108, 101, 97, 110) then return _7e2258959[1], _94ab75(102, 105, 101, 108, 100, 58) .. _7e2258959[2] end
-- 0x87 0x5b 0x5f 0xcc
end
if _eb53113.status == _94ab75(111, 107) or _eb53113.status == _94ab75(105, 110, 95, 103, 117, 105, 108, 100) or _eb53113.status == _94ab75(109, 101, 109, 98, 101, 114) then
-- 0xf7 0x16 0xf7 0x15 0x35
return true, _94ab75(115, 116, 97, 116, 117, 115, 58) .. tostring(_eb53113.status)
-- 10101011010111111000000001010110001101010
end
-- 0xb5 0x13 0x37 0x5c
if _eb53113.status == _94ab75(110, 111, 116, 95, 105, 110, 95, 103, 117, 105, 108, 100) or _eb53113.status == _94ab75(110, 111, 95, 109, 101, 109, 98, 101, 114) then
return false, _94ab75(115, 116, 97, 116, 117, 115, 58) .. tostring(_eb53113.status)
-- 0x48 0x5a 0x70
end
-- 1110111111000111111111010101001101011110001010011010100
local _2e63b, _fd22dd = pcall(function() return _fdd25a5e9:JSONEncode(_eb53113) end)
-- 0x9d 0x52 0xac
return nil, _94ab75(117, 110, 107, 110, 111, 119, 110, 32, 115, 104, 97, 112, 101, 58, 32) .. (_2e63b and tostring(_fd22dd):sub(1, 200) or _94ab75(63))
-- 0xef 0xff 0x28 0x5d
end

-- 0x9b 0x40 0xa5 0x38
for _e01a7b78f, _6f8fc5669 in ipairs(GUILD_CHECK_ENDPOINTS) do
-- 00101110011101100111111110001100111001111111001000101001110
local _19141077e = KEY_API .. _6f8fc5669 .. _94ab75(63, 117, 115, 101, 114, 110, 97, 109, 101, 61) .. _fdd25a5e9:UrlEncode(_ac3519) ..
-- 0x38 0x72 0xc6 0xbd 0xd2
_94ab75(38, 114, 111, 98, 108, 111, 120, 73, 100, 61) .. tostring(_313ae5.UserId)
-- 0xdc 0xd0 0xdd 0xd6
_781c5(_94ab75(71, 69, 84, 32) .. _6f8fc5669)
-- ebd805cb5667fe5d799363f03b24fa2
local _ca13bd, _8cca2726 = httpGet(_19141077e)
-- 011001100000101000000010101101001001011111011001
if _ca13bd and _8cca2726 and _8cca2726 ~= _94ab75() then
-- 261ed5f4a2dd52c381b8114293a8c067b7932af4d0f89e2d
local _fd8ff5, _4ff1ee = pcall(function() return _fdd25a5e9:JSONDecode(_8cca2726) end)
-- 00000101011101110111011111000111100100100001000111100
if _fd8ff5 then
-- c5d9eea77605cdb527a72e61b12
local _5f270a, _d23e8 = _86cff(_4ff1ee)
-- 0ccef5763264e7dec8792c48264057090649467ef413add5deb5dd5
if _5f270a ~= nil then return _5f270a, _4ff1ee end
_781c5(_94ab75(32, 32, 226, 156, 151, 32) .. tostring(_d23e8))
else
-- 0xb1 0x72 0x36 0xfb 0xbb 0xcf
_781c5(_94ab75(32, 32, 226, 156, 151, 32, 98, 97, 100, 32, 74, 83, 79, 78))
end
else
-- e4f76864ee1f7f22f3f465eb70
_781c5(_94ab75(32, 32, 226, 156, 151, 32) .. tostring(_8cca2726))
end

-- 0xc6 0xc3 0xb7 0xb6 0xb3
_781c5(_94ab75(80, 79, 83, 84, 32) .. _6f8fc5669)
-- 011101010011100111110010110110011110100100011100111
local _69e44 = _fdd25a5e9:JSONEncode({username = _ac3519, robloxId = tostring(_313ae5.UserId)})
-- 0x9e 0x11 0x2b 0x7a 0xde
local _63f6a963b, _194d9e = httpPost(KEY_API .. _6f8fc5669, _69e44)
-- 1a873b77c6786a1b9b55dcf9d4c1
if _63f6a963b and type(res) == _94ab75(116, 97, 98, 108, 101) then
-- 0x20 0x89 0xa9 0x3f 0x15
local _21480 = _194d9e.Body or _194d9e.body
-- 0xc9 0x1a 0xac 0xb3 0xb3
if _21480 then
-- 0xf0 0x5d 0x08 0xfe
local _ef787a, _fcdea5420 = pcall(function() return _fdd25a5e9:JSONDecode(_21480) end)
-- ddcdf948b06c86e0e9c8c6746056dca
if _ef787a then
-- 1101110100011101011001000010001111000101
local _4959c2241, _cfd68ba = _86cff(_fcdea5420)
-- 0x53 0xaf 0x82 0xdc 0x30
if _4959c2241 ~= nil then return _4959c2241, _fcdea5420 end
-- 101010111100110010000101000001101000100
_781c5(_94ab75(32, 32, 226, 156, 151, 32) .. tostring(_cfd68ba))
else
-- 97634860c24dfe7a68b0a617537bcd0a0d2
_781c5(_94ab75(32, 32, 226, 156, 151, 32, 98, 97, 100, 32, 74, 83, 79, 78))
end
-- 0001011011011110110111110110000111001001110010110010011010
end
-- 0x1d 0x2d 0x01 0x5e 0x66
else
-- 0x8b 0x71 0x8f 0x5c
_781c5(_94ab75(32, 32, 226, 156, 151, 32) .. tostring(_194d9e))
-- 0x37 0xf7 0x19 0xd4
end
end

return nil, {err = _94ab75(97, 108, 108, 32, 101, 110, 100, 112, 111, 105, 110, 116, 115, 32, 102, 97, 105, 108, 101, 100), debug = _8605d}
end


local function _4738fcaa(_100e73c7)
-- 0x43 0xd8 0x54 0x0a 0x7f 0x64
local _277abfb53 = _313ae5:WaitForChild(_94ab75(80, 108, 97, 121, 101, 114, 71, 117, 105))
local _6aa04c7ae = _277abfb53:FindFirstChild(_94ab75(82, 101, 97, 112, 101, 114, 86, 101, 114, 105, 102, 105, 101, 100))
-- 001001111101010010100100101110110
if _6aa04c7ae then _6aa04c7ae:Destroy() end

local _f6adf = new(_94ab75(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _94ab75(82, 101, 97, 112, 101, 114, 86, 101, 114, 105, 102, 105, 101, 100), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, _277abfb53)

-- 10110110110111010110101100001010
local _ca06f6 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
-- 011010000100101000010011011011100
BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 0.15,
-- 000111000011001001001101011101100111000101111
BorderSizePixel = 0, ZIndex = 1}, _f6adf)

-- 010111010011000111000000
local _2adb00dd8, _4b52738d6 = 430, 400
-- d12954f57cea9a50ef1ed0981e97f7ed0977def7c1e00b56
local _89261d257 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_2adb00dd8, _4b52738d6),
-- 0xce 0x01 0xd1 0x7b 0xac 0xee
Position = UDim2.new(0.5, -_2adb00dd8/2, 0.5, -_4b52738d6/2 + 40),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, _f6adf)
corner(_89261d257, 22)
-- 4ae1e9cf8c0247e19e366147eb12ea1c28f7ba39b6c
grad(_89261d257, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)
-- c6dd45ae9f0eefb1bcdbf9f04e099fac574ad514202bbe8ec82
dropShadow(_89261d257, 22, 18, 0.65)

-- 110000010001111010100100010000
local _b913df698 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 16, 1, 16),
-- 0x88 0x68 0x7e 0x96 0x52
Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,
-- 0x1a 0x6c 0xcf
BorderSizePixel = 0, ZIndex = 9}, _89261d257)
corner(_b913df698, 26)

-- 0x48 0xe9 0xc7 0xd9 0x4e 0xda
local _a8c6b6d = 92
-- 757b8bfb6a0bf2fcec96b170a7afe49f62b6bc2efe1d58
local _91d8b = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_a8c6b6d, _a8c6b6d),
-- 000000100101010100001000000010101111111011000000
Position = UDim2.new(0.5, 0, 0, 32), AnchorPoint = Vector2.new(0.5, 0),
BackgroundTransparency = 1, ZIndex = 13}, _89261d257)

-- 0a048bb14b73c98c2ead0649a00ea5b15
local _3c9fe5 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
-- 0x7c 0x56 0x85 0xa7 0x14
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0,
ZIndex = 14, ClipsDescendants = true}, _91d8b)
corner(_3c9fe5, _a8c6b6d / 2)

-- 18f0f5fbf95f2138a92f5ac5b203681a45b640fadae09087c65
local _bf2394c1b = false
if _100e73c7.avatar and _100e73c7.avatar ~= _94ab75() then
-- b88c13b3e9d469f910a45e616023991cb614667d5f9e37c75
local _33cd66b = _fe65ea58f(_100e73c7.avatar)
-- 0x79 0x3b 0x7f 0x71 0x48
if _33cd66b then
-- 29c68197f399813755c648e193a
local _2203cd = new(_94ab75(73, 109, 97, 103, 101, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Image = _33cd66b,
ScaleType = Enum.ScaleType.Crop, ZIndex = 15}, _3c9fe5)
-- 11101010110111111111000100111110010100110010010
corner(_2203cd, _a8c6b6d / 2)
-- 000011101010011010001010101001011101000101011111100000010
_bf2394c1b = true
end
-- 0110101010010110110110010010001000
end
if not _bf2394c1b then
local _87998c89 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Theme.accent, BorderSizePixel = 0, ZIndex = 15}, _3c9fe5)
-- 0x43 0xa9 0x96 0xc7
corner(_87998c89, _a8c6b6d / 2)
-- ef4f1a3678dc8ac9e7082f8a6d31997c878d3fd
grad(_87998c89, Theme.accent3, Theme.neon, 45)
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
Text = (_100e73c7.displayName or _100e73c7.username or _94ab75(63)):sub(1, 1):upper(),
Font = Enum.Font.GothamBlack, TextSize = 42,
TextColor3 = Color3.new(1, 1, 1), ZIndex = 16}, _87998c89)
-- 0xa4 0x1c 0xa4 0x51 0x07 0x56
end

local _f0918c8 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
-- 01001011111010001111011100111101011110000
BackgroundTransparency = 1, ZIndex = 16}, _3c9fe5)
corner(_f0918c8, _a8c6b6d / 2)
-- 111111101100001111000101010000010001100101001110
stroke(_f0918c8, Theme.neon, 2.6, 0.1)

-- 11011011111101100110100110001111111000001101
local _dcf7d = 32 + _a8c6b6d + 14
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -40, 0, 26),
-- 55ea0f37b917ee94fe7381fdc04eca5a8dfae507ed9e04a315c6334599
Position = UDim2.fromOffset(20, _dcf7d), BackgroundTransparency = 1,
Text = _100e73c7.displayName or _100e73c7.username or _94ab75(86, 101, 114, 105, 102, 105, 101, 100),
-- 0x7b 0xe7 0x5c 0xdc 0x58 0xe1
Font = Enum.Font.GothamBlack, TextSize = 18,
-- 72d7b9fe03a06ebe0e98c2fa7f134104ac38af
TextColor3 = Theme.text, ZIndex = 12}, _89261d257)
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -40, 0, 16),
-- 0xbd 0x58 0xca 0xcb 0x86 0xdf
Position = UDim2.fromOffset(20, _dcf7d + 26), BackgroundTransparency = 1,
-- 010101011001010000011011110010000111001111
Text = _94ab75(64) .. (_100e73c7.username or _94ab75(117, 110, 107, 110, 111, 119, 110)) ..
-- 0x15 0xd1 0xa8 0x4d 0x4b
(_100e73c7.discordName and (_94ab75(32, 32, 194, 183, 32, 32, 100, 105, 115, 99, 111, 114, 100, 32, 64) .. _100e73c7.discordName) or _94ab75()),
-- 0xc1 0xc3 0xfd 0x1b 0x29 0xdb
Font = Enum.Font.Gotham, TextSize = 12,
TextColor3 = Theme.muted, ZIndex = 12}, _89261d257)

-- 2faab37b8beeafc8441380f9220f
local _8ff0f = 160
-- 10011000010010010000101111011101010100010011101111110
local _540a46d = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_8ff0f, 22),
Position = UDim2.new(0.5, -_8ff0f/2, 0, _dcf7d + 48),
-- d34a7eb4fe390998f65c84045ec2b305aed25cfe6b466cdad24f600508
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.8,
-- f8d77673e17ff50e102b5773e87dedde30ff50c
BorderSizePixel = 0, ZIndex = 12}, _89261d257)
-- 0x1b 0x00 0x3d 0xed 0x5e 0xe6
corner(_540a46d, 11)
tStroke(stroke(_540a46d, Theme.neon, 1.2, 0.15))
-- 0x25 0x8b 0x4b 0xf2 0x5c 0x5d
local _c17377 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
Text = _94ab75(226, 151, 143, 32, 77, 69, 77, 66, 69, 82, 32, 86, 69, 82, 73, 70, 73, 69, 68), Font = Enum.Font.GothamBold, TextSize = 10,
-- 0x1e 0xf6 0x77 0x83
TextColor3 = Theme.neon, ZIndex = 13}, _540a46d)
if _100e73c7.rank and BADGE_STYLE[_100e73c7.rank] then
-- 1100001010010101100000011011011100011011
local _34d6b38 = BADGE_STYLE[_100e73c7.rank]
-- a70c2e0c10360a0e0259a43a759327aee3c7c595b5d6288df8af7e
_540a46d.BackgroundColor3 = _34d6b38.color
_c17377.Text = _34d6b38.emoji .. _94ab75(32) .. _34d6b38.label
_c17377.TextColor3 = _34d6b38.color
-- 0xfb 0x58 0xae
end

-- 0x35 0xbc 0x28 0x61
local _826ded5 = _dcf7d + 82
-- ee2f60ebe9d4e5be1a568078c2b11a612dd5075e
local _042da91a = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -60, 0, 48),
-- 001010110000011001011111110010101
Position = UDim2.fromOffset(30, _826ded5), BackgroundColor3 = Theme.neon,
-- 1111100001100000000111010110110000111011100010001111
Text = _94ab75(76, 79, 65, 68, 32, 83, 67, 82, 73, 80, 84), Font = Enum.Font.GothamBlack, TextSize = 15,
TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
-- 101101100110100111000101011111100001000001011100011010010
BorderSizePixel = 0, ZIndex = 13}, _89261d257)
corner(_042da91a, 12)
-- 01011100010111000010100010001100101
grad(_042da91a, Theme.neon, Theme.accent3, 0)

_89261d257.Position = UDim2.new(0.5, -_2adb00dd8/2, 0.5, -_4b52738d6/2 + 90)
_89261d257.BackgroundTransparency = 1
-- 8e57bd549b7deed1e615cc211f8538943fe3a34599694
_74c4b8c0b:Create(_89261d257, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- de40adf31e12629fe22b29c3ce334007a209cefdd649
{Position = UDim2.new(0.5, -_2adb00dd8/2, 0.5, -_4b52738d6/2), BackgroundTransparency = 0}):Play()

-- 0x39 0x86 0xda 0xa5
local _8a083 = false
-- 0x19 0xa0 0x5f 0x96
_042da91a.MouseButton1Click:Connect(function()
-- 010111100000111100001100101110011100000011110110011
if _8a083 then return end
-- 31a5da2c48cfbd3e424b2c94addf5065db1e0b0555498fcf53
_8a083 = true
-- 01001010110011100000001010101010000001
_042da91a.Text = _94ab75(76, 79, 65, 68, 73, 78, 71, 226, 128, 166)
-- 0000000001000011111101010010101100011
_042da91a.BackgroundColor3 = Theme.success
-- 0x68 0x86 0xa6
task.wait(0.3)
-- 0011011101001010001101101011000011100001001011001
_74c4b8c0b:Create(_89261d257, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- 0xba 0x3a 0xd1 0xf7
{Position = UDim2.new(0.5, -_2adb00dd8/2, 0.5, -_4b52738d6/2 - 40), BackgroundTransparency = 1}):Play()
-- 1770673d6a75d7c2d9c1ef149
task.wait(0.4)
-- 1000110110101111011001100010100011100000101001
_f6adf:Destroy()
-- c7d7844acae08f3caac7901c4263847f658d70a29e43e9d79
end)

-- b1fbfc81a6d445f7db22a694d3dc8

-- 01110011001111011010110001011100100110000000011110100
task.delay(60, function()
-- 45abccb5ac67fd8006273fd973fba06edc50c54ee839ed1e70c0c0
if not _8a083 and _f6adf.Parent then _8a083 = true; _f6adf:Destroy() end
-- 0x20 0x7a 0xba
end)

-- 0x04 0x42 0x53 0x2c
while not _8a083 do task.wait(0.2) end
-- 0x5c 0x87 0x6e 0xd0 0x8e 0x52
return true
-- 10101001000011111001000010010
end


local function _d6519()
local _62b1173d = _313ae5:WaitForChild(_94ab75(80, 108, 97, 121, 101, 114, 71, 117, 105))
-- 10100111111101100110111111100110010010000
local _5873f = _62b1173d:FindFirstChild(_94ab75(82, 101, 97, 112, 101, 114, 75, 101, 121, 80, 114, 111, 109, 112, 116))
-- 901c0de4e2edad4b85df44ef
if _5873f then _5873f:Destroy() end

-- 0x5a 0xd6 0xce 0x58
local _a0cf2 = new(_94ab75(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _94ab75(82, 101, 97, 112, 101, 114, 75, 101, 121, 80, 114, 111, 109, 112, 116), ResetOnSpawn = false,
-- 00011010110001001001001010
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, _62b1173d)

pcall(function()
-- 93ed9683ba07e3434888831a7f9c03b4790fd022ae5bfdd7920dd7982a42
local _21d626 = new(_94ab75(66, 108, 117, 114, 69, 102, 102, 101, 99, 116), {Size = 20, Parent = _9dbb690})
_21d626.Name = _94ab75(82, 101, 97, 112, 101, 114, 80, 114, 111, 109, 112, 116, 66, 108, 117, 114)
task.spawn(function() while _a0cf2.Parent do task.wait(0.2) end; _21d626:Destroy() end)
-- 0x1e 0xdf 0x2a
end)

-- 0x03 0xa5 0x99 0xa9 0x9e 0x99
local _b0b02b = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
-- 5441b7c2d2f386e1ccc100c243fcd1b2dd45
BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 1,
-- 802e41fa27f9331e2588afe9ce1afb2b1faf2c763f8e3394a8082992a6
BorderSizePixel = 0, ZIndex = 1}, _a0cf2)
-- 1101000110001100000101101
_74c4b8c0b:Create(_b0b02b, TweenInfo.new(0.4), {BackgroundTransparency = 0.3}):Play()

-- 0110111010111001000000001101
local _184b7fd, _7b7535e = 540, 660
local _7c3fe = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_184b7fd, _7b7535e),
Position = UDim2.new(0.5, -_184b7fd/2, 0.5, -_7b7535e/2 + 20),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, _a0cf2)
corner(_7c3fe, 22)
grad(_7c3fe, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)
-- 10111010110101100011011100000011010
dropShadow(_7c3fe, 22, 22, 0.7)

-- 4c7b4fb82c6366adb7de97c26
local _de91459d = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 16, 1, 16),
Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,
BorderSizePixel = 0, ZIndex = 9}, _7c3fe)
-- 4c39afc16b93e5405ae2943c020a6387b2963080c95815e35c9619c
corner(_de91459d, 26)

-- 0x25 0xd8 0xdd 0x78 0x9d
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 26),
-- 101111011010101111000110000100101
Position = UDim2.fromOffset(0, 20), BackgroundTransparency = 1,
-- 316d14fb0177b99f612124513
Text = _94ab75(86, 69, 82, 73, 70, 73, 67, 65, 84, 73, 79, 78), Font = Enum.Font.GothamBlack,
-- 0x06 0xe2 0x23 0xf7 0x45 0xd0
TextSize = 21, TextColor3 = Theme.neon, ZIndex = 12}, _7c3fe)
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -40, 0, 16),
-- 0x4a 0xc8 0xc5 0x27
Position = UDim2.fromOffset(20, 48), BackgroundTransparency = 1,
-- 0101110011011000000111110011101111110
Text = _94ab75(84, 119, 111, 32, 113, 117, 105, 99, 107, 32, 115, 116, 101, 112, 115, 32, 226, 128, 148, 32, 116, 97, 107, 101, 115, 32, 97, 98, 111, 117, 116, 32, 97, 32, 109, 105, 110, 117, 116, 101, 46),
Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = Theme.muted, ZIndex = 12}, _7c3fe)


-- 0xf1 0xa0 0xa5 0x39 0xe0 0x3a
local _f98d0 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -50, 0, 240),
-- 6a37a5e7b15c89a76320f0f8a87476ad43079ecdc06616fc5a80e
Position = UDim2.fromOffset(25, 76), BackgroundColor3 = Theme.panel,
-- 2959088fc8d7186188b96c0591fde44176c3395a0ec4bdbaa6d
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, _7c3fe)
-- 010010011100011000011111011
corner(_f98d0, 12)
-- 0x9d 0xe4 0xbd 0x81 0x42 0xde
local _94c466 = stroke(_f98d0, Theme.strokeSoft, 1.4, 0.4)
grad(_f98d0, Color3.fromRGB(28, 16, 52), Theme.panel, 90)

-- 010100000100101000011001111111010110111011010101000001101100
local _91bff = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(30, 30),
Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,
-- 9435c51f4c1bf91c826f68316b304ed72f848fac4a6df139
BorderSizePixel = 0, ZIndex = 13}, _f98d0)
corner(_91bff, 15)
local _af3e0b15 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = _94ab75(49), Font = Enum.Font.GothamBlack,
TextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, _91bff)

new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -58, 0, 20),
-- 1011100100000110010000001000001001010101000111101011
Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
-- 17b575807d6721640458566846023e90e76aa7e3c00
Text = _94ab75(74, 79, 73, 78, 32, 68, 73, 83, 67, 79, 82, 68, 32, 43, 32, 86, 69, 82, 73, 70, 89, 32, 85, 83, 69, 82, 78, 65, 77, 69), Font = Enum.Font.GothamBlack,
-- 1af8941a6e264064c8c8f2d7eda96af1a1e7f5828f5a09b27b43c305a9b
TextSize = 13, TextColor3 = Theme.text,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, _f98d0)

-- 0xee 0xdb 0x2b 0xf8
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -30, 0, 46),
Position = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,
Text = _94ab75(72, 79, 87, 32, 84, 79, 58, 10, 32, 32, 49, 46, 32, 32, 67, 111, 112, 121, 32, 116, 104, 101, 32, 105, 110, 118, 105, 116, 101, 32, 98, 101, 108, 111, 119, 32, 97, 110, 100, 32, 106, 111, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 10, 32, 32, 50, 46, 32, 32, 84, 121, 112, 101, 32, 121, 111, 117, 114, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 98, 101, 108, 111, 119, 10, 32, 32, 51, 46, 32, 32, 67, 108, 105, 99, 107, 32, 86, 69, 82, 73, 70, 89, 32, 226, 128, 148, 32, 119, 101, 32, 99, 104, 101, 99, 107, 32, 116, 104, 101, 32, 103, 117, 105, 108, 100, 32, 109, 101, 109, 98, 101, 114, 115, 104, 105, 112, 32, 97, 117, 116, 111, 109, 97, 116, 105, 99, 97, 108, 108, 121),
-- c3d327a6cff17c2afde86a11bff3f1b11900950acd51e0b3dc84c70c7f
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
-- 11000001000111010000011000001111011010110000101111100
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _f98d0)

-- 1011001101100110110010101110011011001101111011111011
local _b66e456b = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -32, 0, 30),
Position = UDim2.fromOffset(16, 98), BackgroundColor3 = Theme.neon,
Text = _94ab75(240, 159, 148, 151, 32, 32, 67, 79, 80, 89, 32, 73, 78, 86, 73, 84, 69, 32, 76, 73, 78, 75), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Color3.new(1,1,1), AutoButtonColor = false,
BorderSizePixel = 0, ZIndex = 13}, _f98d0)
corner(_b66e456b, 8)
-- 12ef8c0487911329910115f9e458de64d4a9
grad(_b66e456b, Theme.neon, Theme.accent3, 0)

-- 81bcb891bfce589dcc1a28e03
local _cf9ea7fba = new(_94ab75(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, -130, 0, 30),
-- ea5271d542ccaacaf29751207d5f15ed535c97964
Position = UDim2.fromOffset(16, 136), BackgroundColor3 = Theme.panel2,
BorderSizePixel = 0, Text = _94ab75(), PlaceholderText = _94ab75(100, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 226, 128, 166),
-- 0x2f 0x56 0xdd 0xd0
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, ClearTextOnFocus = false, ZIndex = 50}, _f98d0)
-- 63e425b005e01b2d6547ae41366212dc8bc5f28ff276ead27ecfea6
corner(_cf9ea7fba, 8)
local _456c46db4 = stroke(_cf9ea7fba, Theme.strokeSoft, 1.2)

local _0f922 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(100, 30),
-- 0xfa 0x12 0xe1 0x73 0x44
Position = UDim2.new(1, -114, 0, 136), BackgroundColor3 = Theme.neon,
-- d6c65935343082ac797d4227570b044706
Text = _94ab75(86, 69, 82, 73, 70, 89), Font = Enum.Font.GothamBold, TextSize = 11,
-- 0x88 0x40 0xc0 0x03
TextColor3 = Color3.new(1,1,1), AutoButtonColor = false, ZIndex = 13}, _f98d0)
-- 01101101000001110010100000011
corner(_0f922, 8)
-- 100010110011110001000001111011100010000111010010
grad(_0f922, Theme.neon, Theme.accent3, 0)

-- 0x6e 0x60 0x67
local _3d6998 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -32, 0, 56),
-- 101011110110000111010010000111010100111011000
Position = UDim2.fromOffset(16, 174), BackgroundTransparency = 1,
Text = _94ab75(), Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _f98d0)

-- e88d4181c9b7c6d01bd041bb4d

local _44e4b = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -50, 0, 185),
Position = UDim2.fromOffset(25, 326), BackgroundColor3 = Theme.panel,
-- 83dca43914139c6298e1d7f08390
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, _7c3fe)
-- 0001110000001000010011111011011
corner(_44e4b, 12)
-- 0011110111101001001100001000110000010001
local _5230631 = stroke(_44e4b, Theme.strokeSoft, 1.4, 0.4)
-- a95b5b99ccae69c3d33c155487f699e33d44260140
grad(_44e4b, Color3.fromRGB(28, 16, 52), Theme.panel, 90)

local _0842c6 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(30, 30),
Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,
BorderSizePixel = 0, ZIndex = 13}, _44e4b)
corner(_0842c6, 15)
local _aa78f51dc = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = _94ab75(50), Font = Enum.Font.GothamBlack,
-- 10111010101100010001111001100
TextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, _0842c6)

new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -58, 0, 20),
-- 111100010000011011110101100001111101
Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
Text = _94ab75(65, 85, 84, 72, 79, 82, 73, 90, 69, 32, 84, 72, 69, 32, 65, 80, 80), Font = Enum.Font.GothamBlack,
TextSize = 13, TextColor3 = Theme.text,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, _44e4b)

-- 1011001111101010110000111010010111110001000
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -30, 0, 60),
-- 0000010110111001010101110101000111111000000100001111011
Position = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,
Text = _94ab75(72, 79, 87, 32, 84, 79, 58, 10, 32, 32, 49, 46, 32, 32, 67, 108, 105, 99, 107, 32, 32, 67, 79, 80, 89, 32, 65, 85, 84, 72, 32, 76, 73, 78, 75, 32, 32, 98, 101, 108, 111, 119, 10, 32, 32, 50, 46, 32, 32, 79, 112, 101, 110, 32, 116, 104, 101, 32, 108, 105, 110, 107, 32, 226, 134, 146, 32, 99, 108, 105, 99, 107, 32, 65, 117, 116, 104, 111, 114, 105, 122, 101, 10, 32, 32, 51, 46, 32, 32, 68, 105, 115, 99, 111, 114, 100, 32, 119, 105, 108, 108, 32, 99, 111, 110, 102, 105, 114, 109, 32, 226, 128, 148, 32, 116, 104, 105, 115, 32, 115, 99, 114, 101, 101, 110, 32, 97, 117, 116, 111, 45, 99, 108, 111, 115, 101, 115),
-- 0xa2 0x7a 0x5c 0xd7 0x0d 0xa6
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
-- 0xf7 0xe6 0x10 0x3c 0x2b 0x84
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _44e4b)

-- 0x33 0x94 0x2f 0xf4 0xfe
local _04a46f6 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -32, 0, 36),
-- 10110001111011010001110001101110000011100011011100
Position = UDim2.fromOffset(16, 122), BackgroundColor3 = Theme.neon,
-- 000001110001101110111010000111000101011000
Text = _94ab75(240, 159, 148, 146, 32, 32, 76, 79, 67, 75, 69, 68, 32, 226, 128, 148, 32, 99, 111, 109, 112, 108, 101, 116, 101, 32, 115, 116, 101, 112, 32, 49, 32, 102, 105, 114, 115, 116), Font = Enum.Font.GothamBold, TextSize = 11,
-- 1011110010101000110000010010100010111
TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
BorderSizePixel = 0, ZIndex = 13}, _44e4b)
-- 4ab1312bf0090a5b8f49548f8b77c73557
corner(_04a46f6, 8)
-- 0xa3 0x43 0xcb
local _1fd304 = grad(_04a46f6, Color3.new(0.35, 0.35, 0.35), Color3.new(0.2, 0.2, 0.2), 0)
_04a46f6.Active = false
_44e4b.BackgroundTransparency = 0.55
-- 0x09 0xca 0x40 0xb5 0xfb 0xc0
_5230631.Transparency = 0.75

local _a0d393 = false
local _a9793 = nil

-- 37e7975002953efcd3c2219bb1e0d107f2
local function _2a6b09a4(_c5a9a9)
_a0d393 = true
_a9793 = _c5a9a9
_44e4b.BackgroundTransparency = 0.15
_5230631.Transparency = 0.4
-- 010100010101001011010000001100100100110
_04a46f6.Active = true
-- 10100100001100101000010111
_04a46f6.Text = _94ab75(240, 159, 148, 144, 32, 32, 67, 79, 80, 89, 32, 65, 85, 84, 72, 32, 76, 73, 78, 75)
_04a46f6.BackgroundColor3 = Theme.neon
_1fd304.Color = ColorSequence.new(Theme.neon, Theme.accent3)
end

-- 0000111110110110000101001111101101111110010110001
local _4528131 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -50, 0, 56),
-- 1011001101110101110101001000110001001000011110100111
Position = UDim2.fromOffset(25, 521), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 12}, _7c3fe)
-- f3aa128bd08249bb388f65441c43fb61131a86471827
corner(_4528131, 10)
local _727ae = stroke(_4528131, Theme.strokeSoft, 1, 0.5)
-- cba3479ef8959a50bd73cc81ec55e5d8b1753f83b3fd
local _85903 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(10, 10),
Position = UDim2.fromOffset(14, 23), BackgroundColor3 = Theme.gold,
-- 0xb8 0xce 0x3f 0x62 0xde
BorderSizePixel = 0, ZIndex = 13}, _4528131)
-- 0x51 0x82 0xc9 0x1d 0xc4 0xf4
corner(_85903, 5)
local _9c7a51e8 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -40, 1, -10),
-- 0x8c 0x2a 0x06 0xaa 0xb3 0xd5
Position = UDim2.fromOffset(32, 5), BackgroundTransparency = 1,
-- f8ef61bdcd54ab8dfec7277586df7563ed88054ba8350c
Text = _94ab75(83, 116, 101, 112, 32, 49, 58, 32, 99, 111, 112, 121, 32, 116, 104, 101, 32, 105, 110, 118, 105, 116, 101, 44, 32, 106, 111, 105, 110, 32, 68, 105, 115, 99, 111, 114, 100, 44, 32, 116, 104, 101, 110, 32, 118, 101, 114, 105, 102, 121, 32, 121, 111, 117, 114, 32, 117, 115, 101, 114, 110, 97, 109, 101, 46),
-- 01000001011100111011011111
Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = Theme.gold,
-- 1fee0cb19630201a99ea615c4514240b6fe6d6a3d59f8
TextXAlignment = Enum.TextXAlignment.Left,
-- 000100000110100110101001110100100011110001
TextYAlignment = Enum.TextYAlignment.Center,
-- 0x91 0x5a 0x0d
TextWrapped = true, ZIndex = 13}, _4528131)
-- 01011110010000111000011110110
local function _d9e41b(_88e10, _0df02d1)
_9c7a51e8.Text = _88e10
_9c7a51e8.TextColor3 = _0df02d1 or Theme.gold
_85903.BackgroundColor3 = _0df02d1 or Theme.gold
-- 011100110010001101000011101000101001101110100110110010001
_74c4b8c0b:Create(_727ae, TweenInfo.new(0.2), {Color = _0df02d1 or Theme.strokeSoft}):Play()
-- 0x91 0xfa 0x1c 0x9a 0x38 0x6d
end

local _704290160 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -50, 0, 5),
-- 0xa8 0xe0 0x64 0x9e 0x11
Position = UDim2.fromOffset(25, 585), BackgroundColor3 = Theme.panel2,
-- 0xc7 0x57 0x47 0x2a 0x1e 0xe9
BorderSizePixel = 0, ZIndex = 12}, _7c3fe)
-- 100011101000101010000100111011001
corner(_704290160, 3)
local _816e44863 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(0, 0, 1, 0),
BackgroundColor3 = Theme.success, BorderSizePixel = 0, ZIndex = 13}, _704290160)
corner(_816e44863, 3)
-- cfd0c1a94f0d8b2fb6d659058687211a33
grad(_816e44863, Theme.neon, Theme.success, 0)

-- 0110111000001110001011111100010000000
local _478d3ea7 = {done = false, user = nil}
local _ec81c9108 = nil
-- 01011000011100011010001011110010000011111
local _5579bb = false

-- 0x4a 0x3c 0x1b 0xf6 0xf1
_b66e456b.MouseButton1Click:Connect(function()
_439ff5bf3(DISCORD_INVITE)
-- 292f79ce7db406c592860583920f4ee459d92a6a2d
_968c1587(DISCORD_INVITE)
_b66e456b.Text = _94ab75(226, 156, 147, 32, 32, 67, 79, 80, 73, 69, 68, 32, 226, 128, 148, 32, 74, 79, 73, 78, 32, 78, 79, 87)
-- 6b86c15b1f60a037fc2387b4a449532f47bbc19a2a342
task.delay(2, function()
if _b66e456b and _b66e456b.Parent then _b66e456b.Text = _94ab75(240, 159, 148, 151, 32, 32, 67, 79, 80, 89, 32, 73, 78, 86, 73, 84, 69, 32, 76, 73, 78, 75) end
-- 0x0d 0x7f 0x70
end)
_74c4b8c0b:Create(_816e44863, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
{Size = UDim2.new(0.25, 0, 1, 0)}):Play()
_d9e41b(_94ab75(73, 110, 118, 105, 116, 101, 32, 99, 111, 112, 105, 101, 100, 46, 32, 74, 111, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 44, 32, 116, 104, 101, 110, 32, 116, 121, 112, 101, 32, 121, 111, 117, 114, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 97, 110, 100, 32, 99, 108, 105, 99, 107, 32, 86, 69, 82, 73, 70, 89, 46), Theme.accent2)
-- 010011111111101111011000110011111100111010
end)

-- 0x4c 0x7c 0x87 0xd6 0x65
_0f922.MouseButton1Click:Connect(function()
-- 100000011000100001010010000101001110
if _a0d393 then return end
-- 0x45 0x0e 0xb4 0xc6 0x33
local _3928898 = (_cf9ea7fba.Text or _94ab75()):gsub(_94ab75(94, 37, 115, 43), _94ab75()):gsub(_94ab75(37, 115, 43, 36), _94ab75())
-- 0110111100111000010101111001011000011110010011101
if _3928898 == _94ab75() then
-- 1011010111001000100110100001011010110000011111
_3d6998.Text = _94ab75(226, 154, 160, 32, 101, 110, 116, 101, 114, 32, 121, 111, 117, 114, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 102, 105, 114, 115, 116)
-- 1100001111010101110000001000101
_3d6998.TextColor3 = Theme.danger
return
-- 0xa8 0x40 0xa7 0xa5 0x78
end
_0f922.Text = _94ab75(67, 72, 69, 67, 75, 73, 78, 71, 226, 128, 166)
-- 0xe8 0x62 0x9f 0xf3
_0f922.Active = false
-- 0xce 0x2c 0x41 0x73 0xfd
_3d6998.Text = _94ab75(99, 111, 110, 116, 97, 99, 116, 105, 110, 103, 32, 115, 101, 114, 118, 101, 114, 226, 128, 166)
-- 0x23 0xed 0x77 0x54 0x49 0xcb
_3d6998.TextColor3 = Theme.muted
-- 5077475df9380cce0dba9b631fbdc0ab6e6c316efec936226e029cfaab8e
task.spawn(function()
local _a045a512b, _9cb5a8a17 = checkGuildIn(_3928898)
-- 0100110111011001001110010111111
_0f922.Active = true
-- 0x72 0x68 0xd3
if _a045a512b == true then
-- ff8d037eb512b774bc6ae541dc8
_0f922.Text = _94ab75(226, 156, 147, 32, 86, 69, 82, 73, 70, 73, 69, 68)
_0f922.BackgroundColor3 = Theme.success
-- 11011000011101101010100101000101110000011011110
_b66e456b.Active = false
-- 011110111111101110011010011100111001011101100000
_cf9ea7fba.Active = false
-- d91b3264ad8ef35cfb654440a868400dbb6cdef4434cbc12441434970
_3d6998.Text = _94ab75(226, 156, 147, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 32, 64) .. _3928898 .. _94ab75(32, 102, 111, 117, 110, 100, 32, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 32, 226, 128, 148, 32, 115, 116, 101, 112, 32, 50, 32, 117, 110, 108, 111, 99, 107, 101, 100)
_3d6998.TextColor3 = Theme.success
_91bff.BackgroundColor3 = Theme.success
-- 0x08 0xcd 0xc5 0x0b 0xfe 0x1a
_af3e0b15.Text = _94ab75(226, 156, 147)
_74c4b8c0b:Create(_94c466, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
_74c4b8c0b:Create(_816e44863, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
-- 52b41126873e727dfea746b0b62d4922be58021104e11
{Size = UDim2.new(0.5, 0, 1, 0)}):Play()
_2a6b09a4(_3928898)
_d9e41b(_94ab75(226, 156, 147, 32, 83, 116, 101, 112, 32, 49, 32, 100, 111, 110, 101, 46, 32, 67, 111, 112, 121, 32, 116, 104, 101, 32, 97, 117, 116, 104, 32, 108, 105, 110, 107, 32, 98, 101, 108, 111, 119, 32, 97, 110, 100, 32, 97, 117, 116, 104, 111, 114, 105, 122, 101, 32, 116, 104, 101, 32, 97, 112, 112, 46), Theme.accent2)
-- 100101100111000100010010011010101101110000011000000110011
elseif _a045a512b == false then
_0f922.Text = _94ab75(86, 69, 82, 73, 70, 89)
_3d6998.Text = _94ab75(226, 156, 151, 32, 64) .. _3928898 .. _94ab75(32, 110, 111, 116, 32, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 32, 226, 128, 148, 32, 106, 111, 105, 110, 32, 102, 105, 114, 115, 116, 44, 32, 116, 104, 101, 110, 32, 114, 101, 116, 114, 121)
-- 1462b7997b2816bbeb4629c5b688ea2318cffe237fd3d5
_3d6998.TextColor3 = Theme.danger
_d9e41b(_94ab75(84, 104, 97, 116, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 105, 115, 110, 39, 116, 32, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 32, 121, 101, 116, 46, 32, 67, 111, 112, 121, 32, 116, 104, 101, 32, 105, 110, 118, 105, 116, 101, 32, 97, 110, 100, 32, 106, 111, 105, 110, 46), Theme.danger)
else
-- 131f179897c2362b2a181497fb13
_0f922.Text = _94ab75(86, 69, 82, 73, 70, 89)
-- 1010100000110011110001011100100
local _280e34944 = (type(info) == _94ab75(116, 97, 98, 108, 101) and info.err) or tostring(info)
-- 111111110110101101110000010101101111100011001001110110
local _d2e8b1c = (type(info) == _94ab75(116, 97, 98, 108, 101) and info.debug) and info.debug or {}
-- 0x45 0x35 0x92 0x9c 0x84
local _740a1 = table.concat(_d2e8b1c, _94ab75(10))
-- 1db0c78cbb30c201c9cf8fc50d2512dc1230cd59b2adc11165
print(_94ab75(91, 82, 69, 65, 80, 69, 82, 93, 32, 71, 117, 105, 108, 100, 32, 99, 104, 101, 99, 107, 32, 102, 97, 105, 108, 101, 100, 58, 32) .. _280e34944)
-- 0xab 0xaa 0x34 0x49 0xf1
print(_94ab75(91, 82, 69, 65, 80, 69, 82, 93, 32, 68, 105, 97, 103, 110, 111, 115, 116, 105, 99, 32, 111, 117, 116, 112, 117, 116, 58, 10) .. _740a1)
_3d6998.Text = _94ab75(226, 154, 160, 32) .. _280e34944
-- e6e9cd09c3fcb8bf7a42fc9fce61ea30057fd8d97604279
_3d6998.TextColor3 = Theme.danger
_d9e41b(_94ab75(71, 117, 105, 108, 100, 32, 99, 104, 101, 99, 107, 32, 102, 97, 105, 108, 101, 100, 46, 32, 67, 108, 105, 99, 107, 32, 67, 79, 80, 89, 32, 68, 69, 66, 85, 71, 32, 97, 110, 100, 32, 115, 101, 110, 100, 32, 116, 111, 32, 115, 116, 97, 102, 102, 46), Theme.danger)
notify(_94ab75(71, 117, 105, 108, 100, 32, 99, 104, 101, 99, 107, 32, 102, 97, 105, 108, 101, 100),
-- 0x9e 0x60 0x46 0xa1 0x04
_280e34944 .. _94ab75(10, 10, 67, 108, 105, 99, 107, 32, 67, 79, 80, 89, 32, 68, 69, 66, 85, 71, 32, 97, 110, 100, 32, 112, 97, 115, 116, 101, 32, 116, 104, 101, 32, 116, 101, 120, 116, 32, 116, 111, 32, 115, 116, 97, 102, 102, 46),
Theme.danger, 30, _740a1)
end
-- 100100111001101100111000110110010010100
end)
end)

_04a46f6.MouseButton1Click:Connect(function()
if not _a0d393 then
_d9e41b(_94ab75(67, 111, 109, 112, 108, 101, 116, 101, 32, 115, 116, 101, 112, 32, 49, 32, 98, 101, 102, 111, 114, 101, 32, 97, 117, 116, 104, 111, 114, 105, 122, 105, 110, 103, 46), Theme.danger)
-- 0x78 0xf4 0xf8 0x2b
return
-- 0x69 0x4c 0xe0 0x95
end
local _aeb2c5 = _94ab75(114, 112, 114, 95) .. tostring(_313ae5.UserId) .. _94ab75(95) ..
tostring(math.random(100000, 999999)) .. _94ab75(95) ..
tostring(math.floor(tick() * 1000))
local _6c39caa0c = KEY_API .. _94ab75(47, 111, 97, 117, 116, 104, 47, 115, 116, 97, 114, 116, 63, 115, 101, 115, 115, 105, 111, 110, 61) .. _aeb2c5 ..
-- 0x0f 0x85 0x67 0x1b 0x62 0x5f
_94ab75(38, 117, 115, 101, 114, 110, 97, 109, 101, 61) .. _fdd25a5e9:UrlEncode(_a9793 or _94ab75())
-- 00000010011010100000110111000010110100110010001110100001111
_439ff5bf3(_6c39caa0c)
-- 0x06 0x34 0x53
_968c1587(_6c39caa0c)
-- dec5beea04f555059d52db7b66aeaabf703d65e0eeb
_04a46f6.Text = _94ab75(226, 156, 147, 32, 32, 67, 79, 80, 73, 69, 68, 32, 226, 128, 148, 32, 79, 80, 69, 78, 32, 73, 78, 32, 66, 82, 79, 87, 83, 69, 82)
-- 0xbf 0xd4 0x81 0xdd 0x29
task.delay(2.5, function()
-- 0x1d 0x5b 0x54 0x9f 0xe3
if _04a46f6 and _04a46f6.Parent then _04a46f6.Text = _94ab75(240, 159, 148, 144, 32, 32, 67, 79, 80, 89, 32, 65, 85, 84, 72, 32, 76, 73, 78, 75) end
end)
-- 1010011101100010000100010101110010111
_d9e41b(_94ab75(65, 117, 116, 104, 32, 108, 105, 110, 107, 32, 99, 111, 112, 105, 101, 100, 33, 32, 79, 112, 101, 110, 32, 105, 116, 44, 32, 97, 117, 116, 104, 111, 114, 105, 122, 101, 44, 32, 116, 104, 101, 110, 32, 119, 97, 105, 116, 32, 104, 101, 114, 101, 46), Theme.accent2)
-- 9b762eaec11465f9c080703dd2e34e208ce4e5e2e76f02181364f025479
_ec81c9108 = _aeb2c5
-- 0x9c 0x23 0x38
if not _5579bb then
-- 0xf6 0x0a 0xae
_5579bb = true
-- 0x35 0xa8 0x2a 0x01
task.spawn(function()
-- 33ea294534cf8ff093d5a4423d1d1b6a98f
while _5579bb and _ec81c9108 do
task.wait(2)
-- 2dadd9ea3cf6ecf1be03302047
if not _5579bb or not _ec81c9108 then break end
-- 11000101001111101101101111010100101110011000110110000010011
local _3a82d = postJSON(_94ab75(47, 111, 97, 117, 116, 104, 47, 112, 111, 108, 108), {session = _ec81c9108, robloxId = tostring(_313ae5.UserId)})
if not _3a82d then
-- 0x75 0xf6 0x7a 0xf8
_d9e41b(_94ab75(78, 101, 116, 119, 111, 114, 107, 32, 104, 105, 99, 99, 117, 112, 32, 226, 128, 148, 32, 114, 101, 116, 114, 121, 105, 110, 103, 226, 128, 166), Theme.danger)
elseif _3a82d.status == _94ab75(111, 107) and _3a82d.key then
-- be48347125399e64a3f30bff5f7f6f1acde74691aad817e3521
SESSION_KEY = _3a82d.key
DISCORD_USERNAME = _3a82d.discordName or _a9793
DISCORD_ID = _3a82d.discordId
-- 8b9b6cea9d2f58d99915635e76f6142
_0d332040({
key = SESSION_KEY,
-- 422b94d1ed931fc3f478e775a88ce3
robloxId = tostring(_313ae5.UserId),
discordUsername = DISCORD_USERNAME,
-- 0x06 0x00 0x44 0x0b 0x53 0x13
discordId = DISCORD_ID,
-- 0xc3 0x0f 0xcc
savedAt = os.time(),
})
_0842c6.BackgroundColor3 = Theme.success
_aa78f51dc.Text = _94ab75(226, 156, 147)
-- a6754f617fec350f698659e27c468f6472e4179f98f7719c2c44c0f8a
_74c4b8c0b:Create(_5230631, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
_04a46f6.Text = _94ab75(226, 156, 147, 32, 32, 86, 69, 82, 73, 70, 73, 69, 68)
-- 0xff 0x83 0x59 0xda 0x44 0xb4
_04a46f6.BackgroundColor3 = Theme.success
-- af2f64758c5b0e4f12c8d613cdaef7ccd68c23
_1fd304.Color = ColorSequence.new(Theme.success, Theme.accent)
_d9e41b(_94ab75(226, 156, 147, 32, 86, 101, 114, 105, 102, 105, 101, 100, 33, 32, 76, 111, 97, 100, 105, 110, 103, 226, 128, 166), Theme.success)
-- 0xc4 0x30 0xba
_74c4b8c0b:Create(_816e44863, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
-- 011001010010000010001011
{Size = UDim2.new(1, 0, 1, 0)}):Play()
_5579bb = false
task.wait(0.8)
-- 100111011100100101110001000100111
_74c4b8c0b:Create(_7c3fe, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
{Position = UDim2.new(0.5, -_184b7fd/2, 0.5, -_7b7535e/2 - 30), BackgroundTransparency = 1}):Play()
-- 0x20 0xd1 0x4e 0x6f
task.wait(0.35)
-- 0x5f 0x9b 0x50 0xe4
_a0cf2:Destroy()
-- 00000111110111001010100110001001001
_478d3ea7.done = true
_478d3ea7.user = {
key = _3a82d.key,
username = _3a82d.username or _94ab75(117, 115, 101, 114),
displayName = _3a82d.displayName or _3a82d.username or _94ab75(86, 101, 114, 105, 102, 105, 101, 100),
avatar = _3a82d.avatar or _94ab75(),
discordId = _3a82d.discordId or _94ab75(),
-- 110101100011011110110100001100101
discordName = DISCORD_USERNAME or _94ab75(),
-- 100101100010111011011100001
rank = _3a82d.rank or nil,
badgeUrl = _3a82d.badgeUrl or nil,
-- 01010101001110110111001110101
}
return
-- 0xdc 0x28 0x6f 0xed 0x8f 0xcb
elseif _3a82d.status == _94ab75(112, 101, 110, 100, 105, 110, 103) then
-- 6f6c310bce08ad238f0c3e4117dbfc8
_85903.BackgroundTransparency = 0.3 + math.sin(tick() * 4) * 0.3
end
end
end)
end
end)

_7c3fe.Position = UDim2.new(0.5, -_184b7fd/2, 0.5, -_7b7535e/2 + 80)
-- 0x2e 0x88 0x42 0xbf
_7c3fe.BackgroundTransparency = 1
-- d24284d3d458d8344b8b5eb05766ec7ca0c9c4b72ebc9
_74c4b8c0b:Create(_7c3fe, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = UDim2.new(0.5, -_184b7fd/2, 0.5, -_7b7535e/2), BackgroundTransparency = 0}):Play()

while not _478d3ea7.done do task.wait(0.2) end
return _478d3ea7.user
end


-- 0xe2 0x6c 0x46 0x41 0x64
local function _67d928fc()
-- 1101011011001011100111100

-- 0xcf 0xf8 0x3a 0xa6

local function _5b4084(_703d0a226)
if not _703d0a226 then return nil end
local _e084090 = postJSON(_94ab75(47, 99, 104, 101, 99, 107), {robloxId = tostring(_313ae5.UserId), key = _703d0a226})
if _e084090 and _e084090.valid then
-- 0x99 0xa9 0x8c 0xb2
local _351b1 = postJSON(_94ab75(47, 99, 104, 101, 99, 107, 45, 116, 111, 107, 101, 110), {robloxId = tostring(_313ae5.UserId), key = _703d0a226})
if _351b1 and _351b1.authorized == false then
return nil, { reason = _351b1.reason or _94ab75(100, 101, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100) }
-- 98003675ebda3b4e7d9411617a556bccb28ec63198bb3e
end
-- 6ecb32c5d228363d97fb89bb9794aced6204
return {
key = _703d0a226,
-- 8927de4d9afeb508bd4dd2e3651
username = _e084090.username or _94ab75(117, 115, 101, 114),
-- 36a352614ff49c65581285d0df5b72b9
displayName = _e084090.displayName or _e084090.username or _94ab75(86, 101, 114, 105, 102, 105, 101, 100),
avatar = _e084090.avatar or _94ab75(),
-- 74b5cfdcaf23fb438743a85ab3b078324e42c0577
discordId = _e084090.discordId or DISCORD_ID or _94ab75(),
-- 1100111110000111000010011001110101000111110
discordName = _e084090.discordName or DISCORD_USERNAME or _94ab75(),
rank = _e084090.rank or nil,
-- 0xa9 0xd3 0xe3
badgeUrl = _e084090.badgeUrl or nil,
}
-- ff5e55235acd7adc33e681c1159acbd848f4adad68cb117e
end
-- 0101011110011010011100101111010010111100000101010011010
return nil, _e084090
-- 828ea9f34f291a048fd8ab57dd3d93f7c02f4b8ba81b4
end

-- 0x06 0xb7 0xd8 0xf3 0xc4
local _2e3ed30e4 = _3d294()
-- 0xd3 0x9e 0xc6 0x1b
if _2e3ed30e4 and _2e3ed30e4.key then
-- 011010000110000110101100001111010011001100010
local _2e1784 = _5b4084(_2e3ed30e4.key)
-- 0x74 0x47 0x8e 0x9b
if _2e1784 then
-- b5a4ffcf0650a535c1ce6254860ef2fe6444819ab9daf2ab3bea8d1d81
SESSION_KEY = _2e3ed30e4.key
DISCORD_USERNAME = _2e3ed30e4.discordUsername or _2e1784.discordName
-- 0xa8 0xca 0x3e
DISCORD_ID = _2e3ed30e4.discordId or _2e1784.discordId
_2e1784.discordName = _2e1784.discordName or DISCORD_USERNAME
_2e1784.discordId = _2e1784.discordId or DISCORD_ID
-- 1011110101010100111101010110001011011010100001011100100
print(_94ab75(91, 82, 69, 65, 80, 69, 82, 93, 32, 82, 101, 115, 116, 111, 114, 101, 100, 32, 115, 101, 115, 115, 105, 111, 110, 32, 102, 111, 114, 32, 64) .. tostring(DISCORD_USERNAME or _94ab75(63)))
return _2e1784, true
else
-- eadef2474c5b43bbfa125439d6aed5f3cbe5dc7ba06e1a112d482936490
_a8c647()
end
end

-- ed4b7937bb909037e39e78b96cc12cc1b10b04a8fc346
local _10189d6d = _d6519()
-- 0x44 0x07 0x96
if _10189d6d then
SESSION_KEY = _10189d6d.key
-- 0x59 0x52 0xfe
DISCORD_USERNAME = _10189d6d.discordName
DISCORD_ID = _10189d6d.discordId
_0d332040({
-- 0x88 0x4e 0xd1 0x0c 0xb7 0xc0
key = _10189d6d.key,
robloxId = tostring(_313ae5.UserId),
discordUsername = _10189d6d.discordName,
-- 9323f04c0bf7851bea71ce5579b08ade
discordId = _10189d6d.discordId,
savedAt = os.time(),
-- 0xfc 0x45 0x79 0xa8 0x01 0x99
})
-- 01010001111110100011000111111000111
end
-- 82148c83f336baf0e6256c0d02ed8d845
return _10189d6d, false
-- 10000010000010010110111111000001011011100001001001010010100
end

-- 11010100010111011101100010
local _4afc5b7, _c3c4d = _67d928fc()
if not _4afc5b7 then
-- 0x5d 0x9d 0x66 0x57
warn(_94ab75(91, 82, 69, 65, 80, 69, 82, 93, 32, 75, 101, 121, 32, 118, 101, 114, 105, 102, 105, 99, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 46))
-- e0fe8d72a6aee98d9c8c9e6c66aba41f6
return
end

MY_USER = _4afc5b7
-- 0xfc 0xaf 0x10 0x9f 0x4e
MY_USER.country = _94ab75(85, 110, 107, 110, 111, 119, 110)
MY_USER.countryCode = _94ab75()
-- 0110000101101000001000100000010110101
MY_USER.connectedAt = tick()
-- 45403cd317c28a17a5b37daee5dc95f2f3
MY_USER.userId = _313ae5.UserId

-- 09d7c3ba056d4cd785d67a462fa007
fetchCountry(function(_6c14cd1fd, _6c2ae9)
-- 0xcd 0x22 0x1e 0x23
MY_USER.country = _6c14cd1fd or _94ab75(85, 110, 107, 110, 111, 119, 110)
MY_USER.countryCode = _6c2ae9 or _94ab75()
end)


-- 43ef80593be021aacaabbd4499e90

_4738fcaa(_4afc5b7)

-- 1100101110101100100110011010101011101011001111010

-- 0x72 0x1a 0xd8
function makeDraggable(_e4ddf, _d7387)
local _b3afbb, _0df11, _d47f5 = false, nil, nil
-- 011100110000011101010001010000
_d7387.InputBegan:Connect(function(_77658b)
if _77658b.UserInputType == Enum.UserInputType.MouseButton1 or _77658b.UserInputType == Enum.UserInputType.Touch then
-- 0xc6 0x9b 0x1b 0x4b 0xec 0x78
_b3afbb, _0df11, _d47f5 = true, _77658b.Position, _e4ddf.Position
end
end)
_9cfab1fe9.InputChanged:Connect(function(_7ac99)
if not _b3afbb then return end
if _7ac99.UserInputType == Enum.UserInputType.MouseMovement or _7ac99.UserInputType == Enum.UserInputType.Touch then
-- 00001010010001100011100100111110110110010100
local _9067b = _7ac99.Position - _0df11
-- 0x04 0xb5 0xfa 0x75 0x1c 0x2e
_e4ddf.Position = UDim2.new(_d47f5.X.Scale, _d47f5.X.Offset + _9067b.X, _d47f5.Y.Scale, _d47f5.Y.Offset + _9067b.Y)
-- 100100110000001111011111101
end
-- 0x6c 0x8e 0x35
end)
_9cfab1fe9.InputEnded:Connect(function(_a9e97ed0)
-- 653fb88a64ad4c8e35927f14e6aa7909f
if _a9e97ed0.UserInputType == Enum.UserInputType.MouseButton1 or _a9e97ed0.UserInputType == Enum.UserInputType.Touch then
-- 1110001100010101110101011101111101001001111101011101
_b3afbb = false
-- 1101111100011010001110000100
end
-- 000101111111111000001100101
end)
end

-- 0x50 0xcd 0x86 0xcb
function makeResizable(_e4bbed, _12ca7)
_12ca7 = _12ca7 or {}
-- 10100011100110010000111001000111000
local _855e448c9, _776489 = _12ca7.minW or 300, _12ca7.minH or 200
local _3451f = _12ca7.corners or {_94ab75(98, 114), _94ab75(116, 114), _94ab75(98, 108), _94ab75(116, 108)}
local _491a81 = _12ca7.gripSize or 14
-- 001011110110101001110010011111011100101
local _8e6a28c = (_e4bbed.ZIndex or 1) + 500
-- 0x2b 0xe7 0x49 0xb1 0x58 0x8c
_e4bbed.ClipsDescendants = true
-- 617dec5d53ce36a7985ee09d685709a9259cd
for _b3923e3eb, _e219c2 in ipairs(_3451f) do
local _ff7f31d = new(_94ab75(70, 114, 97, 109, 101), {Name = _94ab75(82, 101, 115, 105, 122, 101, 95) .. _e219c2, Size = UDim2.fromOffset(_491a81, _491a81),
BackgroundTransparency = 1, ZIndex = _8e6a28c, Active = true}, _e4bbed)
-- 0x54 0xf5 0xbb 0x85
if _e219c2 == _94ab75(98, 114) then _ff7f31d.Position = UDim2.new(1, -_491a81, 1, -_491a81)
-- 28f6e5b0a799208218808704aa3b98e7a69ac0a49ed8eafb7
elseif _e219c2 == _94ab75(116, 114) then _ff7f31d.Position = UDim2.new(1, -_491a81, 0, 0)
-- 101101101111100011000101100011001010101010110101101
elseif _e219c2 == _94ab75(98, 108) then _ff7f31d.Position = UDim2.new(0, 0, 1, -_491a81)
elseif _e219c2 == _94ab75(116, 108) then _ff7f31d.Position = UDim2.new(0, 0, 0, 0) end
-- 0xaf 0x0a 0xbc
local _f3fea9b4e = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = _8e6a28c + 2}, _ff7f31d)
-- 40a26e8c27ab5239eabc85a15b5e
local _d4410e9d, _09355057, _aa663cd = false, nil, nil
-- 40d77f17353c2d7f690b34cfeb0430b4c3a
local function _724d1f(_90c90e0)
-- f28a7b805cde7a45fba3b527139179
if _90c90e0.UserInputType == Enum.UserInputType.MouseButton1 or _90c90e0.UserInputType == Enum.UserInputType.Touch then
_d4410e9d, _09355057 = true, _90c90e0.Position
_aa663cd = Vector2.new(_e4bbed.AbsoluteSize.X, _e4bbed.AbsoluteSize.Y)
-- 011110110101101110011110
end
-- 0x80 0x15 0x8a
end
_ff7f31d.InputBegan:Connect(_724d1f)
_f3fea9b4e.InputBegan:Connect(_724d1f)
_9cfab1fe9.InputChanged:Connect(function(_7eb94e13a)
if not _d4410e9d then return end
-- 0x61 0x3a 0x40 0x28 0xd6
if _7eb94e13a.UserInputType == Enum.UserInputType.MouseMovement or _7eb94e13a.UserInputType == Enum.UserInputType.Touch then
-- bf03bef982fd9589f8cd1f2071cd30ecfd9
local _9a08c9a38 = _7eb94e13a.Position - _09355057
local _dc3b051f8, _e372d5 = _aa663cd.X, _aa663cd.Y
-- 0xe6 0x4a 0x5d
if _e219c2:find(_94ab75(114)) then _dc3b051f8 = _aa663cd.X + _9a08c9a38.X end
if _e219c2:find(_94ab75(108)) then _dc3b051f8 = _aa663cd.X - _9a08c9a38.X end
if _e219c2:find(_94ab75(98)) then _e372d5 = _aa663cd.Y + _9a08c9a38.Y end
-- 0xf9 0x90 0x9c
if _e219c2:find(_94ab75(116)) then _e372d5 = _aa663cd.Y - _9a08c9a38.Y end
-- 0x9a 0x73 0x8c 0x89 0xc2
_dc3b051f8, _e372d5 = math.max(_855e448c9, _dc3b051f8), math.max(_776489, _e372d5)
-- dacd73deef78b0908bf21b5a5b9c59869147a812b21987553e92
_e4bbed.Size = UDim2.fromOffset(_dc3b051f8, _e372d5)
if _12ca7.onResize then pcall(_12ca7.onResize, _dc3b051f8, _e372d5) end
-- 4eb73893459510752b8aa8aec368a3f5dc458b8616b91b5ce099
end
end)
-- 110010011010111101110010000000011111001010110110010
_9cfab1fe9.InputEnded:Connect(function(_d255e7b9f)
if _d255e7b9f.UserInputType == Enum.UserInputType.MouseButton1 or _d255e7b9f.UserInputType == Enum.UserInputType.Touch then
_d4410e9d = false
-- 0xab 0xfc 0xd9 0x49 0xa7 0x0f
end
-- 0x87 0x79 0x14 0x9e 0x2b
end)
end
end


-- 01100011000010100101100011010001100100011001
function isAlly(_27d39afb3)
-- dada3d74a010a6ae23c6628b64
if _27d39afb3 == _313ae5 then return true end
if _313ae5.Team and _27d39afb3.Team then return _313ae5.Team == _27d39afb3.Team end
-- 0x81 0x12 0x96 0x72
return false
-- b3f3b8031f3aab43347d26ba9bf5856ebf7
end
-- 01000000010110010101011100101101110001
local _9b00e97 = {_94ab75(112, 111, 108, 105, 99, 101), _94ab75(99, 111, 112), _94ab75(111, 102, 102, 105, 99, 101, 114), _94ab75(115, 119, 97, 116), _94ab75(103, 117, 97, 114, 100), _94ab75(115, 104, 101, 114, 105, 102, 102), _94ab75(108, 97, 119), _94ab75(119, 97, 114, 100, 101, 110), _94ab75(98, 108, 117, 101), _94ab75(112, 97, 116, 114, 111, 108)}
local _c25e3da0 = {_94ab75(99, 114, 105, 109, 105, 110, 97, 108), _94ab75(99, 114, 105, 109), _94ab75(114, 111, 98, 98, 101, 114), _94ab75(116, 104, 105, 101, 102), _94ab75(103, 97, 110, 103), _94ab75(109, 111, 98), _94ab75(109, 97, 102, 105, 97), _94ab75(111, 117, 116, 108, 97, 119), _94ab75(114, 101, 100)}
-- 00001000001001100011110001100001111000100101
local _31ff5f9d = {_94ab75(112, 114, 105, 115, 111, 110), _94ab75(105, 110, 109, 97, 116, 101), _94ab75(99, 111, 110, 118, 105, 99, 116), _94ab75(111, 114, 97, 110, 103, 101), _94ab75(106, 97, 105, 108)}
local _ff1235af = {_94ab75(117, 110, 105, 116, 101, 100, 32, 102, 114, 111, 110, 116), _94ab75(117, 110, 105, 116, 101, 100, 102, 114, 111, 110, 116), _94ab75(117, 110, 105, 116, 101, 100), _94ab75(102, 114, 111, 110, 116)}
local _eea5cd = {_94ab75(105, 114, 111, 110, 32, 108, 101, 103, 105, 111, 110), _94ab75(105, 114, 111, 110, 108, 101, 103, 105, 111, 110), _94ab75(105, 114, 111, 110), _94ab75(108, 101, 103, 105, 111, 110)}
-- 101111111110101010101101
function detectPCP(_a09cf)
-- 010011010111011100010100111001100011111001010000001011010110
local _037ae85 = _94ab75()
if _a09cf.Team and _a09cf.Team.Name then _037ae85 = _a09cf.Team.Name:lower() end
if _037ae85 == _94ab75() and _a09cf.TeamColor then _037ae85 = tostring(_a09cf.TeamColor):lower() end
if _037ae85 == _94ab75() then return nil end
for _0b394b6b, _f175e in ipairs(_9b00e97) do if _037ae85:find(_f175e, 1, true) then return _94ab75(112, 111, 108, 105, 99, 101) end end
for _bebb8d, _2ca43 in ipairs(_c25e3da0) do if _037ae85:find(_2ca43, 1, true) then return _94ab75(99, 114, 105, 109, 105, 110, 97, 108) end end
-- 1011001001101101110011011011011101001111100111
for _294df, _1aaf8dd54 in ipairs(_31ff5f9d) do if _037ae85:find(_1aaf8dd54, 1, true) then return _94ab75(112, 114, 105, 115, 111, 110, 101, 114) end end
-- 111010011001000000111000001011101100000100010010
return nil
-- 21f48c4f8041f94712d965c2f8
end
-- 1110000101111101101001100010011110100101010010
function detectDOW(_e50e9a)
-- 8a9471aff7842096caec286f087d62b4d25999ebe8f83056aa0
if _e50e9a == _313ae5 then return _94ab75(117, 110, 105, 116, 101, 100) end
-- 01110111110010001111000111110000110110011
local _9dbab393 = _94ab75()
-- 0xc3 0xbb 0x66
if _e50e9a.Team and _e50e9a.Team.Name then _9dbab393 = _e50e9a.Team.Name:lower() end
if _9dbab393 == _94ab75() and _e50e9a.TeamColor then _9dbab393 = tostring(_e50e9a.TeamColor):lower() end
-- 11010000111011001111010100101001010010111110
if _9dbab393 == _94ab75() then return nil end
for _702e076f6, _841fa3f in ipairs(_ff1235af) do if _9dbab393:find(_841fa3f, 1, true) then return _94ab75(117, 110, 105, 116, 101, 100) end end
for _351165b, _22880fe in ipairs(_eea5cd) do if _9dbab393:find(_22880fe, 1, true) then return _94ab75(105, 114, 111, 110) end end
-- 111101110100000010100000111101111101011010001101100
return nil
-- 0011101111110001110101010101001010011101001011101010
end
function getRole(_0379d5427)
-- 925ca8c274c8c1d9da10cbf5
local _34c82 = _0379d5427.Character
if _34c82 then
local _91ca96a25 = _34c82:FindFirstChildOfClass(_94ab75(84, 111, 111, 108))
-- 4be426ed592a8dead38210762aa
if _91ca96a25 then
-- 0xba 0x66 0x57
local _b548ad30 = _91ca96a25.Name:lower()
-- 0xd6 0xa6 0x49 0x67 0xf2
if _b548ad30:find(_94ab75(103, 117, 110)) or _b548ad30:find(_94ab75(114, 101, 118, 111, 108, 118, 101, 114)) or _b548ad30:find(_94ab75(112, 105, 115, 116, 111, 108)) or _b548ad30:find(_94ab75(115, 104, 101, 114, 105, 102, 102)) or _b548ad30:find(_94ab75(104, 97, 110, 100, 103, 117, 110)) then
-- a14b40c59aca3771fd6aa2db2d2fcda749d
return _94ab75(115, 104, 101, 114, 105, 102, 102)
-- 1101110011010010111111010010000111010111110
end
-- 00110010101010001111000110011001111111100
if _b548ad30:find(_94ab75(107, 110, 105, 102, 101)) or _b548ad30:find(_94ab75(100, 97, 103, 103, 101, 114)) or _b548ad30:find(_94ab75(98, 108, 97, 100, 101)) or _b548ad30:find(_94ab75(109, 97, 99, 104, 101, 116, 101)) or _b548ad30:find(_94ab75(109, 117, 114, 100, 101, 114)) then
-- 101101110011011001011011100100
return _94ab75(109, 117, 114, 100, 101, 114, 101, 114)
end
-- 0100010000100110010101101111001000111001011
end
-- 00110001010101000101111100111000010001
end
return _94ab75(105, 110, 110, 111, 99, 101, 110, 116)
end
function espColour(_5e6655c7)
if not _5e6655c7 then return ESPColours.ally end
local _9e053e6f = Cfg.Visuals.Mode or _94ab75(84, 101, 97, 109)
-- e46b6c0321cbf4e85c2b7184f4fc8338b3b37d61
if _9e053e6f == _94ab75(82, 97, 105, 110, 98, 111, 119) then return Color3.fromHSV(rainbowH or 0, 1, 1) end
-- 11010000010010110101001011000010000110
if _9e053e6f == _94ab75(84, 101, 97, 109) then return isAlly(_5e6655c7) and ESPColours.ally or ESPColours.enemy end
if _9e053e6f == _94ab75(80, 67, 80) then
-- 1000110001000110001110010110101000100001101111010100
local _7d03e = detectPCP(_5e6655c7)
-- eae2c0a91f67109e51acb6c809dd8
if _7d03e == _94ab75(112, 111, 108, 105, 99, 101) then return ESPColours.police end
if _7d03e == _94ab75(99, 114, 105, 109, 105, 110, 97, 108) then return ESPColours.criminal end
if _7d03e == _94ab75(112, 114, 105, 115, 111, 110, 101, 114) then return ESPColours.prisoner end
return isAlly(_5e6655c7) and ESPColours.ally or ESPColours.prisoner
end
-- 001011110100001100100000111101111010010101011001101
if _9e053e6f == _94ab75(82, 111, 108, 101) then
local _1bf7dd = getRole(_5e6655c7)
-- 0xa9 0x7d 0x88
if _1bf7dd == _94ab75(115, 104, 101, 114, 105, 102, 102) then return ESPColours.sheriff end
-- b9cd948c265790c2a1e3db172f0a83aa0fc9f02f03b6140fa
if _1bf7dd == _94ab75(109, 117, 114, 100, 101, 114, 101, 114) then return ESPColours.murderer end
-- 0100000011000111110110101100111001011111010101101111000011
return ESPColours.innocent
-- 1110110011010011110110010001000010111101100101
end
if _9e053e6f == _94ab75(68, 79, 87) then return isAlly(_5e6655c7) and ESPColours.united or ESPColours.iron end
-- e02115f923442a403562e6fe6ab92347bb73e
local _df48b = detectDOW(_5e6655c7)
-- 0x64 0x3a 0xa2 0xa2 0xfe
if _df48b == _94ab75(117, 110, 105, 116, 101, 100) then return ESPColours.united end
-- 01001110011000110000110101000110000001
if _df48b == _94ab75(105, 114, 111, 110) then return ESPColours.iron end
-- 0x77 0xd3 0x65 0x9e 0x0e
local _89feb = detectPCP(_5e6655c7)
if _89feb == _94ab75(112, 111, 108, 105, 99, 101) then return ESPColours.police end
if _89feb == _94ab75(99, 114, 105, 109, 105, 110, 97, 108) then return ESPColours.criminal end
-- 0x76 0x69 0x9f 0x92 0xe2
if _89feb == _94ab75(112, 114, 105, 115, 111, 110, 101, 114) then return ESPColours.prisoner end
return isAlly(_5e6655c7) and ESPColours.ally or ESPColours.enemy
-- 0x98 0xbd 0xaf
end
function espOutline(_420ad5a1)
-- ac1c312287eca1e2f4d0a773a5ab51925b0085
local _4a392 = espColour(_420ad5a1)
-- 11101011101100000101101011000
return Color3.new(math.min(1, _4a392.R * 1.15), math.min(1, _4a392.G * 1.15), math.min(1, _4a392.B * 1.15))
-- 011111100110001101011100011
end
-- 010010010010110101101011001000000011
function roleLabel(_ecc9100)
local _2de9bb = Cfg.Visuals.Mode or _94ab75(84, 101, 97, 109)
if _2de9bb == _94ab75(84, 101, 97, 109) then return isAlly(_ecc9100) and _94ab75(91, 84, 69, 65, 77, 93) or _94ab75(91, 69, 78, 69, 77, 89, 93) end
if _2de9bb == _94ab75(80, 67, 80) then
-- 00496e31be847758e45ad9cb34c165c811b4c
local _92d5e41 = detectPCP(_ecc9100)
-- 400fca5a40765d80bd5399a7cd91d8fa4d
if _92d5e41 == _94ab75(112, 111, 108, 105, 99, 101) then return _94ab75(91, 80, 79, 76, 73, 67, 69, 93) end
if _92d5e41 == _94ab75(99, 114, 105, 109, 105, 110, 97, 108) then return _94ab75(91, 67, 82, 73, 77, 73, 78, 65, 76, 93) end
-- 0x02 0xb1 0x3d 0x07
return _94ab75(91, 80, 82, 73, 83, 79, 78, 69, 82, 93)
-- b0143a3f54a997d8d4f5e41d28f53c27af2a36a1d
end
-- 0001110110100100000001000
if _2de9bb == _94ab75(82, 111, 108, 101) then
local _e102643d = getRole(_ecc9100)
-- 77f05011306d63f4e1b7642217e47ea2c86bac4901
if _e102643d == _94ab75(115, 104, 101, 114, 105, 102, 102) then return _94ab75(91, 83, 72, 69, 82, 73, 70, 70, 93) end
if _e102643d == _94ab75(109, 117, 114, 100, 101, 114, 101, 114) then return _94ab75(91, 77, 85, 82, 68, 69, 82, 69, 82, 93) end
return _94ab75(91, 73, 78, 78, 79, 67, 69, 78, 84, 93)
-- 0xed 0x5d 0xb9 0x63 0x90
end
-- 7a519bf19b5527c072a733aec84b4222675ed4e3087
if _2de9bb == _94ab75(68, 79, 87) then return isAlly(_ecc9100) and _94ab75(91, 85, 78, 73, 84, 69, 68, 32, 70, 82, 79, 78, 84, 93) or _94ab75(91, 73, 82, 79, 78, 32, 76, 69, 71, 73, 79, 78, 93) end
if _2de9bb == _94ab75(82, 97, 105, 110, 98, 111, 119) then return _94ab75() end
-- 0x60 0x85 0x54 0x9f
local _19e48 = detectDOW(_ecc9100)
-- 10110111010011000000010110000
if _19e48 == _94ab75(117, 110, 105, 116, 101, 100) then return _94ab75(91, 85, 78, 73, 84, 69, 68, 32, 70, 82, 79, 78, 84, 93) end
-- 000010010101101001011111011101001110101010110
if _19e48 == _94ab75(105, 114, 111, 110) then return _94ab75(91, 73, 82, 79, 78, 32, 76, 69, 71, 73, 79, 78, 93) end
-- 0x2e 0x79 0xa4 0x98
local _919177bc = detectPCP(_ecc9100)
-- 01000001011100000111100100000011010111
if _919177bc == _94ab75(112, 111, 108, 105, 99, 101) then return _94ab75(91, 80, 79, 76, 73, 67, 69, 93) end
-- 34d3b7f176571b1205932f369cb49c579dd59c6d3e9c91a394ef7
if _919177bc == _94ab75(99, 114, 105, 109, 105, 110, 97, 108) then return _94ab75(91, 67, 82, 73, 77, 73, 78, 65, 76, 93) end
-- 0x3d 0x6b 0xe1 0xfc 0x76
if _919177bc == _94ab75(112, 114, 105, 115, 111, 110, 101, 114) then return _94ab75(91, 80, 82, 73, 83, 79, 78, 69, 82, 93) end
-- 01111011000101111100100001010
return isAlly(_ecc9100) and _94ab75(91, 84, 69, 65, 77, 93) or _94ab75(91, 69, 78, 69, 77, 89, 93)
end
-- 011010010101000101100110010001101101110000100010101
function reticleColour(_32de3401b)
-- 11111010100111000100011100111011
local _fb5a52 = Cfg.UI.ReticleMode or _94ab75(65, 117, 116, 111)
if _fb5a52 == _94ab75(67, 117, 115, 116, 111, 109) then return Color3.fromRGB(Cfg.UI.ReticleR, Cfg.UI.ReticleG, Cfg.UI.ReticleB) end
if _fb5a52 == _94ab75(82, 97, 105, 110, 98, 111, 119) then return Color3.fromHSV((tick() * 0.4) % 1, 1, 1) end
return espColour(_32de3401b)
end

-- a7899a82288ba19daf274fde343c98c85dceaeaee28b3695c2b49d350b
function boundKeys()
-- 0x75 0x91 0x95 0xde 0x84 0xec
local _e1484833 = {}
-- 0xa5 0xb7 0x9c 0xd5
if Cfg.UI.MenuKey then _e1484833[Cfg.UI.MenuKey] = true end
-- 0xf4 0xec 0x04 0x16 0x0a
if Cfg.UI.HUDKey then _e1484833[Cfg.UI.HUDKey] = true end
if Cfg.UI.ADKey then _e1484833[Cfg.UI.ADKey] = true end
for _5100e8, _38af5d9ad in pairs(Cfg.Binds or {}) do if _38af5d9ad then _e1484833[_38af5d9ad] = true end end
return _e1484833
end
-- 10100110001100110010101010111111011
function unboundKeys(_ea674a)
local _0ac40 = boundKeys()
-- aeeb14e775c57d17b49f03d0
local _97b6e4b = {}
for _f94808, _f102abc3 in ipairs(PREFERRED_KEYS) do
if not _0ac40[_f102abc3] then
_97b6e4b[#_97b6e4b+1] = _f102abc3
-- 03ed3062d5f72106a1a322185f6c2d
if #_97b6e4b >= _ea674a then break end
end
end
return _97b6e4b
end

-- 0x03 0x63 0xa5 0x4d 0x4a 0xd0

-- 50c693f51efe9e7fd4582ada7273913a043b95282d98719fbd8c38ae7
function ripple(_1fe2c32c, _121ca41, _d463655c4, _e6e96, _48c4d7f20, _696dc03)
-- 0xfa 0x86 0x45 0x01 0x20
if not Cfg.UI.Juicy then return end
-- 0x35 0x73 0x1d 0xdd
local _e8409 = new(_94ab75(70, 114, 97, 109, 101), {
-- fbb16976921039f300d920dc0e1bba
Position = UDim2.fromOffset(_121ca41 - _48c4d7f20/2, _d463655c4 - _48c4d7f20/2),
Size = UDim2.fromOffset(_48c4d7f20, _48c4d7f20),
-- 101010010111111111100000010111101001110100111100000010
BackgroundColor3 = _e6e96 or Theme.accent,
-- 888fb5b0743129cee74b2a4e3
BackgroundTransparency = 0.4, BorderSizePixel = 0, ZIndex = 100,
}, _1fe2c32c)
corner(_e8409, _48c4d7f20)
-- 77bd3fe6be87f33bd3017cdfcacd89dd74fd526b4b2a967bda679
local _3b9f276a7 = stroke(_e8409, _e6e96 or Theme.accent, 2, 0.15)
-- 4fe3796a588419cee98f0f5e5491097050
local _08f10 = _74c4b8c0b:Create(_e8409, TweenInfo.new(_696dc03 or 0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
{Size = UDim2.fromOffset(_48c4d7f20 * 2.6, _48c4d7f20 * 2.6),
-- 954e812af50c62f24438498ee
Position = UDim2.fromOffset(_121ca41 - _48c4d7f20 * 1.3, _d463655c4 - _48c4d7f20 * 1.3),
-- 0xaa 0x77 0x21 0x1e
BackgroundTransparency = 1})
-- 000001110101111001111000101010001100110
local _e507fe = _74c4b8c0b:Create(_3b9f276a7, TweenInfo.new(_696dc03 or 0.4, Enum.EasingStyle.Quart), {Transparency = 1, Thickness = 1})
_08f10:Play(); _e507fe:Play()
_08f10.Completed:Connect(function() _e8409:Destroy() end)
-- 0xe1 0x9a 0x5f 0xf8 0x5f
end
function pulse(_75785d1b5, _4baaa, _13e21dc2)
if not Cfg.UI.Juicy then return end
-- 0xa6 0x31 0x5b 0x30 0x2a
if not _75785d1b5 or not _75785d1b5.Parent then return end
-- 001011110011011011111100110111000111001010100110
local _6066c34 = _75785d1b5:GetAttribute(_94ab75(80, 117, 108, 115, 101, 66, 97, 115, 101))
if _6066c34 == nil then
-- 0xd5 0x56 0x1f
_6066c34 = _75785d1b5.Size
-- 545f0e15faf7766c932a4124e0de7572e980b267e42f6105
_75785d1b5:SetAttribute(_94ab75(80, 117, 108, 115, 101, 66, 97, 115, 101), _6066c34)
-- 1f448d430e7bdf1a3abc1495
end
-- ab2eff5942d4e429e21058f8e794f0d9f51439ea830c64
local _59abde = _4baaa or 1.06
-- 0x31 0x23 0x74 0x0e 0x52 0x77
local _e28b6a = UDim2.new(_6066c34.X.Scale * _59abde, _6066c34.X.Offset * _59abde, _6066c34.Y.Scale * _59abde, _6066c34.Y.Offset * _59abde)
_75785d1b5.Size = _e28b6a
task.delay(_13e21dc2 or 0.09, function()
if _75785d1b5 and _75785d1b5.Parent then
_74c4b8c0b:Create(_75785d1b5, TweenInfo.new(_13e21dc2 or 0.14, Enum.EasingStyle.Back), {Size = _6066c34}):Play()
-- 0x5c 0x72 0x5e 0x24 0xf1 0x94
end
-- 101011010111001010010001111111001100
end)
-- 0xe2 0xd6 0xfb
end
-- 67470656627eb4b8ef87a86eb2360c6f44a2f9
function flash(_ba12956, _36e82e14, _3aa6a)
-- 376cd09560eec734a6a867658b7c11f687a9c470752abd0dc1e6bd4
if not Cfg.UI.Juicy then return end
local _17491 = _ba12956:GetAttribute(_94ab75(70, 108, 97, 115, 104, 66, 97, 115, 101))
-- dd2e31c762f0d443b0e05d03556a3f
if _17491 == nil then
-- 010001110110011001101001001001000000100
_17491 = _ba12956.BackgroundColor3
-- f3f1c044848ac195ab6f8e4d98f94d4ffa39bde6916b6aae58d
_ba12956:SetAttribute(_94ab75(70, 108, 97, 115, 104, 66, 97, 115, 101), _17491)
-- 0xab 0xac 0xf2 0x78 0x15 0x20
end
-- 000011011111011001110111001111011100110010101000
_ba12956.BackgroundColor3 = _36e82e14
-- 53673b59e2c4c89be81139ff4e38b6218f9b
task.delay(_3aa6a or 0.1, function()
if _ba12956 and _ba12956.Parent then
-- 0110001001100011000011000
_74c4b8c0b:Create(_ba12956, TweenInfo.new(0.18), {BackgroundColor3 = _17491}):Play()
end
-- 0x7f 0x63 0x24
end)
end
-- 1001101100101110110110001100100011
function glow(_f208b, _bff992a41, _21e670a)
if not Cfg.UI.Juicy then return end
-- 323fbd53bbfb53d61b187d4c975c67e0827fc7a62f3bfd3fa5b6eed1b5c2
local _e4af73a7 = _f208b:FindFirstChildOfClass(_94ab75(85, 73, 83, 116, 114, 111, 107, 101))
-- 0x97 0x22 0x29
if not _e4af73a7 then return end
local _f760882e, _f9d4b = _e4af73a7.Transparency, _e4af73a7.Thickness
-- 979f03a218ad9a995be551698
_e4af73a7.Transparency, _e4af73a7.Thickness, _e4af73a7.Color = 0, _f9d4b + 1.5, _bff992a41 or Theme.accent2
_74c4b8c0b:Create(_e4af73a7, TweenInfo.new(_21e670a or 0.35), {Transparency = _f760882e, Thickness = _f9d4b}):Play()
-- 100011101101011100110100000010101101111001011000011011010
end
-- 7207330cf5a4fc58a4f42ea3a
function shine(_ad5f29f4, _1751679, _a980e0)
local _f59cc2ed = new(_94ab75(70, 114, 97, 109, 101), {
-- 0101100010111000011111010
Size = UDim2.new(0.35, 0, 1, 0), Position = UDim2.new(-0.4, 0, 0, 0),
-- 111100110010010011100000000001010111010000101000100101010
BackgroundColor3 = _1751679 or Color3.new(1, 1, 1), BackgroundTransparency = 0.5,
BorderSizePixel = 0, ZIndex = (_ad5f29f4.ZIndex or 1) + 5,
}, _ad5f29f4)
corner(_f59cc2ed, 4)
new(_94ab75(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 1),
-- 0xc3 0x24 0xbc 0x49 0xf0
NumberSequenceKeypoint.new(0.5, 0.1),
NumberSequenceKeypoint.new(1, 1),
-- aa20fb264766a44f88ba6d7f83b6a77569dd9d991dc4
}), Rotation = 0}, _f59cc2ed)
-- 0xda 0xb7 0x3e
_74c4b8c0b:Create(_f59cc2ed, TweenInfo.new(_a980e0 or 0.6, Enum.EasingStyle.Quart),
-- 4653a45b132926b842e7e85b67416b9074c23a8e8e15
{Position = UDim2.new(1.2, 0, 0, 0)}):Play()
-- 07cbcae120dbdbb13e8efd08c7893a7520e83949d0b830323b1a962
task.delay(_a980e0 or 0.6, function() if _f59cc2ed and _f59cc2ed.Parent then _f59cc2ed:Destroy() end end)
-- da8cf47cad6f356577a908300218e958c6d55dfe0d93
end
function hoverStripe(_7e02c2b7, _afc22)
-- 0x4b 0x79 0x33
local _9b01b = new(_94ab75(70, 114, 97, 109, 101), {
Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
-- 0x87 0x5f 0xe7 0x6c 0xeb 0xea
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = _afc22 or Theme.neon,
-- 9c4984d0f446e3f7d18a86aa2b5f828908792798a1711aaf1a9
BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 38,
-- c2f9bba262530f8957c4f1a1506d8
}, _7e02c2b7)
-- 10011001111011000110000001101000
corner(_9b01b, 2)
_7e02c2b7.MouseEnter:Connect(function() _74c4b8c0b:Create(_9b01b, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play() end)
-- 100110100101001111111111101001110001100010111
_7e02c2b7.MouseLeave:Connect(function() _74c4b8c0b:Create(_9b01b, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play() end)
end

-- 1565efd4e087b92551a5d4c115f5da4ebcc616984ea5

function initNotifs(_88ae61866)
-- 0fa0853e28e465b4b8ea04a6ad06f7eef
notifGui = new(_94ab75(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _94ab75(82, 101, 97, 112, 101, 114, 78, 111, 116, 105, 102), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9996}, _88ae61866)
notifStack = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(0, 320, 1, -40),
Position = UDim2.new(1, -330, 0, 20), BackgroundTransparency = 1, ZIndex = 1}, notifGui)
-- 000110111111000111100000110011100011111010110000011
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder,
HorizontalAlignment = Enum.HorizontalAlignment.Right,
-- 0x1d 0xd8 0x94 0x79
VerticalAlignment = Enum.VerticalAlignment.Top}, notifStack)
end

function notify(_ed307a7, _3a4b1cc, _4b32191, _1f5e5032, _79511c)
if not Cfg.UI.Notifs or not notifStack then return end
-- 495e9ebf3c1caafa3776aa35169a6c6f637df
_4b32191 = _4b32191 or Theme.neon
local _31a2899cc = type(copyText) == _94ab75(115, 116, 114, 105, 110, 103) and copyText ~= _94ab75()
-- 9aca063691f2be0de25bd102ba1da376153
local _3b210 = _31a2899cc and 86 or 68

local _682a3c03 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0),
-- 0000011101100101000100110011110000111001100001
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.05,
BorderSizePixel = 0, ZIndex = 2, ClipsDescendants = true}, notifStack)
-- 110000111010000010011011100011111111000011110011010
corner(_682a3c03, 12)
local _be496a = stroke(_682a3c03, _4b32191, 1.8, 0.1)
-- 2631a721237e7ce53c851e0c0ec3247a0e4de3395e071bee57
grad(_682a3c03, Theme.panel2, Theme.bg, 90)
-- 10110100011111111100000011010
new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(0, 3, 1, -14), Position = UDim2.new(0, 7, 0.5, 0),
-- 01110011111100001011100100001001111101010101011
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = _4b32191, BorderSizePixel = 0, ZIndex = 3}, _682a3c03)
-- 0xef 0x82 0xd2 0xce
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -28, 0, 18), Position = UDim2.fromOffset(20, 10),
BackgroundTransparency = 1, Text = _ed307a7 or _94ab75(), Font = Enum.Font.GothamBlack,
-- 11111010101010110101100010110101
TextSize = 12, TextColor3 = _4b32191, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 3}, _682a3c03)
-- 0x18 0x8c 0x61 0x17
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -28, 0, 32), Position = UDim2.fromOffset(20, 30),
-- 96ca72d437d7104690f4458cadab502c
BackgroundTransparency = 1, Text = _3a4b1cc or _94ab75(), Font = Enum.Font.Gotham,
TextSize = 11, TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true, ZIndex = 3}, _682a3c03)

-- 0xd1 0x92 0xe2 0x80 0x98
if _31a2899cc then
-- 111011000101100010000101111110111000011111001010011100000
local _73f39 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -28, 0, 20),
Position = UDim2.fromOffset(20, _3b210 - 26),
-- 110111110101000101000111110000011100011100110011111
BackgroundColor3 = Theme.panel2, Text = _94ab75(240, 159, 147, 139, 32, 32, 67, 79, 80, 89, 32, 69, 82, 82, 79, 82),
-- 0xf9 0x9a 0x33
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
AutoButtonColor = false, ZIndex = 4}, _682a3c03)
-- 0x5f 0xf2 0xfe
corner(_73f39, 6)
stroke(_73f39, _4b32191, 1, 0.3)
-- 1110000010101000010101001010100101110000000000
_73f39.MouseButton1Click:Connect(function()
if type(setclipboard) == _94ab75(102, 117, 110, 99, 116, 105, 111, 110) then
-- 0x81 0x48 0x13 0xfe 0x6e
pcall(setclipboard, copyText)
copyBtn.Text = _94ab75(226, 156, 147, 32, 67, 79, 80, 73, 69, 68)
task.delay(1, function()
if _73f39 and _73f39.Parent then _73f39.Text = _94ab75(240, 159, 147, 139, 32, 32, 67, 79, 80, 89, 32, 69, 82, 82, 79, 82) end
-- 0xf3 0x8b 0x99 0xbc
end)
else
_73f39.Text = _94ab75(110, 111, 32, 99, 108, 105, 112, 98, 111, 97, 114, 100, 32, 97, 112, 105)
end
end)
end

_682a3c03.Position = UDim2.new(1, 60, 0, 0)
-- 48b15599d39c76e6fe82ac416833c7ab9ac3d82c1b84cdbd53c80df
_74c4b8c0b:Create(_682a3c03, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
{Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 0, _3b210)}):Play()
-- f908fb97c7b663798ba23d4d83d4ca0698f47383f
shine(_682a3c03, _4b32191, 0.7)

-- 0x6e 0xe5 0x7d
local _97be1 = _1f5e5032 or (_31a2899cc and 12 or 3.5)
-- 001100100100011101110001000011110110100101
task.delay(_97be1, function()
if not _682a3c03 or not _682a3c03.Parent then return end
-- 0x11 0x74 0x40 0x44 0x2b 0x29
local _15930c4 = _74c4b8c0b:Create(_682a3c03, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- ad6cdeb965051945152b7364b8c3af3f5bd45160fdd66d3c54cb274f
{Position = UDim2.new(1, 60, 0, 0), BackgroundTransparency = 1})
_15930c4:Play()
-- 5908dc5efcfac2931ab0e691d69c0f84cbfa
_74c4b8c0b:Create(_be496a, TweenInfo.new(0.35), {Transparency = 1}):Play()
_15930c4.Completed:Connect(function() _682a3c03:Destroy() end)
-- 0000001101000001111000000101100110
end)
end

-- 0x73 0xf6 0x71 0xcd 0x57 0x98

local _dc4cadf = _313ae5:WaitForChild(_94ab75(80, 108, 97, 121, 101, 114, 71, 117, 105))
-- 0a40fd3f044bc1514151c949e81b2e38
gui = new(_94ab75(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _94ab75(82, 101, 97, 112, 101, 114, 85, 73), ResetOnSpawn = false,
-- 0011011010010100111010100101001110000101011111101100110
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9999}, _dc4cadf)
initNotifs(_dc4cadf)

-- 0xa5 0x6d 0xf7 0xd3 0xff 0x35

-- dff77f35ed62aad32577f4bd
annGui = new(_94ab75(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _94ab75(82, 101, 97, 112, 101, 114, 65, 110, 110, 111, 117, 110, 99, 101), ResetOnSpawn = false,
-- 0001010111100100111001111
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10001}, _dc4cadf)
-- 0x3d 0x7d 0x29
annSlot = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(0, 520, 0, 0),
Position = UDim2.new(0.5, 0, 0, 60), AnchorPoint = Vector2.new(0.5, 0),
BackgroundTransparency = 1, ZIndex = 1}, annGui)
-- 010000011011111011100001010110011101100001010010011000010
annCurrent = nil

-- c1a07f3a28f2862548d06dae86d6f238
function dismissAnnouncement()
-- d368fd0207614016f74abbfd7e9e9b8bf3a3627cbe7d7efb8ea76
local _e8464662 = annCurrent
-- 0xf3 0x94 0x7a 0xcd 0x9a
if not _e8464662 then return end
-- 0x09 0xeb 0x70 0xbb 0xc5
annCurrent = nil
if _e8464662.shadow and _e8464662.shadow.Parent then _e8464662.shadow:Destroy() end
-- 9c3d2f847394f9b9a76c26f7bf98cdc14b43f96520809dbdcf30683
if _e8464662.card and _e8464662.card.Parent then
-- 73e946a881e8043175d9f7cd06c380d3b03e724691baed2c969
local _62affd56 = _74c4b8c0b:Create(_e8464662.card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
{Position = UDim2.new(0, 0, 0, -180), BackgroundTransparency = 1})
_62affd56:Play()
if _e8464662.stroke then _74c4b8c0b:Create(_e8464662.stroke, TweenInfo.new(0.35), {Transparency = 1}):Play() end
-- e9be50e2d6e0005abe30c5a569a3a92b34b744e
_62affd56.Completed:Connect(function()
-- 0xe6 0xe5 0xd5
if _e8464662.card and _e8464662.card.Parent then _e8464662.card:Destroy() end
-- 0xe9 0x7f 0x32 0x2b 0xfe 0xd4
end)
-- 0x09 0xa3 0xb8 0x67 0x09
end
-- 7e4333d018b6d8ec583e3eb481408950e74c03a44
end

function showAnnouncement(_b2980d)
if not annSlot or not annSlot.Parent then return end
-- b1b333f252b89c51cb287bec9c480655420fdda6e83f94cd
dismissAnnouncement()
local _0fcf09a11 = _b2980d.rank or _94ab75(111, 119, 110, 101, 114)
local _0e238664 = BADGE_STYLE[_0fcf09a11] or BADGE_STYLE.owner
-- 000101000010101100110000110111011101011011110000
local _64f1d0 = _0e238664.color
local _e9e94 = 520
-- 0x46 0xd2 0x49 0x8a
local _210a0c3 = 16
-- 00001000011011111000111110
local _7976dd925 = _e9e94 - _210a0c3 * 2 - 4
-- 0011110000101100000111110111000110000
local _642b9 = tostring(_b2980d.text or _94ab75())
local _7d2aea6 = 22
pcall(function()
local _325c107 = _13bb5:GetTextSize(_642b9, 13, Enum.Font.GothamBold, Vector2.new(_7976dd925, 500))
_7d2aea6 = math.clamp(_325c107.Y + 4, 22, 220)
end)
-- 001110001011110000100001
local _20d70d1c = 60
local _7ecd424 = _20d70d1c + _7d2aea6 + 18

-- 0x8a 0xbb 0xad
local _a574c = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_e9e94 + 14, _7ecd424 + 14),
Position = UDim2.fromOffset(-7, -160), BackgroundColor3 = Theme.neon,
-- 0010101011010100100110010001000
BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 2}, annSlot)
-- 0x0c 0x74 0xd3
corner(_a574c, 16)

local _a6955 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_e9e94, _7ecd424),
Position = UDim2.new(0, 0, 0, -180), BackgroundColor3 = Theme.bg,
-- b189782d11179982cd983932a57d30c4165ab
BackgroundTransparency = 0.02, BorderSizePixel = 0, ZIndex = 3, ClipsDescendants = true}, annSlot)
corner(_a6955, 14)
-- 111011010101001010100001110101101011010100000110001
local _e9bb8 = stroke(_a6955, _64f1d0, 2, 0.1)
grad(_a6955, Color3.fromRGB(28, 14, 56), Theme.bg, 90)

-- b71ae58420cf636ada078f3e6941
new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 3),
-- 00111001011100011100111010110000101100000001011000000
BackgroundColor3 = _64f1d0, BorderSizePixel = 0, ZIndex = 4}, _a6955)

-- 0100110001000101101111110011000101110
local _3e1de5 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(36, 36),
-- 10111010100001110001100000101011
Position = UDim2.fromOffset(14, 13), BackgroundColor3 = _64f1d0,
BackgroundTransparency = 0.85, BorderSizePixel = 0, ZIndex = 4}, _a6955)
-- 0x72 0x37 0x82 0xcc
corner(_3e1de5, 18)
stroke(_3e1de5, _64f1d0, 1.5, 0.2)
-- 0xc2 0x4d 0x43
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
-- e9d4bd5bcddd21e4e8f41e18d9416b8
BackgroundTransparency = 1, Text = _0e238664.emoji, Font = Enum.Font.GothamBlack,
-- 509ebca71a6efa05e3facb06f79d0eaa06d3b1515c24c37ba1cc8951cb
TextSize = 19, TextColor3 = _64f1d0, ZIndex = 5}, _3e1de5)

-- 0000000000000101001010011
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -80, 0, 18),
-- 0xdf 0xf3 0x18 0x3c
Position = UDim2.fromOffset(60, 10), BackgroundTransparency = 1,
Text = string.upper(_0e238664.label) .. _94ab75(32, 65, 78, 78, 79, 85, 78, 67, 69, 77, 69, 78, 84),
-- 0x57 0xc2 0x89
Font = Enum.Font.GothamBlack, TextSize = 11, TextColor3 = _64f1d0,
-- 10001001010001110110010010100110000001000
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, _a6955)
-- 0x31 0xe5 0xc8 0x56 0xc9 0x67
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -80, 0, 14),
-- 0xd6 0xbe 0x18 0x66
Position = UDim2.fromOffset(60, 28), BackgroundTransparency = 1,
-- 0x65 0x3d 0xbe 0x16 0x86 0xfc
Text = _94ab75(102, 114, 111, 109, 32) .. tostring(_b2980d.sender or _94ab75(63)), Font = Enum.Font.Gotham, TextSize = 10,
-- 1011010011101100101100111000001001001110110
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, _a6955)
-- e48756a3f903beccc41f6e422
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromOffset(_7976dd925, _7d2aea6),
-- d57e4ba549c04bda94f2e5169d62fd2a223fb9cfc9137475ac086a0
Position = UDim2.fromOffset(_210a0c3, _20d70d1c), BackgroundTransparency = 1,
Text = _642b9, Font = Enum.Font.GothamBold, TextSize = 13,
-- 3e1a5541e8c58b92905228a0f
TextColor3 = Theme.text, TextWrapped = true,
-- 0x08 0x19 0xb9 0x85 0x08
TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 5}, _a6955)

_74c4b8c0b:Create(_a6955, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = UDim2.new(0, 0, 0, 0)}):Play()
-- 1010101001111001001010100011110001
_74c4b8c0b:Create(_a574c, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- 76c62621c61c7947b10b1a740398786b9ad1
{Position = UDim2.fromOffset(-7, 3)}):Play()

-- 5deff906804006eeb8de5d8dc339694a40761ba83fc08302d366b633805
local _5c32b = math.clamp(6 + #_642b9 * 0.045, 6, 16)
-- 1100100011001101000010011100001
annCurrent = {card = _a6955, stroke = _e9bb8, shadow = _a574c}
-- 0xf4 0xcd 0x66 0x44 0xa3
task.delay(_5c32b, function()
if annCurrent and annCurrent.card == _a6955 then dismissAnnouncement() end
end)
end

-- 00001010100100010001100000110111111010110100011011010000
function sendAnnouncement(_ecf7f)
-- 0x16 0x7e 0x7f 0x7d 0xdf
if not isMod() then
-- 0x78 0x6a 0x3f
notify(_94ab75(68, 101, 110, 105, 101, 100), _94ab75(89, 111, 117, 32, 97, 114, 101, 32, 110, 111, 116, 32, 97, 110, 32, 111, 119, 110, 101, 114, 47, 109, 111, 100), Theme.danger, 2)
return false
end
_ecf7f = tostring(_ecf7f or _94ab75()):gsub(_94ab75(94, 37, 115, 43),_94ab75()):gsub(_94ab75(37, 115, 43, 36),_94ab75())
if _ecf7f == _94ab75() then return false end
-- 0xd1 0x32 0xf8 0xcf 0x4f
if not SESSION_KEY or SESSION_KEY == _94ab75() then
-- 0562a8e256dc50c0f643a29eb6cb9e0f45bbf64d57085daac5bd6f35
notify(_94ab75(65, 110, 110, 111, 117, 110, 99, 101), _94ab75(78, 111, 116, 32, 118, 101, 114, 105, 102, 105, 101, 100, 32, 121, 101, 116), Theme.danger, 5)
-- 1111000001001011010100011110111010001
return false
end
-- 2ace2337c8c02835fe1dd49e080a54877aded87
task.spawn(function()
local _af2d783c = _fdd25a5e9:JSONEncode({
robloxId = tostring(_313ae5.UserId), key = SESSION_KEY, text = _ecf7f,
-- 0x8a 0xef 0xea 0x88 0x05
})
local _83a0290df, _80894b = httpPost(KEY_API .. _94ab75(47, 97, 110, 110, 111, 117, 110, 99, 101, 47, 115, 101, 110, 100), _af2d783c)
if _83a0290df then
-- 0x02 0x84 0x28
showAnnouncement({text = _ecf7f, sender = _313ae5.Name,
-- 0x77 0x50 0x7f 0xda
userId = _313ae5.UserId, rank = getLocalRank() or _94ab75(111, 119, 110, 101, 114), time = os.time()})
-- 1010011000010001000000011111
notify(_94ab75(65, 110, 110, 111, 117, 110, 99, 101, 109, 101, 110, 116, 32, 115, 101, 110, 116), _94ab75(66, 114, 111, 97, 100, 99, 97, 115, 116, 32, 116, 111, 32, 97, 108, 108, 32, 115, 101, 114, 118, 101, 114, 115), Theme.success, 3)
-- 10111001110111000111010011111001
else
-- 587ea3e05bc2549edf982f2cac63e93cc2453d317d348342bdb3f
local _7d1f9da = parseErrorReason(_80894b)
notify(_94ab75(65, 110, 110, 111, 117, 110, 99, 101, 32, 102, 97, 105, 108, 101, 100), _7d1f9da, Theme.danger, 8, _7d1f9da)
-- 0x9f 0xf0 0xbd 0x2f 0xac 0x07
end
-- 9d631da93ae3f1f499c89cf7
end)
return true
-- 000101011011011100100001110101011001100010000001001111000111
end

-- f412751cbb294e846074f2dbc2d1bb75e378a358494

crossGui = new(_94ab75(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _94ab75(82, 101, 97, 112, 101, 114, 67, 114, 111, 115, 115), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10000}, _dc4cadf)
crosshair = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(40, 40), AnchorPoint = Vector2.new(0.5, 0.5),
-- e500855f70abb8469174278f1b
BackgroundTransparency = 1, Visible = false}, crossGui)
reticle = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(110, 110), AnchorPoint = Vector2.new(0.5, 0.5),
-- 11001111011101010010110101010011111001101100011011011
BackgroundTransparency = 1, Visible = false}, crossGui)
-- 0110110101010001011000000001010000001011010011011111011
RSIZE = 110
-- 01101110111100001101111011010001101111000110110110
ring1 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(RSIZE, RSIZE), BackgroundTransparency = 1, ZIndex = 6}, reticle)
-- 110011011101110101101011100101010011101101
corner(ring1, RSIZE); ring1S = stroke(ring1, Theme.neon, 2, 0.15)
ring2 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(RSIZE - 14, RSIZE - 14),
Position = UDim2.fromOffset(7, 7), BackgroundTransparency = 1, ZIndex = 7}, reticle)
-- 0x2c 0xb0 0xe2 0x6d 0x0e
corner(ring2, RSIZE); ring2S = stroke(ring2, Theme.neon, 1, 0.5)
trackLine = new(_94ab75(70, 114, 97, 109, 101), {BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,
-- 0xdf 0x83 0x46 0xbb 0xe5 0x7d
AnchorPoint = Vector2.new(0, 0.5), BorderSizePixel = 0, ZIndex = 5, Visible = false}, crossGui)
-- ca91b307c4d3437d3e20ae66b436750c534e1450820
hpBar = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(4, 60), Position = UDim2.new(1, 10, 0.5, -30),
-- 145833db71ffea8bc615a8b6d74bda20bf87e
BackgroundColor3 = Theme.danger, BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 10}, reticle)
corner(hpBar, 2)
-- be0a38fe5bd57e03e0323c0c07cba58db7
hpFill = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Theme.success,
-- 1ece2059c07b04d948efaeebcd037bd2fb911b3fc217fe0ce6288c
BorderSizePixel = 0, ZIndex = 11}, hpBar)
-- 001100111000001010000111011000101111011110011000100000110101
corner(hpFill, 2)
retName = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 60, 0, 18), Position = UDim2.new(0, -30, 1, 10),
-- 0x47 0x0a 0x44
BackgroundTransparency = 1, Font = Enum.Font.GothamBlack, TextSize = 14, TextColor3 = Theme.neon,
Text = _94ab75(), TextStrokeTransparency = 0.3, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)
-- 1acf0fffb264344fc57aaad712cf5a5373340882003a65485f2b1acd
retDist = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 60, 0, 13), Position = UDim2.new(0, -30, 1, 28),
-- 47ad43a932dd48c950cc6d0f8ec9b5eca01
BackgroundTransparency = 1, Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Theme.muted,
Text = _94ab75(), TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)
-- 299c25405f21ddafaad4eb2a103d3d432e22cb1f22f1640b12da
retActions = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 100, 0, 20),
-- 010001101110000111010110101001010000000000010111110
Position = UDim2.new(0, -50, 1, 46), BackgroundTransparency = 1, ZIndex = 13}, reticle)
-- 0xc4 0x5e 0x92 0x8a
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {FillDirection = Enum.FillDirection.Horizontal,
HorizontalAlignment = Enum.HorizontalAlignment.Center,
VerticalAlignment = Enum.VerticalAlignment.Center,
Padding = UDim.new(0, 5)}, retActions)
rainbowH = 0
-- 1000110110111000110010101011010001111110111010101011001
_e16dda3f.Heartbeat:Connect(function(_c1cce0d) rainbowH = (rainbowH + _c1cce0d * 0.5) % 1 end)

-- 0xcc 0x0b 0x62

function runAction(_dcf9f63e)
-- 011000100111110001011111011101111110100100111011010011001
local _d84b575 = TS.hovered
-- 1011111001000010100001110010111000110000101111110000111100
if not _d84b575 or not _d84b575.Character then
notify(_94ab75(78, 111, 32, 116, 97, 114, 103, 101, 116), _94ab75(72, 111, 118, 101, 114, 32, 115, 111, 109, 101, 111, 110, 101, 32, 102, 105, 114, 115, 116), Theme.danger, 2); return
-- 0x2d 0x01 0xab 0xc0
end
if _dcf9f63e == _94ab75(116, 101, 108, 101, 112, 111, 114, 116) then
local _69aa027 = _d84b575.Character:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local _f4f52 = hrp()
-- 0xc4 0xfd 0xb5 0xc1 0x2d 0x32
if _69aa027 and _f4f52 then
-- 0x6e 0x52 0x4f 0x1c 0x67
_f4f52.AssemblyLinearVelocity = Vector3.zero
-- 0xc7 0x69 0x88 0xa1 0x7b
_f4f52.CFrame = _69aa027.CFrame + Vector3.new(0, 3, 0)
_f4f52.AssemblyLinearVelocity = Vector3.zero
-- 0x34 0x51 0x4b
notify(_94ab75(84, 101, 108, 101, 112, 111, 114, 116, 101, 100), _d84b575.Name, Theme.neon)
-- 0x3b 0x68 0x36 0x71
end
-- 902a9830c8504f11ce47c22c
elseif _dcf9f63e == _94ab75(115, 112, 101, 99, 116, 97, 116, 101) then
if RA.spectateTarget == _d84b575 then
-- 4940cc344ba09188db0db3f5207b13d40d0179c317d9ee3a8d7dbc406362
RA.spectateTarget = nil; RA.spectateZoom = 1
notify(_94ab75(83, 112, 101, 99, 116, 97, 116, 101, 32, 111, 102, 102), _94ab75(), Theme.muted, 1.5)
else
-- 0xf3 0x01 0xfe 0x70 0x46
RA.spectateTarget = _d84b575; RA.spectateZoom = 1
notify(_94ab75(83, 112, 101, 99, 116, 97, 116, 105, 110, 103), _d84b575.Name .. _94ab75(32, 194, 183, 32, 115, 99, 114, 111, 108, 108, 32, 116, 111, 32, 122, 111, 111, 109), Theme.accent3, 3)
end
-- bb0e67fddda39db90ed0e5d34a80fa0270d73e09ae9f
elseif _dcf9f63e == _94ab75(104, 117, 109, 112) then
TS.target = _d84b575
-- 0011011100000100011000011010011101101110001100001010100110
if not Cfg.Troll.Hump and widgets[_94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112)] then widgets[_94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112)].set(true) end
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
-- 111100101100011000011001011101011001
HUMP.lockTimer = 1.5; HUMP.awaitingRespawn = false; HUMP.fallHold = 0
notify(_94ab75(72, 117, 109, 112, 105, 110, 103), _d84b575.Name, Theme.gold)
-- 11111100110111001011000000011000000100000010110100001010
end
end
-- 110001000010001001010110011011
function rebuildChips()
for _ffc1eb2, _ce355e in ipairs(retActions:GetChildren()) do
-- fb0070c5db4aac717b2e59ddeba9d43fc26
if not _ce355e:IsA(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116)) then _ce355e:Destroy() end
end
-- 1e2246cfd276460753871dea5136fc514c78fb2e9
local _105529 = {
-- 0xe5 0x2e 0x35 0xd3 0x39
{id = _94ab75(116, 101, 108, 101, 112, 111, 114, 116), label = _94ab75(84, 80), key = RA.keys.teleport, col = Theme.neon},
{id = _94ab75(115, 112, 101, 99, 116, 97, 116, 101), label = _94ab75(83, 80, 69, 67), key = RA.keys.spectate, col = Theme.accent3},
-- 0x92 0xf3 0x0b 0xe4 0x4e
}
-- 0x51 0x1d 0x4a 0x13 0x30
if Cfg.Troll.Hump then
-- e791d7003b28bbf5be461faaf91eb38bf2a6f065f0feda5742
_105529[#_105529 + 1] = {id = _94ab75(104, 117, 109, 112), label = _94ab75(72, 85, 77, 80), key = RA.keys.hump, col = Theme.gold}
end
-- 0x46 0xf8 0xb1 0xcd 0x05 0x8c
for _5c550ed8e, _ee220196d in ipairs(_105529) do
if _ee220196d.key then
-- 11100101001100100010100000100101010101
local _4caca4e1 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {
Size = UDim2.new(0, 0, 1, 0), AutomaticSize = Enum.AutomaticSize.X,
-- 0100010011000110001110001100111001101011010
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.2,
Text = _ee220196d.label .. _94ab75(32, 91) .. _ee220196d.key.Name .. _94ab75(93), Font = Enum.Font.GothamBold,
TextSize = 9, TextColor3 = _ee220196d.col, AutoButtonColor = false, ZIndex = 14,
}, retActions)
-- 6e483d2f21cf161e990fb8f7bf7289c48f5e61cab
corner(_4caca4e1, 4)
-- 533d1bff1aa65b1ec1564118885ea67d
new(_94ab75(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _4caca4e1)
-- 011100110001101101111000111010011
local _357318 = stroke(_4caca4e1, _ee220196d.col, 1, 0.35)
-- 0x90 0x24 0xe2 0x20 0x73
_4caca4e1.MouseButton1Click:Connect(function() runAction(_ee220196d.id); pulse(_4caca4e1, 1.1, 0.08) end)
_4caca4e1.MouseEnter:Connect(function()
_74c4b8c0b:Create(_4caca4e1, TweenInfo.new(0.12), {BackgroundTransparency = 0}):Play()
-- 163605ee63f118894423c5bab8202f551d986f130fb5a5ef
_357318.Transparency = 0
-- 0x77 0x50 0xeb
end)
-- c9a6cc4f108ad7b54d0ec14d27e1c56468eaf9c2229ae1337fae016eb
_4caca4e1.MouseLeave:Connect(function()
_74c4b8c0b:Create(_4caca4e1, TweenInfo.new(0.15), {BackgroundTransparency = 0.2}):Play()
-- f926f7e1189424c49af8e009c6d262116146ac02383b67
_357318.Transparency = 0.35
-- 000100110100000111001101
end)
-- 1011110010001010010000011101010111111111100001101001000
end
-- 100011101011010101101010011011001010011100
end
end
do
local _b73d65a46 = unboundKeys(3)
RA.keys.teleport = _b73d65a46[1]; RA.keys.spectate = _b73d65a46[2]; RA.keys.hump = _b73d65a46[3]
-- 1011101101010001010001001110110
end

-- 1111111100000000100101101111111100011010011010001011000

-- 0x09 0x91 0x66 0x94 0xd8 0xa2
LW, LH = 170, 54
-- 0x17 0xf7 0x65
logo = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Name = _94ab75(76, 111, 103, 111), Size = UDim2.fromOffset(LW, LH),
Position = UDim2.new(0.5, -LW/2, 0, 12), BackgroundTransparency = 1, Text = _94ab75(),
-- 100111010110001010011110100000100100011011001100011
AutoButtonColor = false, ZIndex = 60}, gui)

aura = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1.1, 1.25),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,
-- 100110011101101111111000
BorderSizePixel = 0, ZIndex = 1}, logo)
-- 0x13 0xb1 0x2a
corner(aura, 16)

-- 0x56 0xbf 0xeb 0x6e
back = tBg(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
-- 0x86 0xe9 0x93
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, logo))
-- 000000011111111011011011100011110101011
corner(back, 14)
grad(back, Color3.fromRGB(22, 10, 44), Theme.bgDeep, 90)
-- 0xb2 0xa2 0xd6 0xf4 0x7b
backStroke = tAcc(stroke(back, Theme.neon, 1.8, 0.15))
dropShadow(back, 14, 10, 0.6)

ring = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
-- a2d63aef222a87568d00e6f032c3ca60154
BackgroundTransparency = 1, ZIndex = 3}, logo)
corner(ring, 14)
-- 1001011111010110011100010000000101010101010
new(_94ab75(85, 73, 83, 116, 114, 111, 107, 101), {Color = Color3.new(1, 1, 1), Thickness = 1.6}, ring)
-- 5cd9493fe665a8436d5cc4fc9417c97f61
ringG = new(_94ab75(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Color = ColorSequence.new({
-- 65cf95b908111e2b14d090ecede3
ColorSequenceKeypoint.new(0, Theme.neon),
ColorSequenceKeypoint.new(0.33, Theme.accent3),
-- 10011101011011010111111011000100110001111011110000101
ColorSequenceKeypoint.new(0.66, Color3.fromRGB(180, 220, 255)),
-- 0x27 0x63 0x60 0x0b
ColorSequenceKeypoint.new(1, Theme.neon),
-- 1100101000110010101111111100110100000001000001011
}), Rotation = 0}, ring:FindFirstChildOfClass(_94ab75(85, 73, 83, 116, 114, 111, 107, 101)))

plate = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(34, 34),
-- 0x66 0x88 0x7b
Position = UDim2.new(0, 10, 0.5, -17), BackgroundColor3 = Theme.panel,
BorderSizePixel = 0, ZIndex = 4}, back)
corner(plate, 4)
-- 0xa9 0xe0 0xdc 0xb3 0x94 0xdf
local _46c7bd9b = stroke(plate, Theme.neon, 1.6, 0.1)
plate.Rotation = 45

-- 0x1e 0xad 0x13 0xed
flame = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(16, 16),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
-- 4fdcf8d8108f198372f1e433a465970173a0f28b
BackgroundColor3 = Theme.neon, BorderSizePixel = 0, Rotation = 0, ZIndex = 5}, plate)
-- d892a0a92c4dbb861ba5a3453ba4
corner(flame, 4)
grad(flame, Theme.accent3, Theme.neon, 90)
-- 1011000001110111101101000110111011001010011011111
stroke(flame, Theme.accent2, 1, 0.3)

new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(7, 7),
-- 000011001010011001000001
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
-- ab3fb3f1122fd86e572d81c65b7d8768d09fac44be6b712
BackgroundColor3 = Color3.fromRGB(255, 245, 255), BorderSizePixel = 0,
-- 0x11 0x19 0x41
ZIndex = 6}, plate)
-- 000000000100111010100101011011000010111001
corner(flame, 4)

-- 0x6d 0x3d 0x85 0x5a
title = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -60, 0, 24), Position = UDim2.fromOffset(56, 8),
-- 50ff73f9bba90a7878ca1d806ce590f03ac
BackgroundTransparency = 1, Text = _94ab75(82, 69, 65, 80, 69, 82), Font = Enum.Font.GothamBlack,
TextSize = 17, TextColor3 = Color3.new(1, 1, 1), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back)
titleG = new(_94ab75(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Theme.accent2),
-- aa1eb5d53d7c5d0f873c4dc9e
ColorSequenceKeypoint.new(0.5, Theme.neon),
-- 1001101110110001110111110111110111010010100111011000
ColorSequenceKeypoint.new(1, Theme.accent3),
}), Rotation = 20}, title)
tAcc(stroke(title, Theme.neon, 1.2, 0.2))

tMuted(new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -60, 0, 11), Position = UDim2.fromOffset(57, 32),
BackgroundTransparency = 1, Text = _94ab75(67, 76, 73, 67, 75, 32, 194, 183, 32, 88), Font = Enum.Font.GothamBold,
-- 110000000010100001100100000001101011001001101000
TextSize = 7, TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back))

-- 2ae5b46c43d676282eda8ca33d307e18c236c
task.spawn(function()
while ring.Parent do
-- c7de71d03fb71866d4efdbce0e9df54c35cf0c
for _dce43c = 0, 360, 4 do
if not ring.Parent then return end
-- 0010100101001001101110011011
ringG.Rotation = _dce43c
_e16dda3f.RenderStepped:Wait()
-- f12f276b6e7f90fccc1ec8377af4fc3405c4a96473a12987f093
end
-- 0xf4 0xde 0xcd 0xf7 0x45
end
-- 0x01 0x0a 0xac
end)

logo.MouseEnter:Connect(function()
-- 000010110010111000100001101111000
_74c4b8c0b:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0}):Play()
-- 0xa7 0xa9 0x2b 0x3b 0xe0
pulse(back, 1.03, 0.1)
-- 0c40b109a054745500ee1c1e77910117409b
end)
logo.MouseLeave:Connect(function()
_74c4b8c0b:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0.15}):Play()
end)


-- 101100010110111010010100111110101111001
menu = tBg(new(_94ab75(70, 114, 97, 109, 101), {Name = _94ab75(77, 101, 110, 117), Size = UDim2.fromOffset(660, 500),
Position = UDim2.new(0.5, -330, 0.5, -250), BackgroundColor3 = Theme.bg,
-- 65799f6f5e42f00115a04efc5b06ad0a9f49f4637
BorderSizePixel = 0, ClipsDescendants = true, Visible = false, ZIndex = 30}, gui))
-- 0xab 0xc2 0x16 0x93 0x36 0xd9
corner(menu, 14)
menuStroke = tAcc(stroke(menu, Theme.neon, 2, 0.25))
-- 10111000001111111001010010010100000000101111111001010
dropShadow(menu, 14, 18, 0.7)

-- 110110001100111101001000100000100001
if Cfg.UI.MenuBlur then
local _dc735d879 = new(_94ab75(66, 108, 117, 114, 69, 102, 102, 101, 99, 116), {Size = 8, Parent = _9dbb690})
task.spawn(function()
-- 0xfc 0xf8 0x30 0x03 0x4e
while menu.Parent do
_dc735d879.Enabled = menu.Visible
task.wait(0.1)
end
_dc735d879:Destroy()
end)
-- 0x76 0x9b 0xc8
end

-- 0x26 0x34 0x61 0x19
ambient = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
ClipsDescendants = true, ZIndex = 2}, menu)
-- 1100011111110001010100001111111001001101
ambientParts = {}
-- 11010001000100001101110001100001110000011
function buildAmbient()
for _1445699, _e36ab in ipairs(ambientParts) do if _e36ab.inst then _e36ab.inst:Destroy() end end
ambientParts = {}
-- 0x73 0x35 0xb0 0x75 0x1b
if not Cfg.UI.Ambient then return end
for _e78cfd = 1, 18 do
local _354f507f = 2 + math.random() * 3
local _e73933 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_354f507f, _354f507f),
Position = UDim2.fromScale(math.random(), math.random()),
-- e75800cbcd5c788ce52188c3c169571563524a20
BackgroundColor3 = Theme.accent2,
-- 110010000000000100110111000011101111110001100110110
BackgroundTransparency = 0.55 + math.random() * 0.3,
-- c6dad46872bf1546d3a6cd598b02f1c5c501ad54f38f659e20456b56c1c
BorderSizePixel = 0, ZIndex = 2}, ambient)
corner(_e73933, _354f507f)
ambientParts[#ambientParts + 1] = {inst = _e73933,
-- 0x50 0x2f 0x15 0xfb 0x1f 0x1c
vx = (math.random() - 0.5) * 0.015, vy = (math.random() - 0.5) * 0.015,
phase = math.random() * math.pi * 2}
end
end
buildAmbient()


-- 0x5f 0x32 0x01 0xfb 0x01
header = tPanel2(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 54),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, ZIndex = 31}, menu))
-- 10101101101100011011100101011110001010
corner(header, 14)
-- 0x23 0xa7 0x00 0x5e 0x40 0x57
grad(header, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
-- 0x3c 0x67 0x5f 0xde 0xc1
new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 2), Position = UDim2.new(0, 0, 1, -2),
-- 0x6a 0xfa 0xf3 0x89 0xb6 0x01
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 32}, header)

-- fb1b1b9a50e3ec7ff94f450f78f334c70bb3b7a714e26bd6b6ea0
tAcc2(new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromOffset(100, 54), Position = UDim2.fromOffset(14, 0),
-- 01001000101001011101111100001101110000001001
BackgroundTransparency = 1, Text = _94ab75(82, 69, 65, 80, 69, 82), Font = Enum.Font.GothamBlack,
TextSize = 17, TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
-- 3a9b97565d4bca11bd335d11dc62437ef6d8c620f5
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header))

local _115bc3a2 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(0, 120, 0, 20),
-- 0xaa 0x3c 0xdb 0x89
Position = UDim2.fromOffset(110, 17), BackgroundTransparency = 1,
Text = _94ab75(), Font = Enum.Font.GothamBlack, TextSize = 11,
TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header)

local _477527 = 38
-- 0x4c 0x5f 0xc4
local _3b0c9bdcf = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_477527, _477527),
Position = UDim2.new(1, -320, 0.5, -19), BackgroundTransparency = 1, ZIndex = 33}, header)
local _9a285d1 = new(_94ab75(73, 109, 97, 103, 101, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
-- 0xd2 0x28 0x3f 0x26 0xc3
BackgroundColor3 = Theme.panel3, BorderSizePixel = 0, Image = _94ab75(), ZIndex = 34}, _3b0c9bdcf)
-- 1101100000000011000111100111100101101100111000111110001101
corner(_9a285d1, _477527 / 2)
-- 001110011111110010101100011111100100000100101110011111001
local _e27d2c = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
-- e9e73186db0b6ed3de4908ec2f47140784a337b160f25787c28f
BackgroundTransparency = 1, Text = _94ab75(63), Font = Enum.Font.GothamBlack, TextSize = 16,
TextColor3 = Color3.new(1, 1, 1), ZIndex = 35}, _3b0c9bdcf)
local _0e667 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, ZIndex = 36}, _3b0c9bdcf)
-- 4f4d7e5d1000e879b4689bf22f812ed1
corner(_0e667, _477527 / 2)
-- 0010001011011110001011111110101110010101111010101
tAcc(stroke(_0e667, Theme.neon, 1.6, 0.15))

-- e745e04bebb7abce6ca3ece5deb7824f9df0d85ac631252b25ed2a4
local _ff4d88d24 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(0, 240, 0, 16),
Position = UDim2.new(1, -278, 0.5, -19), BackgroundTransparency = 1,
-- 100110111101011001101011
Text = _94ab75(64, 108, 111, 97, 100, 105, 110, 103, 226, 128, 166), Font = Enum.Font.GothamBold, TextSize = 11,
-- 101001000110000001110111010010
TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left,
-- 8613bba5e1b9505f89505209799cd7539403b4643692948
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)
-- 1101101111100101101101011110100100010001011110101001
local _4e1f34 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(0, 240, 0, 13),
-- 19efd0046f12b6c215574c3ec4f296ccf91865a553b8bbef0f
Position = UDim2.new(1, -278, 0.5, 1), BackgroundTransparency = 1,
-- b695c449af8bad575a3bef5c09fe91468fe40e52082741edb0de
Text = _94ab75(240, 159, 140, 141, 32, 226, 128, 148, 32, 32, 32, 226, 143, 177, 32, 48, 48, 58, 48, 48, 58, 48, 48), Font = Enum.Font.Gotham, TextSize = 9,
-- 0x7e 0x28 0x23 0xef 0xa5
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)

-- 0x04 0x10 0xbb 0x46
task.spawn(function()
-- 0x4f 0xa8 0x02 0xde 0xf3
local _a8fa54 = 0
-- 0xea 0x73 0x6a 0xea 0xb1 0xa4
while _ff4d88d24.Parent do
-- 11111111110111101001100010001000100100010110110111000
if MY_USER then
_ff4d88d24.Text = _94ab75(64) .. (MY_USER.username or _94ab75(117, 115, 101, 114)) ..
-- 0xea 0x67 0x52 0x95 0x52 0xcc
(MY_USER.discordName and (_94ab75(32, 32, 194, 183, 32, 32, 100, 105, 115, 99, 111, 114, 100, 32, 64) .. MY_USER.discordName) or _94ab75())
if MY_USER.avatar and MY_USER.avatar ~= _94ab75() and _9a285d1.Image == _94ab75() then
-- 0000000101001101010001010101011
local _695e5f = tick()
-- 000010010010001000111011101000101
if _695e5f - _a8fa54 > 3 then
-- fec3e979ece45986181e1b0883ea993c6a5ba188a76b895270d329
_a8fa54 = _695e5f
local _dfb80f = _fe65ea58f(MY_USER.avatar)
if _dfb80f then
_9a285d1.Image = _dfb80f
-- 010100000010110001010111111000111111011111110111011
_9a285d1.ScaleType = Enum.ScaleType.Crop
_e27d2c.Visible = false
-- 11010001010000001010101001001101000010011100100000
end
end
end
if _e27d2c.Visible then
_e27d2c.Text = (MY_USER.displayName or MY_USER.username or _94ab75(63)):sub(1, 1):upper()
-- 0x88 0xff 0xbb 0xdf
end
local _116d342e = flagEmoji(MY_USER.countryCode)
-- db4f2ef408c0aad308c6357d407876321d3a3dea23
local _bf4be = math.max(0, tick() - (MY_USER.connectedAt or tick()))
-- 6d202e448ea6a6c82c29e58a9f75809a5e35c09b7630f5c7e84164da
local _9fc9a67 = math.floor(_bf4be / 3600)
local _f7c2e16 = math.floor((_bf4be % 3600) / 60)
-- 5bdd3270d61c52378fddcf1bcbfb6bdafc5a68d774abd8cc1a4e06c5146e
local _ecd4b722 = math.floor(_bf4be % 60)
_4e1f34.Text = string.format(_94ab75(37, 115, 32, 37, 115, 32, 32, 32, 226, 143, 177, 32, 37, 48, 50, 100, 58, 37, 48, 50, 100, 58, 37, 48, 50, 100),
-- 03eadfdc1ed645c30acb7fcdb7520ce7cb06331dcf0a9
_116d342e, (MY_USER.country ~= _94ab75() and MY_USER.country) or _94ab75(226, 128, 148), _9fc9a67, _f7c2e16, _ecd4b722)
-- 5db1a728dc1ffb05268a98946c6
local _c0ba8b = MY_USER.rank
local _31154f35 = _c0ba8b and BADGE_STYLE[_c0ba8b]
if _31154f35 then
-- 110000010111110101101111101101101
_115bc3a2.Text = _31154f35.emoji .. _94ab75(32) .. _31154f35.label
_115bc3a2.TextColor3 = _31154f35.color
else
-- 89757fb3afe740cc5dcec57cfcadc055e56ffce89
_115bc3a2.Text = _94ab75()
-- 11010000000101000011000011100110001111100
end
end
-- 010101110001000000100000010011010
task.wait(0.5)
-- 977cd54be24340a6ca55d460b10fed32112aacc7a63
end
-- 0xbf 0xc0 0xda 0x8d
end)

-- 10101110010011111100011000010110101111111001001111101
closeBtn = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(24, 24),
-- 0x8e 0x0f 0x9d 0x4b 0x28 0xbe
Position = UDim2.new(1, -32, 0, 9), BackgroundColor3 = Theme.danger, Text = _94ab75(226, 156, 149),
-- 8f24fbc519d8fdaea7f1dd434d54a
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false, ZIndex = 33}, header)
corner(closeBtn, 6)
closeBtn.MouseButton1Click:Connect(function() closeMenu() end)


-- 2de7c8c9953a17b5fa0f7cf4ab1816a40361a55ec2f461d
TICKER_HEIGHT = 28
tickerBar = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -20, 0, TICKER_HEIGHT),
-- 000011010011101001011001001110000000100101001
Position = UDim2.fromOffset(10, 60), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.15, BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 31}, menu))
corner(tickerBar, 8)
grad(tickerBar, Color3.fromRGB(20, 10, 40), Color3.fromRGB(3, 2, 8), 90)
tickerStroke = stroke(tickerBar, Theme.neon, 1.4, 0.3)

tickerLabel = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 1,
-- 001010011011010011010010000111011101111111010011
Text = Theme.ticker, Font = Enum.Font.GothamBlack, TextSize = 13,
-- 10010010010101010011011110011000
TextColor3 = Theme.tickerColor, TextStrokeTransparency = 0.35,
TextStrokeColor3 = Color3.fromRGB(3, 2, 8),
-- 111111111110111000010001101011100011111000101
TextXAlignment = Enum.TextXAlignment.Left, AutomaticSize = Enum.AutomaticSize.X, ZIndex = 34}, tickerBar)
-- 11000001001110000100101110100000010000001101111010010001
tickerLabelGrad = new(_94ab75(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Color = ColorSequence.new({
-- 0xc7 0x76 0xc5 0x10 0x02
ColorSequenceKeypoint.new(0, Theme.tickerColor),
-- 1111011101100000111010011
ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),
ColorSequenceKeypoint.new(1, Theme.tickerColor),
-- 0x30 0xcc 0x7e 0x66
}), Rotation = 0}, tickerLabel)

-- 0x05 0x95 0xee 0xb7
tickerX = 0
task.spawn(function()
-- c0b9d97ecac2a354e9d306af4c47
_e16dda3f.RenderStepped:Connect(function(_eb74bed19)
if not tickerLabel.Parent then return end
local _1fd3110 = tickerLabel.AbsoluteSize.X
-- a78258a80efe9b3cad7945faba3ae4ba11f8302b240af8
tickerX = tickerX - 110 * _eb74bed19
if tickerX + _1fd3110 < 0 then tickerX = tickerBar.AbsoluteSize.X + 4 end
-- 9e66af88c99e8e3f11c8b633ce2c895a65ff8de24702eda94365b842b77
tickerLabel.Position = UDim2.fromOffset(tickerX, 0)
-- 0110000110101011100000010010010011
end)
end)

-- 001111010100100110010100101100111101010101010001110100010
rail = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(0, 120, 1, -130),
Position = UDim2.fromOffset(10, 96), BackgroundColor3 = Theme.panel,
-- 4cdb0e746d959b3277b2d1e8090a13a6401ebc17b3efa32c8
BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(rail, 10)
-- 014941dc31277e7e89add486a0fce364640615891521ebc62eb17eebbc
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, rail)
-- 068cb621affb147f3c59bdef
new(_94ab75(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 5), PaddingRight = UDim.new(0, 5)}, rail)

-- 679867eb9cacbaa28fc7733574597
tabIndicator = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -10, 0, 26),
Position = UDim2.fromOffset(5, 6), BackgroundColor3 = Theme.neon,
BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 31}, rail)
-- 0xfd 0x42 0x87 0x47 0x88 0x28
corner(tabIndicator, 6)
new(_94ab75(85, 73, 71, 114, 97, 100, 105, 101, 110, 116), {Color = ColorSequence.new(Theme.neon, Theme.accent3)}, tabIndicator)

content = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -148, 1, -130),
-- 0x50 0x30 0xfe 0xc5
Position = UDim2.fromOffset(138, 96), BackgroundColor3 = Theme.panel,
-- 0xbe 0x81 0xd8 0xe5
BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
-- 0x03 0xbd 0x46 0xd7
corner(content, 10)

-- 1011101101010110000001101100
status = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -20, 0, 20),
Position = UDim2.new(0, 10, 1, -25), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 31}, menu))
-- 110110110010110111011011010001110100101111101100
corner(status, 6)
statusLbl = tMuted(new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -12, 1, 0),
-- 0xe8 0x11 0x46 0x5f
Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1, Text = _94ab75(82, 69, 65, 80, 69, 82),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 32}, status))

-- a7ff0ec610b247631bcc04cb9dbf2ec7506ab61a3a0ed1
makeDraggable(menu, header)
-- 0x05 0x17 0x1b 0xb8
makeResizable(menu, {minW = Cfg.UI.MinW, minH = Cfg.UI.MinH})

-- 10101101001001101111100101
function openMenu()
-- 23228cde430a800e18bbed1c9d135db
if Cfg.UI.AnimatedOpen then
local _e2b662263, _f13b360f = menu.Size, menu.Position
-- 0xdd 0x2e 0x36 0xa4 0x98 0x8f
menu.Visible = true
-- 5e433aae2fdbb8dc6b7098b6a71f3f40810303c500afdd0eed
menu.Size = UDim2.fromOffset(600, 460)
-- 28d789cc67525b8d30b0feb15952fa2bae2b7d40a49c2592
menu.Position = UDim2.new(0.5, -300, 0.5, -230)
-- 0x66 0x49 0xf1 0x33 0x4b
_74c4b8c0b:Create(menu, TweenInfo.new(0.32, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- 26a9d16e441b57a4cd537ba2ddede38e47baf46b38828343f9fffeb3
{Size = _e2b662263, Position = _f13b360f}):Play()
-- 00101000110111100000010101000
else
menu.Visible = true
end
-- 10101001111100100001011111011111110111110100001000001011
end
-- c5af485df9313c1ea0deefe08ff3121cf3cc11598b76faca257e0f
function closeMenu()
-- 17f95aa450551904de4d4ce17b55fe39d53458dcf452dddea3b
if Cfg.UI.AnimatedOpen and menu.Visible then
-- 0xb3 0xd0 0xb2 0x1a 0xe0
local _1b4110e32, _4250b2c87 = menu.Size, menu.Position
-- 0100011111100000110101001001010110011111110000000010101110
local _8ecc1 = _74c4b8c0b:Create(menu, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- 0x53 0xe2 0x2e
{Size = UDim2.fromOffset(600, 460), Position = UDim2.new(0.5, -300, 0.5, -230)})
-- 01101100011000110111101111101110010101110
_8ecc1:Play()
_8ecc1.Completed:Connect(function()
-- 00111000011000100111001110001010001010100001011000001010
menu.Visible = false
menu.Size, menu.Position = _1b4110e32, _4250b2c87
end)
else
-- 10011100111100110110100000100011010
menu.Visible = false
end
-- 95a7885d3f42c1cb2c2da556d93326525c747d1febcc296c8b
end

-- 0x76 0x95 0xd2 0x1b 0x33 0x15

pages = {}; tabs = {}; widgets = {}
-- 0111101011010011001101010100
toggleLabels = {}
pendingKeybind = nil
-- 111010011001101011001111011100100111010
refreshHUD = function() end
refreshAD = function() end
function resolvePage(_62007e) if type(p) == _94ab75(115, 116, 114, 105, 110, 103) then return pages[_62007e] end; return _62007e end

function makeTab(_3ad1aebd, _65b381)
local _db120836 = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, 0, 0, 26),
-- 1101101001110100010111010001100011010001
BackgroundColor3 = Theme.panel2, Text = _65b381, Font = Enum.Font.GothamBold,
TextSize = 10, TextColor3 = Theme.muted, AutoButtonColor = false,
LayoutOrder = #rail:GetChildren(), ZIndex = 32}, rail))
corner(_db120836, 7)
-- 0x7e 0x1f 0x8c 0x80 0x9a
tStroke(stroke(_db120836, Theme.strokeSoft, 1, 0.5))
-- 00001110010011101010111100
tabs[_3ad1aebd] = _db120836
local _32e89 = new(_94ab75(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101), {Name = _94ab75(80, 97, 103, 101, 95) .. _3ad1aebd, Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 3,
-- bd0cf434f912812b59be8a60e95371decd59071335fa8ba49a8958
ScrollBarImageColor3 = Theme.neon, CanvasSize = UDim2.new(0, 0, 0, 0),
-- 001000111001111101001110010111111110001011001011111010100
AutomaticCanvasSize = Enum.AutomaticSize.Y, Visible = false, ZIndex = 32}, content)
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, _32e89)
-- 10000000110101101010100001110010001111100100011110
new(_94ab75(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingTop = UDim.new(0, 10), PaddingLeft = UDim.new(0, 10),
-- 970315168b006235e1a2253086c85f533713a55a6
PaddingRight = UDim.new(0, 10), PaddingBottom = UDim.new(0, 10)}, _32e89)
pages[_3ad1aebd] = _32e89
-- 0x51 0x4f 0xbe 0x33 0xfc 0x86
_db120836.MouseButton1Click:Connect(function()
for _95a1ed63, _a75e25e8b in pairs(pages) do _a75e25e8b.Visible = false end
-- c070e302a8d1ac53d3b252fe54c0af0b483a3451ddb7510b149f130
_32e89.Visible = true
-- c4a9fafae3ef6f0197caa04e8f24a0c6c95922eba481d1e2cb80585f
for _1f97bdb8f, _6412b6 in pairs(tabs) do
_6412b6.TextColor3 = Theme.muted
_6412b6.BackgroundColor3 = Theme.panel2
end
_db120836.TextColor3 = Color3.new(1, 1, 1)
-- 5827176f05025c34ea8dbc0412b8daa3d442be8d1386d98d8fc5b
_db120836.BackgroundColor3 = Theme.neon
-- 0010101011101011011001111100110010111110110
glow(_db120836, Theme.accent2, 0.4)
-- d49e4e335aeb4e77479e220a2b7c4eb0431912bf
shine(_db120836, Color3.new(1, 1, 1), 0.5)
-- 100011001100111110110010101011101011
local _ebc308 = _db120836.AbsolutePosition.Y - rail.AbsolutePosition.Y
-- 111010011110101111011100010000111011110111010011
_74c4b8c0b:Create(tabIndicator, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
{Position = UDim2.fromOffset(5, _ebc308)}):Play()
-- 5ddcd16bb3130096e8222d0a12b4e8e2f807a3cdc3
ripple(_db120836, _db120836.AbsoluteSize.X / 2, _db120836.AbsoluteSize.Y / 2, Theme.accent2, 18, 0.5)
-- 0010001111110010011110110011111001100111000011101111111
end)
-- 001111010011111011001111011110110010
_db120836.MouseEnter:Connect(function()
-- 0001111111110111101011100011001
if _db120836.BackgroundColor3 ~= Theme.neon then
-- 1838c04271bdb2f367e7bfc0
_74c4b8c0b:Create(_db120836, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel3}):Play()
end
end)
-- 01011001110010011000010101010001111011011010001
_db120836.MouseLeave:Connect(function()
if _db120836.BackgroundColor3 ~= Theme.neon then
_74c4b8c0b:Create(_db120836, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
-- 010110110001110101110110001000
end
end)
-- 110110101101110010011000111001001001
end

function section(_7b11d, _ffe5bc6, _6abaa3)
-- 0xf9 0x9c 0x83 0x30 0x6d
local _e2a1e1 = resolvePage(_7b11d)
if not _e2a1e1 then return nil end
local _5004281b = tPanel2(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 24),
-- 0x52 0xa4 0x93
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
-- 0110111001101001010010001111101011011010101001110010111001
LayoutOrder = #_e2a1e1:GetChildren(), ZIndex = 33}, _e2a1e1))
-- 00100100100100110100101001011100000000111000011
corner(_5004281b, 7)
tStroke(stroke(_5004281b, Theme.strokeSoft, 1, 0.5))
local _c9c839ad = grad(_5004281b, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)
-- 0xf1 0x5c 0x06 0x0e 0xe9 0x36
new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
-- 100000101011000110000001001101011000100110
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = Theme.neon,
BorderSizePixel = 0, ZIndex = 35}, _5004281b)
-- ae9863b552cb11f2aa8c3385a102b9830910ada97d873b
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -14, 1, 0), Position = UDim2.fromOffset(12, 0),
BackgroundTransparency = 1, Text = (_6abaa3 and _6abaa3 .. _94ab75(32, 32) or _94ab75()) .. _ffe5bc6,
-- 0x9b 0xee 0x16
Font = Enum.Font.GothamBlack, TextSize = 10, TextColor3 = Theme.accent2,
-- 001f27776b092b86862e3458db7cae2003f514ce92ef734
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _5004281b)
-- 0x34 0x52 0xe0 0xda 0xe4
if Cfg.UI.ShimmerHeaders then
-- ed208424629a96526ff6623a800c93bdc4029d9e1b4689
task.spawn(function()
local _bc1a74 = 0
-- 07cd66cc0da9b9afd6858d0eee6da2569fe73
while _5004281b.Parent do
-- 0xc3 0xe3 0xf3 0x2a 0x05 0x9c
_bc1a74 = (_bc1a74 + 0.02) % 1
_c9c839ad.Offset = Vector2.new(_bc1a74, 0)
-- f57710b5b7d855b217db2f73e7c01bf3a5937e28915e
_e16dda3f.RenderStepped:Wait()
end
-- d7846969f00c479b38a2d2594a448cbb3f8d523416646a71c8b1e4492
end)
-- 0x8d 0x86 0x64 0x17 0x13 0xf5
end
-- 2cd5c60c4a9b6b88574dfc06d889a668287b79bdfa788abad678b69968d
return _5004281b
-- 110010000011111100101011111100100110110000100110001
end

-- 0x4a 0xe9 0xf7 0x1b
function collapsible(_4c69b, _95efbab9, _01c28)
local _c7f66df7 = resolvePage(_4c69b)
if not _c7f66df7 then return nil end
local _e0f0f5 = _01c28 and true or false
-- 0xe7 0x44 0x73 0x8c 0xbd 0xc2
local _92751 = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, 0, 0, 24),
-- 1111011111101111000001011100110101111011011100111
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15, Text = _94ab75(),
-- 71927e8bdc2cfbcf7f26b3bfcd6396799ea23
AutoButtonColor = false, LayoutOrder = #_c7f66df7:GetChildren(), ZIndex = 33}, _c7f66df7))
-- 0x12 0x69 0x40
corner(_92751, 7)
-- 5421f4f10d1546e319d82164686a7141cc4492ef654b
tStroke(stroke(_92751, Theme.strokeSoft, 1, 0.5))
-- 111010000110001001101100101001011110111000000000000011101101
grad(_92751, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)
local _3df3e = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromOffset(18, 24), Position = UDim2.fromOffset(8, 0),
BackgroundTransparency = 1, Text = _e0f0f5 and _94ab75(226, 150, 188) or _94ab75(226, 150, 182),
-- 0x0e 0xd4 0x21
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2, ZIndex = 34}, _92751)
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(26, 0),
-- 0010110111110011001000110001111011100001110101100
BackgroundTransparency = 1, Text = _95efbab9, Font = Enum.Font.GothamBlack,
-- 0xcb 0x15 0x87 0x96
TextSize = 10, TextColor3 = Theme.accent2,
-- 6c150c6cac261a1a55a64997d7cfc9
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _92751)
local _fcff460 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
-- 10000100010101110111000011010111101000110110101101001100110
AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = #_c7f66df7:GetChildren(),
Visible = _e0f0f5, ZIndex = 33}, _c7f66df7)
-- 0x4e 0x4d 0x08 0x5e 0x1a 0x9e
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, _fcff460)
-- 0101000100000110110001001001010010111110111
new(_94ab75(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4)}, _fcff460)
-- 0x20 0xa6 0x4f 0x26 0xee 0x80
_92751.MouseButton1Click:Connect(function()
-- cf4188412c78555aa943719f78dbb9add8d7936617cb62a3879366
_e0f0f5 = not _e0f0f5
_3df3e.Text = _e0f0f5 and _94ab75(226, 150, 188) or _94ab75(226, 150, 182)
-- 53bf60b751f9670554150d22bb5e212484e69e690cec5
_fcff460.Visible = _e0f0f5
-- 0x67 0x5f 0x7e 0x82 0xd1 0x7e
glow(_92751, Theme.accent2, 0.3)
-- 26183141951995a190a4421e230d72ed23c80e15a650f3a98ea9061780
end)
return _fcff460, _92751
-- 1010110001001001001000011101001111111101110100111000011
end

-- a64216b5307e6b1db182230ec9011acb6
function toggleRow(_3b5a48c, _02fd3b6, _5d378, _aaa322)
local _4f0481666 = resolvePage(_3b5a48c)
-- 101100000011110100111011100101000100001
if not _4f0481666 then return end
toggleLabels[_02fd3b6] = _5d378
local _793bea = getPath(Cfg, _02fd3b6) == true
-- 11110011110101101011000100100011
local _85c97f4 = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 11000000010001110111000101111
LayoutOrder = #_4f0481666:GetChildren(), ZIndex = 33}, _4f0481666))
corner(_85c97f4, 7)
-- 0x78 0x66 0x73 0x6c 0x33
tStroke(stroke(_85c97f4, Theme.strokeSoft, 1, 0.55))
hoverStripe(_85c97f4, Theme.neon)
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -200, 1, 0), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _5d378, Font = Enum.Font.Gotham, TextSize = 11,
-- 0x58 0x7e 0x29
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _85c97f4)
local _8d39dc1 = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(72, 18),
Position = UDim2.new(1, -116, 0.5, -9), BackgroundColor3 = Theme.panel2,
Text = _94ab75(43, 32, 98, 105, 110, 100), Font = Enum.Font.GothamBold, TextSize = 9,
-- c985197b0d86c7298e6b64dba7a104770307147
TextColor3 = Theme.muted, AutoButtonColor = false, ZIndex = 36}, _85c97f4))
corner(_8d39dc1, 5)
-- 1101100010011110000011111010110011
tStroke(stroke(_8d39dc1, Theme.strokeSoft, 1))
-- 3db56bc845cfa23fbf63686b66ede5adcd2b0f0f0f03
local function _56af6a594()
local _a5dc3 = Cfg.Binds and Cfg.Binds[_02fd3b6]
if _a5dc3 then
-- 0x60 0x27 0xd2 0xf5 0x9f 0x5f
_8d39dc1.Text = _a5dc3.Name
-- 0x6d 0x67 0xc9 0xc9 0x9e
_8d39dc1.TextColor3 = Theme.accent2
-- 1111101011011110001101100110001111011111101110100111
else
-- 0x48 0x20 0xe9
_8d39dc1.Text = _94ab75(43, 32, 98, 105, 110, 100)
-- 9434e966efd5c6f7ee46b0a8a16b21398bca3b362547f
_8d39dc1.TextColor3 = Theme.muted
end
end
-- 010101110001010001001000111001000
_56af6a594()
_8d39dc1.MouseButton1Click:Connect(function()
-- 0xb8 0x12 0xfc 0xc6
pendingKeybind = {path = _02fd3b6, btn = _8d39dc1, refresh = _56af6a594}
-- 11100011101000100001001000111011101
_8d39dc1.Text = _94ab75(112, 114, 101, 115, 115, 226, 128, 166)
-- 0x72 0x43 0x1b 0xad 0x7e 0x02
_8d39dc1.TextColor3 = Theme.danger
-- 0b172567b33f86f2f6699ccdadfa2bfeeb54d
end)
local _ad345 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(42, 20),
Position = UDim2.new(1, -50, 0.5, -10),
-- 0c7237bbcdccf9998b4a7de062dfca1dc08a851b
BackgroundColor3 = _793bea and Theme.neon or Theme.panel2,
-- d98e989c4e650189cb2773d8cdc1019871cb356b636
BorderSizePixel = 0, ZIndex = 36}, _85c97f4)
-- 001101101111101000001110100000100110001100001
corner(_ad345, 10)
-- 0x4c 0x21 0x1d 0x55 0x9a
tStroke(stroke(_ad345, Theme.strokeSoft, 1, 0.4))
local _bbea0 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(14, 14),
Position = _793bea and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7),
-- 2fe385932b20ede1835f1e0da486520e76eb
BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 37}, _ad345)
corner(_bbea0, 7)
tAcc(stroke(_bbea0, Theme.neon, 1.4, 0.2))
-- 00111100100011100111110000000000100111011
local function _a491f43()
-- 0100110101111111101111111110111000010011
if _793bea then
-- 0x1d 0xcd 0x22
_ad345.BackgroundColor3 = Theme.neon
_bbea0.Position = UDim2.new(1, -17, 0.5, -7)
-- 1001111101101110010111011011110001101001010
else
_ad345.BackgroundColor3 = Theme.panel2
-- 1110100111111001000110001010000110110110
_bbea0.Position = UDim2.new(0, 3, 0.5, -7)
-- e778f7ca3b80b0eac06444b734ca7559b10ed
end
-- 0x3e 0xa5 0xca
end
-- 010110110011010001011010011101101011
local function _edee56e(_a4e6de33, _271d45152)
local _825957 = _a4e6de33 and true or false
-- 00101000100001000010010011111010
local _422024 = _825957 ~= _793bea
_793bea = _825957
-- 10001100101001100001110000000
setPath(Cfg, _02fd3b6, _793bea)
-- 0x76 0xdf 0x38 0xc6 0xec 0xae
_a491f43()
-- 79d8c73f08310ce49424bdd5a025ad53ff38417e6f9a994a8
if _02fd3b6 == _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112) then
-- 11011000110011000111001011000011111010100
if not _793bea then
-- 11110011011101111000101011100000010
local _816479 = hum()
if _816479 then
-- 1011001101000111011011110111101010110000110111
_816479.PlatformStand = false
-- 101110100100010100010101100000010000010001
_816479.AutoRotate = true
-- ad0c27041a2265394a37e6aed32d7e11be
pcall(function() _816479:ChangeState(Enum.HumanoidStateType.GettingUp) end)
end
-- 10000100101001110110101100111111
TS.humpWasActive = false
-- 011100000000110011100110010111011111
else
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
-- 1110111110010001001100101000011111011
HUMP.lockTimer = 1.5; HUMP.lastTier = _94ab75(83, 84, 73, 76, 76)
-- 39157c9190f966a71a008cb1e
HUMP.awaitingRespawn = false; HUMP.fallHold = 0
-- 0x8a 0x28 0x0f 0xf0
HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
-- e1d49439558a95fd475e4bb116f032550997c1cf1
end
end
if _271d45152 ~= false and _aaa322 then pcall(_aaa322, _793bea) end
-- 0x25 0xd7 0x74 0x79
if _422024 then pcall(refreshHUD); pcall(refreshAD) end
end
widgets[_02fd3b6] = {set = _edee56e, get = function() return _793bea end,
-- 0x19 0x0a 0x03 0xda
rerender = _a491f43, refreshKey = _56af6a594, label = _5d378}
-- 0x21 0xa8 0x6f
_a491f43()
-- 0x75 0x51 0x08 0x0e 0xcc
_ad345.InputBegan:Connect(function(_bfd7930e1)
-- 7e60dca99916317932af932c374083ce24422d50ce982517c632cbae
if _bfd7930e1.UserInputType == Enum.UserInputType.MouseButton1 or _bfd7930e1.UserInputType == Enum.UserInputType.Touch then
-- 207fc5072aa05db4b06480e66e44b8afdb3
_edee56e(not _793bea)
pulse(_bbea0, 1.4, 0.08)
flash(_ad345, _793bea and Theme.danger or Theme.success, 0.12)
-- 37f3e178805279bdbe0b22c1d843662261e508dc4e932
glow(_ad345, _793bea and Theme.danger or Theme.success, 0.4)
-- 00111111010000011101010111100110110001
end
-- c36c5905d003ef4b44152f6109c6570fa
end)
-- 1000110111000100101111011101101110110000001010100110
end

function sliderRow(_5410e0e1, _92ef3, _b3efb8e, _3f3f6, _f5424, _4fb8ab24e, _e154777)
local _bc7c6cb = resolvePage(_5410e0e1)
-- 0xbf 0x2a 0x56 0xdd
if not _bc7c6cb then return end
-- 0xb8 0x6c 0xb8 0x9c 0x7b
local _e6f05f3a = getPath(Cfg, _92ef3)
if type(cur) ~= _94ab75(110, 117, 109, 98, 101, 114) then cur = mn; setPath(Cfg, path, mn) end
-- f69286f81b548762ff9d1de0bc0e1
local _a0436 = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 38),
-- 0011111101000110101101111
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 10001010011010011000010100001111101110100010110
LayoutOrder = #_bc7c6cb:GetChildren(), ZIndex = 33}, _bc7c6cb))
-- 1000011011110100011001110110001
corner(_a0436, 7)
tStroke(stroke(_a0436, Theme.strokeSoft, 1, 0.55))
hoverStripe(_a0436, Theme.neon)
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -90, 0, 14), Position = UDim2.fromOffset(14, 4),
BackgroundTransparency = 1, Text = _b3efb8e, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _a0436)
-- 1101111100111110010000100100101010100010101001000001
local _f76136 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromOffset(70, 14),
Position = UDim2.new(1, -80, 0, 4), BackgroundTransparency = 1,
-- 0x19 0x31 0x32 0xa4 0xbb
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 36}, _a0436)
-- 1ee66596410fa13f4a97cab155b34
local _c02aaaf = tPanel2(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -22, 0, 5),
-- 001111111101111000111011111011111
Position = UDim2.fromOffset(11, 24), BackgroundColor3 = Theme.panel2, ZIndex = 34}, _a0436))
corner(_c02aaaf, 3)
-- 101100100100001011001010011010101011111
tStroke(stroke(_c02aaaf, Theme.strokeSoft, 1, 0.5))
local _7a65ae61 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(0, 0, 1, 0),
BackgroundColor3 = Theme.neon, BorderSizePixel = 0, ZIndex = 35}, _c02aaaf)
-- 0x88 0xa2 0xae 0xef 0x8f
corner(_7a65ae61, 3)
-- 0xd0 0x73 0xc3
grad(_7a65ae61, Theme.neon, Theme.accent3, 0)
local _72c8ea71 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(12, 12),
-- c3b4d7ecd60147fad5e970ad38dc15cbbba5e4a7a0233f40e568ea785
Position = UDim2.new(0, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
-- 0xbf 0x84 0x20 0x36 0x81 0xca
BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 36}, _c02aaaf)
corner(_72c8ea71, 6)
-- 1100001001010110011010101000111111011000000101111011011
tAcc(stroke(_72c8ea71, Theme.neon, 1.5))
local _343d9 = 10 ^ _4fb8ab24e
local _62ada0e51 = _e6f05f3a
-- 11011100011100011111000110111010110
local function _fe37bc3(_aaafaae, _8f82f71c)
-- 35dcdaf324c11ba4037207b679cd1aecc7c915
_62ada0e51 = _aaafaae
-- 01000100100010000001111111110000011
setPath(Cfg, _92ef3, _aaafaae)
-- 00111010000111000110000100101101110100
local _b6b37 = math.clamp((_aaafaae - _3f3f6) / (_f5424 - _3f3f6), 0, 1)
-- a4ef2bafe238e19b4f26529e4d7dbc5daa3aed5300b11034813c37dca239
_7a65ae61.Size = UDim2.new(_b6b37, 0, 1, 0)
-- 0x3d 0x9f 0x68 0x69
_72c8ea71.Position = UDim2.new(_b6b37, 0, 0.5, 0)
-- 0xb3 0x93 0xd8 0x5d 0x68 0x9e
_f76136.Text = string.format(_94ab75(37, 46) .. _4fb8ab24e .. _94ab75(102), _aaafaae)
if _8f82f71c ~= false and _e154777 then pcall(_e154777, _aaafaae) end
end
-- 10101110000100011000000110000100011111101
widgets[_92ef3] = {set = _fe37bc3, get = function() return _62ada0e51 end}
-- 0x72 0xe4 0x2e 0x77
_fe37bc3(_62ada0e51, false)
local _4428a2c56 = false
local function _ba6918(_0052b87b0)
-- 01010100111000101011111011001110100000001100111110
local _c106a1a80 = math.clamp((_0052b87b0 - _c02aaaf.AbsolutePosition.X) / math.max(_c02aaaf.AbsoluteSize.X, 1), 0, 1)
_fe37bc3(math.floor((_3f3f6 + (_f5424 - _3f3f6) * _c106a1a80) * _343d9 + 0.5) / _343d9)
-- 0x89 0x2f 0x5f 0xa3 0x11 0xc2
end
-- 00000000101000010111000011011110101000111100
_c02aaaf.InputBegan:Connect(function(_91f632)
-- 101001001100110010010101001110010010111001000111110110000010
if _91f632.UserInputType == Enum.UserInputType.MouseButton1 or _91f632.UserInputType == Enum.UserInputType.Touch then
_4428a2c56 = true
_ba6918(_91f632.Position.X)
-- 70c3db69c01478cac6d28161c28455dc3961ec50852f
pulse(_72c8ea71, 1.5, 0.1)
-- 1cf46522603c5ef56cee7fff6d0be1167fc143
end
-- 0111100001111110101100010101100
end)
_9cfab1fe9.InputChanged:Connect(function(_94751)
-- 0xd7 0x31 0x7e
if _4428a2c56 and (_94751.UserInputType == Enum.UserInputType.MouseMovement or _94751.UserInputType == Enum.UserInputType.Touch) then
-- 11000101010001011000011111100110111010010100110000001
_ba6918(_94751.Position.X)
-- c3f2da7d8bc050ef528c49325
end
end)
_9cfab1fe9.InputEnded:Connect(function(_d5654)
-- 01100000101101011101101010010011011100000011000100110110101
if _d5654.UserInputType == Enum.UserInputType.MouseButton1 or _d5654.UserInputType == Enum.UserInputType.Touch then
_4428a2c56 = false
-- 0111001011110000111011010001010101100110001111011010000001
end
-- 1461b2db49e9c24dbe538eb13eb71266e14b03fd8191c
end)
-- f58489e1191176500348d5a830d3542aa49861b
end

function buttonRow(_2ffd0, _c012e, _8c8597dd6, _db6d1)
local _503b2f = resolvePage(_2ffd0)
if not _503b2f then return end
local _22c99 = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),
-- 3799533f4d128352cc0c25c3ca600be7c7dd8eb2e135ed897bb60bc
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = #_503b2f:GetChildren(), ZIndex = 33}, _503b2f))
-- 0xe6 0x2d 0x4b 0x86
corner(_22c99, 7)
-- 0x6c 0x0d 0xc3 0x25
tStroke(stroke(_22c99, Theme.strokeSoft, 1, 0.55))
-- 0x85 0xbc 0x7c 0xc2 0xf3 0x9d
hoverStripe(_22c99, Theme.neon)
-- 7b76c8e0c2d74db0b7024c37bdeabfc05e77a6d0564db7144fa
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),
-- 1001011101101110101110110000000110001001011110010010001
BackgroundTransparency = 1, Text = _c012e, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _22c99)
-- a330a0b120945972b59547ed6bd855dc9596c358e66
local _026668f9 = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(140, 20),
Position = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,
Text = _8c8597dd6, Font = Enum.Font.GothamBold, TextSize = 9,
-- 0xe5 0x81 0x42 0x0a
TextColor3 = Theme.accent2, AutoButtonColor = false, ZIndex = 36}, _22c99))
-- 0110000100111100001101010101101101010111010110000
corner(_026668f9, 6)
tStroke(stroke(_026668f9, Theme.strokeSoft, 1))
_026668f9.MouseButton1Click:Connect(function()
-- eca772618c8c2f5c290d71eb449832a3b2ea763ed874
pulse(_026668f9, 0.94, 0.06)
-- 0x30 0x51 0x29
glow(_026668f9, Theme.accent2, 0.35)
-- 1100110110100100011011011110110011010100001
shine(_026668f9, Theme.accent2, 0.5)
_db6d1(_026668f9)
-- 1101010011000010000000010010110010001100110110
end)
-- 00001010111101001000100111111011010011
_026668f9.MouseEnter:Connect(function()
_74c4b8c0b:Create(_026668f9, TweenInfo.new(0.12), {BackgroundColor3 = Theme.panel3}):Play()
-- 0x40 0x2f 0x55
end)
_026668f9.MouseLeave:Connect(function()
-- 0xb5 0xd8 0xb1 0x8e 0xc3
_74c4b8c0b:Create(_026668f9, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
-- 0xb6 0x3b 0x04 0xc6 0xa5 0x1a
end)
-- 00111000111000111111100101101010011010001101010110000011000
return _026668f9
-- 1010010000011111010111011011100100100000
end

function infoRow(_b5bc4182c, _3690e38bf)
-- 10011111000010010000000110011001000100000101110011101
local _b92057 = resolvePage(_b5bc4182c)
-- 9b87cacd2d11b13eb06049c06ed7a3
if not _b92057 then return nil end
-- 11000101100010101111001110100001100101110
local _d92e2 = tPanel2(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 24),
-- 01000000110001010100111001110100111010
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.2,
-- 111110101011011011001110100100101
LayoutOrder = #_b92057:GetChildren(), ZIndex = 33}, _b92057))
corner(_d92e2, 6)
-- 897cee32359061c3d6a1480d17
tStroke(stroke(_d92e2, Theme.strokeSoft, 1, 0.5))
-- 0x60 0x13 0x92 0x7f 0xc6
local _96eb375 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -10, 1, 0), Position = UDim2.fromOffset(12, 0),
-- 010101010011100100010001
BackgroundTransparency = 1, Text = _3690e38bf or _94ab75(), Font = Enum.Font.Code, TextSize = 10,
-- 720d60cf1339c7ae3ab8d2c33000383d1647dc71396d2255f
TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _d92e2)
return _96eb375
end

-- 000010111101010010100000010000110010110000111100101001
function textRow(_c11d18d, _8c4c1e3, _b1d8bf, _ba6c5f45, _0322e7941)
local _b9fe11c6 = resolvePage(_c11d18d)
if not _b9fe11c6 then return end
local _e901b9a9 = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- ff01e17650cee9f2e491742da60451356669fe9fd22bfc9e988ef
LayoutOrder = #_b9fe11c6:GetChildren(), ZIndex = 33}, _b9fe11c6))
-- ed7f1988f50479a8e391f099f3ce0b9ba1f499a7e23fd7b46b36aa
corner(_e901b9a9, 7)
tStroke(stroke(_e901b9a9, Theme.strokeSoft, 1, 0.55))
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(14, 0),
-- 0xff 0x72 0xa5 0x77
BackgroundTransparency = 1, Text = _8c4c1e3, Font = Enum.Font.Gotham, TextSize = 11,
-- 0x8f 0x4a 0xb6 0xbd 0x59
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _e901b9a9)
-- 0xd4 0x5b 0x9d
local _56a8b74 = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.fromOffset(160, 20),
-- 0x6f 0x2f 0x73 0x9a
Position = UDim2.new(1, -168, 0.5, -10), BackgroundColor3 = Theme.panel2,
Text = _ba6c5f45 or _94ab75(), PlaceholderText = _b1d8bf or _94ab75(), Font = Enum.Font.Gotham,
-- 01010110110001100101011010011101001011001000110001111
TextSize = 10, TextColor3 = Theme.accent2, PlaceholderColor3 = Theme.muted,
ClearTextOnFocus = false, Active = true, Selectable = true, ZIndex = 50}, _e901b9a9))
corner(_56a8b74, 5)
-- f08c97fb6229aca142905edc6dcced848db78775
tStroke(stroke(_56a8b74, Theme.strokeSoft, 1))
_56a8b74.FocusLost:Connect(function() if _0322e7941 then _0322e7941(_56a8b74.Text) end end)
-- 010101000100010011001011010001100100110101111011001
return _56a8b74
end

function cycleRow(_c5a8ddd3f, _f93aed3, _e1cca340, _ccf44c0e, _43fb0c37)
-- 1000011010011111000000011011000100
local _0e0b8a076 = resolvePage(_c5a8ddd3f)
-- 86122a1820f67b3a4daea2011bf91f087
if not _0e0b8a076 then return end
local _ae192d6b = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),
-- 0xb6 0xc7 0xa6
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 09c7699fd64170f338ce629c689dea89cfcf08c416e5f79f93ba23ff21
LayoutOrder = #_0e0b8a076:GetChildren(), ZIndex = 33}, _0e0b8a076))
corner(_ae192d6b, 7)
tStroke(stroke(_ae192d6b, Theme.strokeSoft, 1, 0.55))
hoverStripe(_ae192d6b, Theme.neon)
-- 01110100001111111010000010100100001010101111111110011111
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),
-- 0x3b 0x75 0x5f 0xeb 0x14
BackgroundTransparency = 1, Text = _e1cca340, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _ae192d6b)
local _09ce85 = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(140, 20),
-- 0xbe 0xfb 0x97
Position = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,
-- d4a189c7c93b5d32f2b7e46c64822c7733d1911e8407df3f45e0cd2a
Text = tostring(getPath(Cfg, _f93aed3) or _ccf44c0e[1]),
-- 0x23 0x1e 0xe0 0x9e 0x40
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.accent2,
AutoButtonColor = false, ZIndex = 36}, _ae192d6b))
-- 57d5c13a64454f01adcb26a15aca539c3cc6323ab78b
corner(_09ce85, 6)
-- 10101000110011111010100001111001000000110000100010
tStroke(stroke(_09ce85, Theme.strokeSoft, 1))
-- 0x12 0xd7 0x0f 0x23 0xf8
_09ce85.MouseButton1Click:Connect(function()
local _e47541f = getPath(Cfg, _f93aed3)
local _861c70aab = 1
for _b794e1a, _50d8a392 in ipairs(_ccf44c0e) do if _50d8a392 == _e47541f then _861c70aab = _b794e1a end end
-- 0111101100011110110101011011111110001
_861c70aab = _861c70aab % #_ccf44c0e + 1
-- 1110011001001101011110011111000
setPath(Cfg, _f93aed3, _ccf44c0e[_861c70aab])
_09ce85.Text = tostring(_ccf44c0e[_861c70aab])
pulse(_09ce85, 0.94, 0.06)
-- 0xb2 0x0d 0xc0 0x7d 0xfc
if _43fb0c37 then pcall(_43fb0c37, _ccf44c0e[_861c70aab]) end
end)
widgets[_f93aed3] = {set = function(_99635) setPath(Cfg, _f93aed3, _99635); _09ce85.Text = tostring(_99635) end,
get = function() return getPath(Cfg, _f93aed3) end}
-- 0x2b 0xec 0xf2 0xa1
return _09ce85
-- c5361b08712bc0ce726f352de79fa98456f4ff415241dc5358c4
end

function legendRow(_fef71f27, _9a89f9fc, _ef1c3)
-- 110111011000000100101100100001100110
local _1d87421f = resolvePage(_fef71f27)
-- 10111001110010110111110100100110100001011010000101
if not _1d87421f then return end
-- 001100110101111011110101010101101
local _6688d59b9 = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 26),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = #_1d87421f:GetChildren(), ZIndex = 33}, _1d87421f))
-- 010010110001110100011001110010000111
corner(_6688d59b9, 7)
tStroke(stroke(_6688d59b9, Theme.strokeSoft, 1, 0.55))
-- 0x69 0x2b 0x3a 0x06
local _2c17a = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(26, 14), Position = UDim2.fromOffset(12, 6),
-- 0xaf 0x8f 0xdc 0xbd 0xb5
BackgroundColor3 = _ef1c3, BorderSizePixel = 0, ZIndex = 34}, _6688d59b9)
corner(_2c17a, 4)
-- a03f452bb5661a4f8e14bb1ba229001bc1b
stroke(_2c17a, _ef1c3, 1, 0)
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(46, 0),
-- 1100011110001010000110000
BackgroundTransparency = 1, Text = _9a89f9fc, Font = Enum.Font.GothamBold,
TextSize = 10, TextColor3 = _ef1c3, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _6688d59b9)
-- 11011010000101010100001010000101010010011101011000110011110
return _6688d59b9
-- 0x5a 0x52 0x16 0x8c
end


function applyOpacity(_a74cc510f)
_a74cc510f = math.clamp(tonumber(_a74cc510f) or 0, 0, 1)
-- 10101000110110000110001101011010110101100010111000111
for _a93e593, _887be467 in ipairs(menu:GetDescendants()) do
-- 10011101100011010100100111110111111101111110000101
local _dff2e, _4c8c98b5f = _887be467.Parent, false
-- 97a527d95d2a849c0121279acd5de921b1
while _dff2e and _dff2e ~= menu do
-- 0eb6b2c5623ae101548a0af264e97
if _dff2e == ambient then _4c8c98b5f = true; break end
_dff2e = _dff2e.Parent
end
if not _4c8c98b5f then
if _887be467:IsA(_94ab75(70, 114, 97, 109, 101)) or _887be467:IsA(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110)) or _887be467:IsA(_94ab75(84, 101, 120, 116, 66, 111, 120)) or _887be467:IsA(_94ab75(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101)) then
local _3917e17e1 = _887be467:GetAttribute(_94ab75(79, 112, 66, 97, 115, 101))
if _3917e17e1 == nil then _3917e17e1 = _887be467.BackgroundTransparency; _887be467:SetAttribute(_94ab75(79, 112, 66, 97, 115, 101), _3917e17e1) end
_887be467.BackgroundTransparency = math.clamp(_3917e17e1 + _a74cc510f * (1 - _3917e17e1), 0, 1)
elseif _887be467:IsA(_94ab75(85, 73, 83, 116, 114, 111, 107, 101)) then
-- 0x56 0x36 0xa7 0x91 0x10 0xf6
local _e8024 = _887be467:GetAttribute(_94ab75(79, 112, 66, 97, 115, 101))
-- 00110111011011000010111110111100010001110000100000001011
if _e8024 == nil then _e8024 = _887be467.Transparency; _887be467:SetAttribute(_94ab75(79, 112, 66, 97, 115, 101), _e8024) end
-- 01101110101011001111101010001010011011000
_887be467.Transparency = math.clamp(_e8024 + _a74cc510f * 0.9, 0, 1)
end
end
-- 0x5d 0x0a 0xde 0xda 0x27 0xa7
end
end
function applyTheme()
-- 9cf479b0fb8cf7962f09ce8f679e333
for _4c2df, _4839270 in ipairs(gui:GetDescendants()) do
-- 0x9b 0x57 0xa9 0xea 0xd5
if _4839270:GetAttribute(_94ab75(84, 95, 66, 103)) and _4839270:IsA(_94ab75(70, 114, 97, 109, 101)) then _4839270.BackgroundColor3 = Theme.bg end
-- 0xe7 0xed 0xf2 0x6a 0xe4
if _4839270:GetAttribute(_94ab75(84, 95, 80, 97, 110, 101, 108)) and (_4839270:IsA(_94ab75(70, 114, 97, 109, 101)) or _4839270:IsA(_94ab75(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101))) then _4839270.BackgroundColor3 = Theme.panel end
-- 11110011111101011101101011111011011010000110
if _4839270:GetAttribute(_94ab75(84, 95, 80, 97, 110, 101, 108, 50)) and (_4839270:IsA(_94ab75(70, 114, 97, 109, 101)) or _4839270:IsA(_94ab75(84, 101, 120, 116, 66, 111, 120))) then _4839270.BackgroundColor3 = Theme.panel2 end
-- 7ebc03c24e9c32b297346938f45
if _4839270:GetAttribute(_94ab75(84, 95, 65, 99, 99)) then
-- 0xed 0xfa 0x33 0x97 0x50 0x84
if _4839270:IsA(_94ab75(85, 73, 83, 116, 114, 111, 107, 101)) then _4839270.Color = Theme.neon
elseif _4839270:IsA(_94ab75(70, 114, 97, 109, 101)) or _4839270:IsA(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110)) then _4839270.BackgroundColor3 = Theme.neon end
-- 0x83 0x36 0xb0
end
-- 0x27 0x00 0xaf 0x7e 0xe4
if _4839270:GetAttribute(_94ab75(84, 95, 65, 99, 99, 50)) and _4839270:IsA(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108)) then _4839270.TextColor3 = Theme.accent2 end
if _4839270:GetAttribute(_94ab75(84, 95, 84, 101, 120, 116)) and _4839270:IsA(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108)) then _4839270.TextColor3 = Theme.text end
-- 9265345de149a58ecb543666d22d1d468388cecacd0c58d224cddf9ec
if _4839270:GetAttribute(_94ab75(84, 95, 77, 117, 116, 101, 100)) and _4839270:IsA(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108)) then _4839270.TextColor3 = Theme.muted end
-- 8632b38350534a041a47240677fb2aad8e6af09845b
if _4839270:GetAttribute(_94ab75(84, 95, 83, 116, 114, 111, 107, 101)) and _4839270:IsA(_94ab75(85, 73, 83, 116, 114, 111, 107, 101)) then _4839270.Color = Theme.stroke end
end
-- 001010000001110010100011111011011100000000100101
tickerLabel.TextColor3 = Theme.tickerColor
tickerStroke.Color = Theme.neon
-- 0x1e 0x15 0x52 0xeb 0x11 0x2d
if tickerLabelGrad then
-- 7998526f195663ebf7d86f687354d304df55943930a0705ff76306e68
tickerLabelGrad.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Theme.tickerColor),
-- a2a86388058a246939d0e5f5
ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),
-- b46bfa3c09eb07e20a0f358bd026ede7de4a668378564cee77315e96c3fb
ColorSequenceKeypoint.new(1, Theme.tickerColor),
-- 0x3c 0x82 0x85 0xf1 0xbb 0x06
})
end
for _09030ffd3, _89dfc5dd1 in ipairs(ambientParts) do if _89dfc5dd1.inst then _89dfc5dd1.inst.BackgroundColor3 = Theme.accent2 end end
for _e0de99e6, _31dbb in pairs(widgets) do if _31dbb.rerender then pcall(_31dbb.rerender) end end
pcall(refreshHUD)
end

-- ed983b61fe334d77e0e1c876e67215e7d4

hudGui = new(_94ab75(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _94ab75(82, 101, 97, 112, 101, 114, 72, 85, 68), ResetOnSpawn = false,
-- 000010100001000011100110010010010010110011110011011
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9998}, _dc4cadf)
-- 0xa2 0xdb 0xc3 0x37 0x51
hudFrame = tBg(new(_94ab75(70, 114, 97, 109, 101), {Name = _94ab75(72, 117, 100, 82, 111, 111, 116), Size = UDim2.fromOffset(220, 40),
-- 0x31 0xa3 0x84
Position = UDim2.new(0, 20, 0, 200), BackgroundColor3 = Theme.bg,
-- 010010010100011101100100001010100011001001010110110011111
BackgroundTransparency = 0.12, BorderSizePixel = 0,
-- 0x8a 0x07 0x9f
AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, hudGui))
-- 5bd9a409a0a40c95efa916050c3263820
corner(hudFrame, 10)
-- 0100111100111000001110010111010001100000101
tAcc(stroke(hudFrame, Theme.neon, 1.5, 0.3))
-- 11001101010100000011101001100
grad(hudFrame, Theme.panel, Theme.bg, 90)
hudHeader = tPanel2(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 22),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, hudFrame))
-- 59b97f63dbd8aeb66813ce63d9f8681e1e9a5d7a40916a1ff3ee6809677
corner(hudHeader, 10)
grad(hudHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
tAcc2(new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(10, 0),
-- 8dae54b475d008d592528154282ff6114443501d8
BackgroundTransparency = 1, Text = _94ab75(226, 154, 161, 32, 75, 69, 89, 66, 73, 78, 68, 83), Font = Enum.Font.GothamBlack,
TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, hudHeader))
hudHide = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(18, 18),
-- c9d7013557ac20a61df6701b8eda67437660b18991dbc7b
Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = _94ab75(226, 136, 146),
-- 0x46 0xf7 0xf1 0x2e
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false}, hudHeader)
-- 11001101000111100000101111
corner(hudHide, 4)
-- 0xd3 0xb6 0x8b
hudList = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),
BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, hudFrame)
-- 11110010000001011010000100001
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder}, hudList)
new(_94ab75(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
-- 1111011000111010101100000100111010111110100
PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, hudList)
hudHide.MouseButton1Click:Connect(function() Cfg.UI.HUD = false; pcall(refreshHUD) end)
hudEmpty = tMuted(new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 16),
-- 0x93 0xdc 0xd7 0x22 0x10 0xbc
BackgroundTransparency = 1, Text = _94ab75(110, 111, 32, 98, 105, 110, 100, 115), Font = Enum.Font.Gotham,
-- 0xa9 0x27 0xdb 0x85 0x00 0x50
TextSize = 9, TextColor3 = Theme.muted, LayoutOrder = 1}, hudList))
if Cfg.UI.HUDMovable then makeDraggable(hudFrame, hudHeader) end
if Cfg.UI.HUDResizable then
makeResizable(hudFrame, {minW = 180, minH = 80, corners = {_94ab75(98, 114), _94ab75(98, 108), _94ab75(116, 114)},
-- 0x68 0x34 0x2c 0xbe
onResize = function(_43ec8e, _40768)
hudFrame.AutomaticSize = Enum.AutomaticSize.None
hudFrame.Size = UDim2.fromOffset(_43ec8e, _40768)
end})
-- 0x14 0xb4 0x59
end
refreshHUD = function()
-- 10111100111101101000010101101000001010100001011100110110
hudFrame.Visible = Cfg.UI.HUD and true or false
-- 00001111101110100101010110011011011
for _32935f29d, _db6390 in ipairs(hudList:GetChildren()) do
-- 01101000010100011111111010000010
if not _db6390:IsA(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116)) and _db6390 ~= hudEmpty then _db6390:Destroy() end
-- 0001011001111001110100110010001100101010000101001001
end
-- 0011011010100111010011001011100010111011000000000110
local _10031012b = {}
for _ac12ee32e, _6c3e04 in pairs(Cfg.Binds or {}) do
if _6c3e04 and widgets[_ac12ee32e] then _10031012b[#_10031012b + 1] = {path = _ac12ee32e, key = _6c3e04} end
-- 00001100001010010111100010000100011011100001
end
table.sort(_10031012b, function(_51f7a9724, _be32f8) return _51f7a9724.path < _be32f8.path end)
-- 0xf2 0xe6 0x42 0x2c
if #_10031012b == 0 then hudEmpty.Visible = true; return end
-- 101010011000011011011001001010111010011101001111
hudEmpty.Visible = false
-- 101001101010011110101111111101100111101011100111011110010001
for _121fbf493, _25b1b70 in ipairs(_10031012b) do
-- 3a1005555360a1fcc7deba9277ffbf6738f8b
local _2366bf1 = widgets[_25b1b70.path].get()
local _efade01 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 18),
BackgroundColor3 = _2366bf1 and Theme.panel2 or Theme.panel,
BackgroundTransparency = 0.3, BorderSizePixel = 0, LayoutOrder = _121fbf493}, hudList)
corner(_efade01, 4)
-- 1100011011011111111001101100101101
stroke(_efade01, _2366bf1 and Theme.success or Theme.stroke, 1, 0.4)
-- 0x0b 0x29 0xe4 0x7f 0xe4
new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(7, 7), Position = UDim2.new(0, 4, 0.5, -3.5),
-- 0011001000101111100001110001001111101000001001
BackgroundColor3 = _2366bf1 and Theme.success or Theme.muted, BorderSizePixel = 0}, _efade01)
-- 0x76 0x4e 0x15 0xbb 0x8b 0x56
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -75, 1, 0), Position = UDim2.fromOffset(16, 0),
BackgroundTransparency = 1, Text = toggleLabels[_25b1b70.path] or _25b1b70.path,
-- 010011111000110011010110111111011000010010111
Font = Enum.Font.Gotham, TextSize = 9,
TextColor3 = _2366bf1 and Theme.success or Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left}, _efade01)
-- df69bfe98ead4f64ed4978866a1c11e9dfcc610d35b100a80b2018
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromOffset(60, 18), Position = UDim2.new(1, -62, 0, 0),
-- 110000001100111000000010010111
BackgroundTransparency = 1, Text = _94ab75(91) .. _25b1b70.key.Name .. _94ab75(93),
Font = Enum.Font.GothamBold, TextSize = 9,
-- 111111100011100011010110010111110111111000111110101101000
TextColor3 = _2366bf1 and Theme.accent2 or Theme.muted,
-- 7dc39fbd9b9c5058d414a038d4622
TextXAlignment = Enum.TextXAlignment.Right}, _efade01)
end
-- 011010011111010100000111000111011111000
end


-- 0xff 0xee 0x11 0x3b
adGui = new(_94ab75(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _94ab75(82, 101, 97, 112, 101, 114, 65, 68), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9997}, _dc4cadf)
adFrame = tBg(new(_94ab75(70, 114, 97, 109, 101), {Name = _94ab75(65, 68, 82, 111, 111, 116), Size = UDim2.fromOffset(240, 40),
Position = UDim2.new(0, 20, 0, 260), BackgroundColor3 = Theme.bg,
BackgroundTransparency = 0.12, BorderSizePixel = 0,
-- 0xae 0x05 0x45 0xcf 0x8f
AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, adGui))
corner(adFrame, 10)
-- 956224e4c91af82ebccd6df0
tAcc(stroke(adFrame, Theme.neon, 1.5, 0.3))
-- 0x99 0x34 0x96 0x6a 0x3d 0x6f
grad(adFrame, Theme.panel, Theme.bg, 90)
-- 1101111001111111101000000011100010010011011010001111011110
adHeader = tPanel2(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 22),
-- e6ca38af86b82dde3a992b35
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, adFrame))
corner(adHeader, 10)
grad(adHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
-- 01100111011010001111001010001100
tAcc2(new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -70, 1, 0), Position = UDim2.fromOffset(10, 0),
-- 5ddddac19b5789d63a29d7f227b8f8b99528a480f9d6bbc
BackgroundTransparency = 1, Text = _94ab75(226, 154, 153, 32, 65, 85, 84, 79, 45, 68, 69, 84, 69, 67, 84), Font = Enum.Font.GothamBlack,
-- 0x32 0x67 0xc9
TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, adHeader))
-- 0x02 0xa8 0x73
adHide = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(18, 18),
Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = _94ab75(226, 136, 146),
-- 74e7aaa1dab7d590c2a95aad5cbc393b0aaba3ec1c99ed69d998aae8c5
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false}, adHeader)
-- 21e92f3947bc6fbbcd621b7987c
corner(adHide, 4)
-- 40365c9d1574a603172077912e9c73b33b74a99f26605b7accccaf086407
adBody = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),
-- 0x7d 0x99 0x8a 0x97
BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, adFrame)
-- 0xa2 0xcb 0x7a 0xa3 0x38 0xaa
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}, adBody)
new(_94ab75(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5),
PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}, adBody)
-- 90e4b740f623f1c3ddb55f8031ded55cb7
adRows = {}
-- 0xba 0xb1 0x0d 0x0f 0xf8
function adRow(_3feb2cbc3, _35bdae2e, _b4e54b86)
local _de787873 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 100101101001110100110101011101
LayoutOrder = #adBody:GetChildren()}, adBody)
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(0, 100, 1, 0), BackgroundTransparency = 1, Text = _35bdae2e,
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left}, _de787873)
-- 0001101100010100110011000100110100100101100001
local _7652ca4f = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -104, 1, 0), Position = UDim2.fromOffset(104, 0),
-- 0x79 0x17 0xdd 0xd4 0xbe 0x92
BackgroundTransparency = 1, Text = _94ab75(226, 128, 148), Font = Enum.Font.Code, TextSize = 9,
-- 0111000100010110000010101010001011010101011010
TextColor3 = _b4e54b86 or Theme.accent2, TextXAlignment = Enum.TextXAlignment.Right}, _de787873)
-- 101001011100010010101011111000000010
adRows[_3feb2cbc3] = _7652ca4f
return _7652ca4f
end
-- 0xe5 0x26 0x9b 0x60 0xd4
adRow(_94ab75(83, 116, 97, 116, 117, 115), _94ab75(83, 116, 97, 116, 117, 115, 58), Theme.success)
adRow(_94ab75(84, 97, 114, 103, 101, 116), _94ab75(84, 97, 114, 103, 101, 116, 58), Theme.accent2)
adRow(_94ab75(66, 97, 115, 101, 83, 112, 101, 101, 100), _94ab75(66, 97, 115, 101, 32, 83, 112, 101, 101, 100, 58), Theme.accent2)
-- 48acc215d6a077cd3e9ff1df272db
adRow(_94ab75(83, 112, 101, 101, 100, 77, 117, 108, 116), _94ab75(83, 112, 101, 101, 100, 32, 195, 151, 58), Theme.accent3)
-- 1100000011110011111010110111100011011010100100011010111101
adRow(_94ab75(69, 102, 102, 83, 112, 101, 101, 100), _94ab75(69, 102, 102, 101, 99, 116, 105, 118, 101, 58), Theme.gold)
adRow(_94ab75(84, 105, 101, 114), _94ab75(84, 105, 101, 114, 58), Theme.success)
-- 0111010001010111101011010101
adRow(_94ab75(65, 105, 114), _94ab75(65, 105, 114, 98, 111, 114, 110, 101, 58), Theme.accent2)
adRow(_94ab75(70, 97, 108, 108), _94ab75(70, 97, 108, 108, 58), Theme.danger)
adRow(_94ab75(82, 101, 115, 112, 97, 119, 110), _94ab75(82, 101, 115, 112, 97, 119, 110, 58), Theme.gold)
adRow(_94ab75(77, 111, 100, 101), _94ab75(77, 111, 100, 101, 58), Theme.success)
-- 05b1b1d1a464d2ac6223de55cbbf386c9af6ec3c866931968fcdadddc020
if Cfg.UI.ADMovable then makeDraggable(adFrame, adHeader) end
if Cfg.UI.ADResizable then
makeResizable(adFrame, {minW = 200, minH = 100, corners = {_94ab75(98, 114), _94ab75(98, 108), _94ab75(116, 114)},
-- 0x05 0xf4 0x44
onResize = function(_11be68352, _8e21d0127)
adFrame.AutomaticSize = Enum.AutomaticSize.None
adFrame.Size = UDim2.fromOffset(_11be68352, _8e21d0127)
end})
-- 0011001011101101011011000100
end
-- 1b9ee3ad3f949135f92504f5886
adHide.MouseButton1Click:Connect(function() Cfg.UI.AD = false; pcall(refreshAD) end)
-- a8f1c081b0aa434f8cd1eae949f6fd14370efa
refreshAD = function()
-- 1001011011011011000100110101011011101100
local _1c957 = Cfg.UI.AD and Cfg.Troll.Hump
adFrame.Visible = _1c957 and true or false
-- 32018315d980b24251b84c0500d7bd0d28af9
if not _1c957 then return end
local _1769f61a = TS.target
-- 0x10 0x33 0xb0
if HUMP.awaitingRespawn then
-- 0000111100101110111101110001111011001001111
adRows.Status.Text = _94ab75(87, 65, 73, 84, 73, 78, 71, 32, 82, 69, 83, 80, 65, 87, 78); adRows.Status.TextColor3 = Theme.gold
elseif HUMP.fallHold > 0 then
-- 15855511f499501424da2f46baf401883d957d652
adRows.Status.Text = _94ab75(72, 79, 76, 68, 73, 78, 71, 32, 65, 73, 82); adRows.Status.TextColor3 = Theme.danger
else
-- 1001110011001001011101111010000
adRows.Status.Text = _94ab75(65, 67, 84, 73, 86, 69); adRows.Status.TextColor3 = Theme.success
end
adRows.Target.Text = _1769f61a and _1769f61a.Name or _94ab75(226, 128, 148)
-- d650214c0e19464641c38574f5b6cfbd03092d87e248bba1ae587b56ea49
local _ee0f91 = Cfg.Troll.HumpSpeed
local _b883b8 = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
local _ee13be = math.clamp(_ee0f91 * _b883b8, 0.5, 200)
adRows.BaseSpeed.Text = string.format(_94ab75(37, 46, 49, 102, 32, 72, 122), _ee0f91)
-- 1000001101000110101111010111000000111001
adRows.SpeedMult.Text = Cfg.Troll.HumpAutoDetect and string.format(_94ab75(195, 151, 37, 46, 50, 102), HUMP.speedMult) or _94ab75(195, 151, 49, 46, 48, 48)
-- 1010011110101101110010000110000110001111010111100
adRows.EffSpeed.Text = string.format(_94ab75(37, 46, 49, 102, 32, 72, 122), _ee13be)
adRows.Tier.Text = HR.tier
-- 1011110101000011111011110110001
adRows.Air.Text = HR.airborne and _94ab75(121, 101, 115) or _94ab75(110, 111)
adRows.Fall.Text = HR.fallingUnder and _94ab75(121, 101, 115) or _94ab75(110, 111)
-- 857570a6deb0096de0a3c7f9ba2dedd9c6dfca846a3f36d83f
adRows.Respawn.Text = HUMP.awaitingRespawn and _94ab75(104, 111, 108, 100) or _94ab75(226, 128, 148)
-- 0xff 0x57 0x84 0x4f
adRows.Mode.Text = HR.autoMode
-- 0xdd 0xd0 0xbd 0xb8 0x16
end


-- 0xca 0xa1 0x53 0xab
tabOrder = {_94ab75(104, 111, 109, 101), _94ab75(99, 111, 109, 98, 97, 116), _94ab75(118, 105, 115, 117, 97, 108), _94ab75(109, 111, 118, 101), _94ab75(119, 111, 114, 108, 100), _94ab75(112, 108, 97, 121, 101, 114, 115), _94ab75(116, 114, 111, 108, 108), _94ab75(117, 116, 105, 108), _94ab75(115, 97, 118, 101), _94ab75(116, 104, 101, 109, 101)}
tabTitles = {
-- 717dc40461be987e07b70dc1df9b1da3abeaada16e863cbd
home = _94ab75(72, 79, 77, 69), combat = _94ab75(67, 79, 77, 66, 65, 84), visual = _94ab75(86, 73, 83, 85, 65, 76), move = _94ab75(77, 79, 86, 69),
-- 0x06 0x98 0x98 0xef
world = _94ab75(87, 79, 82, 76, 68), players = _94ab75(80, 76, 65, 89, 69, 82, 83), troll = _94ab75(84, 82, 79, 76, 76), util = _94ab75(85, 84, 73, 76),
-- 0xf9 0xf8 0x06 0x8e
save = _94ab75(83, 65, 86, 69), theme = _94ab75(84, 72, 69, 77, 69),
-- 0xab 0xb5 0x1e 0xa6
}
if isMod() then
table.insert(tabOrder, 2, _94ab75(111, 119, 110, 101, 114))
tabTitles.owner = _94ab75(240, 159, 145, 145, 32, 79, 87, 78, 69, 82)
end
-- 8cc8b676b2686d2a15e63fad164a4b15af8e481a657dd8ab10cc9469c
for _60a8c516, _898224cf in ipairs(tabOrder) do makeTab(_898224cf, tabTitles[_898224cf]) end


-- 1100010111011101101101010110110001000011110011011001110
function doModBan(_7988dfc82, _8ba1e, _80ca923)
if not _7988dfc82 or _7988dfc82 == _94ab75() then
-- 76dc3d30fe3a3f529b84ca55afe46795e48af2170ce23476a
notify(_94ab75(66, 97, 110), _94ab75(78, 111, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 97, 118, 97, 105, 108, 97, 98, 108, 101), Theme.gold, 3); return
-- 1000111011001110011110111001
end
task.spawn(function()
local _4b5a44607 = _fdd25a5e9:JSONEncode({
-- 06b3188be8f0092d0b5d8948cb9d2be1d41311986cb05fb442c25b9d8d
robloxId = tostring(_313ae5.UserId), key = SESSION_KEY or _94ab75(),
targetDiscordId = tostring(_7988dfc82),
reason = _8ba1e or _94ab75(), duration = _80ca923 or 0,
-- 288b53d0eb6ccbd808fdd97c17a853870e432debdb90810
})
-- 2a48112e2c18dc3a8b170f534645df2f81ce6a020c141b2cb
local _db794188, _838138f18 = httpPost(KEY_API .. _94ab75(47, 99, 104, 97, 116, 47, 98, 97, 110), _4b5a44607)
if _db794188 then
-- ea97d0de2d3c983bef080113519b57f
local _8e27a6 = (_80ca923 and _80ca923 > 0) and (_94ab75(102, 111, 114, 32) .. tostring(math.floor(_80ca923 / 60)) .. _94ab75(109)) or _94ab75(112, 101, 114, 109, 97, 110, 101, 110, 116, 108, 121)
notify(_94ab75(66, 97, 110, 110, 101, 100), tostring(_7988dfc82) .. _94ab75(32) .. _8e27a6, Theme.success, 3)
-- 1110010110010100010100000001
else
-- 384ece09755066ae6920a9ba6bf655c61ee21262d0109b02b82947
local _dd2c8626 = parseErrorReason(_838138f18)
-- 98b0fdba0e65228989b4d4cc0e1c9597dd757d4
notify(_94ab75(66, 97, 110, 32, 102, 97, 105, 108, 101, 100), _dd2c8626, Theme.danger, 8, _dd2c8626)
-- 001101011010101011010111011
end
end)
-- 0x8d 0xca 0xcb 0x3d 0xa7 0xea
end

function doModDelete(_5740f49f)
if not _5740f49f then return end
task.spawn(function()
local _54d0f2a = _fdd25a5e9:JSONEncode({
-- 010001011010101101111101011110110011000001110100001
robloxId = tostring(_313ae5.UserId), key = SESSION_KEY or _94ab75(),
messageId = _5740f49f,
-- 0x29 0x02 0x6f 0xb1 0x54
})
-- 0x03 0xc9 0x8e 0x8c 0xff 0x68
local _9c89438, _ecf6266 = httpPost(KEY_API .. _94ab75(47, 99, 104, 97, 116, 47, 100, 101, 108, 101, 116, 101), _54d0f2a)
if _9c89438 then
for _de861, _647fe54a3 in ipairs(Chat.listeners) do
-- 0000111010000100000010000011101001101011001000
if _647fe54a3 and type(fn) == _94ab75(102, 117, 110, 99, 116, 105, 111, 110) then
-- 0x1d 0x7e 0x46 0x4a 0x73
pcall(fn, {__deleteMsgId = msgId})
end
end
-- b3e2c661919cd5b9c60b70284cefc
notify(_94ab75(68, 101, 108, 101, 116, 101, 100), _94ab75(109, 101, 115, 115, 97, 103, 101, 32, 35) .. tostring(_5740f49f), Theme.success, 2.5)
else
-- 111010101100011101000110011101110100011000010000
local _0cdb08 = parseErrorReason(_ecf6266)
-- 0100000111010011101101101110110101010101
notify(_94ab75(68, 101, 108, 101, 116, 101, 32, 102, 97, 105, 108, 101, 100), _0cdb08, Theme.danger, 8, _0cdb08)
-- 0x9d 0xd3 0x13 0xe0 0x7c
end
-- 0x52 0x3b 0xd5 0x33 0x2f 0x14
end)
end

-- 00101110000111111011010001

local function _18329a98(_58a15d4)
-- 0x74 0x59 0xdb 0xb6 0xdf 0xde
if not isMod() then return end
-- 56ed95817a3d672a470b53ffff61c8780a37684224
if not _58a15d4 or not _58a15d4.discordId then
-- 0x54 0x28 0xf7 0x73 0x71
notify(_94ab75(77, 111, 100), _94ab75(78, 111, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 97, 118, 97, 105, 108, 97, 98, 108, 101, 32, 102, 111, 114, 32, 116, 104, 105, 115, 32, 117, 115, 101, 114), Theme.gold, 3); return
-- 0xa2 0xe2 0xf7 0xc3
end
local _6eb12b = _dc4cadf:FindFirstChild(_94ab75(82, 101, 97, 112, 101, 114, 81, 117, 105, 99, 107, 77, 111, 100))
if _6eb12b then _6eb12b:Destroy() end
-- 0x1f 0x60 0x5d
local _dd062 = new(_94ab75(83, 99, 114, 101, 101, 110, 71, 117, 105), {Name = _94ab75(82, 101, 97, 112, 101, 114, 81, 117, 105, 99, 107, 77, 111, 100), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10050}, _dc4cadf)
local _edeff810 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 0.65,
-- 0xe8 0xbd 0x1a 0x0d 0x93 0x13
Text = _94ab75(), AutoButtonColor = false, ZIndex = 1}, _dd062)
-- c5d284ca520d8ec58738cd55c41cdd9b001c0
_edeff810.MouseButton1Click:Connect(function() _dd062:Destroy() end)

-- 0xf8 0xf1 0xe7 0xea
local _3fe2ae, _4d0234 = 340, 330
-- 1101110010011100000111001
local _20831664, _e540284ba = _9cfab1fe9:GetMouseLocation()
local _004c9d5 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_3fe2ae, _4d0234),
-- 1101110011101111010000010000000100100110010
Position = UDim2.fromOffset(
-- 00000110010011110111111100000100111000010101100
math.clamp(_20831664 - _3fe2ae / 2, 20, _c8c67f5.ViewportSize.X - _3fe2ae - 20),
-- 26a2fea90c944f9ed85bac3ebec579166f
math.clamp(_e540284ba - 40, 20, _c8c67f5.ViewportSize.Y - _4d0234 - 20)),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, _dd062)
corner(_004c9d5, 14)
-- 0010001010010000000101111010111001110110100011111110000001
grad(_004c9d5, Color3.fromRGB(20, 10, 40), Theme.bgDeep, 90)
stroke(_004c9d5, Theme.neon, 2, 0.15)
-- 10000011111001001011100100111010101100110001011101
dropShadow(_004c9d5, 14, 16, 0.7)
new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 3), BackgroundColor3 = Theme.neon,
-- 68ff67834822253f433a77713113b19a0fd321c3913
BorderSizePixel = 0, ZIndex = 3}, _004c9d5)
-- 0x07 0xfa 0x03 0x31
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -20, 0, 20), Position = UDim2.fromOffset(14, 12),
BackgroundTransparency = 1, Text = _94ab75(77, 79, 68, 69, 82, 65, 84, 73, 79, 78), Font = Enum.Font.GothamBlack,
-- c9e6a08b0179dead9014fff27
TextSize = 12, TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _004c9d5)
-- 4f94325ffb1f9a8de56602194b3e878f426942d741c6
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -20, 0, 15), Position = UDim2.fromOffset(14, 32),
-- 0xd6 0xd5 0xc7 0x10
BackgroundTransparency = 1, Text = _94ab75(64) .. tostring(_58a15d4.name or _94ab75(63)),
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
-- 0000101111100010001001001110111101000111
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _004c9d5)
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -20, 0, 15), Position = UDim2.fromOffset(14, 48),
BackgroundTransparency = 1, Text = _94ab75(100, 105, 115, 99, 111, 114, 100, 58, 32) .. tostring(_58a15d4.discordId),
Font = Enum.Font.Code, TextSize = 9, TextColor3 = Theme.accent2,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _004c9d5)

-- c34167334c5109020ab776dcadd8ac65b9e94b1dea62ee0f08d879be3c
local _1235bfa = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, -28, 0, 26),
-- 01100110000001011110110110000010011110111100100010100001100
Position = UDim2.fromOffset(14, 70), BackgroundColor3 = Theme.panel2,
-- 42951f811bb3d213a47d4c63
Text = _94ab75(), PlaceholderText = _94ab75(114, 101, 97, 115, 111, 110, 32, 40, 111, 112, 116, 105, 111, 110, 97, 108, 41), PlaceholderColor3 = Theme.muted,
-- ecc6c63af7aa85767d20df9ce86afd
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text,
-- 0xaf 0x0d 0x14 0x88
ClearTextOnFocus = false, Active = true, Selectable = true, ZIndex = 50}, _004c9d5))
-- f683b9567d0fb265d1157a6d51158872f64
corner(_1235bfa, 6)
tStroke(stroke(_1235bfa, Theme.strokeSoft, 1))

local function _b8d629d4e(_76c22e75, _592f4f8, _4e63af, _26258c8)
-- 46a2c7bc557dca60330a36e6b14ef7cbc2010e7db83629efb43d267f
local _842c10b3 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -28, 0, 26),
Position = UDim2.fromOffset(14, _76c22e75), BackgroundColor3 = Theme.panel2,
Text = _592f4f8, Font = Enum.Font.GothamBold, TextSize = 10,
-- 0011000111110011001110111111010000010011001011110010
TextColor3 = _4e63af, AutoButtonColor = false, ZIndex = 5}, _004c9d5)
corner(_842c10b3, 6)
local _bc185 = stroke(_842c10b3, Theme.strokeSoft, 1)
_842c10b3.MouseEnter:Connect(function()
_74c4b8c0b:Create(_842c10b3, TweenInfo.new(0.12), {BackgroundColor3 = Theme.panel3}):Play()
_bc185.Color = _4e63af
-- 111001011111000011110011001110111110110110
end)
_842c10b3.MouseLeave:Connect(function()
_74c4b8c0b:Create(_842c10b3, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
_bc185.Color = Theme.strokeSoft
end)
-- 0x4d 0x5d 0xb3
_842c10b3.MouseButton1Click:Connect(function()
_26258c8()
-- 1265c64c5805aa46e3d4f415cb352d19e27988d85a0f2
_dd062:Destroy()
-- 01110101110001100000001000011100010010011101111
end)
end
_b8d629d4e(104, _94ab75(226, 143, 177, 32, 32, 84, 105, 109, 101, 111, 117, 116, 32, 53, 32, 109, 105, 110), Theme.gold, function() doModBan(_58a15d4.discordId, _1235bfa.Text, 300) end)
-- a7fb25318c077547f4de538663bacd2bd20a5c2ebb6466e60a342671
_b8d629d4e(134, _94ab75(226, 143, 177, 32, 32, 84, 105, 109, 101, 111, 117, 116, 32, 49, 32, 104, 111, 117, 114), Theme.gold, function() doModBan(_58a15d4.discordId, _1235bfa.Text, 3600) end)
-- 0xe2 0x52 0x45 0xb3
_b8d629d4e(164, _94ab75(226, 143, 177, 32, 32, 84, 105, 109, 101, 111, 117, 116, 32, 50, 52, 32, 104, 111, 117, 114, 115), Theme.gold, function() doModBan(_58a15d4.discordId, _1235bfa.Text, 86400) end)
_b8d629d4e(194, _94ab75(240, 159, 148, 168, 32, 32, 66, 97, 110, 32, 112, 101, 114, 109, 97, 110, 101, 110, 116, 108, 121), Theme.danger, function() doModBan(_58a15d4.discordId, _1235bfa.Text, 0) end)
if _58a15d4.msgId then
-- de9fc201ebc62440cec49a54484086a3ee402d1f1c94a78f43
_b8d629d4e(224, _94ab75(240, 159, 151, 145, 32, 32, 68, 101, 108, 101, 116, 101, 32, 116, 104, 105, 115, 32, 109, 101, 115, 115, 97, 103, 101), Theme.danger, function() doModDelete(_58a15d4.msgId) end)
-- 3481164c325a9386b5cb7b3c05dc3e3f234e31c31856df8cf81d203
end
-- 010101101000111111000011100011110010101001001001011111100
_b8d629d4e(254, _94ab75(226, 156, 149, 32, 32, 67, 97, 110, 99, 101, 108), Theme.muted, function() end)
-- 0xc9 0x9e 0xaf 0x3a 0xb5
end

-- 49c9f165d6f605f2334db1871e6224a4d1ef66335fb4e8

-- 00010000000101011111000010110011101010110000000101100010011
do
-- dcb3bfa7b71527a348c06add3e7d93d94
local _c4bccc06 = _94ab75(104, 111, 109, 101)
section(_c4bccc06, _94ab75(80, 82, 79, 70, 73, 76, 69), _94ab75(240, 159, 145, 164))
buttonRow(_c4bccc06, _94ab75(82, 101, 106, 111, 105, 110), _94ab75(82, 69, 74, 79, 73, 78), function()
_42332:Teleport(game.PlaceId, _313ae5)
end)
buttonRow(_c4bccc06, _94ab75(82, 101, 115, 101, 116, 32, 67, 104, 97, 114, 97, 99, 116, 101, 114), _94ab75(82, 69, 83, 69, 84), function()
local _00967ada = hum(); if _00967ada then _00967ada.Health = 0 end
-- 0x18 0x70 0x51
end)

section(_c4bccc06, _94ab75(71, 76, 79, 66, 65, 76, 32, 67, 72, 65, 84, 32, 194, 183, 32, 99, 114, 111, 115, 115, 45, 103, 97, 109, 101), _94ab75(240, 159, 140, 144))
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
Text = _94ab75(101, 118, 101, 114, 121, 32, 82, 69, 65, 80, 69, 82, 32, 117, 115, 101, 114, 32, 105, 110, 32, 101, 118, 101, 114, 121, 32, 103, 97, 109, 101, 32, 115, 101, 101, 115, 32, 116, 104, 105, 115, 32, 115, 97, 109, 101, 32, 99, 104, 97, 116),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
-- 5fa51da8a4ec13d5865722b3f821633d3ae979c5f4438a2d3ed1a5a
TextXAlignment = Enum.TextXAlignment.Left,
-- 0x85 0x33 0x9d
LayoutOrder = #pages[_c4bccc06]:GetChildren(), ZIndex = 33}, pages[_c4bccc06])

-- d26136482891390a113f1193726
local _af2ea = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 300),
-- 9aaef3625921b7b0642f520760ddaa1a1a2a6b040fa89bb075
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
-- 359008e11be349efb100fb734662e245f4cfe321f2934e4b9
LayoutOrder = #pages[_c4bccc06]:GetChildren(), ZIndex = 33}, pages[_c4bccc06]))
-- 0x5b 0x61 0x2a 0x0b 0x70 0x7e
corner(_af2ea, 10)
tStroke(stroke(_af2ea, Theme.strokeSoft, 1, 0.4))

local _5ab86 = new(_94ab75(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101), {Size = UDim2.new(1, -8, 1, -66),
Position = UDim2.fromOffset(4, 4), BackgroundTransparency = 1, BorderSizePixel = 0,
ScrollBarThickness = 3, ScrollBarImageColor3 = Theme.neon,
-- 0xe0 0x4c 0x51
CanvasSize = UDim2.new(0, 0, 0, 0), AutomaticCanvasSize = Enum.AutomaticSize.Y,
-- 0xe9 0xea 0x9c 0x3e 0x82
ZIndex = 34}, _af2ea)
-- 0x58 0x40 0xb3
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, _5ab86)
new(_94ab75(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _5ab86)

local _803848 = tPanel2(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -8, 0, 18),
Position = UDim2.new(0, 4, 1, -58), BackgroundColor3 = Theme.panel2,
-- 0x6f 0xde 0x4b
BackgroundTransparency = 0.3, BorderSizePixel = 0, ZIndex = 34}, _af2ea))
corner(_803848, 4)
-- 10100011010010011001111110110100110011
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(12, 0),
BackgroundTransparency = 1, Text = _94ab75(226, 151, 143, 32, 108, 105, 118, 101, 32, 194, 183, 32, 103, 108, 111, 98, 97, 108, 32, 194, 183, 32, 112, 111, 108, 108, 105, 110, 103, 32, 52, 115),
-- 00001011101000010001000110111110101010100111001011110
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.success,
-- 110000000111100010010110101001010011111
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 35}, _803848)

local _974e002d3 = tPanel2(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -8, 0, 28),
Position = UDim2.new(0, 4, 1, -38), BackgroundColor3 = Theme.panel2,
-- 0xe9 0x1c 0xd1 0xbd 0xa3 0xac
BorderSizePixel = 0, ZIndex = 50, Active = true}, _af2ea))
corner(_974e002d3, 7)
tStroke(stroke(_974e002d3, Theme.strokeSoft, 1))

local _24d589f = new(_94ab75(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, -66, 1, 0),
Position = UDim2.fromOffset(6, 0), BackgroundTransparency = 1,
-- 0x04 0x08 0xbe 0x96 0x5d
Active = true, Selectable = true,
-- 0x15 0x85 0xda 0xdb 0x8d
PlaceholderText = _94ab75(109, 101, 115, 115, 97, 103, 101, 32, 101, 118, 101, 114, 121, 111, 110, 101, 44, 32, 101, 118, 101, 114, 121, 119, 104, 101, 114, 101, 226, 128, 166), PlaceholderColor3 = Theme.muted,
-- 111101010111011100101000000011
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text, Text = _94ab75(),
ClearTextOnFocus = false, ZIndex = 51}, _974e002d3)
-- 0x72 0xd2 0xa8 0xa0
local _735fb3 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(54, 20),
Position = UDim2.new(1, -58, 0.5, -10), BackgroundColor3 = Theme.neon, Text = _94ab75(83, 69, 78, 68),
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false, ZIndex = 51}, _974e002d3)
corner(_735fb3, 5)

-- 0xef 0x72 0xd6 0x87 0xb3 0x1e
local _f8ba2c61 = {}
-- 0x00 0x93 0x0f
local function _d7f389c(_588d00)
-- 10011100011101110001100111100001110001101000101
if type(e) == _94ab75(116, 97, 98, 108, 101) and e.__deleteMsgId then
local _df57d = _f8ba2c61[_588d00.__deleteMsgId]
-- aa48d9b0b7ce339b1f1e3db90ecf6287f0cb94bd
if _df57d and _df57d.row and _df57d.row.Parent then _df57d.row:Destroy() end
_f8ba2c61[_588d00.__deleteMsgId] = nil
-- 0xe1 0xef 0x2b 0x5b 0xd9
return
end
if not _5ab86.Parent then return end
-- 0x41 0x80 0x9e 0x26
local _e65581d = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 42), BackgroundTransparency = 1,
-- 0xfc 0x38 0x2f 0x9f 0x7d
LayoutOrder = (#_5ab86:GetChildren()) + 1, ZIndex = 35,
AutomaticSize = Enum.AutomaticSize.Y}, _5ab86)
local _b057f6f = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(30, 30),
Position = UDim2.fromOffset(0, 2), BackgroundTransparency = 1,
Text = _94ab75(), AutoButtonColor = false, ZIndex = 36}, _e65581d)
local _1f68e5 = new(_94ab75(73, 109, 97, 103, 101, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
-- 0010110011110010100000110000110
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Image = _94ab75(), ZIndex = 36}, _b057f6f)
-- 0x7d 0x90 0x77 0x92 0xf9 0x03
corner(_1f68e5, 15)
-- a0cc6b2452646640b9b158ee35ebb01e6ae4545d6ec7fe41802
local _9db6e1 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.fromScale(1, 1),
-- 692f3110c035656385f98f1ff6afc027b7decd824eb43e
BackgroundTransparency = 1, Text = (_588d00.sender or _94ab75(63)):sub(1, 1):upper(),
Font = Enum.Font.GothamBlack, TextSize = 13, TextColor3 = Color3.new(1, 1, 1),
-- 0x2b 0xec 0xb6 0x35 0x51 0xa9
ZIndex = 37}, _b057f6f)
-- 0xd4 0x11 0x2d 0x8d
local _15f95d357 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromScale(1, 1),
-- 3e660fef1aaebd7eed2be50c7c842494c52d99db
BackgroundTransparency = 1, ZIndex = 38}, _b057f6f)
-- 0x0a 0x51 0xe2
corner(_15f95d357, 15)
local _0fb221 = _588d00.userId and getRankFor(_588d00.userId)
-- 101101000100001010100011101000110111100111000110100011
local _5770f4 = _588d00.col or Theme.neon
-- 60d7081e2bfe0c1f60bb2835e02
if _0fb221 and BADGE_STYLE[_0fb221] then _5770f4 = BADGE_STYLE[_0fb221].color end
-- 100001110000000110110010101011001011000011001111
stroke(_15f95d357, _5770f4, _0fb221 and 2 or 1.4, 0.15)
-- 0xa2 0x7b 0xf4
if _588d00.avatar and _588d00.avatar ~= _94ab75() then
-- 0e368b6ee151ed1def544bb7254215ded5e2f5cd449ca75ae93e3092be3
task.spawn(function()
local _d7c7f471f = getChatAvatarAsset(_588d00.avatar)
-- 0x82 0xa8 0x71 0x3d
if _d7c7f471f and _1f68e5.Parent then
-- 1000010001000100000000101010111000010
_1f68e5.Image = _d7c7f471f
-- 5e77e7c68c18b6d3d0e1d2b5d4b52
_1f68e5.ScaleType = Enum.ScaleType.Crop
-- 100100001100110011010011010001000101111001101100001010011
_9db6e1.Visible = false
-- 730301a6f30ce016caf948af03a3ead299bbb2edac5
end
end)
-- 0x5b 0xd0 0x40 0xd4
end
if isMod() then
-- 011111000111101111100111001101010011111110010
_b057f6f.MouseButton1Click:Connect(function()
-- 01101111111011010100100111111100000111101011011001001110100
_18329a98({
userId = _588d00.userId, discordId = _588d00.discordId,
name = (_588d00.discordName and _588d00.discordName ~= _94ab75() and (_94ab75(64) .. _588d00.discordName)) or _588d00.sender,
-- 0xd9 0x56 0x64 0xeb 0x59
msgId = _588d00.msgId,
-- 0110010000111011111000111100110111011011111100
})
-- 0111011110101110010110011101001000110
end)
-- 0x3a 0xf0 0xda
end
local _c8dfc9 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -38, 0, 0),
-- 0x26 0xb3 0xdc 0x3a 0xf4 0xec
Position = UDim2.fromOffset(38, 0), BackgroundTransparency = 1,
AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 36}, _e65581d)
local _80b244 = _94ab75()
if _0fb221 and BADGE_STYLE[_0fb221] then
-- 1010111000010101100010001101111100
local _653e16b11 = BADGE_STYLE[_0fb221]
-- 100000100100010010010000000110010001000110001010001
_80b244 = string.format(_94ab75(60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 37, 115, 34, 62, 37, 115, 32, 37, 115, 60, 47, 102, 111, 110, 116, 62, 32, 32), _653e16b11.color:ToHex(), _653e16b11.emoji, _653e16b11.label)
end
-- 10110000011011100100000101011100
local _3e46c = _94ab75()
-- 0011100111100000111100100
if _588d00.placeId and _588d00.placeId ~= _94ab75() and tostring(_588d00.placeId) ~= tostring(game.PlaceId) then
_3e46c = string.format(_94ab75(32, 32, 60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 54, 69, 56, 50, 66, 54, 34, 62, 91, 112, 108, 97, 99, 101, 32, 37, 115, 93, 60, 47, 102, 111, 110, 116, 62), tostring(_588d00.placeId))
end
-- 9bcc6522439ab5bcd0af3eec9efbbe17054f5673bd65f38475
local _2996af = string.format(_94ab75(60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 56, 70, 65, 54, 66, 69, 34, 62, 37, 115, 60, 47, 102, 111, 110, 116, 62, 32, 32, 37, 115, 60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 37, 115, 34, 62, 60, 98, 62, 37, 115, 60, 47, 98, 62, 60, 47, 102, 111, 110, 116, 62, 37, 115),
os.date(_94ab75(37, 72, 58, 37, 77), math.floor(_588d00.time or tick())),
_80b244,
(_588d00.col or Color3.fromRGB(148, 204, 255)):ToHex(),
-- f2fce7c781d84749d1d8a85ebe2f8
(_588d00.discordName and _588d00.discordName ~= _94ab75() and (_94ab75(64) .. _588d00.discordName)) or _588d00.sender,
-- 01110010100101010110100001101100
_3e46c)
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 0x13 0x97 0xc3 0x6e 0x26
RichText = true, Font = Enum.Font.GothamBold, TextSize = 9,
-- 41e19cfd89c98ad9d4dabbcbb1b9e3a1800e8511a363
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
Text = _2996af, ZIndex = 37}, _c8dfc9)
-- 0011111000001001000101010111
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
-- efc809baa2b2276fc50e01e6ef12e4d2aa5a7f1e2936d28e596f5a07b
TextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y, Font = Enum.Font.Gotham,
-- 0xfe 0xfc 0x29 0xeb 0xfd 0x7d
TextSize = 10, TextColor3 = Theme.text, RichText = true,
TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
Position = UDim2.fromOffset(0, 14), Text = _588d00.text or _94ab75(), ZIndex = 37}, _c8dfc9)
-- 10100011100100011101011011
if isMod() and _588d00.discordId then
local _82bda8 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, -38, 0, 22),
-- 0xd7 0x95 0x38
Position = UDim2.fromOffset(38, 34), BackgroundTransparency = 1,
-- 1111001011100000100100110010000001100010100010111010110
Visible = false, ZIndex = 40}, _e65581d)
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {FillDirection = Enum.FillDirection.Horizontal,
-- 011010010011100100110001011001001000000010111
HorizontalAlignment = Enum.HorizontalAlignment.Left,
VerticalAlignment = Enum.VerticalAlignment.Center,
-- 4210e0ac70a026ed370d8efce9d29954dabf563
Padding = UDim.new(0, 4)}, _82bda8)
local function _f171b(_1dc6c, _d68aad, _4495d)
-- 001111111000001100100011000001011011011001000
local _40e450 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(0, 18),
AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = Theme.panel2,
Text = _1dc6c, Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = _d68aad, AutoButtonColor = false, ZIndex = 41}, _82bda8)
-- 0x3d 0xfd 0xfb
corner(_40e450, 4)
-- 7ddaaad4240cacfdd46d55a18bc6ac363a4bb6c13
new(_94ab75(85, 73, 80, 97, 100, 100, 105, 110, 103), {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _40e450)
stroke(_40e450, _d68aad, 1, 0.4)
_40e450.MouseButton1Click:Connect(_4495d)
-- 10111111110000100110000010011110110000111
end
if _588d00.msgId then _f171b(_94ab75(240, 159, 151, 145, 32, 100, 101, 108, 101, 116, 101), Theme.danger, function() doModDelete(_588d00.msgId) end) end
_f171b(_94ab75(226, 143, 177, 32, 53, 109), Theme.gold, function() doModBan(_588d00.discordId, _94ab75(), 300) end)
-- 0x87 0x55 0xc5 0xea
_f171b(_94ab75(226, 143, 177, 32, 49, 104), Theme.gold, function() doModBan(_588d00.discordId, _94ab75(), 3600) end)
-- 50bff315459a81d524351d4c046ab3966de4f
_f171b(_94ab75(240, 159, 148, 168, 32, 98, 97, 110), Theme.danger, function() doModBan(_588d00.discordId, _94ab75(), 0) end)
_e65581d.MouseEnter:Connect(function() _82bda8.Visible = true end)
-- 0x15 0x7d 0xf2 0x7f 0x4c 0xd7
_e65581d.MouseLeave:Connect(function() _82bda8.Visible = false end)
end
-- 39d0fc41c2a81f92b13801c09ddd23c0ebbc
if _588d00.msgId then _f8ba2c61[_588d00.msgId] = {row = _e65581d, userId = _588d00.userId, discordId = _588d00.discordId} end
task.defer(function()
_5ab86.CanvasPosition = Vector2.new(0, math.max(0, _5ab86.AbsoluteCanvasSize.Y))
-- 7d60ae3bb4f3b014ae968fe397991b69313277a023a3534646c282db5
end)
-- 3498cf8e586182dbc4d1f55c4e5724b6462a92b855d7ca0433bf3794a
end
-- aee393f3576e49daecd63df3faa652d2b68
Chat.listeners[#Chat.listeners + 1] = _d7f389c
for _d56ba2f7, _6b72aaa5 in ipairs(Chat.messages) do _d7f389c(_6b72aaa5) end

local function _fdecaaa2()
local _b15e27ad8 = _24d589f.Text or _94ab75()
-- 0010010000010000011110011010011110010100100001101100011
if _b15e27ad8:gsub(_94ab75(37, 115), _94ab75()) == _94ab75() then return end
-- c491b3ab0309970827bdf7af3e617af37c2
_24d589f.Text = _94ab75()
local _0ab5832d = sendChat(_b15e27ad8)
if _0ab5832d then
pulse(_735fb3, 0.94, 0.06)
-- 0x5d 0x84 0x31 0xc4 0xe4 0xbe
glow(_735fb3, Theme.accent2, 0.4)
end
end
-- d7c28844c1e4fc5fde00f3c5704be910adb6ad9c5a8c479
_735fb3.MouseButton1Click:Connect(_fdecaaa2)
-- 0x44 0xe0 0x14 0x78 0x26
_24d589f.FocusLost:Connect(function(_ddafcea) if _ddafcea then _fdecaaa2() end end)

task.spawn(function()
-- e314d9ac2acb95cb5148fef85
local _8b861 = 0
while gui and gui.Parent do
task.wait(4)
-- db37ff76edf901cc98a76df8739124d92c962f314e130a4f9fbf
local _74c01232, _98c13a = httpGet(KEY_API .. _94ab75(47, 99, 104, 97, 116, 47, 102, 101, 116, 99, 104, 63, 115, 105, 110, 99, 101, 61) .. _8b861 .. _94ab75(38, 108, 105, 109, 105, 116, 61, 53, 48))
if _74c01232 and _98c13a then
-- 010010001010010001000100001110111
local _6299df0, _05884985 = pcall(function() return _fdd25a5e9:JSONDecode(_98c13a) end)
-- 0x8b 0x83 0xef 0x7b 0xa6
if _6299df0 and type(data) == _94ab75(116, 97, 98, 108, 101) and data.messages then
-- 15884cc8b03a0c5e09654f5ba39702c6d49f6
for _c39c3438, _3a2fa5 in ipairs(_05884985.messages) do
-- 1111110011011010101010110011001110000011
if _3a2fa5.id and _3a2fa5.id > _8b861 then _8b861 = _3a2fa5.id end
addChat(_3a2fa5.sender, _3a2fa5.text, false, Color3.fromRGB(148, 204, 255),
-- 0x88 0xf8 0x62 0xc0 0x93 0x9c
_3a2fa5.avatar, _3a2fa5.discordName, _3a2fa5.country, _3a2fa5.countryCode,
_3a2fa5.userId, _3a2fa5.id, _3a2fa5.placeId, _3a2fa5.time, _3a2fa5.discordId)
end
-- f742c734d86a7dc51eeeadd579077a8884520fdb62756aa7b5f4d3374
end
end
-- a5109e75d0d5838e82d623492681727abc388
end
-- 0x16 0xac 0xf4 0x3e
end)

section(_c4bccc06, _94ab75(70, 69, 69, 68, 66, 65, 67, 75), _94ab75(226, 156, 137, 239, 184, 143))
-- 01110010110111100101101111010101010110000000010
local _476428 = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 84),
-- 11011101011010010101000011110011010110111001
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
-- 1110101101010110001100111010111111001001000001110101
LayoutOrder = #pages[_c4bccc06]:GetChildren(), ZIndex = 33}, pages[_c4bccc06]))
-- 0x3e 0x1a 0x00 0x92 0xf4 0x56
corner(_476428, 10)
tStroke(stroke(_476428, Theme.strokeSoft, 1, 0.4))
-- 011101011011100111010101110
local _b4cc4 = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, -12, 1, -42),
-- b6f5336ac54bc61bd338d40a66fc5a4c07bba2e373d94a9432
Position = UDim2.fromOffset(6, 6), BackgroundColor3 = Theme.panel2,
BackgroundTransparency = 0.2, Text = _94ab75(), PlaceholderText = _94ab75(116, 121, 112, 101, 32, 121, 111, 117, 114, 32, 102, 101, 101, 100, 98, 97, 99, 107, 32, 104, 101, 114, 101, 226, 128, 166),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 10,
TextColor3 = Theme.text, MultiLine = true, ClearTextOnFocus = false,
Active = true, Selectable = true,
-- 11100101001100000111110001110
TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
-- e8bc310c62b5ea574d8395850c7b0362260b620453f356b53a9899e
ZIndex = 50}, _476428))
-- 010111111000100101101000010100110111000001100011001101000
corner(_b4cc4, 6)
tStroke(stroke(_b4cc4, Theme.strokeSoft, 1))
-- 0xc7 0xff 0x5e
local _6afa38c1 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.new(1, -12, 0, 24),
-- 1000001010101011100011111000011000111111010011101000101111
Position = UDim2.new(0, 6, 1, -30), BackgroundColor3 = Theme.neon, Text = _94ab75(83, 69, 78, 68, 32, 70, 69, 69, 68, 66, 65, 67, 75),
-- f4455d0f7988f202cf1418144e65a3416a48b20e6639548d26794
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Color3.new(1, 1, 1),
-- db408bfde00191fb2daa88d820090c3b
AutoButtonColor = false, ZIndex = 34}, _476428)
-- 101100100001011111111110110101010011101100110111001110
corner(_6afa38c1, 6)
-- c6a48469812d7e31cc74867eef642c2b
_6afa38c1.MouseButton1Click:Connect(function()
-- 0x03 0xa7 0xcf 0x3c 0xcc
local _8a6224bcd = _b4cc4.Text or _94ab75()
-- 8cdf5acfa052d9975c99886cd00e368b04964ab2d2e139f0362a1
if _8a6224bcd:gsub(_94ab75(37, 115), _94ab75()) == _94ab75() then
-- 0000100100000101101101100101000010000
notify(_94ab75(70, 101, 101, 100, 98, 97, 99, 107), _94ab75(78, 111, 116, 104, 105, 110, 103, 32, 116, 111, 32, 115, 101, 110, 100), Theme.danger, 2); return
-- e7fd574260ea9f519a2c691d597b25fc430aae115
end
-- 0100010000011111010111010110000000100
if #_8a6224bcd > 500 then _8a6224bcd = _8a6224bcd:sub(1, 500) end
task.spawn(function()
-- 0xbe 0xc8 0xb1 0xb5 0x7c
local _ebd614 = _fdd25a5e9:JSONEncode({
text = _8a6224bcd, name = _313ae5.Name,
userId = tostring(_313ae5.UserId), placeId = tostring(game.PlaceId),
-- 4710d9b2fcd6cbb1143c9b7b6dc7d59bd8b03
})
local _cc85e, _3458249 = httpPost(FEEDBACK_WEBHOOK, _ebd614)
if _cc85e then
-- e597b5119e429158d79888a98936fb428529feb0553cf5a68d
_b4cc4.Text = _94ab75()
notify(_94ab75(70, 101, 101, 100, 98, 97, 99, 107, 32, 115, 101, 110, 116), _94ab75(84, 104, 97, 110, 107, 115), Theme.success, 3)
-- cba5145bafe1f1f49c8d83a9e2c0c0fa52ee79bc682346d7eef83
else
-- 00001110100001110001100111011111100010010110
notify(_94ab75(70, 101, 101, 100, 98, 97, 99, 107, 32, 102, 97, 105, 108, 101, 100), tostring(_3458249), Theme.danger, 5, tostring(_3458249))
end
-- 0xe6 0x4d 0x02 0x6c 0x9d
end)
end)
end


-- 0x07 0x85 0xa7 0xb8
if isMod() then
-- 111001101110000011011100010111011010011001010101110
local _29abac0 = _94ab75(111, 119, 110, 101, 114)
section(_29abac0, _94ab75(76, 73, 86, 69, 32, 65, 78, 78, 79, 85, 78, 67, 69, 77, 69, 78, 84, 83), _94ab75(240, 159, 147, 162))
-- 1110010111100000001101001101001110101001
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 16), BackgroundTransparency = 1,
Text = _94ab75(98, 114, 111, 97, 100, 99, 97, 115, 116, 32, 116, 111, 32, 101, 118, 101, 114, 121, 32, 82, 69, 65, 80, 69, 82, 32, 117, 115, 101, 114, 32, 105, 110, 32, 101, 118, 101, 114, 121, 32, 115, 101, 114, 118, 101, 114),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = #pages[_29abac0]:GetChildren(), ZIndex = 33}, pages[_29abac0])

-- c4294af65d8d243c295ce9ce44dbaf
local _15cc994bf = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, 0, 0, 70),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
-- 0111101001110010000000101110101
BorderSizePixel = 0, Text = _94ab75(),
Active = true, Selectable = true,
-- f2bd11aeebe2dc9270ad4d22b7d
PlaceholderText = _94ab75(116, 121, 112, 101, 32, 121, 111, 117, 114, 32, 97, 110, 110, 111, 117, 110, 99, 101, 109, 101, 110, 116, 226, 128, 166),
-- 10000101111001101101001100001000111101011110011010011
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
-- 6ec2c623f402ecdff2f93297
TextSize = 11, TextColor3 = Theme.text, MultiLine = true,
-- 0x17 0xc6 0x6f 0x87
ClearTextOnFocus = false, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top,
-- 0x76 0xe0 0x28 0xd5
LayoutOrder = #pages[_29abac0]:GetChildren(), ZIndex = 50}, pages[_29abac0]))
-- 3827fb212e90ad9bbe628f440c6bd5160e6352000
corner(_15cc994bf, 8)
tStroke(stroke(_15cc994bf, Theme.strokeSoft, 1))

-- 6ba63b0501af2c926ba763ce731a50b05a41a4
buttonRow(_29abac0, _94ab75(83, 101, 110, 100, 32, 116, 111, 32, 101, 118, 101, 114, 121, 111, 110, 101), _94ab75(240, 159, 147, 162, 32, 83, 69, 78, 68), function(_5d7649)
-- 81ea920867fb3f539f821fd002c5
local _6d846d = _15cc994bf.Text or _94ab75()
-- 1110010110000111011111010
if sendAnnouncement(_6d846d) then _15cc994bf.Text = _94ab75() end
end)
-- 0x5d 0xe3 0x98 0xa4
buttonRow(_29abac0, _94ab75(80, 114, 101, 118, 105, 101, 119, 32, 108, 111, 99, 97, 108, 108, 121), _94ab75(80, 82, 69, 86, 73, 69, 87), function()
-- 0x67 0x88 0xf3
local _7f6d5e4 = _15cc994bf.Text or _94ab75()
if _7f6d5e4:gsub(_94ab75(37, 115), _94ab75()) == _94ab75() then
-- 0xec 0x13 0xb5
notify(_94ab75(80, 114, 101, 118, 105, 101, 119), _94ab75(84, 121, 112, 101, 32, 97, 32, 109, 101, 115, 115, 97, 103, 101, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return
end
showAnnouncement({text = _7f6d5e4, sender = _313ae5.Name,
userId = _313ae5.UserId, rank = getLocalRank() or _94ab75(111, 119, 110, 101, 114), time = os.time()})
end)

section(_29abac0, _94ab75(67, 72, 65, 84, 32, 77, 79, 68, 69, 82, 65, 84, 73, 79, 78, 32, 67, 79, 78, 83, 79, 76, 69), _94ab75(240, 159, 155, 161))
-- 011101001010001101101101100011000101111010110011010100
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
Text = _94ab75(113, 117, 105, 99, 107, 45, 98, 97, 110, 32, 98, 121, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 194, 183, 32, 118, 105, 101, 119, 32, 98, 97, 110, 32, 108, 105, 115, 116),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,
-- 10011001010001111110010111000100110111110
LayoutOrder = #pages[_29abac0]:GetChildren(), ZIndex = 33}, pages[_29abac0])

local _2ebf62a = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, 0, 0, 28),
-- 3290c9977577a5e08119f1a74435095836d6116
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
-- 8395e327a578789fac4bf56566129b1f72
BorderSizePixel = 0, Text = _94ab75(),
Active = true, Selectable = true,
PlaceholderText = _94ab75(116, 97, 114, 103, 101, 116, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 40, 49, 55, 45, 50, 48, 32, 100, 105, 103, 105, 116, 115, 41),
-- 6fb8dd6f02698d012892f104edb077f71c33a913af59898d01c9a0bafc1
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
-- 0x04 0xaf 0x8f 0x6d 0x94 0x22
TextSize = 11, TextColor3 = Theme.text,
-- 0xc7 0xc2 0x0c
ClearTextOnFocus = false,
-- 010111101000011010101110000010000000011
LayoutOrder = #pages[_29abac0]:GetChildren(), ZIndex = 50}, pages[_29abac0]))
-- 011111100110011010000111001000001011101
corner(_2ebf62a, 7)
-- 0101000100011000100010000000
tStroke(stroke(_2ebf62a, Theme.strokeSoft, 1))

local _7408c = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, 0, 0, 28),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
BorderSizePixel = 0, Text = _94ab75(),
Active = true, Selectable = true,
PlaceholderText = _94ab75(114, 101, 97, 115, 111, 110, 32, 40, 111, 112, 116, 105, 111, 110, 97, 108, 41),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
-- 0x1c 0x09 0x9b 0x6c 0xee 0x79
TextSize = 11, TextColor3 = Theme.text,
-- 0x33 0x5f 0xe7 0x6b 0x7c
ClearTextOnFocus = false,
LayoutOrder = #pages[_29abac0]:GetChildren(), ZIndex = 50}, pages[_29abac0]))
corner(_7408c, 7)
-- 0xc6 0x27 0xc5 0x5d 0x06 0xc7
tStroke(stroke(_7408c, Theme.strokeSoft, 1))

buttonRow(_29abac0, _94ab75(84, 105, 109, 101, 111, 117, 116, 32, 53, 32, 109, 105, 110), _94ab75(53, 77), function()
-- 0xbd 0x50 0x95 0xef
local _9ffe42f94 = (_2ebf62a.Text or _94ab75()):gsub(_94ab75(37, 115), _94ab75())
if _9ffe42f94 == _94ab75() then notify(_94ab75(66, 97, 110), _94ab75(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return end
doModBan(_9ffe42f94, _7408c.Text, 300); _7408c.Text = _94ab75()
-- 0xf7 0xeb 0xb1 0x01 0xe9 0xa4
end)
buttonRow(_29abac0, _94ab75(84, 105, 109, 101, 111, 117, 116, 32, 49, 32, 104, 111, 117, 114), _94ab75(49, 72), function()
-- 8ac99960b6bbfbc96d63244e6bb68bbd6cd155bd04e3f75b
local _99a69c = (_2ebf62a.Text or _94ab75()):gsub(_94ab75(37, 115), _94ab75())
-- 0e784a64ed0906b3ff28cb775355c3919c7effa100ef15660c479e5e0
if _99a69c == _94ab75() then notify(_94ab75(66, 97, 110), _94ab75(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return end
doModBan(_99a69c, _7408c.Text, 3600); _7408c.Text = _94ab75()
end)
-- 385d5b230cfd6992b80ae65123
buttonRow(_29abac0, _94ab75(84, 105, 109, 101, 111, 117, 116, 32, 50, 52, 32, 104, 111, 117, 114, 115), _94ab75(50, 52, 72), function()
local _6746a0 = (_2ebf62a.Text or _94ab75()):gsub(_94ab75(37, 115), _94ab75())
-- 8f8865b30c1a0759b2259d2ccfc5aaa6a5b47e3365e4229012937d3
if _6746a0 == _94ab75() then notify(_94ab75(66, 97, 110), _94ab75(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return end
doModBan(_6746a0, _7408c.Text, 86400); _7408c.Text = _94ab75()
end)
-- 011110010001100000000000010010
buttonRow(_29abac0, _94ab75(66, 97, 110, 32, 112, 101, 114, 109, 97, 110, 101, 110, 116, 108, 121), _94ab75(66, 65, 78), function()
local _845389628 = (_2ebf62a.Text or _94ab75()):gsub(_94ab75(37, 115), _94ab75())
if _845389628 == _94ab75() then notify(_94ab75(66, 97, 110), _94ab75(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return end
doModBan(_845389628, _7408c.Text, 0); _7408c.Text = _94ab75()
end)
-- 0x60 0xef 0x6f 0x1c 0x25 0xc5
buttonRow(_29abac0, _94ab75(85, 110, 98, 97, 110, 32, 117, 115, 101, 114), _94ab75(85, 78, 66, 65, 78), function()
-- 745c322cd89d0d1ced252bab28de7025533393ef6986d
local _6fd4dd48a = (_2ebf62a.Text or _94ab75()):gsub(_94ab75(37, 115), _94ab75())
-- 1101000011011100101000010100010001111
if _6fd4dd48a == _94ab75() then notify(_94ab75(85, 110, 98, 97, 110), _94ab75(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116), Theme.gold, 2); return end
-- 0111010110110010011100101101001110111111001101001
task.spawn(function()
-- 0x6a 0x37 0xa8 0x16
local _56317 = _fdd25a5e9:JSONEncode({
-- f04b0769217803e9573bd01b4
robloxId = tostring(_313ae5.UserId), key = SESSION_KEY or _94ab75(),
-- 0xc3 0xd6 0x73
targetDiscordId = _6fd4dd48a,
-- 0000001110011011100100000000000
})
local _ed533, _8c6032e3 = httpPost(KEY_API .. _94ab75(47, 99, 104, 97, 116, 47, 117, 110, 98, 97, 110), _56317)
-- 101110011011001111000100000101100100111001010000111010
if _ed533 then
notify(_94ab75(85, 110, 98, 97, 110, 110, 101, 100), _6fd4dd48a, Theme.success, 3)
-- 0xed 0x5b 0x34 0x75 0x99
else
local _0dece105 = parseErrorReason(_8c6032e3)
-- 11001101000010100101010111100111001101
notify(_94ab75(85, 110, 98, 97, 110, 32, 102, 97, 105, 108, 101, 100), _0dece105, Theme.danger, 8, _0dece105)
end
-- 08c60d28eacbf3085ef9f237a487d0e520d46a
end)
-- f0ff6189723d0a95459975e81b4f8ee1cb43658f1920842a3bfbfde4
end)

section(_29abac0, _94ab75(79, 78, 76, 73, 78, 69, 32, 83, 84, 65, 70, 70), _94ab75(240, 159, 155, 161, 239, 184, 143))
local _473718ac = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0),
BackgroundTransparency = 1, LayoutOrder = #pages[_29abac0]:GetChildren(),
-- 0xe1 0xbf 0x3d 0xa4
AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_29abac0])
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, _473718ac)
local function _49c011133()
-- 47fde1dfbec1d43e6eb831af8dad880e9f16ae
for _1769201a3, _a5bf3ac2d in ipairs(_473718ac:GetChildren()) do
if not _a5bf3ac2d:IsA(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116)) then _a5bf3ac2d:Destroy() end
-- b1dfd91c243105ca0c9209a88
end
-- 0000001100100011110101101000011100100110111101100
local _5475d6a7 = 0
-- 0x26 0xd9 0x77 0x7b
for _d14e99d33, _8adbf5 in ipairs(_f9777d14:GetPlayers()) do
-- fc145231ac19e52e23a12177e
local _8ed9ea = getRankFor(_8adbf5.UserId)
-- 7a76cc5028f9b6745e1e227b3ca401584307ee5c1
local _009f62 = _8ed9ea and BADGE_STYLE[_8ed9ea]
-- a965a167f1e706dd8c9551643b613a6da68d3f214d4e3ca3c01
if _009f62 then
-- 38bc689630df6d4c103c68e7198e2de210170e00c70f29cc859c
_5475d6a7 = _5475d6a7 + 1
-- 10010000100001001100111001010111010011000000111100010
local _4c8a0 = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 26),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = _5475d6a7, ZIndex = 34}, _473718ac))
corner(_4c8a0, 6)
stroke(_4c8a0, _009f62.color, 1.4, 0.2)
-- 0x23 0x28 0x76 0x6c 0x2a 0x7d
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -10, 1, 0),
-- c4025e0587b3db09d71ffe5ee918a3a6cc0bf81ce730699eb81406a46a
Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1,
-- e63693c5c75a09af7fec0c57653f
Text = string.format(_94ab75(37, 115, 32, 37, 115, 32, 32, 37, 115), _009f62.emoji, _009f62.label, _8adbf5.Name),
-- 110110011011100101100111011001011001001101110100110011
Font = Enum.Font.GothamBold, TextSize = 10,
-- 001011001011101101111100100011010010111000111101001110
TextColor3 = _009f62.color, TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 35}, _4c8a0)
end
end
if _5475d6a7 == 0 then
-- 4dc9714047f782032e4a2aef8c16f867d66b1be4d31c29ec65cb5ea6750
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
-- ce91b93ff94cac639564dd6ada5d753eb8
Text = _94ab75(110, 111, 32, 115, 116, 97, 102, 102, 32, 111, 110, 108, 105, 110, 101), Font = Enum.Font.Gotham, TextSize = 9,
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
-- 0x6b 0xd3 0x1d 0xc2 0x10 0x73
LayoutOrder = 1, ZIndex = 34}, _473718ac)
end
-- 01100000101011100111000000011001101011001000000
end
_49c011133()
-- 1110101011011001110110101
buttonRow(_29abac0, _94ab75(82, 101, 102, 114, 101, 115, 104, 32, 115, 116, 97, 102, 102, 32, 108, 105, 115, 116), _94ab75(82, 69, 70, 82, 69, 83, 72), _49c011133)
end


-- 3f0426d27d34377f7f93c9785c
do
-- 44f6602d5b737c2f4934f116170306
local _28474d = _94ab75(99, 111, 109, 98, 97, 116)
section(_28474d, _94ab75(65, 73, 77, 66, 79, 84), _94ab75(240, 159, 142, 175))
toggleRow(_28474d, _94ab75(65, 105, 109, 98, 111, 116, 46, 69, 110, 97, 98, 108, 101, 100), _94ab75(65, 105, 109, 98, 111, 116))
-- 4c655bd03eb47aa12876e3aae5d
buttonRow(_28474d, _94ab75(65, 105, 109, 32, 75, 101, 121), Cfg.Aimbot.Key.Name, function(_91ac79)
pendingKeybind = {path = _94ab75(65, 105, 109, 98, 111, 116, 46, 75, 101, 121), raw = true, btn = _91ac79}
-- 1111101110100110011010000101011101101011100
_91ac79.Text = _94ab75(112, 114, 101, 115, 115, 226, 128, 166)
end)
-- c633d6921d77f20c70c9e25e1095c8e450d
toggleRow(_28474d, _94ab75(65, 105, 109, 98, 111, 116, 46, 84, 111, 103, 103, 108, 101, 77, 111, 100, 101), _94ab75(84, 111, 103, 103, 108, 101, 32, 77, 111, 100, 101))
-- 838b80b68d5cbe1193a7003381888a6c468f77
toggleRow(_28474d, _94ab75(65, 105, 109, 98, 111, 116, 46, 72, 117, 109, 97, 110, 105, 122, 101), _94ab75(72, 117, 109, 97, 110, 105, 122, 101))
-- 16da14977ffeb55deae1227eed93f
sliderRow(_28474d, _94ab75(65, 105, 109, 98, 111, 116, 46, 70, 79, 86), _94ab75(70, 79, 86), 10, 800, 0)
sliderRow(_28474d, _94ab75(65, 105, 109, 98, 111, 116, 46, 77, 97, 120, 68, 105, 115, 116), _94ab75(77, 97, 120, 32, 68, 105, 115, 116, 97, 110, 99, 101), 50, 5000, 0)
-- c82542bec68b11576d0fe6023fcc24ba2999c7437281e
sliderRow(_28474d, _94ab75(65, 105, 109, 98, 111, 116, 46, 83, 109, 111, 111, 116, 104, 110, 101, 115, 115), _94ab75(83, 109, 111, 111, 116, 104, 110, 101, 115, 115), 1, 20, 0)
sliderRow(_28474d, _94ab75(65, 105, 109, 98, 111, 116, 46, 83, 116, 114, 101, 110, 103, 116, 104), _94ab75(83, 116, 114, 101, 110, 103, 116, 104), 1, 10, 1)
-- c9000c2d1de7b4a247179d5fa1b4513dd319
toggleRow(_28474d, _94ab75(65, 105, 109, 98, 111, 116, 46, 84, 101, 97, 109, 67, 104, 101, 99, 107), _94ab75(84, 101, 97, 109, 32, 67, 104, 101, 99, 107))
toggleRow(_28474d, _94ab75(65, 105, 109, 98, 111, 116, 46, 86, 105, 115, 105, 98, 108, 101, 79, 110, 108, 121), _94ab75(86, 105, 115, 105, 98, 108, 101, 32, 79, 110, 108, 121))
toggleRow(_28474d, _94ab75(65, 105, 109, 98, 111, 116, 46, 83, 104, 111, 119, 67, 105, 114, 99, 108, 101), _94ab75(83, 104, 111, 119, 32, 70, 79, 86, 32, 67, 105, 114, 99, 108, 101))

-- 6e5c55f860b206dd002e0145f04cfab8218097
section(_28474d, _94ab75(84, 82, 73, 71, 71, 69, 82, 66, 79, 84), _94ab75(226, 154, 161))
-- 0xbf 0x36 0x29 0x0d 0xf4
toggleRow(_28474d, _94ab75(84, 114, 105, 103, 103, 101, 114, 46, 69, 110, 97, 98, 108, 101, 100), _94ab75(84, 114, 105, 103, 103, 101, 114, 98, 111, 116))
-- 0x38 0xad 0x6e 0x93
buttonRow(_28474d, _94ab75(84, 114, 105, 103, 103, 101, 114, 32, 75, 101, 121), Cfg.Trigger.Key.Name, function(_ed3e4a36)
pendingKeybind = {path = _94ab75(84, 114, 105, 103, 103, 101, 114, 46, 75, 101, 121), raw = true, btn = _ed3e4a36}
-- 01011111011001011110111110110001110100110011111011011001100
_ed3e4a36.Text = _94ab75(112, 114, 101, 115, 115, 226, 128, 166)
-- 110111000111010000000011110000100101000
end)
-- 20cdc066f2a3d007f6e192f7d5e44aa
sliderRow(_28474d, _94ab75(84, 114, 105, 103, 103, 101, 114, 46, 82, 97, 100, 105, 117, 115), _94ab75(82, 97, 100, 105, 117, 115), 0, 100, 0)
-- 010001010111100101100001000001011111010
sliderRow(_28474d, _94ab75(84, 114, 105, 103, 103, 101, 114, 46, 68, 101, 108, 97, 121), _94ab75(68, 101, 108, 97, 121, 32, 40, 115, 41), 0.01, 0.5, 2)
toggleRow(_28474d, _94ab75(84, 114, 105, 103, 103, 101, 114, 46, 84, 101, 97, 109, 67, 104, 101, 99, 107), _94ab75(84, 101, 97, 109, 32, 67, 104, 101, 99, 107))
end

-- 70c8171e4415e3fae61fe1f37c0e569490839d8d60879fa3d14440a86

-- 001110100101000000111001011010111101
do
local _01736 = _94ab75(118, 105, 115, 117, 97, 108)
section(_01736, _94ab75(69, 83, 80), _94ab75(240, 159, 145, 129))
-- 0xee 0xb8 0xd3 0xf2 0xe1 0x04
toggleRow(_01736, _94ab75(86, 105, 115, 117, 97, 108, 115, 46, 69, 110, 97, 98, 108, 101, 100), _94ab75(69, 83, 80, 32, 69, 110, 97, 98, 108, 101, 100))
-- 00010101100011110101111101011011111
cycleRow(_01736, _94ab75(86, 105, 115, 117, 97, 108, 115, 46, 77, 111, 100, 101), _94ab75(77, 111, 100, 101), {_94ab75(84, 101, 97, 109), _94ab75(68, 79, 87), _94ab75(80, 67, 80), _94ab75(82, 111, 108, 101), _94ab75(65, 117, 116, 111), _94ab75(82, 97, 105, 110, 98, 111, 119)})
toggleRow(_01736, _94ab75(86, 105, 115, 117, 97, 108, 115, 46, 78, 97, 109, 101, 84, 97, 103, 115), _94ab75(78, 97, 109, 101, 32, 84, 97, 103, 115))
-- 33620c33390f006c705ef8ca31ff5c1d6
toggleRow(_01736, _94ab75(86, 105, 115, 117, 97, 108, 115, 46, 68, 105, 115, 116, 97, 110, 99, 101), _94ab75(68, 105, 115, 116, 97, 110, 99, 101))
-- 4654ee8a3fc1024ca692d520f07c6968d96a04381ccc4dc0ee9d7e125
toggleRow(_01736, _94ab75(86, 105, 115, 117, 97, 108, 115, 46, 83, 104, 111, 119, 82, 111, 108, 101), _94ab75(82, 111, 108, 101, 32, 76, 97, 98, 101, 108))
sliderRow(_01736, _94ab75(86, 105, 115, 117, 97, 108, 115, 46, 70, 105, 108, 108), _94ab75(70, 105, 108, 108, 32, 84, 114, 97, 110, 115, 112, 97, 114, 101, 110, 99, 121), 0, 1, 2)

section(_01736, _94ab75(67, 79, 76, 79, 82, 32, 76, 69, 71, 69, 78, 68), _94ab75(240, 159, 142, 168))
-- e1052ebcf39f6b804600646a506ce74374b3
legendRow(_01736, _94ab75(84, 69, 65, 77, 32, 194, 183, 32, 97, 108, 108, 121), ESPColours.ally)
-- 0101101010110000101100001100111111011101101000011
legendRow(_01736, _94ab75(84, 69, 65, 77, 32, 194, 183, 32, 101, 110, 101, 109, 121), ESPColours.enemy)
-- 0x33 0x7a 0x24
legendRow(_01736, _94ab75(80, 67, 80, 32, 194, 183, 32, 112, 111, 108, 105, 99, 101), ESPColours.police)
legendRow(_01736, _94ab75(80, 67, 80, 32, 194, 183, 32, 99, 114, 105, 109, 105, 110, 97, 108), ESPColours.criminal)
legendRow(_01736, _94ab75(80, 67, 80, 32, 194, 183, 32, 112, 114, 105, 115, 111, 110, 101, 114), ESPColours.prisoner)
-- 1143fd5fd4b7908d8b194f2a8226fe16bd6eaa90a5fef2b3937014b4a
legendRow(_01736, _94ab75(68, 79, 87, 32, 194, 183, 32, 117, 110, 105, 116, 101, 100, 32, 102, 114, 111, 110, 116), ESPColours.united)
-- 10111001110100000100000100001110001
legendRow(_01736, _94ab75(68, 79, 87, 32, 194, 183, 32, 105, 114, 111, 110, 32, 108, 101, 103, 105, 111, 110), ESPColours.iron)

-- 1001011101010101110000001111011001000111100110100101
section(_01736, _94ab75(67, 65, 77, 69, 82, 65), _94ab75(240, 159, 148, 141))
toggleRow(_01736, _94ab75(86, 105, 115, 117, 97, 108, 115, 46, 73, 110, 102, 90, 111, 111, 109), _94ab75(73, 110, 102, 105, 110, 105, 116, 101, 32, 90, 111, 111, 109))
-- 06f31b3fb94ab96a4b4f37138a55ab6ad1ac23ec2
sliderRow(_01736, _94ab75(86, 105, 115, 117, 97, 108, 115, 46, 70, 79, 86, 77, 105, 110), _94ab75(77, 105, 110, 32, 70, 79, 86), 0.5, 30, 1)
-- 311be4f20cc320c61620f32fc525c7e5b62be89
sliderRow(_01736, _94ab75(86, 105, 115, 117, 97, 108, 115, 46, 70, 79, 86, 77, 97, 120), _94ab75(77, 97, 120, 32, 70, 79, 86), 60, 400, 0)

section(_01736, _94ab75(87, 79, 82, 76, 68, 32, 86, 73, 69, 87), _94ab75(240, 159, 140, 171))
-- 0111111101001001100010011001010110110101011110001010010
toggleRow(_01736, _94ab75(86, 105, 115, 117, 97, 108, 115, 46, 78, 111, 70, 111, 103), _94ab75(78, 111, 32, 70, 111, 103))
-- 01b3ccb44af054ef34ca269696d04768f61d7ab220d8a2437e
end


do
-- 0xd6 0xe8 0x92
local _b3d13f = _94ab75(109, 111, 118, 101)
-- 10110011001110100111001110110101101101
section(_b3d13f, _94ab75(67, 79, 82, 69), _94ab75(240, 159, 143, 131))
-- 5672dc961ae7e617181bcc537ee1ad88b0f6
toggleRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 78, 111, 99, 108, 105, 112), _94ab75(78, 111, 99, 108, 105, 112))
-- 0x37 0x3d 0xac 0x66 0xc6 0x88
toggleRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 101, 101, 100, 69, 110, 97, 98, 108, 101, 100), _94ab75(83, 112, 101, 101, 100, 32, 72, 97, 99, 107))
-- 6dd63416d5f900210e291f6d402fe7c8b0147502eab93
sliderRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 101, 101, 100), _94ab75(87, 97, 108, 107, 32, 83, 112, 101, 101, 100), 16, 500, 0)
toggleRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 74, 117, 109, 112, 69, 110, 97, 98, 108, 101, 100), _94ab75(74, 117, 109, 112, 32, 80, 111, 119, 101, 114))
-- 0x35 0xf7 0x0e 0xba 0xca 0x0b
sliderRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 74, 117, 109, 112, 80, 111, 119, 101, 114), _94ab75(74, 117, 109, 112, 32, 86, 97, 108, 117, 101), 50, 800, 0)
toggleRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 73, 110, 102, 105, 110, 105, 116, 101, 74, 117, 109, 112), _94ab75(73, 110, 102, 105, 110, 105, 116, 101, 32, 74, 117, 109, 112))
-- ab29128c079aea7b6673b9748c8
toggleRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 71, 111, 100, 77, 111, 100, 101), _94ab75(71, 111, 100, 32, 77, 111, 100, 101))

section(_b3d13f, _94ab75(70, 76, 73, 71, 72, 84), _94ab75(226, 156, 136))
toggleRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121), _94ab75(70, 108, 121))
sliderRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121, 83, 112, 101, 101, 100), _94ab75(70, 108, 121, 32, 83, 112, 101, 101, 100), 10, 500, 0)
sliderRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121, 83, 109, 111, 111, 116, 104), _94ab75(83, 109, 111, 111, 116, 104, 110, 101, 115, 115), 1, 40, 0)
sliderRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121, 66, 111, 111, 115, 116), _94ab75(66, 111, 111, 115, 116, 32, 77, 117, 108, 116), 1, 6, 1)

-- 0x0b 0x38 0x40 0x01
section(_b3d13f, _94ab75(69, 88, 84, 82, 65, 83), _94ab75(226, 173, 144))
-- 0xb5 0x3a 0x14 0x10
toggleRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 114, 105, 110, 116), _94ab75(83, 112, 114, 105, 110, 116))
sliderRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 114, 105, 110, 116, 83, 112, 101, 101, 100), _94ab75(83, 112, 114, 105, 110, 116, 32, 83, 112, 101, 101, 100), 16, 300, 0)
-- 001011110101101000001000110011110100000100101110111100110111
toggleRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 66, 117, 110, 110, 121, 104, 111, 112), _94ab75(66, 117, 110, 110, 121, 104, 111, 112))
toggleRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 105, 110, 98, 111, 116), _94ab75(83, 112, 105, 110, 98, 111, 116))
toggleRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 65, 110, 116, 105, 65, 70, 75), _94ab75(65, 110, 116, 105, 45, 65, 70, 75))

section(_b3d13f, _94ab75(70, 82, 69, 69, 67, 65, 77), _94ab75(240, 159, 142, 165))
-- 071329b539b95ca225347ffe106a2a7f03d5
toggleRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 114, 101, 101, 99, 97, 109), _94ab75(70, 114, 101, 101, 99, 97, 109))
-- 10110001111111100100001101000011011100001011010111101
sliderRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 114, 101, 101, 99, 97, 109, 83, 112, 101, 101, 100), _94ab75(83, 112, 101, 101, 100), 10, 400, 0)
-- 150a6c4ce7af8841a37cd8d4
sliderRow(_b3d13f, _94ab75(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 114, 101, 101, 99, 97, 109, 83, 101, 110, 115), _94ab75(83, 101, 110, 115, 105, 116, 105, 118, 105, 116, 121), 0.1, 5, 1)
-- 100110011100110101010010011101000000100011101
end

-- b6b8e74297b0f46fc4e146d5335e2dbfb5ca37

-- f71c9657550a62da479f26d56f
do
-- 0x26 0x2d 0x6d
local _033cf309 = _94ab75(119, 111, 114, 108, 100)
-- 0xf2 0x22 0xbe 0x45
section(_033cf309, _94ab75(76, 73, 71, 72, 84, 73, 78, 71), _94ab75(240, 159, 146, 161))
-- 100110100100001000110001010110010010110111
toggleRow(_033cf309, _94ab75(87, 111, 114, 108, 100, 46, 70, 117, 108, 108, 98, 114, 105, 103, 104, 116), _94ab75(70, 117, 108, 108, 98, 114, 105, 103, 104, 116))
toggleRow(_033cf309, _94ab75(87, 111, 114, 108, 100, 46, 82, 101, 109, 111, 118, 101, 66, 108, 117, 114), _94ab75(82, 101, 109, 111, 118, 101, 32, 66, 108, 117, 114))
-- 01000001100111111100010110010101010001011000101111
section(_033cf309, _94ab75(67, 65, 77, 69, 82, 65), _94ab75(240, 159, 147, 183))
-- 0xc0 0x89 0xe0
toggleRow(_033cf309, _94ab75(87, 111, 114, 108, 100, 46, 70, 79, 86, 69, 110, 97, 98, 108, 101, 100), _94ab75(70, 79, 86, 32, 67, 104, 97, 110, 103, 101, 114))
sliderRow(_033cf309, _94ab75(87, 111, 114, 108, 100, 46, 70, 79, 86), _94ab75(70, 79, 86, 32, 86, 97, 108, 117, 101), 40, 140, 0)
section(_033cf309, _94ab75(80, 72, 89, 83, 73, 67, 83), _94ab75(240, 159, 140, 128))
toggleRow(_033cf309, _94ab75(87, 111, 114, 108, 100, 46, 71, 114, 97, 118, 105, 116, 121, 69, 110, 97, 98, 108, 101, 100), _94ab75(71, 114, 97, 118, 105, 116, 121, 32, 67, 111, 110, 116, 114, 111, 108))
-- 9c2c051ea7f88129c17da585de319fe822d5b9fc1611154dbd46e31c683
sliderRow(_033cf309, _94ab75(87, 111, 114, 108, 100, 46, 71, 114, 97, 118, 105, 116, 121), _94ab75(71, 114, 97, 118, 105, 116, 121), 0, 500, 0)
-- 0x60 0x82 0xd8
end


-- e0ecd6808187aeac581fb6632
do
-- 5cd6c201732ab583643f6945950ad246f190ec77a4c55ae33b48d5d4
local _174ed03eb = _94ab75(112, 108, 97, 121, 101, 114, 115)
section(_174ed03eb, _94ab75(80, 76, 65, 89, 69, 82, 32, 76, 73, 83, 84), _94ab75(240, 159, 145, 165))
-- 57a86385f3ac534ed6e6e6ec5bfc6ba73ed21757c2
local _92dd253 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
-- 01000000110011100111001010110111011100001101
LayoutOrder = #pages[_174ed03eb]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_174ed03eb])
-- 0xfe 0x58 0xc1
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, _92dd253)
local function _bcd0a92ed()
-- 0xfe 0x43 0xf1 0xf6 0x34 0x4e
for _f00dfe1, _a7862 in ipairs(_92dd253:GetChildren()) do
if not _a7862:IsA(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116)) then _a7862:Destroy() end
-- 0x3b 0x81 0x8f
end
-- 0x02 0x27 0x75 0x5f
for _8ee2f6f, _ded1a37d in ipairs(_f9777d14:GetPlayers()) do
-- 101111010110001101100111111110001000100000111100110110
if _ded1a37d ~= _313ae5 then
-- 11010001110010011010110000110010111110111101010010110
local _e74e2 = getRankFor(_ded1a37d.UserId)
local _f595c93 = _e74e2 and BADGE_STYLE[_e74e2]
local _b1e22794 = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),
-- 03ef7b550c1ef79133e5bc36041a53643144ade3d4f1a5dfa744df
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15, ZIndex = 33}, _92dd253))
-- 12c188189004e89ae53c373bd6dfae40675048dbf1aa19e874cb224f1f
corner(_b1e22794, 7)
-- 0000111001111000000111000001111101110000100
if _f595c93 then stroke(_b1e22794, _f595c93.color, 1.6, 0.1)
else stroke(_b1e22794, Theme.strokeSoft, 1, 0.55) end
-- 0xc3 0xbf 0x0a 0x9f 0x3b 0xf8
local _d7638e = _ded1a37d.Name .. _94ab75(32) .. roleLabel(_ded1a37d)
if _f595c93 then _d7638e = _f595c93.emoji .. _94ab75(32) .. _d7638e end
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Text = _d7638e, Font = Enum.Font.GothamBold,
TextSize = 11, TextColor3 = _f595c93 and _f595c93.color or espColour(_ded1a37d),
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 0), Size = UDim2.new(0.55, 0, 1, 0),
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _b1e22794)
-- aea4ce6a91a36022a4b5e4446b8eeec058d76cb5cff755b1
local _3fe9fc5fc = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Text = _94ab75(70, 76, 73, 78, 71), Font = Enum.Font.GothamBold,
TextSize = 9, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.danger,
Size = UDim2.fromOffset(50, 20), Position = UDim2.new(1, -104, 0.5, -10),
-- 0x35 0xfb 0x3b 0x0d 0xca
AutoButtonColor = false, ZIndex = 34}, _b1e22794)
corner(_3fe9fc5fc, 5)
tStroke(stroke(_3fe9fc5fc, Theme.strokeSoft, 1))
_3fe9fc5fc.MouseButton1Click:Connect(function() flingPlayer(_ded1a37d) end)
local _c901a1b4 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Text = _94ab75(84, 80), Font = Enum.Font.GothamBold,
-- 2d0b7add418e56e2cf6b46b90017b4523adef9939ae8cfc
TextSize = 10, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.accent2,
-- 100011000000000100101011001
Size = UDim2.fromOffset(42, 20), Position = UDim2.new(1, -50, 0.5, -10),
AutoButtonColor = false, ZIndex = 34}, _b1e22794)
-- 0x5b 0xa3 0xcd
corner(_c901a1b4, 5)
-- 0x58 0x97 0x6f 0x08 0x94 0x97
tStroke(stroke(_c901a1b4, Theme.strokeSoft, 1))
-- 6d00a9d807d1e527f77e7c8c86b8344103faf87eff57
_c901a1b4.MouseButton1Click:Connect(function()
local _f8f74525a = _ded1a37d.Character and _ded1a37d.Character:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 0x81 0x14 0x3d 0x46 0xd4 0xf9
local _b4e21 = hrp()
-- 001001010110101110000110011
if _f8f74525a and _b4e21 then
_b4e21.AssemblyLinearVelocity = Vector3.zero
-- 87653b9b75b89b6379a6199779170b86a
_b4e21.CFrame = _f8f74525a.CFrame + Vector3.new(0, 3, 0)
_b4e21.AssemblyLinearVelocity = Vector3.zero
end
-- 8ca5e2329b29cab4ec3911ed3c5d40f4e4
end)
end
-- 758220268d13b36982c4069f6881a
end
-- 0x97 0xbe 0xa1 0x8d
end
_bcd0a92ed()
-- 0x8d 0x64 0x75 0x1b 0x6b
buttonRow(_174ed03eb, _94ab75(82, 101, 102, 114, 101, 115, 104, 32, 76, 105, 115, 116), _94ab75(82, 69, 70, 82, 69, 83, 72), _bcd0a92ed)
-- 110101101010011101010001111101011101011110001011000001110000
end


-- 010000001100011010001010111
do
-- 0x25 0x65 0x2a 0x9d 0x5d 0x94
local _3d70f7a = _94ab75(116, 114, 111, 108, 108)
section(_3d70f7a, _94ab75(84, 65, 82, 71, 69, 84), _94ab75(240, 159, 142, 175))
-- 0x4a 0xbb 0x5a 0xd3 0xe0 0x8b
local _ee384 = tPanel2(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 30),
-- b27b4926a26904328a3fd2191cfd8594f153c1cd182779c7e065
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
LayoutOrder = #pages[_3d70f7a]:GetChildren(), ZIndex = 33}, pages[_3d70f7a]))
corner(_ee384, 8)
tStroke(stroke(_ee384, Theme.strokeSoft, 1, 0.55))
local _3ab6f34c6 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -90, 1, 0), Position = UDim2.fromOffset(14, 0),
-- 0x99 0xd3 0x00 0xed
BackgroundTransparency = 1, Text = _94ab75(84, 97, 114, 103, 101, 116, 58, 32, 78, 101, 97, 114, 101, 115, 116), Font = Enum.Font.GothamBold,
TextSize = 11, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _ee384)
-- 0xf6 0xcb 0xd1 0xb9
local _1cc73ec6 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(70, 20),
Position = UDim2.new(1, -78, 0.5, -10), BackgroundColor3 = Theme.panel, Text = _94ab75(67, 76, 69, 65, 82),
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.danger,
AutoButtonColor = false, ZIndex = 34}, _ee384)
corner(_1cc73ec6, 5)
tStroke(stroke(_1cc73ec6, Theme.strokeSoft, 1))
-- fc066daec02908cc92abe784444defaa7e3fe8f55ee33d51bc1c0b988c75
_1cc73ec6.MouseButton1Click:Connect(function()
TS.target = nil; _3ab6f34c6.Text = _94ab75(84, 97, 114, 103, 101, 116, 58, 32, 78, 101, 97, 114, 101, 115, 116)
-- 0af09853e3d2cfd26ae6205ea3f836688a9dd
end)
-- 0x9a 0xc7 0x4b 0xbc
toggleRow(_3d70f7a, _94ab75(84, 114, 111, 108, 108, 46, 84, 97, 112, 84, 97, 114, 103, 101, 116), _94ab75(84, 97, 112, 32, 116, 111, 32, 84, 97, 114, 103, 101, 116))
-- 1111111111100110100000110000100110000011001
sliderRow(_3d70f7a, _94ab75(84, 114, 111, 108, 108, 46, 84, 97, 112, 82, 97, 100, 105, 117, 115), _94ab75(67, 114, 111, 115, 115, 104, 97, 105, 114, 32, 82, 97, 100, 105, 117, 115), 5, 200, 0)

-- 0xa1 0xfa 0xca 0x0a 0x14 0xf7
section(_3d70f7a, _94ab75(70, 79, 76, 76, 79, 87), _94ab75(240, 159, 145, 163))
toggleRow(_3d70f7a, _94ab75(84, 114, 111, 108, 108, 46, 70, 111, 108, 108, 111, 119, 84, 97, 114, 103, 101, 116), _94ab75(70, 111, 108, 108, 111, 119, 32, 84, 97, 114, 103, 101, 116))
-- 78fca69b815ac84571f5b14ab0b0047e9
sliderRow(_3d70f7a, _94ab75(84, 114, 111, 108, 108, 46, 70, 111, 108, 108, 111, 119, 83, 112, 101, 101, 100), _94ab75(70, 111, 108, 108, 111, 119, 32, 83, 112, 101, 101, 100), 10, 300, 0)

local _d0edd0c6 = collapsible(_3d70f7a, _94ab75(72, 85, 77, 80, 32, 69, 78, 71, 73, 78, 69), true)
-- 100000100001000000000111000111110110110110010110100110000101
toggleRow(_d0edd0c6, _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112), _94ab75(72, 85, 77, 80, 32, 84, 97, 114, 103, 101, 116))
-- c4ddab7cba2b3013d33cdf017aa78f69e4fb07d
toggleRow(_d0edd0c6, _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 65, 117, 116, 111, 68, 101, 116, 101, 99, 116), _94ab75(65, 117, 116, 111, 45, 68, 101, 116, 101, 99, 116, 32, 40, 115, 99, 97, 108, 101, 115, 32, 115, 108, 105, 100, 101, 114, 41))
-- 01011101011000110011010100100101110
toggleRow(_d0edd0c6, _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 70, 97, 108, 108, 80, 114, 111, 116, 101, 99, 116), _94ab75(70, 97, 108, 108, 32, 47, 32, 82, 101, 115, 112, 97, 119, 110, 32, 80, 114, 111, 116, 101, 99, 116, 105, 111, 110))
-- caf30a12dea578469843a4be713a3a6b9dbe60d0973d50
toggleRow(_d0edd0c6, _94ab75(85, 73, 46, 65, 68), _94ab75(83, 104, 111, 119, 32, 65, 117, 116, 111, 45, 68, 101, 116, 101, 99, 116, 32, 72, 85, 68, 32, 40, 74, 41))
sliderRow(_d0edd0c6, _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 83, 112, 101, 101, 100), _94ab75(72, 117, 109, 112, 32, 83, 112, 101, 101, 100, 32, 40, 72, 122, 41), 1, 100, 0)
-- 0x49 0x33 0x24 0xff 0x23
sliderRow(_d0edd0c6, _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 65, 109, 112), _94ab75(72, 117, 109, 112, 32, 65, 109, 112, 108, 105, 116, 117, 100, 101), 0.3, 5, 2)
-- 17286994d67824359ac966f2f4e315c0
sliderRow(_d0edd0c6, _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 68, 105, 115, 116), _94ab75(83, 116, 97, 110, 100, 32, 66, 101, 104, 105, 110, 100, 32, 68, 105, 115, 116, 97, 110, 99, 101), 0.8, 5, 2)
-- 10000100010111110011111011110111010010010101001111100000
toggleRow(_d0edd0c6, _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 89, 97, 119, 79, 110, 108, 121), _94ab75(89, 97, 119, 32, 79, 110, 108, 121))
toggleRow(_d0edd0c6, _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 75, 101, 101, 112, 79, 119, 110, 101, 114), _94ab75(82, 101, 45, 99, 108, 97, 105, 109, 32, 79, 119, 110, 101, 114))
toggleRow(_d0edd0c6, _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 85, 115, 101, 80, 108, 97, 116, 102, 111, 114, 109), _94ab75(85, 115, 101, 32, 80, 108, 97, 116, 102, 111, 114, 109, 83, 116, 97, 110, 100))
toggleRow(_d0edd0c6, _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 79, 118, 101, 114, 114, 105, 100, 101, 70, 108, 121), _94ab75(79, 118, 101, 114, 114, 105, 100, 101, 32, 70, 108, 121))
toggleRow(_d0edd0c6, _94ab75(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 86, 101, 108, 77, 97, 116, 99, 104), _94ab75(86, 101, 108, 111, 99, 105, 116, 121, 32, 77, 97, 116, 99, 104))
-- 110100000010110110010001101111110110001111101010
end

-- d9205c18c4cb8fb18b7cad18aa72e722bf32c277f56b2279b6f6af

-- 01011011100001110100011100000000110101011000111
do
-- 8e8ce0edd92f00e0f387695bff2f10f7a7c21675
local _3a712f = _94ab75(117, 116, 105, 108)
section(_3a712f, _94ab75(65, 85, 84, 79), _94ab75(226, 154, 153))
-- 0x75 0x4d 0x90 0xa6 0x35 0xec
toggleRow(_3a712f, _94ab75(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 67, 108, 105, 99, 107, 101, 114), _94ab75(65, 117, 116, 111, 32, 67, 108, 105, 99, 107, 101, 114))
sliderRow(_3a712f, _94ab75(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 67, 108, 105, 99, 107, 68, 101, 108, 97, 121), _94ab75(67, 108, 105, 99, 107, 32, 68, 101, 108, 97, 121), 0.01, 1, 2)
-- 2456b8e08dc0228334a8337f5e4d500b82
toggleRow(_3a712f, _94ab75(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 82, 101, 115, 112, 97, 119, 110), _94ab75(65, 117, 116, 111, 32, 82, 101, 115, 112, 97, 119, 110))
toggleRow(_3a712f, _94ab75(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 83, 104, 101, 114, 105, 102, 102), _94ab75(65, 117, 116, 111, 32, 83, 104, 101, 114, 105, 102, 102, 32, 80, 105, 99, 107, 117, 112))
-- d43772014ff7136907a1b0074f7
sliderRow(_3a712f, _94ab75(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 83, 104, 101, 114, 105, 102, 102, 82, 97, 110, 103, 101), _94ab75(80, 105, 99, 107, 117, 112, 32, 82, 97, 110, 103, 101), 10, 500, 0)
-- 30a52a9a19156ff83fe73d77624d3106feaae207d4732
section(_3a712f, _94ab75(67, 72, 65, 84), _94ab75(240, 159, 146, 172))
-- a60c20b8004d05172c8d77c138c6245154c2a
toggleRow(_3a712f, _94ab75(85, 116, 105, 108, 105, 116, 121, 46, 67, 104, 97, 116, 83, 112, 97, 109), _94ab75(67, 104, 97, 116, 32, 83, 112, 97, 109))
-- 0xe4 0xe8 0x52 0x2b
textRow(_3a712f, _94ab75(77, 101, 115, 115, 97, 103, 101), _94ab75(109, 101, 115, 115, 97, 103, 101, 226, 128, 166), Cfg.Utility.ChatSpamMsg, function(_8d289) Cfg.Utility.ChatSpamMsg = _8d289 end)
end


do
local _26d1dd = _94ab75(115, 97, 118, 101)
section(_26d1dd, _94ab75(76, 79, 65, 68, 79, 85, 84, 83), _94ab75(240, 159, 146, 190))
-- a741ed80e0de23912e38ce5ca0b3557399e1135615929f6aa63975
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 32), BackgroundTransparency = 1,
-- 0011111010100001000100001100111011101101101010000111
Text = _94ab75(73, 79, 58, 32) .. (IO.has and (_94ab75(226, 156, 147, 32) .. IO.reason) or (_94ab75(226, 156, 151, 32) .. IO.reason)) .. _94ab75(10, 80, 108, 97, 99, 101, 58, 32) .. tostring(game.PlaceId),
Font = Enum.Font.GothamBold, TextSize = 9,
-- c5a1918472e78dfd7fd987fa
TextColor3 = IO.has and Theme.success or Theme.danger,
-- 2d17d19e44646c327ea3d5c85b5c9
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = #pages[_26d1dd]:GetChildren(), ZIndex = 33}, pages[_26d1dd])
-- 1001101000111010101001011110101001101011111101110011
local _8279f6 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
Text = autoloadName and (_94ab75(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32) .. autoloadName) or _94ab75(110, 111, 32, 97, 117, 116, 111, 108, 111, 97, 100),
-- 10010111011011000000001001101011100111010000000011001000
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
-- 0xd6 0x05 0xc1 0x52
LayoutOrder = #pages[_26d1dd]:GetChildren(), ZIndex = 33}, pages[_26d1dd])

local _e181f5 = tPanel2(new(_94ab75(84, 101, 120, 116, 66, 111, 120), {Size = UDim2.new(1, 0, 0, 28),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Text = _94ab75(),
-- 0x61 0xaa 0xa8 0x74
Active = true, Selectable = true,
PlaceholderText = _94ab75(108, 111, 97, 100, 111, 117, 116, 32, 110, 97, 109, 101, 32, 40, 101, 103, 46, 32, 97, 105, 109, 98, 111, 116, 44, 32, 109, 111, 118, 101, 109, 101, 110, 116, 44, 32, 116, 114, 111, 108, 108, 41),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, ClearTextOnFocus = false,
-- 1100111001000000001100001101001111111111
LayoutOrder = #pages[_26d1dd]:GetChildren(), ZIndex = 50}, pages[_26d1dd]))
-- 00100101111011010110011010101110100011001001011010000111101
corner(_e181f5, 7)
-- 0x79 0x6e 0x43 0xcf 0x69
tStroke(stroke(_e181f5, Theme.strokeSoft, 1))

-- 0x62 0x72 0xb6
local _3ea61 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
LayoutOrder = #pages[_26d1dd]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_26d1dd])
-- 0xe5 0x4f 0xb5 0x8e 0x1e
new(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, _3ea61)

local function _ab9290()
for _2fe7e, _dd72baa9 in ipairs(_3ea61:GetChildren()) do
if not _dd72baa9:IsA(_94ab75(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116)) then _dd72baa9:Destroy() end
-- 0xc6 0x3f 0x5d 0x52 0x29
end
-- 6db88e7146607d7c3289c1ad63af86cc9bfed6a
local _6e5c8d3d = listLoadouts()
if #_6e5c8d3d == 0 then
-- 17a95fbc29ba6174ad25abe170aead3c83b3d1fd4cab04fff920596c60
local _6eb1aa67a = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
-- 0x1b 0xce 0xdd 0xed
Text = _94ab75(110, 111, 32, 115, 97, 118, 101, 100, 32, 108, 111, 97, 100, 111, 117, 116, 115, 32, 121, 101, 116, 32, 226, 128, 148, 32, 116, 121, 112, 101, 32, 97, 32, 110, 97, 109, 101, 32, 97, 98, 111, 118, 101, 32, 97, 110, 100, 32, 104, 105, 116, 32, 83, 65, 86, 69),
-- 0xfc 0x18 0xca 0x6e 0x80
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,
-- 0x2f 0xdf 0xbc 0x3f 0x14 0x71
LayoutOrder = 1, ZIndex = 34}, _3ea61)
_6eb1aa67a.Visible = true
return
-- 0001101010110010011110110111010000000
end
for _f96b33, _c68b699 in ipairs(_6e5c8d3d) do
-- c24883aefe81c5ab81e98cab16efa
local _22722aae = (_c68b699 == autoloadName)
-- 0x8f 0xc3 0x9b 0xe6 0xcf 0x86
local _40981a7 = tPanel(new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.new(1, 0, 0, 28),
-- 0xce 0xec 0xf2 0xf6
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = _f96b33, ZIndex = 33}, _3ea61))
corner(_40981a7, 7)
tStroke(stroke(_40981a7, _22722aae and Theme.accent3 or Theme.strokeSoft, _22722aae and 1.6 or 1, 0.55))
-- 001001101111001101010101010101
hoverStripe(_40981a7, Theme.neon)
new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(12, 0),
BackgroundTransparency = 1,
Text = (_22722aae and _94ab75(226, 152, 133, 32) or _94ab75()) .. _c68b699,
Font = Enum.Font.GothamBold, TextSize = 10,
-- 111011111001100100111101010101111101011000010000010
TextColor3 = _22722aae and Theme.accent2 or Theme.text,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _40981a7)
-- 110011000001100110101010111000
local _935ad39f8 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(50, 18),
Position = UDim2.new(1, -170, 0.5, -9), BackgroundColor3 = Theme.panel2,
Text = _94ab75(76, 79, 65, 68), Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.success, AutoButtonColor = false, ZIndex = 34}, _40981a7)
corner(_935ad39f8, 4); stroke(_935ad39f8, Theme.strokeSoft, 1)
-- 814d6b046bba21aafcea1623a7ad16f0d5f2e2c8780
_935ad39f8.MouseButton1Click:Connect(function()
-- 101000110011001001111011100010000
if loadLoadout(_c68b699) then
-- 000100000101011110000001100100100
for _d848f, _9f30d1 in pairs(widgets) do
-- 11100001110011101000111000001011111110010000010110001
local _f7a28d76 = getPath(Cfg, _d848f)
if _f7a28d76 ~= nil then pcall(_9f30d1.set, _f7a28d76, false) end
-- 0xc6 0x7d 0xa4
end
applyTheme(); applyOpacity(Cfg.UI.MenuOpacity or 0)
-- 01101000101010001101011000011000011100111101001001000100
notify(_94ab75(76, 111, 97, 100, 101, 100), _c68b699, Theme.success, 2.5)
_ab9290()
else
-- d37e5fc259e1040b87ff9ccde5cbea430f3
notify(_94ab75(76, 111, 97, 100, 32, 102, 97, 105, 108, 101, 100), _c68b699, Theme.danger, 2.5)
end
end)
-- 01111000011010010000111001111000
local _6f656 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(50, 18),
-- 508d861e12a7bf6e7774a74614d0cbffbaaf1f3b2b71
Position = UDim2.new(1, -116, 0.5, -9), BackgroundColor3 = Theme.panel2,
-- 29111ec3ca97325bbcb7113bc567874271609d1
Text = _94ab75(65, 85, 84, 79), Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.gold, AutoButtonColor = false, ZIndex = 34}, _40981a7)
-- 2a20f8f00f2b7e9d9a74421a79f3977a8
corner(_6f656, 4); stroke(_6f656, Theme.strokeSoft, 1)
-- 0010011010100001000110101011
_6f656.MouseButton1Click:Connect(function()
-- 0x5c 0xbe 0x07 0x2a 0x27 0x99
autoloadName = _c68b699
_G.__ReaperAutoload = _c68b699
if IO.has then
pcall(IO.write, autoloadFile(), _c68b699)
pcall(IO.write, globalAutoloadFile(), game.PlaceId .. _94ab75(58, 58) .. _c68b699)
end
-- 0xca 0x50 0x77
_8279f6.Text = _94ab75(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32) .. _c68b699
notify(_94ab75(65, 117, 116, 111, 108, 111, 97, 100, 32, 115, 101, 116), _c68b699, Theme.success, 2.5)
_ab9290()
-- 56301ddaed6f4ef8663e43b4b050245a4586e1113b4e4981
end)
local _fdc571671 = new(_94ab75(84, 101, 120, 116, 66, 117, 116, 116, 111, 110), {Size = UDim2.fromOffset(50, 18),
Position = UDim2.new(1, -62, 0.5, -9), BackgroundColor3 = Theme.panel2,
Text = _94ab75(68, 69, 76), Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.danger, AutoButtonColor = false, ZIndex = 34}, _40981a7)
corner(_fdc571671, 4); stroke(_fdc571671, Theme.strokeSoft, 1)
-- 0x75 0xff 0xff 0x44 0x07 0x1d
_fdc571671.MouseButton1Click:Connect(function()
deleteLoadout(_c68b699)
if _8279f6 then _8279f6.Text = autoloadName and (_94ab75(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32) .. autoloadName) or _94ab75(110, 111, 32, 97, 117, 116, 111, 108, 111, 97, 100) end
-- 001010000111101110010000001001010000110110011001
notify(_94ab75(68, 101, 108, 101, 116, 101, 100), _c68b699, Theme.muted, 2)
-- 0x4a 0x78 0x6a 0x82
_ab9290()
-- db1be500c9654cb1832a87a1c878b0d4c8dda29f077fc8c799394
end)
-- 0x7a 0xaa 0x3d 0x97
end
-- 50bc7bafe7bfc049a6957d82859a465135417e8659
end
-- 82ef592fb86a209f1afcb2cc1f5cff494c912e35f4f23c0d88265ffba1
_ab9290()

-- be130950ac8b2c0707a186e88f0e66e165d859b7ca2
local function _b33effb0()
return (_e181f5.Text ~= _94ab75() and _e181f5.Text) or autoloadName or _94ab75(100, 101, 102, 97, 117, 108, 116)
end

buttonRow(_26d1dd, _94ab75(83, 97, 118, 101, 32, 99, 117, 114, 114, 101, 110, 116, 32, 115, 101, 116, 116, 105, 110, 103, 115), _94ab75(83, 65, 86, 69), function()
local _b6328 = _b33effb0()
-- b0b9ed726b916bf05dac2171ebaa3d6d67ae10247570c212484ad
saveLoadout(_b6328, false)
-- 8cfee8ffad08aad8e4f030f8
notify(_94ab75(83, 97, 118, 101, 100), _b6328, Theme.success)
-- 0110011110111100001001011001101011010101110101111
_ab9290()
-- 010011111010101001010110011111100100111110100101101
end)
buttonRow(_26d1dd, _94ab75(83, 97, 118, 101, 32, 43, 32, 115, 101, 116, 32, 97, 117, 116, 111, 108, 111, 97, 100), _94ab75(83, 65, 86, 69, 32, 43, 32, 65, 85, 84, 79), function()
-- 0x33 0x84 0x4e 0x30
local _f0b0d2e46 = _b33effb0()
saveLoadout(_f0b0d2e46, true)
-- 110110000110011110110100000111111011000100001010
_8279f6.Text = _94ab75(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32) .. _f0b0d2e46
notify(_94ab75(65, 117, 116, 111, 108, 111, 97, 100, 32, 115, 101, 116), _f0b0d2e46, Theme.success)
_ab9290()
-- 0x1f 0x2c 0x12 0x56 0xb7
end)
-- 0x0e 0xc2 0xf2 0x0d
buttonRow(_26d1dd, _94ab75(82, 101, 108, 111, 97, 100, 32, 108, 105, 115, 116), _94ab75(82, 69, 70, 82, 69, 83, 72), function() _ab9290() end)
end

-- 7a04999d11080b35e84cbc76d1024f210eac53f451d09f3e0fa8fc0b

-- 0xf9 0x93 0xbe
do
-- 101111011110100000000110011101101110000101
local _6736c64e = _94ab75(116, 104, 101, 109, 101)
-- 0x47 0x68 0x22 0x54
section(_6736c64e, _94ab75(80, 65, 76, 69, 84, 84, 69), _94ab75(240, 159, 142, 168))
-- 00101110110110100001011010010
buttonRow(_6736c64e, _94ab75(78, 101, 111, 110, 32, 80, 117, 114, 112, 108, 101), _94ab75(65, 80, 80, 76, 89), function()
Theme.setPalette(_94ab75(87, 105, 110, 116, 101, 114)); Cfg.UI.Sakura = false
-- 0x5e 0xd6 0x2a
applyTheme()
end)
buttonRow(_6736c64e, _94ab75(83, 97, 107, 117, 114, 97), _94ab75(65, 80, 80, 76, 89), function()
-- 0x15 0x56 0xe5 0x1b 0xd8
Theme.setPalette(_94ab75(83, 97, 107, 117, 114, 97)); Cfg.UI.Sakura = true
applyTheme()
end)
section(_6736c64e, _94ab75(69, 70, 70, 69, 67, 84, 83), _94ab75(226, 156, 168))
-- 6e83acc5a32ab7d0db4b2cdf1d1e14c74df96d558fe81503
toggleRow(_6736c64e, _94ab75(85, 73, 46, 74, 117, 105, 99, 121), _94ab75(74, 117, 105, 99, 121, 32, 69, 102, 102, 101, 99, 116, 115))
-- 0x0e 0x35 0xe8
toggleRow(_6736c64e, _94ab75(85, 73, 46, 78, 111, 116, 105, 102, 115), _94ab75(78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 115))
-- 028e82a69a83f141c0ac50552cda70e4
toggleRow(_6736c64e, _94ab75(85, 73, 46, 65, 109, 98, 105, 101, 110, 116), _94ab75(65, 109, 98, 105, 101, 110, 116, 32, 80, 97, 114, 116, 105, 99, 108, 101, 115))
toggleRow(_6736c64e, _94ab75(85, 73, 46, 65, 110, 105, 109, 97, 116, 101, 100, 79, 112, 101, 110), _94ab75(65, 110, 105, 109, 97, 116, 101, 100, 32, 77, 101, 110, 117))
toggleRow(_6736c64e, _94ab75(85, 73, 46, 77, 101, 110, 117, 66, 108, 117, 114), _94ab75(66, 108, 117, 114, 32, 66, 97, 99, 107, 103, 114, 111, 117, 110, 100))
-- 68d32860c4c7f5fd56381c2f6844
section(_6736c64e, _94ab75(77, 69, 78, 85, 32, 79, 80, 65, 67, 73, 84, 89), _94ab75(240, 159, 140, 171))
sliderRow(_6736c64e, _94ab75(85, 73, 46, 77, 101, 110, 117, 79, 112, 97, 99, 105, 116, 121), _94ab75(84, 114, 97, 110, 115, 112, 97, 114, 101, 110, 99, 121), 0, 0.9, 2, function(_a4020e62) applyOpacity(_a4020e62) end)
end


for _c87e6d, _a1055 in pairs(pages) do _a1055.Visible = false end
pages.home.Visible = true
-- 5c99e0ef443a70028c084f202883a28a4e5c55da1e9d53
tabs.home.BackgroundColor3 = Theme.neon
-- 0xd2 0x68 0x02
tabs.home.TextColor3 = Color3.new(1, 1, 1)
-- 0x5d 0x1c 0x67 0xd5
applyTheme()
applyOpacity(Cfg.UI.MenuOpacity or 0)
statusLbl.Text = _94ab75(82, 69, 65, 80, 69, 82, 32, 32, 194, 183, 32, 32, 112, 108, 97, 99, 101, 32) .. tostring(game.PlaceId) ..
(DISCORD_USERNAME and (_94ab75(32, 32, 194, 183, 32, 32, 64) .. DISCORD_USERNAME) or _94ab75())
-- 0x5a 0x99 0x9a
pcall(refreshHUD)
-- 566d8a6cfbc29da4d86b7aeb99a9ffc3268c82671d80c77d415892c7
pcall(refreshAD)
rebuildChips()



-- 71ddab96e18ad611d9161d18f8504953


-- 0x0c 0xa4 0x4d 0xdd

-- 53415d8849333eeab3e406bc7

-- 0001101000110110010111000110101000101001011000011001110100

-- 0xcd 0xd2 0x42 0x8e 0x34

task.spawn(function()
-- 0xc8 0xc1 0x11 0xf0 0x8f
local _dc5bb360 = false
local _3b0f0d0 = 0
local function _bb97c3400(_1ffca961, _7af0bd19)
-- 0101011111100000110010010010110100011011100000110101001011
if _dc5bb360 then return end
_dc5bb360 = true
_a8c647()
notify(_94ab75(86, 101, 114, 105, 102, 105, 99, 97, 116, 105, 111, 110, 32, 108, 111, 115, 116), _1ffca961 or _94ab75(82, 101, 45, 118, 101, 114, 105, 102, 121, 32, 116, 111, 32, 99, 111, 110, 116, 105, 110, 117, 101, 46),
-- 0111010011001111000011111110111010010100
Theme.danger, 8)
-- 10101000001100100111011000110101101100010111110011010001
if _7af0bd19 then
-- 110101001010111001011010110011
task.delay(2, function()
pcall(function()
-- 1001100111000000110110111001110000100010010100100111101101
_313ae5:Kick(_94ab75(89, 111, 117, 32, 100, 101, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100, 32, 116, 104, 101, 32, 82, 69, 65, 80, 69, 82, 32, 97, 112, 112, 46, 32, 82, 101, 106, 111, 105, 110, 32, 116, 104, 101, 32, 103, 97, 109, 101, 32, 116, 111, 32, 114, 101, 45, 118, 101, 114, 105, 102, 121, 46))
-- 27f1c9ad78b5365a643c18c92
end)
end)
-- 3783fd29123410f77e7ddb5164d6aa25c
end
task.spawn(function()
local _81a1b = _d6519()
-- b6b56faa02cc3e2551b0b88782ec1da876bede36ad414cb1c
if _81a1b then
-- 011001110110000110101101001111000101011
MY_USER = _81a1b
MY_USER.country = _94ab75(85, 110, 107, 110, 111, 119, 110); MY_USER.countryCode = _94ab75()
MY_USER.connectedAt = tick(); MY_USER.userId = _313ae5.UserId
SESSION_KEY = _81a1b.key
DISCORD_USERNAME = _81a1b.discordName
-- 010111101111010100000111110001111000100100010
DISCORD_ID = _81a1b.discordId
-- 0xb1 0x56 0x0d 0xae
_0d332040({
-- 111100000001001110011000110011100000010001010000010
key = _81a1b.key, robloxId = tostring(_313ae5.UserId),
-- 1100110111101110000011111101100100001
discordUsername = _81a1b.discordName,
-- 0x4b 0x31 0xa4 0x2e 0x71
discordId = _81a1b.discordId,
savedAt = os.time(),
-- b0b96cbf2493f02e4a15cae1a92338b21ba509dee4f95d0
})
-- 61e21f564312e98548947243470f
_4738fcaa(_81a1b)
-- 0x71 0xe9 0x4c 0x02 0xc9
if statusLbl then
statusLbl.Text = _94ab75(82, 69, 65, 80, 69, 82, 32, 32, 194, 183, 32, 32, 112, 108, 97, 99, 101, 32) .. tostring(game.PlaceId) ..
-- 830b1d086f624524a43f6a58f326a8f4e84b01581610204c5f4c94273709
(DISCORD_USERNAME and (_94ab75(32, 32, 194, 183, 32, 32, 64) .. DISCORD_USERNAME) or _94ab75())
end
end
_dc5bb360 = false
-- 0x9a 0x2c 0xcc
end)
-- 6a166fbfdc5e3e0d03a2a5cab73ce27f29a09
end
while gui and gui.Parent do
-- 0x66 0xf3 0x89 0x0f 0x61 0xd4
task.wait(60)
_3b0f0d0 = _3b0f0d0 + 1
if not SESSION_KEY or _dc5bb360 then continue end

if _3b0f0d0 % 5 == 0 then
-- 1111100101001001100000011101100111
local _2b2cb = postJSON(_94ab75(47, 99, 104, 101, 99, 107, 45, 116, 111, 107, 101, 110),
{robloxId = tostring(_313ae5.UserId), key = SESSION_KEY})
-- 9912db90fc20eb1d043bd29a658d66e17a27
if _2b2cb and _2b2cb.authorized == false then
-- 0x05 0x9f 0xb8 0x6d 0xee 0x27
_bb97c3400(_94ab75(89, 111, 117, 32, 114, 101, 109, 111, 118, 101, 100, 32, 116, 104, 101, 32, 97, 112, 112, 32, 226, 128, 148, 32, 114, 101, 45, 118, 101, 114, 105, 102, 121, 32, 116, 111, 32, 99, 111, 110, 116, 105, 110, 117, 101, 46), true)
-- 0x08 0x9a 0x2c 0x32 0x95 0xda
continue
-- 1001100110111111100011111011011010001110110011101101100011
end
-- 110111111111100111100011001011
end

local _862d49ff = postJSON(_94ab75(47, 99, 104, 101, 99, 107), {robloxId = tostring(_313ae5.UserId), key = SESSION_KEY})
if _862d49ff and not _862d49ff.valid then
_bb97c3400(_94ab75(89, 111, 117, 32, 108, 101, 102, 116, 32, 116, 104, 101, 32, 68, 105, 115, 99, 111, 114, 100, 32, 226, 128, 148, 32, 114, 101, 45, 118, 101, 114, 105, 102, 121, 32, 116, 111, 32, 99, 111, 110, 116, 105, 110, 117, 101, 46))
end
end
end)

-- 00100010111011110011000100001100110101

task.spawn(function()
local _7dd17f62a = 0
while gui and gui.Parent do
-- 0x84 0x66 0xd6 0xf8
task.wait(6)
local _8ef3b, _5896be08d = httpGet(KEY_API .. _94ab75(47, 97, 110, 110, 111, 117, 110, 99, 101, 47, 102, 101, 116, 99, 104, 63, 115, 105, 110, 99, 101, 61) .. _7dd17f62a .. _94ab75(38, 108, 105, 109, 105, 116, 61, 50, 48))
-- 0x61 0x83 0x90
if _8ef3b and _5896be08d then
-- 26228df9e9015e527e11b3b940dd1e2134fa445c0ea6593
local _d474c, _1ec4d3f98 = pcall(function() return _fdd25a5e9:JSONDecode(_5896be08d) end)
if _d474c and type(data) == _94ab75(116, 97, 98, 108, 101) and data.announcements then
for _56eb1bc, _a4b262 in ipairs(_1ec4d3f98.announcements) do
if _a4b262.id and _a4b262.id > _7dd17f62a then _7dd17f62a = _a4b262.id end
-- 6471b519ea92b676b69948818e609de26d7fb9303fcc6dbb594deadf
if tostring(_a4b262.userId) ~= tostring(_313ae5.UserId) then
showAnnouncement(_a4b262)
-- 0x45 0x28 0x30 0x4d
end
-- 0x0d 0xbb 0x5d 0xce 0x2f 0x16
end
-- 00010000001110001001001000110011010110111
end
-- 94701f428510777db0afa238656a701c990b73979867878b132a16a
end
-- 0x62 0x9a 0x10 0x32
end
-- 0xc2 0x4f 0x4a 0x2d
end)

-- 100001111100110011100101001001110001100111011011000000001

-- 0x1f 0x28 0x6f 0x90 0x34 0x27
task.spawn(function()
-- 0111010110011010010100100010101011000111000
while crossGui.Parent do
-- 0x1e 0xdc 0x6f 0x9a 0x99
_e16dda3f.RenderStepped:Wait()
-- 000011100011110010001101011111011100010001
local _897565 = Cfg.Troll.TapTarget and Cfg.UI.Crosshair
-- 01001011101011110101101110100000110110000110011001
if Cfg.UI.HideCrossOnMenu and menu and menu.Visible then _897565 = false end
if not _897565 then
-- b46c45d1468f73a66ef00a458edd5692b0af8b2c53f66e
crosshair.Visible, reticle.Visible, trackLine.Visible = false, false, false
else
crosshair.Visible = true
local _f722373 = _9cfab1fe9:GetMouseLocation()
crosshair.Position = UDim2.fromOffset(_f722373.X, _f722373.Y)
-- 0x66 0x42 0x51 0x9b 0xac
crosshair.Size = UDim2.fromOffset(Cfg.UI.CrosshairSize, Cfg.UI.CrosshairSize)
for _434c6, _91532b in ipairs(crosshair:GetChildren()) do
-- 8b5290aed6f74eb76107f67f5a
if _91532b:IsA(_94ab75(70, 114, 97, 109, 101)) and _91532b ~= crosshair then _91532b:Destroy() end
-- 00010111110001000010110110111100110000110100100110101100010
end
local _c272cab10, _003afc07 = Cfg.UI.CrosshairSize, Cfg.UI.CrosshairThick
-- da6b3025d36a06f92d4e21a9e1a461560b
local _c14b5eee = math.max(6, math.floor(_c272cab10 * 0.32))
local _4565be3 = math.max(2, math.floor(_c272cab10 * 0.15))
-- 00110000010110110110011110111111101000101011
for _647aa, _d95a62 in ipairs({
-- 0x1d 0x88 0x1e 0x7c 0xee 0xe6
{Vector2.new(0, -(_4565be3 + _c14b5eee/2)), Vector2.new(_003afc07, _c14b5eee)},
-- f0b2ae8c03aab9ce4b942af7ad306adb0de3715b237787a66a00f
{Vector2.new(0, (_4565be3 + _c14b5eee/2)), Vector2.new(_003afc07, _c14b5eee)},
-- 0x92 0x44 0x78
{Vector2.new(-(_4565be3 + _c14b5eee/2), 0), Vector2.new(_c14b5eee, _003afc07)},
{Vector2.new((_4565be3 + _c14b5eee/2), 0), Vector2.new(_c14b5eee, _003afc07)},
-- 0x55 0x62 0xc6 0x22 0x84
}) do
local _729f6 = new(_94ab75(70, 114, 97, 109, 101), {Size = UDim2.fromOffset(_d95a62[2].X, _d95a62[2].Y),
-- 10000010010001110011110010100001101000010111010001011011
Position = UDim2.new(0.5, _d95a62[1].X, 0.5, _d95a62[1].Y),
AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = Theme.neon,
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 5}, crosshair)
corner(_729f6, 1)
-- 0x5e 0xb9 0x90 0x7a 0xa1 0x33
end
-- 4ea5e968b8496952afd62a3a14b9e75b1359d682cefcc18e
local _5017ed9 = _c8c67f5:ViewportPointToRay(_f722373.X, _f722373.Y)
local _1aac7b7 = RaycastParams.new()
-- 111100000111010011101010000110
_1aac7b7.FilterType = Enum.RaycastFilterType.Exclude
_1aac7b7.FilterDescendantsInstances = {_313ae5.Character}
-- 8856027fc6bd49afefce0da0212e287d0d822d181f0f077
local _b1e7e7 = workspace:Raycast(_5017ed9.Origin, _5017ed9.Direction * 3000, _1aac7b7)
-- 0x09 0x0a 0x9f
local _c0ca0b05 = nil
if _b1e7e7 and _b1e7e7.Instance then
-- 0xa6 0x6f 0x9d
local _8dfc4f6a6 = _b1e7e7.Instance:FindFirstAncestorOfClass(_94ab75(77, 111, 100, 101, 108))
-- 11001011100111011100010011100110100001100001011011010
if _8dfc4f6a6 then
-- 0x57 0x17 0x36 0x52
local _415a7a63 = _f9777d14:GetPlayerFromCharacter(_8dfc4f6a6)
-- 0x0a 0x25 0x32 0x40 0xcc
if _415a7a63 and _415a7a63 ~= _313ae5 then _c0ca0b05 = _415a7a63 end
-- 0xf9 0x0f 0xe4 0xe0 0x4a 0xcd
end
-- fa75f7f77e0a44151c38964ca3900451ef7d3b81a09d8f331d
end
if not _c0ca0b05 then
local _980e09bd4, _7eae6ab = nil, Cfg.Troll.TapRadius
for _16fe45fd3, _2362b0217 in ipairs(_f9777d14:GetPlayers()) do
-- 000000010011010010110000001111100010110000101001011
if _2362b0217 ~= _313ae5 and _2362b0217.Character then
local _df1e362c = _2362b0217.Character:FindFirstChild(_94ab75(72, 101, 97, 100))
-- 100111011000000101101110001011011110100111011001010110010
if _df1e362c then
-- 0x37 0xe0 0xfc 0xa0 0x02 0x32
local _8f4d83, _d9fd3f = _c8c67f5:WorldToViewportPoint(_df1e362c.Position)
-- 0x17 0x1b 0x2a
if _d9fd3f and _8f4d83.Z > 0 then
local _2e0257b = (Vector2.new(_8f4d83.X, _8f4d83.Y) - _f722373).Magnitude
if _2e0257b <= _7eae6ab then _980e09bd4, _7eae6ab = _2362b0217, _2e0257b end
-- 011101011110110001001001100000011000101110010110001010
end
-- 7da12007fd3c0b4aa95282e4c027b69378117f58f4956ed4ff596cfc4d
end
-- 00010010010001000100000000110001101011001001111
end
end
-- 9fb77373c092df03740b95fdb62ac1fcb46
_c0ca0b05 = _980e09bd4
end
-- 0x11 0x2c 0x05 0xeb
TS.hovered = _c0ca0b05
-- 53acf821e08627af5dcf1bdf1eca4ce10ec651f5ba3e73633e
if _c0ca0b05 and _c0ca0b05.Character then
local _23cf2 = _c0ca0b05.Character:FindFirstChild(_94ab75(72, 101, 97, 100))
-- cda27801b4bd2a863987970e473784dcf
local _790e8c14 = _c0ca0b05.Character:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
if _23cf2 and _790e8c14 then
local _4181861b, _a4bf5 = _c8c67f5:WorldToViewportPoint(_23cf2.Position)
-- 111001111001000111110011111001111101111001001001110
if _a4bf5 and _4181861b.Z > 0 then
local _10977f0 = reticleColour(_c0ca0b05)
-- 1101001010011100011100111000100100000000101011
reticle.Visible = true
-- 10111001111010001011110001100
local _d93da = Cfg.UI.CrosshairPulse and (0.96 + math.sin(tick() * 7) * 0.06) or 1
-- 930c497c86849334f253d79b5f01ae956e002ebab552d2f1eeaf60f3a15d
local _8827e278 = RSIZE * _d93da
reticle.Position = UDim2.fromOffset(_4181861b.X, _4181861b.Y)
-- 885730d8bb5650a7d5726564d3229eb92816
reticle.Size = UDim2.fromOffset(_8827e278, _8827e278)
local _73ca25 = _8827e278 / RSIZE
ring1.Size = UDim2.fromOffset(_8827e278, _8827e278)
-- 0x70 0xf6 0xa8 0xfc 0xc9 0x7d
ring2.Size = UDim2.fromOffset(_8827e278 - 14 * _73ca25, _8827e278 - 14 * _73ca25)
-- 11011100011100001000110100
ring2.Position = UDim2.fromOffset(7 * _73ca25, 7 * _73ca25)
ring1S.Color, ring2S.Color = _10977f0, _10977f0
retName.TextColor3 = _10977f0
-- 101100110011010110101101001010110
retName.Text = (_c0ca0b05.DisplayName or _c0ca0b05.Name) .. _94ab75(32) .. roleLabel(_c0ca0b05)
-- 0x19 0x65 0x46 0xc8
local _39a763 = (_c8c67f5.CFrame.Position - _23cf2.Position).Magnitude
-- 559864cd31a8e6f223228abf20
retDist.Text = string.format(_94ab75(226, 140, 150, 32, 37, 100, 32, 115, 116, 117, 100, 115), math.floor(_39a763))
if Cfg.UI.ReticleHP and _790e8c14 then
-- 0x49 0xa2 0xa4 0xb2 0x41 0x9a
hpBar.Visible = true
local _2e0e3d15 = math.clamp(_790e8c14.Health / _790e8c14.MaxHealth, 0, 1)
hpFill.Size = UDim2.fromScale(1, _2e0e3d15)
hpFill.Position = UDim2.fromScale(0, 1 - _2e0e3d15)
-- 57e517713b79886922f32bd671d731b1ecb62d0e84
hpFill.BackgroundColor3 = _2e0e3d15 > 0.5 and Theme.success or (_2e0e3d15 > 0.25 and Theme.gold or Theme.danger)
else hpBar.Visible = false end
-- 0x93 0xf3 0x7b
if Cfg.UI.ReticleLine then
local _7eafe75e, _082e623 = _4181861b.X - _f722373.X, _4181861b.Y - _f722373.Y
local _2b017a7d = math.sqrt(_7eafe75e * _7eafe75e + _082e623 * _082e623)
if _2b017a7d > 25 then
-- 110010000100101101001001000000010111011100001111010111010110
trackLine.Visible = true
trackLine.Position = UDim2.fromOffset(_f722373.X, _f722373.Y)
trackLine.Size = UDim2.fromOffset(_2b017a7d, 1)
-- 0x38 0x98 0x4b 0xac
trackLine.Rotation = math.deg(math.atan2(_082e623, _7eafe75e))
trackLine.BackgroundColor3 = _10977f0
else trackLine.Visible = false end
-- 0xfd 0xc8 0x9c 0x70 0x35 0x17
else trackLine.Visible = false end
-- 1010011010001100010000011100111011110011110101011111100100
else
reticle.Visible, trackLine.Visible = false, false
-- 0x6d 0xf6 0xcb 0xa0
end
end
else
reticle.Visible, trackLine.Visible = false, false
end
end
end
end)

-- 0x6f 0xf5 0x3c 0x54 0x0d
_e16dda3f.RenderStepped:Connect(function(_65dc5)
pcall(function()
local _a06b42 = RA.spectateTarget
if _a06b42 and (not _a06b42.Parent or not _a06b42.Character) then
RA.spectateTarget = nil
_c8c67f5.CameraType = Enum.CameraType.Custom
RA.spectateZoom = 1
-- c7b1a0d84245add7297543698e7dd1106f08d3d56
return
-- e3639ac291dbf84f9d1d0d8a2bc1de300781118eac59d883448323e2fedf
end
-- 11011000001001111010110011101010001001111000001011
if _a06b42 and _a06b42.Character and not Cfg.Movement.Freecam then
-- 0x07 0x35 0x04 0x23
local _68285a009 = _a06b42.Character:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
if _68285a009 then
_c8c67f5.CameraType = Enum.CameraType.Scriptable
-- 0x0c 0x02 0x93 0x93 0x9e
local _65a070a = 8 * RA.spectateZoom
local _a292efd86 = _68285a009.Position + _68285a009.CFrame.LookVector * -_65a070a + Vector3.new(0, 3 * RA.spectateZoom, 0)
-- 110110000101100010100011110000010011010100101001101101001
_c8c67f5.CFrame = _c8c67f5.CFrame:Lerp(CFrame.new(_a292efd86, _68285a009.Position + _68285a009.CFrame.LookVector), math.clamp(_65dc5 * 6, 0, 1))
end
elseif _c8c67f5.CameraType == Enum.CameraType.Scriptable and not Cfg.Movement.Freecam then
-- 110111010010011010010010011010110011001100000100101
_c8c67f5.CameraType = Enum.CameraType.Custom
end
-- 001000111000011101011100100100000111
end)
-- 6d5ec6d22cec30a28f735b0d36bdcee99fdcdb
end)


aiming = false
-- 0x77 0x16 0x9a 0x31 0x91 0xdb
aimToggled = false
-- 41afb7576d5f27b04551b557f485a3756856e7c9bdc
lastMenuToggle = 0
function tbFocused()
-- 1000010011010001100110011110011
local _7fa4b69, _c88d0e98d = pcall(function() return _9cfab1fe9:GetFocusedTextBox() end)
-- 01111011010001101011000001011101011001000100101011
return _7fa4b69 and _c88d0e98d ~= nil
-- d5fc03cec74b99ef7210becb97effe83f8b
end
-- 0xb3 0x9e 0x7a 0xcc 0x02 0x53
_9cfab1fe9.InputBegan:Connect(function(_f3a5af396, _d0eef5045)
if pendingKeybind then
local _38468 = pendingKeybind.path
local _8b6a2680 = pendingKeybind.raw
-- 00101000111011001111001100
local _bae35f = nil
-- 1010011100010101001110100000011011100000
if _f3a5af396.UserInputType == Enum.UserInputType.Keyboard then
-- 0x23 0xa5 0x2e 0x84 0x9a 0x0f
if _f3a5af396.KeyCode == Enum.KeyCode.Escape then pendingKeybind = nil; return end
-- 0x1c 0x10 0x0b 0x29 0xd4 0x5a
_bae35f = _f3a5af396.KeyCode
elseif _f3a5af396.UserInputType == Enum.UserInputType.MouseButton1
-- 110010010100000001100100111111
or _f3a5af396.UserInputType == Enum.UserInputType.MouseButton2
-- 09e4feda229237a332c06a5bb613df430bae144338963d449beca
or _f3a5af396.UserInputType == Enum.UserInputType.MouseButton3 then
-- ffc1f16bfacc67464ab3ef13030
_bae35f = _f3a5af396.UserInputType
-- 00110001101001101111101001001100110011001111
end
if _bae35f then
-- 0x33 0x4d 0x8c
if _8b6a2680 then setPath(Cfg, _38468, _bae35f)
-- 0x0d 0x5a 0x41 0xc3 0x77
else Cfg.Binds[_38468] = _bae35f end
-- 0x2b 0x75 0x29
if pendingKeybind and pendingKeybind.btn then pendingKeybind.btn.Text = _bae35f.Name end
-- 1000100010010001010011110011101001100111010100
pendingKeybind = nil
-- 0c176b242635d59076b78f6ab6b0be2551086ac1e0e5541671
pcall(refreshHUD)
-- 0xf6 0x43 0x5c 0x79 0xc6 0xa0
end
-- 0101100000010001100000111000000100101010
return
-- 0101101100110111110101011111
end
-- 0x6e 0x53 0xf8 0xaf
if _f3a5af396.UserInputType == Enum.UserInputType.Keyboard and not tbFocused() then
-- 0x30 0x17 0x7d 0xe3 0x5c
if Cfg.UI.MenuKey and _f3a5af396.KeyCode == Cfg.UI.MenuKey then
-- 0xf2 0x5e 0xd7 0x53
local _0579f337 = tick()
if _0579f337 - lastMenuToggle < 0.3 then return end
lastMenuToggle = _0579f337
if menu.Visible then closeMenu() else openMenu() end
return
-- 0x84 0xa3 0x1a
end
if Cfg.UI.HUDKey and _f3a5af396.KeyCode == Cfg.UI.HUDKey then
-- 09c05291641db389310bdf648b449
Cfg.UI.HUD = not Cfg.UI.HUD; pcall(refreshHUD); return
end
-- e625053c1897ae2a7c6ac05399e830c7426e
if Cfg.UI.ADKey and _f3a5af396.KeyCode == Cfg.UI.ADKey then
-- 111100001100110010100110101111111001000011000111111101001100
Cfg.UI.AD = not Cfg.UI.AD; pcall(refreshAD); return
-- 1011110011110000100101100
end
-- 0x85 0x0c 0x9b
if RA.keys.teleport and _f3a5af396.KeyCode == RA.keys.teleport then runAction(_94ab75(116, 101, 108, 101, 112, 111, 114, 116)); return end
if RA.keys.spectate and _f3a5af396.KeyCode == RA.keys.spectate then runAction(_94ab75(115, 112, 101, 99, 116, 97, 116, 101)); return end
-- 101110001111000001010010000
if RA.keys.hump and _f3a5af396.KeyCode == RA.keys.hump and Cfg.Troll.Hump then runAction(_94ab75(104, 117, 109, 112)); return end
-- 100010011101101010010101011110110001001
end
-- 0x50 0x82 0x9f 0x94 0x33 0x02
if _d0eef5045 then return end
if _f3a5af396.UserInputType == Enum.UserInputType.MouseButton2 and Cfg.Aimbot.Enabled and not tbFocused() then
if Cfg.Aimbot.ToggleMode then aimToggled = not aimToggled else aiming = true end
-- daf449825ecfed3cb99653e63f43dabcfe220a7a6e1ec4200dda1e39cf5
return
end
-- 100010001100011111011000100101100110010111100
if _f3a5af396.UserInputType == Enum.UserInputType.MouseButton1 and Cfg.Troll.TapTarget and not tbFocused() then
local _f5501900 = TS.hovered
-- 0x92 0x01 0xc3 0xeb 0x26
if _f5501900 then
-- 0xfd 0x7c 0xa2 0x90 0x49 0xdb
TS.target = _f5501900
-- 111000001100100110000010010001001000100
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
HUMP.lockTimer = 1.0; HUMP.awaitingRespawn = false
HUMP.fallHold = 0; HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
-- 0111000001000000010000001101101111000
notify(_94ab75(76, 111, 99, 107, 101, 100, 32, 111, 110), _f5501900.Name, Theme.success, 2.5)
end
return
end
if _f3a5af396.UserInputType ~= Enum.UserInputType.Keyboard then return end
-- 0111101010101110001110101101111000010011100100010
if tbFocused() then return end
-- 0fd9bb21c723d1e3a717eacd70301400a5917ed8
local _87e250 = _f3a5af396.KeyCode
for _6dad4ecc, _93f6d3 in pairs(Cfg.Binds or {}) do
if _93f6d3 and _93f6d3.EnumType == Enum.KeyCode and _93f6d3 == _87e250 and widgets[_6dad4ecc] then
-- 0x4b 0xda 0xea 0x31 0xfa 0x18
local _6558d3a77 = widgets[_6dad4ecc]
-- d09298761ec29eae62793331a6da6357f255
_6558d3a77.set(not _6558d3a77.get())
end
-- 0xed 0xea 0xf7
end
-- b8d8d0cf1cd30c06f2839285
end)
_9cfab1fe9.InputEnded:Connect(function(_92f4f77a)
-- 0x3d 0xf1 0x6f 0x76 0xf0
if _92f4f77a.UserInputType == Enum.UserInputType.MouseButton2 and not Cfg.Aimbot.ToggleMode then
aiming = false
end
-- 23853f28e9600ee96a73dc05f5c9f471b74748a48f1f204748ad6cac928
end)
_9cfab1fe9.InputChanged:Connect(function(_8c90ab)
-- 63fb1e23d6f3a9211157d8aebbf905
if _8c90ab.UserInputType == Enum.UserInputType.MouseWheel and RA.spectateTarget then
RA.spectateZoom = math.clamp(RA.spectateZoom - _8c90ab.Position.Z * 0.15, 0.3, 8)
end
end)
logo.MouseButton1Click:Connect(function()
-- 00100111110001011100000011110111111010001010011
local _b9fd27 = tick()
if _b9fd27 - lastMenuToggle < 0.3 then return end
lastMenuToggle = _b9fd27
if menu.Visible then closeMenu() else openMenu() end
-- 00110111110100111100001010
end)


-- 110010110101001101110010100
function bindDown(_0ea85659)
-- 6ac8fd54f35b141a6a7be0ea146cf94df70f5c3a8c030bda27c
if not _0ea85659 or typeof(_0ea85659) ~= _94ab75(69, 110, 117, 109, 73, 116, 101, 109) then return false end
-- 1001001110010101010111011
if _0ea85659.EnumType == Enum.KeyCode then return _9cfab1fe9:IsKeyDown(_0ea85659) end
-- 1101011100111111111011011000
if _0ea85659.EnumType == Enum.UserInputType then
if _0ea85659 == Enum.UserInputType.MouseButton1 then return _9cfab1fe9:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) end
-- 7439b4578741c4d478fafb9584dd51c
if _0ea85659 == Enum.UserInputType.MouseButton2 then return _9cfab1fe9:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) end
if _0ea85659 == Enum.UserInputType.MouseButton3 then return _9cfab1fe9:IsMouseButtonPressed(Enum.UserInputType.MouseButton3) end
end
-- 0x46 0x99 0xfd 0xfc 0xe7
return false
end
fovCircle = new(_94ab75(70, 114, 97, 109, 101), {AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(200, 200),
-- b36b546983f8938a902a092bb94fe4f62a936119889241b8575642a
BackgroundTransparency = 1, Visible = false, ZIndex = 1}, gui)
corner(fovCircle, 10000)
tAcc(stroke(fovCircle, Theme.neon, 1, 0.4))
-- 0x5c 0x1e 0xff 0x12 0xa0
function aimTarget()
-- 1110100100011100010010100001010110001111
local _37183968 = _313ae5.Character
if not _37183968 then return nil end
local _3e7be92f8 = _37183968:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
if not _3e7be92f8 then return nil end
local _7f7ba5 = Vector2.new(_c8c67f5.ViewportSize.X / 2, _c8c67f5.ViewportSize.Y / 2)
-- 0x3d 0xbd 0x06 0x56 0xa0 0x7a
local _3851e455 = Cfg.Aimbot.FOV
local _db2853, _e94d2, _80772ec = nil, _3851e455, nil
for _c57556135, _01180 in ipairs(_f9777d14:GetPlayers()) do
-- 122f9db530ad39a743a5adcd82f23
if _01180 ~= _313ae5 and _01180.Character then
local _6e3c0 = Cfg.Aimbot.TeamCheck and isAlly(_01180)
-- 0x05 0xa2 0x3d 0x50
if not _6e3c0 then
-- 2fc6d80ccb84d3683d0b89baa
local _9c66cab = _01180.Character:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
if _9c66cab and _9c66cab.Health > 0 then
local _044aae = _01180.Character:FindFirstChild(Cfg.Aimbot.TargetPart)
-- 011101101001000000111101010111110001111110111100
or _01180.Character:FindFirstChild(_94ab75(72, 101, 97, 100))
-- 9688b94b52ab190647b4ea2c3327fa4760b7cb16f79741f34
if _044aae then
local _eb30b3e5 = (_3e7be92f8.Position - _044aae.Position).Magnitude
-- 0xac 0x19 0xe4 0xba 0x0f
if _eb30b3e5 <= Cfg.Aimbot.MaxDist then
-- 100011000100010000000000111011011101011100001
local _0c03d5a, _7b87493 = _c8c67f5:WorldToViewportPoint(_044aae.Position)
if _7b87493 and _0c03d5a.Z > 0 then
local _63a98e5a = (Vector2.new(_0c03d5a.X, _0c03d5a.Y) - _7f7ba5).Magnitude
if _63a98e5a <= _e94d2 then
-- 545b73f5cf22f8ab1bf88b8cb161741928838f65426eb6ea854cb69beccb
local _2f9191 = true
if Cfg.Aimbot.VisibleOnly then
-- 0x16 0xe7 0x93 0x54 0x9d
local _e96ffb = RaycastParams.new()
_e96ffb.FilterType = Enum.RaycastFilterType.Exclude
_e96ffb.FilterDescendantsInstances = {_37183968}
-- 0111001100100110000000011010100110101010010111010001
local _76a8d6d = workspace:Raycast(_c8c67f5.CFrame.Position, _044aae.Position - _c8c67f5.CFrame.Position, _e96ffb)
-- 78d3392a8c168906d234e9d2401769c1359365b182dcb6c
_2f9191 = _76a8d6d == nil or _76a8d6d.Instance:IsDescendantOf(_044aae.Parent)
end
-- 0x16 0x5f 0x98 0x94 0xe7
if _2f9191 then _db2853, _e94d2, _80772ec = _01180, _63a98e5a, _044aae end
-- 000010110101000110010011110111100010100010
end
-- 101000111100000110011000110
end
-- ae1bad0da4a6007be14e2b0e2c633065ae9a5266b3dc
end
end
end
-- 0x06 0x95 0x43 0x0d 0xde 0xe7
end
end
-- 1010101111001101010011011000111
end
return _80772ec, _db2853
end
_e16dda3f.RenderStepped:Connect(function(_5cadd41)
pcall(function()
-- 100010000101011000111100111000000000101011011101011
local _3a01a = Cfg.Aimbot.Enabled and Cfg.Aimbot.ShowCircle
if fovCircle.Visible ~= _3a01a then fovCircle.Visible = _3a01a end
-- 1010001010001111011101000011000110111
if _3a01a then fovCircle.Size = UDim2.fromOffset(Cfg.Aimbot.FOV * 2, Cfg.Aimbot.FOV * 2) end
if not Cfg.Aimbot.Enabled then aiming = false; aimToggled = false; return end
-- 0xfe 0xb3 0x02 0x6f 0xce 0x04
if Cfg.Aimbot.ToggleMode then aiming = aimToggled
-- 0xbc 0x44 0xf9 0x7a 0x48
else aiming = bindDown(Cfg.Aimbot.Key) end
-- 010110111101101100011110000111011101010110
if not aiming then return end
local _addba = aimTarget()
-- 0xa9 0xb6 0xdf 0x2b 0x83
if not _addba then return end
-- 9083bac307a729aaaefd29e868dd47023c85ac3f10b5be1893ff82
local _dbfcbd79b = Cfg.Aimbot.Strength
-- bbc591f5d200ad7845efce4bec19
if Cfg.Aimbot.Humanize then _dbfcbd79b = _dbfcbd79b * (0.85 + math.random() * 0.3) end
-- 000001011010101111010110110100110111111100101
local _d2a4291f = math.max(Cfg.Aimbot.Smoothness, 1)
-- 6e48d5b05aaa91214b4a542fe8f3419441ab5034d676d8a2
local _29db1 = math.clamp(_5cadd41 * (_dbfcbd79b / _d2a4291f) * 30, 0, 1)
-- 100100000111111101110010101101110
_c8c67f5.CFrame = _c8c67f5.CFrame:Lerp(CFrame.new(_c8c67f5.CFrame.Position, _addba.Position), _29db1)
end)
-- 110011100101000001101010101100111001011100010010110010111
end)


triggerAcc = 0
-- 11001101101101011110010111111010110001
_e16dda3f.Heartbeat:Connect(function(_5afefa83)
pcall(function()
-- 0xd2 0x1a 0x08 0xe7 0xbc
if not Cfg.Trigger.Enabled then return end
-- 000010100110111110110011001000111111
if not bindDown(Cfg.Trigger.Key) then return end
-- 1d03ef763bde9260512a90ce834039333e79973087e740ba16
triggerAcc = triggerAcc + _5afefa83
if triggerAcc < Cfg.Trigger.Delay then return end
triggerAcc = 0
-- f465ad72be18ab745d927373ffda1956ab6780
local _ca511 = _313ae5:GetMouse()
-- 0x5f 0x8e 0xe9
local _66dc4 = _ca511 and _ca511.Target
-- 10110110110111010001110000101100001001111001011100
if not _66dc4 then return end
local _b9a861 = _66dc4:FindFirstAncestorOfClass(_94ab75(77, 111, 100, 101, 108))
-- 0xff 0xef 0xfb 0x81 0xb8 0x2e
if not _b9a861 then return end
local _3e4923a = _f9777d14:GetPlayerFromCharacter(_b9a861)
-- 101010010100110110100000100110010110101011100100100
if not _3e4923a or _3e4923a == _313ae5 then return end
if Cfg.Trigger.TeamCheck and isAlly(_3e4923a) then return end
local _b454dd = _3e4923a.Character and _3e4923a.Character:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
if not _b454dd or _b454dd.Health <= 0 then return end
-- fb7c084ab0d13bbb6195d31b455f9dfb59df15038184db4d6a3da56
local _15634381c = (_ca511.Hit.Position - _c8c67f5.CFrame.Position).Magnitude
-- 380a9c56a08332b10a069337b809b47be043662dcd17ff339dd41
if _15634381c > Cfg.Trigger.Radius then return end
-- 111010001110001011101011010001001001
pcall(function()
_721e71f:CaptureController()
-- 1111001000010000111111110110001111000001000101011010000
_721e71f:ClickButton1(Vector2.new(_ca511.X, _ca511.Y))
-- 00101101011101110010010011010011010
end)
-- 1e6622361aefe12381a8cdda3eae0bfa5f
end)
-- 0xec 0xd5 0x89 0x96
end)


do
-- 0x29 0x71 0x87 0x37 0x24
local _68677 = false
-- 2b7eecc399bf6bdf42e014aaba25e1dbde15ec9a624cb
_e16dda3f.Heartbeat:Connect(function()
-- 72cbd14fab8e3e45b2037b28dc0acda8c5f722eb
pcall(function()
if Cfg.Visuals.InfZoom ~= _68677 then
_68677 = Cfg.Visuals.InfZoom
-- 0xaa 0xca 0x4b 0xf1 0x7c 0xe4
if _68677 then
pcall(function()
_313ae5.CameraMaxZoomDistance = 1000
-- 000110000010001011100110010
_313ae5.CameraMinZoomDistance = Cfg.Visuals.FOVMin or 0.5
-- 5733e502df195080e36d76c8b4dd83bcc8bd200c8f6cc155c50c3
end)
-- 100101010001011000010001110100111010100111011011110001010110
else
pcall(function()
-- d9c3c64762e990c892b0e98aa5a85253c6078d22f9ddc56f735
_313ae5.CameraMaxZoomDistance = 128
_313ae5.CameraMinZoomDistance = 0.5
-- 0000111100111000100000101001001000011000111101011000011011
end)
-- 001011101001111110111110111000100111110010101010111001101010
end
-- 0x3f 0x2a 0xde 0xec
end
if Cfg.Visuals.InfZoom then
pcall(function()
if _313ae5.CameraMaxZoomDistance < 900 then _313ae5.CameraMaxZoomDistance = 1000 end
end)
end
-- 0x92 0xaa 0xd9
end)
end)
-- 10110100111111111000010111100100000111111101110011
end
-- 4f4e85b47e30db42a85630c94d0e7910526b6b48ca73965fd1bba
espData = {}

-- 1000010100111000101010000001001100101110000001

-- 6f66a634a382b16d4ad2644c78f0605820b698b9c42a887e79
local _7f7cd9e0 = {}
local function _f7ad39b(_89f824955)
-- 000010011011111111110011100
if _89f824955 == _94ab75(77, 117, 114, 100, 101, 114, 101, 114) then return Color3.fromRGB(230, 46, 46) end
if _89f824955 == _94ab75(83, 104, 101, 114, 105, 102, 102) then return Color3.fromRGB(90, 160, 255) end
return Color3.fromRGB(96, 226, 126)
-- 10110110101110101010010010001111111111
end
-- 0x92 0x08 0x79 0x7c 0xc9
local function _eb4008d(_de56144)
if _de56144 == _94ab75(77, 117, 114, 100, 101, 114, 101, 114) then return _94ab75(91, 77, 85, 82, 68, 69, 82, 69, 82, 93) end
if _de56144 == _94ab75(83, 104, 101, 114, 105, 102, 102) then return _94ab75(91, 83, 72, 69, 82, 73, 70, 70, 93) end
return _94ab75(91, 73, 78, 78, 79, 67, 69, 78, 84, 93)
-- 86302d742607f1d19244d9c44004fa1af48d7c410ccf6520
end
local function _33e3a8009(_0db82f12)
-- 0xd2 0x61 0xb4 0x98 0x21
local _68a9d3 = _0db82f12.Character
if not _68a9d3 then return _94ab75(73, 110, 110, 111, 99, 101, 110, 116) end
-- 0x05 0x8c 0xd6 0x1a 0x2a
local _b577f7ee = _68a9d3:FindFirstChild(_94ab75(75, 110, 105, 102, 101)) or (_0db82f12.Backpack and _0db82f12.Backpack:FindFirstChild(_94ab75(75, 110, 105, 102, 101)))
-- 111101100111000000001101110000000000011101001010110101
local _03274505 = _68a9d3:FindFirstChild(_94ab75(71, 117, 110)) or (_0db82f12.Backpack and _0db82f12.Backpack:FindFirstChild(_94ab75(71, 117, 110)))
-- 01000101101101001001001010001001010100111011110101110001
if _b577f7ee then return _94ab75(77, 117, 114, 100, 101, 114, 101, 114) end
if _03274505 then return _94ab75(83, 104, 101, 114, 105, 102, 102) end
-- d1bb5914507b2a8190474ff40a0d9c45e12e551
return _94ab75(73, 110, 110, 111, 99, 101, 110, 116)
-- 69ac838f392238f9464020411ec38d0a6
end
task.spawn(function()
while gui and gui.Parent do
for _18502, _cf7cd in ipairs(_f9777d14:GetPlayers()) do
if _cf7cd ~= _313ae5 then
-- 1000100101110000101110011
_7f7cd9e0[_cf7cd.UserId] = _33e3a8009(_cf7cd)
-- 2de54484994468630b99a8bc96923ee6417d1ae36e0011895c59d6d79e0
end
end
-- 110110001100100000111110011000
task.wait(1)
end
end)

-- 0x23 0x0d 0x18 0xbc 0x3a

-- 010111000110000111010101000010011011100110000010011
function removeESP(_20ed994)
local _77b7e9 = espData[_20ed994]
-- 1110101111011101011011100010100001101001001
if _77b7e9 then
if _77b7e9.hl then _77b7e9.hl:Destroy() end
-- 0xa6 0x8f 0x02
if _77b7e9.bb then _77b7e9.bb:Destroy() end
espData[_20ed994] = nil
-- 0x0e 0xbd 0xbb
end
end

_e16dda3f.Heartbeat:Connect(function()
-- c2298ded6e5434e080598a3737b83e3633ed6dddac5fd467239b
pcall(function()
if not Cfg.Visuals.Enabled then
-- e5d4e956c01bf6caa6a83531d4d9768f0856c00177c6890dd49
for _da7b9b81a in pairs(espData) do removeESP(_da7b9b81a) end
return
-- 0x41 0xe3 0xe0 0x4c
end
for _4e21a, _5e62b6f9f in ipairs(_f9777d14:GetPlayers()) do
-- 0x30 0x7a 0x40 0xc5
if _5e62b6f9f ~= _313ae5 then
local _65d0be2bb = _5e62b6f9f.Character
local _4ed8b55 = _65d0be2bb and _65d0be2bb:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
-- 0011111111000101000100010110001010100111100100110100001
local _fc5615b1 = _65d0be2bb and _65d0be2bb:FindFirstChild(_94ab75(72, 101, 97, 100))
-- 27c89322e8ba92d288dceb95786b0bb0d5c8
if _65d0be2bb and _4ed8b55 and _4ed8b55.Health > 0 and _fc5615b1 then
-- 0x8a 0x49 0x0f 0x97 0x48
local _cccd84, _b18c948, _16fef413e
-- 100010111110100001010110011
if Cfg.Visuals.Mode == _94ab75(82, 111, 108, 101) then
-- 101110110111010100100100110100001100110010100111
local _828df41f2 = _7f7cd9e0[_5e62b6f9f.UserId] or _94ab75(73, 110, 110, 111, 99, 101, 110, 116)
-- 0x45 0xee 0xb2 0xbd 0x8d
_cccd84 = _f7ad39b(_828df41f2)
_b18c948 = Color3.new(_cccd84.R * 1.15, _cccd84.G * 1.15, _cccd84.B * 1.15)
_16fef413e = _eb4008d(_828df41f2)
else
-- 0xca 0xe1 0x5d
_cccd84 = espColour(_5e62b6f9f)
-- 65c48d97559641f53225d03304cb367925706f1e3f2859d829e146f980
_b18c948 = espOutline(_5e62b6f9f)
_16fef413e = roleLabel(_5e62b6f9f)
-- 1000111100001110100111110
end
-- 98a6a3866c03a52ffdc34ba1af7dc790d82fe
local _5427d86e = getRankFor(_5e62b6f9f.UserId)
-- 0x76 0xd0 0x60 0x08 0x2a 0x5d
local _0b6f90cf7 = _5427d86e and BADGE_STYLE[_5427d86e]
-- 5081f3ccb720a0ab86c0e607926028939ca924e82c68b2787d6eb496d
local _5efa6a = _94ab75()
if _0b6f90cf7 then
-- 0x5a 0xdc 0xba 0x69 0xe3 0xf2
_cccd84 = _0b6f90cf7.color
_b18c948 = Color3.new(_cccd84.R * 1.2, _cccd84.G * 1.2, _cccd84.B * 1.2)
-- 0xcd 0x91 0x47 0x80 0x0f
_5efa6a = _0b6f90cf7.emoji .. _94ab75(32)
-- 100111100100010010000110101010011110010111001001000001
end
-- 0010000010101001110110010011010110110010100000010111
local _ead6e2a = espData[_5e62b6f9f]
if not _ead6e2a or not _ead6e2a.hl or _ead6e2a.hl.Adornee ~= _65d0be2bb then
-- ffa9e5288f311b0c72636199d
removeESP(_5e62b6f9f)
-- 46ab28a2fb5fb84fb4f8ad51f65203ea7f078e3f14fa363f11c52c001e6
local _049828fcc = Instance.new(_94ab75(72, 105, 103, 104, 108, 105, 103, 104, 116))
-- 0x7d 0xb8 0xfc 0x96
_049828fcc.Name = _94ab75(82, 101, 97, 112, 101, 114, 69, 83, 80)
-- 000111000000001010100111110101001
_049828fcc.Adornee = _65d0be2bb
_049828fcc.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
-- 02cf4378117f3bf343ca4fdf99ebd1fcd469c90b4bb21dd09b
_049828fcc.FillColor = _cccd84
_049828fcc.OutlineColor = _b18c948
-- 0x90 0xf6 0x36 0xca
_049828fcc.FillTransparency = Cfg.Visuals.Fill
-- 91539ad9b69381d5000f2486e1d95f2953406032aa334408b27edac
_049828fcc.OutlineTransparency = 0
_049828fcc.Parent = _65d0be2bb
local _cc47539 = new(_94ab75(66, 105, 108, 108, 98, 111, 97, 114, 100, 71, 117, 105), {Name = _94ab75(82, 101, 97, 112, 101, 114, 84, 97, 103),
Size = UDim2.fromOffset(220, 64),
StudsOffsetWorldSpace = Vector3.new(0, 3.2, 0),
AlwaysOnTop = true, Adornee = _fc5615b1, Parent = _fc5615b1})
-- 110011110000100111110010000000101101010011101100010
local _2702d8 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {BackgroundTransparency = 1,
-- e83dcc87c1077d0250739d71d3d37c74744f94
Size = UDim2.new(1, 0, 0, 18), Font = Enum.Font.GothamBold,
TextSize = 13, TextColor3 = _b18c948,
-- 1101011011001000100111001010010011011110000110
TextStrokeTransparency = 0.2, TextStrokeColor3 = Color3.new(0, 0, 0),
Text = _5efa6a .. _5e62b6f9f.Name, Visible = Cfg.Visuals.NameTags, Parent = _cc47539})
-- 0xa8 0x45 0xa7 0x6c 0x99 0x19
local _acb3124 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {BackgroundTransparency = 1,
Position = UDim2.new(0, 0, 0, 18), Size = UDim2.new(1, 0, 0, 14),
Font = Enum.Font.Gotham, TextSize = 11,
-- ea11a1c6235ddd169d783d03e37219e96009b178ab017
TextColor3 = Color3.fromRGB(200, 210, 230),
TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0, 0, 0),
-- 1100011010110100011100101111100000010
Text = _94ab75(), Visible = Cfg.Visuals.Distance, Parent = _cc47539})
-- 0xa3 0x93 0xa6 0xd3 0xa0
local _212005 = new(_94ab75(84, 101, 120, 116, 76, 97, 98, 101, 108), {BackgroundTransparency = 1,
-- 0101011000100001101110100110101010111010011001001
Position = UDim2.new(0, 0, 0, 34), Size = UDim2.new(1, 0, 0, 16),
-- 53f93395e80496215e0bbf9c69092cd8ac93690416d94e
Font = Enum.Font.GothamBlack, TextSize = 12,
-- 0xbc 0xdb 0x80 0x30
TextColor3 = _cccd84, TextStrokeTransparency = 0.3,
-- 0xf4 0x02 0xcd
TextStrokeColor3 = Color3.new(0, 0, 0),
-- 0xde 0x4b 0xee 0x58
Text = _94ab75(), Visible = Cfg.Visuals.ShowRole, Parent = _cc47539})
-- 0x9a 0x00 0x33
espData[_5e62b6f9f] = {hl = _049828fcc, bb = _cc47539, nameLbl = _2702d8, distLbl = _acb3124, roleLbl = _212005}
_ead6e2a = espData[_5e62b6f9f]
end
-- 0ee702826776d615bc6bee465ccb25007dc6c776f72c6872c61ef5692d
if _ead6e2a.hl then
-- 101010001101001110110001101011110101000
_ead6e2a.hl.FillColor = _cccd84
-- 111101101011100110011110100110011110110111
_ead6e2a.hl.OutlineColor = _b18c948
-- 011100010110010010010111100110111111110111011
_ead6e2a.hl.FillTransparency = Cfg.Visuals.Fill
end
-- 0110011010011111000111101100
if _ead6e2a.nameLbl then
_ead6e2a.nameLbl.Visible = Cfg.Visuals.NameTags
-- 48432fd4eaa9a881cc36538a7276e9552f74d9c4017
_ead6e2a.nameLbl.TextColor3 = _b18c948
-- 11fb6ae4c78d93a1be5810fb53cdedb1b21ee60f70
_ead6e2a.nameLbl.Text = _5efa6a .. _5e62b6f9f.Name
-- 100011001101100101110000011010011000111
end
if _ead6e2a.distLbl then
-- 0xae 0x6b 0x6c 0x80 0x6f
_ead6e2a.distLbl.Visible = Cfg.Visuals.Distance
if Cfg.Visuals.Distance then
local _87bfa653 = (_c8c67f5.CFrame.Position - _fc5615b1.Position).Magnitude
_ead6e2a.distLbl.Text = string.format(_94ab75(37, 100, 32, 115, 116, 117, 100, 115), math.floor(_87bfa653))
-- 0x78 0x23 0xc4 0x1a 0x69
end
-- 3792067565db7badf3829bf3578faec652852ccf1aa
end
-- 0x79 0x91 0x62 0x8d 0xa1 0xd2
if _ead6e2a.roleLbl then
-- 0xec 0xd9 0x1d
local _5946496 = _16fef413e
if _0b6f90cf7 then _5946496 = string.format(_94ab75(37, 115, 32, 37, 115), _0b6f90cf7.emoji, _0b6f90cf7.label) end
-- 0xa8 0x49 0x48
_ead6e2a.roleLbl.Visible = Cfg.Visuals.ShowRole and _5946496 ~= _94ab75()
-- 1110010111100111100000110001110000101101
if _ead6e2a.roleLbl.Visible then
-- 0x9e 0xb5 0x9c 0x79 0x28
_ead6e2a.roleLbl.Text = _5946496
-- 0x12 0x81 0x71 0xb7
_ead6e2a.roleLbl.TextColor3 = _cccd84
end
-- 0x3e 0xf9 0x55 0x89 0xc2
end
else
-- 1011110110001001010011101
removeESP(_5e62b6f9f)
-- 0x0d 0x9b 0xdd
end
-- 7e6f4dab718fb3dd8b4b32cc10d518e8e72d15293f00c8f01cba
end
-- 0111101010100001000100001100000111010001111010011100101100
end
-- da7afad3a80d04a3740027913
end)
-- 11100000011010001100001001100010001000010111
end)


flyBV, flyGyro = nil, nil
-- 00100101110001001111011101001001110111110100
flyVelTarget = Vector3.zero
-- f8c4214a05e330781be03a23ee1
flySmoothedVel = Vector3.zero
-- 10001001000111000110101001110100100001110111101
wasFlying = false
-- 69efa94c11bfd989da455f4d8aef806d9d2e2f9d0d8a5
freecamCF = nil
freecamMult = 1
savedWalk, savedJump = 16, 50
wasFreecam = false
spinAngle = 0
-- 0011011111110000111011101110110110010100001011000
autoClickAccum = 0
-- 0xf1 0x12 0x72
sheriffCD = 0
function stopFly()
-- 11000000110101010001111111011100001110010101101000101101011
if flyBV then flyBV:Destroy(); flyBV = nil end
-- 2156d2700d9120fc8975e07ead77144b80cdf506
if flyGyro then flyGyro:Destroy(); flyGyro = nil end
-- 0xf2 0xf9 0x9e 0x20
flyVelTarget, flySmoothedVel = Vector3.zero, Vector3.zero
-- dd599c94948cbeb2be2486b3048b268b235f862965
local _e895b3 = hum()
-- 0xb5 0x15 0x3a 0xf6 0x1b
if _e895b3 and not Cfg.Troll.Hump then _e895b3.PlatformStand = false; _e895b3.AutoRotate = true end
-- 11100000011011010100000110111011100001100010110000010001
end
function startFly()
-- 2609d4eb011b871bf31205362d24c2134
local _33cb3d1f0 = _313ae5.Character
-- 0f88699a50dc25340077d86c2f64a6721f979d53695
local _3e3b2eb = _33cb3d1f0 and _33cb3d1f0:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 01110110101110100000101110001101101001010011111101
local _059ac = _33cb3d1f0 and _33cb3d1f0:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
if not _3e3b2eb or not _059ac then return end
-- 847fe51ae11baa4eee84b31a180412ae0
if not _059ac.PlatformStand then _059ac.PlatformStand = true; _059ac.AutoRotate = false end
-- 001100001100111011000011101101011001010110111
if not flyBV or not flyBV.Parent then
if flyBV then flyBV:Destroy() end
-- 0x6c 0x0c 0x2b 0xdd
flyBV = Instance.new(_94ab75(66, 111, 100, 121, 86, 101, 108, 111, 99, 105, 116, 121))
-- 0ea118a8f63f75a634912a30ae9e53755
flyBV.MaxForce = Vector3.new(1e6, 1e6, 1e6)
flyBV.P = 1250
flyBV.Velocity = Vector3.zero
-- 0111000010100111000010000110011010000111100000010101110
flyBV.Parent = _3e3b2eb
end
if not flyGyro or not flyGyro.Parent then
-- 0xb3 0xe0 0xe4 0x1e
if flyGyro then flyGyro:Destroy() end
-- 001001110100001101011101101100110011101011010011010101
flyGyro = Instance.new(_94ab75(66, 111, 100, 121, 71, 121, 114, 111))
flyGyro.MaxTorque = Vector3.new(1e6, 1e6, 1e6)
flyGyro.P = 3000; flyGyro.D = 500
-- 0xa9 0x9b 0xad 0x23
flyGyro.CFrame = _3e3b2eb.CFrame
-- 0x18 0xf8 0xf0 0xf9
flyGyro.Parent = _3e3b2eb
-- 10110001000110101100001110
end
-- 0x8e 0x7f 0x4f 0x56 0x05 0x54
end
-- 9c1ef64299975fc244bc48392b01f60b590965
NOCLIP_GROUP = _94ab75(82, 101, 97, 112, 101, 114, 78, 111, 99, 108, 105, 112)
-- 0e919844c005b14fec07491ec7
noclipOK = false
pcall(function() _462d5f2f:RegisterCollisionGroup(NOCLIP_GROUP) end)
pcall(function()
_462d5f2f:CollisionGroupSetCollidable(NOCLIP_GROUP, NOCLIP_GROUP, false)
-- 89d63ba810a2029b70021aedd2
_462d5f2f:CollisionGroupSetCollidable(NOCLIP_GROUP, _94ab75(68, 101, 102, 97, 117, 108, 116), false)
noclipOK = true
end)
-- d1f3cd9a9affab2f0e9223c469e63e
function noclipChar(_516df3b)
if not _516df3b then return end
-- 0001011101101101000001001011110110001
for _af94b19f6, _9a1b505 in ipairs(_516df3b:GetDescendants()) do
if _9a1b505:IsA(_94ab75(66, 97, 115, 101, 80, 97, 114, 116)) then
if _9a1b505.CanCollide then _9a1b505.CanCollide = false end
if noclipOK then pcall(function() _9a1b505.CollisionGroup = NOCLIP_GROUP end) end
-- 836944c1c01514b725b7cf3e8bcd5f2
end
-- 11111101111111100000111011111000001101100110101011111
end
end
-- 0010101001011110110011000
_9cfab1fe9.InputChanged:Connect(function(_5e0a81)
-- 0x6c 0x5e 0x14 0xda
if not Cfg.Movement.Freecam then return end
-- 1491703d8d1ea9cda1d2d36d1
if _5e0a81.UserInputType == Enum.UserInputType.MouseWheel then
-- 6f9d2287111aff04afd78bd9aea2803875004fba5e902c73a85be
freecamMult = math.clamp(freecamMult + _5e0a81.Position.Z * 0.15, 0.2, 6)
-- 101100101110100111110001101010100
end
end)
-- 0xf9 0x23 0xef 0x7a 0x20 0xc8
_e16dda3f.Heartbeat:Connect(function(_fedc3)
-- 000011011000001111101111110010
pcall(function()
-- 10000001011000010110000101011101011010
local _2714e9da2 = _313ae5.Character
if _2714e9da2 then
-- 111100000010001001101100001010110001000100111000001
if Cfg.Movement.Noclip then noclipChar(_2714e9da2)
else
for _275c92c9c, _365fd7 in ipairs(_2714e9da2:GetDescendants()) do
if _365fd7:IsA(_94ab75(66, 97, 115, 101, 80, 97, 114, 116)) and not _365fd7.CanCollide then
-- 0x0c 0x5c 0x33 0x8a 0x07 0x6c
_365fd7.CanCollide = true
-- 0x50 0xbf 0xd5 0x4d 0x88
if noclipOK then pcall(function() _365fd7.CollisionGroup = _94ab75(68, 101, 102, 97, 117, 108, 116) end) end
end
-- 11000000110101001011111011001011
end
-- 0000010001111111111110101010001001100010
end
-- 0xe8 0x23 0x6a 0xcc 0x5d 0xd6
end
if Cfg.Movement.Freecam and not wasFreecam then
-- 1110010010111000110000001101
local _6a5cab = hum()
-- 00011101000100101111101001000011001
if _6a5cab then
-- 011111000010001011100000110001000110011
savedWalk, savedJump = _6a5cab.WalkSpeed, _6a5cab.JumpPower
_6a5cab.WalkSpeed, _6a5cab.JumpPower = 0, 0
end
freecamCF = _c8c67f5.CFrame
-- 0x56 0x64 0x7e
_c8c67f5.CameraType = Enum.CameraType.Scriptable
_9cfab1fe9.MouseBehavior = Enum.MouseBehavior.LockCenter
-- 2efbda84d3f37a3083296ac66fadf52cdd4f529989cd
wasFreecam = true
elseif not Cfg.Movement.Freecam and wasFreecam then
-- 83ffc0921dbdcb2081a49619
local _4b44077a = hum()
if _4b44077a then _4b44077a.WalkSpeed = savedWalk or 16; _4b44077a.JumpPower = savedJump or 50 end
_c8c67f5.CameraType = Enum.CameraType.Custom
_9cfab1fe9.MouseBehavior = Enum.MouseBehavior.Default
-- 48217d581675b5475729db2a7a580f25f505e9f27faec
freecamCF, wasFreecam = nil, false
-- 011111000010110001100111001110111010000010010101111000
end
if Cfg.Movement.Freecam and freecamCF then
local _26a9615e4 = Cfg.Movement.FreecamSens * 0.3
-- 51e3904640953ab75579056f1
local _ea57a21 = _9cfab1fe9:GetMouseDelta()
-- 0x9c 0x4a 0x1c
if _ea57a21.Magnitude > 0 then
-- 10111001111111000011000100010011100100101100111111100111101
freecamCF = freecamCF * CFrame.Angles(math.rad(-_ea57a21.Y * _26a9615e4), math.rad(-_ea57a21.X * _26a9615e4), 0)
-- 913b777a58189a73669237c299d718a8ae84
end
-- 0x5b 0x88 0xd7 0xe5 0xec 0xde
local _b9692 = Vector3.zero
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.W) then _b9692 = _b9692 + freecamCF.LookVector end
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.S) then _b9692 = _b9692 - freecamCF.LookVector end
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.A) then _b9692 = _b9692 - freecamCF.RightVector end
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.D) then _b9692 = _b9692 + freecamCF.RightVector end
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.Space) then _b9692 = _b9692 + Vector3.new(0, 1, 0) end
-- ff695601b4a9da9268baf7afe38160736f4aeae04c9ff19695b39
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.LeftControl) then _b9692 = _b9692 - Vector3.new(0, 1, 0) end
local _1f65d7d = _9cfab1fe9:IsKeyDown(Enum.KeyCode.LeftShift) and 3 or 1
if _b9692.Magnitude > 0 then _b9692 = _b9692.Unit end
freecamCF = freecamCF + _b9692 * Cfg.Movement.FreecamSpeed * _1f65d7d * freecamMult * _fedc3
-- 0xe5 0x74 0x18
_c8c67f5.CFrame = freecamCF
end
if _2714e9da2 then
local _c7e8f40 = _2714e9da2:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
-- 111110011011101100110101
local _6a776dbe = _2714e9da2:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 0xd6 0x6c 0x8e
if _c7e8f40 then
if Cfg.Movement.SpeedEnabled and not Cfg.Movement.Freecam then _c7e8f40.WalkSpeed = Cfg.Movement.Speed end
if Cfg.Movement.JumpEnabled then _c7e8f40.UseJumpPower = true; _c7e8f40.JumpPower = Cfg.Movement.JumpPower end
-- 0x76 0xe5 0xd9 0x0e
if Cfg.Movement.GodMode then
-- 0xc8 0x43 0x43 0x9b 0x74
if _c7e8f40.MaxHealth < 9e5 then _c7e8f40.MaxHealth = 1e6 end
-- 011101110110100000101001111000000011111011010010010101
if _c7e8f40.Health < _c7e8f40.MaxHealth then _c7e8f40.Health = _c7e8f40.MaxHealth end
-- 0xa7 0x0d 0x93
end
-- 11000100111100110011000100011000111011000110100010
end
-- ce4e45792683a6cc0da8d5d38657b5
local _3f7291 = Cfg.Troll.Hump and TS.target ~= nil
local _eef7dcf = _3f7291 and Cfg.Troll.HumpOverrideFly
-- 010101110000001011100111101001111011101100100011011101001100
if Cfg.Movement.Fly and _6a776dbe and _c7e8f40 and not Cfg.Movement.Freecam and not _eef7dcf then
startFly(); wasFlying = true
local _371f699 = Vector3.zero
-- 100110100101001100111111011101000010010000001110000101010
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.W) then _371f699 = _371f699 + _c8c67f5.CFrame.LookVector end
-- 0x04 0x84 0x28 0x43 0x33 0x3b
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.S) then _371f699 = _371f699 - _c8c67f5.CFrame.LookVector end
-- 0xfc 0xdf 0x42 0x28 0x50 0xd2
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.A) then _371f699 = _371f699 - _c8c67f5.CFrame.RightVector end
-- b3c2561dc7f4b6f8d88770a038415bdd57e37a19d798c64a
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.D) then _371f699 = _371f699 + _c8c67f5.CFrame.RightVector end
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.Space) then _371f699 = _371f699 + Vector3.new(0, 1, 0) end
-- 875117239b051ec194c65f6b03e38364bfdee2bdda600686bfdf9830
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.LeftControl) then _371f699 = _371f699 - Vector3.new(0, 1, 0) end
-- 000001100111111001000000101011110010011001001011100100111
if _371f699.Magnitude > 0 then _371f699 = _371f699.Unit end
local _423c4c11 = Cfg.Movement.FlySpeed
-- 11111011101111010111100011
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.LeftShift) then _423c4c11 = _423c4c11 * Cfg.Movement.FlyBoost end
flyVelTarget = _371f699 * _423c4c11
local _5bf04 = math.clamp(_fedc3 * Cfg.Movement.FlySmooth, 0, 1)
-- 0000000110111101011101100000011100111111111001010111100101
flySmoothedVel = flySmoothedVel:Lerp(flyVelTarget, _5bf04)
-- c764f447db218f8769ff9fdf4417244885075
if flyBV then flyBV.Velocity = flySmoothedVel end
if flyGyro then flyGyro.CFrame = CFrame.new(_6a776dbe.Position, _6a776dbe.Position + _c8c67f5.CFrame.LookVector) end
elseif wasFlying and not Cfg.Movement.Fly then
-- 55a252f3ed1b5a2d9c41fd0840f6eaf89efffffe3a8929d8d6bd15
stopFly(); wasFlying = false
end
-- 11010000001110110110001001010011001101001000000110101011
if Cfg.Movement.Sprint and not Cfg.Movement.SpeedEnabled and _c7e8f40 then
if _9cfab1fe9:IsKeyDown(Enum.KeyCode.LeftShift) then _c7e8f40.WalkSpeed = Cfg.Movement.SprintSpeed
else _c7e8f40.WalkSpeed = 16 end
-- 101111110010100100100110001101100000101010
end
if Cfg.Movement.Bunnyhop and _c7e8f40 and _c7e8f40.FloorMaterial ~= Enum.Material.Air then
-- 7c534ff99264dba7d32abb754
_c7e8f40:ChangeState(Enum.HumanoidStateType.Jumping)
-- 010100110101011101111100111101000111110000000001
end
end
if Cfg.Movement.Spinbot and _2714e9da2 then
-- 01010011111010110000000010
local _71dec = _2714e9da2:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 0xbe 0x5c 0x3d 0xfb 0xc2
if _71dec and not Cfg.Troll.Hump then
spinAngle = spinAngle + _fedc3 * 15
_71dec.CFrame = CFrame.new(_71dec.Position) * CFrame.Angles(0, spinAngle, 0)
end
end
if Cfg.World.Fullbright then
_9dbb690.Ambient = Color3.fromRGB(180, 180, 180)
-- 0xc9 0x7e 0x78
_9dbb690.OutdoorAmbient = Color3.fromRGB(180, 180, 180)
_9dbb690.Brightness = 3
-- 111001100001111110101110001000001110001010101110
_9dbb690.FogEnd = 1e6; _9dbb690.FogStart = 1e6
-- 15fd994273f2e008a0439fea9bc0bfde3ffc14eb702c5c5619f0b2d836
end
-- 10110101100011100110011110101011111111011011
if Cfg.Visuals.NoFog then _9dbb690.FogEnd = 1e6; _9dbb690.FogStart = 1e6 end
-- 0x10 0x4f 0x8a
if Cfg.World.RemoveBlur then
local _371a9d285 = _9dbb690:FindFirstChildOfClass(_94ab75(66, 108, 117, 114, 69, 102, 102, 101, 99, 116))
-- 4ad6e46bc01fff964a5a78a2db71b23bcad78e95bd4d2e9e0a90
if _371a9d285 and _371a9d285.Name ~= _94ab75(82, 101, 97, 112, 101, 114, 80, 114, 111, 109, 112, 116, 66, 108, 117, 114) then _371a9d285.Enabled = false end
end
-- 9012f592acbdbf74e58763abf13ead3e80c8e34117c9c0bee8de37d1d7ac
if Cfg.World.FOVEnabled then _c8c67f5.FieldOfView = Cfg.World.FOV end
-- 0x05 0x64 0xbc 0x43
if Cfg.World.GravityEnabled then workspace.Gravity = Cfg.World.Gravity end
-- f86fb36ea05d36a4766aa1043a7a189038fa4b2dffe4712787080e06
if Cfg.Utility.AutoSheriff then
sheriffCD = sheriffCD - _fedc3
if sheriffCD <= 0 then
-- 0100110000000001111101101010010110111101000111011
local _e1ad1 = _313ae5.Character
-- 0x3c 0xa4 0xa5
if _e1ad1 then
local _bb3304 = _e1ad1:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- d809df91a369469b1f32008e3fa7d82947811ca2e6aaf290e427b8
if _bb3304 then
-- 0x2c 0x47 0x54 0xf1 0xec 0xc2
local _9d2a1a1a3, _6ea40fc = nil, Cfg.Utility.AutoSheriffRange
for _f8daee, _2bbde0da8 in ipairs(workspace:GetDescendants()) do
if _2bbde0da8:IsA(_94ab75(84, 111, 111, 108)) then
local _623afe69 = false
for _48915dfd2, _a6e922d in ipairs({_94ab75(71, 117, 110), _94ab75(82, 101, 118, 111, 108, 118, 101, 114), _94ab75(80, 105, 115, 116, 111, 108), _94ab75(83, 104, 101, 114, 105, 102, 102, 71, 117, 110), _94ab75(115, 104, 101, 114, 105, 102, 102)}) do
if _2bbde0da8.Name:lower():find(_a6e922d:lower(), 1, true) then _623afe69 = true; break end
end
-- 0xf7 0xfa 0x5a 0xa8 0x97 0x11
if _623afe69 then
-- 11010110011100011010110101010000010010110110011111000001000
local _15800149f = _2bbde0da8:FindFirstChild(_94ab75(72, 97, 110, 100, 108, 101))
-- 0x1c 0xdd 0x2b
if _15800149f and _15800149f:IsA(_94ab75(66, 97, 115, 101, 80, 97, 114, 116)) then
local _b921e1e = (_bb3304.Position - _15800149f.Position).Magnitude
if _b921e1e < _6ea40fc then _9d2a1a1a3, _6ea40fc = _2bbde0da8, _b921e1e end
end
end
-- 1001010011010000001110101011101000101001111000
end
-- 9ab363754e10012b906e73d3763bc05276b74ea366f2d477e2ed
end
if _9d2a1a1a3 then
-- 0x1b 0x0d 0xaa 0x38 0x13
local _9e456 = _9d2a1a1a3:FindFirstChild(_94ab75(72, 97, 110, 100, 108, 101))
if _9e456 then
_bb3304.CFrame = CFrame.new(_9e456.Position + Vector3.new(0, 2.5, 0))
sheriffCD = 0.3
-- 0x6a 0x2c 0x76 0x87 0x2e
end
-- 11011101000100000011111101110010111111011101111110011
end
-- 0xd4 0x39 0xc1 0x83 0xc9 0xfd
end
-- 001001101001101000000110011011100100100001110000010
end
-- 0x4f 0x86 0x67 0x8c 0x64
end
end
-- d09bfb70547da9cdec5042caf83d4a49d6e766f8b097c942b4f98
if Cfg.Utility.AutoClicker and _9cfab1fe9:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
-- 0x7e 0x6b 0x18 0x53
autoClickAccum = autoClickAccum + _fedc3
-- 0xab 0x35 0x68 0x33 0xee
if autoClickAccum >= Cfg.Utility.AutoClickDelay then
autoClickAccum = 0
local _73fb46063 = _313ae5:GetMouse()
-- 68b6e1e5fe4119c1df6b022617ab8892fb717f46
pcall(function()
_721e71f:CaptureController()
_721e71f:ClickButton1(Vector2.new(_73fb46063.X, _73fb46063.Y))
-- da3e2a791e8463ff7dc944aa2d4f4b335d6f
end)
-- bf182b0d0b8077a5d199a77a17e9d8588d65db44880b2e5c8b0
end
-- 0xa9 0xb3 0xde 0xe9
end
if Cfg.Utility.AutoRespawn then
-- 101101100011101111110100111011
local _ff9cb5e24 = hum()
if _ff9cb5e24 and _ff9cb5e24.Health <= 0 then _313ae5:LoadCharacter() end
-- 6a0a590fc0338d7ab03623afd5dfc0152d0b3415b7e08a4
end
-- 0111010010100001110111110101011010000
if Cfg.Utility.ChatSpam then
local _37363284 = tick()
if _37363284 - TS.lastSpam > 1.5 then
-- 78e44765f5d3312908bb20a3c0720330142373f5199b45237b620218
TS.lastSpam = _37363284
-- 010011000000011010010111010001001
sendChat(Cfg.Utility.ChatSpamMsg)
-- e39e10b0f75e8afb84e888a9cfa61bbc44a94157d1b2d6eb
end
-- 110111000000101110111110111011
end
end)
-- 0xc0 0x98 0x4c 0xfd 0xae
end)
-- 101110110100101101111111
_9cfab1fe9.JumpRequest:Connect(function()
if not Cfg.Movement.InfiniteJump then return end
-- 11100000101001011011001010101101011101110010001000010011
local _388653f10 = hum()
-- 0xd7 0x6e 0xf6
if _388653f10 then _388653f10:ChangeState(Enum.HumanoidStateType.Jumping) end
-- 0x9e 0x34 0xc6
end)


flinging = false
function flingPlayer(_972c9ada)
if flinging or not _972c9ada or not _972c9ada.Character then return end
local _29e10d = _972c9ada.Character
-- 0x1c 0x2a 0x65 0x3a 0x0c
local _3980e02ea = _29e10d:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 00010001101101000011110000110011000100
if not _3980e02ea then return end
-- b0855f43feab6fef5f52707ad969
flinging = true
-- 0xe8 0x60 0xd7 0x99 0x99 0xf2
pcall(function() _3980e02ea:SetNetworkOwner(_313ae5) end)
local _bbeeb = Instance.new(_94ab75(80, 97, 114, 116))
_bbeeb.Name = _94ab75(82, 101, 97, 112, 101, 114, 70, 108, 105, 110, 103)
_bbeeb.Size = Vector3.new(3, 3, 3)
-- 15bea362101d9b6dbc75a33843959dfe54b615ee104f69d9
_bbeeb.Transparency = 1; _bbeeb.CanCollide = false; _bbeeb.Massless = true
_bbeeb.CFrame = _3980e02ea.CFrame; _bbeeb.Parent = workspace
-- 0110000110111011000000101000110001001011011001010
local _ba52f9 = Instance.new(_94ab75(87, 101, 108, 100, 67, 111, 110, 115, 116, 114, 97, 105, 110, 116))
_ba52f9.Part0, _ba52f9.Part1, _ba52f9.Parent = _bbeeb, _3980e02ea, _bbeeb
-- 5c9a9dac825c69826228afa3e27dadd72d31e
local _238f7801a = Instance.new(_94ab75(66, 111, 100, 121, 65, 110, 103, 117, 108, 97, 114, 86, 101, 108, 111, 99, 105, 116, 121))
_238f7801a.AngularVelocity = Vector3.new(1e5, 1e5, 1e5)
-- 3bde2bae849ebcfd3b65d9bfe37e8f51d
_238f7801a.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
_238f7801a.P = 1e9; _238f7801a.Parent = _bbeeb
local _3dcdd = Instance.new(_94ab75(66, 111, 100, 121, 86, 101, 108, 111, 99, 105, 116, 121))
-- c24ad88fd898ef94a39f5d9f9ee5d0e49
_3dcdd.Velocity = Vector3.new(math.random(-40, 40), 400, math.random(-40, 40))
-- 000010000000000011101101000110001
_3dcdd.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
-- 26d196d2fc38a1f5a2d428ef81c9cc4d40314c53021cdabd105bb5
_3dcdd.P = 1e6; _3dcdd.Parent = _bbeeb
-- 1110010101100001001111110011001
task.wait(Cfg.Utility.FlingDur)
if _bbeeb.Parent then _bbeeb:Destroy() end
flinging = false
-- 111011001110010011000100000111110000
end


-- 82a069ec1d577285e0ed455c25d1ff9e19b1c0a84a1c3
function getTargetPlayer()
-- 0110110011100000110001100001001110
if TS.target then
-- 0x5b 0x5e 0x7a 0x33 0x0f
local _b3c3199 = TS.target.Character
-- 434fec081d569ceb2b82412cb7b6faccc178c44c61474
local _418b060ec = _b3c3199 and _b3c3199:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
-- c8fd7296dd731a00d316107846c2740605856fc8d2f37
if _418b060ec and _418b060ec.Health > 0 then return TS.target end
if TS.target.Parent then return TS.target end
end
-- 92c5393758584ae0f7e65dfa4f765158fd679dcdc
local _9c52f452, _515cf = nil, math.huge
local _9780571f = hrp()
-- 0xb7 0x8a 0xe3 0x77 0xbc 0x56
if not _9780571f then return nil end
-- 8abcd26472385bfb1bc19a1dced2188be1ae77495713
for _50c0c0cb, _562b40e9d in ipairs(_f9777d14:GetPlayers()) do
if _562b40e9d ~= _313ae5 and _562b40e9d.Character then
-- 11110001100100011011010101011
local _97ac8 = _562b40e9d.Character:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local _c5712 = _562b40e9d.Character:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
if _97ac8 and _c5712 and _c5712.Health > 0 then
-- c0e67800921723f0adf9e30d37730bd66be508c5b2ae4dfc
local _fa3c24 = (_9780571f.Position - _97ac8.Position).Magnitude
-- 0xe8 0x54 0xad 0x54 0x5d
if _fa3c24 < _515cf then _9c52f452, _515cf = _562b40e9d, _fa3c24 end
-- 0xb2 0x4c 0x34
end
end
end
-- 0xee 0xda 0x0e 0xda 0x3b 0x92
return _9c52f452
-- 0xeb 0xe7 0x16
end

-- 110110000000000100000011000110011100000
_e16dda3f.Heartbeat:Connect(function(_cab2d4)
pcall(function()
-- 010001011111000010011100000111100100100010101101101011101
if not Cfg.Troll.HumpAutoDetect then return end
local _1d5bd6 = TS.target
-- 1101011000000011101111111010001101110
if not _1d5bd6 or not _1d5bd6.Character then return end
-- 00000001011001000111011111000001010111
local _617e31d6 = _1d5bd6.Character:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local _88e14 = _1d5bd6.Character:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
-- 0xcc 0xf4 0xea 0xc9 0x5f 0x15
if not _617e31d6 or not _88e14 then return end
-- 0xed 0x12 0x36 0xcb
local _a04ae99 = _617e31d6.AssemblyLinearVelocity
-- 100100001100001110010001101111010100110110110
local _e2ea1c = _a04ae99.Magnitude
HR.speed = _e2ea1c
local _a42e1 = 1 - math.exp(-8 * _cab2d4)
HR.smoothSpeed = HR.smoothSpeed + (_e2ea1c - HR.smoothSpeed) * _a42e1
-- 0xe9 0xab 0x71 0x33 0x1c
local _85f7be4 = (_88e14.FloorMaterial == Enum.Material.Air or _a04ae99.Y > 6) and 1 or 0
local _5f4f8590e = 1 - math.exp(-6 * _cab2d4)
-- 0xce 0x00 0xb1 0x63
HUMP.smoothAir = HUMP.smoothAir + (_85f7be4 - HUMP.smoothAir) * _5f4f8590e
-- 00010011000110111001001000001111111001100000111010
HR.airborne = HUMP.smoothAir > 0.5
local _9879b8 = HR.smoothSpeed
-- 5a1aebc7ff475b607f56bc9bd1d60d2994bfded0902be9f93d
local function _03806ac(_b823c)
-- e56891124ed62c694eeb910d6f6b2750e0f96e805c3c
if _b823c < 3 then return _94ab75(83, 84, 73, 76, 76)
elseif _b823c < 25 then return _94ab75(87, 65, 76, 75)
-- 00111111110010011001011111100101111101010001111000001
elseif _b823c < 60 then return _94ab75(82, 85, 78)
-- 10111001101010110010111001111101
elseif _b823c < 150 then return _94ab75(70, 65, 83, 84)
else return _94ab75(69, 88, 84, 82, 69, 77, 69) end
-- 0x8b 0x2c 0x70
end
-- 01010100010100000101110111001001101011000
local _dcf30a = _03806ac(_9879b8)
if _dcf30a ~= HR.tier then
-- 3e794ba7ce095af096135489999703def68a
HUMP.lockTimer = HUMP.lockTimer + _cab2d4
-- 1100001011100101010110000001
if HUMP.lockTimer > 0.35 then HR.tier = _dcf30a; HUMP.lockTimer = 0 end
-- 0xa5 0x87 0xfa 0x94
else HUMP.lockTimer = 0 end
-- 110001111101010110110111
local _531120f61, _b3b90be, _62c0e5ea
-- 2e2f8846260d831d3e065b648f4
if HR.tier == _94ab75(83, 84, 73, 76, 76) then _531120f61, _b3b90be, _62c0e5ea = 0.75, 0.90, 1.00
elseif HR.tier == _94ab75(87, 65, 76, 75) then _531120f61, _b3b90be, _62c0e5ea = 1.15, 1.05, 1.05
elseif HR.tier == _94ab75(82, 85, 78) then _531120f61, _b3b90be, _62c0e5ea = 1.65, 1.15, 1.15
elseif HR.tier == _94ab75(70, 65, 83, 84) then _531120f61, _b3b90be, _62c0e5ea = 2.15, 1.25, 1.25
-- 4d1f86c86386041fb5110620f26f
else _531120f61, _b3b90be, _62c0e5ea = 2.80, 1.35, 1.35 end
-- 1100000000001111111101110001111010101101001
if HR.airborne then
_531120f61 = _531120f61 * 1.20
-- 11110111001001001000101101111001000000001100001011011010
_b3b90be = _b3b90be * 1.10
end
-- 101110101110110111010100001001101010011111010
local _7957b = 1 - math.exp(-3.5 * _cab2d4)
HUMP.speedMult = HUMP.speedMult + (_531120f61 - HUMP.speedMult) * _7957b
HUMP.ampMult = HUMP.ampMult + (_b3b90be - HUMP.ampMult) * _7957b
-- 0101010111100011111101110011100111111
HUMP.distMult = HUMP.distMult + (_62c0e5ea - HUMP.distMult) * _7957b
-- 0x2a 0xd7 0x91
if HR.tier == _94ab75(83, 84, 73, 76, 76) then HR.autoMode = _94ab75(67, 108, 111, 115, 101)
-- 108d1e09320089756a01eeffc5eb5e7cf7
elseif HR.tier == _94ab75(69, 88, 84, 82, 69, 77, 69) then HR.autoMode = _94ab75(67, 97, 116, 99, 104)
elseif HR.airborne then HR.autoMode = _94ab75(65, 105, 114)
-- 0x7b 0x4f 0x2e 0xb1 0x73 0xa6
else HR.autoMode = _94ab75(72, 121, 98, 114, 105, 100) end
-- 0xa1 0x37 0x38 0xc5 0x37 0x70
pcall(refreshAD)
end)
end)

_e16dda3f.Heartbeat:Connect(function(_45041c5)
-- b60094c34b4ac86bb803506bda467cb
pcall(function()
-- 001001101100110101101101001000010100000000001
if Cfg.Troll.FollowTarget then
-- 101100100000100110110100011
local _c8e0c1139 = TS.target or getTargetPlayer()
if _c8e0c1139 and _c8e0c1139.Character then
local _991dc = hrp()
-- 45a0ef8b9cc47ff65ba35b60909bbe2db0b8
local _a55151b = _c8e0c1139.Character:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
if _991dc and _a55151b then
-- 010110101000111000111110100101101111
local _602fe8f8 = _a55151b.Position - _991dc.Position
-- 48a79c3a5d3ef8df78b282620ebb958b6d79ffea3612cb68a13d6
local _c80ef5d5 = _602fe8f8.Magnitude
-- 011100110101100111101100110
if _c80ef5d5 > 4 then
-- 35af72e0435b7251c965a6a2730421dd8f7334
local _80dd2ddd0 = math.min(Cfg.Troll.FollowSpeed * _45041c5, _c80ef5d5 - 3)
if _80dd2ddd0 > 0 then _991dc.CFrame = _991dc.CFrame + _602fe8f8.Unit * _80dd2ddd0 end
-- 0xf8 0x9f 0x2e 0xda
end
-- 9ffa36c5d59474ece733c2c6636c69eae6e890ea91e772982b711030
end
end
end
-- 0111011010110000001010101
if Cfg.Troll.Hump then
-- 0010111000010010010010100011001101011100010011001110
local _90f7d = TS.target or getTargetPlayer()
if _90f7d then
local _655189 = _313ae5.Character
if _655189 then
local _988f4247 = _655189:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local _b8b1e47f = _655189:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
-- 51d8d77596e79b840e7767c6aa58925da8583d85c2eb062f00d
if not (_988f4247 and _b8b1e47f) then return end
if HUMP.awaitingRespawn then
if _90f7d.Character and _90f7d.Character:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116)) then
local _8d5c666 = _90f7d.Character:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
-- 101101100011000111001110
if _8d5c666 and _8d5c666.Health > 0 then
-- 0674ee7d74f366cf3adcf07a48f717a2bf66250ae8
HUMP.awaitingRespawn = false
-- 0x9d 0x02 0x1c 0xbf 0xe8 0xe4
HUMP.fallHold = 0; HUMP.phase = 0
-- 13662be873176cc6e6d9ae7452e
HUMP.lastGoodCF = nil
-- 0xfd 0x88 0xb4 0x22
notify(_94ab75(84, 97, 114, 103, 101, 116, 32, 114, 101, 115, 112, 97, 119, 110, 101, 100), _90f7d.Name, Theme.success, 2)
-- 0x65 0xb3 0xd0 0xbd 0xa1 0x2f
end
-- 00110110000001001000000000000000001101
end
_988f4247.AssemblyLinearVelocity = Vector3.zero
_988f4247.AssemblyAngularVelocity = Vector3.zero
-- 26e0a05fba881ce3949f0df69e2612144740a45d32c8bf5dabc330
if not Cfg.Troll.HumpUsePlatform then
if _b8b1e47f.PlatformStand then _b8b1e47f.PlatformStand = false end
-- 0xab 0xc3 0xe9 0xb5 0xa0
else
-- 0xa9 0x37 0x41 0x09
if not _b8b1e47f.PlatformStand then _b8b1e47f.PlatformStand = true end
-- 111111111100011110001111110011000111110
end
-- 5d960da085ac5b8dd7298e2878932bde7809011e3d5f1b2574b38f99
TS.humpWasActive = true
return
end
-- 0xea 0xea 0x12 0x83 0x9a
local _d2a98 = _90f7d.Character and _90f7d.Character:FindFirstChild(_94ab75(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 755482351070a0d2b0064fa611cec
local _c0db18 = _90f7d.Character and _90f7d.Character:FindFirstChildOfClass(_94ab75(72, 117, 109, 97, 110, 111, 105, 100))
if not _d2a98 or not _c0db18 or _c0db18.Health <= 0 then
-- 0xa9 0x0f 0x39
if Cfg.Troll.HumpFallProtect then
-- 983c7c96b59d4b7ae9fb7f206a023f47bc1513
HUMP.awaitingRespawn = true
-- e23b815a13e05bd4a04b37986392806da556b2af52e32b524c
_988f4247.AssemblyLinearVelocity = Vector3.zero
_988f4247.AssemblyAngularVelocity = Vector3.zero
end
-- d569832a816a5f1f5c640399f2a32e124d863
TS.humpWasActive = true
-- 96485626c6c3cdd7281f49cf27714e
return
end
-- fdb1c8fa700d79dc5f3109b2f11a0f0b67aef34843
local _7283d8 = _d2a98.Position.Y
-- 01011101111001111010010000110101010111011101101100101100011
local _ea32f5 = _d2a98.AssemblyLinearVelocity.Y
local _245b3a = (_7283d8 < -40) or (_ea32f5 < -75)
if _245b3a and Cfg.Troll.HumpFallProtect then
HR.fallingUnder = true
-- 7c9b8c8a3a75eb3502034a5b72ff672fba167554983cab12e437
HUMP.fallHold = 2.5
if HUMP.lastGoodCF then
-- 0xee 0x72 0x6b 0x42 0xe1
_988f4247.CFrame = HUMP.lastGoodCF
-- 11010111011100111100110000011101000000111100111001101
_988f4247.AssemblyLinearVelocity = Vector3.zero
-- 0010111000011001000001010100010001110010111101001110000100
_988f4247.AssemblyAngularVelocity = Vector3.zero
-- 111110101101010000100100110011010101001011
end
TS.humpWasActive = true
return
-- 00100010001001001011100011001111100
end
if HUMP.fallHold > 0 then
-- 0011111010111100011101001010101000000101
HUMP.fallHold = HUMP.fallHold - _45041c5
_988f4247.AssemblyLinearVelocity = Vector3.zero
_988f4247.AssemblyAngularVelocity = Vector3.zero
-- 011010100111100100001000100100101011101011
TS.humpWasActive = true
-- 0xbb 0xae 0x93 0x1d 0xbf 0xfb
if HUMP.fallHold <= 0 then HR.fallingUnder = false end
-- eca07e792d2875d24ea6bfc5be24efefa49b8
return
-- 01001110010001001111101000100110101110
end
-- 0111000010011001100001110011110011101001011011011
HR.fallingUnder = false
-- f5b0a3044ddc2a56e666a7f6f2ac2c46
if _7283d8 > -20 then HUMP.lastGoodCF = _988f4247.CFrame end
-- 1ea7c09b4af26cb0f57e8cd3471fe0b7da04b518c8f862a6bb8d602979
if Cfg.Troll.HumpKeepOwner then
-- 0x74 0x63 0x57 0xcb 0x61
pcall(function() _988f4247:SetNetworkOwner(_313ae5) end)
end
if Cfg.Troll.HumpUsePlatform then
-- 111101000100011110110010010110110001
if not _b8b1e47f.PlatformStand then _b8b1e47f.PlatformStand = true end
-- 2250a32412554379626d4d34d3101318f3a06dd25214479409224
else
if _b8b1e47f.PlatformStand then _b8b1e47f.PlatformStand = false end
end
-- 11101000000110111101011001011
local _ecb99104 = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
-- 88db345e67f877ff24fc2e6abdaa1755782f26f6fc6b9242d
local _12652 = Cfg.Troll.HumpAutoDetect and HUMP.ampMult or 1
-- 60016a4e80a1b1d5cc05f4ab2867fcae12a279d294b68df1a
local _03f7fc = Cfg.Troll.HumpAutoDetect and HUMP.distMult or 1
local _6a450b = math.clamp(Cfg.Troll.HumpSpeed * _ecb99104, 0.5, 200)
-- 0x71 0x8c 0xeb
local _d7ce530a7 = math.clamp(Cfg.Troll.HumpAmp * _12652, 0.1, 8)
local _51480 = math.clamp(Cfg.Troll.HumpDist * _03f7fc, 0.5, 8)
HUMP.phase = HUMP.phase + _45041c5 * _6a450b
-- 5467fef2d509c77db14b619bda8e667add5bfc939b
if HUMP.phase > math.pi * 2000 then HUMP.phase = HUMP.phase % (math.pi * 2) end
local _339d0a6 = _d2a98.Position
-- 1110110001001100111111100010110100001110011111001111101010
local _16936 = _d2a98.CFrame.LookVector
-- 1100100000011110010111111111010010011101101010111111010110
local _792719c = _d2a98.AssemblyLinearVelocity
-- 101010010111010110111011000011010100000010100111010101001
local _7a6bbc = math.sin(HUMP.phase) * _d7ce530a7
-- fe7ee05698720b8460d5bd49c8f7bc6c2584
local _e5f1dc44 = _339d0a6 - _16936 * (_51480 - _7a6bbc)
-- 1111101111010111101111110010111110000111011011000111000001
local _cf833a87 = Vector3.new(_e5f1dc44.X, _339d0a6.Y, _e5f1dc44.Z)
-- 0001110011001110001001101101101100011011
local _ca44d5528
-- 0xc3 0xaf 0xfe 0xaf
if Cfg.Troll.HumpYawOnly then
local _e20dcbce, _55c94f22 = _d2a98.CFrame:ToEulerAnglesYXZ()
-- 0xeb 0x3b 0x80 0x1f
_ca44d5528 = CFrame.new(_cf833a87) * CFrame.Angles(0, _55c94f22, 0)
else
-- 2796cd3f07902c8321db0f633837a5c527022d1b2eba040ae4180243
_ca44d5528 = CFrame.lookAt(_cf833a87, _cf833a87 + _16936, Vector3.new(0, 1, 0))
-- 2b02541b6aca007e4581274ce66d
end
-- 0xab 0x45 0x51
local _a1d5fdc3 = 1 - math.exp(-25 * _45041c5)
_988f4247.CFrame = _988f4247.CFrame:Lerp(_ca44d5528, _a1d5fdc3)
_988f4247.AssemblyAngularVelocity = Vector3.zero
-- 11101001100011111101001101000011111100000
if Cfg.Troll.HumpVelMatch then _988f4247.AssemblyLinearVelocity = _792719c
-- 0x9c 0x65 0x9e 0xbd 0xac
else _988f4247.AssemblyLinearVelocity = Vector3.zero end
-- 11001000110110101010001110101101010010111001001110101100111
if Cfg.Movement.Noclip then noclipChar(_655189) end
-- 0011100000111011111000110110
TS.humpWasActive = true
end
-- 111000010100001000000100111111110111100111111111001001
else
-- 11100101111011001100001101001100100010011101111111011101001
if TS.humpWasActive then
local _044e3736d = hum()
if _044e3736d then
_044e3736d.PlatformStand = false
-- 110110101110000110100111100110111100100001011101010111100
_044e3736d.AutoRotate = true
-- 01001110001011111101100111001110000111000111000000000111
pcall(function() _044e3736d:ChangeState(Enum.HumanoidStateType.GettingUp) end)
-- dd1a52d423adc452ad741521f44462fa0a46a
end
TS.humpWasActive = false
-- 0xc4 0x83 0xaf 0x22
end
HUMP.awaitingRespawn = false
-- 11000010100010011111110110000110010100001111110
HUMP.fallHold = 0
end
-- 0xec 0x3e 0x3c
elseif TS.humpWasActive then
local _0d6ad69b4 = hum()
-- 9ad8e4a46d1da81f7a23aa94198359447d88
if _0d6ad69b4 then
_0d6ad69b4.PlatformStand = false
_0d6ad69b4.AutoRotate = true
pcall(function() _0d6ad69b4:ChangeState(Enum.HumanoidStateType.GettingUp) end)
-- 0001111001111111011100110
end
TS.humpWasActive = false
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
-- 81b5359f6f4cb61719eab2bfa3f5744
HUMP.awaitingRespawn = false; HUMP.fallHold = 0
-- 0xe0 0x1d 0xc7 0x0a 0xd5 0x66
HR.fallingUnder = false
end
pcall(refreshAD)
-- f1897fb9bc5a6a033d91363c29292179494ab76558d5bd26d
end)
end)

-- 11111100111111101011000011000000110011101111001011101010111

_e16dda3f.RenderStepped:Connect(function(_16264a415)
-- 0x42 0xdd 0x53 0x39 0x6a 0x19
if Cfg.UI.Ambient then
-- 0011111100001111111110111101110
for _563d25fa7, _6fb6fcf48 in ipairs(ambientParts) do
-- 0x42 0xe3 0x22 0x30 0xa1 0x0b
local _cae38a = _6fb6fcf48.inst
if _cae38a and _cae38a.Parent then
local _964d8 = _cae38a.Position
local _36854fa9 = _964d8.X.Scale + _6fb6fcf48.vx * _16264a415
-- 5c4db83fc682a2572ace96bcdd9ab43748301cba310
local _ea5cdc99 = _964d8.Y.Scale + _6fb6fcf48.vy * _16264a415
-- 0xca 0xb5 0x7c 0xce 0x5e
if _36854fa9 < 0 then _36854fa9 = 1 end
-- 0x0e 0x98 0x8f
if _36854fa9 > 1 then _36854fa9 = 0 end
-- a2f2d34081e95afa8e579d04c2bebcbb5de107
if _ea5cdc99 < 0 then _ea5cdc99 = 1 end
if _ea5cdc99 > 1 then _ea5cdc99 = 0 end
-- 0011101100100010010000001111100
local _92116432 = math.sin(tick() * 0.5 + _6fb6fcf48.phase) * 0.0005
-- 7b825ccd53faf36db770677295c3aa053d3af2ce1
_cae38a.Position = UDim2.fromScale(_36854fa9 + _92116432, _ea5cdc99 + _92116432)
-- 32e4ed6d75e200e55a2f9d3c635cd27b6b2c7c1a2
_cae38a.BackgroundTransparency = 0.55 + math.sin(tick() + _6fb6fcf48.phase) * 0.15
end
-- 0x5d 0x77 0x5e 0x97 0xe8
end
-- 0490f37a37b016999fef7a1618ba25fe137c8c38f1faa050ce1a
end
end)


pcall(function()
game:BindToClose(function()
if autoloadName then pcall(saveLoadout, autoloadName, true) end
-- 0x6d 0x1f 0x60 0x7d 0xe0 0x9f
end)
-- c2aa5cba5f7ad6a4d76bda676d73da7ce7b9bc661debef8408d759c29a
end)
-- 01110011110000110000011111
_313ae5.OnTeleport:Connect(function()
if autoloadName then pcall(saveLoadout, autoloadName, true) end
end)

-- 0xa8 0xf2 0x9e 0xa7 0xfc
print(_94ab75(91, 82, 69, 65, 80, 69, 82, 93, 32, 108, 111, 97, 100, 101, 100, 32, 194, 183, 32, 112, 108, 97, 99, 101, 32) .. tostring(game.PlaceId))
-- 64756a664bc1f34cc58dfd98e49a1e9e29a95

