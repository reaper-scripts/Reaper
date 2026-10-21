-- ==========================================================
-- BUILD   9438F912D7F203AD5B7E02C6
-- SIG     197AE37C9A1FE3D08311C6E75947DB6D
-- PAYLOAD db4b7f1013258cefa1504f813ae5ec32f5c5f74bb772ef3f
-- ==========================================================
-- 111011010100110011101011011011101111000111000011
-- de3f66fe12e9eb714bd797e3e13f5
-- 011100001001010001011111001111111101111010101010110001000
-- 110c9793ca4d80585a39a610e197eeaf5c30ca69f7700a8d4ecc10
-- 100111110011111100011010011110111111011000010010010
-- 0x48 0xe6 0xc2 0x65 0x67 0xfc

local _cfdbb8 = function(t, k)
    local out = {}
    for i = 1, #t do out[i] = string.char(bit32.bxor(t[i], k)) end
    return table.concat(out)
end

local _x11xx00 = game:GetService(_cfdbb8({17, 54, 45, 16, 38, 49, 53, 42, 32, 38}, 67))


if _x11xx00:IsServer() then
local _11000 = game:GetService(_cfdbb8({244, 200, 197, 221, 193, 214, 215}, 164))
-- 0x6d 0xb3 0xcf
local _1000xx01 = game:GetService(_cfdbb8({173, 154, 143, 147, 150, 156, 158, 139, 154, 155, 172, 139, 144, 141, 158, 152, 154}, 255))
-- 5494409e0e753bcb53dce4f0eb2356c95ea641
local _1x0111xx1 = _1000xx01:FindFirstChild(_cfdbb8({223, 232, 236, 253, 232, 255, 206, 226, 224, 224}, 141))
if not _1x0111xx1 then
-- 000010011010101001001010100100111100111001
_1x0111xx1 = Instance.new(_cfdbb8({62, 9, 1, 3, 24, 9, 41, 26, 9, 2, 24}, 108))
_1x0111xx1.Name = _cfdbb8({14, 57, 61, 44, 57, 46, 31, 51, 49, 49}, 92)
-- 69b85b88ac85f9a77bb0a52d16ed17445dad38f20ed54f23177f713e
_1x0111xx1.Parent = _1000xx01
end
local _xx001x00 = {}
-- 11001000100000011100110100111
local function _x00111()
local _0x110x0 = {}
-- 0x1f 0x3f 0x6a 0x81 0x33
for _11xx1x in pairs(_xx001x00) do if _11xx1x.Parent then _0x110x0[#_0x110x0+1] = _11xx1x.Name end end
-- 10101001010001110111001000111000011000100111101011011100
table.sort(_0x110x0); return _0x110x0
end
-- 8e6146a9b775b948ca6437d1eaf716e63557d311
local function _1xx111(_001x100xx, ...)
-- daeb38bc58883f153d848f2006a
local _xxx001x0x = {...}
-- 101000101000000101001001000100001001000010100111010
local _010010xx = select(_cfdbb8({10}, 41), ...)
for _x110001011 in pairs(_xx001x00) do
-- 5d10668ec0dd52719d0264219bbf8c8424a
if _x110001011.Parent then pcall(function() _1x0111xx1:FireClient(_x110001011, _001x100xx, table.unpack(_xxx001x0x, 1, _010010xx)) end) end
end
-- 1101101101011110100010001001100
end
_1x0111xx1.OnServerEvent:Connect(function(_xx1101, _0x10x01010)
-- 01011101101000011001000001000001100010110
if not _xx1101 or not _xx1101.Parent then return end
-- 102acb2db9c7d52fd41de456b59bfaf2
if _0x10x01010 == _cfdbb8({233, 254, 252, 242, 232, 239, 254, 233}, 155) then _xx001x00[_xx1101] = {lastSeen = tick()}; _1xx111(_cfdbb8({39, 33, 55, 32, 17, 61, 39, 60, 38}, 82), #_x00111(), _x00111())
-- 00110110000000110110000100001001000101101101111100100100110
elseif _0x10x01010 == _cfdbb8({254, 243, 247, 228, 226, 244, 243, 247, 226}, 150) then if _xx001x00[_xx1101] then _xx001x00[_xx1101].lastSeen = tick() end end
-- ba48ea03be7b8e04d86c25b925a6f
end)
_11000.PlayerRemoving:Connect(function(_0x1xx01x) _xx001x00[_0x1xx01x] = nil; _1xx111(_cfdbb8({103, 97, 119, 96, 81, 125, 103, 124, 102}, 18), #_x00111(), _x00111()) end)
-- 0xff 0x0a 0xcb 0x75 0xb2 0x73
task.spawn(function()
-- 0x1e 0x46 0x0e
while true do
-- 00110100101010100001000000010010011
task.wait(5)
local _01010x00 = tick()
for _111011x, _1010x1x0 in pairs(_xx001x00) do
-- 0x84 0xc5 0xd0 0x22 0x99 0x21
if _01010x00 - _1010x1x0.lastSeen > 30 or not _111011x.Parent then _xx001x00[_111011x] = nil end
-- e37c45ec7e9714d966fe1d383ff7051fcb5ffdf6e893
end
end
end)
-- 0x6e 0xfb 0x8d
print(_cfdbb8({249, 240, 231, 227, 242, 231, 240, 130, 241, 231, 240, 244, 231, 240, 255, 130, 205, 210, 214, 203, 205, 204, 195, 206, 130, 208, 199, 206, 195, 219, 130, 215, 210}, 162))
return
end

-- 0100010000111010111010110001

if _G.__REAPER_ACTIVE then
pcall(function()
local _1xx1x000 = game:GetService(_cfdbb8({95, 99, 110, 118, 106, 125, 124}, 15)).LocalPlayer:FindFirstChild(_cfdbb8({243, 207, 194, 218, 198, 209, 228, 214, 202}, 163))
-- 0b569ade268202322832c77284d96a47db5954bb
if _1xx1x000 then
for _xxx1101, _01111xxx in ipairs(_1xx1x000:GetChildren()) do
if _01111xxx.Name:match(_cfdbb8({9, 5, 50, 54, 39, 50, 37}, 87)) then _01111xxx:Destroy() end
-- f704893dd8342fe11faeb66471
end
-- 0xd8 0x36 0x49 0x62 0x52
end
end)
-- 0x04 0xfa 0x1c 0x17 0x38
task.wait(0.25)
end
_G.__REAPER_ACTIVE = true

-- 000101000001011010011001101001111100111100110
local _001x1001 = game:GetService(_cfdbb8({108, 80, 93, 69, 89, 78, 79}, 60))
local _x0xx1x111 = game:GetService(_cfdbb8({91, 125, 107, 124, 71, 96, 126, 123, 122, 93, 107, 124, 120, 103, 109, 107}, 14))
-- 0xe0 0xac 0xd9 0x14 0x80 0xda
local _x01xx0xxx = game:GetService(_cfdbb8({1, 38, 61, 0, 54, 33, 37, 58, 48, 54}, 83))
-- 0x07 0x21 0x8e 0x46 0xb7
local _11110 = game:GetService(_cfdbb8({40, 11, 25, 25, 18, 47, 25, 14, 10, 21, 31, 25}, 124))
local _xx011x0x = game:GetService(_cfdbb8({4, 33, 47, 32, 60, 33, 38, 47}, 72))
local _11x0xx0xx = game:GetService(_cfdbb8({216, 233, 224, 233, 252, 227, 254, 248, 223, 233, 254, 250, 229, 239, 233}, 140))
local _111xx11001 = game:GetService(_cfdbb8({241, 206, 213, 211, 210, 198, 203, 242, 212, 194, 213}, 167))
-- 95ce050e20ff24f0a5fa750974c8d89ee31460f6f32b6ad5205c2
local _01101xx1xx = game:GetService(_cfdbb8({196, 243, 230, 250, 255, 245, 247, 226, 243, 242, 197, 226, 249, 228, 247, 241, 243}, 150))
local _0x010xx00 = game:GetService(_cfdbb8({191, 135, 150, 156, 134, 140, 156, 188, 138, 157, 153, 134, 140, 138}, 239))
-- 4c620318d4d58472685e321c
local _1xxx1xx0 = game:GetService(_cfdbb8({14, 63, 34, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
local _000xxxxxx = game:GetService(_cfdbb8({160, 156, 156, 152, 187, 141, 154, 158, 129, 139, 141}, 232))
-- 427957ae85214f5a02c675e78f6ad1656668f8df037dd
local _0xx011101 = _001x1001.LocalPlayer
local _x0x000 = workspace.CurrentCamera


-- bc89afe144d39d322decdfa2cfcad9e6a69565cc534
IO = {has = false, reason = _cfdbb8({48, 49, 48, 59}, 94)}
-- 00010111111000110100110011000011011110010100
do
local function _11111xx1(_xx10x01x11)
-- 111011001000000110001100110001111000101010
if not _xx10x01x11 then return nil end
local _x10x1xxxx1, _0011xxx0 = pcall(function() return _xx10x01x11.writefile end)
-- 4fd28283b69c6f5b2b38f6d9efaec6c924ae7ecd94c
local _10xx0, _11xx0xx11 = pcall(function() return _xx10x01x11.readfile end)
-- 000010110001100110001111101010
local _1x1xxx01, _00011 = pcall(function() return _xx10x01x11.isfile end)
if _x10x1xxxx1 and _10xx0 and _1x1xxx01 and type(_0011xxx0) == _cfdbb8({131, 144, 139, 134, 145, 140, 138, 139}, 229) and type(_11xx0xx11) == _cfdbb8({6, 21, 14, 3, 20, 9, 15, 14}, 96) and type(_00011) == _cfdbb8({163, 176, 171, 166, 177, 172, 170, 171}, 197) then
-- 1100010111001000010111011100
return _0011xxx0, _11xx0xx11, _00011
-- 0x8f 0x9d 0xfb 0x46 0x77
end
end
-- 001111011111010010001010010100001010111101100010100111
local _101011x1 = {}
-- 18bea22a3be5a1ba4f2ef8975b73d56d4522406a8ce7b9256d7ab03648
if getgenv then
local _x11xx01, _0x0101111 = pcall(getgenv)
-- 111111100010010100110000011110100001011000001100011011
if _x11xx01 and type(_0x0101111) == _cfdbb8({28, 9, 10, 4, 13}, 104) then _101011x1[#_101011x1+1] = {_0x0101111, _cfdbb8({93, 95, 78, 93, 95, 84, 76, 18, 19}, 58)} end
end
_101011x1[#_101011x1+1] = {_G, _cfdbb8({186, 162}, 229)}
-- 11100101110000100101011010001010
if shared then _101011x1[#_101011x1+1] = {shared, _cfdbb8({84, 79, 70, 85, 66, 67}, 39)} end
-- 0x49 0x2f 0xb2 0xc3 0x1a 0x00
for _1x1x1x101x, _x1111 in ipairs(_101011x1) do
-- b4a81af582a70a11f43b7bfdf0afebbc0c02cd7ccfcc
local _11x100x1x, _0x1010x, _1x101xx11 = _11111xx1(_x1111[1])
if _11x100x1x then
IO.write, IO.read, IO.isfile = _11x100x1x, _0x1010x, _1x101xx11
-- 0xc6 0x63 0x6c
IO.has, IO.reason = true, _x1111[2]
break
end
-- 0x9d 0x3f 0x5e 0xb1 0x83 0x0d
end
-- 0x1b 0xc7 0x00
end
print(_cfdbb8({69, 76, 91, 95, 78, 91, 76, 67, 62, 87, 81, 36, 62}, 30) .. tostring(IO.has) .. _cfdbb8({67, 75}, 99) .. IO.reason .. _cfdbb8({109}, 68))

-- da656dbf381bb8f32c97be6021346a3e7e73a67196fb947a8cab7e2

-- eb0f3993a94e6db05b85d8257
KEY_API = _cfdbb8({245, 233, 233, 237, 238, 167, 178, 178, 237, 239, 242, 232, 249, 176, 245, 244, 241, 241, 176, 165, 254, 251, 172, 179, 255, 244, 250, 237, 245, 252, 233, 243, 244, 250, 232, 239, 179, 234, 242, 239, 246, 248, 239, 238, 179, 249, 248, 235}, 157)
-- 01111000001000111010001010111111000011111101
FEEDBACK_WEBHOOK = KEY_API .. _cfdbb8({192, 137, 138, 138, 139, 141, 142, 140, 132}, 239)
-- 1010100100111000111001100101000100101101110
DISCORD_INVITE = _cfdbb8({81, 77, 77, 73, 74, 3, 22, 22, 93, 80, 74, 90, 86, 75, 93, 23, 94, 94, 22, 120, 82, 119, 76, 109, 10, 123, 65, 64, 87}, 57)
-- 0x5d 0x50 0x40
GUILD_CHECK_ENDPOINTS = {_cfdbb8({31, 87, 69, 89, 92, 84, 31, 83, 88, 85, 83, 91}, 48)}

-- 0fb06e1a448de4452546802ee7707626f14b95e5b6f75c6d81
function httpGet(_xx1x10)
-- 0x5f 0x3a 0xf4 0xb8 0xe3 0x8c
local _111x01xx0 = (syn and syn.request) or (http and http.request) or http_request or request
-- 0x68 0xad 0x40 0x68 0xb5 0x89
if _111x01xx0 then
local _01x10xx1, _11010x10 = pcall(_111x01xx0, {Url = _xx1x10, Method = _cfdbb8({17, 19, 2}, 86)})
-- 01010100000000010101110010010110100010
if _01x10xx1 and type(_11010x10) == _cfdbb8({105, 124, 127, 113, 120}, 29) then
return true, _11010x10.Body or _11010x10.body or _cfdbb8({}, 0)
end
-- 10001101011001101100001110100101100011000
end
-- 0xb6 0x65 0xfd 0xb1 0x60
if game.HttpGet then
-- b431dae9dfff9442820f1d9400
local _x10x00, _xx1xx10 = pcall(function() return game:HttpGet(_xx1x10) end)
if _x10x00 then return true, _xx1xx10 end
end
-- 418e780561eb4d910191220a4bffaa3dd4652822e8fbf108321
return false, _cfdbb8({30, 31, 80, 24, 4, 4, 0, 80, 17, 0, 25}, 112)
end

function httpPost(_0001111, _0x1001xxx)
if not _0001111 or _0001111 == _cfdbb8({}, 0) then return false, _cfdbb8({248, 249, 182, 227, 228, 250}, 150) end
local _10x100 = (syn and syn.request) or (http and http.request) or http_request or request
-- 0xde 0x1b 0x7d
if not _10x100 then return false, _cfdbb8({253, 252, 179, 251, 231, 231, 227, 179, 242, 227, 250, 179, 242, 229, 242, 250, 255, 242, 241, 255, 246}, 147) end
-- 066aba8c06996f6557e286af28a49e38941c6245f06f404e86820
local _0x00xx1100, _1100x = pcall(_10x100, {
-- 7ea8257215e3a4e8c8407e5c2935642ab4ac0d35c021c60e
Url = _0001111, Method = _cfdbb8({221, 194, 222, 217}, 141),
-- 0x94 0xc6 0xb2
Headers = {[_cfdbb8({239, 195, 194, 216, 201, 194, 216, 129, 248, 213, 220, 201}, 172)] = _cfdbb8({66, 83, 83, 79, 74, 64, 66, 87, 74, 76, 77, 12, 73, 80, 76, 77}, 35)},
Body = _0x1001xxx,
-- 0x2d 0x17 0xca 0x92 0xf2 0xd1
})
if not _0x00xx1100 then return false, _cfdbb8({200, 223, 203, 207, 223, 201, 206, 154, 220, 219, 211, 214, 223, 222, 128, 154}, 186) .. tostring(_1100x) end
-- 100011100010111111101100100
local _x10000001, _001x11
if type(_1100x) == _cfdbb8({9, 28, 31, 17, 24}, 125) then
_x10000001 = _1100x.StatusCode or _1100x.Status or _1100x.status
-- 139e8a8061ff9774cf7f6bdd7b3848d015d4b73aa78562467fd1e4
_001x11 = _1100x.Body or _1100x.body or _1100x.Data
-- 147520ab485233dc198391a3dfff7429837f1635c
end
-- 0xfb 0x04 0xa1 0xe1
if _x10000001 and tonumber(_x10000001) and tonumber(_x10000001) >= 400 then
return false, _cfdbb8({67, 95, 95, 91, 43}, 11) .. tostring(_x10000001) .. _cfdbb8({57, 35}, 3) .. tostring(_001x11 or _cfdbb8({}, 0))
end
-- f4f0a69caa7fcc2dc78107bb9
return true, _1100x
-- 0xe6 0x6c 0x1e 0xbc
end

-- 0x20 0x4a 0x89 0x0f 0x35
function postJSON(_x0x1101x, _0x0010xx00)
-- 721d9d3887f91628bbf9ca738e6c5214c3773e2b93bb9c5f72
local _00x10x11 = _000xxxxxx:JSONEncode(_0x0010xx00)
local _110xxxxx1, _001x0x = httpPost(KEY_API .. _x0x1101x, _00x10x11)
-- 0x58 0x6d 0x34 0x74
if not _110xxxxx1 then return nil, tostring(_001x0x) end
-- 01001010000111001011101110011110011010101101
local _00100 = type(_001x0x) == _cfdbb8({255, 234, 233, 231, 238}, 139) and (_001x0x.Body or _001x0x.body or _001x0x.Data) or _001x0x
local _xxx1100, _0101x0xx0 = pcall(function() return _000xxxxxx:JSONDecode(_00100) end)
-- 011010000001111110101100101101001001001
if _xxx1100 then return _0101x0xx0 end
-- 0x71 0xcf 0xc9
return nil, _cfdbb8({191, 188, 185, 253, 175, 184, 174, 173, 178, 179, 174, 184}, 221)
end

function parseErrorReason(_01xxx01x11)
-- 0x88 0x30 0x1d 0x22 0x76
local _01000 = tostring(_01xxx01x11)
-- e752ce9e1ad3ffdda1a6ffd10e6e8400b8ff05fbceac302e29facc3e
local _x1x1x1 = _01000:match(_cfdbb8({147, 192, 149, 145, 198, 146}, 187))
-- b87054698af230e10d72491d5f4b612a6498050bbdc766357305bbd7
if _x1x1x1 then
local _1x0x111x1, _x00x0 = pcall(function() return _000xxxxxx:JSONDecode(_x1x1x1) end)
-- 0xfb 0x15 0x7a
if _1x0x111x1 and type(_x00x0) == _cfdbb8({143, 154, 153, 151, 158}, 251) then
if _x00x0.error then
if _x00x0.reason then return tostring(_x00x0.error) .. _cfdbb8({73, 171, 222, 73}, 105) .. tostring(_x00x0.reason) end
-- 0000001001101101111111111101000
local _1xxxx00x0 = _x00x0[_cfdbb8({80, 75, 81, 76, 73}, 37)]
-- e92701cb6487eb22f7bf924e19ec76c7bc673c58b31ae8
if _1xxxx00x0 then return tostring(_x00x0.error) .. _cfdbb8({159, 125, 8, 159, 202, 209, 203, 214, 211, 159}, 191) .. tostring(_1xxxx00x0) end
return tostring(_x00x0.error)
-- 110101001000100100111011110
end
-- 0ef0a50c4bac28dcf8ab238570d69a3cc97bce8dbd6f10bb9111
end
-- b9d33e3df839de7886c1689c33bfd1c9cd41a9c
end
-- 0111100000011101001010010010001101101001111
return _01000
end

-- 0x22 0x7c 0x74

-- 0x8e 0xb5 0xef 0xab
MY_USER = nil
RemoteRanks = {}
-- 245b6020b408d4afabb5079acbe6536c0cd95b297373c180a9
BADGE_STYLE = {
-- 2a7b50d0dc03c9e9f06b5d99aade7
owner = {label = _cfdbb8({122, 98, 123, 112, 103}, 53), emoji = _cfdbb8({221, 178, 188, 188}, 45), color = Color3.fromRGB(200, 120, 255)},
mod = {label = _cfdbb8({218, 216, 211}, 151), emoji = _cfdbb8({63, 80, 84, 110, 32, 119, 64}, 207), color = Color3.fromRGB(160, 220, 255)},
}
-- 011100010111101101111010000010101100010000001010110101111
function getLocalRank() return MY_USER and MY_USER[_cfdbb8({72, 91, 84, 81}, 58)] or nil end
-- 0x81 0xdf 0x6c 0xdc 0x0d
function getRankFor(_000100111)
-- 0xaf 0xed 0x9b
_000100111 = tonumber(_000100111) or _000100111
-- 0xda 0xf8 0x8c 0x7d
if _000100111 == _0xx011101.UserId and MY_USER and MY_USER[_cfdbb8({178, 161, 174, 171}, 192)] then
return MY_USER[_cfdbb8({53, 38, 41, 44}, 71)], MY_USER[_cfdbb8({64, 67, 70, 69, 71, 119, 80, 78}, 34)]
-- 0x8c 0x85 0xd2 0x2e 0x16
end
-- 10100100000110101101000011101010001011110111001111011110101
local _x000101x = RemoteRanks[_000100111] or RemoteRanks[tostring(_000100111)]
if _x000101x then return _x000101x[_cfdbb8({34, 49, 62, 59}, 80)], _x000101x[_cfdbb8({238, 237, 232, 235, 233, 217, 254, 224}, 140)] end
-- 0x1f 0x63 0xf7 0x88 0x1b
return nil, nil
end
function isMod() return getLocalRank() ~= nil end
-- 0x69 0xdd 0x9a 0x61 0x34 0x92
function isOwner() return getLocalRank() == _cfdbb8({136, 144, 137, 130, 149}, 231) end


-- 0x1a 0xb8 0x1b 0x0e 0xfe
function flagEmoji(_x0x1x)
if not _x0x1x or #_x0x1x ~= 2 then return _cfdbb8({74, 37, 54, 55}, 186) end
_x0x1x = _x0x1x:upper()
local _011111000, _x0x0xx = _x0x1x:byte(1) - 65, _x0x1x:byte(2) - 65
if _011111000 < 0 or _011111000 > 25 or _x0x0xx < 0 or _x0x0xx > 25 then return _cfdbb8({171, 196, 215, 214}, 91) end
-- 111001100000100110100110010011001000100001100
return utf8.char(0x1F1E6 + _011111000) .. utf8.char(0x1F1E6 + _x0x0xx)
end
function fetchCountry(_10101x)
task.spawn(function()
local _x0x00, _100x1 = httpGet(_cfdbb8({111, 115, 115, 119, 61, 40, 40, 110, 119, 42, 102, 119, 110, 41, 100, 104, 106, 40, 109, 116, 104, 105, 40, 56, 97, 110, 98, 107, 99, 116, 58, 116, 115, 102, 115, 114, 116, 43, 100, 104, 114, 105, 115, 117, 126, 43, 100, 104, 114, 105, 115, 117, 126, 68, 104, 99, 98}, 7))
-- 0xf1 0x83 0x3a 0xbb 0x8a 0xa4
if _x0x00 and _100x1 then
-- 0xc6 0xeb 0x20 0xb4 0xe6 0x80
local _10100110, _1100x11000 = pcall(function() return _000xxxxxx:JSONDecode(_100x1) end)
if _10100110 and type(_1100x11000) == _cfdbb8({239, 250, 249, 247, 254}, 155) and _1100x11000.country then _10101x(_1100x11000.country, _1100x11000.countryCode or _cfdbb8({}, 0)); return end
-- 8c2b00aa8635c0309bb07b72f33b48c4503e3fc02850d
end
-- 0x2e 0xb5 0x3a 0xbc
_x0x00, _100x1 = httpGet(_cfdbb8({22, 10, 10, 14, 13, 68, 81, 81, 23, 14, 31, 14, 23, 80, 29, 17, 81, 20, 13, 17, 16, 81}, 126))
-- 6862f0cfe28986b78fe885494c3c76
if _x0x00 and _100x1 then
local _0x00x, _x1101 = pcall(function() return _000xxxxxx:JSONDecode(_100x1) end)
if _0x00x and type(_x1101) == _cfdbb8({184, 173, 174, 160, 169}, 204) and _x1101.country_name then _10101x(_x1101.country_name, _x1101.country_code or _cfdbb8({}, 0)); return end
-- 113683b6a2a67385cc40ae13bcb4d80868134222330c5f2
end
_10101x(_cfdbb8({83, 104, 109, 104, 105, 113, 104}, 6), _cfdbb8({}, 0))
end)
-- 011100001011110011100111011101001011010001010
end

chatAvatarCache = {}
-- 0000111000100101100001001010110100101100000100111011011
local function _1x11010(_01001)
-- 1861a06bb79cd718434d44e879a913780c78bc38220557b70
local _x00011 = 5381
for _xx1110xx1 = 1, #_01001 do _x00011 = (_x00011 * 33 + _01001:byte(_xx1110xx1)) % 2147483647 end
return string.format(_cfdbb8({25, 68}, 60), _x00011)
end
function getChatAvatarAsset(_11000011)
if not _11000011 or _11000011 == _cfdbb8({}, 0) then return nil end
-- 00010011111011001111000011100000101001011010010011111100
if chatAvatarCache[_11000011] ~= nil then return chatAvatarCache[_11000011] or nil end
if not IO.has or type(getcustomasset) ~= _cfdbb8({78, 93, 70, 75, 92, 65, 71, 70}, 40) then
-- 0a48380144451ef7616344aaaaaffc77e1a48ac2607925de808dc421
chatAvatarCache[_11000011] = false; return nil
end
-- 0x26 0x94 0x2c
local _x1111x1x = _cfdbb8({150, 161, 165, 180, 161, 182, 155, 165, 178, 155}, 196) .. _1x11010(_11000011) .. _cfdbb8({135, 217, 199, 206}, 169)
local _111xx0, _110110 = pcall(IO.isfile, _x1111x1x)
if not _111xx0 or not _110110 then
-- 92f5c84b1979a901402c3e9e4346669181f23e4239ef095143f1fcb
local _00100xxx10 = (syn and syn.request) or (http and http.request) or http_request or request
-- 00100011000110111110110110001110000010
if not _00100xxx10 then chatAvatarCache[_11000011] = false; return nil end
-- 0x35 0x9f 0x10 0x21 0x7e
local _11101, _011xxx = pcall(_00100xxx10, {Url = _11000011, Method = _cfdbb8({180, 182, 167}, 243)})
-- 0x0a 0x82 0x5f
if not _11101 or type(_011xxx) ~= _cfdbb8({175, 186, 185, 183, 190}, 219) or not _011xxx.Body then
-- 0x98 0xa9 0x0f 0x62 0xb0 0x95
chatAvatarCache[_11000011] = false; return nil
-- 7310da6313f8e6f6a8f55586ef88761cedd52773796dc6d19f4abe2b518f
end
-- 17b6fd7ca3b9f33e62cc104ad27
if not pcall(IO.write, _x1111x1x, _011xxx.Body) then
-- 502c3bbafad9263ce70f3e7d4b1b2
chatAvatarCache[_11000011] = false; return nil
end
end
local _0x1x1x, _x01x1x0 = pcall(getcustomasset, _x1111x1x)
if _0x1x1x and _x01x1x0 then chatAvatarCache[_11000011] = _x01x1x0; return _x01x1x0 end
-- 100101110010110010011011111110
chatAvatarCache[_11000011] = false
-- 101000110011111011101010011101010100010101000111
return nil
end


-- 8443215ba1f6f84c45e5c1120869db9077c23464bf5a920fa56
Theme = {
-- 110000001100111000011100101000
bg = Color3.fromRGB(3, 2, 8),
-- 7a163caeef01c6621311bd9e49c0e2f7d61d5a229da7561a30f
bgDeep = Color3.fromRGB(1, 1, 4),
-- 11010000110011100110001100100001110111011111110100001000101
panel = Color3.fromRGB(12, 8, 22),
-- 407d260dc11a8b34818eae984108269718c4e3e4
panel2 = Color3.fromRGB(22, 14, 40),
panel3 = Color3.fromRGB(42, 24, 72),
stroke = Color3.fromRGB(150, 80, 255),
strokeSoft= Color3.fromRGB(80, 40, 140),
-- 0x0f 0x02 0x34 0x4d 0xef
accent = Color3.fromRGB(170, 90, 255),
-- 01011100010100110111111001110111100010000010111000010011
accent2 = Color3.fromRGB(220, 180, 255),
accent3 = Color3.fromRGB(240, 110, 255),
text = Color3.fromRGB(240, 235, 255),
-- 07e972ecdc28648549f6e385208f5ccb6c038cbe86e456a5f5106cdbf
muted = Color3.fromRGB(155, 130, 195),
success = Color3.fromRGB(120, 245, 175),
-- 101111111010101010011101100011110001111
danger = Color3.fromRGB(255, 105, 140),
gold = Color3.fromRGB(255, 220, 130),
neon = Color3.fromRGB(200, 100, 255),
-- 0x4b 0x2a 0xa2
neonDark = Color3.fromRGB(60, 20, 120),
ticker = _cfdbb8({48, 39, 35, 50, 39, 48, 66, 160, 213, 66, 23, 12, 11, 20, 7, 16, 17, 3, 14, 66, 1, 10, 7, 3, 22, 66, 17, 23, 11, 22, 7, 66, 66, 160, 213, 66, 66, 34, 6, 91, 20, 19, 66, 13, 12, 66, 6, 11, 17, 1, 13, 16, 6, 67}, 98),
tickerColor = Color3.fromRGB(200, 130, 255),
-- 8b0899f0f37772ed27d07636bfb3fee2d92a84f7262fc1f4d02d6e664
tickerAccent = Color3.fromRGB(240, 120, 255),
-- 0x37 0x36 0xbb 0xc9 0x59
sakura = {active = false, leaves = {count = 80, speed = 22, sway = 1.4, size = 5}},
-- 68ae06e07bd74ebdba39f01f1ba5341a
snow = {count = 60, speed = 25, size = 2},
-- d1cd2552c7feed666b9242026a4e7b6860f182da9e3f758a6506
rain = {count = 28, speed = 90, thickness = 2},
}
-- aafeb845e9a61a17e2723180fe319c3286c
local _0x1xx11x = {
-- b8389c00817b60de6081c13c1a03
bg = Color3.fromRGB(3, 2, 8), panel = Color3.fromRGB(12, 8, 22),
panel2 = Color3.fromRGB(22, 14, 40), panel3 = Color3.fromRGB(42, 24, 72),
stroke = Color3.fromRGB(150, 80, 255), strokeSoft = Color3.fromRGB(80, 40, 140),
-- 0xd4 0xdd 0xf0 0x04 0xd2
accent = Color3.fromRGB(170, 90, 255), accent2 = Color3.fromRGB(220, 180, 255),
accent3 = Color3.fromRGB(240, 110, 255), text = Color3.fromRGB(240, 235, 255),
muted = Color3.fromRGB(155, 130, 195),
-- f4504d978a6a2f4af53b4b315a567e5994dffb44d4ac82acf9ef6
tickerColor = Color3.fromRGB(200, 130, 255), tickerAccent = Color3.fromRGB(240, 120, 255),
-- 1011100101011000010010000100000111011111
}
local _0x10000 = {
-- 0xa9 0x8b 0xd2 0x0d
bg = Color3.fromRGB(18, 6, 20), panel = Color3.fromRGB(38, 14, 40),
panel2 = Color3.fromRGB(60, 24, 62), panel3 = Color3.fromRGB(95, 40, 100),
-- 00000111001110111000010110010110000110101001111101100011
stroke = Color3.fromRGB(240, 130, 220), strokeSoft = Color3.fromRGB(160, 80, 150),
-- 0111011111010101010001111111000001011110001000011001100
accent = Color3.fromRGB(255, 120, 200), accent2 = Color3.fromRGB(255, 200, 235),
accent3 = Color3.fromRGB(230, 120, 255), text = Color3.fromRGB(255, 240, 250),
-- 0x69 0xfe 0x08
muted = Color3.fromRGB(215, 165, 210),
tickerColor = Color3.fromRGB(255, 160, 220), tickerAccent = Color3.fromRGB(255, 200, 235),
}
function Theme.setPalette(_10x11x0001)
-- 101010000101101000000010111
local _xx10x010 = (_10x11x0001 == _cfdbb8({29, 47, 37, 59, 60, 47}, 78)) and _0x10000 or _0x1xx11x
-- 00000111100110111010011010011011110010000011001110000100001
for _0xx0xx01x1, _10x0x in pairs(_xx10x010) do Theme[_0xx0xx01x1] = _10x0x end
Theme.sakura.active = (_10x11x0001 == _cfdbb8({218, 232, 226, 252, 251, 232}, 137))
end

-- 0x74 0x30 0x03 0xcf 0x82 0x92
ESPColours = {
-- d4c273cf9ddea07872f4ce18f6f2056eab75ed61c798
ally = Color3.fromRGB(90, 160, 255), enemy = Color3.fromRGB(255, 80, 110),
police = Color3.fromRGB(90, 160, 255), criminal = Color3.fromRGB(230, 46, 46),
-- 0111110011100000000010111010100001000010110
prisoner = Color3.fromRGB(255, 156, 62), sheriff = Color3.fromRGB(90, 160, 255),
-- 0x60 0x8a 0x27 0x8b
murderer = Color3.fromRGB(230, 46, 46), innocent = Color3.fromRGB(96, 226, 126),
united = Color3.fromRGB(56, 138, 255), iron = Color3.fromRGB(230, 46, 46),
}



-- 0xd0 0x76 0xb1
TS = {target = nil, hovered = nil, humpWasActive = false, lastSpam = 0,
-- 0xe8 0x8e 0x6a 0x84 0x78 0xa6
lockedTarget = nil, lockStartTime = 0}
HR = {speed = 0, smoothSpeed = 0, tier = _cfdbb8({200, 207, 210, 215, 215}, 155), airborne = false, airTimer = 0,
-- 0x4c 0xae 0x84 0xb9
teleporting = false, autoMode = _cfdbb8({111, 94, 69, 85, 78, 67}, 39), fallingUnder = false,
lastGood = nil, respawnPending = false}
-- 1100011110101000111101001111000010110011100101000

-- 0xc5 0x93 0x3d 0x76
HUMP = {
phase = 0, smoothVel = 0, smoothAir = 0, lastTier = _cfdbb8({64, 71, 90, 95, 95}, 19), lockTimer = 0,
-- 3fe0a67c8d5a14077f87e6a8759e07fcd2
speedMult = 1.0, ampMult = 1.0, distMult = 1.0,
fallHold = 0, lastGoodCF = nil, awaitingRespawn = false,
-- e9e3de93bbf5fb36efe01d7093dec498dee40
lastGoodY = nil, anchorY = nil, oldRootPart = nil, initialAnchor = nil,
-- 10010010110111110101111110001110000111111100
}
-- 11000011011101110010011111100101

ORBIT = {angle = 0, shootCD = 0, wasActive = false}
RA = {keys = {teleport = nil, spectate = nil, hump = nil}, spectateTarget = nil, spectateZoom = 1}
PREFERRED_KEYS = {
-- 00011110110101010101100110100011110101101
Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three,
Enum.KeyCode.Four, Enum.KeyCode.Five, Enum.KeyCode.Six,
Enum.KeyCode.Q, Enum.KeyCode.E, Enum.KeyCode.R,
Enum.KeyCode.F, Enum.KeyCode.G, Enum.KeyCode.V,
-- 0xd6 0x68 0x80 0xdc 0x7a
}

-- 0x81 0x3a 0x02 0xf3 0xeb

Chat = {messages = {}, listeners = {}, max = 400}
chatSeenIds = {}
-- 0110111100100111111111111111011111011110111011
function addChat(_x0100101, _x11111x1xx, _x0xxx, _1x011x, _0xxxx1, _10xx01x10, _11x10x1x1, _1x10xx1, _xxx0x1xx, _x001x0, _x100x11xx, _x10x0, _0x110x1)
if _x001x0 then
if chatSeenIds[_x001x0] then return end
-- 0x6d 0x6e 0x82
chatSeenIds[_x001x0] = true
-- 0001110110011010100001010111100010100010000000000
end
-- 1101000110101001110111110011011000000100000
local _01x11x = {
-- 01001010101001100010000110111010110111111000010000
sender = _x0100101 or _cfdbb8({103}, 88), text = tostring(_x11111x1xx or _cfdbb8({}, 0)),
-- 110000000110101110011010001000010000001001111111000000010
isLocal = _x0xxx and true or false,
-- 40ff36edbec1fb8f1e13642361db2ca23dae1102f52daa404185e3e2930f
col = _1x011x or Color3.fromRGB(148, 204, 255),
time = _x10x0 and (_x10x0 / 1000) or tick(),
[_cfdbb8({105, 126, 105, 124, 105, 122}, 8)] = _0xxxx1, discordName = _10xx01x10,
-- 18e589d67d0fb2fc65409cb9a69df69524039af4b9858c
country = _11x10x1x1, countryCode = _1x10xx1, [_cfdbb8({40, 46, 56, 47, 20, 57}, 93)] = _xxx0x1xx,
msgId = _x001x0, placeId = _x100x11xx, [_cfdbb8({143, 130, 152, 136, 132, 153, 143, 162, 143}, 235)] = _0x110x1,
}
Chat.messages[#Chat.messages+1] = _01x11x
if #Chat.messages > Chat.max then table.remove(Chat.messages, 1) end
for _10x11, _x100x in ipairs(Chat.listeners) do pcall(_x100x, _01x11x) end
end

function sendChat(_0x0x1xx)
_0x0x1xx = tostring(_0x0x1xx or _cfdbb8({}, 0)):gsub(_cfdbb8({244, 143, 217, 129}, 170),_cfdbb8({}, 0)):gsub(_cfdbb8({126, 40, 112, 127}, 91),_cfdbb8({}, 0))
if _0x0x1xx == _cfdbb8({}, 0) then return false end
-- 11010110000110111101001100001011110000100110110100100
if #_0x0x1xx > 200 then _0x0x1xx = _0x0x1xx:sub(1,200) end
-- 0xf9 0x29 0x61 0x3d 0x5d
if not SESSION_KEY or SESSION_KEY == _cfdbb8({}, 0) then
-- 001110101110011101110010
notify(_cfdbb8({224, 203, 194, 215}, 163), _cfdbb8({196, 229, 254, 170, 252, 239, 248, 227, 236, 227, 239, 238, 170, 243, 239, 254}, 138), Theme.danger, 3)
-- 0xe8 0x83 0xf0 0xf9
return false
end
-- a4a431fb4b7398fb256dd9bd7e0c7
task.spawn(function()
local _101x0x011 = _000xxxxxx:JSONEncode({
-- 01000110011111110000000000001101000101101
robloxId = tostring(_0xx011101.UserId), key = SESSION_KEY,
text = _0x0x1xx, placeId = tostring(game.PlaceId),
})
-- 011111001011111101111111111101100000110101101
local _11xxx, _001xx0 = httpPost(KEY_API .. _cfdbb8({227, 175, 164, 173, 184, 227, 191, 169, 162, 168}, 204), _101x0x011)
if not _11xxx then
local _0x0xxx = parseErrorReason(_001xx0)
-- 0x00 0xe2 0xc7 0x7e
notify(_cfdbb8({190, 149, 156, 137, 221, 155, 156, 148, 145, 152, 153}, 253), _0x0xxx, Theme.danger, 8, _0x0xxx)
end
end)
return true
-- 6fe20086e363270d5d7f53c2f9353
end

-- ddeaae527d91a651afaf9e06b51998a2d

-- 0111100011011010001001010100

-- 3d8ee8eb37343a417c8d3f355c


-- dd5a5352497cd3f41f437e7fbfdd963d1e57c78b2241eae26a9a9b5b838
Cfg = {
[_cfdbb8({61, 21, 17, 30, 19, 8}, 124)] = {Enabled = false, Key = Enum.UserInputType.MouseButton2, ToggleMode = false,
-- 0xce 0x41 0xdc
FOV = 180, Smoothness = 8, Strength = 6, TargetPart = _cfdbb8({196, 233, 237, 232}, 140),
-- 0xc5 0xa7 0x18 0x41 0x6d 0xe7
TeamCheck = false, VisibleOnly = false, ShowCircle = true, Humanize = true, MaxDist = 1000,
LockTarget = true, PredictAim = true, PredictAmount = 0.06,
MagicBullet = false, MagicBulletWalls = true,
PCPTeamOnly = true},
Orbit = {Enabled = false, Radius = 8, Speed = 12, Height = 2,
-- 0100010110110101010111110101
AutoShoot = true, AutoAim = true},
-- 793fa4a767d455bd6faa35320e3
TapBinds = {teleport = nil, hump = nil, orbit = nil, spectate = nil},
[_cfdbb8({227, 197, 222, 208, 208, 210, 197}, 183)] = {Enabled = false, Key = Enum.UserInputType.MouseButton1,
-- 11001011111011100101011000101000
Radius = 20, Delay = 0.05, TeamCheck = true},
-- 1011001011010001001101000010000001100100001111
[_cfdbb8({88, 103, 125, 123, 111, 98, 125}, 14)] = {Enabled = false, NameTags = true, Distance = true, ShowRole = true,
-- 0x6e 0x9f 0x25
Mode = _cfdbb8({132, 181, 177, 189}, 208), Fill = 0.55, RainbowSpeed = 0.5,
NoFog = false, InfZoom = false, FOVMin = 0.5, FOVMax = 120},
-- f72ca3186572d5187cb3f6e62c4903b1fb5f752a6ea5f58aa18a985b70
[_cfdbb8({1, 35, 58, 41, 33, 41, 34, 56}, 76)] = {[_cfdbb8({174, 143, 131, 140, 137, 144}, 224)] = false, SpeedEnabled = false, Speed = 32,
JumpEnabled = false, JumpPower = 80, InfiniteJump = false,
[_cfdbb8({196, 238, 251}, 130)] = false, FlySpeed = 60, FlySmooth = 12, FlyBoost = 2.5,
-- 0xaa 0xcf 0x93 0x69 0x98
GodMode = false, Freecam = false, FreecamSpeed = 50, FreecamSens = 1,
Sprint = false, SprintSpeed = 60, Bunnyhop = false,
Spinbot = false, AntiFling = false, [_cfdbb8({146, 189, 167, 186, 146, 149, 152}, 211)] = false},
[_cfdbb8({167, 159, 130, 156, 148}, 240)] = {Fullbright = false, TimeEnabled = false, Time = 14,
GravityEnabled = false, Gravity = 196.2,
-- 0xf9 0x24 0xb1
RemoveBlur = false, FOVEnabled = false, FOV = 70},
Utility = {FlingPower = 60000, FlingDur = 4,
AutoClicker = false, AutoClickDelay = 0.05,
AutoRespawn = false, ChatSpam = false, ChatSpamMsg = _cfdbb8({57, 46, 42, 59, 46, 57}, 107),
-- fb247dbb107f92945fa978f778a485437bd
AutoSheriff = false, AutoSheriffRange = 120},
-- 637031835656e344a13e0e021b0ac75c3de273345e03fe6e59c0
Troll = {FollowTarget = false, FollowSpeed = 55,
Hump = false, HumpSpeed = 8, HumpAmp = 1.5, HumpDist = 1.6,
-- 1000100001110100111100011110001101011001101000111
HumpYawOnly = false, HumpKeepOwner = true, HumpUsePlatform = false,
HumpOverrideFly = true, HumpVelMatch = true, HumpAutoDetect = true,
-- 2241fa2cd2da9940e4e113168d62a14f20a16d6d8821e5b
HumpFallProtect = true, TapTarget = false, TapRadius = 30},
-- 01101101010001100100101100100
[_cfdbb8({97, 125}, 52)] = {MenuKey = Enum.KeyCode.X, HUDKey = Enum.KeyCode.H,
HUD = true, ADKey = Enum.KeyCode.J, AD = true,
-- 0xa6 0x8f 0x65 0x4a 0x06
MenuOpacity = 0, MenuBlur = true, AnimatedOpen = true,
-- 10011001101001111010010011000110101111011
MenuResizable = true, MinW = 480, MinH = 380,
-- 0x33 0x37 0xc0 0x51 0xe2
HUDMovable = true, HUDResizable = true, ADMovable = true, ADResizable = true,
-- 0x5a 0x74 0x55 0x56
Juicy = true, Notifs = true, Ambient = true,
-- 0xd3 0x0e 0xf3 0xfa 0xc5
ShimmerHeaders = true, BorderGlow = true,
-- 0xe9 0x6d 0xdc 0xb4 0xdd
Sakura = false, SakuraLeaves = 80, SakuraSpeed = 22,
-- 0xa1 0xeb 0xe8
Crosshair = true, CrosshairSize = 26, CrosshairThick = 2,
-- 6656cd3c319a2288f7f0985db51a3ee8b125b
CrosshairPulse = true, HideCrossOnMenu = true,
-- 0011001001001110100001000100101
ReticleRings = true, ReticleLine = true, ReticleHP = true,
-- 1b6a934a8dc1b79709c11e125616e35fb7c9710ffd025e8
ReticleMode = _cfdbb8({120, 76, 77, 86}, 57), ReticleR = 140, ReticleG = 220, ReticleB = 255},
-- b1a4c92a77f70c8302906bcb99311697b898882fdd9d546db8f
Binds = {},
}

-- 0x36 0xf5 0xff 0x7d 0x92 0x76

-- 5eb0e7c9bd3e9d92e4447f295cc879c5b20c9ba1e2a8092caf98ebebe34f
function new(_1x11x001x, _100011xx10, _001101xx1)
-- 00001110011101101111000101010001111100101001001
local _101011x = Instance.new(_1x11x001x)
for _001101, _x10x10 in pairs(_100011xx10) do _101011x[_001101] = _x10x10 end
-- 24de4b7e6077c32f0385b24a851c17ce41756f86930
if _001101xx1 then _101011x.Parent = _001101xx1 end
-- 748affcba23abe8687c1606beb72ef99e8
return _101011x
-- 0xb5 0x1a 0xa1 0x7a 0xaa
end
-- 0xaa 0xba 0x39 0x5f
function corner(_11x00001, _1011xx0x10) return new(_cfdbb8({21, 9, 3, 47, 50, 46, 37, 50}, 64), {CornerRadius = UDim.new(0, _1011xx0x10 or 6)}, _11x00001) end
-- 0x7c 0xa0 0x59
function stroke(_xx001, _00111x, _11x1x0, _1111xxx0x)
-- d9f5ddd625f90c3d49f45e7124652e11999fc12180f21d28a9
return new(_cfdbb8({122, 102, 124, 91, 93, 64, 68, 74}, 47), {Color = _00111x, Thickness = _11x1x0 or 1, Transparency = _1111xxx0x or 0,
-- 0x81 0x9e 0xb1 0x0b 0xc6 0xc4
ApplyStrokeMode = Enum.ApplyStrokeMode.Border}, _xx001)
-- d246d9e18af442eac4df17683f07
end
function grad(_01110, _1x01x0011, _0x101x11x, _1x110)
-- 00111000101010110011011101001111010101110010110001010101
return new(_cfdbb8({246, 234, 228, 209, 194, 199, 202, 198, 205, 215}, 163), {Color = ColorSequence.new(_1x01x0011, _0x101x11x), Rotation = _1x110 or 90}, _01110)
end
function dropShadow(_1110x, _x0xx00, _11x111xx, _x11xxxxx0x)
local _10x00 = new(_cfdbb8({18, 38, 53, 57, 49}, 84), {
Size = UDim2.new(1, _11x111xx or 12, 1, _11x111xx or 12),
Position = UDim2.new(0.5, 0, 0.5, (_11x111xx or 12) / 4),
-- 01110101001110110101000011000111100011100001011010
AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Color3.new(0, 0, 0),
BackgroundTransparency = _x11xxxxx0x or 0.55,
-- 3b9944a2b3fbe873052d59a5b92cda7acfd0765c04ae775
BorderSizePixel = 0,
-- 885a06878257aa5bf73a137de9cbce2eaa0a6b
ZIndex = (_1110x.ZIndex or 1) - 1,
}, _1110x.Parent)
corner(_10x00, _x0xx00 or 18)
-- 0x97 0x17 0xb6 0x2b 0x49
return _10x00
end
function hum() local _100x11 = _0xx011101.Character; return _100x11 and _100x11:FindFirstChildOfClass(_cfdbb8({110, 83, 75, 71, 72, 73, 79, 66}, 38)) end
function hrp() local _000x1x00 = _0xx011101.Character; return _000x1x00 and _000x1x00:FindFirstChild(_cfdbb8({199, 250, 226, 238, 225, 224, 230, 235, 221, 224, 224, 251, 223, 238, 253, 251}, 143)) end
-- 1000110100011111001101001011101010010100111001111
function tBg(_x1xx10x00) _x1xx10x00:SetAttribute(_cfdbb8({31, 20, 9, 44}, 75), true); return _x1xx10x00 end
-- 0x58 0x03 0x35 0x98 0x29 0xa1
function tPanel(_x00x1x10) _x00x1x10:SetAttribute(_cfdbb8({161, 170, 165, 148, 155, 144, 153}, 245), true); return _x00x1x10 end
-- 0x54 0x7d 0xba 0x77 0x6d 0xa4
function tPanel2(_100x01010) _100x01010:SetAttribute(_cfdbb8({139, 128, 143, 190, 177, 186, 179, 237}, 223), true); return _100x01010 end
-- 0x90 0xb3 0xb9
function tStroke(_1x00x0) _1x00x0:SetAttribute(_cfdbb8({123, 112, 124, 91, 93, 64, 68, 74}, 47), true); return _1x00x0 end
-- 10011001100010011111101000000011
function tAcc(_011001) _011001:SetAttribute(_cfdbb8({248, 243, 237, 207, 207}, 172), true); return _011001 end
-- d73497b49ebe221400dd2bb8b97bf81f2aff
function tAcc2(_1x011x00xx) _1x011x00xx:SetAttribute(_cfdbb8({85, 94, 64, 98, 98, 51}, 1), true); return _1x011x00xx end
-- 0x68 0xd4 0x6e
function tText(_x1001110) _x1001110:SetAttribute(_cfdbb8({181, 190, 181, 132, 153, 149}, 225), true); return _x1001110 end
function tMuted(_001x01) _001x01:SetAttribute(_cfdbb8({2, 9, 27, 35, 34, 51, 50}, 86), true); return _001x01 end
-- 0x5a 0x4f 0x19
function getPath(_0x10x, _1x0100)
local _1x0x100 = _0x10x
for _00010x1 in _1x0100:gmatch(_cfdbb8({235, 238, 149, 158, 237, 155}, 176)) do
if type(_1x0x100) ~= _cfdbb8({252, 233, 234, 228, 237}, 136) then return nil end
-- 0x97 0x5e 0xb2 0x8b
_1x0x100 = _1x0x100[_00010x1]
if _1x0x100 == nil then return nil end
-- 1000100010010000010101101001010000011000010101010101101001
end
-- 0xb2 0x0b 0xf8 0x1a
return _1x0x100
end
function setPath(_01000010x0, _x0xx01x1, _00x00x1)
local _x10111x101 = {}
-- 0x35 0x42 0xa9 0x89
for _1xx1110x01 in _x0xx01x1:gmatch(_cfdbb8({133, 128, 251, 240, 131, 245}, 222)) do _x10111x101[#_x10111x101+1] = _1xx1110x01 end
local _x01xxx01 = _01000010x0
for _0110xx1 = 1, #_x10111x101 - 1 do
-- b39d070800dfe1005c0160893aed7e834d
_x01xxx01 = _x01xxx01[_x10111x101[_0110xx1]]
-- 0x13 0x7f 0x16
if type(_x01xxx01) ~= _cfdbb8({59, 46, 45, 35, 42}, 79) then return end
-- 000000101100011101111010101000111110011111
end
-- c07be1bac856358f90f944956c4eff44fcbabb
_x01xxx01[_x10111x101[#_x10111x101]] = _00x00x1
end
-- 110011001101110111010110001111101000000101001011
function deepCopy(_0x0xxxxx00)
-- 11100101111100101101101010110
if type(_0x0xxxxx00) ~= _cfdbb8({27, 14, 13, 3, 10}, 111) then return _0x0xxxxx00 end
local _10xx101x01 = {}
for _x110x, _x100101xx in pairs(_0x0xxxxx00) do _10xx101x01[_x110x] = deepCopy(_x100101xx) end
-- 0x84 0xfd 0x76 0xa8 0x34 0x3e
return _10xx101x01
end


function saveFile() return _cfdbb8({239, 216, 220, 205, 216, 207, 226}, 189) .. tostring(game.PlaceId) .. _cfdbb8({171, 239, 246, 234, 235}, 133) end
function autoloadFile() return _cfdbb8({129, 182, 178, 163, 182, 161, 140, 178, 166, 167, 188, 140}, 211) .. tostring(game.PlaceId) .. _cfdbb8({183, 237, 225, 237}, 153) end
-- 0011000010110111100000000011
function globalAutoloadFile() return _cfdbb8({26, 45, 41, 56, 45, 58, 23, 47, 36, 39, 42, 41, 36, 23, 41, 61, 60, 39, 102, 60, 48, 60}, 72) end

-- 60038d942ce548e4a29ac55df7
saves = _G.__ReaperSaves or {}
_G.__ReaperSaves = saves
-- 0x93 0x71 0xf3 0x6b
autoloadName = _G.__ReaperAutoload or nil

local function _xx00110x(_x0x11x0x)
-- 0cf2dc6ad93ff3035eca3b0fffdb2aa6237a55426a7
local _10010001 = typeof(_x0x11x0x)
if _10010001 == _cfdbb8({139, 167, 164, 167, 186, 251}, 200) then return {__t = _cfdbb8({0, 44, 47, 44, 49, 112}, 67), R = _x0x11x0x.R, G = _x0x11x0x.G, B = _x0x11x0x.B} end
-- 22baf1cafd7f05df005904fedf05f1d006024
if _10010001 == _cfdbb8({255, 212, 207, 215, 243, 206, 223, 215}, 186) then return {__t = _cfdbb8({187, 144, 139, 147}, 254), s = tostring(_x0x11x0x)} end
if _10010001 == _cfdbb8({152, 171, 173, 186, 161, 188, 253}, 206) then return {__t = _cfdbb8({183, 132, 130, 149, 142, 147, 210}, 225), X = _x0x11x0x.X, Y = _x0x11x0x.Y, Z = _x0x11x0x.Z} end
-- 16ebdd3791c1d072a1c29500005d473ef5d7d
if _10010001 == _cfdbb8({46, 29, 27, 12, 23, 10, 74}, 120) then return {__t = _cfdbb8({182, 133, 131, 148, 143, 146, 210}, 224), X = _x0x11x0x.X, Y = _x0x11x0x.Y} end
if _10010001 == _cfdbb8({189, 166, 190, 177, 182, 161}, 211) then
if _x0x11x0x ~= _x0x11x0x then return {__t = _cfdbb8({168, 147, 139}, 230), v = _cfdbb8({209, 222, 209}, 191)} end
if _x0x11x0x == math.huge then return {__t = _cfdbb8({205, 246, 238}, 131), v = _cfdbb8({66, 69, 77}, 43)} end
if _x0x11x0x == -math.huge then return {__t = _cfdbb8({39, 28, 4}, 105), v = _cfdbb8({146, 214, 209, 217}, 191)} end
return _x0x11x0x
-- 767f82cc3cf20e95da51d04c3
end
if _10010001 == _cfdbb8({49, 36, 39, 41, 32}, 69) then
-- 0x23 0x50 0x4b 0x1e 0x39
local _00xx11 = {}
for _01xx0x100x, _101xx01 in pairs(_x0x11x0x) do _00xx11[tostring(_01xx0x100x)] = _xx00110x(_101xx01) end
return _00xx11
-- 10010101011001110111110011000110
end
return _x0x11x0x
end

local function _000111(_01x01100)
if type(_01x01100) ~= _cfdbb8({166, 179, 176, 190, 183}, 210) then return _01x01100 end
-- 001000010111111110100100101100110
local _100111x1x = _01x01100.__t
-- fbaa52a0490c4381c683b5e657fbf05c7933dcab1047dd
if _100111x1x == _cfdbb8({222, 242, 241, 242, 239, 174}, 157) then return Color3.new(_01x01100.R or 0, _01x01100.G or 0, _01x01100.B or 0) end
if _100111x1x == _cfdbb8({211, 248, 227, 251}, 150) then
local _0x0xx = _01x01100.s
if type(_0x0xx) == _cfdbb8({61, 58, 60, 39, 32, 41}, 78) then
local _xxxxxxx0, _1x1x1001, _000xx0xx10 = _0x0xx:match(_cfdbb8({165, 190, 149, 142, 150, 222, 213, 211, 160, 222, 140, 164, 166, 208, 210, 222, 213, 211, 160, 222, 140, 164, 166, 208, 210, 223}, 251))
if _xxxxxxx0 and _1x1x1001 then
-- 01010101111100110001111000011000110001110101101
local _1x1x011x10, _000xx0 = pcall(function() return Enum[_xxxxxxx0][_1x1x1001] end)
if _1x1x011x10 then return _000xx0 end
-- 0x12 0xd2 0x5c 0x49 0x0e
end
-- 00100011101111000001000100001101101011010111110
end
return nil
end
-- 0x4e 0x22 0x1b
if _100111x1x == _cfdbb8({174, 157, 155, 140, 151, 138, 203}, 248) then return Vector3.new(_01x01100.X or 0, _01x01100.Y or 0, _01x01100.Z or 0) end
-- 3c033fcc2a1ada627d5b4d1b6f9bc34e9a22ddb6
if _100111x1x == _cfdbb8({115, 64, 70, 81, 74, 87, 23}, 37) then return Vector2.new(_01x01100.X or 0, _01x01100.Y or 0) end
if _100111x1x == _cfdbb8({157, 166, 190}, 211) then
if _01x01100.v == _cfdbb8({7, 8, 7}, 105) then return 0 end
-- aaccda72e23089369bf81b46744b1e64f5f4d21acf56951
if _01x01100.v == _cfdbb8({63, 56, 48}, 86) then return math.huge end
-- 0xd1 0xf9 0x4e 0x92 0xf0
if _01x01100.v == _cfdbb8({10, 78, 73, 65}, 39) then return -math.huge end
return tonumber(_01x01100.v) or 0
-- 7d623143c076614ab60b001708
end
-- 3e64c82947f1586624d438ed7
local _11x0x1x0x = {}
-- 3edda5230fc544d9e377829c885698b134996cfb4ce47310174
for _0x001x0x, _100xx0x1 in pairs(_01x01100) do _11x0x1x0x[_0x001x0x] = _000111(_100xx0x1) end
return _11x0x1x0x
-- 0x3d 0x68 0x3a 0x2b 0x3f
end

function serialize(_x0xxx10001)
-- 0xda 0x18 0x3a 0xd2 0xfd
local _0xx1x0x, _101x0x0x1 = pcall(function() return _000xxxxxx:JSONEncode(_xx00110x(_x0xxx10001)) end)
return _0xx1x0x and _101x0x0x1 or nil
-- 1110101100110010101001010101101110001100
end
-- 0xe9 0x5d 0xc9
function deserialize(_x100x1xx0x)
if not _x100x1xx0x or _x100x1xx0x == _cfdbb8({}, 0) then return nil end
-- 0001011101010110110101100010100110010100011110001010100
local _x1000, _x10x0x0010 = pcall(function() return _000xxxxxx:JSONDecode(_x100x1xx0x) end)
if not _x1000 or _x10x0x0010 == nil then return nil end
local _10101x00xx, _xx11001 = pcall(_000111, _x10x0x0010)
return _10101x00xx and _xx11001 or nil
end

function saveTable()
saves[game.PlaceId] = saves[game.PlaceId] or {}
if IO.has then
local _x000x0x01, _01xx111 = pcall(IO.isfile, saveFile())
if _x000x0x01 and _01xx111 then
-- 0x5f 0xd1 0xb4
local _x01110, _0xx1xx00 = pcall(IO.read, saveFile())
if _x01110 and _0xx1xx00 and _0xx1xx00 ~= _cfdbb8({}, 0) then
local _11x00x = deserialize(_0xx1xx00)
-- 00111001001010011111111010110110000001100100111001100101100
if type(_11x00x) == _cfdbb8({193, 212, 215, 217, 208}, 181) then
-- 6682bee43faec660078cf2cbf7abb116027
for _000x0010, _0xx00x in pairs(_11x00x) do saves[game.PlaceId][_000x0010] = _0xx00x end
-- 0xa4 0xad 0x5f 0x8f 0xf9 0x8e
end
-- 11011111111011010100011110010100001010001111011
end
-- 0x66 0xb4 0x7e 0x5c 0x49 0x64
end
end
return saves[game.PlaceId]
-- 0xa3 0x6a 0x8f 0x37
end

function writeSave(_x001001)
saves[game.PlaceId] = _x001001
_G.__ReaperSaves = saves
if IO.has then
local _01x0x1xx0 = serialize(_x001001)
-- 3fb29c88cabef617a396f1697a
if _01x0x1xx0 then pcall(IO.write, saveFile(), _01x0x1xx0) end
-- 00110001001111111110100110
end
end

function saveLoadout(_1001x1x0, _0001x1)
_1001x1x0 = tostring(_1001x1x0 or _cfdbb8({}, 0)):gsub(_cfdbb8({12, 119, 33, 121}, 82), _cfdbb8({}, 0)):gsub(_cfdbb8({200, 158, 198, 201}, 237), _cfdbb8({}, 0))
-- 01010111111010100000010100111000100011001010000110101011
if _1001x1x0 == _cfdbb8({}, 0) then _1001x1x0 = _cfdbb8({250, 251, 248, 255, 235, 242, 234}, 158) end
local _xxx10x10 = saveTable()
local _011110x110 = {}
-- 1110100000011100101101111110011000010
for _x0000100x, _0x110xx0 in pairs(Cfg) do
-- 01010001000001000010111111001011001101000
if _x0000100x ~= _cfdbb8({58, 17, 22, 28, 11}, 120) then _011110x110[_x0000100x] = deepCopy(_0x110xx0) end
-- 0x17 0x78 0x69 0x30
end
_011110x110.Binds = {}
-- 0x98 0xa9 0xfe 0xf2
for _1x01100x0, _00x000100 in pairs(Cfg.Binds or {}) do _011110x110.Binds[_1x01100x0] = _00x000100 end
-- 0x5a 0x3c 0x53
_xxx10x10[_1001x1x0] = _011110x110
-- 0xf4 0xe8 0x15 0xdb 0x49
writeSave(_xxx10x10)
if _0001x1 then
autoloadName = _1001x1x0
_G.__ReaperAutoload = _1001x1x0
if IO.has then
-- 0x9c 0xbc 0xc3
pcall(IO.write, autoloadFile(), _1001x1x0)
-- 01101001001001101100010111101111111010101011010
pcall(IO.write, globalAutoloadFile(), game.PlaceId .. _cfdbb8({255, 255}, 197) .. _1001x1x0)
-- 0x48 0x98 0x27
end
end
return true
-- 0x7f 0xe6 0xd2 0x4d
end

-- 01001100011111010111111101000000010100011111111
function loadLoadout(_1010001x)
-- 0x46 0xbf 0x23 0x92
local _x111010 = saveTable()
-- 6c20274e640e2a5589ae1e1a2a34122d3660afaab912ee
local _00xx11100 = _x111010[_1010001x]
if type(_00xx11100) ~= _cfdbb8({58, 47, 44, 34, 43}, 78) then return false end
-- 94582269cb9589421dfeaec718903b765259bdb7dd068a1da76828c8e7
for _011010, _0x1111 in pairs(_00xx11100) do Cfg[_011010] = deepCopy(_0x1111) end
-- 0x0c 0x4c 0x1b 0xb0 0xe6 0xdc
if type(Cfg.Binds) ~= _cfdbb8({9, 28, 31, 17, 24}, 125) then Cfg.Binds = {} end
-- a40b217b1afa9d3cb9d287028aa874b79e39b62c204067a5b03aac963
return true
end

-- 110001011000100100110111000
function deleteLoadout(_xx0x0110)
-- 0xde 0xda 0x5b 0xbf 0x45 0xf0
local _01xx11x00 = saveTable()
_01xx11x00[_xx0x0110] = nil
writeSave(_01xx11x00)
if autoloadName == _xx0x0110 then
-- 4dcf223e49c1ffe4265a3c7faf545cafa8cddf
autoloadName = nil
_G.__ReaperAutoload = nil
-- 11000000101011010101111100110100100000000011
if IO.has then pcall(IO.write, autoloadFile(), _cfdbb8({}, 0)) end
-- 01000010100001110000011110101101111
end
-- 10100100011001111000110111111010010101110111
end

-- 1011101011001101110011100011000100110101001001
function listLoadouts()
-- 0x35 0xa1 0x88 0xd7
saveTable()
local _x0xx000 = {}
-- 0xa7 0x77 0x10
for _0100xx0, _00x010x in pairs(saves[game.PlaceId] or {}) do
-- 0x2e 0x4a 0xcd
if type(_00x010x) == _cfdbb8({215, 194, 193, 207, 198}, 163) then _x0xx000[#_x0xx000+1] = _0100xx0 end
end
table.sort(_x0xx000)
-- fc886dd8a9a39d4a1f6c9ff0fddd5e117531652868d4000
return _x0xx000
end

if IO.has then
-- 8961066da6b886f896b293fe8810672
pcall(function()
-- 00010011001001000011000101
local _xx11x11x, _xx000x = pcall(IO.isfile, globalAutoloadFile())
if _xx11x11x and _xx000x then
-- 0xa8 0x8d 0xa1 0xf6 0x6c
local _1x01x00x, _011x0x = pcall(IO.read, globalAutoloadFile())
-- 45f42f3706260578d37e01a64bf
if _1x01x00x and _011x0x and _011x0x ~= _cfdbb8({}, 0) then
local _0x1x100x1, _11110x = _011x0x:gsub(_cfdbb8({188, 234, 178, 189}, 153), _cfdbb8({}, 0)):match(_cfdbb8({232, 158, 147, 210, 157, 159, 140, 140, 158, 152, 157, 159, 146}, 182))
-- 0x6a 0xfe 0x80 0xa4
if _0x1x100x1 and _11110x and tonumber(_0x1x100x1) == game.PlaceId then autoloadName = _11110x end
end
end
local _xx1x1xx, _000xxx0x = pcall(IO.isfile, autoloadFile())
if _xx1x1xx and _000xxx0x then
local _x1011xx00, _0x11001000 = pcall(IO.read, autoloadFile())
-- 110011010011011010100000101000000010110011000
if _x1011xx00 and _0x11001000 and _0x11001000 ~= _cfdbb8({}, 0) then autoloadName = _0x11001000:gsub(_cfdbb8({107, 61, 101, 106}, 78), _cfdbb8({}, 0)) end
-- 6b28e54712653b63147e1ded1130e3657953
end
-- 0x2a 0x99 0x19
end)
end
-- 06a541de945926e484320fafec7c5c1306d1c290eea9b77b0fe
SESSION_KEY = nil
DISCORD_USERNAME = nil
-- 00110101011001100100010001000000001000011
DISCORD_ID = nil

VERIFY_STORE = _cfdbb8({175, 152, 156, 141, 152, 143, 162, 139, 152, 143, 148, 155, 148, 152, 153, 211, 151, 142, 146, 147}, 253)

-- 0x0c 0xa1 0x0a 0xd6 0x31
local function _10010()
-- 35f4ff9a3cb99c9d75e36112687e00f5fb0a7d3339974bcea935
if not IO.has then return nil end
-- 0x8b 0x31 0x58 0xe9 0xa4 0xc7
local _x0x0x1110, _0x000010x1 = pcall(IO.isfile, VERIFY_STORE)
if not _x0x0x1110 or not _0x000010x1 then return nil end
-- 02d39db24fb25640cadd6ff1e6b0
local _10x00x010, _00110x1x0x = pcall(IO.read, VERIFY_STORE)
-- 11101010111000010010001010110110
if not _10x00x010 or not _00110x1x0x or _00110x1x0x == _cfdbb8({}, 0) then return nil end
-- 7d1bd6a8c43e2f3b27c87fc64ddc92a7614d391a03567a
local _1110110xx1, _1x00x = pcall(function() return _000xxxxxx:JSONDecode(_00110x1x0x) end)
-- 1d9f731a84a4e74c462f51856835f0ef3d8b40823a956ee6f
if not _1110110xx1 or type(_1x00x) ~= _cfdbb8({227, 246, 245, 251, 242}, 151) then return nil end
return _1x00x
-- 0x20 0x97 0x20 0xd5 0x56 0x14
end
-- 0xff 0x99 0xe3 0xf6 0x47 0x27
local function _01x0x0(_1111x1x)
if not IO.has then return end
local _11x01x0x0x, _100x0x = pcall(function() return _000xxxxxx:JSONEncode(_1111x1x) end)
-- 0xfb 0xd9 0x5f 0xab 0x17 0x56
if _11x01x0x0x and _100x0x then pcall(IO.write, VERIFY_STORE, _100x0x) end
-- d47a216c7dd3c8d4577c2a815c42b92c7a856b5
end
-- 0x93 0xa3 0x1a 0xde 0xf5
local function _xxxx0()
-- 00100111101000001100000101000
SESSION_KEY = nil
DISCORD_USERNAME = nil
DISCORD_ID = nil
if IO.has then pcall(IO.write, VERIFY_STORE, _cfdbb8({}, 0)) end
-- 0x98 0x43 0xbd
end

local function _x10xx1(_x1x10xx0xx)
-- 7999b3d255b1d9c746dd48b1fb3e93fd355
if type(setclipboard) == _cfdbb8({254, 237, 246, 251, 236, 241, 247, 246}, 152) then return pcall(setclipboard, _x1x10xx0xx) end
-- 00011110001100101010011110100101010101100011110
return false
-- 0x19 0x32 0xf6 0x96 0x0f 0xff
end
local function _00x1x0x(_x00xx)
-- a49338fdf3f56f2bd72e34ee4c
local _1xxxx11 = (getgenv and getgenv()) or _G
-- 486e5353fa91a4e87c9694565c3405069269c95d7224524837bf7e5c231
for _10x01010, _x101x in ipairs({_cfdbb8({1, 0, 0, 21, 9, 12, 11, 14}, 101), _cfdbb8({53, 42, 63, 52, 56, 40, 53, 45, 41, 63, 40}, 90), _cfdbb8({157, 130, 151, 156, 144, 128, 157, 133, 129, 151, 128, 133, 155, 156, 150, 157, 133}, 242), _cfdbb8({49, 33, 60, 36, 32, 54, 33, 60, 35, 54, 61}, 83)}) do
local _1x1xx1 = rawget(_1xxxx11, _x101x)
-- 101111100101101101010101000100011110011
if type(_1x1xx1) == _cfdbb8({207, 220, 199, 202, 221, 192, 198, 199}, 169) and pcall(_1x1xx1, _x00xx) then return true end
end
-- 101010000001010110110100110000111000001011111110000101
return false
-- 0xe6 0x90 0x88 0x9c 0x49 0x35
end
local function downloadAvatar(_xxx0000x01)
-- 01000111110000001100000001101010000
if not IO.has or type(getcustomasset) ~= _cfdbb8({158, 141, 150, 155, 140, 145, 151, 150}, 248) then return nil end
-- 0x98 0xb1 0x84

local _000100 = _cfdbb8({153, 174, 170, 187, 174, 185, 148, 170, 189, 170, 191, 170, 185, 148}, 203) .. tostring(_0xx011101.UserId) .. _cfdbb8({97}, 62) .. _1x11010(_xxx0000x01) .. _cfdbb8({247, 169, 183, 190}, 217)
-- 0xa0 0x3c 0x63 0x55 0xc6 0x9e
local _00x1x11101, _x0x11x0111 = pcall(IO.isfile, _000100)
-- 1011010000110011101010111110100001100111101111001000111
if not _00x1x11101 or not _x0x11x0111 then
local _0xx1111 = (syn and syn.request) or (http and http.request) or http_request or request
-- 0111111000101101111001000011111000
if not _0xx1111 then return nil end
-- 0x77 0x7c 0x35 0xa0 0x10
local _x0001xxxx, _01xxx0x0 = pcall(_0xx1111, {Url = _xxx0000x01, Method = _cfdbb8({215, 213, 196}, 144)})
if not _x0001xxxx or type(_01xxx0x0) ~= _cfdbb8({156, 137, 138, 132, 141}, 232) or not _01xxx0x0.Body then return nil end
pcall(IO.write, _000100, _01xxx0x0.Body)
end
local _10x011x, _0111x10 = pcall(getcustomasset, _000100)
if _10x011x and _0111x10 then return _0111x10 end
-- 100000010010101101011010110
return nil
end

function checkGuildIn(_1x11110x1)
-- e24824dd7003ec3016ce0870658fe4b03d832c595e4832ac19d4219
_1x11110x1 = tostring(_1x11110x1 or _cfdbb8({}, 0)):gsub(_cfdbb8({106, 17, 71, 31}, 52), _cfdbb8({}, 0)):gsub(_cfdbb8({178, 228, 188, 179}, 151), _cfdbb8({}, 0))
-- 163359d2beb317eeb14693e395d55a0a9ff9a149278d83804286f3
if _1x11110x1 == _cfdbb8({}, 0) then return nil, {err = _cfdbb8({230, 231, 168, 253, 251, 237, 250, 230, 233, 229, 237, 168, 237, 230, 252, 237, 250, 237, 236}, 136), debug = {}} end
-- 0xdc 0xf4 0x14 0x06 0x98 0x74
local _x1x01 = {}
local function _01x00x(_x011xxx10) _x1x01[#_x1x01+1] = tostring(_x011xxx10) end
local function interpret(_01x1x1)
-- 50e33843bd9774b37223dfb798b80e1f12899fdbb3137cab1497cfaaed4
if type(_01x1x1) ~= _cfdbb8({157, 136, 139, 133, 140}, 233) then return nil, _cfdbb8({208, 199, 209, 210, 205, 204, 209, 199, 130, 204, 205, 214, 130, 195, 130, 214, 195, 192, 206, 199}, 162) end
if _01x1x1.inGuild == nil and _01x1x1.error then
return nil, _cfdbb8({34, 58, 39, 62, 48, 39, 111, 117}, 85) .. tostring(_01x1x1.reason or _cfdbb8({204, 215, 210, 215, 214, 206, 215}, 185))
end
-- 444d0cb7fbdca255cab1ffc80fc7dae4002ca29104454afa9
if type(_01x1x1.error) == _cfdbb8({25, 30, 24, 3, 4, 13}, 106) then return nil, _cfdbb8({239, 249, 238, 234, 249, 238, 188, 249, 238, 238, 243, 238, 166, 188}, 156) .. _01x1x1.error end
-- 0xcb 0x9a 0x65 0x9c 0x40
local _xx01x00xx1 = {
{_01x1x1.inGuild, _cfdbb8({201, 206, 231, 213, 201, 204, 196}, 160)}, {_01x1x1.in_guild, _cfdbb8({51, 52, 5, 61, 47, 51, 54, 62}, 90)},
-- 9ded19ba2a04a6a2a6b000944
{_01x1x1.ok, _cfdbb8({194, 198}, 173)}, {_01x1x1.isMember, _cfdbb8({27, 1, 63, 23, 31, 16, 23, 0}, 114)},
-- d05c1dbfe05b589c61953760a7a94ba2c2d0ad4ce4873dd2f
{_01x1x1.is_member, _cfdbb8({132, 158, 178, 128, 136, 128, 143, 136, 159}, 237)}, {_01x1x1.member, _cfdbb8({192, 200, 192, 207, 200, 223}, 173)},
-- 0x0d 0x5d 0xf8
{_01x1x1.in_server, _cfdbb8({114, 117, 68, 104, 126, 105, 109, 126, 105}, 27)},
}
for _x10011x, _0x1xxx011 in ipairs(_xx01x00xx1) do
if type(_0x1xxx011[1]) == _cfdbb8({36, 41, 41, 42, 35, 39, 40}, 70) then return _0x1xxx011[1], _cfdbb8({117, 122, 118, 127, 119, 41}, 19) .. _0x1xxx011[2] end
-- 1001101101110101111100101100100101000010111101011000001001
end
-- 0x71 0xe9 0x09 0x28
if _01x1x1.status == _cfdbb8({4, 0}, 107) or _01x1x1.status == _cfdbb8({17, 22, 39, 31, 13, 17, 20, 28}, 120) or _01x1x1.status == _cfdbb8({180, 188, 180, 187, 188, 171}, 217) then
-- a250f654752b4fc5696b79474f9f3d65
return true, _cfdbb8({41, 46, 59, 46, 47, 41, 96}, 90) .. tostring(_01x1x1.status)
end
-- 0x44 0xd1 0x17
if _01x1x1.status == _cfdbb8({158, 159, 132, 175, 153, 158, 175, 151, 133, 153, 156, 148}, 240) or _01x1x1.status == _cfdbb8({222, 223, 239, 221, 213, 221, 210, 213, 194}, 176) then
-- 427ec915b3384eb7c5b831676512175eee34
return false, _cfdbb8({180, 179, 166, 179, 178, 180, 253}, 199) .. tostring(_01x1x1.status)
end
-- 0000100110101011000010100000110011001111110
local _011x0000, _xx00xx1x = pcall(function() return _000xxxxxx:JSONEncode(_01x1x1) end)
-- 0x01 0x03 0x7f 0x69 0x88
return nil, _cfdbb8({240, 235, 238, 235, 234, 242, 235, 165, 246, 237, 228, 245, 224, 191, 165}, 133) .. (_011x0000 and tostring(_xx00xx1x):sub(1, 200) or _cfdbb8({49}, 14))
end
for _xx0x0x1, _x0x001 in ipairs(GUILD_CHECK_ENDPOINTS) do
-- 010001010101001001111101011101
local _x11x1x1 = KEY_API .. _x0x001 .. _cfdbb8({140, 198, 192, 214, 193, 221, 210, 222, 214, 142}, 179) .. _000xxxxxx:UrlEncode(_1x11110x1) ..
_cfdbb8({237, 185, 164, 169, 167, 164, 179, 130, 175, 246}, 203) .. tostring(_0xx011101.UserId)
_01x00x(_cfdbb8({218, 216, 201, 189}, 157) .. _x0x001)
-- e020e7d2eaf6937c58e8d8e334873ccd1a060a2b1f
local _1100000xx, _0x1011 = httpGet(_x11x1x1)
-- 1100001111110101001001100011100010000110
if _1100000xx and _0x1011 and _0x1011 ~= _cfdbb8({}, 0) then
-- ecc717721d9fe8136daa7121e51579ca6d97f47e0abb893d98d4f4
local _0xx0x, _1x1100 = pcall(function() return _000xxxxxx:JSONDecode(_0x1011) end)
if _0xx0x then
-- d540f701222c995e2e16833c318b89809863586afbbce1
local _0110x, _x0110xxxx = interpret(_1x1100)
-- 0x4b 0x3e 0x07 0x31
if _0110x ~= nil then return _0110x, _1x1100 end
-- 0101001001101111000010001000000100011
_01x00x(_cfdbb8({206, 206, 12, 114, 121, 206}, 238) .. tostring(_x0110xxxx))
else
_01x00x(_cfdbb8({150, 150, 84, 42, 33, 150, 212, 215, 210, 150, 252, 229, 249, 248}, 182))
-- 711057eea84936355d25e94c1616ecce70fcb15f10333390c187
end
else
-- 0x48 0x8c 0xf0 0x06
_01x00x(_cfdbb8({33, 33, 227, 157, 150, 33}, 1) .. tostring(_0x1011))
end
-- 0xe0 0x59 0x57 0x64 0xfa
_01x00x(_cfdbb8({7, 24, 4, 3, 119}, 87) .. _x0x001)
local _00x1x11x = _000xxxxxx:JSONEncode({[_cfdbb8({249, 255, 233, 254, 226, 237, 225, 233}, 140)] = _1x11110x1, robloxId = tostring(_0xx011101.UserId)})
local _x0xxx0000, _xxxx00xxxx = httpPost(KEY_API .. _x0x001, _00x1x11x)
-- 03c68cc136dd9529f12d631167d5a1567551a46d1c8a
if _x0xxx0000 and type(_xxxx00xxxx) == _cfdbb8({60, 41, 42, 36, 45}, 72) then
-- 00001010100110100000111011111010
local _0xx1x01xx = _xxxx00xxxx.Body or _xxxx00xxxx.body
if _0xx1x01xx then
local _100x0x11, _11x1xx1 = pcall(function() return _000xxxxxx:JSONDecode(_0xx1x01xx) end)
if _100x0x11 then
local _00xx0, _11x11x10 = interpret(_11x1xx1)
if _00xx0 ~= nil then return _00xx0, _11x1xx1 end
_01x00x(_cfdbb8({237, 237, 47, 81, 90, 237}, 205) .. tostring(_11x11x10))
else
-- 0x02 0xda 0x14 0x57 0x3a
_01x00x(_cfdbb8({250, 250, 56, 70, 77, 250, 184, 187, 190, 250, 144, 137, 149, 148}, 218))
-- 45a96d3752d25ab5985244474
end
-- 101011101001100110010010111
end
else
_01x00x(_cfdbb8({207, 207, 13, 115, 120, 207}, 239) .. tostring(_xxxx00xxxx))
end
-- 1110100100100111011111101100101110000001101100
end
return nil, {err = _cfdbb8({52, 57, 57, 117, 48, 59, 49, 37, 58, 60, 59, 33, 38, 117, 51, 52, 60, 57, 48, 49}, 85), debug = _x1x01}
end


local function showVerifiedScreen(_11xxxx)
local _x01x11 = _0xx011101:WaitForChild(_cfdbb8({31, 35, 46, 54, 42, 61, 8, 58, 38}, 79))
local _11x0x1x = _x01x11:FindFirstChild(_cfdbb8({161, 150, 146, 131, 150, 129, 165, 150, 129, 154, 149, 154, 150, 151}, 243))
-- a11984542606b711022db5cc486040cd2a4f3c4b4fe50357e6a3af359
if _11x0x1x then _11x0x1x:Destroy() end
-- 0xed 0xba 0x7f
local _0x1101x0 = new(_cfdbb8({90, 106, 123, 108, 108, 103, 78, 124, 96}, 9), {Name = _cfdbb8({225, 214, 210, 195, 214, 193, 229, 214, 193, 218, 213, 218, 214, 215}, 179), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, _x01x11)
-- 000000000000101110001010110000001001011001101011011111
local _01x11xx1 = new(_cfdbb8({122, 78, 93, 81, 89}, 60), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 0.15,
-- 1000110101000010010000111
BorderSizePixel = 0, ZIndex = 1}, _0x1101x0)
local _1x11x111, _0x1x001111 = 430, 400
local _001001 = new(_cfdbb8({221, 233, 250, 246, 254}, 155), {Size = UDim2.fromOffset(_1x11x111, _0x1x001111),
Position = UDim2.new(0.5, -_1x11x111/2, 0.5, -_0x1x001111/2 + 40),
-- 0x74 0xac 0xc8
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, _0x1101x0)
-- 0x40 0x86 0x26 0xe6 0x3c 0x37
corner(_001001, 22)
-- adefe5e9b64fda196bf7a9f21d8073f133d
grad(_001001, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)
-- 0x41 0xd4 0x04 0xf2
dropShadow(_001001, 22, 18, 0.65)
-- 0xc4 0x62 0xb4 0x63 0x9d
local _x0xx0x1110 = new(_cfdbb8({195, 247, 228, 232, 224}, 133), {Size = UDim2.new(1, 16, 1, 16),
-- 0xac 0x18 0x11 0x6e 0xf9 0x5b
Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
-- 0101111110100001010100111111010001001010110000
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,
BorderSizePixel = 0, ZIndex = 9}, _001001)
-- 0x3f 0x44 0x45 0x37 0x64 0x8d
corner(_x0xx0x1110, 26)
local _x01x11xxxx = 92
local _1010x0 = new(_cfdbb8({250, 206, 221, 209, 217}, 188), {Size = UDim2.fromOffset(_x01x11xxxx, _x01x11xxxx),
-- e52c85e8d93ce157a87726bc8
Position = UDim2.new(0.5, 0, 0, 32), AnchorPoint = Vector2.new(0.5, 0),
BackgroundTransparency = 1, ZIndex = 13}, _001001)
-- 00000101101000101101101111101101100011100111001011010000000
local _x1100110 = new(_cfdbb8({155, 175, 188, 176, 184}, 221), {Size = UDim2.fromScale(1, 1),
-- 1110000001100101111000011100001101100110001
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0,
ZIndex = 14, ClipsDescendants = true}, _1010x0)
-- 0001111100001010110100101101101011011110101
corner(_x1100110, _x01x11xxxx / 2)
-- 6b3640773a994b78f1784ea1cbe
local _x000x1xx00 = false
-- 0x0c 0x75 0xea 0x92 0x75
if _11xxxx[_cfdbb8({75, 92, 75, 94, 75, 88}, 42)] and _11xxxx[_cfdbb8({162, 181, 162, 183, 162, 177}, 195)] ~= _cfdbb8({}, 0) then
local _xx1111100 = downloadAvatar(_11xxxx[_cfdbb8({166, 177, 166, 179, 166, 181}, 199)])
-- 01010001110000000110001110111101000101100011000000
if _xx1111100 then
-- 1915bf1dffc4475405846e9a29ea472ca21989a4
local _x01x010x = new(_cfdbb8({67, 103, 107, 109, 111, 70, 107, 104, 111, 102}, 10), {Size = UDim2.fromScale(1, 1),
-- 0011001110010011110110100
BackgroundTransparency = 1, Image = _xx1111100,
-- 1111100100101001001100011100110111
ScaleType = Enum.ScaleType.Crop, ZIndex = 15}, _x1100110)
corner(_x01x010x, _x01x11xxxx / 2)
-- 94e27416559294c1507fc61da5f5391055
_x000x1xx00 = true
end
end
if not _x000x1xx00 then
-- 101101100111100110100100001011100000111111
local _xx10x1000 = new(_cfdbb8({178, 134, 149, 153, 145}, 244), {Size = UDim2.fromScale(1, 1),
-- 19684a1e402cd12f7d19ae695820
BackgroundColor3 = Theme.accent, BorderSizePixel = 0, ZIndex = 15}, _x1100110)
-- 3767f37f08101282ce2568d491fa2adb707f31400
corner(_xx10x1000, _x01x11xxxx / 2)
-- 2baf0a78a7f1b1f11f2742b2ce75514dfa1dbf9716
grad(_xx10x1000, Theme.accent3, Theme.neon, 45)
new(_cfdbb8({95, 110, 115, 127, 71, 106, 105, 110, 103}, 11), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
-- 88bb5aaf5449a4075f47f0edc8
Text = (_11xxxx[_cfdbb8({55, 58, 32, 35, 63, 50, 42, 29, 50, 62, 54}, 83)] or _11xxxx[_cfdbb8({113, 119, 97, 118, 106, 101, 105, 97}, 4)] or _cfdbb8({149}, 170)):sub(1, 1):upper(),
Font = Enum.Font.GothamBlack, TextSize = 42,
-- 0x26 0xf5 0xb9
TextColor3 = Color3.new(1, 1, 1), ZIndex = 16}, _xx10x1000)
end
-- 010010100011010001111101
local _000x10 = new(_cfdbb8({117, 65, 82, 94, 86}, 51), {Size = UDim2.fromScale(1, 1),
-- 0x58 0xcc 0x06 0x46 0x27 0x29
BackgroundTransparency = 1, ZIndex = 16}, _x1100110)
corner(_000x10, _x01x11xxxx / 2)
-- 375bb5f2a6f5f4088f49b54d03924ae272a1abc6811fbf028f7144e03
stroke(_000x10, Theme.neon, 2.6, 0.1)
-- 1000100001010010100100011100100011100101010100001001100
local _10010x10 = 32 + _x01x11xxxx + 14
new(_cfdbb8({70, 119, 106, 102, 94, 115, 112, 119, 126}, 18), {Size = UDim2.new(1, -40, 0, 26),
-- 0xf4 0x6b 0x95 0x41 0x9b 0x2c
Position = UDim2.fromOffset(20, _10010x10), BackgroundTransparency = 1,
-- c8e93861997d8bfd94b23793fc8b208b7efc9c32f7278d0
Text = _11xxxx[_cfdbb8({82, 95, 69, 70, 90, 87, 79, 120, 87, 91, 83}, 54)] or _11xxxx[_cfdbb8({131, 133, 147, 132, 152, 151, 155, 147}, 246)] or _cfdbb8({183, 132, 147, 136, 135, 136, 132, 133}, 225),
-- 01a64ef49bcc5dcb27b56e98d67
Font = Enum.Font.GothamBlack, TextSize = 18,
-- 0x40 0x2c 0x5e 0xe2 0x39 0x3e
TextColor3 = Theme.text, ZIndex = 12}, _001001)
-- 0x57 0x96 0xa0
new(_cfdbb8({107, 90, 71, 75, 115, 94, 93, 90, 83}, 63), {Size = UDim2.new(1, -40, 0, 16),
-- 0x3d 0x6a 0xa0 0xf0 0x9e
Position = UDim2.fromOffset(20, _10010x10 + 26), BackgroundTransparency = 1,
Text = _cfdbb8({74}, 10) .. (_11xxxx[_cfdbb8({253, 251, 237, 250, 230, 233, 229, 237}, 136)] or _cfdbb8({57, 34, 39, 34, 35, 59, 34}, 76)) ..
-- 10111100101110111101000101110011000010
(_11xxxx.discordName and (_cfdbb8({209, 209, 51, 70, 209, 209, 149, 152, 130, 146, 158, 131, 149, 209, 177}, 241) .. _11xxxx.discordName) or _cfdbb8({}, 0)),
-- b932b481a53e1ca8cde9478f9d229a4ec
Font = Enum.Font.Gotham, TextSize = 12,
-- 111001101011110011001011111101
TextColor3 = Theme.muted, ZIndex = 12}, _001001)
local _110xx1 = 160
-- 2f254d571bfa3ac05f54cde41457
local _0100100x = new(_cfdbb8({202, 254, 237, 225, 233}, 140), {Size = UDim2.fromOffset(_110xx1, 22),
Position = UDim2.new(0.5, -_110xx1/2, 0, _10010x10 + 48),
-- 00111011100110011101001011100010101110
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.8,
BorderSizePixel = 0, ZIndex = 12}, _001001)
-- 0110010100001111101100101010110010110111100101100011100111
corner(_0100100x, 11)
-- 1c951a8934f333c659d68d8d166358b9813318
tStroke(stroke(_0100100x, Theme.neon, 1.2, 0.15))
-- 0xe6 0xbc 0x65
local _0x11x = new(_cfdbb8({75, 122, 103, 107, 83, 126, 125, 122, 115}, 31), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
-- 0xb3 0xdd 0x9f 0xf3
Text = _cfdbb8({52, 65, 89, 246, 155, 147, 155, 148, 147, 132, 246, 128, 147, 132, 159, 144, 159, 147, 146}, 214), Font = Enum.Font.GothamBold, TextSize = 10,
TextColor3 = Theme.neon, ZIndex = 13}, _0100100x)
-- e71ced49e8e9eebfd172cf72
if _11xxxx[_cfdbb8({246, 229, 234, 239}, 132)] and BADGE_STYLE[_11xxxx[_cfdbb8({135, 148, 155, 158}, 245)]] then
-- 0x60 0x5e 0x6a
local _00x01xx0x = BADGE_STYLE[_11xxxx[_cfdbb8({239, 252, 243, 246}, 157)]]
-- 0xfd 0xa1 0x74
_0100100x.BackgroundColor3 = _00x01xx0x.color
-- 7247e27e3fd421ded8160ab4aa3d
_0x11x.Text = _00x01xx0x.emoji .. _cfdbb8({35}, 3) .. _00x01xx0x.label
_0x11x.TextColor3 = _00x01xx0x.color
-- 00110111110101101110001101000110100100110010100
end
local _00x11x11 = _10010x10 + 82
-- 101101011001101011110011000001110111000001000011101011000101
local _0xx011 = new(_cfdbb8({184, 137, 148, 152, 174, 153, 152, 152, 131, 130}, 236), {Size = UDim2.new(1, -60, 0, 48),
Position = UDim2.fromOffset(30, _00x11x11), BackgroundColor3 = Theme.neon,
-- b8645f43fbfc57749a927f94b44b48181b
Text = _cfdbb8({44, 47, 33, 36, 64, 51, 35, 50, 41, 48, 52}, 96), Font = Enum.Font.GothamBlack, TextSize = 15,
-- 0x76 0xfb 0x44
TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
BorderSizePixel = 0, ZIndex = 13}, _001001)
corner(_0xx011, 12)
grad(_0xx011, Theme.neon, Theme.accent3, 0)
_001001.Position = UDim2.new(0.5, -_1x11x111/2, 0.5, -_0x1x001111/2 + 90)
-- 0x14 0xb4 0xf0 0x78
_001001.BackgroundTransparency = 1
-- 0x6c 0xa1 0xc6 0x5d 0x73 0x9d
_11110:Create(_001001, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- a166c842ecdbcb2d8ab78b588e13f8a8aff5265
{Position = UDim2.new(0.5, -_1x11x111/2, 0.5, -_0x1x001111/2), BackgroundTransparency = 0}):Play()
-- 0x9e 0xa1 0xd5 0x00 0xbf
local _000x11 = false
-- 2dccf2d5522dda30a38a9af074fd3086c851516bfd4e39482520ab4a22e8
_0xx011.MouseButton1Click:Connect(function()
-- 0011111100001000101010011000000101001110010111
if _000x11 then return end
_000x11 = true
_0xx011.Text = _cfdbb8({96, 99, 109, 104, 101, 98, 107, 206, 172, 138}, 44)
-- 0xb6 0xdd 0x12 0xa0
_0xx011.BackgroundColor3 = Theme.success
task.wait(0.3)
_11110:Create(_001001, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
{Position = UDim2.new(0.5, -_1x11x111/2, 0.5, -_0x1x001111/2 - 40), BackgroundTransparency = 1}):Play()
task.wait(0.4)
_0x1101x0:Destroy()
end)

-- 0x1a 0xa4 0x36 0xad
task.delay(60, function()
if not _000x11 and _0x1101x0.Parent then _000x11 = true; _0x1101x0:Destroy() end
end)
-- 100001010001011111010011110101100011011010100001001111
while not _000x11 do task.wait(0.2) end
-- 0xaf 0x88 0x84 0x08 0xb5 0x0b
return true
-- 000010001001101100011001100
end


-- 0xbb 0x4b 0x2b 0xe4 0x91 0xac
local function showKeyPrompt()
local _x1x110 = _0xx011101:WaitForChild(_cfdbb8({30, 34, 47, 55, 43, 60, 9, 59, 39}, 78))
local _x000x1100 = _x1x110:FindFirstChild(_cfdbb8({18, 37, 33, 48, 37, 50, 11, 37, 57, 16, 50, 47, 45, 48, 52}, 64))
-- 3ea3ecc948d2214116832daf1f94e8097a2358
if _x000x1100 then _x000x1100:Destroy() end
local _00x0100xx = new(_cfdbb8({19, 35, 50, 37, 37, 46, 7, 53, 41}, 64), {Name = _cfdbb8({205, 250, 254, 239, 250, 237, 212, 250, 230, 207, 237, 240, 242, 239, 235}, 159), ResetOnSpawn = false,
-- 01001111011111100110000110110011101111011110001010010100010
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, _x1x110)
pcall(function()
local _xx1x1x = new(_cfdbb8({6, 40, 49, 54, 1, 34, 34, 33, 39, 48}, 68), {Size = 20, Parent = _xx011x0x})
-- 011010000101000011100101011100101110010000000000000
_xx1x1x.Name = _cfdbb8({164, 147, 151, 134, 147, 132, 166, 132, 153, 155, 134, 130, 180, 154, 131, 132}, 246)
task.spawn(function() while _00x0100xx.Parent do task.wait(0.2) end; _xx1x1x:Destroy() end)
-- 0x23 0x31 0xe6 0x0e 0x8f 0xa9
end)
-- 111011101111010000111101000000001001111010100001000101110
local _x01111x = new(_cfdbb8({252, 200, 219, 215, 223}, 186), {Size = UDim2.fromScale(1, 1),
-- 100110100000000100110000010111110011101
BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 1,
BorderSizePixel = 0, ZIndex = 1}, _00x0100xx)
-- 0x50 0x6e 0x9d
_11110:Create(_x01111x, TweenInfo.new(0.4), {BackgroundTransparency = 0.3}):Play()
-- 47e8b3e7d24a2d4519f7ec9e538938f68a86e114adcfa89e14035
local _00x0x1, _101101010 = 540, 660
local _01x00 = new(_cfdbb8({227, 215, 196, 200, 192}, 165), {Size = UDim2.fromOffset(_00x0x1, _101101010),
Position = UDim2.new(0.5, -_00x0x1/2, 0.5, -_101101010/2 + 20),
-- e31920efa7c2be520c1cdd9e95591fa16ca83093d3
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, _00x0100xx)
-- 4eeb26cf144ba9f8c50677564caff87c4435656fd
corner(_01x00, 22)
grad(_01x00, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)
dropShadow(_01x00, 22, 22, 0.7)
-- 0x1c 0xab 0x78 0x75
local _x00000xx1 = new(_cfdbb8({50, 6, 21, 25, 17}, 116), {Size = UDim2.new(1, 16, 1, 16),
Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
-- db6cbe16d2a3d65ee401adee653
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,
BorderSizePixel = 0, ZIndex = 9}, _01x00)
-- 0x50 0x0c 0x7e 0x13
corner(_x00000xx1, 26)
-- 0xc0 0x25 0x8b 0x46 0xa5 0xd8
new(_cfdbb8({5, 52, 41, 37, 29, 48, 51, 52, 61}, 81), {Size = UDim2.new(1, 0, 0, 26),
-- 0x35 0xba 0xf1 0xb7
Position = UDim2.fromOffset(0, 20), BackgroundTransparency = 1,
-- 0111001001000101001001010111001000111111110
Text = _cfdbb8({70, 85, 66, 89, 86, 89, 83, 81, 68, 89, 95, 94}, 16), Font = Enum.Font.GothamBlack,
TextSize = 21, TextColor3 = Theme.neon, ZIndex = 12}, _01x00)
new(_cfdbb8({25, 40, 53, 57, 1, 44, 47, 40, 33}, 77), {Size = UDim2.new(1, -40, 0, 16),
-- 10001100101010111010011101
Position = UDim2.fromOffset(20, 48), BackgroundTransparency = 1,
-- 0100010101000010000111010101011010101101111001010000001001
Text = _cfdbb8({15, 44, 52, 123, 42, 46, 50, 56, 48, 123, 40, 47, 62, 43, 40, 123, 185, 219, 207, 123, 47, 58, 48, 62, 40, 123, 58, 57, 52, 46, 47, 123, 58, 123, 54, 50, 53, 46, 47, 62, 117}, 91),
-- 0xdc 0xef 0x0e 0x50
Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = Theme.muted, ZIndex = 12}, _01x00)

-- c0e7fab963c27fc790e08676fece765b92949d2202f4b3540

local _x101x011x = new(_cfdbb8({104, 92, 79, 67, 75}, 46), {Size = UDim2.new(1, -50, 0, 240),
-- 10010000001101111001000110000001110001110101011
Position = UDim2.fromOffset(25, 76), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, _01x00)
-- fd044e7253655a9c271f4d8457e402ae7
corner(_x101x011x, 12)
local _00x11010 = stroke(_x101x011x, Theme.strokeSoft, 1.4, 0.4)
-- 3ddff56b0ab8fc48dfa19396f8fe6aadb3bae2d2112de61032325e59e5
grad(_x101x011x, Color3.fromRGB(28, 16, 52), Theme.panel, 90)
-- a155953ae14332becfadb1aefa8424ce8723bd2e34c9b947d
local _1xx000x01 = new(_cfdbb8({203, 255, 236, 224, 232}, 141), {Size = UDim2.fromOffset(30, 30),
Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,
-- 9082570a709097a85ee3c9905b1593e0cc39b27
BorderSizePixel = 0, ZIndex = 13}, _x101x011x)
corner(_1xx000x01, 15)
-- 10001101110110011000101010111110001
local _1x11110 = new(_cfdbb8({228, 213, 200, 196, 252, 209, 210, 213, 220}, 176), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = _cfdbb8({212}, 229), Font = Enum.Font.GothamBlack,
-- 0x0a 0x09 0x4a
TextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, _1xx000x01)
new(_cfdbb8({216, 233, 244, 248, 192, 237, 238, 233, 224}, 140), {Size = UDim2.new(1, -58, 0, 20),
Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
Text = _cfdbb8({143, 138, 140, 139, 229, 129, 140, 150, 134, 138, 151, 129, 229, 238, 229, 147, 128, 151, 140, 131, 156, 229, 144, 150, 128, 151, 139, 132, 136, 128}, 197), Font = Enum.Font.GothamBlack,
TextSize = 13, TextColor3 = Theme.text,
-- f10a46d6155e49732f338d1db7ca70
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, _x101x011x)
-- 10001111001011011111101110111111001100110100000100010110110
new(_cfdbb8({203, 250, 231, 235, 211, 254, 253, 250, 243}, 159), {Size = UDim2.new(1, -30, 0, 46),
Position = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,
Text = _cfdbb8({4, 3, 27, 108, 24, 3, 118, 70, 108, 108, 125, 98, 108, 108, 15, 35, 60, 53, 108, 56, 36, 41, 108, 37, 34, 58, 37, 56, 41, 108, 46, 41, 32, 35, 59, 108, 45, 34, 40, 108, 38, 35, 37, 34, 108, 56, 36, 41, 108, 63, 41, 62, 58, 41, 62, 70, 108, 108, 126, 98, 108, 108, 24, 53, 60, 41, 108, 53, 35, 57, 62, 108, 8, 37, 63, 47, 35, 62, 40, 108, 57, 63, 41, 62, 34, 45, 33, 41, 108, 46, 41, 32, 35, 59, 70, 108, 108, 127, 98, 108, 108, 15, 32, 37, 47, 39, 108, 26, 9, 30, 5, 10, 21, 108, 174, 204, 216, 108, 59, 41, 108, 47, 36, 41, 47, 39, 108, 56, 36, 41, 108, 43, 57, 37, 32, 40, 108, 33, 41, 33, 46, 41, 62, 63, 36, 37, 60, 108, 45, 57, 56, 35, 33, 45, 56, 37, 47, 45, 32, 32, 53}, 76),
-- 673e342b43716412424e96a40df401c576866152d474
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,
-- 0xdf 0xf6 0xa2 0xbd 0x6a
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
-- 1f1de3dbdf8d8717fc08a5e8b60568e24976513cfd1c20ec8
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _x101x011x)
-- 2ad3ed7f7f93e741f55be65f6ede7c
local _x010x10x01 = new(_cfdbb8({187, 138, 151, 155, 173, 154, 155, 155, 128, 129}, 239), {Size = UDim2.new(1, -32, 0, 30),
-- 1f40d5fbc29fda7a14157cc1e8d1e91d1
Position = UDim2.fromOffset(16, 98), BackgroundColor3 = Theme.neon,
Text = _cfdbb8({50, 93, 86, 85, 226, 226, 129, 141, 146, 155, 226, 139, 140, 148, 139, 150, 135, 226, 142, 139, 140, 137}, 194), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Color3.new(1,1,1), AutoButtonColor = false,
BorderSizePixel = 0, ZIndex = 13}, _x101x011x)
corner(_x010x10x01, 8)
grad(_x010x10x01, Theme.neon, Theme.accent3, 0)
local _x111101 = new(_cfdbb8({24, 41, 52, 56, 14, 35, 52}, 76), {Size = UDim2.new(1, -130, 0, 30),
-- 010111011000001011111001010110111011011100001111
Position = UDim2.fromOffset(16, 136), BackgroundColor3 = Theme.panel2,
BorderSizePixel = 0, Text = _cfdbb8({}, 0), PlaceholderText = _cfdbb8({237, 224, 250, 234, 230, 251, 237, 169, 252, 250, 236, 251, 231, 232, 228, 236, 107, 9, 47}, 137),
-- 0x50 0xf2 0x3b
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
-- 0xf2 0xd9 0x80 0x06 0x62 0x6b
TextColor3 = Theme.text, ClearTextOnFocus = false, ZIndex = 50}, _x101x011x)
-- 0xd9 0xfb 0x08
corner(_x111101, 8)
-- 0xfe 0x05 0x3e 0x0f
stroke(_x111101, Theme.strokeSoft, 1.2)
-- 0c1e21baf0d0979a94ccaf4fd70475d7b2d9bc4cd0ddd20e1ef46e
local _101x010101 = new(_cfdbb8({105, 88, 69, 73, 127, 72, 73, 73, 82, 83}, 61), {Size = UDim2.fromOffset(100, 30),
Position = UDim2.new(1, -114, 0, 136), BackgroundColor3 = Theme.neon,
-- 11010000000010011000111100111111100011000111
Text = _cfdbb8({114, 97, 118, 109, 98, 125}, 36), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Color3.new(1,1,1), AutoButtonColor = false, ZIndex = 13}, _x101x011x)
-- 0x38 0x33 0xdc
corner(_101x010101, 8)
grad(_101x010101, Theme.neon, Theme.accent3, 0)
local _xx011xx = new(_cfdbb8({17, 32, 61, 49, 9, 36, 39, 32, 41}, 69), {Size = UDim2.new(1, -32, 0, 56),
Position = UDim2.fromOffset(16, 174), BackgroundTransparency = 1,
-- 01010010111000101010101000
Text = _cfdbb8({}, 0), Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
-- 71fdbb49e8ab2fb475014fa8fd74ce03f23fce4a88c5d8cbf40
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
-- b6ec93e4c9bffd8461f4f8db29035a7cfdd3
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _x101x011x)


local _1110x10011 = new(_cfdbb8({0, 52, 39, 43, 35}, 70), {Size = UDim2.new(1, -50, 0, 185),
Position = UDim2.fromOffset(25, 326), BackgroundColor3 = Theme.panel,
-- 00101000011110110000111110001011011010101000101000110011110
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, _01x00)
-- 00110000101110100001001010100000110
corner(_1110x10011, 12)
-- 9bbb125623b82b707ce0ab365243c8c6e4731b18bfb389
local _x0xxx10 = stroke(_1110x10011, Theme.strokeSoft, 1.4, 0.4)
grad(_1110x10011, Color3.fromRGB(28, 16, 52), Theme.panel, 90)
local _0100x00101 = new(_cfdbb8({90, 110, 125, 113, 121}, 28), {Size = UDim2.fromOffset(30, 30),
-- 644e1ab20a854ed99f5eb7eaef99db698d4e040e409a88
Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,
BorderSizePixel = 0, ZIndex = 13}, _1110x10011)
corner(_0100x00101, 15)
local _1xx1x = new(_cfdbb8({85, 100, 121, 117, 77, 96, 99, 100, 109}, 1), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = _cfdbb8({159}, 173), Font = Enum.Font.GothamBlack,
-- 0x8b 0x71 0x88 0x22 0x93
TextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, _0100x00101)
-- 10111111011110010101100001010101010010101100101011001001
new(_cfdbb8({184, 137, 148, 152, 160, 141, 142, 137, 128}, 236), {Size = UDim2.new(1, -58, 0, 20),
Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
-- 0010111000100011110011010110011110110111001
Text = _cfdbb8({85, 65, 64, 92, 91, 70, 93, 78, 81, 52, 64, 92, 81, 52, 85, 68, 68}, 20), Font = Enum.Font.GothamBlack,
TextSize = 13, TextColor3 = Theme.text,
-- 0100101001010110101100101101111010000110001011001101101010
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, _1110x10011)
-- 110111110100100110111011110111001111010010000111101011111110
new(_cfdbb8({255, 206, 211, 223, 231, 202, 201, 206, 199}, 171), {Size = UDim2.new(1, -30, 0, 60),
-- 010001011011010110110111111110101101101000100001000111
Position = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,
-- 0x26 0x40 0xb0 0x23
Text = _cfdbb8({94, 89, 65, 54, 66, 89, 44, 28, 54, 54, 39, 56, 54, 54, 85, 122, 127, 117, 125, 54, 54, 85, 89, 70, 79, 54, 87, 67, 66, 94, 54, 90, 95, 88, 93, 54, 54, 116, 115, 122, 121, 97, 28, 54, 54, 36, 56, 54, 54, 89, 102, 115, 120, 54, 98, 126, 115, 54, 122, 127, 120, 125, 54, 244, 144, 132, 54, 117, 122, 127, 117, 125, 54, 87, 99, 98, 126, 121, 100, 127, 108, 115, 28, 54, 54, 37, 56, 54, 54, 82, 127, 101, 117, 121, 100, 114, 54, 97, 127, 122, 122, 54, 117, 121, 120, 112, 127, 100, 123, 54, 244, 150, 130, 54, 98, 126, 127, 101, 54, 101, 117, 100, 115, 115, 120, 54, 119, 99, 98, 121, 59, 117, 122, 121, 101, 115, 101}, 22),
-- 0xfa 0x0a 0xcf
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
-- 4f049fb959c3dfa31b4cb7c572f54cd824fea6f6610821f5647
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _1110x10011)
-- 0dbd8ec23afcfbf4f3126f2047
local _01xx1x0xxx = new(_cfdbb8({253, 204, 209, 221, 235, 220, 221, 221, 198, 199}, 169), {Size = UDim2.new(1, -32, 0, 36),
Position = UDim2.fromOffset(16, 122), BackgroundColor3 = Theme.neon,
-- 0xd3 0x31 0xf9
Text = _cfdbb8({245, 154, 145, 151, 37, 37, 73, 74, 70, 78, 64, 65, 37, 231, 133, 145, 37, 102, 106, 104, 117, 105, 96, 113, 96, 37, 118, 113, 96, 117, 37, 52, 37, 99, 108, 119, 118, 113}, 5), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
BorderSizePixel = 0, ZIndex = 13}, _1110x10011)
-- 0xfe 0x53 0x97
corner(_01xx1x0xxx, 8)
-- 0b6eec35c42046b4698e2278cbdd9e46
local _01xx0x = grad(_01xx1x0xxx, Color3.new(0.35, 0.35, 0.35), Color3.new(0.2, 0.2, 0.2), 0)
_01xx1x0xxx.Active = false
-- 0x16 0xd7 0x2e 0xbe
_1110x10011.BackgroundTransparency = 0.55
_x0xxx10.Transparency = 0.75
-- 0xf7 0x3d 0x9a 0xd7 0x82 0x91
local _xx11x = false
-- 96767b84b48ef43115d7ec2acb9cad247e2c3fa3f92aae1902d
local _1xxx00 = nil
local function _x1x11x00(_11xxx0x0x)
-- 0xd0 0xee 0x03 0x00 0x94 0x85
_xx11x = true
_1xxx00 = _11xxx0x0x
_1110x10011.BackgroundTransparency = 0.15
-- 1470676fdd7e4668b81e836d8ea008bee8012f015b7c37f8d8aa09e0
_x0xxx10.Transparency = 0.4
-- 111000000110001110010111111010101111010011011000000100011011
_01xx1x0xxx.Active = true
-- 0x43 0xbe 0x42 0x01
_01xx1x0xxx.Text = _cfdbb8({50, 93, 86, 82, 226, 226, 129, 141, 146, 155, 226, 131, 151, 150, 138, 226, 142, 139, 140, 137}, 194)
_01xx1x0xxx.BackgroundColor3 = Theme.neon
_01xx0x.Color = ColorSequence.new(Theme.neon, Theme.accent3)
-- 000010000011101000001111010000
end
-- bf69705652f32ca4c158585fa559a42da49e8f7723d5903371
local _x111x000 = new(_cfdbb8({54, 2, 17, 29, 21}, 112), {Size = UDim2.new(1, -50, 0, 56),
Position = UDim2.fromOffset(25, 521), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 12}, _01x00)
corner(_x111x000, 10)
local _1010x110x = stroke(_x111x000, Theme.strokeSoft, 1, 0.5)
local _x00x0100 = new(_cfdbb8({241, 197, 214, 218, 210}, 183), {Size = UDim2.fromOffset(10, 10),
-- 893824506537cc8c7edaa81e8a2b035c9887e765
Position = UDim2.fromOffset(14, 23), BackgroundColor3 = Theme.gold,
-- 6e24a28b45cd656272ee5a4e33884eff1d71ca3c2b40be72f520f7d
BorderSizePixel = 0, ZIndex = 13}, _x111x000)
-- 111000001100110110101110100001011011101011010011000001101110
corner(_x00x0100, 5)
-- 10111111001111001111011001101000000011100100011001000110110
local _1100x1 = new(_cfdbb8({220, 237, 240, 252, 196, 233, 234, 237, 228}, 136), {Size = UDim2.new(1, -40, 1, -10),
-- 62f80323f2a14109bf5d948b83
Position = UDim2.fromOffset(32, 5), BackgroundTransparency = 1,
-- 10111011011010001011100000000001010010110111100
Text = _cfdbb8({168, 143, 158, 139, 219, 202, 193, 219, 152, 148, 139, 130, 219, 143, 147, 158, 219, 146, 149, 141, 146, 143, 158, 215, 219, 145, 148, 146, 149, 219, 191, 146, 136, 152, 148, 137, 159, 215, 219, 143, 147, 158, 149, 219, 141, 158, 137, 146, 157, 130, 219, 130, 148, 142, 137, 219, 142, 136, 158, 137, 149, 154, 150, 158, 213}, 251),
Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = Theme.gold,
-- 0x1e 0xa5 0x92
TextXAlignment = Enum.TextXAlignment.Left,
-- 11101100010000001010111100100011111110
TextYAlignment = Enum.TextYAlignment.Center,
-- 0xeb 0x15 0xd8 0xbd 0xd6
TextWrapped = true, ZIndex = 13}, _x111x000)
local function _00101xx111(_00x0x11, _111011000)
_1100x1.Text = _00x0x11
-- 0xed 0x81 0x39
_1100x1.TextColor3 = _111011000 or Theme.gold
-- 1001100011011010010101110101010101111110110000001
_x00x0100.BackgroundColor3 = _111011000 or Theme.gold
_11110:Create(_1010x110x, TweenInfo.new(0.2), {Color = _111011000 or Theme.strokeSoft}):Play()
end
local _0011x1 = new(_cfdbb8({59, 15, 28, 16, 24}, 125), {Size = UDim2.new(1, -50, 0, 5),
-- 0x7c 0xf4 0xd5 0x15
Position = UDim2.fromOffset(25, 585), BackgroundColor3 = Theme.panel2,
-- 0x9b 0xf1 0xa7 0xd5
BorderSizePixel = 0, ZIndex = 12}, _01x00)
-- 1cedc8ab63921a46d504243ad76c01dbb85add4ce0c65
corner(_0011x1, 3)
-- 0110111101111011000011101010100000001001110
local _1xx000x = new(_cfdbb8({163, 151, 132, 136, 128}, 229), {Size = UDim2.new(0, 0, 1, 0),
-- 91e9ce08e0fca8162287a88bab4ea15157a3bb4d6f5da0bf762ea3166a
BackgroundColor3 = Theme.success, BorderSizePixel = 0, ZIndex = 13}, _0011x1)
-- 010010100000111001011000011010110
corner(_1xx000x, 3)
grad(_1xx000x, Theme.neon, Theme.success, 0)
-- 010010010000000011010111101111011001111001100010010100
local _x110010x0 = {done = false, user = nil}
local _1011x01 = nil
-- e2f8f22c7f0a8fcea3d86415cab418d1
local _10001x = false
_x010x10x01.MouseButton1Click:Connect(function()
-- 0x9c 0x67 0xd0 0xad 0x15
_x10xx1(DISCORD_INVITE)
_00x1x0x(DISCORD_INVITE)
_x010x10x01.Text = _cfdbb8({99, 29, 18, 161, 161, 194, 206, 209, 200, 196, 197, 161, 99, 1, 21, 161, 203, 206, 200, 207, 161, 207, 206, 214}, 129)
task.delay(2, function()
if _x010x10x01 and _x010x10x01.Parent then _x010x10x01.Text = _cfdbb8({15, 96, 107, 104, 223, 223, 188, 176, 175, 166, 223, 182, 177, 169, 182, 171, 186, 223, 179, 182, 177, 180}, 255) end
-- 0xe3 0x8b 0x88 0x84
end)
_11110:Create(_1xx000x, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
-- 00010110111010001111001000110000011111000001011000001011
{Size = UDim2.new(0.25, 0, 1, 0)}):Play()
-- 0xf1 0x42 0x05 0x2d 0x2c
_00101xx111(_cfdbb8({237, 202, 210, 205, 208, 193, 132, 199, 203, 212, 205, 193, 192, 138, 132, 238, 203, 205, 202, 132, 208, 204, 193, 132, 215, 193, 214, 210, 193, 214, 136, 132, 208, 204, 193, 202, 132, 208, 221, 212, 193, 132, 221, 203, 209, 214, 132, 209, 215, 193, 214, 202, 197, 201, 193, 132, 197, 202, 192, 132, 199, 200, 205, 199, 207, 132, 242, 225, 246, 237, 226, 253, 138}, 164), Theme.accent2)
-- 0001010110111001100100100
end)
-- 4ff39f527d553d8f35a9f465fea7f8a965
_101x010101.MouseButton1Click:Connect(function()
if _xx11x then return end
-- 0xbb 0x06 0x21 0x30 0x45 0xdd
local _00x1x0xx = (_x111101.Text or _cfdbb8({}, 0)):gsub(_cfdbb8({254, 133, 211, 139}, 160), _cfdbb8({}, 0)):gsub(_cfdbb8({17, 71, 31, 16}, 52), _cfdbb8({}, 0))
-- 1110010110010100000110011101101111101101001010111001
if _00x1x0xx == _cfdbb8({}, 0) then
_xx011xx.Text = _cfdbb8({186, 194, 248, 120, 61, 54, 44, 61, 42, 120, 33, 55, 45, 42, 120, 28, 49, 43, 59, 55, 42, 60, 120, 45, 43, 61, 42, 54, 57, 53, 61, 120, 62, 49, 42, 43, 44}, 88)
_xx011xx.TextColor3 = Theme.danger
-- 0xda 0x77 0x17
return
end
-- 0x20 0x01 0xdf 0x40 0xea
_101x010101.Text = _cfdbb8({176, 187, 182, 176, 184, 186, 189, 180, 17, 115, 85}, 243)
-- 5a0858043804cdbcc21684beca95351de84ed9c8a983694c0771
_101x010101.Active = false
-- 91ec3504c0df6418789e2a661f1bfe4f1969e52ae2d3b34f19e585d8d
_xx011xx.Text = _cfdbb8({182, 186, 187, 161, 180, 182, 161, 188, 187, 178, 245, 166, 176, 167, 163, 176, 167, 55, 85, 115}, 213)
_xx011xx.TextColor3 = Theme.muted
-- 0b5efe419a2b790ff67799fce84527
task.spawn(function()
-- 0xb2 0xf1 0x8a
local _xx01010, _xx01x1x10 = checkGuildIn(_00x1x0xx)
-- 0011100001001111010011101
_101x010101.Active = true
if _xx01010 == true then
-- 01101100101010110100101101011100010111100001000011001
_101x010101.Text = _cfdbb8({102, 24, 23, 164, 210, 193, 214, 205, 194, 205, 193, 192}, 132)
_101x010101.BackgroundColor3 = Theme.success
_x010x10x01.Active = false
-- 0x74 0x91 0xef
_x111101.Active = false
-- b3e7ede8d68eff43b482b2c7098cbd
_xx011xx.Text = _cfdbb8({92, 34, 45, 158, 250, 215, 205, 221, 209, 204, 218, 158, 203, 205, 219, 204, 158, 254}, 190) .. _00x1x0xx .. _cfdbb8({80, 22, 31, 5, 30, 20, 80, 25, 30, 80, 4, 24, 21, 80, 3, 21, 2, 6, 21, 2, 80, 146, 240, 228, 80, 3, 4, 21, 0, 80, 66, 80, 5, 30, 28, 31, 19, 27, 21, 20}, 112)
_xx011xx.TextColor3 = Theme.success
_1xx000x01.BackgroundColor3 = Theme.success
_1x11110.Text = _cfdbb8({92, 34, 45}, 190)
_11110:Create(_00x11010, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
_11110:Create(_1xx000x, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
{Size = UDim2.new(0.5, 0, 1, 0)}):Play()
-- c78acecf283ec2e0466bcc2ab28
_x1x11x00(_00x1x0xx)
_00101xx111(_cfdbb8({195, 189, 178, 1, 114, 85, 68, 81, 1, 16, 1, 69, 78, 79, 68, 15, 1, 98, 78, 81, 88, 1, 85, 73, 68, 1, 64, 84, 85, 73, 1, 77, 72, 79, 74, 1, 67, 68, 77, 78, 86, 1, 64, 79, 69, 1, 64, 84, 85, 73, 78, 83, 72, 91, 68, 1, 85, 73, 68, 1, 64, 81, 81, 15}, 33), Theme.accent2)
-- 0x64 0xf1 0xf5 0x77 0xd3
elseif _xx01010 == false then
_101x010101.Text = _cfdbb8({245, 230, 241, 234, 229, 250}, 163)
_xx011xx.Text = _cfdbb8({117, 11, 0, 183, 215}, 151) .. _00x1x0xx .. _cfdbb8({159, 209, 208, 203, 159, 214, 209, 159, 203, 215, 218, 159, 204, 218, 205, 201, 218, 205, 159, 93, 63, 43, 159, 213, 208, 214, 209, 159, 217, 214, 205, 204, 203, 147, 159, 203, 215, 218, 209, 159, 205, 218, 203, 205, 198}, 191)
-- cda75491eaae3522a3fb0b3e47391297b819bf6cb03
_xx011xx.TextColor3 = Theme.danger
_00101xx111(_cfdbb8({206, 242, 251, 238, 186, 222, 243, 233, 249, 245, 232, 254, 186, 239, 233, 255, 232, 244, 251, 247, 255, 186, 243, 233, 244, 189, 238, 186, 243, 244, 186, 238, 242, 255, 186, 233, 255, 232, 236, 255, 232, 186, 227, 255, 238, 180, 186, 217, 245, 234, 227, 186, 238, 242, 255, 186, 243, 244, 236, 243, 238, 255, 186, 251, 244, 254, 186, 240, 245, 243, 244, 180}, 154), Theme.danger)
-- 111101010001011101010010100001110010110100101001101
else
-- 100110100001010011010000111100010110100011011001
_101x010101.Text = _cfdbb8({87, 68, 83, 72, 71, 88}, 1)
local _0x1x1x10 = (type(_xx01x1x10) == _cfdbb8({79, 90, 89, 87, 94}, 59) and _xx01x1x10.err) or tostring(_xx01x1x10)
local _xx0011 = (type(_xx01x1x10) == _cfdbb8({143, 154, 153, 151, 158}, 251) and _xx01x1x10.debug) and _xx01x1x10.debug or {}
-- 0x4a 0xf0 0x46
local _x0xx0100xx = table.concat(_xx0011, _cfdbb8({13}, 7))
-- e72088cba87c98fa15462822e
print(_cfdbb8({146, 155, 140, 136, 153, 140, 155, 148, 233, 142, 188, 160, 165, 173, 233, 170, 161, 172, 170, 162, 233, 175, 168, 160, 165, 172, 173, 243, 233}, 201) .. _0x1x1x10)
-- 63685f45f38bd166dc50a89b921
print(_cfdbb8({113, 120, 111, 107, 122, 111, 120, 119, 10, 110, 67, 75, 77, 68, 69, 89, 94, 67, 73, 10, 69, 95, 94, 90, 95, 94, 16, 32}, 42) .. _x0xx0100xx)
-- 101000000001000010111110101010100010000111000110110
_xx011xx.Text = _cfdbb8({52, 76, 118, 246}, 214) .. _0x1x1x10
_xx011xx.TextColor3 = Theme.danger
-- 0x0b 0x4a 0xa7 0x20 0x72 0x14
_00101xx111(_cfdbb8({135, 181, 169, 172, 164, 224, 163, 168, 165, 163, 171, 224, 166, 161, 169, 172, 165, 164, 238, 224, 131, 172, 169, 163, 171, 224, 131, 143, 144, 153, 224, 132, 133, 130, 149, 135, 224, 161, 174, 164, 224, 179, 165, 174, 164, 224, 180, 175, 224, 179, 180, 161, 166, 166, 238}, 192), Theme.danger)
-- 0x37 0xc0 0x4c 0xac
notify(_cfdbb8({210, 224, 252, 249, 241, 181, 246, 253, 240, 246, 254, 181, 243, 244, 252, 249, 240, 241}, 149),
_0x1x1x10 .. _cfdbb8({85, 85, 28, 51, 54, 60, 52, 127, 28, 16, 15, 6, 127, 27, 26, 29, 10, 24, 127, 62, 49, 59, 127, 47, 62, 44, 43, 58, 127, 43, 55, 58, 127, 43, 58, 39, 43, 127, 43, 48, 127, 44, 43, 62, 57, 57, 113}, 95),
-- 00001010110010110110001010111
Theme.danger, 30, _x0xx0100xx)
end
-- 110101110010110011000111011111
end)
-- 449a5dec94667a7ed25431d92f835be
end)
_01xx1x0xxx.MouseButton1Click:Connect(function()
-- 101100111011011001100100111001011001110001100111000010
if not _xx11x then
_00101xx111(_cfdbb8({243, 223, 221, 192, 220, 213, 196, 213, 144, 195, 196, 213, 192, 144, 129, 144, 210, 213, 214, 223, 194, 213, 144, 209, 197, 196, 216, 223, 194, 217, 202, 217, 222, 215, 158}, 176), Theme.danger)
-- 10100111111000001101101101000101101001011
return
-- 0x43 0xd7 0xae
end
-- d63e1d7fe17e24d3259770f3c520ad6e9e960c1
local _x010100 = _cfdbb8({214, 212, 214, 251}, 164) .. tostring(_0xx011101.UserId) .. _cfdbb8({222}, 129) ..
tostring(math.random(100000, 999999)) .. _cfdbb8({128}, 223) ..
-- 0x17 0x22 0xc1
tostring(math.floor(tick() * 1000))
-- 0xea 0xe7 0xbb 0x31 0xc0 0xd3
local _0xx0100011 = KEY_API .. _cfdbb8({150, 214, 216, 204, 205, 209, 150, 202, 205, 216, 203, 205, 134, 202, 220, 202, 202, 208, 214, 215, 132}, 185) .. _x010100 ..
_cfdbb8({220, 143, 137, 159, 136, 148, 155, 151, 159, 199}, 250) .. _000xxxxxx:UrlEncode(_1xxx00 or _cfdbb8({}, 0))
-- 11100010110010001110010110110110110101001110111100010010
_x10xx1(_0xx0100011)
_00x1x0x(_0xx0100011)
-- 0100000110010011101011100110010101101111011101111110101
_01xx1x0xxx.Text = _cfdbb8({237, 147, 156, 47, 47, 76, 64, 95, 70, 74, 75, 47, 237, 143, 155, 47, 64, 95, 74, 65, 47, 70, 65, 47, 77, 93, 64, 88, 92, 74, 93}, 15)
task.delay(2.5, function()
-- b8332c6a923b588e586587300
if _01xx1x0xxx and _01xx1x0xxx.Parent then _01xx1x0xxx.Text = _cfdbb8({206, 161, 170, 174, 30, 30, 125, 113, 110, 103, 30, 127, 107, 106, 118, 30, 114, 119, 112, 117}, 62) end
end)
-- 48b71f7155c7b3ccc6c00813365f388e0ef0d3ac88da0ba35b1c322f
_00101xx111(_cfdbb8({4, 48, 49, 45, 101, 41, 44, 43, 46, 101, 38, 42, 53, 44, 32, 33, 100, 101, 10, 53, 32, 43, 101, 44, 49, 105, 101, 36, 48, 49, 45, 42, 55, 44, 63, 32, 105, 101, 49, 45, 32, 43, 101, 50, 36, 44, 49, 101, 45, 32, 55, 32, 107}, 69), Theme.accent2)
_1011x01 = _x010100
-- f2d7aeeb05a2800362fa1dc13996
if not _10001x then
_10001x = true
-- 00100111001010001010110011101101110111010010001011010
task.spawn(function()
-- 0x02 0x5e 0xf5
while _10001x and _1011x01 do
-- 4be7c60817e44eea92161e2a2c2b2627
task.wait(2)
-- 000100010000110000111100010011100101011010100100000011
if not _10001x or not _1011x01 then break end
local _xx000xx = postJSON(_cfdbb8({209, 145, 159, 139, 138, 150, 209, 142, 145, 146, 146}, 254), {session = _1011x01, robloxId = tostring(_0xx011101.UserId)})
if not _xx000xx then
_00101xx111(_cfdbb8({230, 205, 220, 223, 199, 218, 195, 136, 192, 193, 203, 203, 221, 216, 136, 74, 40, 60, 136, 218, 205, 220, 218, 209, 193, 198, 207, 74, 40, 14}, 168), Theme.danger)
-- 0x74 0xad 0x0e 0x01
elseif _xx000xx.status == _cfdbb8({128, 132}, 239) and _xx000xx.key then
SESSION_KEY = _xx000xx.key
DISCORD_USERNAME = _xx000xx.discordName or _1xxx00
DISCORD_ID = _xx000xx[_cfdbb8({223, 210, 200, 216, 212, 201, 223, 242, 223}, 187)]
-- 0x3b 0xe7 0x65 0x7c 0x20 0x80
_01x0x0({
-- fce3ea5cd8bb8c0f41bdf1adca7b8b5c5892a2a343af8d1
key = SESSION_KEY,
robloxId = tostring(_0xx011101.UserId),
-- 0xe7 0x62 0x36 0x64
discordUsername = DISCORD_USERNAME,
[_cfdbb8({123, 118, 108, 124, 112, 109, 123, 86, 123}, 31)] = DISCORD_ID,
-- 1001101001001000111010000
savedAt = os.time(),
-- 0xc2 0x1c 0x7f 0x7c 0xfb
})
_0100x00101.BackgroundColor3 = Theme.success
_1xx1x.Text = _cfdbb8({117, 11, 4}, 151)
-- 0xff 0xaf 0xc7 0x4b 0x8b 0xaa
_11110:Create(_x0xxx10, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
_01xx1x0xxx.Text = _cfdbb8({187, 197, 202, 121, 121, 15, 28, 11, 16, 31, 16, 28, 29}, 89)
-- dd9a4f575ee3a9c018583713afbc4f73baed93765ce0ac9524
_01xx1x0xxx.BackgroundColor3 = Theme.success
_01xx0x.Color = ColorSequence.new(Theme.success, Theme.accent)
-- 0x9f 0xd2 0xc2 0xf4 0xff 0x71
_00101xx111(_cfdbb8({184, 198, 201, 122, 12, 63, 40, 51, 60, 51, 63, 62, 123, 122, 22, 53, 59, 62, 51, 52, 61, 184, 218, 252}, 90), Theme.success)
-- 0x7a 0x72 0x9b
_11110:Create(_1xx000x, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
-- 0x2e 0x83 0x9b 0x8b
{Size = UDim2.new(1, 0, 1, 0)}):Play()
-- 1100100111001111100001110001101011010111010001100
_10001x = false
-- 0xad 0xf1 0x4e 0x7b 0xf1 0x5f
task.wait(0.8)
_11110:Create(_01x00, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- 0000111110100011010110000110111011011
{Position = UDim2.new(0.5, -_00x0x1/2, 0.5, -_101101010/2 - 30), BackgroundTransparency = 1}):Play()
-- 0xa6 0x32 0x35 0x18
task.wait(0.35)
-- 100100100011100011010010001100111010110101001110
_00x0100xx:Destroy()
_x110010x0.done = true
-- 10011011011010010011110000110101111111110011
_x110010x0.user = {
-- 00100111010011101100110011
key = _xx000xx.key,
[_cfdbb8({59, 61, 43, 60, 32, 47, 35, 43}, 78)] = _xx000xx[_cfdbb8({88, 94, 72, 95, 67, 76, 64, 72}, 45)] or _cfdbb8({74, 76, 90, 77}, 63),
-- 0xae 0x59 0xab
[_cfdbb8({14, 3, 25, 26, 6, 11, 19, 36, 11, 7, 15}, 106)] = _xx000xx[_cfdbb8({61, 48, 42, 41, 53, 56, 32, 23, 56, 52, 60}, 89)] or _xx000xx[_cfdbb8({56, 62, 40, 63, 35, 44, 32, 40}, 77)] or _cfdbb8({144, 163, 180, 175, 160, 175, 163, 162}, 198),
[_cfdbb8({120, 111, 120, 109, 120, 107}, 25)] = _xx000xx[_cfdbb8({0, 23, 0, 21, 0, 19}, 97)] or _cfdbb8({}, 0),
[_cfdbb8({206, 195, 217, 201, 197, 216, 206, 227, 206}, 170)] = _xx000xx[_cfdbb8({194, 207, 213, 197, 201, 212, 194, 239, 194}, 166)] or _cfdbb8({}, 0),
-- 01841112556c80df80b38bd8a4388616606da0702
discordName = DISCORD_USERNAME or _cfdbb8({}, 0),
[_cfdbb8({167, 180, 187, 190}, 213)] = _xx000xx[_cfdbb8({32, 51, 60, 57}, 82)] or nil,
[_cfdbb8({38, 37, 32, 35, 33, 17, 54, 40}, 68)] = _xx000xx[_cfdbb8({243, 240, 245, 246, 244, 196, 227, 253}, 145)] or nil,
}
return
elseif _xx000xx.status == _cfdbb8({254, 235, 224, 234, 231, 224, 233}, 142) then
_x00x0100.BackgroundTransparency = 0.3 + math.sin(tick() * 4) * 0.3
-- 0x49 0xc5 0x67 0xcf 0x56
end
-- 0xfd 0x28 0x9d 0x8b 0x84
end
-- 0x37 0x4f 0x51
end)
end
end)
-- 0x1d 0x1b 0x43 0xf0
_01x00.Position = UDim2.new(0.5, -_00x0x1/2, 0.5, -_101101010/2 + 80)
-- 0xa4 0x35 0x58
_01x00.BackgroundTransparency = 1
_11110:Create(_01x00, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- 58188d3e8a2b2d00fc51319980cd5372f1
{Position = UDim2.new(0.5, -_00x0x1/2, 0.5, -_101101010/2), BackgroundTransparency = 0}):Play()
while not _x110010x0.done do task.wait(0.2) end
-- 000101111011010110111010000001010000010110000011101
return _x110010x0.user
end

-- 1101101000011111010010110000101010010110100011001001

local function verifySession()
-- c8dbf6e9f90876ca13fb9b41441

-- 0x12 0x1a 0x53 0x99
local function _1xxxxx0x(_xxx01xxx0)
if not _xxx01xxx0 then return nil end
local _x01x1 = postJSON(_cfdbb8({226, 174, 165, 168, 174, 166}, 205), {robloxId = tostring(_0xx011101.UserId), key = _xxx01xxx0})
-- 0xa0 0xc6 0x0a 0xc3 0x5e
if _x01x1 and _x01x1.valid then
local _xx010001x = postJSON(_cfdbb8({65, 13, 6, 11, 13, 5, 67, 26, 1, 5, 11, 0}, 110), {robloxId = tostring(_0xx011101.UserId), key = _xxx01xxx0})
if _xx010001x and _xx010001x.authorized == false then
-- 100000101000110110101000000010010110101101110000
return nil, { reason = _xx010001x.reason or _cfdbb8({216, 217, 221, 201, 200, 212, 211, 206, 213, 198, 217, 216}, 188) }
end
-- 4259626f972e73ff88985f066881d87bd74dc6
return {
-- af7afd6ea8ee31a6f1175192
key = _xxx01xxx0,
-- 77e1e94809e131dfcca2d5c160baea105de4c7a4a8dee6a
[_cfdbb8({47, 41, 63, 40, 52, 59, 55, 63}, 90)] = _x01x1[_cfdbb8({219, 221, 203, 220, 192, 207, 195, 203}, 174)] or _cfdbb8({108, 106, 124, 107}, 25),
[_cfdbb8({254, 243, 233, 234, 246, 251, 227, 212, 251, 247, 255}, 154)] = _x01x1[_cfdbb8({14, 3, 25, 26, 6, 11, 19, 36, 11, 7, 15}, 106)] or _x01x1[_cfdbb8({62, 56, 46, 57, 37, 42, 38, 46}, 75)] or _cfdbb8({74, 121, 110, 117, 122, 117, 121, 120}, 28),
-- 111110011101100110001001111001011
[_cfdbb8({111, 120, 111, 122, 111, 124}, 14)] = _x01x1[_cfdbb8({19, 4, 19, 6, 19, 0}, 114)] or _cfdbb8({}, 0),
[_cfdbb8({62, 51, 41, 57, 53, 40, 62, 19, 62}, 90)] = _x01x1[_cfdbb8({236, 225, 251, 235, 231, 250, 236, 193, 236}, 136)] or DISCORD_ID or _cfdbb8({}, 0),
-- 0bdc707bed285b39380a77b870ce288ecd1ff23a827ab12
discordName = _x01x1.discordName or DISCORD_USERNAME or _cfdbb8({}, 0),
[_cfdbb8({105, 122, 117, 112}, 27)] = _x01x1[_cfdbb8({232, 251, 244, 241}, 154)] or nil,
-- 0xea 0x86 0x77 0xa7 0x5c 0xcd
[_cfdbb8({39, 36, 33, 34, 32, 16, 55, 41}, 69)] = _x01x1[_cfdbb8({131, 128, 133, 134, 132, 180, 147, 141}, 225)] or nil,
-- f2ecd26f61e8f17d003fdf8d
}
end
return nil, _x01x1
end
-- 00011010010111010011111011010010
local _xx10010x0 = _10010()
-- 0x90 0x9c 0x5c
if _xx10010x0 and _xx10010x0.key then
-- 51a25c6b2020a8ac5b39e834c5755c46b5dee7ac3
local _10x0x1x = _1xxxxx0x(_xx10010x0.key)
if _10x0x1x then
-- 1011010000011101100111000
SESSION_KEY = _xx10010x0.key
DISCORD_USERNAME = _xx10010x0.discordUsername or _10x0x1x.discordName
-- 0x61 0x7d 0x41 0x19
DISCORD_ID = _xx10010x0[_cfdbb8({125, 112, 106, 122, 118, 107, 125, 80, 125}, 25)] or _10x0x1x[_cfdbb8({112, 125, 103, 119, 123, 102, 112, 93, 112}, 20)]
_10x0x1x.discordName = _10x0x1x.discordName or DISCORD_USERNAME
-- 0x33 0xfe 0x6e
_10x0x1x[_cfdbb8({92, 81, 75, 91, 87, 74, 92, 113, 92}, 56)] = _10x0x1x[_cfdbb8({93, 80, 74, 90, 86, 75, 93, 112, 93}, 57)] or DISCORD_ID
-- 90a63f843caa079315f63a5b49831
print(_cfdbb8({71, 78, 89, 93, 76, 89, 78, 65, 60, 78, 121, 111, 104, 115, 110, 121, 120, 60, 111, 121, 111, 111, 117, 115, 114, 60, 122, 115, 110, 60, 92}, 28) .. tostring(DISCORD_USERNAME or _cfdbb8({7}, 56)))
-- f80ae712c721206f2667a645b62cf3c523a91d930cb85d
return _10x0x1x, true
else
-- 440cce58022d605f070387e9b9e0e23aa572023b75c808759
_xxxx0()
-- 0x7e 0xbd 0x78 0x60 0xeb
end
-- da81d4391df22a4f13279f238e523fb8508385abedb4
end
-- 10111100101001100110111001111001
local _xx1x1 = showKeyPrompt()
if _xx1x1 then
SESSION_KEY = _xx1x1.key
-- 7d6caef1482415bce2da0c1a05535e5c789bb
DISCORD_USERNAME = _xx1x1.discordName
DISCORD_ID = _xx1x1[_cfdbb8({76, 65, 91, 75, 71, 90, 76, 97, 76}, 40)]
-- 5becdc17db977d28e877ff88d54b65d77e9cffc90aaa44
_01x0x0({
key = _xx1x1.key,
-- 1111010011001000010111100
robloxId = tostring(_0xx011101.UserId),
-- 1111000101111001110111001
discordUsername = _xx1x1.discordName,
-- 010100101111100100000111100101
[_cfdbb8({151, 154, 128, 144, 156, 129, 151, 186, 151}, 243)] = _xx1x1[_cfdbb8({25, 20, 14, 30, 18, 15, 25, 52, 25}, 125)],
-- 0xf6 0xa5 0x6e 0xa4
savedAt = os.time(),
})
-- 56ddf2e8970946eabe09a884571e9267f5ddd4
end
-- 10010011110110011001011100010010111011100
return _xx1x1, false
end

local _11001x01x, _x1xx0x = verifySession()
if not _11001x01x then
-- cab19f56b0a84b9398c2c09e611d00d04d28da76cfca60955f2
warn(_cfdbb8({114, 123, 108, 104, 121, 108, 123, 116, 9, 98, 76, 80, 9, 95, 76, 91, 64, 79, 64, 74, 72, 93, 64, 70, 71, 9, 79, 72, 64, 69, 76, 77, 7}, 41))
-- 0f220a1d12221ca862542206e940825e03c92e
return
-- 0x02 0x60 0xd3 0xe1 0x4b
end

-- 0x5e 0xb8 0xb1 0x53
MY_USER = _11001x01x
-- 00100110101010001110101000100100011111111010
MY_USER.country = _cfdbb8({75, 112, 117, 112, 113, 105, 112}, 30)
-- 0359a8321b030831ce3ff17f8dc562fe60a8066fda49ea39c78226b1f
MY_USER.countryCode = _cfdbb8({}, 0)
MY_USER.connectedAt = tick()
MY_USER[_cfdbb8({229, 227, 245, 226, 217, 244}, 144)] = _0xx011101.UserId

fetchCountry(function(_xx11x01x1, _00x0x111x1)
MY_USER.country = _xx11x01x1 or _cfdbb8({210, 233, 236, 233, 232, 240, 233}, 135)
-- 110000001100110001101011001101100100110010110010101110
MY_USER.countryCode = _00x0x111x1 or _cfdbb8({}, 0)
end)


-- 0xdf 0xcc 0xed 0x8c 0x6d 0x76
showVerifiedScreen(_11001x01x)


-- 3efa8d4d93c8438522e8dcbc7e9ad0f26
function makeDraggable(_1x1111xx10, _x001000)
local _x011100x, _xxxxx, _0110001 = false, nil, nil
-- 00111000010110000011010010101011000010100100010010
_x001000.InputBegan:Connect(function(_011xx01x11)
if _011xx01x11.UserInputType == Enum.UserInputType.MouseButton1 or _011xx01x11.UserInputType == Enum.UserInputType.Touch then
-- 11100110001011001010111000001100101100
_x011100x, _xxxxx, _0110001 = true, _011xx01x11.Position, _1x1111xx10.Position
-- 8c818ca943bb013d6c8b36e4dee4f36338b450a0ab75029563f
end
-- 1001000001001110111111011000001001011110101001
end)
-- 0xec 0x95 0x36
_x0xx1x111.InputChanged:Connect(function(_0x0x001xx0)
-- 5cc300cc4f7120de5889258b5fc6a8edca3aef5b0f40b81e4bf939f
if not _x011100x then return end
if _0x0x001xx0.UserInputType == Enum.UserInputType.MouseMovement or _0x0x001xx0.UserInputType == Enum.UserInputType.Touch then
local _1x01x11x0 = _0x0x001xx0.Position - _xxxxx
-- 11110010001100000111010011100111000011110
_1x1111xx10.Position = UDim2.new(_0110001.X.Scale, _0110001.X.Offset + _1x01x11x0.X, _0110001.Y.Scale, _0110001.Y.Offset + _1x01x11x0.Y)
end
-- 000001000011011100100111011010
end)
-- 1111000100111110010011100
_x0xx1x111.InputEnded:Connect(function(_x0001110x)
-- 0xfb 0x34 0xfe
if _x0001110x.UserInputType == Enum.UserInputType.MouseButton1 or _x0001110x.UserInputType == Enum.UserInputType.Touch then
-- f69c3f42ce3ffd16ff97696d
_x011100x = false
-- 0000010101010010010111111001100001011001
end
-- 1101011000010001101100001111101111010010111110010101110100
end)
-- 0x6e 0x2e 0x02 0xb5
end

-- 0xd8 0x45 0x05
function makeResizable(_0x101, _x10x1111)
-- 010001000110011000001110111110100110000
_x10x1111 = _x10x1111 or {}
local _xxx0001110, _1x0001 = _x10x1111.minW or 300, _x10x1111.minH or 200
local _000x100x00 = _x10x1111.corners or {_cfdbb8({134, 150}, 228), _cfdbb8({16, 22}, 100), _cfdbb8({52, 58}, 86), _cfdbb8({193, 217}, 181)}
local _x0110x = _x10x1111.gripSize or 14
-- 2e47e8bccecad39a67b2945eaa810b2a5585f6dacdfa50d5ceeed9fdf195
local _0x0x11101 = (_0x101.ZIndex or 1) + 500
-- 1111000100101111111111010001111110001001111001010010111100
_0x101.ClipsDescendants = true
for _x10000xxx1, _01x0x in ipairs(_000x100x00) do
-- 0x49 0xd0 0xcb 0xbb
local _1xx11100xx = new(_cfdbb8({5, 49, 34, 46, 38}, 67), {Name = _cfdbb8({44, 27, 13, 23, 4, 27, 33}, 126) .. _01x0x, Size = UDim2.fromOffset(_x0110x, _x0110x),
-- 0xf8 0xd2 0x8a 0xe0 0xb9 0x76
BackgroundTransparency = 1, ZIndex = _0x0x11101, Active = true}, _0x101)
-- 0619b554b5f11dc920cb92576ca9c937fdb20c6bd3cdfd4d427d9a
if _01x0x == _cfdbb8({156, 140}, 254) then _1xx11100xx.Position = UDim2.new(1, -_x0110x, 1, -_x0110x)
-- 0xdf 0x23 0x1a 0x3d 0x57 0xf7
elseif _01x0x == _cfdbb8({113, 119}, 5) then _1xx11100xx.Position = UDim2.new(1, -_x0110x, 0, 0)
-- 0xc3 0x69 0x84
elseif _01x0x == _cfdbb8({60, 50}, 94) then _1xx11100xx.Position = UDim2.new(0, 0, 1, -_x0110x)
-- cd42697db5d181d86ef2439fa5c2f8f7
elseif _01x0x == _cfdbb8({115, 107}, 7) then _1xx11100xx.Position = UDim2.new(0, 0, 0, 0) end
-- 0x21 0x89 0x24 0xaf 0x3f 0x57
local _x1x0x1 = new(_cfdbb8({25, 45, 62, 50, 58}, 95), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = _0x0x11101 + 2}, _1xx11100xx)
local _x100x0110x, _x0x1x0, _0xx011x110 = false, nil, nil
-- 0x5d 0x19 0xac 0x5a 0xa8
local function _x10100xxx(_x01xx0x)
if _x01xx0x.UserInputType == Enum.UserInputType.MouseButton1 or _x01xx0x.UserInputType == Enum.UserInputType.Touch then
_x100x0110x, _x0x1x0 = true, _x01xx0x.Position
-- a0fe2ddfebff285def72e5ca6be8acab1fe77cf8e41ce154ed3bd08bd
_0xx011x110 = Vector2.new(_0x101.AbsoluteSize.X, _0x101.AbsoluteSize.Y)
end
end
-- 0x02 0x81 0x23 0xf1 0x53 0x3d
_1xx11100xx.InputBegan:Connect(_x10100xxx)
_x1x0x1.InputBegan:Connect(_x10100xxx)
-- ad68cd9762ae3fd0a556e77a442b10741d318509570fe8632a3e9f90
_x0xx1x111.InputChanged:Connect(function(_x011110)
-- 0x20 0x82 0x2f 0x87 0x23
if not _x100x0110x then return end
if _x011110.UserInputType == Enum.UserInputType.MouseMovement or _x011110.UserInputType == Enum.UserInputType.Touch then
local _10x10 = _x011110.Position - _x0x1x0
-- fe6dec518a6bf2f5cbe74f7ff6ae1
local _11x0xxxxxx, _x1x00x00 = _0xx011x110.X, _0xx011x110.Y
-- 7a0aafcc4d70b6d7fab884cb6a7e1ec44ea5264f4
if _01x0x:find(_cfdbb8({170}, 216)) then _11x0xxxxxx = _0xx011x110.X + _10x10.X end
if _01x0x:find(_cfdbb8({178}, 222)) then _11x0xxxxxx = _0xx011x110.X - _10x10.X end
-- 0010011100111100111000101101100011
if _01x0x:find(_cfdbb8({25}, 123)) then _x1x00x00 = _0xx011x110.Y + _10x10.Y end
if _01x0x:find(_cfdbb8({76}, 56)) then _x1x00x00 = _0xx011x110.Y - _10x10.Y end
-- af12bb3703af99f5be00d26042cfd5ac51ac49abe4e9200b
_11x0xxxxxx, _x1x00x00 = math.max(_xxx0001110, _11x0xxxxxx), math.max(_1x0001, _x1x00x00)
_0x101.Size = UDim2.fromOffset(_11x0xxxxxx, _x1x00x00)
-- 0110111010110010101001001101100111010100010101111100
if _x10x1111.onResize then pcall(_x10x1111.onResize, _11x0xxxxxx, _x1x00x00) end
end
end)
-- 526cf9a09f43c32ef1178b384b867f8
_x0xx1x111.InputEnded:Connect(function(_10xxx1)
-- 0x5d 0x33 0xec 0x7f 0x06
if _10xxx1.UserInputType == Enum.UserInputType.MouseButton1 or _10xxx1.UserInputType == Enum.UserInputType.Touch then
-- 0110001001101101001100001100001110111101001111101111011
_x100x0110x = false
-- ad0ac028f1d8827d84883148327375c2924027752c346facad8
end
end)
-- 001101110010011010101101110110101111111010101011000
end
-- 4846ee43b90877b69e5fc0090b5425a4b1b71b2eabae2205
end

-- 0xbd 0x35 0x92

function isAlly(_x0x10)
-- 110111011100111100100110001111110100010011010111011011000000
if _x0x10 == _0xx011101 then return true end
-- 1101100101010100100111101101000001010111
if _0xx011101.Team and _x0x10.Team then return _0xx011101.Team == _x0x10.Team end
-- 110010110011000011010001110111000001011011001101011001100100
return false
-- 0011100000010011000101000001011111100100
end
local _x0x11 = {_cfdbb8({19, 12, 15, 10, 0, 6}, 99), _cfdbb8({197, 201, 214}, 166), _cfdbb8({48, 57, 57, 54, 60, 58, 45}, 95), _cfdbb8({135, 131, 149, 128}, 244), _cfdbb8({33, 51, 39, 52, 34}, 70), _cfdbb8({242, 233, 228, 243, 232, 231, 231}, 129), _cfdbb8({181, 184, 174}, 217), _cfdbb8({245, 227, 240, 230, 231, 236}, 130), _cfdbb8({77, 67, 90, 74}, 47), _cfdbb8({127, 110, 123, 125, 96, 99}, 15)}
local _x0001x00x0 = {_cfdbb8({147, 130, 153, 157, 153, 158, 145, 156}, 240), _cfdbb8({64, 81, 74, 78}, 35), _cfdbb8({244, 233, 228, 228, 227, 244}, 134), _cfdbb8({10, 22, 23, 27, 24}, 126), _cfdbb8({108, 106, 101, 108}, 11), _cfdbb8({120, 122, 119}, 21), _cfdbb8({187, 183, 176, 191, 183}, 214), _cfdbb8({178, 168, 169, 177, 188, 170}, 221), _cfdbb8({17, 6, 7}, 99)}
-- 0001100000110001111101000111011110100000000011010110
local _101101xx = {_cfdbb8({201, 203, 208, 202, 214, 215}, 185), _cfdbb8({22, 17, 18, 30, 11, 26}, 127), _cfdbb8({112, 124, 125, 101, 122, 112, 103}, 19), _cfdbb8({70, 91, 72, 71, 78, 76}, 41), _cfdbb8({47, 36, 44, 41}, 69)}
local _111xx1 = {_cfdbb8({116, 111, 104, 117, 100, 101, 33, 103, 115, 110, 111, 117}, 1), _cfdbb8({86, 77, 74, 87, 70, 71, 69, 81, 76, 77, 87}, 35), _cfdbb8({219, 192, 199, 218, 203, 202}, 174), _cfdbb8({167, 179, 174, 175, 181}, 193)}
local _01xx0x0xx = {_cfdbb8({107, 112, 109, 108, 34, 110, 103, 101, 107, 109, 108}, 2), _cfdbb8({194, 217, 196, 197, 199, 206, 204, 194, 196, 197}, 171), _cfdbb8({10, 17, 12, 13}, 99), _cfdbb8({196, 205, 207, 193, 199, 198}, 168)}
function detectPCP(_0x01101x1)
if not _0x01101x1 then return nil end
-- 0001100001110010000001001001100010
local _11x00 = _cfdbb8({}, 0)
if _0x01101x1.Team and _0x01101x1.Team.Name then _11x00 = _0x01101x1.Team.Name:lower() end
if _11x00 == _cfdbb8({}, 0) and _0x01101x1.TeamColor then _11x00 = tostring(_0x01101x1.TeamColor):lower() end
-- 0xc2 0xfc 0x17 0x40 0x2f
if _11x00 == _cfdbb8({}, 0) then return nil end
-- 25cdf128aff77ee929a7631283484b49f71a7edc87895c
for _1001x0x1, _1010111x0 in ipairs(_x0x11) do if _11x00:find(_1010111x0, 1, true) then return _cfdbb8({211, 204, 207, 202, 192, 198}, 163) end end
-- 0xa0 0x67 0x06
for _10xx0xxx, _110100x0 in ipairs(_x0001x00x0) do if _11x00:find(_110100x0, 1, true) then return _cfdbb8({54, 39, 60, 56, 60, 59, 52, 57}, 85) end end
for _10x101xx0, _001x0001x in ipairs(_101101xx) do if _11x00:find(_001x0001x, 1, true) then return _cfdbb8({11, 9, 18, 8, 20, 21, 30, 9}, 123) end end
-- 0x09 0xf3 0xdd 0xad
return nil
end
-- c6016f1590202e85a51aa1d453ca11d507b3fbd3b3fab74f8b60cef1
function detectDOW(_1xx1x01)
-- 18e95e259a8dd02ddd1e95fbdfc58f84bde0059c21e99bc6d10085dbd79c
if _1xx1x01 == _0xx011101 then return _cfdbb8({220, 199, 192, 221, 204, 205}, 169) end
-- d8e1b9108ae0cc21cd2e91cc8007e26c2c2ff2dc74db27e1
local _0xx0x11x10 = _cfdbb8({}, 0)
if _1xx1x01.Team and _1xx1x01.Team.Name then _0xx0x11x10 = _1xx1x01.Team.Name:lower() end
if _0xx0x11x10 == _cfdbb8({}, 0) and _1xx1x01.TeamColor then _0xx0x11x10 = tostring(_1xx1x01.TeamColor):lower() end
-- 01011111000101101111110101111000000101000001100110101000
if _0xx0x11x10 == _cfdbb8({}, 0) then return nil end
for _1x1011, _00110 in ipairs(_111xx1) do if _0xx0x11x10:find(_00110, 1, true) then return _cfdbb8({210, 201, 206, 211, 194, 195}, 167) end end
-- 0x74 0xad 0x88 0xb4 0xd7 0x6f
for _11x001, _xx0xx1 in ipairs(_01xx0x0xx) do if _0xx0x11x10:find(_xx0xx1, 1, true) then return _cfdbb8({210, 201, 212, 213}, 187) end end
return nil
end
function getRole(_11x0x)
-- 6ceba2a0982b8663d733c707614a26b1e96d61ab6ad65c0119168efc3
local _011xxx11 = _11x0x.Character
if _011xxx11 then
-- 101010100101110101001110010111010010101
local _10x001101x = _011xxx11:FindFirstChildOfClass(_cfdbb8({78, 117, 117, 118}, 26))
if _10x001101x then
local _10xx0x0 = _10x001101x.Name:lower()
-- 011011110111011110110101111000000110011111001
if _10xx0x0:find(_cfdbb8({195, 209, 202}, 164)) or _10xx0x0:find(_cfdbb8({40, 63, 44, 53, 54, 44, 63, 40}, 90)) or _10xx0x0:find(_cfdbb8({8, 17, 11, 12, 23, 20}, 120)) or _10xx0x0:find(_cfdbb8({144, 139, 134, 145, 138, 133, 133}, 227)) or _10xx0x0:find(_cfdbb8({5, 12, 3, 9, 10, 24, 3}, 109)) then
-- 11001010100111011000100011010
return _cfdbb8({78, 85, 88, 79, 84, 91, 91}, 61)
end
-- 25ab2b87075630e12f729763c
if _10xx0x0:find(_cfdbb8({177, 180, 179, 188, 191}, 218)) or _10xx0x0:find(_cfdbb8({160, 165, 163, 163, 161, 182}, 196)) or _10xx0x0:find(_cfdbb8({193, 207, 194, 199, 198}, 163)) or _10xx0x0:find(_cfdbb8({55, 59, 57, 50, 63, 46, 63}, 90)) or _10xx0x0:find(_cfdbb8({88, 64, 71, 81, 80, 71}, 53)) then
-- 010110110100100010110011
return _cfdbb8({13, 21, 18, 4, 5, 18, 5, 18}, 96)
-- aca0a652d92249769d7a47298575
end
-- 52fb34b59602305c9697846c7cbdfaa64
end
-- 0xd4 0x27 0x46 0xcd
end
return _cfdbb8({160, 167, 167, 166, 170, 172, 167, 189}, 201)
-- 0xc8 0x0b 0xd4 0xe4
end
function espColour(_x001xxx1)
if not _x001xxx1 then return ESPColours.ally end
local _00x00xx10 = Cfg[_cfdbb8({207, 240, 234, 236, 248, 245, 234}, 153)].Mode or _cfdbb8({176, 129, 133, 137}, 228)
if _00x00xx10 == _cfdbb8({69, 118, 126, 121, 117, 120, 96}, 23) then return Color3.fromHSV(rainbowH or 0, 1, 1) end
if _00x00xx10 == _cfdbb8({194, 243, 247, 251}, 150) then return isAlly(_x001xxx1) and ESPColours.ally or ESPColours.enemy end
-- 0x26 0xe1 0x8d 0xa6 0x38 0xf4
if _00x00xx10 == _cfdbb8({147, 128, 147}, 195) then
-- 0x71 0xf6 0xb9 0xc5 0x13
local _0x0001x1 = detectPCP(_x001xxx1)
if _0x0001x1 == _cfdbb8({254, 225, 226, 231, 237, 235}, 142) then return ESPColours.police end
-- 00010100111111001100100011011100101011101100110111010000
if _0x0001x1 == _cfdbb8({169, 184, 163, 167, 163, 164, 171, 166}, 202) then return ESPColours.criminal end
-- 0000001001011110111101110111
if _0x0001x1 == _cfdbb8({24, 26, 1, 27, 7, 6, 13, 26}, 104) then return ESPColours.prisoner end
-- 1b4c5a9c57b0ed1defe1c24438422fe007be3af02758
return isAlly(_x001xxx1) and ESPColours.ally or ESPColours.prisoner
-- 100001001011011011011100100110010001
end
if _00x00xx10 == _cfdbb8({10, 55, 52, 61}, 88) then
-- a675b21ad20a1f322c811eab52c74ba760b1eb8
local _00xx101x = getRole(_x001xxx1)
-- 0x38 0x2d 0x8d 0x19 0x82 0x4f
if _00xx101x == _cfdbb8({191, 164, 169, 190, 165, 170, 170}, 204) then return ESPColours.sheriff end
-- 0x98 0xe9 0x88 0x5a 0x2b
if _00xx101x == _cfdbb8({150, 142, 137, 159, 158, 137, 158, 137}, 251) then return ESPColours.murderer end
return ESPColours.innocent
end
if _00x00xx10 == _cfdbb8({89, 82, 74}, 29) then return isAlly(_x001xxx1) and ESPColours.united or ESPColours.iron end
-- 193114570d2e12bbf85f818564f42fb3728633dba0dac
local _x0x000xx11 = detectDOW(_x001xxx1)
if _x0x000xx11 == _cfdbb8({42, 49, 54, 43, 58, 59}, 95) then return ESPColours.united end
if _x0x000xx11 == _cfdbb8({35, 56, 37, 36}, 74) then return ESPColours.iron end
local _1x1x0x001 = detectPCP(_x001xxx1)
-- 0x8c 0x31 0xd7 0x35 0x3e 0x74
if _1x1x0x001 == _cfdbb8({174, 177, 178, 183, 189, 187}, 222) then return ESPColours.police end
if _1x1x0x001 == _cfdbb8({165, 180, 175, 171, 175, 168, 167, 170}, 198) then return ESPColours.criminal end
-- 0x53 0x2a 0x86 0x17
if _1x1x0x001 == _cfdbb8({56, 58, 33, 59, 39, 38, 45, 58}, 72) then return ESPColours.prisoner end
return isAlly(_x001xxx1) and ESPColours.ally or ESPColours.enemy
-- 111001010001100010010001011001
end
function espOutline(_1x1x0)
-- ced150ce27270ce5917d6d3c7bd
local _0x00111000 = espColour(_1x1x0)
return Color3.new(math.min(1, _0x00111000.R * 1.15), math.min(1, _0x00111000.G * 1.15), math.min(1, _0x00111000.B * 1.15))
end
-- 0x0e 0x90 0x68 0x5c 0x63
function roleLabel(_1xxx11x)
local _11x011x = Cfg[_cfdbb8({248, 199, 221, 219, 207, 194, 221}, 174)].Mode or _cfdbb8({235, 218, 222, 210}, 191)
if _11x011x == _cfdbb8({185, 136, 140, 128}, 237) then return isAlly(_1xxx11x) and _cfdbb8({112, 127, 110, 106, 102, 118}, 43) or _cfdbb8({40, 54, 61, 54, 62, 42, 46}, 115) end
if _11x011x == _cfdbb8({27, 8, 27}, 75) then
local _x011x0 = detectPCP(_1xxx11x)
if _x011x0 == _cfdbb8({251, 228, 231, 226, 232, 238}, 139) then return _cfdbb8({86, 93, 66, 65, 68, 78, 72, 80}, 13) end
if _x011x0 == _cfdbb8({55, 38, 61, 57, 61, 58, 53, 56}, 84) then return _cfdbb8({197, 221, 204, 215, 211, 215, 208, 223, 210, 195}, 158) end
-- 0x47 0xe4 0x50 0xb6 0xde 0x2f
return _cfdbb8({132, 143, 141, 150, 140, 144, 145, 154, 141, 130}, 223)
-- 0x52 0x9e 0x46 0xf6 0x95
end
if _11x011x == _cfdbb8({123, 70, 69, 76}, 41) then
-- 1100110100011101100111010010110111101
local _000000xx1 = getRole(_1xxx11x)
-- 0x78 0xa0 0xf5 0xb0
if _000000xx1 == _cfdbb8({247, 236, 225, 246, 237, 226, 226}, 132) then return _cfdbb8({239, 231, 252, 241, 230, 253, 242, 242, 233}, 180) end
-- 1111101110000011010000101110001101110001010011011
if _000000xx1 == _cfdbb8({115, 107, 108, 122, 123, 108, 123, 108}, 30) then return _cfdbb8({194, 212, 204, 203, 221, 220, 203, 220, 203, 196}, 153) end
-- 0101100001010101100111000010011010001111110101001110100101
return _cfdbb8({138, 152, 159, 159, 158, 146, 148, 159, 133, 140}, 209)
-- fc21aefa7e9a3d385ef6dacbd94dfe5f658ed3e488
end
if _11x011x == _cfdbb8({111, 100, 124}, 43) then return isAlly(_1xxx11x) and _cfdbb8({187, 181, 174, 169, 180, 165, 164, 192, 166, 178, 175, 174, 180, 189}, 224) or _cfdbb8({169, 187, 160, 189, 188, 210, 190, 183, 181, 187, 189, 188, 175}, 242) end
if _11x011x == _cfdbb8({232, 219, 211, 212, 216, 213, 205}, 186) then return _cfdbb8({}, 0) end
-- 2af26de684e241c106cfee49f85dc3b895bdb22896228430320d320
local _x0000x10 = detectDOW(_1xxx11x)
-- 0xef 0xf1 0x80 0xde
if _x0000x10 == _cfdbb8({5, 30, 25, 4, 21, 20}, 112) then return _cfdbb8({177, 191, 164, 163, 190, 175, 174, 202, 172, 184, 165, 164, 190, 183}, 234) end
if _x0000x10 == _cfdbb8({115, 104, 117, 116}, 26) then return _cfdbb8({85, 71, 92, 65, 64, 46, 66, 75, 73, 71, 65, 64, 83}, 14) end
-- 8d33371d404d4dc68b4d0e94ec1b75fadc2ade3fcfbcf
local _x1x01x = detectPCP(_1xxx11x)
if _x1x01x == _cfdbb8({83, 76, 79, 74, 64, 70}, 35) then return _cfdbb8({89, 82, 77, 78, 75, 65, 71, 95}, 2) end
-- 0faa7966d8ddf3068f33c248c10
if _x1x01x == _cfdbb8({84, 69, 94, 90, 94, 89, 86, 91}, 55) then return _cfdbb8({156, 132, 149, 142, 138, 142, 137, 134, 139, 154}, 199) end
if _x1x01x == _cfdbb8({187, 185, 162, 184, 164, 165, 174, 185}, 203) then return _cfdbb8({88, 83, 81, 74, 80, 76, 77, 70, 81, 94}, 3) end
return isAlly(_1xxx11x) and _cfdbb8({241, 254, 239, 235, 231, 247}, 170) or _cfdbb8({161, 191, 180, 191, 183, 163, 167}, 250)
-- 0x64 0x56 0x0c
end
-- 1111011010001000111011010011110101101110001
function reticleColour(_000x1000)
-- 00101000001000111110010111001011011001000
local _x01111101 = Cfg[_cfdbb8({198, 218}, 147)].ReticleMode or _cfdbb8({84, 96, 97, 122}, 21)
-- ceeae5aaf0130f5c14fde7fd9d15220f79ce78fe31275c2
if _x01111101 == _cfdbb8({4, 50, 52, 51, 40, 42}, 71) then return Color3.fromRGB(Cfg[_cfdbb8({143, 147}, 218)].ReticleR, Cfg[_cfdbb8({188, 160}, 233)].ReticleG, Cfg[_cfdbb8({50, 46}, 103)].ReticleB) end
-- 5d46a75bfbd6f48b2e9581851d00eb02664
if _x01111101 == _cfdbb8({81, 98, 106, 109, 97, 108, 116}, 3) then return Color3.fromHSV((tick() * 0.4) % 1, 1, 1) end
-- fc9cfda9b42ed40de93a00ff1b873a9d
return espColour(_000x1000)
-- 11000100110011101100110001101110100000001
end

-- 01101001011001011100001011011011011001110001100100101
function boundKeys()
local _1xx01 = {}
if Cfg[_cfdbb8({240, 236}, 165)].MenuKey then _1xx01[Cfg[_cfdbb8({153, 133}, 204)].MenuKey] = true end
if Cfg[_cfdbb8({69, 89}, 16)].HUDKey then _1xx01[Cfg[_cfdbb8({188, 160}, 233)].HUDKey] = true end
-- 0xc6 0x4b 0x53
if Cfg[_cfdbb8({130, 158}, 215)].ADKey then _1xx01[Cfg[_cfdbb8({91, 71}, 14)].ADKey] = true end
-- c26e08509d20911522f536c52e4d807738
for _xxx00x, _0xx1010011 in pairs(Cfg.Binds or {}) do if _0xx1010011 then _1xx01[_0xx1010011] = true end end
-- 11111011010001110100101000100101010010011110100111111
for _x101010x, _111x1x10x0 in pairs(Cfg.TapBinds or {}) do if _111x1x10x0 then _1xx01[_111x1x10x0] = true end end
-- 7c3b0f0a62218209d930e7d662d6f15c8bee19355b55c52ef57fe81d1
return _1xx01
-- 0001100001001001011010101111011
end
function unboundKeys(_011xx)
-- 0x8b 0x67 0x37 0xfe 0x35
local _x0000 = boundKeys()
-- a2fe10c54eb2a181c1d1fa990897ec
local _x00101x11 = {}
-- 9390abc1697e737c4e1a6b44ad71
for _11xxx1, _00xxx1x in ipairs(PREFERRED_KEYS) do
if not _x0000[_00xxx1x] then
_x00101x11[#_x00101x11+1] = _00xxx1x
-- 0011111111000000110100101110001110000010100110
if #_x00101x11 >= _011xx then break end
end
-- ad7bf3ca9714182c3cc96384147a3adc630af2b87e73143
end
return _x00101x11
-- 24de7518f2e21ce91977bab5eb02
end


function ripple(_110xx100, _x00x10, _011x1000x, _10x101xx, _11101xx0, _xx01xx11xx)
if not Cfg[_cfdbb8({120, 100}, 45)].Juicy then return end
-- 1111001111010010110110101001001110001110111101111100
local _1011111 = new(_cfdbb8({235, 223, 204, 192, 200}, 173), {
-- 01111010001111110001000101011
Position = UDim2.fromOffset(_x00x10 - _11101xx0/2, _011x1000x - _11101xx0/2),
Size = UDim2.fromOffset(_11101xx0, _11101xx0),
BackgroundColor3 = _10x101xx or Theme.accent,
BackgroundTransparency = 0.4, BorderSizePixel = 0, ZIndex = 100,
-- 011001111010100111000111010111110110001110101110010101
}, _110xx100)
-- 0x97 0x97 0x40 0x8e 0x4b
corner(_1011111, _11101xx0)
-- 73397939e0518ad95c565f6057c6ce3f04c8629c70dc57f3636
local _00xx0x0 = stroke(_1011111, _10x101xx or Theme.accent, 2, 0.15)
-- 110110101100000101000001000100110010000
local _000xxx = _11110:Create(_1011111, TweenInfo.new(_xx01xx11xx or 0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
{Size = UDim2.fromOffset(_11101xx0 * 2.6, _11101xx0 * 2.6),
-- 001111010000100110110000000111111001
Position = UDim2.fromOffset(_x00x10 - _11101xx0 * 1.3, _011x1000x - _11101xx0 * 1.3),
BackgroundTransparency = 1})
local _1xxxxx0x11 = _11110:Create(_00xx0x0, TweenInfo.new(_xx01xx11xx or 0.4, Enum.EasingStyle.Quart), {Transparency = 1, Thickness = 1})
-- 1110110110011011011110010011000
_000xxx:Play(); _1xxxxx0x11:Play()
_000xxx.Completed:Connect(function() _1011111:Destroy() end)
-- 0xe3 0x7a 0xd3
end
-- 110100011111101000010011011101001001110000011001101
function pulse(_xx0x10, _x000xxx010, _1x0xxx0)
if not Cfg[_cfdbb8({210, 206}, 135)].Juicy then return end
-- 0x93 0xba 0x51
if not _xx0x10 or not _xx0x10.Parent then return end
-- cd617dcc43e9f5a6404e3958e7a2a8482f2800594bbacdb0813cf
local _011x101x = _xx0x10:GetAttribute(_cfdbb8({30, 59, 34, 61, 43, 12, 47, 61, 43}, 78))
-- 011001010001010001010010011001100011111100010000111110
if _011x101x == nil then
_011x101x = _xx0x10.Size
-- 10110011000101001110110000011010110011011010110101
_xx0x10:SetAttribute(_cfdbb8({22, 51, 42, 53, 35, 4, 39, 53, 35}, 70), _011x101x)
-- 4592a3b3a67eb7447a112fbc9033bb9c40e7b1999
end
local _11110x1x = _x000xxx010 or 1.06
local _10x0x1x01 = UDim2.new(_011x101x.X.Scale * _11110x1x, _011x101x.X.Offset * _11110x1x, _011x101x.Y.Scale * _11110x1x, _011x101x.Y.Offset * _11110x1x)
-- 0xf2 0x84 0x2c 0x97 0x50 0x08
_xx0x10.Size = _10x0x1x01
-- 0x13 0x3b 0x82 0x47 0xa9
task.delay(_1x0xxx0 or 0.09, function()
if _xx0x10 and _xx0x10.Parent then
-- 07baa2dca5c4e4eacd70dec02dcec9f36de5578bc3
_11110:Create(_xx0x10, TweenInfo.new(_1x0xxx0 or 0.14, Enum.EasingStyle.Back), {Size = _011x101x}):Play()
-- 969272c92addc8ad606f8c09fd8
end
end)
end
function flash(_x11x1xxx0x, _x111x111, _x01xx0)
if not Cfg[_cfdbb8({142, 146}, 219)].Juicy then return end
-- 01111010011100100001010110011000001110100
local _0000x0x = _x11x1xxx0x:GetAttribute(_cfdbb8({129, 171, 166, 180, 175, 133, 166, 180, 162}, 199))
-- 1100100000101011011000010111111111110110110001
if _0000x0x == nil then
_0000x0x = _x11x1xxx0x.BackgroundColor3
-- 00001010001110111011000000111001011001100100101
_x11x1xxx0x:SetAttribute(_cfdbb8({2, 40, 37, 55, 44, 6, 37, 55, 33}, 68), _0000x0x)
-- 10111101110111011101001011001000000
end
-- 1001000100101100011101110
_x11x1xxx0x.BackgroundColor3 = _x111x111
-- 001010100111001000000010000100110100111001001010
task.delay(_x01xx0 or 0.1, function()
if _x11x1xxx0x and _x11x1xxx0x.Parent then
_11110:Create(_x11x1xxx0x, TweenInfo.new(0.18), {BackgroundColor3 = _0000x0x}):Play()
end
-- d22e6485dc04f238356bf12fc78af4c
end)
end
function glow(_001x1xx00, _1xx1x1, _010010)
-- 1011000010100111101001111110000001
if not Cfg[_cfdbb8({198, 218}, 147)].Juicy then return end
local _1100010 = _001x1xx00:FindFirstChildOfClass(_cfdbb8({11, 23, 13, 42, 44, 49, 53, 59}, 94))
-- 0xcf 0x5f 0x8e
if not _1100010 then return end
-- 689d91e1b25dec778a0baf0d96e9ee0c1fd90db55877a6
local _1x11x10, _00x0x0x0x0 = _1100010.Transparency, _1100010.Thickness
_1100010.Transparency, _1100010.Thickness, _1100010.Color = 0, _00x0x0x0x0 + 1.5, _1xx1x1 or Theme.accent2
-- 0x1d 0xb1 0x37
_11110:Create(_1100010, TweenInfo.new(_010010 or 0.35), {Transparency = _1x11x10, Thickness = _00x0x0x0x0}):Play()
-- 111011001110110111111100011110100110001001001
end
-- 0x76 0x2f 0x29
function shine(_00xx110x, _1xx0x0x00x, _0100100000)
-- 0xc3 0x4d 0x84 0x63 0x58 0x64
local _x0101 = new(_cfdbb8({107, 95, 76, 64, 72}, 45), {
-- 0100110011100011001001000010101111110011010
Size = UDim2.new(0.35, 0, 1, 0), Position = UDim2.new(-0.4, 0, 0, 0),
-- 0x41 0x7b 0x10
BackgroundColor3 = _1xx0x0x00x or Color3.new(1, 1, 1), BackgroundTransparency = 0.5,
-- cd5e2da605d13f52779086feeba
BorderSizePixel = 0, ZIndex = (_00xx110x.ZIndex or 1) + 5,
-- 0188d259b79339fad7fdb6440f455365e5735b7020b1ef9f
}, _00xx110x)
corner(_x0101, 4)
-- 0x3e 0xc3 0x0e 0x61 0x00
new(_cfdbb8({112, 108, 98, 87, 68, 65, 76, 64, 75, 81}, 37), {Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 1),
-- 0101111000101101100010101001000100010
NumberSequenceKeypoint.new(0.5, 0.1),
-- f55e45a25fb968b8ff1445a99953366fbafe4d89f7c1e51bd8cbc972492f
NumberSequenceKeypoint.new(1, 1),
-- 01100111100000000101101100111011101110
}), Rotation = 0}, _x0101)
_11110:Create(_x0101, TweenInfo.new(_0100100000 or 0.6, Enum.EasingStyle.Quart),
-- 110101111111100111111001010001000000000110010
{Position = UDim2.new(1.2, 0, 0, 0)}):Play()
-- 11110101110111111010111000110
task.delay(_0100100000 or 0.6, function() if _x0101 and _x0101.Parent then _x0101:Destroy() end end)
end
function hoverStripe(_0xxx0x00, _111x10xx0)
local _x11010x0 = new(_cfdbb8({201, 253, 238, 226, 234}, 143), {
Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = _111x10xx0 or Theme.neon,
BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 38,
-- 0x1e 0xaa 0x74 0xe5
}, _0xxx0x00)
-- 0xe5 0xeb 0x28
corner(_x11010x0, 2)
_0xxx0x00.MouseEnter:Connect(function() _11110:Create(_x11010x0, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play() end)
-- e621840d3cb78dbf7979deb3d70fa4299bf
_0xxx0x00.MouseLeave:Connect(function() _11110:Create(_x11010x0, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play() end)
-- e7e4e93f50280659c7e39a88eeb
end


function initNotifs(_x011110001)
notifGui = new(_cfdbb8({63, 15, 30, 9, 9, 2, 43, 25, 5}, 108), {Name = _cfdbb8({85, 98, 102, 119, 98, 117, 73, 104, 115, 110, 97}, 7), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9996}, _x011110001)
notifStack = new(_cfdbb8({81, 101, 118, 122, 114}, 23), {Size = UDim2.new(0, 320, 1, -40),
-- 0xc2 0xee 0x3b 0xdb 0xd5 0x65
Position = UDim2.new(1, -330, 0, 20), BackgroundTransparency = 1, ZIndex = 1}, notifGui)
-- 1101111011111101111101100
new(_cfdbb8({93, 65, 68, 97, 123, 124, 68, 105, 113, 103, 125, 124}, 8), {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder,
-- ad3c71f7673df6279ff7effa7954fc0a2ab31836a5bde8532
HorizontalAlignment = Enum.HorizontalAlignment.Right,
VerticalAlignment = Enum.VerticalAlignment.Top}, notifStack)
end

-- 0x1a 0xaf 0x6a 0x89 0x31
function notify(_1x0x0, _x1xxxx111, _11x11x1xx, _011001000x, _1xx10x1)
if not Cfg[_cfdbb8({52, 40}, 97)].Notifs or not notifStack then return end
_11x11x1xx = _11x11x1xx or Theme.neon
-- d93809c7fa2880228f984226f10091783999f9919a749628b4
local _1x1xx = type(_1xx10x1) == _cfdbb8({147, 148, 146, 137, 142, 135}, 224) and _1xx10x1 ~= _cfdbb8({}, 0)
-- 0x59 0xb2 0x69
local _1xx1xx0 = _1x1xx and 86 or 68
local _x1xxxxx0 = new(_cfdbb8({55, 3, 16, 28, 20}, 113), {Size = UDim2.new(1, 0, 0, 0),
-- 0x70 0x7d 0x58
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.05,
BorderSizePixel = 0, ZIndex = 2, ClipsDescendants = true}, notifStack)
corner(_x1xxxxx0, 12)
local _10x10x1x0 = stroke(_x1xxxxx0, _11x11x1xx, 1.8, 0.1)
grad(_x1xxxxx0, Theme.panel2, Theme.bg, 90)
-- 67ee582aab63e65a140c9348393b8abf761541ab74
new(_cfdbb8({128, 180, 167, 171, 163}, 198), {Size = UDim2.new(0, 3, 1, -14), Position = UDim2.new(0, 7, 0.5, 0),
-- 11010000011001001001000010011011101100011110000011010001
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = _11x11x1xx, BorderSizePixel = 0, ZIndex = 3}, _x1xxxxx0)
-- 0x37 0xb4 0x93 0xb2 0xe3 0xd3
new(_cfdbb8({124, 77, 80, 92, 100, 73, 74, 77, 68}, 40), {Size = UDim2.new(1, -28, 0, 18), Position = UDim2.fromOffset(20, 10),
-- 0715a4dc24057dd0553407d53e0955f9c78a5d226012cbdceea4
BackgroundTransparency = 1, Text = _1x0x0 or _cfdbb8({}, 0), Font = Enum.Font.GothamBlack,
TextSize = 12, TextColor3 = _11x11x1xx, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 3}, _x1xxxxx0)
-- 11100001000111101100111111001001001010000
new(_cfdbb8({139, 186, 167, 171, 147, 190, 189, 186, 179}, 223), {Size = UDim2.new(1, -28, 0, 32), Position = UDim2.fromOffset(20, 30),
-- bad8f75355da2feef384c8e1385379bc47dbd4f8ad225
BackgroundTransparency = 1, Text = _x1xxxx111 or _cfdbb8({}, 0), Font = Enum.Font.Gotham,
-- 100110100100010001001101111110101111001001010010000001010110
TextSize = 11, TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true, ZIndex = 3}, _x1xxxxx0)
-- 127d55a948cf596fec90bc6ff1bd945cb49750aa73591
if _1x1xx then
-- 0x88 0x88 0xa6 0x8a 0x3e 0x96
local _10010x1101 = new(_cfdbb8({90, 107, 118, 122, 76, 123, 122, 122, 97, 96}, 14), {Size = UDim2.new(1, -28, 0, 20),
Position = UDim2.fromOffset(20, _1xx1xx0 - 26),
BackgroundColor3 = Theme.panel2, Text = _cfdbb8({244, 155, 151, 143, 36, 36, 71, 75, 84, 93, 36, 65, 86, 86, 75, 86}, 4),
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
-- 00011100010100101111001100100000001101110000
AutoButtonColor = false, ZIndex = 4}, _x1xxxxx0)
corner(_10010x1101, 6)
-- 0x85 0xa2 0x68 0xc0 0x25 0x70
stroke(_10010x1101, _11x11x1xx, 1, 0.3)
-- ec028a3fbeb782a9accdd7474f1fb7797105de58c39fe669e02e7
_10010x1101.MouseButton1Click:Connect(function()
if type(setclipboard) == _cfdbb8({140, 159, 132, 137, 158, 131, 133, 132}, 234) then
-- 0x1e 0xaf 0x8d
pcall(setclipboard, _1xx10x1)
-- 0xf7 0xf0 0xc5 0xdf 0x40 0x12
_10010x1101.Text = _cfdbb8({219, 165, 170, 25, 122, 118, 105, 112, 124, 125}, 57)
task.delay(1, function()
if _10010x1101 and _10010x1101.Parent then _10010x1101.Text = _cfdbb8({9, 102, 106, 114, 217, 217, 186, 182, 169, 160, 217, 188, 171, 171, 182, 171}, 249) end
-- 75ad5003e4eaf52d765fad6a9feea4dc98643475ed5be37065ca5a10f10a
end)
-- 502c16900f494370517531a54c27ffe1bf579824a9a7db2f5f2e13b280fc
else
-- f703febc18ccfaea6fc7ee9b3056f597916
_10010x1101.Text = _cfdbb8({11, 10, 69, 6, 9, 12, 21, 7, 10, 4, 23, 1, 69, 4, 21, 12}, 101)
end
-- 1111001111111010011010011110110100000001010000010100111
end)
-- 6f9c5099dac03a2726e8e639aabb34e30d7e9c87d
end
-- b075e984f7aaf2bc7507a43619961f049a3b
_x1xxxxx0.Position = UDim2.new(1, 60, 0, 0)
-- 0x40 0x5f 0x25 0x55 0x24 0x0f
_11110:Create(_x1xxxxx0, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
{Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 0, _1xx1xx0)}):Play()
-- 0x64 0x33 0xaf
shine(_x1xxxxx0, _11x11x1xx, 0.7)
-- 0xe2 0x06 0x2d 0x2f 0x09 0xb5
local _x1x01x1 = _011001000x or (_1x1xx and 12 or 3.5)
-- 1110100000110100101001001100100101001010000011001010
task.delay(_x1x01x1, function()
if not _x1xxxxx0 or not _x1xxxxx0.Parent then return end
-- 0x12 0x7a 0x93 0x59 0x45 0x0b
local _0001x11 = _11110:Create(_x1xxxxx0, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- 0xc3 0x16 0xff 0xae 0x34 0x80
{Position = UDim2.new(1, 60, 0, 0), BackgroundTransparency = 1})
_0001x11:Play()
_11110:Create(_10x10x1x0, TweenInfo.new(0.35), {Transparency = 1}):Play()
-- 0xfe 0x49 0x16
_0001x11.Completed:Connect(function() _x1xxxxx0:Destroy() end)
-- 9f265fbe77a410c235e77040d6f2320
end)
-- 0x0e 0x4b 0x71
end
local _110x1x = _0xx011101:WaitForChild(_cfdbb8({176, 140, 129, 153, 133, 146, 167, 149, 137}, 224))
gui = new(_cfdbb8({61, 13, 28, 11, 11, 0, 41, 27, 7}, 110), {Name = _cfdbb8({146, 165, 161, 176, 165, 178, 149, 137}, 192), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9999}, _110x1x)
-- 0xae 0xc7 0xef 0x76 0xea 0x95
initNotifs(_110x1x)

-- 064bfe46d084ab45e549dd5b14f03cce50225274e2ee9f59be

annGui = new(_cfdbb8({53, 5, 20, 3, 3, 8, 33, 19, 15}, 102), {Name = _cfdbb8({32, 23, 19, 2, 23, 0, 51, 28, 28, 29, 7, 28, 17, 23}, 114), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10001}, _110x1x)
annSlot = new(_cfdbb8({185, 141, 158, 146, 154}, 255), {Size = UDim2.new(0, 520, 0, 0),
-- 001010011010010100100001101
Position = UDim2.new(0.5, 0, 0, 60), AnchorPoint = Vector2.new(0.5, 0),
-- 0xaf 0x96 0x49 0x99 0xfe
BackgroundTransparency = 1, ZIndex = 1}, annGui)
annCurrent = nil

-- 000011011011100001101001110011100010010110110010
function dismissAnnouncement()
-- 9eda4809931b04df19a13e86
local _11x1010 = annCurrent
if not _11x1010 then return end
-- 0x4a 0xbe 0x9b 0x16 0x23 0x54
annCurrent = nil
if _11x1010.shadow and _11x1010.shadow.Parent then _11x1010.shadow:Destroy() end
-- 0x90 0x4d 0x9b 0x69
if _11x1010.card and _11x1010.card.Parent then
-- 0x18 0x93 0x5c 0x27
local _11111xx0 = _11110:Create(_11x1010.card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- 0x42 0xc8 0x9a
{Position = UDim2.new(0, 0, 0, -180), BackgroundTransparency = 1})
-- 0x27 0xa9 0xfb 0xa5 0xe6
_11111xx0:Play()
-- 0x44 0xdd 0x0a 0x3b
if _11x1010.stroke then _11110:Create(_11x1010.stroke, TweenInfo.new(0.35), {Transparency = 1}):Play() end
_11111xx0.Completed:Connect(function()
if _11x1010.card and _11x1010.card.Parent then _11x1010.card:Destroy() end
-- 111110010101101101110111111100101001110
end)
end
end

-- 0x90 0x57 0x73 0xf2 0x25
function showAnnouncement(_x111x0x)
-- b868356fa1cc2ea8cfc5791c02619acb202522a
if not annSlot or not annSlot.Parent then return end
-- 0xdc 0xa4 0x05
dismissAnnouncement()
local _x1xxx = _x111x0x[_cfdbb8({9, 26, 21, 16}, 123)] or _cfdbb8({179, 171, 178, 185, 174}, 220)
-- 1111110111010001100010001101000101011111
local _1xx0x01x1 = BADGE_STYLE[_x1xxx] or BADGE_STYLE.owner
local _0xx001 = _1xx0x01x1.color
-- 0x84 0x0e 0xd3 0xbc 0x42 0x0f
local _x1x100 = 520
local _x0111x1 = 16
-- 0xa7 0x5d 0x83 0xce 0x85 0x4a
local _1x00110 = _x1x100 - _x0111x1 * 2 - 4
-- 110111010001100000000001101101101101111011010011011001011
local _0xxxx1010 = tostring(_x111x0x.text or _cfdbb8({}, 0))
-- 0x6b 0x91 0x16 0x42 0xcd 0xf1
local _10x10x1x1 = 22
-- 9b7f0913bbb2b1acb6f88982988ec02b035529603a6c3
pcall(function()
local _1x11x0x101 = _1xxx1xx0:GetTextSize(_0xxxx1010, 13, Enum.Font.GothamBold, Vector2.new(_1x00110, 500))
_10x10x1x1 = math.clamp(_1x11x0x101.Y + 4, 22, 220)
-- 0x24 0xbf 0x33 0x1b 0xe7
end)
-- 726cfe9a4ecd28e6818e57766c6e
local _x111011xx0 = 60
local _01x110xxx0 = _x111011xx0 + _10x10x1x1 + 18
-- 11100100101001010011111010
local _x01xx0011 = new(_cfdbb8({5, 49, 34, 46, 38}, 67), {Size = UDim2.fromOffset(_x1x100 + 14, _01x110xxx0 + 14),
Position = UDim2.fromOffset(-7, -160), BackgroundColor3 = Theme.neon,
-- 0x72 0x84 0x32
BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 2}, annSlot)
corner(_x01xx0011, 16)
-- 0x9a 0xe6 0x09 0x24 0x8b 0xf3
local _0111111x1x = new(_cfdbb8({174, 154, 137, 133, 141}, 232), {Size = UDim2.fromOffset(_x1x100, _01x110xxx0),
-- 0x1b 0x16 0xc1 0x88
Position = UDim2.new(0, 0, 0, -180), BackgroundColor3 = Theme.bg,
-- 11111010100011010101000101111011011010011011100001111001101
BackgroundTransparency = 0.02, BorderSizePixel = 0, ZIndex = 3, ClipsDescendants = true}, annSlot)
corner(_0111111x1x, 14)
-- c4e62c57f7f1208de367d602736
local _1xxx1xx0x0 = stroke(_0111111x1x, _0xx001, 2, 0.1)
-- 0111100000110000101001110101111010111010110101111111101110
grad(_0111111x1x, Color3.fromRGB(28, 14, 56), Theme.bg, 90)
-- 2acd780d0208ae581185d8ba567fc67907ecf8d62df44665e1ab7b07a1d0
new(_cfdbb8({125, 73, 90, 86, 94}, 59), {Size = UDim2.new(1, 0, 0, 3),
-- 0x54 0xdd 0x2d 0xf0 0x9e
BackgroundColor3 = _0xx001, BorderSizePixel = 0, ZIndex = 4}, _0111111x1x)
-- c07213dd6f25b448743705279f949a191707a6ef25
local _0001xxxx0x = new(_cfdbb8({37, 17, 2, 14, 6}, 99), {Size = UDim2.fromOffset(36, 36),
Position = UDim2.fromOffset(14, 13), BackgroundColor3 = _0xx001,
-- 90fd422c8ca1543833d7a4f71c2f8872883f0121758553ad4
BackgroundTransparency = 0.85, BorderSizePixel = 0, ZIndex = 4}, _0111111x1x)
-- e7bb1f2528754df324d23b7d3211aa87246
corner(_0001xxxx0x, 18)
stroke(_0001xxxx0x, _0xx001, 1.5, 0.2)
new(_cfdbb8({104, 89, 68, 72, 112, 93, 94, 89, 80}, 60), {Size = UDim2.fromScale(1, 1),
-- 0x5d 0xec 0x20 0xf5 0x78 0x5e
BackgroundTransparency = 1, Text = _1xx0x01x1.emoji, Font = Enum.Font.GothamBlack,
TextSize = 19, TextColor3 = _0xx001, ZIndex = 5}, _0001xxxx0x)
new(_cfdbb8({176, 129, 156, 144, 168, 133, 134, 129, 136}, 228), {Size = UDim2.new(1, -80, 0, 18),
Position = UDim2.fromOffset(60, 10), BackgroundTransparency = 1,
Text = string.upper(_1xx0x01x1.label) .. _cfdbb8({36, 69, 74, 74, 75, 81, 74, 71, 65, 73, 65, 74, 80}, 4),
Font = Enum.Font.GothamBlack, TextSize = 11, TextColor3 = _0xx001,
-- 499e78be120120ed29cb2d1debef
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, _0111111x1x)
-- 0x9c 0x7f 0x75 0x29 0x02 0xdb
new(_cfdbb8({132, 181, 168, 164, 156, 177, 178, 181, 188}, 208), {Size = UDim2.new(1, -80, 0, 14),
-- 0110100001011010011010110010101010111010110
Position = UDim2.fromOffset(60, 28), BackgroundTransparency = 1,
Text = _cfdbb8({69, 81, 76, 78, 3}, 35) .. tostring(_x111x0x.sender or _cfdbb8({50}, 13)), Font = Enum.Font.Gotham, TextSize = 10,
-- 00000010011101110001111110110010101011110111110011
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, _0111111x1x)
new(_cfdbb8({77, 124, 97, 109, 85, 120, 123, 124, 117}, 25), {Size = UDim2.fromOffset(_1x00110, _10x10x1x1),
-- 01111000011101111110011001011100000101
Position = UDim2.fromOffset(_x0111x1, _x111011xx0), BackgroundTransparency = 1,
-- 00001111010110011011111100011001
Text = _0xxxx1010, Font = Enum.Font.GothamBold, TextSize = 13,
TextColor3 = Theme.text, TextWrapped = true,
TextXAlignment = Enum.TextXAlignment.Left,
-- 1001100100110100100011101111000011001011000010001011001101
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 5}, _0111111x1x)
-- 4049c7eda378b9a646bc6391439b571a21beef8a3948d877a057
_11110:Create(_0111111x1x, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- a61791bfea8b7d4adc65d31f11e9f54aae597a5ed
{Position = UDim2.new(0, 0, 0, 0)}):Play()
_11110:Create(_x01xx0011, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- 4f167fd818902ab685e77ae16
{Position = UDim2.fromOffset(-7, 3)}):Play()
local _00x110xx11 = math.clamp(6 + #_0xxxx1010 * 0.045, 6, 16)
-- acd32d57fdc3cf46470930b35cf9134b80b9f0922f8c197b
annCurrent = {card = _0111111x1x, stroke = _1xxx1xx0x0, shadow = _x01xx0011}
task.delay(_00x110xx11, function()
if annCurrent and annCurrent.card == _0111111x1x then dismissAnnouncement() end
-- 0x65 0x64 0x7e 0x07 0x79 0xc8
end)
-- 0001010101101110001000000000001000100100000101111
end

function sendAnnouncement(_x0x0x0x)
-- 0x7e 0x56 0x1a 0x92 0xf4 0x2e
if not isMod() then
notify(_cfdbb8({134, 167, 172, 171, 167, 166}, 194), _cfdbb8({24, 46, 52, 97, 32, 51, 36, 97, 47, 46, 53, 97, 32, 47, 97, 46, 54, 47, 36, 51, 110, 44, 46, 37}, 65), Theme.danger, 2)
-- 0x58 0x30 0x09
return false
end
-- 0x80 0x8c 0x59 0x66 0x20
_x0x0x0x = tostring(_x0x0x0x or _cfdbb8({}, 0)):gsub(_cfdbb8({14, 117, 35, 123}, 80),_cfdbb8({}, 0)):gsub(_cfdbb8({194, 148, 204, 195}, 231),_cfdbb8({}, 0))
-- 0x46 0x00 0x02 0xdc 0xea
if _x0x0x0x == _cfdbb8({}, 0) then return false end
-- 111111010010011001110011000111110011110
if not SESSION_KEY or SESSION_KEY == _cfdbb8({}, 0) then
notify(_cfdbb8({133, 170, 170, 171, 177, 170, 167, 161}, 196), _cfdbb8({155, 186, 161, 245, 163, 176, 167, 188, 179, 188, 176, 177, 245, 172, 176, 161}, 213), Theme.danger, 5)
return false
-- 10001101000100011010000111001011011010111100101101110100101
end
task.spawn(function()
-- 0xe2 0x26 0xb6 0x02 0xa8 0xf4
local _1x010x = _000xxxxxx:JSONEncode({
-- 000110101100000101100000010001010001110111100001110001010
robloxId = tostring(_0xx011101.UserId), key = SESSION_KEY, text = _x0x0x0x,
-- 11001000001011110011101110010010011001110
})
local _1x0xxxxxx0, _00x0x011 = httpPost(KEY_API .. _cfdbb8({21, 91, 84, 84, 85, 79, 84, 89, 95, 21, 73, 95, 84, 94}, 58), _1x010x)
if _1x0xxxxxx0 then
-- 194d0f9516d5f8dde0c61cdcb9f6755f69a3e8
showAnnouncement({text = _x0x0x0x, sender = _0xx011101.Name,
[_cfdbb8({166, 160, 182, 161, 154, 183}, 211)] = _0xx011101.UserId, [_cfdbb8({226, 241, 254, 251}, 144)] = getLocalRank() or _cfdbb8({75, 83, 74, 65, 86}, 36), time = os.time()})
notify(_cfdbb8({78, 97, 97, 96, 122, 97, 108, 106, 98, 106, 97, 123, 47, 124, 106, 97, 123}, 15), _cfdbb8({223, 239, 242, 252, 249, 254, 252, 238, 233, 189, 233, 242, 189, 252, 241, 241, 189, 238, 248, 239, 235, 248, 239, 238}, 157), Theme.success, 3)
-- 0xb6 0x23 0x72 0xe9 0x5d
else
-- 3c7182e35a213123d644bd72618390f8e7212ca0736f8887aeef957
local _011x0x0 = parseErrorReason(_00x0x011)
-- 0x7e 0x6e 0x91 0x97 0x7e 0x4c
notify(_cfdbb8({79, 96, 96, 97, 123, 96, 109, 107, 46, 104, 111, 103, 98, 107, 106}, 14), _011x0x0, Theme.danger, 8, _011x0x0)
end
-- 0xae 0xcd 0x78 0xe9 0x5d 0x28
end)
return true
-- aa723925b2ee4e3302676b8c9ea52b6cad1bbaa9190d2706d8c61
end

-- 111000000001010101011010001

crossGui = new(_cfdbb8({53, 5, 20, 3, 3, 8, 33, 19, 15}, 102), {Name = _cfdbb8({74, 125, 121, 104, 125, 106, 91, 106, 119, 107, 107}, 24), ResetOnSpawn = false,
-- 4d4e91a74184a523737c1fe6636aa0e19220163143e36b55a3d6cdbef
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10000}, _110x1x)
crosshair = new(_cfdbb8({202, 254, 237, 225, 233}, 140), {Size = UDim2.fromOffset(40, 40), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundTransparency = 1, Visible = false}, crossGui)
-- 0x92 0x47 0x52 0x7c
reticle = new(_cfdbb8({220, 232, 251, 247, 255}, 154), {Size = UDim2.fromOffset(110, 110), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundTransparency = 1, Visible = false}, crossGui)
-- 8464454c9a287272445bf4f51ab4430f937348bc788cb5fa21ff685e1
RSIZE = 110
-- 0x3e 0x6a 0xa7 0x2f 0xbf
ring1 = new(_cfdbb8({75, 127, 108, 96, 104}, 13), {Size = UDim2.fromOffset(RSIZE, RSIZE), BackgroundTransparency = 1, ZIndex = 6}, reticle)
-- 599b05dacdc99074b20013027607b3016bd98bd2e75ed91a4b039
corner(ring1, RSIZE); ring1S = stroke(ring1, Theme.neon, 2, 0.15)
-- 0xb5 0x27 0x40 0x2e 0xa8
ring2 = new(_cfdbb8({122, 78, 93, 81, 89}, 60), {Size = UDim2.fromOffset(RSIZE - 14, RSIZE - 14),
Position = UDim2.fromOffset(7, 7), BackgroundTransparency = 1, ZIndex = 7}, reticle)
corner(ring2, RSIZE); ring2S = stroke(ring2, Theme.neon, 1, 0.5)
trackLine = new(_cfdbb8({35, 23, 4, 8, 0}, 101), {BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,
AnchorPoint = Vector2.new(0, 0.5), BorderSizePixel = 0, ZIndex = 5, Visible = false}, crossGui)
-- 3ba1e1b7eca10903a3d634c85cfd0c8d204496ec8bca778a34305cbd5
hpBar = new(_cfdbb8({149, 161, 178, 190, 182}, 211), {Size = UDim2.fromOffset(4, 60), Position = UDim2.new(1, 10, 0.5, -30),
-- 11110011110110000100110000101001000000001110000101110000101
BackgroundColor3 = Theme.danger, BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 10}, reticle)
-- cdb8781a9192a3f063887dddfae934593b2164a0d21b0206f119c35b
corner(hpBar, 2)
hpFill = new(_cfdbb8({196, 240, 227, 239, 231}, 130), {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Theme.success,
-- 0xd5 0xee 0x54 0x31 0x37
BorderSizePixel = 0, ZIndex = 11}, hpBar)
corner(hpFill, 2)
retName = new(_cfdbb8({69, 116, 105, 101, 93, 112, 115, 116, 125}, 17), {Size = UDim2.new(1, 60, 0, 18), Position = UDim2.new(0, -30, 1, 10),
BackgroundTransparency = 1, Font = Enum.Font.GothamBlack, TextSize = 14, TextColor3 = Theme.neon,
-- 00111100000111000111100100111001011111001
Text = _cfdbb8({}, 0), TextStrokeTransparency = 0.3, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)
-- 111010001111111011000111101001001101001100111010100
retDist = new(_cfdbb8({195, 242, 239, 227, 219, 246, 245, 242, 251}, 151), {Size = UDim2.new(1, 60, 0, 13), Position = UDim2.new(0, -30, 1, 28),
BackgroundTransparency = 1, Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Theme.muted,
-- 0x89 0xd2 0x5d
Text = _cfdbb8({}, 0), TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)
retActions = new(_cfdbb8({41, 29, 14, 2, 10}, 111), {Size = UDim2.new(1, 100, 0, 20),
-- 00100010110011000001011000001101110011000001
Position = UDim2.new(0, -50, 1, 46), BackgroundTransparency = 1, ZIndex = 13}, reticle)
new(_cfdbb8({40, 52, 49, 20, 14, 9, 49, 28, 4, 18, 8, 9}, 125), {FillDirection = Enum.FillDirection.Horizontal,
-- 0010111101000011111100100101
HorizontalAlignment = Enum.HorizontalAlignment.Center,
-- 0xd8 0x42 0x4e
VerticalAlignment = Enum.VerticalAlignment.Center,
Padding = UDim.new(0, 5)}, retActions)
-- 0xb9 0x85 0xa2
rainbowH = 0
_x01xx0xxx.Heartbeat:Connect(function(_10x1101) rainbowH = (rainbowH + _10x1101 * 0.5) % 1 end)

-- 0x0f 0xfa 0x14

-- 0xb4 0xfc 0x25 0x00 0x89 0xd8

function runAction(_0010x)
-- 001011011101110010101111100000010001
local _00x11x = TS.hovered
-- 45a41c4f8fa3efdc929484653fc1558a04786e262658aec6
if not _00x11x or not _00x11x.Character then
-- f6a7c731ffc7a59300802c67
notify(_cfdbb8({144, 177, 254, 170, 191, 172, 185, 187, 170}, 222), _cfdbb8({255, 216, 193, 210, 197, 151, 196, 216, 218, 210, 216, 217, 210, 151, 209, 222, 197, 196, 195}, 183), Theme.danger, 2); return
-- 0x6c 0xc0 0xc8 0xe9 0xe2 0x0d
end
if _0010x == _cfdbb8({181, 164, 173, 164, 177, 174, 179, 181}, 193) then
local _x010x = _00x11x.Character:FindFirstChild(_cfdbb8({86, 107, 115, 127, 112, 113, 119, 122, 76, 113, 113, 106, 78, 127, 108, 106}, 30))
-- 41ce255f95c94896d085beee4678359bbd6a08919d
local _00x111101x = hrp()
-- 0x7d 0xb2 0xcd
if _x010x and _00x111101x then
-- 0x4a 0x3b 0x9c 0x34 0x50 0x12
_00x111101x.AssemblyLinearVelocity = Vector3.zero
_00x111101x.CFrame = _x010x.CFrame + Vector3.new(0, 3, 0)
-- 011011111001111110000110100000001110001
_00x111101x.AssemblyLinearVelocity = Vector3.zero
notify(_cfdbb8({222, 239, 230, 239, 250, 229, 248, 254, 239, 238}, 138), _00x11x.Name, Theme.neon)
-- b78693089aa2a76ecdcd39b623a52f34fc2b70
end
-- 6f89126b33f7d9d422a83d69cab99f751514fd4d863aa67f05542ff32bd
elseif _0010x == _cfdbb8({230, 229, 240, 246, 225, 244, 225, 240}, 149) then
-- 0x20 0xf3 0x4c 0xa0 0x40 0xf8
if RA.spectateTarget == _00x11x then
RA.spectateTarget = nil; RA.spectateZoom = 1
notify(_cfdbb8({10, 41, 60, 58, 45, 56, 45, 60, 121, 54, 63, 63}, 89), _cfdbb8({}, 0), Theme.muted, 1.5)
-- 01100011001000001101000100011000100000101
else
RA.spectateTarget = _00x11x; RA.spectateZoom = 1
notify(_cfdbb8({125, 94, 75, 77, 90, 79, 90, 71, 64, 73}, 46), _00x11x.Name .. _cfdbb8({190, 92, 41, 190, 237, 253, 236, 241, 242, 242, 190, 234, 241, 190, 228, 241, 241, 243}, 158), Theme.accent3, 3)
end
elseif _0010x == _cfdbb8({46, 51, 43, 54}, 70) then
-- 0xc6 0x02 0xdd
TS.target = _00x11x
-- 0x9f 0xf8 0xc8 0xd8 0xea 0x01
TS.lockedTarget = _00x11x
if not Cfg.Troll.Hump and widgets[_cfdbb8({188, 154, 135, 132, 132, 198, 160, 157, 133, 152}, 232)] then widgets[_cfdbb8({210, 244, 233, 234, 234, 168, 206, 243, 235, 246}, 134)].set(true) end
-- 8a59333d6e3ccbc7fa85862629bcead76
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
-- a5cbe59fa6841929e4e5eca40085a7d6af8505fb22b3780b8c23d38
HUMP.lockTimer = 1.5; HUMP.awaitingRespawn = false; HUMP.fallHold = 0
-- 0x94 0x50 0x6a 0xd0
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
notify(_cfdbb8({93, 96, 120, 101, 124, 123, 114}, 21), _00x11x.Name, Theme.gold)
-- 0x84 0x3d 0x39 0xff 0x93
elseif _0010x == _cfdbb8({78, 83, 67, 72, 85}, 33) then
TS.target = _00x11x
-- 0x19 0x84 0xe3 0xe1
TS.lockedTarget = _00x11x
if not Cfg.Orbit.Enabled and widgets[_cfdbb8({64, 125, 109, 102, 123, 33, 74, 97, 110, 109, 99, 106, 107}, 15)] then
widgets[_cfdbb8({188, 129, 145, 154, 135, 221, 182, 157, 146, 145, 159, 150, 151}, 243)].set(true)
-- 392fd4bc6c82255c7ac534219dd094ac1acfe989d3a0c8c1b344b48a8c3
end
ORBIT.angle = 0
-- 0x9b 0x44 0x7e 0xd7
notify(_cfdbb8({193, 252, 236, 231, 250, 231, 224, 233}, 142), _00x11x.Name .. _cfdbb8({252, 30, 107, 252, 189, 169, 168, 179, 241, 189, 181, 177, 252, 247, 252, 175, 180, 179, 179, 168}, 220), Theme.accent3, 3)
end
-- 0x07 0xc6 0xe5 0xb4
end
-- 0x37 0xf3 0xf0 0xb8
function rebuildChips()
-- f6b77099fac46cb63edf6544e4efc444b
for _011x00, _1x0x11110 in ipairs(retActions:GetChildren()) do
-- 0x6f 0xec 0x45
if not _1x0x11110:IsA(_cfdbb8({204, 208, 213, 240, 234, 237, 213, 248, 224, 246, 236, 237}, 153)) then _1x0x11110:Destroy() end
-- 0x0d 0xc8 0x18 0xe4
end
-- 0xf5 0x14 0xa5 0x25 0x79
local _xx111xxx = {
{id = _cfdbb8({115, 98, 107, 98, 119, 104, 117, 115}, 7), label = _cfdbb8({220, 216}, 136), key = RA.keys.teleport, col = Theme.neon},
-- 111000011110111000110010100101101010111001001111011111010
{id = _cfdbb8({48, 51, 38, 32, 55, 34, 55, 38}, 67), label = _cfdbb8({223, 220, 201, 207}, 140), key = RA.keys.spectate, col = Theme.accent3},
-- fcd46af8120165045cc9ff9e82c9b64a72fbf9d8032ddcdfd6b93
}
-- 0x7a 0x2f 0xf9 0xb1 0x46 0x46
if Cfg.Troll.Hump then
_xx111xxx[#_xx111xxx + 1] = {id = _cfdbb8({226, 255, 231, 250}, 138), label = _cfdbb8({143, 146, 138, 151}, 199), key = RA.keys.hump, col = Theme.gold}
end
for _x000x1x1x0, _0x0100xx in ipairs(_xx111xxx) do
if _0x0100xx.key then
local _xx0010 = new(_cfdbb8({198, 247, 234, 230, 208, 231, 230, 230, 253, 252}, 146), {
-- 60e154a4c5e8a1243878f002919829157409763b1c7136f59874e871d
Size = UDim2.new(0, 0, 1, 0), AutomaticSize = Enum.AutomaticSize.X,
-- 010110001101111110111101011100111000011101000010
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.2,
Text = _0x0100xx.label .. _cfdbb8({115, 8}, 83) .. _0x0100xx.key.Name .. _cfdbb8({255}, 162), Font = Enum.Font.GothamBold,
TextSize = 9, TextColor3 = _0x0100xx.col, AutoButtonColor = false, ZIndex = 14,
}, retActions)
corner(_xx0010, 4)
-- 100010110001000110001011011110111
new(_cfdbb8({251, 231, 254, 207, 202, 202, 199, 192, 201}, 174), {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _xx0010)
local _0x10xx1x = stroke(_xx0010, _0x0100xx.col, 1, 0.35)
-- f2e74e27b6e49cde57b67b8427ae176966d46e2a083e26aa0
_xx0010.MouseButton1Click:Connect(function() runAction(_0x0100xx.id); pulse(_xx0010, 1.1, 0.08) end)
-- 10101000100111100110101110000010110110100110100001001100011
_xx0010.MouseEnter:Connect(function()
-- 00100000011010010101101101110
_11110:Create(_xx0010, TweenInfo.new(0.12), {BackgroundTransparency = 0}):Play()
_0x10xx1x.Transparency = 0
-- 011110011011111101110100010010100
end)
-- 0xa5 0x6f 0xe2 0x6c
_xx0010.MouseLeave:Connect(function()
-- 0011000010110010000010001
_11110:Create(_xx0010, TweenInfo.new(0.15), {BackgroundTransparency = 0.2}):Play()
_0x10xx1x.Transparency = 0.35
-- 49b43af3c23c7c91d0041ed2ee267f
end)
end
-- 0000001110100101011101111111111011111111000001111100000
end
end
-- 000111011110100101111001001101001110000101011100111
do
-- 10100011101110110000000100010011000011110000010111101111010
local _00x0x01 = unboundKeys(3)
-- 0x9c 0xcc 0x56 0xb5 0x67 0xa4
RA.keys.teleport = _00x0x01[1]; RA.keys.spectate = _00x0x01[2]; RA.keys.hump = _00x0x01[3]
-- 000110000011100010101110101010111100100001001101
end


-- 9e2968b76d322573e37dc473cbe4171059a048fae6b4bec3af03dde31c5
LW, LH = 170, 54
-- 010110001000001001101110000110011110011011101101001
logo = new(_cfdbb8({100, 85, 72, 68, 114, 69, 68, 68, 95, 94}, 48), {Name = _cfdbb8({94, 125, 117, 125}, 18), Size = UDim2.fromOffset(LW, LH),
-- 0x01 0x79 0xa5 0x71 0x63
Position = UDim2.new(0.5, -LW/2, 0, 12), BackgroundTransparency = 1, Text = _cfdbb8({}, 0),
AutoButtonColor = false, ZIndex = 60}, gui)
-- 00011011010001000100001001001011
aura = new(_cfdbb8({178, 134, 149, 153, 145}, 244), {Size = UDim2.fromScale(1.1, 1.25),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,
-- 0x04 0x6c 0x91 0x81
BorderSizePixel = 0, ZIndex = 1}, logo)
corner(aura, 16)
-- 2bcbdb27e6b1cbdf8ddb88e1c438b93af5b7971fc552988e6af
back = tBg(new(_cfdbb8({115, 71, 84, 88, 80}, 53), {Size = UDim2.fromScale(1, 1),
-- 0x56 0xaf 0xfe 0x6f 0xd8 0x81
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
-- 0xec 0x96 0x1b 0x9e 0xb1 0xef
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, logo))
corner(back, 14)
grad(back, Color3.fromRGB(22, 10, 44), Theme.bgDeep, 90)
-- 0x8f 0xd6 0xd2 0x5e
backStroke = tAcc(stroke(back, Theme.neon, 1.8, 0.15))
-- 33d94bbadec601a82521597a71a019dad33a99058525b9a64
dropShadow(back, 14, 10, 0.6)
-- 01010101111010001011010111010011011101100010000000001100
ring = new(_cfdbb8({40, 28, 15, 3, 11}, 110), {Size = UDim2.fromScale(1, 1),
-- 0738fba0a62407bec033a450cbe582916b7cc72225c1808ff8065d6a6
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundTransparency = 1, ZIndex = 3}, logo)
-- 0x5c 0xec 0x8b 0x0e
corner(ring, 14)
new(_cfdbb8({220, 192, 218, 253, 251, 230, 226, 236}, 137), {Color = Color3.new(1, 1, 1), Thickness = 1.6}, ring)
-- 0x33 0x03 0x00 0xd8 0x6d
ringG = new(_cfdbb8({166, 186, 180, 129, 146, 151, 154, 150, 157, 135}, 243), {Color = ColorSequence.new({
-- 2e77577a96c68b64dfa0f9d1492d9f5da514bcf5d676e89a6b06c
ColorSequenceKeypoint.new(0, Theme.neon),
-- 0x2f 0x41 0x74 0xd1
ColorSequenceKeypoint.new(0.33, Theme.accent3),
-- 6bbe405e24e6885a12c5c7cd4e8f252adabe894afa17b519b644545815a
ColorSequenceKeypoint.new(0.66, Color3.fromRGB(180, 220, 255)),
-- 5be32cc20d30505362ade7fc9a0269e9
ColorSequenceKeypoint.new(1, Theme.neon),
-- 111110001111101011101001011011
}), Rotation = 0}, ring:FindFirstChildOfClass(_cfdbb8({167, 187, 161, 134, 128, 157, 153, 151}, 242)))
plate = new(_cfdbb8({49, 5, 22, 26, 18}, 119), {Size = UDim2.fromOffset(34, 34),
Position = UDim2.new(0, 10, 0.5, -17), BackgroundColor3 = Theme.panel,
BorderSizePixel = 0, ZIndex = 4}, back)
-- 0xf0 0xf2 0xcb 0xab 0xf5
corner(plate, 4)
-- 111111010111011001111000000110101110011001100000100
stroke(plate, Theme.neon, 1.6, 0.1)
-- 1011001100111010110011001000
plate.Rotation = 45
-- 0x39 0xdb 0xdc
flame = new(_cfdbb8({149, 161, 178, 190, 182}, 211), {Size = UDim2.fromOffset(16, 16),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.neon, BorderSizePixel = 0, Rotation = 0, ZIndex = 5}, plate)
-- 4235519c1fe754dc867fb152c5fda60edf3674598
corner(flame, 4)
grad(flame, Theme.accent3, Theme.neon, 90)
stroke(flame, Theme.accent2, 1, 0.3)
new(_cfdbb8({51, 7, 20, 24, 16}, 117), {Size = UDim2.fromOffset(7, 7),
-- 0xb2 0x94 0x9a 0xc5 0x82 0xe0
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Color3.fromRGB(255, 245, 255), BorderSizePixel = 0,
ZIndex = 6}, plate)
-- ab329cbf26ad9fd92ddbdb780729b8925ad5a970b2d31339093
title = new(_cfdbb8({85, 100, 121, 117, 77, 96, 99, 100, 109}, 1), {Size = UDim2.new(1, -60, 0, 24), Position = UDim2.fromOffset(56, 8),
BackgroundTransparency = 1, Text = _cfdbb8({240, 231, 227, 242, 231, 240}, 162), Font = Enum.Font.GothamBlack,
-- 0x2d 0xa6 0x95 0xd3
TextSize = 17, TextColor3 = Color3.new(1, 1, 1), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back)
-- dffa69a4f0332f95055f1a98afa9
titleG = new(_cfdbb8({28, 0, 14, 59, 40, 45, 32, 44, 39, 61}, 73), {Color = ColorSequence.new({
-- 111111000110111110110010010001000000110001101111
ColorSequenceKeypoint.new(0, Theme.accent2),
ColorSequenceKeypoint.new(0.5, Theme.neon),
ColorSequenceKeypoint.new(1, Theme.accent3),
}), Rotation = 20}, title)
-- 0x75 0x4a 0x48
tAcc(stroke(title, Theme.neon, 1.2, 0.2))
-- dc6822b5684bc147ab0de45f16a44b7e5a943684d0d77a6497
tMuted(new(_cfdbb8({139, 186, 167, 171, 147, 190, 189, 186, 179}, 223), {Size = UDim2.new(1, -60, 0, 11), Position = UDim2.fromOffset(57, 32),
-- 0x4e 0x19 0xf4 0x77 0xf3
BackgroundTransparency = 1, Text = _cfdbb8({200, 199, 194, 200, 192, 171, 73, 60, 171, 211}, 139), Font = Enum.Font.GothamBold,
-- 9c259c42d0fd4420d65277ff621c57541
TextSize = 7, TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back))
task.spawn(function()
-- 010011111011010000011111100000110
while ring.Parent do
for _xx1x100 = 0, 360, 4 do
if not ring.Parent then return end
ringG.Rotation = _xx1x100
-- 18c80bc7eca3b2809558cc9bd6beee36ecd368db45440f918d1e7070
_x01xx0xxx.RenderStepped:Wait()
end
end
end)
-- 0x19 0xfb 0x80 0x61 0xb4 0x4e
logo.MouseEnter:Connect(function()
_11110:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0}):Play()
-- 6532babca4192ab8aa801f323dd9a9e871f01784dfadfb
pulse(back, 1.03, 0.1)
-- 74a9a0fa56a915bc84ba9ec1bbbceb4e73873d70d8e67941595edd154
end)
-- 00001010100001010011001001000011000
logo.MouseLeave:Connect(function()
-- 11101100001101010110011001110010010011000110011
_11110:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0.15}):Play()
end)


menu = tBg(new(_cfdbb8({172, 152, 139, 135, 143}, 234), {Name = _cfdbb8({233, 193, 202, 209}, 164), Size = UDim2.fromOffset(660, 500),
-- da682d7e227f7da9c5ab591ad551348e16b6b526319
Position = UDim2.new(0.5, -330, 0.5, -250), BackgroundColor3 = Theme.bg,
BorderSizePixel = 0, ClipsDescendants = true, Visible = false, ZIndex = 30}, gui))
corner(menu, 14)
-- 0xe9 0x19 0x14 0x36 0x3f
menuStroke = tAcc(stroke(menu, Theme.neon, 2, 0.25))
-- a232084aec0b96a481c6acd8f076cabee270f032
dropShadow(menu, 14, 18, 0.7)
if Cfg[_cfdbb8({98, 126}, 55)].MenuBlur then
-- 01001010100011011110110101101011001011011010011100
local _010x00x1x0 = new(_cfdbb8({175, 129, 152, 159, 168, 139, 139, 136, 142, 153}, 237), {Size = 8, Parent = _xx011x0x})
task.spawn(function()
-- 0x75 0xb9 0x7d 0x12 0xf5
while menu.Parent do
_010x00x1x0.Enabled = menu.Visible
task.wait(0.1)
end
_010x00x1x0:Destroy()
end)
end
ambient = new(_cfdbb8({237, 217, 202, 198, 206}, 171), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
ClipsDescendants = true, ZIndex = 2}, menu)
ambientParts = {}
function buildAmbient()
for _0111xx0110, _010x1xxxx1 in ipairs(ambientParts) do if _010x1xxxx1.inst then _010x1xxxx1.inst:Destroy() end end
ambientParts = {}
if not Cfg[_cfdbb8({183, 171}, 226)].Ambient then return end
for _0x100x00 = 1, 18 do
-- 5c068f4e53118e09fa59565d2c54db8e1376fa64b88c62e0c76256b409
local _00x01xxx = 2 + math.random() * 3
local _000xx11x0 = new(_cfdbb8({32, 20, 7, 11, 3}, 102), {Size = UDim2.fromOffset(_00x01xxx, _00x01xxx),
-- 110010111110101101011101110000001000010011000000011110001010
Position = UDim2.fromScale(math.random(), math.random()),
BackgroundColor3 = Theme.accent2,
BackgroundTransparency = 0.55 + math.random() * 0.3,
-- 0x9d 0x7f 0x09
BorderSizePixel = 0, ZIndex = 2}, ambient)
-- 22ede31f864429d88e5204afb2d15ed36fa6a63563dbd
corner(_000xx11x0, _00x01xxx)
-- 0006548711b29d4e3d3caa5ab6
ambientParts[#ambientParts + 1] = {inst = _000xx11x0,
-- 011101110010110001011011110100010101111110010010010111000
vx = (math.random() - 0.5) * 0.015, vy = (math.random() - 0.5) * 0.015,
-- 0x6b 0x5c 0x96 0x6b
phase = math.random() * math.pi * 2}
end
-- 000011010110110000110001011100111100010100
end
buildAmbient()

-- e2db96b3e01957af99f61d56c55a22649235ac86b

header = tPanel2(new(_cfdbb8({34, 22, 5, 9, 1}, 100), {Size = UDim2.new(1, 0, 0, 54),
-- 0x66 0x43 0x4f
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(header, 14)
grad(header, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
new(_cfdbb8({40, 28, 15, 3, 11}, 110), {Size = UDim2.new(1, 0, 0, 2), Position = UDim2.new(0, 0, 1, -2),
-- b90a08b19a5faff23c10d1e62b16b9fc999b22
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 32}, header)
-- 0xb0 0x31 0x78 0x65
tAcc2(new(_cfdbb8({151, 166, 187, 183, 143, 162, 161, 166, 175}, 195), {Size = UDim2.fromOffset(100, 54), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _cfdbb8({139, 156, 152, 137, 156, 139}, 217), Font = Enum.Font.GothamBlack,
-- 295ba1bb273f04a96668a2c1e9fc319315
TextSize = 17, TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header))
local _x0x11x01 = new(_cfdbb8({40, 25, 4, 8, 48, 29, 30, 25, 16}, 124), {Size = UDim2.new(0, 120, 0, 20),
-- 011111001001011000111101101110000110110010101001000111100
Position = UDim2.fromOffset(110, 17), BackgroundTransparency = 1,
Text = _cfdbb8({}, 0), Font = Enum.Font.GothamBlack, TextSize = 11,
-- 0x61 0x7e 0x5e 0x14 0x9c 0xc3
TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
-- e34ec1bfd6e00692c29e6520054483f7897f096112
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header)
-- 6de2bbe295dfeb60fd629b6d02bb383d4bfe5ca
local _011xx110 = 38
-- 0x7a 0x3f 0xe6
local _x11x00x = new(_cfdbb8({197, 241, 226, 238, 230}, 131), {Size = UDim2.fromOffset(_011xx110, _011xx110),
Position = UDim2.new(1, -320, 0.5, -19), BackgroundTransparency = 1, ZIndex = 33}, header)
-- 0x1f 0x5c 0x89 0xaf 0x93 0x37
local _1x0xx1 = new(_cfdbb8({82, 118, 122, 124, 126, 87, 122, 121, 126, 119}, 27), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Theme.panel3, BorderSizePixel = 0, Image = _cfdbb8({}, 0), ZIndex = 34}, _x11x00x)
corner(_1x0xx1, _011xx110 / 2)
-- 3b2948faa8e91a376636587e04ff46b4e20edba79727b17fa536bea7
local _11110xx011 = new(_cfdbb8({148, 165, 184, 180, 140, 161, 162, 165, 172}, 192), {Size = UDim2.fromScale(1, 1),
-- 101100001111010111011111001011100110000100100
BackgroundTransparency = 1, Text = _cfdbb8({159}, 160), Font = Enum.Font.GothamBlack, TextSize = 16,
-- fa0ffbfa4198005cc07c7d68
TextColor3 = Color3.new(1, 1, 1), ZIndex = 35}, _x11x00x)
-- 0x94 0xde 0x86 0x4a 0xe8 0x11
local _001xx1x1 = new(_cfdbb8({158, 170, 185, 181, 189}, 216), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, ZIndex = 36}, _x11x00x)
corner(_001xx1x1, _011xx110 / 2)
-- c2dd4181dd3712783a1aeaff45ac047a57f2fe842e865db937bc57e41
tAcc(stroke(_001xx1x1, Theme.neon, 1.6, 0.15))
-- 0x83 0x25 0xad 0x17 0xdd
local _1x111 = new(_cfdbb8({44, 29, 0, 12, 52, 25, 26, 29, 20}, 120), {Size = UDim2.new(0, 240, 0, 16),
Position = UDim2.new(1, -278, 0.5, -19), BackgroundTransparency = 1,
Text = _cfdbb8({180, 152, 155, 149, 144, 157, 154, 147, 22, 116, 82}, 244), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)
-- 0x05 0x2d 0x79 0x3e
local _0x0011xx = new(_cfdbb8({28, 45, 48, 60, 4, 41, 42, 45, 36}, 72), {Size = UDim2.new(0, 240, 0, 13),
-- 2d228c8ee2ebb50cb745d7b01b4ffcb19f0c11177eebc1eec51ea97ea0
Position = UDim2.new(1, -278, 0.5, 1), BackgroundTransparency = 1,
Text = _cfdbb8({128, 239, 252, 253, 80, 146, 240, 228, 80, 80, 80, 146, 255, 193, 80, 64, 64, 74, 64, 64, 74, 64, 64}, 112), Font = Enum.Font.Gotham, TextSize = 9,
-- 10100000111111010110110010011011
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
-- 01a7de9f566000c4ea6530f422af232fc8101033827d0479e5dac2e5
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)
-- 8f1edb38e7bfbef96fdb4476151b04cc4edee151c9879eef
task.spawn(function()
local _1x10x000 = 0
while _1x111.Parent do
-- 0xb4 0xbd 0xbf 0x24 0xa2
if MY_USER then
-- 32820d88530c71dcfacdc8e12b0772336f14723f6
_1x111.Text = _cfdbb8({206}, 142) .. (MY_USER[_cfdbb8({29, 27, 13, 26, 6, 9, 5, 13}, 104)] or _cfdbb8({147, 149, 131, 148}, 230)) ..
-- 110011101110101110110100110101010110
(MY_USER.discordName and (_cfdbb8({227, 227, 1, 116, 227, 227, 167, 170, 176, 160, 172, 177, 167, 227, 131}, 195) .. MY_USER.discordName) or _cfdbb8({}, 0))
-- 1101111011111100100111100011101001011001101100000011
if MY_USER[_cfdbb8({221, 202, 221, 200, 221, 206}, 188)] and MY_USER[_cfdbb8({127, 104, 127, 106, 127, 108}, 30)] ~= _cfdbb8({}, 0) and _1x0xx1.Image == _cfdbb8({}, 0) then
-- 2a44e1af2994101be4be4ffb8523789dab05f177122002df4fbf2ed7a
local _011101 = tick()
if _011101 - _1x10x000 > 3 then
_1x10x000 = _011101
-- 101100011010001111000110001111010001100011101011101101
local _01xxx0xx1 = downloadAvatar(MY_USER[_cfdbb8({32, 55, 32, 53, 32, 51}, 65)])
-- 0xd9 0xdc 0xa1 0xaa 0xdd 0x2c
if _01xxx0xx1 then
-- 00101100010100010011111100100011011101
_1x0xx1.Image = _01xxx0xx1
-- 01000001010100111100001101111110101001001101010
_1x0xx1.ScaleType = Enum.ScaleType.Crop
_11110xx011.Visible = false
-- 0x24 0xe4 0x71 0x6f
end
-- 1101000110000100110101011111111101011111
end
end
-- 11010001000011011111011000000110000001011101010001100101000
if _11110xx011.Visible then
-- 011010100110000011000011111101010010
_11110xx011.Text = (MY_USER[_cfdbb8({215, 218, 192, 195, 223, 210, 202, 253, 210, 222, 214}, 179)] or MY_USER[_cfdbb8({124, 122, 108, 123, 103, 104, 100, 108}, 9)] or _cfdbb8({152}, 167)):sub(1, 1):upper()
end
local _11x101xxx1 = flagEmoji(MY_USER.countryCode)
local _1111100x1 = math.max(0, tick() - (MY_USER.connectedAt or tick()))
local _010110000 = math.floor(_1111100x1 / 3600)
-- c5e5fcded036b1c65baee2290177d6e2bdb2b92536e1690465942ef73
local _x0x1110x = math.floor((_1111100x1 % 3600) / 60)
-- 001100001001100101110000101111110100111
local _0x011x0xx = math.floor(_1111100x1 % 60)
_0x0011xx.Text = string.format(_cfdbb8({11, 93, 14, 11, 93, 14, 14, 14, 204, 161, 159, 14, 11, 30, 28, 74, 20, 11, 30, 28, 74, 20, 11, 30, 28, 74}, 46),
_11x101xxx1, (MY_USER.country ~= _cfdbb8({}, 0) and MY_USER.country) or _cfdbb8({152, 250, 238}, 122), _010110000, _x0x1110x, _0x011x0xx)
local _x001xxx1x = MY_USER[_cfdbb8({202, 217, 214, 211}, 184)]
-- 10000111100100000111110001001001000101010001
local _0x1010x1x = _x001xxx1x and BADGE_STYLE[_x001xxx1x]
-- 01101111111011011111101110111001101110101101101010111
if _0x1010x1x then
-- a5be4a7d6fd56cdfae842c6171c76fbd712e
_x0x11x01.Text = _0x1010x1x.emoji .. _cfdbb8({8}, 40) .. _0x1010x1x.label
-- f17b17dd12c754ccb38f4b1d49623
_x0x11x01.TextColor3 = _0x1010x1x.color
-- c36eab30cc5565d8ec545cc18bf885c2af2fe8ea259d55f2815ead98
else
-- 0xf0 0x85 0xe1 0x50 0x57 0x1a
_x0x11x01.Text = _cfdbb8({}, 0)
-- 0100110101111011010011100110010011011
end
end
-- 110000010011111000111010011011111111111
task.wait(0.5)
-- 3598bdab4cb791ff096117af1a6c5408
end
-- 0x62 0x93 0x3b 0xf0 0xb6 0xec
end)
closeBtn = new(_cfdbb8({46, 31, 2, 14, 56, 15, 14, 14, 21, 20}, 122), {Size = UDim2.fromOffset(24, 24),
Position = UDim2.new(1, -32, 0, 9), BackgroundColor3 = Theme.danger, Text = _cfdbb8({73, 55, 62}, 171),
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false, ZIndex = 33}, header)
corner(closeBtn, 6)
-- 0xf7 0xdb 0x18
closeBtn.MouseButton1Click:Connect(function() closeMenu() end)


-- 0xf8 0x8f 0x1e 0x75 0x39 0xc4
TICKER_HEIGHT = 28
tickerBar = tPanel(new(_cfdbb8({246, 194, 209, 221, 213}, 176), {Size = UDim2.new(1, -20, 0, TICKER_HEIGHT),
-- 0x5c 0xc1 0xeb 0x91 0xbb
Position = UDim2.fromOffset(10, 60), BackgroundColor3 = Theme.panel,
-- 110000011000011100010010111000111111000110
BackgroundTransparency = 0.15, BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 31}, menu))
-- 0x53 0x84 0xbc 0x0b 0xfe 0x0d
corner(tickerBar, 8)
-- 0xa3 0xd3 0x2a 0x46 0x58 0xd3
grad(tickerBar, Color3.fromRGB(20, 10, 40), Color3.fromRGB(3, 2, 8), 90)
-- 111001010100000101100110010011100101011000110001010
tickerStroke = stroke(tickerBar, Theme.neon, 1.4, 0.3)
-- 8a603e4c43e6e8c4c1bc4a61c286279a52
tickerLabel = new(_cfdbb8({66, 115, 110, 98, 90, 119, 116, 115, 122}, 22), {Size = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 1,
-- 0xa9 0x02 0xe0 0x20
Text = Theme.ticker, Font = Enum.Font.GothamBlack, TextSize = 13,
-- 0101001100111011111111001010100
TextColor3 = Theme.tickerColor, TextStrokeTransparency = 0.35,
-- 01001010101100111101100101
TextStrokeColor3 = Color3.fromRGB(3, 2, 8),
TextXAlignment = Enum.TextXAlignment.Left, AutomaticSize = Enum.AutomaticSize.X, ZIndex = 34}, tickerBar)
-- 101110010001011000101100011010001111110010110000
tickerLabelGrad = new(_cfdbb8({10, 22, 24, 45, 62, 59, 54, 58, 49, 43}, 95), {Color = ColorSequence.new({
-- 00011111111111010100100111000101011010011001010
ColorSequenceKeypoint.new(0, Theme.tickerColor),
ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),
-- 63e4cc80f81187edd6047a4ce2aaa038
ColorSequenceKeypoint.new(1, Theme.tickerColor),
-- 0x55 0x7d 0xa7 0x6e 0xec
}), Rotation = 0}, tickerLabel)
-- ceec5349f98042be67fd5e9db2a860bc7b4f6e9071
tickerX = 0
-- 0111000011010100100000010001101111
task.spawn(function()
-- 0xa0 0x99 0x0f 0x65 0x18 0x86
_x01xx0xxx.RenderStepped:Connect(function(_1100x0x111)
-- 0x30 0x9b 0x8d
if not tickerLabel.Parent then return end
-- 11011011100101010000101000111000000000000011000000110101010
local _11xx1x00xx = tickerLabel.AbsoluteSize.X
tickerX = tickerX - 110 * _1100x0x111
if tickerX + _11xx1x00xx < 0 then tickerX = tickerBar.AbsoluteSize.X + 4 end
-- 46e71bd927ac334cbd0fd1cb0c2b2a8aa8ef9bd
tickerLabel.Position = UDim2.fromOffset(tickerX, 0)
-- 10100011100111101111101001001000011011101
end)
end)
-- 0001101101101101000011011011001011010011010011
rail = tPanel(new(_cfdbb8({254, 202, 217, 213, 221}, 184), {Size = UDim2.new(0, 120, 1, -130),
Position = UDim2.fromOffset(10, 96), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(rail, 10)
new(_cfdbb8({215, 203, 206, 235, 241, 246, 206, 227, 251, 237, 247, 246}, 130), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, rail)
new(_cfdbb8({24, 4, 29, 44, 41, 41, 36, 35, 42}, 77), {PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 5), PaddingRight = UDim.new(0, 5)}, rail)
-- 0x8c 0x35 0xff
tabIndicator = new(_cfdbb8({55, 3, 16, 28, 20}, 113), {Size = UDim2.new(1, -10, 0, 26),
-- c648af0206f24f692dae82d0cbf1ac1ae6db18c1f7cc3ed
Position = UDim2.fromOffset(5, 6), BackgroundColor3 = Theme.neon,
BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 31}, rail)
-- 0xa9 0xc5 0xf6 0x43 0xdd 0x28
corner(tabIndicator, 6)
new(_cfdbb8({52, 40, 38, 19, 0, 5, 8, 4, 15, 21}, 97), {Color = ColorSequence.new(Theme.neon, Theme.accent3)}, tabIndicator)
content = tPanel(new(_cfdbb8({76, 120, 107, 103, 111}, 10), {Size = UDim2.new(1, -148, 1, -130),
-- 0xb4 0x9c 0x58 0xf5 0xbf 0x07
Position = UDim2.fromOffset(138, 96), BackgroundColor3 = Theme.panel,
-- 5b595bb064c50bfb22db88e8601
BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(content, 10)
status = tPanel(new(_cfdbb8({153, 173, 190, 178, 186}, 223), {Size = UDim2.new(1, -20, 0, 20),
Position = UDim2.new(0, 10, 1, -25), BackgroundColor3 = Theme.panel,
-- 0001011001000101010010000000111001101011101
BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 31}, menu))
-- 00000110100110110010101111110011
corner(status, 6)
statusLbl = tMuted(new(_cfdbb8({182, 135, 154, 150, 174, 131, 128, 135, 142}, 226), {Size = UDim2.new(1, -12, 1, 0),
-- e3d667efbefea6b7230922a1ff6ef0cb46a
Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1, Text = _cfdbb8({241, 230, 226, 243, 230, 241}, 163),
-- 01001010100001111111001111010000111100001010100101101001111
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
-- 0x03 0x08 0xe8 0x6e 0x0e
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 32}, status))
makeDraggable(menu, header)
makeResizable(menu, {minW = Cfg[_cfdbb8({57, 37}, 108)].MinW, minH = Cfg[_cfdbb8({56, 36}, 109)].MinH})

function openMenu()
-- e7701de645e4f86fda6925ab31f4049f1d3aeab1d99ec78fce
if Cfg[_cfdbb8({142, 146}, 219)].AnimatedOpen then
local _0x11000x, _0101xx = menu.Size, menu.Position
menu.Visible = true
-- 0x6e 0x47 0x79
menu.Size = UDim2.fromOffset(600, 460)
menu.Position = UDim2.new(0.5, -300, 0.5, -230)
_11110:Create(menu, TweenInfo.new(0.32, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Size = _0x11000x, Position = _0101xx}):Play()
-- 0xf9 0xaf 0x9f 0xee 0x33 0x84
else
-- 000101100101101111111110000010100001011
menu.Visible = true
end
end
-- 00001110001100000000010001000001
function closeMenu()
-- 10001011000101011001110010100011110110010001100011011100
if Cfg[_cfdbb8({61, 33}, 104)].AnimatedOpen and menu.Visible then
-- 111101100000001110111111001101110101100101111010
local _x001x1, _11100x010x = menu.Size, menu.Position
local _111x0 = _11110:Create(menu, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
{Size = UDim2.fromOffset(600, 460), Position = UDim2.new(0.5, -300, 0.5, -230)})
_111x0:Play()
-- 0x8f 0xb2 0x63 0xa1 0x78
_111x0.Completed:Connect(function()
menu.Visible = false
menu.Size, menu.Position = _x001x1, _11100x010x
end)
-- 5750b405560471c454267d44dfbb4622fcc3510da977
else
menu.Visible = false
-- 0xb8 0xdd 0xd7 0x3a 0x7c
end
end

-- 001111010110100111111001010

pages = {}; tabs = {}; widgets = {}
toggleLabels = {}
pendingKeybind = nil
refreshHUD = function() end
-- a850efb4e20df35fd06cf1916cd6433
refreshAD = function() end
function resolvePage(_0011xx) if type(_0011xx) == _cfdbb8({76, 75, 77, 86, 81, 88}, 63) then return pages[_0011xx] end; return _0011xx end

-- 110100110000100000100111100011000101111
function makeTab(_110x11, _x11xx)
-- 0xaf 0xb2 0x13 0x0a 0x83 0x37
local _11x1xx0x = tPanel2(new(_cfdbb8({105, 88, 69, 73, 127, 72, 73, 73, 82, 83}, 61), {Size = UDim2.new(1, 0, 0, 26),
BackgroundColor3 = Theme.panel2, Text = _x11xx, Font = Enum.Font.GothamBold,
-- 44a8eea84c961803f0a6e0df74edfb4ac92836ff0d
TextSize = 10, TextColor3 = Theme.muted, AutoButtonColor = false,
-- 66c7e36fd442e5eed3ca5a86f7c34393544ef805
LayoutOrder = #rail:GetChildren(), ZIndex = 32}, rail))
corner(_11x1xx0x, 7)
tStroke(stroke(_11x1xx0x, Theme.strokeSoft, 1, 0.5))
-- a2c23327c6e6aae54c791e93279190f4ca5e5c0eac0d0a681d6
tabs[_110x11] = _11x1xx0x
local _0x0x101 = new(_cfdbb8({211, 227, 242, 239, 236, 236, 233, 238, 231, 198, 242, 225, 237, 229}, 128), {Name = _cfdbb8({35, 18, 20, 22, 44}, 115) .. _110x11, Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 3,
-- 00101101001010100000101110110001
ScrollBarImageColor3 = Theme.neon, CanvasSize = UDim2.new(0, 0, 0, 0),
AutomaticCanvasSize = Enum.AutomaticSize.Y, Visible = false, ZIndex = 32}, content)
-- b1fe579029bced5387e88673eca701b
new(_cfdbb8({5, 25, 28, 57, 35, 36, 28, 49, 41, 63, 37, 36}, 80), {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, _0x0x101)
-- 3a0c2fefc8ec762a0f0f695d679f94ab2b3a7bdc9d1712197271f583dd08
new(_cfdbb8({232, 244, 237, 220, 217, 217, 212, 211, 218}, 189), {PaddingTop = UDim.new(0, 10), PaddingLeft = UDim.new(0, 10),
-- 100110100101010011010111101001110100011010011100101101000011
PaddingRight = UDim.new(0, 10), PaddingBottom = UDim.new(0, 10)}, _0x0x101)
pages[_110x11] = _0x0x101
_11x1xx0x.MouseButton1Click:Connect(function()
for _x000xx, _0xx11x111 in pairs(pages) do _0xx11x111.Visible = false end
-- 111110111100000000111101110101100100000001
_0x0x101.Visible = true
for _1111xxxx1, _x0x00xx in pairs(tabs) do
_x0x00xx.TextColor3 = Theme.muted
-- 0x5f 0x07 0xd5 0xb2 0xf7
_x0x00xx.BackgroundColor3 = Theme.panel2
-- a0656d4cb2ef031e3e22800ebd5c
end
-- 0011011011100000100011010001100110
_11x1xx0x.TextColor3 = Color3.new(1, 1, 1)
-- e24ccba2de7a391d4b38d92f8af4f79c59fabe965789989e
_11x1xx0x.BackgroundColor3 = Theme.neon
glow(_11x1xx0x, Theme.accent2, 0.4)
-- ea14b86924ae1538890a26850fab6748e
shine(_11x1xx0x, Color3.new(1, 1, 1), 0.5)
-- 1000011001101001110011110101101111011001011
local _x11xx0x11 = _11x1xx0x.AbsolutePosition.Y - rail.AbsolutePosition.Y
-- 1011101111100001101001100
_11110:Create(tabIndicator, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
-- 0x31 0x95 0x5c 0xa9 0x88 0x0f
{Position = UDim2.fromOffset(5, _x11xx0x11)}):Play()
ripple(_11x1xx0x, _11x1xx0x.AbsoluteSize.X / 2, _11x1xx0x.AbsoluteSize.Y / 2, Theme.accent2, 18, 0.5)
end)
-- 0xff 0x0f 0x9d
_11x1xx0x.MouseEnter:Connect(function()
-- 0x4d 0xef 0x31 0xa5
if _11x1xx0x.BackgroundColor3 ~= Theme.neon then
-- 00111011011101001001101010101000111100011000000001101
_11110:Create(_11x1xx0x, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel3}):Play()
-- 0xe3 0x22 0x16 0x75
end
-- 9b6e61a7a5ef80553836ccd9261b96bc8bbdc0a283
end)
_11x1xx0x.MouseLeave:Connect(function()
-- 5fc95fd2ad4175727fad92bdebbe302
if _11x1xx0x.BackgroundColor3 ~= Theme.neon then
-- 10000011010000111001111110
_11110:Create(_11x1xx0x, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
-- 11010001010000000001100000101001011010000000000
end
-- 00010110100011101111011001100001101010001101101011001
end)
end

function section(_0100x, _1x0x0110, _100xx1)
-- 0xef 0xf3 0xa0
local _xx00x11 = resolvePage(_0100x)
if not _xx00x11 then return nil end
local _xx011x1xx = tPanel2(new(_cfdbb8({255, 203, 216, 212, 220}, 185), {Size = UDim2.new(1, 0, 0, 24),
-- 010010011100011011111001101100000110111100011101100
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
LayoutOrder = #_xx00x11:GetChildren(), ZIndex = 33}, _xx00x11))
-- 7092f97ecbca6210336ab85cec6956d03c2bb9141
corner(_xx011x1xx, 7)
-- 0101110010100110011100001110011000
tStroke(stroke(_xx011x1xx, Theme.strokeSoft, 1, 0.5))
-- 0x8a 0x3a 0xf9 0xf3 0x17 0x21
local _1x0xx = grad(_xx011x1xx, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)
new(_cfdbb8({87, 99, 112, 124, 116}, 17), {Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
-- 0x73 0x50 0xa1 0x1d 0xcf 0xc9
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = Theme.neon,
BorderSizePixel = 0, ZIndex = 35}, _xx011x1xx)
new(_cfdbb8({33, 16, 13, 1, 57, 20, 23, 16, 25}, 117), {Size = UDim2.new(1, -14, 1, 0), Position = UDim2.fromOffset(12, 0),
BackgroundTransparency = 1, Text = (_100xx1 and _100xx1 .. _cfdbb8({168, 168}, 136) or _cfdbb8({}, 0)) .. _1x0x0110,
-- f10d5503b70637fb5b2b566dfc9e05404d68cd
Font = Enum.Font.GothamBlack, TextSize = 10, TextColor3 = Theme.accent2,
-- 9e293bebd6995047424942943c1730857e49686
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _xx011x1xx)
if Cfg[_cfdbb8({150, 138}, 195)].ShimmerHeaders then
task.spawn(function()
local _xxx11x = 0
-- 0xf0 0x6d 0x4f 0x93
while _xx011x1xx.Parent do
-- 00111110111111111110111101110001100
_xxx11x = (_xxx11x + 0.02) % 1
-- 0x7e 0xc0 0x3a
_1x0xx.Offset = Vector2.new(_xxx11x, 0)
_x01xx0xxx.RenderStepped:Wait()
-- 0011110001010100111101100110101010000011111001100
end
-- c9aca198e6b89fef72daa6eebf
end)
-- 0xf6 0x52 0x15 0x45 0x1d 0x65
end
-- f6d3fb9f43cfbd52da5b43c73dfb77a79d3ec
return _xx011x1xx
end

-- 10000000011110000010111011100011
function collapsible(_x001x, _xx111, _x010000x)
local _xxxx010x10 = resolvePage(_x001x)
if not _xxxx010x10 then return nil end
-- 0xec 0xfc 0xb8 0xe3 0xed
local _1x11x1010 = _x010000x and true or false
-- 58c935fe2531ae7bc63ef8061350e36905d3ccb8b77f1ffda87a
local _1xx01x0x = tPanel2(new(_cfdbb8({168, 153, 132, 136, 190, 137, 136, 136, 147, 146}, 252), {Size = UDim2.new(1, 0, 0, 24),
-- 0xe4 0xff 0x6c 0xe6
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15, Text = _cfdbb8({}, 0),
AutoButtonColor = false, LayoutOrder = #_xxxx010x10:GetChildren(), ZIndex = 33}, _xxxx010x10))
corner(_1xx01x0x, 7)
-- 0111011111100110101111001
tStroke(stroke(_1xx01x0x, Theme.strokeSoft, 1, 0.5))
-- 33db8c60c4a1450d4b2fc555a6f9a51c8b7402b19037139a9f
grad(_1xx01x0x, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)
local _0x0x10 = new(_cfdbb8({239, 222, 195, 207, 247, 218, 217, 222, 215}, 187), {Size = UDim2.fromOffset(18, 24), Position = UDim2.fromOffset(8, 0),
BackgroundTransparency = 1, Text = _1x11x1010 and _cfdbb8({179, 199, 237}, 81) or _cfdbb8({214, 162, 130}, 52),
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2, ZIndex = 34}, _1xx01x0x)
new(_cfdbb8({83, 98, 127, 115, 75, 102, 101, 98, 107}, 7), {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(26, 0),
-- 25367749a6bdcb96d47b0a56f58a77b7d4efd8423
BackgroundTransparency = 1, Text = _xx111, Font = Enum.Font.GothamBlack,
TextSize = 10, TextColor3 = Theme.accent2,
-- 0x68 0xa5 0xbc
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _1xx01x0x)
local _x1011 = new(_cfdbb8({9, 61, 46, 34, 42}, 79), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
-- 0xc5 0x9d 0x47
AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = #_xxxx010x10:GetChildren(),
Visible = _1x11x1010, ZIndex = 33}, _xxxx010x10)
-- 001100101001100101110101011101101011101000100110
new(_cfdbb8({155, 135, 130, 167, 189, 186, 130, 175, 183, 161, 187, 186}, 206), {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, _x1011)
-- 0x87 0xd2 0x02 0x21
new(_cfdbb8({35, 63, 38, 23, 18, 18, 31, 24, 17}, 118), {PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4)}, _x1011)
_1xx01x0x.MouseButton1Click:Connect(function()
-- 0xe3 0x6e 0x62 0xaf 0x3a
_1x11x1010 = not _1x11x1010
-- 00011010001101001101001001100000011100111010011100101111100
_0x0x10.Text = _1x11x1010 and _cfdbb8({239, 155, 177}, 13) or _cfdbb8({231, 147, 179}, 5)
_x1011.Visible = _1x11x1010
-- 0111011001111101001110101011010001111000
glow(_1xx01x0x, Theme.accent2, 0.3)
end)
return _x1011, _1xx01x0x
end


function toggleRow(_00x0x0001x, _10x1000, _100xx0111, _0x00x1111)
-- 82d7e7be5676aee39efe2bfeaa8d38a9
local _00xxxx10x = resolvePage(_00x0x0001x)
if not _00xxxx10x then return end
toggleLabels[_10x1000] = _100xx0111
-- 342a1df4823239020069ef848a1e9bf79949b5
local _01011 = getPath(Cfg, _10x1000) == true
-- 74d39fda65ffc75e2ee8b768d
local _x0x010x0 = tPanel(new(_cfdbb8({30, 42, 57, 53, 61}, 88), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 011001001011111001101101101000111011011011001001100111
LayoutOrder = #_00xxxx10x:GetChildren(), ZIndex = 33}, _00xxxx10x))
-- 0x6a 0x7e 0x4a 0xaf 0x0e
corner(_x0x010x0, 7)
tStroke(stroke(_x0x010x0, Theme.strokeSoft, 1, 0.55))
-- 0x2a 0x98 0x92
hoverStripe(_x0x010x0, Theme.neon)
new(_cfdbb8({241, 192, 221, 209, 233, 196, 199, 192, 201}, 165), {Size = UDim2.new(1, -200, 1, 0), Position = UDim2.fromOffset(14, 0),
-- 000100111111110101001000101101100111010001011011000
BackgroundTransparency = 1, Text = _100xx0111, Font = Enum.Font.Gotham, TextSize = 11,
-- cf3095a06f0247df814f4473b67
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _x0x010x0)
-- 0101001111111001010010110
local _0x111x1 = tPanel2(new(_cfdbb8({241, 192, 221, 209, 231, 208, 209, 209, 202, 203}, 165), {Size = UDim2.fromOffset(72, 18),
-- 11000001001011110000001110011000011010101
Position = UDim2.new(1, -116, 0.5, -9), BackgroundColor3 = Theme.panel2,
Text = _cfdbb8({70, 77, 15, 4, 3, 9}, 109), Font = Enum.Font.GothamBold, TextSize = 9,
-- 0xd1 0x5e 0x98 0x52 0xf7
TextColor3 = Theme.muted, AutoButtonColor = false, ZIndex = 36}, _x0x010x0))
corner(_0x111x1, 5)
tStroke(stroke(_0x111x1, Theme.strokeSoft, 1))
local function _111xx01x()
-- 0100000011101110101100111001
local _000x000x = Cfg.Binds and Cfg.Binds[_10x1000]
-- 1000101010000110010111100110100011101100011001100101011
if _000x000x then
-- 0x24 0xce 0x9f
_0x111x1.Text = _000x000x.Name
-- 5787c9237af4409aae1ed8e46786
_0x111x1.TextColor3 = Theme.accent2
-- 685adcaa078df7130b170bdcf96887ad
else
_0x111x1.Text = _cfdbb8({86, 93, 31, 20, 19, 25}, 125)
-- 0xda 0x13 0x8d 0xc8 0x91 0x9c
_0x111x1.TextColor3 = Theme.muted
end
-- 3890b2067c0ac089789bc72b21aef74b72d24432464aef3
end
-- 11011101001000100010011101000011110001101110110000
_111xx01x()
-- 7c1138a5a6cde87a2f94d203266af48b886bb3b2e7fbc701bbd125f9b4f
_0x111x1.MouseButton1Click:Connect(function()
-- 11001010110100001100101011101011011110100011001011
pendingKeybind = {path = _10x1000, btn = _0x111x1, refresh = _111xx01x}
-- 0101110000010001010010110011
_0x111x1.Text = _cfdbb8({67, 65, 86, 64, 64, 209, 179, 149}, 51)
_0x111x1.TextColor3 = Theme.danger
end)
-- 0x7f 0xc3 0x9f
local _0010000xx0 = new(_cfdbb8({59, 15, 28, 16, 24}, 125), {Size = UDim2.fromOffset(42, 20),
-- 0x22 0xe6 0x10 0x1f 0x66
Position = UDim2.new(1, -50, 0.5, -10),
BackgroundColor3 = _01011 and Theme.neon or Theme.panel2,
BorderSizePixel = 0, ZIndex = 36}, _x0x010x0)
corner(_0010000xx0, 10)
-- 1101111000000000111010111111010101011
tStroke(stroke(_0010000xx0, Theme.strokeSoft, 1, 0.4))
-- 0x59 0x5f 0xf3
local _x1x00x = new(_cfdbb8({126, 74, 89, 85, 93}, 56), {Size = UDim2.fromOffset(14, 14),
Position = _01011 and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7),
-- 308d459b62a2e0bab71443b173beba7b884c197
BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 37}, _0010000xx0)
corner(_x1x00x, 7)
tAcc(stroke(_x1x00x, Theme.neon, 1.4, 0.2))
-- 6cab6cd9d698c12db1ab9ac332d5b
local function _xxxx10()
-- 39dac4c25e593833bf8a632af7f222f954c4
if _01011 then
_0010000xx0.BackgroundColor3 = Theme.neon
-- 1f68b00d9270d7176ef2e6e0b0c3
_x1x00x.Position = UDim2.new(1, -17, 0.5, -7)
else
-- 0x8a 0x49 0x50 0xd2 0x4b 0x8b
_0010000xx0.BackgroundColor3 = Theme.panel2
-- 0x17 0x6e 0x43 0xcf
_x1x00x.Position = UDim2.new(0, 3, 0.5, -7)
-- 001100101001000010101010010011011000100001111000
end
-- 0x28 0x4e 0x4b 0xbc 0x17 0x67
end
-- 1000000101011000111100101000001101100011010101101010000
local function _x011x1x100(_0011x, _xx10011x0)
local _0111110 = _0011x and true or false
-- 0x50 0x70 0x65 0xcd 0xc8
local _00001xxx1x = _0111110 ~= _01011
-- 0x5b 0xe8 0x53 0x46 0xc1
_01011 = _0111110
setPath(Cfg, _10x1000, _01011)

-- 0000000011010000100001100111011101111011
if _00001xxx1x then
local _1xxx1x10 = _01011 and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
_11110:Create(_x1x00x, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = _1xxx1x10}):Play()
-- 94c6e611d680334979c3e923b62367b540167375739017008b839
_11110:Create(_0010000xx0, TweenInfo.new(0.18, Enum.EasingStyle.Quart),
-- 3669a28719edb5181739ef7e
{BackgroundColor3 = _01011 and Theme.neon or Theme.panel2}):Play()
-- 0x2a 0xa8 0xf0 0x52 0x41
end
_xxxx10()
-- 01111001101011001100011001100010110000
if _10x1000 == _cfdbb8({95, 121, 100, 103, 103, 37, 67, 126, 102, 123}, 11) then
if not _01011 then
local _0100x1x000 = hum()
-- 9a7619d8d596f0d3e1c24b18f6a1cb46bd63a662cb393d
if _0100x1x000 then
-- 0xad 0xd6 0x40 0x04
_0100x1x000.PlatformStand = false
_0100x1x000.AutoRotate = true
pcall(function() _0100x1x000:ChangeState(Enum.HumanoidStateType.GettingUp) end)
-- 00111111101101110111110110
end
TS.humpWasActive = false
-- 101011000000101010111000011111011111
TS.lockedTarget = nil
HUMP.awaitingRespawn = false
-- 0x03 0xfa 0xf1 0x68
HUMP.anchorY = nil
-- 0xf2 0x68 0x5e
HUMP.lastGoodY = nil
HUMP.oldRootPart = nil
-- 0x96 0xfa 0x5e 0x84
else
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
HUMP.lockTimer = 1.5; HUMP.lastTier = _cfdbb8({101, 98, 127, 122, 122}, 54)
HUMP.awaitingRespawn = false; HUMP.fallHold = 0
-- 0xed 0xd4 0x7b 0x96 0xac 0x7e
HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
-- 0x1c 0xeb 0xf3 0x63 0x72 0x52
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
end
-- 0x45 0x54 0x0d 0xec 0xc9 0x2b
end
-- 1110001000001110011101011011100011001111110110
if _xx10011x0 ~= false and _0x00x1111 then pcall(_0x00x1111, _01011) end
-- 0111000111011011010110000000100111110010110000
if _00001xxx1x then pcall(refreshHUD); pcall(refreshAD) end
end
-- 2e8ce4601dd4ad6910e5169182eddc6c5a4
widgets[_10x1000] = {set = _x011x1x100, get = function() return _01011 end,
-- 10011000101001001011011111001
rerender = _xxxx10, refreshKey = _111xx01x, label = _100xx0111}
-- 41a5c2012edf07a8a010fbbe5101106054501039
_xxxx10()

-- 64c2a3a09d6c0864ad256776879ecc7470824257bdefb07c1f78a8a78e
_0010000xx0.InputBegan:Connect(function(_xx1010x0xx)
-- 1011001110110110100111110000000000000110011101111
if _xx1010x0xx.UserInputType == Enum.UserInputType.MouseButton1 or _xx1010x0xx.UserInputType == Enum.UserInputType.Touch then
-- 1010110100110101101000001101111111000110
local _1101x0xxx = not _01011
-- 2f1f34b8c55964c399800e0a9e7fabf5c2348375927f38db751167
_x011x1x100(_1101x0xxx)
local _x0xx01x0 = _1101x0xxx and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
_11110:Create(_x1x00x, TweenInfo.new(0.22, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = _x0xx01x0}):Play()
-- 00110101000100010111000011100100110101000101101011101
_11110:Create(_0010000xx0, TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
-- 0xca 0xb5 0x0f 0x3e 0x5c 0xc8
{BackgroundColor3 = _1101x0xxx and Theme.neon or Theme.panel2}):Play()
-- 866d7e31acffe507bc7ad35d57957110402374d0905bee84bd02d5437
pulse(_x1x00x, 1.5, 0.1)
-- d0d955db4d919aa6d496302dfae8
flash(_0010000xx0, _1101x0xxx and Theme.success or Theme.danger, 0.14)
glow(_0010000xx0, _1101x0xxx and Theme.success or Theme.danger, 0.5)
end
-- b13502c704288605dc0d12fcac7
end)
end

function sliderRow(_01x11, _x00x1x00, _xx10000, _x0x1xx0, _011111, _111x01, _x00101)
-- 0x6f 0xab 0xf4 0xba
local _01010 = resolvePage(_01x11)
-- a042cc48ca26f347a69c2208aab671c0b8e2966467c8c99bf
if not _01010 then return end
local _xx01x1x0 = getPath(Cfg, _x00x1x00)
-- 0x9d 0x72 0xd9
if type(_xx01x1x0) ~= _cfdbb8({13, 22, 14, 1, 6, 17}, 99) then _xx01x1x0 = _x0x1xx0; setPath(Cfg, _x00x1x00, _x0x1xx0) end
-- 00000010000010110011111011001001101111
local _xxxx0x1 = tPanel(new(_cfdbb8({76, 120, 107, 103, 111}, 10), {Size = UDim2.new(1, 0, 0, 38),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 0xa5 0x00 0xe2 0x4e 0x41 0x5d
LayoutOrder = #_01010:GetChildren(), ZIndex = 33}, _01010))
-- 10001000001101110010111100011111001100
corner(_xxxx0x1, 7)
-- 2bd0077ac723d41fb56b700433066e791612034ca737e7e0775e230b630
tStroke(stroke(_xxxx0x1, Theme.strokeSoft, 1, 0.55))
-- 0x3a 0x66 0x7d 0x02 0x25
hoverStripe(_xxxx0x1, Theme.neon)
new(_cfdbb8({236, 221, 192, 204, 244, 217, 218, 221, 212}, 184), {Size = UDim2.new(1, -90, 0, 14), Position = UDim2.fromOffset(14, 4),
BackgroundTransparency = 1, Text = _xx10000, Font = Enum.Font.Gotham, TextSize = 11,
-- 0xa0 0xfd 0xb3 0x06 0xaf
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _xxxx0x1)
-- 00001101011000011010100010101000100111
local _x0x1x1 = new(_cfdbb8({101, 84, 73, 69, 125, 80, 83, 84, 93}, 49), {Size = UDim2.fromOffset(70, 14),
Position = UDim2.new(1, -80, 0, 4), BackgroundTransparency = 1,
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 36}, _xxxx0x1)
local _00xx011 = tPanel2(new(_cfdbb8({107, 95, 76, 64, 72}, 45), {Size = UDim2.new(1, -22, 0, 5),
-- 0x09 0xf6 0xb1
Position = UDim2.fromOffset(11, 24), BackgroundColor3 = Theme.panel2, ZIndex = 34}, _xxxx0x1))
corner(_00xx011, 3)
-- 110001001000010100000000011011110101010000001110111
tStroke(stroke(_00xx011, Theme.strokeSoft, 1, 0.5))
local _101x010 = new(_cfdbb8({175, 155, 136, 132, 140}, 233), {Size = UDim2.new(0, 0, 1, 0),
-- 10100001000001001101011111101000111100100111001001011011
BackgroundColor3 = Theme.neon, BorderSizePixel = 0, ZIndex = 35}, _00xx011)
-- 011000111100100100100001011111101101
corner(_101x010, 3)
grad(_101x010, Theme.neon, Theme.accent3, 0)
local _00x0x = new(_cfdbb8({45, 25, 10, 6, 14}, 107), {Size = UDim2.fromOffset(12, 12),
-- 0xda 0xaa 0xd3 0xda
Position = UDim2.new(0, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
-- 001011000011100100110010111011110111011011111101100000101
BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 36}, _00xx011)
corner(_00x0x, 6)
tAcc(stroke(_00x0x, Theme.neon, 1.5))
-- e6c6430f29bf011379c2d43d740cabd11fb229bc6a32da
local _x1x111x1x = 10 ^ _111x01
local _x1x1x10x0 = _xx01x1x0
local function _01x10011(_10xxxxx, _x1x1xx1x1x)
-- d3cce1892801dd8aaf391c37446eda70581c95692a3fa5c0
_x1x1x10x0 = _10xxxxx
-- 010011100010100001011001010
setPath(Cfg, _x00x1x00, _10xxxxx)
local _001x0010x = math.clamp((_10xxxxx - _x0x1xx0) / (_011111 - _x0x1xx0), 0, 1)
-- 00011011100110001100100011110011101
_101x010.Size = UDim2.new(_001x0010x, 0, 1, 0)
-- 0xf1 0xe5 0x63 0x93
_00x0x.Position = UDim2.new(_001x0010x, 0, 0.5, 0)
-- 0000111100011011001010001100
_x0x1x1.Text = string.format(_cfdbb8({88, 83}, 125) .. _111x01 .. _cfdbb8({152}, 254), _10xxxxx)
if _x1x1xx1x1x ~= false and _x00101 then pcall(_x00101, _10xxxxx) end
end
-- 0c8e68af64fb0ca4c7ff6e663dd372465674f
widgets[_x00x1x00] = {set = _01x10011, get = function() return _x1x1x10x0 end}
_01x10011(_x1x1x10x0, false)
local _1000x01 = false
local function _01x011x0x0(_11001x10x1)
-- 010111100011111010110000111010111111111001110111010010
local _0x111 = math.clamp((_11001x10x1 - _00xx011.AbsolutePosition.X) / math.max(_00xx011.AbsoluteSize.X, 1), 0, 1)
_01x10011(math.floor((_x0x1xx0 + (_011111 - _x0x1xx0) * _0x111) * _x1x111x1x + 0.5) / _x1x111x1x)
end
-- 001001000110101100001000100111101100
_00xx011.InputBegan:Connect(function(_100x0x1)
if _100x0x1.UserInputType == Enum.UserInputType.MouseButton1 or _100x0x1.UserInputType == Enum.UserInputType.Touch then
_1000x01 = true
-- 001000110010111001010010000101111100010011001010010011010000
_01x011x0x0(_100x0x1.Position.X)
pulse(_00x0x, 1.5, 0.1)
end
-- 0x6c 0x25 0x78
end)
-- 9aecee73eea8e5e1a38a19eea8aa0f4757
_x0xx1x111.InputChanged:Connect(function(_1xx111xx)
-- 0c0f8b4019a3382372272a1a2
if _1000x01 and (_1xx111xx.UserInputType == Enum.UserInputType.MouseMovement or _1xx111xx.UserInputType == Enum.UserInputType.Touch) then
-- 10001111111010111101001110
_01x011x0x0(_1xx111xx.Position.X)
end
end)
-- 296d99f3b2249285b9aa15cbd1c3664cb66910
_x0xx1x111.InputEnded:Connect(function(_01xx1)
-- 1001000010000111001111110100110100001100110011110011
if _01xx1.UserInputType == Enum.UserInputType.MouseButton1 or _01xx1.UserInputType == Enum.UserInputType.Touch then
-- 0x85 0x91 0x05
_1000x01 = false
end
-- 6307505d163a232d2249e063420ee70cc83d6b71
end)
-- 0xb4 0x4f 0x6e 0xf8 0x9f
end

-- 430d3634d13611bd85294c5c128db0832eff88ffc9aa7e93c4521c
function buttonRow(_110x000, _x0x00001, _00010, _1011000)
local _1111110xx0 = resolvePage(_110x000)
-- 0xf4 0x0a 0xd0
if not _1111110xx0 then return end
-- f44f3e4ab566a5c1c200b896d5f8d6244951fc563a68
local _011xxx1 = tPanel(new(_cfdbb8({82, 102, 117, 121, 113}, 20), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- efc8e6c0d072cc11b038720ea47abcd3a98a7a7b87f057bc82f469
LayoutOrder = #_1111110xx0:GetChildren(), ZIndex = 33}, _1111110xx0))
-- 101000100010000111100100100001111001
corner(_011xxx1, 7)
-- 0x30 0x5c 0x02 0x9e 0x6d 0xa0
tStroke(stroke(_011xxx1, Theme.strokeSoft, 1, 0.55))
-- 9c02c9904416b08092feca35cd1152
hoverStripe(_011xxx1, Theme.neon)
-- 011111011000100010101110010101101010111001000
new(_cfdbb8({103, 86, 75, 71, 127, 82, 81, 86, 95}, 51), {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),
-- 0x4d 0x2b 0xa0 0x8b
BackgroundTransparency = 1, Text = _x0x00001, Font = Enum.Font.Gotham, TextSize = 11,
-- 1001110001101000110011010110001000
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _011xxx1)
-- 000110101100010110111000000111111000
local _11x1xx100 = tPanel2(new(_cfdbb8({226, 211, 206, 194, 244, 195, 194, 194, 217, 216}, 182), {Size = UDim2.fromOffset(140, 20),
Position = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,
-- 0x2e 0x59 0xb9 0xc7 0xab 0x36
Text = _00010, Font = Enum.Font.GothamBold, TextSize = 9,
-- 0xcd 0xe9 0xa9 0x6a 0xee 0x89
TextColor3 = Theme.accent2, AutoButtonColor = false, ZIndex = 36}, _011xxx1))
-- 00101111010100100100110001011100101111111000
corner(_11x1xx100, 6)
-- 3c264ee28a99236f8d5318a3276200e7fb070a9a56d61a
tStroke(stroke(_11x1xx100, Theme.strokeSoft, 1))
-- 111101010100010100100101101110101010110001101101101
_11x1xx100.MouseButton1Click:Connect(function()
pulse(_11x1xx100, 0.94, 0.06)
-- 0x65 0xb1 0xa2 0x85 0xd2
glow(_11x1xx100, Theme.accent2, 0.35)
shine(_11x1xx100, Theme.accent2, 0.5)
-- 1001000100100000010101111111001111011010
_1011000(_11x1xx100)
-- 0x65 0xd1 0x4f 0x59 0x7a 0xb7
end)
_11x1xx100.MouseEnter:Connect(function()
_11110:Create(_11x1xx100, TweenInfo.new(0.12), {BackgroundColor3 = Theme.panel3}):Play()
end)
_11x1xx100.MouseLeave:Connect(function()
_11110:Create(_11x1xx100, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
-- 0x01 0xaf 0x65 0xd7 0xb5 0x00
end)
-- 0xee 0x79 0xe8 0x2e
return _11x1xx100
end

-- 10010110000010011111111100
function infoRow(_010001x01x, _0100xx101x)
local _x10xxx1001 = resolvePage(_010001x01x)
if not _x10xxx1001 then return nil end
-- e4aaac8e89053b2609b98b516096b3aacfd39
local _001x10 = tPanel2(new(_cfdbb8({17, 37, 54, 58, 50}, 87), {Size = UDim2.new(1, 0, 0, 24),
-- 1a339c110e7fd0e81f4f6988efa7ae8934897ff88
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.2,
-- 0x37 0x4b 0xa1 0x64
LayoutOrder = #_x10xxx1001:GetChildren(), ZIndex = 33}, _x10xxx1001))
-- 0x82 0x54 0xe5 0x8d 0x99
corner(_001x10, 6)
tStroke(stroke(_001x10, Theme.strokeSoft, 1, 0.5))
local _0100100 = new(_cfdbb8({40, 25, 4, 8, 48, 29, 30, 25, 16}, 124), {Size = UDim2.new(1, -10, 1, 0), Position = UDim2.fromOffset(12, 0),
BackgroundTransparency = 1, Text = _0100xx101x or _cfdbb8({}, 0), Font = Enum.Font.Code, TextSize = 10,
TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _001x10)
-- 000100100011101110110000010111110010
return _0100100
-- 0xc6 0x0b 0xc1 0x00 0x61 0xb4
end

function textRow(_0000xx, _10000101, _x011xx1, _1x011, _001xx11)
-- 01b64883520ba524065c7bb81aec3b3b9578ddb2a6
local _xxx1xxx1x = resolvePage(_0000xx)
-- 010001100000011010101100110011110101101110001011
if not _xxx1xxx1x then return end
-- 0000001101001010000011010
local _001x0xx0x1 = tPanel(new(_cfdbb8({42, 30, 13, 1, 9}, 108), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 0x4c 0xdc 0x42 0x9a 0x5d
LayoutOrder = #_xxx1xxx1x:GetChildren(), ZIndex = 33}, _xxx1xxx1x))
-- be992af67f04fbcc2bfe0eb36a4dbe932d5f49ee
corner(_001x0xx0x1, 7)
-- 1011111010001000001101000111
tStroke(stroke(_001x0xx0x1, Theme.strokeSoft, 1, 0.55))
new(_cfdbb8({55, 6, 27, 23, 47, 2, 1, 6, 15}, 99), {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(14, 0),
-- bcbcfd8b7bef48d6451cda1f4ead163e8f1081ce03e0c3252d477
BackgroundTransparency = 1, Text = _10000101, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _001x0xx0x1)
-- f2873ab0f625d3cc248c79171944068c2e0e
local _0x10010 = tPanel2(new(_cfdbb8({94, 111, 114, 126, 72, 101, 114}, 10), {Size = UDim2.fromOffset(160, 20),
Position = UDim2.new(1, -168, 0.5, -10), BackgroundColor3 = Theme.panel2,
-- 0x78 0x0e 0x16 0x4b
Text = _1x011 or _cfdbb8({}, 0), PlaceholderText = _x011xx1 or _cfdbb8({}, 0), Font = Enum.Font.Gotham,
TextSize = 10, TextColor3 = Theme.accent2, PlaceholderColor3 = Theme.muted,
-- 0x3a 0x2b 0xd4 0x8d 0x9e
ClearTextOnFocus = false, Active = true, Selectable = true, ZIndex = 50}, _001x0xx0x1))
corner(_0x10010, 5)
-- 1da1d78daf989e8975b2bf61be739aa32c393e40263a
tStroke(stroke(_0x10010, Theme.strokeSoft, 1))
_0x10010.FocusLost:Connect(function() if _001xx11 then _001xx11(_0x10010.Text) end end)
return _0x10010
-- 62d92c12638bfda5272c5ef304f71db6dd1f53105b26966dbbe
end

function cycleRow(_1x110xx, _1010xx01, _1x000000, _10101xx0, _01110101x)
-- 0xe5 0xc3 0x34
local _1xx110x = resolvePage(_1x110xx)
-- 0x47 0xec 0x7e 0x11
if not _1xx110x then return end
local _x0x11000 = tPanel(new(_cfdbb8({230, 210, 193, 205, 197}, 160), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = #_1xx110x:GetChildren(), ZIndex = 33}, _1xx110x))
corner(_x0x11000, 7)
-- 101100011001110001101010
tStroke(stroke(_x0x11000, Theme.strokeSoft, 1, 0.55))
-- f8e7abb656cbdf7bdf55bd913254dd2fd4adca71d663f787887fcf739515
hoverStripe(_x0x11000, Theme.neon)
-- 2a6ee8f508add71447958f6db3270100fe9e6baf51fb4
new(_cfdbb8({135, 182, 171, 167, 159, 178, 177, 182, 191}, 211), {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),
-- 0011101101000000010110101001010100100011000
BackgroundTransparency = 1, Text = _1x000000, Font = Enum.Font.Gotham, TextSize = 11,
-- 0xa7 0xab 0x3c 0xd8 0x3d
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _x0x11000)
local _x01101 = tPanel2(new(_cfdbb8({180, 133, 152, 148, 162, 149, 148, 148, 143, 142}, 224), {Size = UDim2.fromOffset(140, 20),
-- 07a7f630e920193521bba796de7f9368a4317b19b793ae3f
Position = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,
-- b2f5a9ffecd9249ce77b0ce0234bc254a10c
Text = tostring(getPath(Cfg, _1010xx01) or _10101xx0[1]),
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.accent2,
AutoButtonColor = false, ZIndex = 36}, _x0x11000))
-- 0xad 0x0c 0xc8
corner(_x01101, 6)
tStroke(stroke(_x01101, Theme.strokeSoft, 1))
_x01101.MouseButton1Click:Connect(function()
local _1x0011 = getPath(Cfg, _1010xx01)
-- 010010001111100000100101001000001011110000111110010010
local _xx011x100x = 1
-- 0x29 0x52 0xa4 0x09 0xca
for _0xx0x100, _0xx01 in ipairs(_10101xx0) do if _0xx01 == _1x0011 then _xx011x100x = _0xx0x100 end end
-- 0xb7 0x62 0x6f
_xx011x100x = _xx011x100x % #_10101xx0 + 1
setPath(Cfg, _1010xx01, _10101xx0[_xx011x100x])
-- 0xdf 0x0f 0xbf 0xe7 0x88 0x69
_x01101.Text = tostring(_10101xx0[_xx011x100x])
-- 11010110100001100111111111100011
pulse(_x01101, 0.94, 0.06)
-- 0x1f 0xff 0xfc 0xbf 0x4e
if _01110101x then pcall(_01110101x, _10101xx0[_xx011x100x]) end
-- 01111001011101111100100001000000111000100101001010111011
end)
-- 0x27 0xb5 0xba
widgets[_1010xx01] = {set = function(_101x101) setPath(Cfg, _1010xx01, _101x101); _x01101.Text = tostring(_101x101) end,
-- cb4246bd4796b856a0ecf1b872c11955209ed525a9fe48bfbee6
get = function() return getPath(Cfg, _1010xx01) end}
-- 1001101100111010000101101001111
return _x01101
end

-- 110110001110000001000110100011101
function legendRow(_xxx1x, _x1x00x0x, _x10111)
local _x11x1x00 = resolvePage(_xxx1x)
if not _x11x1x00 then return end
-- 0x25 0xba 0xa5 0x26 0xf9
local _0x100x = tPanel(new(_cfdbb8({228, 208, 195, 207, 199}, 162), {Size = UDim2.new(1, 0, 0, 26),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 0x2f 0x5a 0x1f 0x4c 0xf4 0xbb
LayoutOrder = #_x11x1x00:GetChildren(), ZIndex = 33}, _x11x1x00))
corner(_0x100x, 7)
-- cf537dbd4205e01786a8a5124ee65ce971fe999a798b79
tStroke(stroke(_0x100x, Theme.strokeSoft, 1, 0.55))
-- 0011101101100110011000100011011001110001100010100100
local _1100x1x = new(_cfdbb8({210, 230, 245, 249, 241}, 148), {Size = UDim2.fromOffset(26, 14), Position = UDim2.fromOffset(12, 6),
-- 111011011010100100111000101111101000011011
BackgroundColor3 = _x10111, BorderSizePixel = 0, ZIndex = 34}, _0x100x)
-- 0x29 0xed 0xfe 0x06 0x21
corner(_1100x1x, 4)
stroke(_1100x1x, _x10111, 1, 0)
-- c89e62d4cff587593e6276c993ef41786
new(_cfdbb8({155, 170, 183, 187, 131, 174, 173, 170, 163}, 207), {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(46, 0),
BackgroundTransparency = 1, Text = _x1x00x0x, Font = Enum.Font.GothamBold,
-- 388b042ceb963f2e314c48f0
TextSize = 10, TextColor3 = _x10111, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _0x100x)
return _0x100x
end


-- 0xe6 0xde 0x35 0x77
function applyOpacity(_1xx1101xx)
_1xx1101xx = math.clamp(tonumber(_1xx1101xx) or 0, 0, 1)
-- 0xd4 0xe3 0x9f
for _110110xxx, _xx010110 in ipairs(menu:GetDescendants()) do
-- 0xe2 0xdd 0x8c
local _00x10xxxx, _100x0x0x = _xx010110.Parent, false
while _00x10xxxx and _00x10xxxx ~= menu do
-- 0xe3 0x88 0x93 0xcc
if _00x10xxxx == ambient then _100x0x0x = true; break end
-- d90d3e45f6b20f3cba08f1df5cd8069a07909ff5fb5ade75f4bb577f
_00x10xxxx = _00x10xxxx.Parent
-- 0xc0 0x31 0x97
end
if not _100x0x0x then
-- 31ba7a78affe07fa285e93c19836
if _xx010110:IsA(_cfdbb8({86, 98, 113, 125, 117}, 16)) or _xx010110:IsA(_cfdbb8({42, 27, 6, 10, 60, 11, 10, 10, 17, 16}, 126)) or _xx010110:IsA(_cfdbb8({207, 254, 227, 239, 217, 244, 227}, 155)) or _xx010110:IsA(_cfdbb8({62, 14, 31, 2, 1, 1, 4, 3, 10, 43, 31, 12, 0, 8}, 109)) then
-- 10101110101110010010001110111101110
local _1xx111x = _xx010110:GetAttribute(_cfdbb8({177, 142, 188, 159, 141, 155}, 254))
if _1xx111x == nil then _1xx111x = _xx010110.BackgroundTransparency; _xx010110:SetAttribute(_cfdbb8({19, 44, 30, 61, 47, 57}, 92), _1xx111x) end
-- 010000001010111110111010111110010111010110100100
_xx010110.BackgroundTransparency = math.clamp(_1xx111x + _1xx1101xx * (1 - _1xx111x), 0, 1)
elseif _xx010110:IsA(_cfdbb8({154, 134, 156, 187, 189, 160, 164, 170}, 207)) then
local _1x01x0x100 = _xx010110:GetAttribute(_cfdbb8({248, 199, 245, 214, 196, 210}, 183))
-- 0011001011111010000111111111001010011010011000100010111110
if _1x01x0x100 == nil then _1x01x0x100 = _xx010110.Transparency; _xx010110:SetAttribute(_cfdbb8({170, 149, 167, 132, 150, 128}, 229), _1x01x0x100) end
-- 0x16 0xe2 0xd5
_xx010110.Transparency = math.clamp(_1x01x0x100 + _1xx1101xx * 0.9, 0, 1)
end
-- 0x1d 0xb6 0x7f
end
end
-- 0101011100010001110000100
end
function applyTheme()
-- 011010000001011011000100100
for _1x0x0x1x01, _x1x0010x0 in ipairs(gui:GetDescendants()) do
-- 23fbf22d13b5cf0a2f2e61bf7f216303d93b3c68
if _x1x0010x0:GetAttribute(_cfdbb8({182, 189, 160, 133}, 226)) and _x1x0010x0:IsA(_cfdbb8({74, 126, 109, 97, 105}, 12)) then _x1x0010x0.BackgroundColor3 = Theme.bg end
if _x1x0010x0:GetAttribute(_cfdbb8({121, 114, 125, 76, 67, 72, 65}, 45)) and (_x1x0010x0:IsA(_cfdbb8({124, 72, 91, 87, 95}, 58)) or _x1x0010x0:IsA(_cfdbb8({151, 167, 182, 171, 168, 168, 173, 170, 163, 130, 182, 165, 169, 161}, 196))) then _x1x0010x0.BackgroundColor3 = Theme.panel end
-- 11100101011101000110001000100011101000101001101001011001111
if _x1x0010x0:GetAttribute(_cfdbb8({8, 3, 12, 61, 50, 57, 48, 110}, 92)) and (_x1x0010x0:IsA(_cfdbb8({238, 218, 201, 197, 205}, 168)) or _x1x0010x0:IsA(_cfdbb8({134, 183, 170, 166, 144, 189, 170}, 210))) then _x1x0010x0.BackgroundColor3 = Theme.panel2 end
-- 0x00 0x99 0x05 0xac 0x53 0xc8
if _x1x0010x0:GetAttribute(_cfdbb8({120, 115, 109, 79, 79}, 44)) then
if _x1x0010x0:IsA(_cfdbb8({47, 51, 41, 14, 8, 21, 17, 31}, 122)) then _x1x0010x0.Color = Theme.neon
elseif _x1x0010x0:IsA(_cfdbb8({65, 117, 102, 106, 98}, 7)) or _x1x0010x0:IsA(_cfdbb8({3, 50, 47, 35, 21, 34, 35, 35, 56, 57}, 87)) then _x1x0010x0.BackgroundColor3 = Theme.neon end
end
if _x1x0010x0:GetAttribute(_cfdbb8({91, 80, 78, 108, 108, 61}, 15)) and _x1x0010x0:IsA(_cfdbb8({110, 95, 66, 78, 118, 91, 88, 95, 86}, 58)) then _x1x0010x0.TextColor3 = Theme.accent2 end
if _x1x0010x0:GetAttribute(_cfdbb8({229, 238, 229, 212, 201, 197}, 177)) and _x1x0010x0:IsA(_cfdbb8({92, 109, 112, 124, 68, 105, 106, 109, 100}, 8)) then _x1x0010x0.TextColor3 = Theme.text end
-- 0xba 0xd2 0x75 0x9f 0xf2
if _x1x0010x0:GetAttribute(_cfdbb8({133, 142, 156, 164, 165, 180, 181}, 209)) and _x1x0010x0:IsA(_cfdbb8({138, 187, 166, 170, 146, 191, 188, 187, 178}, 222)) then _x1x0010x0.TextColor3 = Theme.muted end
if _x1x0010x0:GetAttribute(_cfdbb8({201, 194, 206, 233, 239, 242, 246, 248}, 157)) and _x1x0010x0:IsA(_cfdbb8({137, 149, 143, 168, 174, 179, 183, 185}, 220)) then _x1x0010x0.Color = Theme.stroke end
-- b7ae422ec41a7ed00581fd0f49
end
-- 011001101100010001111000110
tickerLabel.TextColor3 = Theme.tickerColor
tickerStroke.Color = Theme.neon
if tickerLabelGrad then
-- dbd72b047af6da15c1ecacb91024d6ab9e122
tickerLabelGrad.Color = ColorSequence.new({
-- 100111001011110111101001111010101011011001001110110
ColorSequenceKeypoint.new(0, Theme.tickerColor),
-- 11111111101001001011101111101100111111100011000100111011100
ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),
ColorSequenceKeypoint.new(1, Theme.tickerColor),
-- 1111111110000110111100110010010001011010011
})
end
-- 7d64ea4c8e23aea58fab615786f2d4c528f5745
for _11x10, _x1xxx0x1 in ipairs(ambientParts) do if _x1xxx0x1.inst then _x1xxx0x1.inst.BackgroundColor3 = Theme.accent2 end end
-- 0111101110111111001111000001111111000010001011101000
for _xx0xx0, _0x10101xxx in pairs(widgets) do if _0x10101xxx.rerender then pcall(_0x10101xxx.rerender) end end
pcall(refreshHUD)
-- 092c00996bbb81be3de484f28419f4b965ca35b145cac76c6282
end

-- 10110101000011110000000011011

-- 0010000100010101111001001010001101000110101011100111000000
hudGui = new(_cfdbb8({169, 153, 136, 159, 159, 148, 189, 143, 147}, 250), {Name = _cfdbb8({129, 182, 178, 163, 182, 161, 155, 134, 151}, 211), ResetOnSpawn = false,
-- 0x47 0x27 0x17
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9998}, _110x1x)
-- 0x72 0xae 0xbf 0x3f
hudFrame = tBg(new(_cfdbb8({11, 63, 44, 32, 40}, 77), {Name = _cfdbb8({151, 170, 187, 141, 176, 176, 171}, 223), Size = UDim2.fromOffset(220, 40),
-- 0x95 0xcf 0x59 0x1f 0x97 0x40
Position = UDim2.new(0, 20, 0, 200), BackgroundColor3 = Theme.bg,
BackgroundTransparency = 0.12, BorderSizePixel = 0,
-- 28b8b001d6916122dd1a65ab4fad637
AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, hudGui))
corner(hudFrame, 10)
tAcc(stroke(hudFrame, Theme.neon, 1.5, 0.3))
grad(hudFrame, Theme.panel, Theme.bg, 90)
-- 3090ce6d456a58fca7ddc8d471e42f23c59cbcc05199fcfaf1347b81
hudHeader = tPanel2(new(_cfdbb8({167, 147, 128, 140, 132}, 225), {Size = UDim2.new(1, 0, 0, 22),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, hudFrame))
corner(hudHeader, 10)
grad(hudHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
tAcc2(new(_cfdbb8({129, 176, 173, 161, 153, 180, 183, 176, 185}, 213), {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(10, 0),
-- 01111111000000101101000010111000110
BackgroundTransparency = 1, Text = _cfdbb8({181, 205, 246, 119, 28, 18, 14, 21, 30, 25, 19, 4}, 87), Font = Enum.Font.GothamBlack,
-- 0xd3 0xd3 0x64 0xb8
TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, hudHeader))
-- 011000010101011010010011010111101110001
hudHide = new(_cfdbb8({210, 227, 254, 242, 196, 243, 242, 242, 233, 232}, 134), {Size = UDim2.fromOffset(18, 18),
-- 010000110100110110110100000001001
Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = _cfdbb8({142, 228, 254}, 108),
-- 468f00088ac660d2a5e362741ce5a0c02445a1f1cbf6d2ab677a
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
-- 1110010101101100010110010010001111001000111
AutoButtonColor = false}, hudHeader)
-- 0010010001101010001101000111000
corner(hudHide, 4)
-- 0x6d 0xbb 0x09
hudList = new(_cfdbb8({128, 180, 167, 171, 163}, 198), {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),
BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, hudFrame)
-- 0xca 0x29 0x51 0xd2 0x5e 0xb3
new(_cfdbb8({98, 126, 123, 94, 68, 67, 123, 86, 78, 88, 66, 67}, 55), {Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder}, hudList)
-- 0xe9 0x3b 0xba
new(_cfdbb8({62, 34, 59, 10, 15, 15, 2, 5, 12}, 107), {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, hudList)
hudHide.MouseButton1Click:Connect(function() Cfg[_cfdbb8({111, 115}, 58)].HUD = false; pcall(refreshHUD) end)
hudEmpty = tMuted(new(_cfdbb8({51, 2, 31, 19, 43, 6, 5, 2, 11}, 103), {Size = UDim2.new(1, 0, 0, 16),
BackgroundTransparency = 1, Text = _cfdbb8({174, 175, 224, 162, 169, 174, 164, 179}, 192), Font = Enum.Font.Gotham,
-- 0x81 0xf1 0xba 0xbe
TextSize = 9, TextColor3 = Theme.muted, LayoutOrder = 1}, hudList))
-- 111100101101000101100011000011011010001
if Cfg[_cfdbb8({210, 206}, 135)].HUDMovable then makeDraggable(hudFrame, hudHeader) end
-- 0x16 0xe1 0x3a
if Cfg[_cfdbb8({43, 55}, 126)].HUDResizable then
-- 101001110000011100001110011001101110
makeResizable(hudFrame, {minW = 180, minH = 80, corners = {_cfdbb8({130, 146}, 224), _cfdbb8({13, 3}, 111), _cfdbb8({197, 195}, 177)},
-- 604b881cf39d1fba2c694f35d7fdf7df802d41189316beb846
onResize = function(_100110x, _1x1x1)
-- ddea3b2ffb3b67296dd6a6716a0552ffedbf323c
hudFrame.AutomaticSize = Enum.AutomaticSize.None
-- 0x31 0x83 0x92 0x55 0xae 0xd9
hudFrame.Size = UDim2.fromOffset(_100110x, _1x1x1)
-- 4710c769191aca62071c195b888
end})
-- c66cdac2cdc99f2f1e057f9f3e7e4365a2135466f0
end
refreshHUD = function()
hudFrame.Visible = Cfg[_cfdbb8({235, 247}, 190)].HUD and true or false
for _x1xx1x010, _111x01xxx0 in ipairs(hudList:GetChildren()) do
if not _111x01xxx0:IsA(_cfdbb8({156, 128, 133, 160, 186, 189, 133, 168, 176, 166, 188, 189}, 201)) and _111x01xxx0 ~= hudEmpty then _111x01xxx0:Destroy() end
end
local _010x1x0x0x = {}
-- 011001110001011111011010000
for _1010100, _1001x100xx in pairs(Cfg.Binds or {}) do
if _1001x100xx and widgets[_1010100] then _010x1x0x0x[#_010x1x0x0x + 1] = {path = _1010100, key = _1001x100xx} end
-- 0xb3 0x81 0xb9 0x36 0x35
end
table.sort(_010x1x0x0x, function(_x1xx00xxx1, _1x01x1) return _x1xx00xxx1.path < _1x01x1.path end)
-- 9a299a075b2997d7251ca3d6e053f76be135ae007d149f6
if #_010x1x0x0x == 0 then hudEmpty.Visible = true; return end
hudEmpty.Visible = false
-- 0x7e 0x41 0xeb
for _010x0x1, _0x1x01x in ipairs(_010x1x0x0x) do
-- 00011010111101110111000101000110110110100110
local _0x010 = widgets[_0x1x01x.path].get()
local _1x00xx = new(_cfdbb8({176, 132, 151, 155, 147}, 246), {Size = UDim2.new(1, 0, 0, 18),
-- 101110100001101101011101110110001101001011111010100100000
BackgroundColor3 = _0x010 and Theme.panel2 or Theme.panel,
-- 0101110101111001111011001010100011100011010
BackgroundTransparency = 0.3, BorderSizePixel = 0, LayoutOrder = _010x0x1}, hudList)
-- 101010010110000111001100101010000111101001111010110100
corner(_1x00xx, 4)
stroke(_1x00xx, _0x010 and Theme.success or Theme.stroke, 1, 0.4)
-- 0x34 0x3d 0xa2 0xed
new(_cfdbb8({86, 98, 113, 125, 117}, 16), {Size = UDim2.fromOffset(7, 7), Position = UDim2.new(0, 4, 0.5, -3.5),
-- 645faa138d1bd2bee49480c6f6c72bf24c05973cb1
BackgroundColor3 = _0x010 and Theme.success or Theme.muted, BorderSizePixel = 0}, _1x00xx)
new(_cfdbb8({77, 124, 97, 109, 85, 120, 123, 124, 117}, 25), {Size = UDim2.new(1, -75, 1, 0), Position = UDim2.fromOffset(16, 0),
-- 45b5201dcb21132b8376cb9c9e1ba5cdb4c57985389704842c74ad3439f3
BackgroundTransparency = 1, Text = toggleLabels[_0x1x01x.path] or _0x1x01x.path,
-- 0x14 0x30 0xbb 0x9b 0x49 0x98
Font = Enum.Font.Gotham, TextSize = 9,
-- 0x90 0x5d 0x93 0x3d
TextColor3 = _0x010 and Theme.success or Theme.muted,
-- b979a1b494469ac52bcbe8b7f19bb8baf89c683d3a6122c7afc5801c19
TextXAlignment = Enum.TextXAlignment.Left}, _1x00xx)
new(_cfdbb8({73, 120, 101, 105, 81, 124, 127, 120, 113}, 29), {Size = UDim2.fromOffset(60, 18), Position = UDim2.new(1, -62, 0, 0),
-- 43a48e3f2f5c74fb7a2db4f778ecc4a2c0dac09f1d925406
BackgroundTransparency = 1, Text = _cfdbb8({243}, 168) .. _0x1x01x.key.Name .. _cfdbb8({205}, 144),
-- 864be29feb1777db833a24e1f85baccee274b3e612f7
Font = Enum.Font.GothamBold, TextSize = 9,
-- 0101010011101010111111111011001010011001111010111
TextColor3 = _0x010 and Theme.accent2 or Theme.muted,
-- 0x9d 0x62 0xfc 0xe0 0x45 0x0e
TextXAlignment = Enum.TextXAlignment.Right}, _1x00xx)
-- 0xe5 0xe6 0xb7 0x77
end
end

-- ba871e353b1315ac42512a8b23cd97b904d7b43ad30131

adGui = new(_cfdbb8({236, 220, 205, 218, 218, 209, 248, 202, 214}, 191), {Name = _cfdbb8({77, 122, 126, 111, 122, 109, 94, 91}, 31), ResetOnSpawn = false,
-- 0xd0 0xcc 0x6c
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9997}, _110x1x)
adFrame = tBg(new(_cfdbb8({105, 93, 78, 66, 74}, 47), {Name = _cfdbb8({203, 206, 216, 229, 229, 254}, 138), Size = UDim2.fromOffset(240, 40),
-- 01000001001110000100001111111000100110010111
Position = UDim2.new(0, 20, 0, 260), BackgroundColor3 = Theme.bg,
-- 0xc9 0x95 0x83 0x44
BackgroundTransparency = 0.12, BorderSizePixel = 0,
-- 0x52 0xb3 0x9f 0x70 0xe6
AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, adGui))
corner(adFrame, 10)
-- 9030cac2f0f28a4c36ae0bc2a85b100ec
tAcc(stroke(adFrame, Theme.neon, 1.5, 0.3))
grad(adFrame, Theme.panel, Theme.bg, 90)
-- d0665e0e30a89457a4b9b486b2449954df56041c8b8
adHeader = tPanel2(new(_cfdbb8({51, 7, 20, 24, 16}, 117), {Size = UDim2.new(1, 0, 0, 22),
-- 0xa5 0x8b 0xfa 0x0d
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, adFrame))
corner(adHeader, 10)
grad(adHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
tAcc2(new(_cfdbb8({35, 18, 15, 3, 59, 22, 21, 18, 27}, 119), {Size = UDim2.new(1, -70, 1, 0), Position = UDim2.fromOffset(10, 0),
-- 110100001100011010010010101100101000
BackgroundTransparency = 1, Text = _cfdbb8({148, 236, 239, 86, 55, 35, 34, 57, 91, 50, 51, 34, 51, 53, 34}, 118), Font = Enum.Font.GothamBlack,
-- 000110110000011010111100111010010010110100
TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, adHeader))
adHide = new(_cfdbb8({208, 225, 252, 240, 198, 241, 240, 240, 235, 234}, 132), {Size = UDim2.fromOffset(18, 18),
Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = _cfdbb8({66, 40, 50}, 160),
-- 0xdf 0x1e 0x1c 0xab 0xd9
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false}, adHeader)
corner(adHide, 4)
-- 0x3a 0xf7 0x9f
adBody = new(_cfdbb8({95, 107, 120, 116, 124}, 25), {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),
BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, adFrame)
new(_cfdbb8({162, 190, 187, 158, 132, 131, 187, 150, 142, 152, 130, 131}, 247), {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}, adBody)
-- 38cbe2f42de6980d0b1381fbd8adda1e42340eee5e619b1db2d500b10cc
new(_cfdbb8({38, 58, 35, 18, 23, 23, 26, 29, 20}, 115), {PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5),
-- 0010011111111011111000011111010101000000
PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}, adBody)
-- 0x59 0xc6 0xce 0x80 0x0b
adRows = {}
function adRow(_1100101x, _00xxxxxxx, _x111xx100)
-- 0x13 0x28 0x08
local _x1111x10 = new(_cfdbb8({244, 192, 211, 223, 215}, 178), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 0xf4 0x3f 0x5a 0x50 0x55 0xb2
LayoutOrder = #adBody:GetChildren()}, adBody)
-- 0x5b 0x19 0x5b 0x3a
new(_cfdbb8({162, 147, 142, 130, 186, 151, 148, 147, 154}, 246), {Size = UDim2.new(0, 100, 1, 0), BackgroundTransparency = 1, Text = _00xxxxxxx,
-- 0x60 0x5b 0x5f 0x0b 0x7a 0x29
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left}, _x1111x10)
local _x000xxxx0 = new(_cfdbb8({13, 60, 33, 45, 21, 56, 59, 60, 53}, 89), {Size = UDim2.new(1, -104, 1, 0), Position = UDim2.fromOffset(104, 0),
-- 0xbc 0x5b 0x65
BackgroundTransparency = 1, Text = _cfdbb8({8, 106, 126}, 234), Font = Enum.Font.Code, TextSize = 9,
-- 0xef 0x42 0x56 0x8d 0x5e
TextColor3 = _x111xx100 or Theme.accent2, TextXAlignment = Enum.TextXAlignment.Right}, _x1111x10)
-- 0xd6 0x43 0x99 0xc0 0x66
adRows[_1100101x] = _x000xxxx0
-- 5a2b46c3744d68d26b429b7c2c3d5f63797d4450552
return _x000xxxx0
-- 001000100111000010000010011100010
end
adRow(_cfdbb8({243, 212, 193, 212, 213, 211}, 160), _cfdbb8({221, 250, 239, 250, 251, 253, 180}, 142), Theme.success)
adRow(_cfdbb8({248, 205, 222, 203, 201, 216}, 172), _cfdbb8({132, 177, 162, 183, 181, 164, 234}, 208), Theme.accent2)
adRow(_cfdbb8({120, 91, 73, 95, 105, 74, 95, 95, 94}, 58), _cfdbb8({231, 196, 214, 192, 133, 246, 213, 192, 192, 193, 159}, 165), Theme.accent2)
-- 00000000110101111101111100101
adRow(_cfdbb8({133, 166, 179, 179, 178, 155, 163, 186, 162}, 214), _cfdbb8({32, 3, 22, 22, 23, 83, 176, 228, 73}, 115), Theme.accent3)
-- 85b626a299ad916f90e386e8b918a805c49a4d9560d83d3b3b
adRow(_cfdbb8({131, 160, 160, 149, 182, 163, 163, 162}, 198), _cfdbb8({77, 110, 110, 109, 107, 124, 97, 126, 109, 50}, 8), Theme.gold)
adRow(_cfdbb8({61, 0, 12, 27}, 105), _cfdbb8({140, 177, 189, 170, 226}, 216), Theme.success)
adRow(_cfdbb8({35, 11, 16}, 98), _cfdbb8({31, 55, 44, 60, 49, 44, 48, 59, 100}, 94), Theme.accent2)
adRow(_cfdbb8({45, 10, 7, 7}, 107), _cfdbb8({217, 254, 243, 243, 165}, 159), Theme.danger)
adRow(_cfdbb8({87, 96, 118, 117, 100, 114, 107}, 5), _cfdbb8({184, 143, 153, 154, 139, 157, 132, 208}, 234), Theme.gold)
-- 1110100001111101110010111101011010110011
adRow(_cfdbb8({174, 140, 135, 134}, 227), _cfdbb8({215, 245, 254, 255, 160}, 154), Theme.success)
-- 0x67 0xea 0xac 0x97
if Cfg[_cfdbb8({74, 86}, 31)].ADMovable then makeDraggable(adFrame, adHeader) end
if Cfg[_cfdbb8({215, 203}, 130)].ADResizable then
makeResizable(adFrame, {minW = 200, minH = 100, corners = {_cfdbb8({199, 215}, 165), _cfdbb8({21, 27}, 119), _cfdbb8({142, 136}, 250)},
-- 011111100110001101100001001
onResize = function(_0xx0xxx, _0x10110x0)
-- 0x16 0x91 0x9e 0x14 0xab 0x2d
adFrame.AutomaticSize = Enum.AutomaticSize.None
adFrame.Size = UDim2.fromOffset(_0xx0xxx, _0x10110x0)
-- 2cbca8dab7ac0e27b65f68a0a167fe2bfd605
end})
end
-- 40f2b050ecd00d0d476bcb872e5899bbc33b6be06f6e16b
adHide.MouseButton1Click:Connect(function() Cfg[_cfdbb8({68, 88}, 17)].AD = false; pcall(refreshAD) end)
refreshAD = function()
-- ae6e9c815b49ff60a7b99d86096f088f441170732a06
local _1xx10 = Cfg[_cfdbb8({43, 55}, 126)].AD and Cfg.Troll.Hump
adFrame.Visible = _1xx10 and true or false
-- 1101100011101011111000011001100001101000101001111110
if not _1xx10 then return end
local _0xx0x0x0x0 = TS.target
if HUMP.awaitingRespawn then
adRows.Status.Text = _cfdbb8({150, 128, 136, 149, 136, 143, 134, 225, 147, 132, 146, 145, 128, 150, 143}, 193); adRows.Status.TextColor3 = Theme.gold
elseif HUMP.fallHold > 0 then
-- 100001010001001101011110011100101011010011
adRows.Status.Text = _cfdbb8({204, 203, 200, 192, 205, 202, 195, 164, 197, 205, 214}, 132); adRows.Status.TextColor3 = Theme.danger
-- c203d21c2fd3bc582c2ee4b61a2c6ff3950b3bfa91eb
else
adRows.Status.Text = _cfdbb8({45, 47, 56, 37, 58, 41}, 108); adRows.Status.TextColor3 = Theme.success
end
-- 0011011100000000010001110111101100
adRows[_cfdbb8({193, 244, 231, 242, 240, 225}, 149)].Text = _0xx0x0x0x0 and _0xx0x0x0x0.Name or _cfdbb8({238, 140, 152}, 12)
-- bac1d2c7b1fd32c880e158639570c4c7626e80820a7690
local _0011x00x = Cfg.Troll.HumpSpeed
local _xx001x = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
-- 0xc1 0xb9 0xac 0x66 0x67 0xec
local _xxx0x100x = math.clamp(_0011x00x * _xx001x, 0.5, 200)
adRows.BaseSpeed.Text = string.format(_cfdbb8({88, 83, 76, 27, 93, 53, 7}, 125), _0011x00x)
adRows.SpeedMult.Text = Cfg.Troll.HumpAutoDetect and string.format(_cfdbb8({168, 252, 78, 69, 89, 13}, 107), HUMP.speedMult) or _cfdbb8({4, 80, 246, 233, 247, 247}, 199)
adRows.EffSpeed.Text = string.format(_cfdbb8({53, 62, 33, 118, 48, 88, 106}, 16), _xxx0x100x)
-- 2f99235ccbb9865c32a9c6f2
adRows.Tier.Text = HR.tier
adRows.Air.Text = HR.airborne and _cfdbb8({75, 87, 65}, 50) or _cfdbb8({49, 48}, 95)
-- 8072657b98dd7c5de43d523ce80
adRows.Fall.Text = HR.fallingUnder and _cfdbb8({158, 130, 148}, 231) or _cfdbb8({0, 1}, 110)
-- a4efd801352c7e0230b2753bb1
adRows.Respawn.Text = HUMP.awaitingRespawn and _cfdbb8({230, 225, 226, 234}, 142) or _cfdbb8({216, 186, 174}, 58)
adRows.Mode.Text = HR.autoMode
end

-- 0xb4 0x6a 0x43

tabOrder = {_cfdbb8({120, 127, 125, 117}, 16), _cfdbb8({90, 86, 84, 91, 88, 77}, 57), _cfdbb8({36, 59, 33, 39, 51, 62}, 82), _cfdbb8({76, 78, 87, 68}, 33), _cfdbb8({69, 93, 64, 94, 86}, 50), _cfdbb8({106, 118, 123, 99, 127, 104, 105}, 26), _cfdbb8({222, 216, 197, 198, 198}, 170), _cfdbb8({167, 166, 187, 190}, 210), _cfdbb8({160, 178, 165, 182}, 211), _cfdbb8({73, 85, 88, 80, 88}, 61)}
-- 00100111111100010011100011000011011100101000010100100100111
tabTitles = {
-- 0xc5 0xa6 0xe9 0x83 0xca 0xa4
home = _cfdbb8({74, 77, 79, 71}, 2), combat = _cfdbb8({57, 53, 55, 56, 59, 46}, 122), visual = _cfdbb8({161, 190, 164, 162, 182, 187}, 247), move = _cfdbb8({134, 132, 157, 142}, 203),
world = _cfdbb8({214, 206, 211, 205, 197}, 129), players = _cfdbb8({174, 178, 191, 167, 187, 172, 173}, 254), troll = _cfdbb8({201, 207, 210, 209, 209}, 157), util = _cfdbb8({119, 118, 107, 110}, 34),
-- 0xca 0xac 0x37 0xc9
save = _cfdbb8({3, 17, 6, 21}, 80), theme = _cfdbb8({56, 36, 41, 33, 41}, 108),
-- 00010010110000010100010010001110100110110001110011100011001
}
if isMod() then
table.insert(tabOrder, 2, _cfdbb8({158, 134, 159, 148, 131}, 241))
-- 11111110111110001001001001101110110000101101101001
tabTitles.owner = _cfdbb8({88, 55, 57, 57, 136, 231, 255, 230, 237, 250}, 168)
-- 0x8a 0x5c 0x6e 0xc3 0xc9
end
-- 0xb1 0x68 0x48 0x72 0x72
for _xx1x0x11, _1xxx0 in ipairs(tabOrder) do makeTab(_1xxx0, tabTitles[_1xxx0]) end
function doModBan(_000001x, _100xxx0, _x1x1x11110)
-- 0xa6 0x20 0x2c 0x89
if not _000001x or _000001x == _cfdbb8({}, 0) then
notify(_cfdbb8({152, 187, 180}, 218), _cfdbb8({52, 21, 90, 62, 19, 9, 25, 21, 8, 30, 90, 51, 62, 90, 27, 12, 27, 19, 22, 27, 24, 22, 31}, 122), Theme.gold, 3); return
end
-- 0x15 0x2b 0xe2 0x20 0x48
task.spawn(function()
local _0xxx1x0x00 = _000xxxxxx:JSONEncode({
robloxId = tostring(_0xx011101.UserId), key = SESSION_KEY or _cfdbb8({}, 0),
-- 100010110100111100010110010001000110011101011100001111
targetDiscordId = tostring(_000001x),
-- 0xd6 0xc2 0x03 0x73 0x92
reason = _100xxx0 or _cfdbb8({}, 0), duration = _x1x1x11110 or 0,
-- 0xb4 0x15 0x72 0x50 0xfa
})
-- 0001011011110110000001000100010001000
local _10x0110, _0x10x10 = httpPost(KEY_API .. _cfdbb8({108, 32, 43, 34, 55, 108, 33, 34, 45}, 67), _0xxx1x0x00)
if _10x0110 then
local _110x11101 = (_x1x1x11110 and _x1x1x11110 > 0) and (_cfdbb8({228, 237, 240, 162}, 130) .. tostring(math.floor(_x1x1x11110 / 60)) .. _cfdbb8({139}, 230)) or _cfdbb8({68, 81, 70, 89, 85, 90, 81, 90, 64, 88, 77}, 52)
notify(_cfdbb8({3, 32, 47, 47, 36, 37}, 65), tostring(_000001x) .. _cfdbb8({62}, 30) .. _110x11101, Theme.success, 3)
-- 010000001111101111110000001110101110000
else
local _x1x11x0x11 = parseErrorReason(_0x10x10)
notify(_cfdbb8({231, 196, 203, 133, 195, 196, 204, 201, 192, 193}, 165), _x1x11x0x11, Theme.danger, 8, _x1x11x0x11)
-- 0x4f 0x7e 0xee 0xeb
end
end)
end

-- 110110010001000110001000110110011101
function doModDelete(_01x0x101)
-- 100001101110111100000010110100111100011010011101
if not _01x0x101 then return end
task.spawn(function()
-- ea28adcb2f3b81bcc4b6968289fc409f572b86ac58bb6
local _0xx10011 = _000xxxxxx:JSONEncode({
-- 10101010111110010010010000011111011
robloxId = tostring(_0xx011101.UserId), key = SESSION_KEY or _cfdbb8({}, 0),
messageId = _01x0x101,
-- 0x93 0x0f 0x30 0xc3 0x6f 0x27
})
local _01x1xx, _00x1x1010 = httpPost(KEY_API .. _cfdbb8({212, 152, 147, 154, 143, 212, 159, 158, 151, 158, 143, 158}, 251), _0xx10011)
if _01x1xx then
for _1010x, _0x11x1110x in ipairs(Chat.listeners) do
if _0x11x1110x and type(_0x11x1110x) == _cfdbb8({111, 124, 103, 106, 125, 96, 102, 103}, 9) then
pcall(_0x11x1110x, {__deleteMsgId = _01x0x101})
end
end
notify(_cfdbb8({81, 112, 121, 112, 97, 112, 113}, 21), _cfdbb8({241, 249, 239, 239, 253, 251, 249, 188, 191}, 156) .. tostring(_01x0x101), Theme.success, 2.5)
else
local _011x1x1 = parseErrorReason(_00x1x1010)
-- 0x4e 0x6c 0x96 0xd4 0x51
notify(_cfdbb8({162, 131, 138, 131, 146, 131, 198, 128, 135, 143, 138, 131, 130}, 230), _011x1x1, Theme.danger, 8, _011x1x1)
end
end)
-- 392a1d9f757476e9796e55fea9a2f1b539740c5c696460ab944c2040f
end


local function _x00x11(_0110100)
-- 724229f4bf9a9fd6ea5674fd6c
if not isMod() then return end
-- 0x8f 0x30 0xae
if not _0110100 or not _0110100[_cfdbb8({216, 213, 207, 223, 211, 206, 216, 245, 216}, 188)] then
notify(_cfdbb8({61, 31, 20}, 112), _cfdbb8({73, 104, 39, 67, 110, 116, 100, 104, 117, 99, 39, 78, 67, 39, 102, 113, 102, 110, 107, 102, 101, 107, 98, 39, 97, 104, 117, 39, 115, 111, 110, 116, 39, 114, 116, 98, 117}, 7), Theme.gold, 3); return
end
-- 03c9fce9b73b22a89bb5c9cfcae52b2e927c345a2ec514dedf2b
local _10x0110x1 = _110x1x:FindFirstChild(_cfdbb8({200, 255, 251, 234, 255, 232, 203, 239, 243, 249, 241, 215, 245, 254}, 154))
-- 10000100010101101000011111010001110011110001101100111011
if _10x0110x1 then _10x0110x1:Destroy() end
local _0x0000xx = new(_cfdbb8({77, 125, 108, 123, 123, 112, 89, 107, 119}, 30), {Name = _cfdbb8({149, 162, 166, 183, 162, 181, 150, 178, 174, 164, 172, 138, 168, 163}, 199), ResetOnSpawn = false,
-- ccacebe00a052f3d82b1ed81c52d53cd723c96c4f0fa904682b5f0dc097
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10050}, _110x1x)
-- 0x73 0x79 0xe6 0x6b
local _x11101x01x = new(_cfdbb8({6, 55, 42, 38, 16, 39, 38, 38, 61, 60}, 82), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 0.65,
Text = _cfdbb8({}, 0), AutoButtonColor = false, ZIndex = 1}, _0x0000xx)
_x11101x01x.MouseButton1Click:Connect(function() _0x0000xx:Destroy() end)
-- 0x88 0x15 0x0b 0xe3
local _0x10x11xx, _1xx00 = 340, 330
-- 000110100001010111100000011101010010001101110101000000111
local _0x00x1, _11x001x11 = _x0xx1x111:GetMouseLocation()
local _x11x11xx00 = new(_cfdbb8({182, 130, 145, 157, 149}, 240), {Size = UDim2.fromOffset(_0x10x11xx, _1xx00),
Position = UDim2.fromOffset(
-- 111011011101010100110001101101110100111100111111
math.clamp(_0x00x1 - _0x10x11xx / 2, 20, _x0x000.ViewportSize.X - _0x10x11xx - 20),
-- 0xfa 0xbc 0xd4 0x5a 0x04
math.clamp(_11x001x11 - 40, 20, _x0x000.ViewportSize.Y - _1xx00 - 20)),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, _0x0000xx)
-- 6ca739007376ad6d3beebe162b47de2790039d75a116c153c43c967
corner(_x11x11xx00, 14)
grad(_x11x11xx00, Color3.fromRGB(20, 10, 40), Theme.bgDeep, 90)
-- 1010000011111011101100010100100111011010110
stroke(_x11x11xx00, Theme.neon, 2, 0.15)
-- 4060039de9aa9fef62ac660e
dropShadow(_x11x11xx00, 14, 16, 0.7)
-- 0x76 0xe5 0xf0 0x09 0x9d
new(_cfdbb8({238, 218, 201, 197, 205}, 168), {Size = UDim2.new(1, 0, 0, 3), BackgroundColor3 = Theme.neon,
BorderSizePixel = 0, ZIndex = 3}, _x11x11xx00)
-- 0x12 0x1f 0x95 0x67 0x75
new(_cfdbb8({115, 66, 95, 83, 107, 70, 69, 66, 75}, 39), {Size = UDim2.new(1, -20, 0, 20), Position = UDim2.fromOffset(14, 12),
BackgroundTransparency = 1, Text = _cfdbb8({65, 67, 72, 73, 94, 77, 88, 69, 67, 66}, 12), Font = Enum.Font.GothamBlack,
-- 01110000001100110000110011100011111010001011000101000000010
TextSize = 12, TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _x11x11xx00)
-- 4ed20e1c49c33a6274e62a15c82f6cd692301820a0ea5
new(_cfdbb8({250, 203, 214, 218, 226, 207, 204, 203, 194}, 174), {Size = UDim2.new(1, -20, 0, 15), Position = UDim2.fromOffset(14, 32),
-- 2f0552adb8fc6b75cceec6fd40095a4
BackgroundTransparency = 1, Text = _cfdbb8({199}, 135) .. tostring(_0110100.name or _cfdbb8({31}, 32)),
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _x11x11xx00)
new(_cfdbb8({197, 244, 233, 229, 221, 240, 243, 244, 253}, 145), {Size = UDim2.new(1, -20, 0, 15), Position = UDim2.fromOffset(14, 48),
-- 100000110110000010011111001111100010010111000
BackgroundTransparency = 1, Text = _cfdbb8({16, 29, 7, 23, 27, 6, 16, 78, 84}, 116) .. tostring(_0110100[_cfdbb8({51, 62, 36, 52, 56, 37, 51, 30, 51}, 87)]),
-- 00110100000011100011000101001
Font = Enum.Font.Code, TextSize = 9, TextColor3 = Theme.accent2,
-- ecab7b56c1d008a6cb0e406a35c225a5fe4582e0eb7dd6ef0
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _x11x11xx00)
local _1x10x0x1 = tPanel2(new(_cfdbb8({206, 255, 226, 238, 216, 245, 226}, 154), {Size = UDim2.new(1, -28, 0, 26),
Position = UDim2.fromOffset(14, 70), BackgroundColor3 = Theme.panel2,
Text = _cfdbb8({}, 0), PlaceholderText = _cfdbb8({107, 124, 120, 106, 118, 119, 57, 49, 118, 105, 109, 112, 118, 119, 120, 117, 48}, 25), PlaceholderColor3 = Theme.muted,
-- 0x67 0x70 0x6c 0xe1
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text,
ClearTextOnFocus = false, Active = true, Selectable = true, ZIndex = 50}, _x11x11xx00))
-- 0x17 0x6b 0xf6 0xbf 0xdf
corner(_1x10x0x1, 6)
-- 6949c0b31159149a88ae78d813a44f1cf5a928a7d787a9f0e65ca2f5cd
tStroke(stroke(_1x10x0x1, Theme.strokeSoft, 1))
-- 1111010100101110011010101110110000000
local function _x10110xx0(_x11x01, _x1110xx, _10xx1xx10, _11011)
-- a0e93fa645d223bc41345f5ea9
local _xx1x01x11 = new(_cfdbb8({89, 104, 117, 121, 79, 120, 121, 121, 98, 99}, 13), {Size = UDim2.new(1, -28, 0, 26),
-- 0010110100011010101100010110001
Position = UDim2.fromOffset(14, _x11x01), BackgroundColor3 = Theme.panel2,
Text = _x1110xx, Font = Enum.Font.GothamBold, TextSize = 10,
TextColor3 = _10xx1xx10, AutoButtonColor = false, ZIndex = 5}, _x11x11xx00)
-- 0x51 0x49 0x2c 0x5f 0x28 0x42
corner(_xx1x01x11, 6)
local _00101 = stroke(_xx1x01x11, Theme.strokeSoft, 1)
-- caa81fcfe676c98d455deb757
_xx1x01x11.MouseEnter:Connect(function()
_11110:Create(_xx1x01x11, TweenInfo.new(0.12), {BackgroundColor3 = Theme.panel3}):Play()
-- e2fa59f0553976efe94bb64062019602663724f5efe83d
_00101.Color = _10xx1xx10
end)
-- 10011110110100100001110110001000000
_xx1x01x11.MouseLeave:Connect(function()
-- 101011111010001110110011100111011111000011001011110010
_11110:Create(_xx1x01x11, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
_00101.Color = Theme.strokeSoft
end)
_xx1x01x11.MouseButton1Click:Connect(function()
_11011()
-- 99ae5b40b212476d9996c526798fc7358933
_0x0000xx:Destroy()
end)
-- 0110010110100010011100100011010
end
_x10110xx0(104, _cfdbb8({191, 210, 236, 125, 125, 9, 52, 48, 56, 50, 40, 41, 125, 104, 125, 48, 52, 51}, 93), Theme.gold, function() doModBan(_0110100[_cfdbb8({95, 82, 72, 88, 84, 73, 95, 114, 95}, 59)], _1x10x0x1.Text, 300) end)
_x10110xx0(134, _cfdbb8({101, 8, 54, 167, 167, 211, 238, 234, 226, 232, 242, 243, 167, 182, 167, 239, 232, 242, 245}, 135), Theme.gold, function() doModBan(_0110100[_cfdbb8({69, 72, 82, 66, 78, 83, 69, 104, 69}, 33)], _1x10x0x1.Text, 3600) end)
-- 7ea4a5e93d466ce50db98bf5892a4940bd970a65e34d8513b1
_x10110xx0(164, _cfdbb8({33, 76, 114, 227, 227, 151, 170, 174, 166, 172, 182, 183, 227, 241, 247, 227, 171, 172, 182, 177, 176}, 195), Theme.gold, function() doModBan(_0110100[_cfdbb8({138, 135, 157, 141, 129, 156, 138, 167, 138}, 238)], _1x10x0x1.Text, 86400) end)
-- 955d8753913625a000c5bd0b2c186e518b784f29d832
_x10110xx0(194, _cfdbb8({38, 73, 66, 126, 246, 246, 148, 183, 184, 246, 166, 179, 164, 187, 183, 184, 179, 184, 162, 186, 175}, 214), Theme.danger, function() doModBan(_0110100[_cfdbb8({182, 187, 161, 177, 189, 160, 182, 155, 182}, 210)], _1x10x0x1.Text, 0) end)
-- 8062e642a7261398bcc635701875d6311a037fd6e169bb22431a
if _0110100.msgId then
_x10110xx0(224, _cfdbb8({8, 103, 111, 105, 216, 216, 188, 157, 148, 157, 140, 157, 216, 140, 144, 145, 139, 216, 149, 157, 139, 139, 153, 159, 157}, 248), Theme.danger, function() doModDelete(_0110100.msgId) end)
end
_x10110xx0(254, _cfdbb8({188, 194, 203, 126, 126, 29, 63, 48, 61, 59, 50}, 94), Theme.muted, function() end)
-- 0x49 0x02 0x13 0x9c
end

-- 10010110111110010101111101100101111000

-- 8fb2fc5b33b3d0c5dc20b75eb1
do
-- 8ec0293d36b5cc7107058a46ef5dc68d57d8e03dc51f4f9476d9ab55a9a
local _x01xxx = _cfdbb8({111, 104, 106, 98}, 7)
section(_x01xxx, _cfdbb8({56, 58, 39, 46, 33, 36, 45}, 104), _cfdbb8({219, 180, 186, 143}, 43))
buttonRow(_x01xxx, _cfdbb8({194, 245, 250, 255, 249, 254}, 144), _cfdbb8({231, 240, 255, 250, 252, 251}, 181), function()
-- 100010101110000101111001100010111
_11x0xx0xx:Teleport(game.PlaceId, _0xx011101)
-- 0x10 0x62 0x38 0x81
end)
-- 0x29 0x7d 0xea 0x53
buttonRow(_x01xxx, _cfdbb8({164, 147, 133, 147, 130, 214, 181, 158, 151, 132, 151, 149, 130, 147, 132}, 246), _cfdbb8({48, 39, 49, 39, 54}, 98), function()
local _x0x1x1x0x = hum(); if _x0x1x1x0x then _x0x1x1x0x.Health = 0 end
-- c27838c2c5dcb3232543d828fd995dba88ecf638b2acf5e
end)

-- 0x50 0x3f 0x3a 0x26 0x5a 0xd7
section(_x01xxx, _cfdbb8({60, 55, 52, 57, 58, 55, 91, 56, 51, 58, 47, 91, 185, 204, 91, 24, 9, 20, 8, 8, 86, 28, 26, 22, 30}, 123), _cfdbb8({226, 141, 158, 130}, 18))
-- 0x56 0x9f 0xb0
new(_cfdbb8({190, 143, 146, 158, 166, 139, 136, 143, 134}, 234), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
Text = _cfdbb8({237, 254, 237, 250, 241, 168, 218, 205, 201, 216, 205, 218, 168, 253, 251, 237, 250, 168, 225, 230, 168, 237, 254, 237, 250, 241, 168, 239, 233, 229, 237, 168, 251, 237, 237, 251, 168, 252, 224, 225, 251, 168, 251, 233, 229, 237, 168, 235, 224, 233, 252}, 136),
-- 848e55e4de6cf4264a53326e06d5ca379619
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = #pages[_x01xxx]:GetChildren(), ZIndex = 33}, pages[_x01xxx])

-- b39e82b9ceb9b0a09f2ad6761687f12298821974
local _1x10111100 = tPanel(new(_cfdbb8({125, 73, 90, 86, 94}, 59), {Size = UDim2.new(1, 0, 0, 300),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
-- 0xbe 0x2a 0xc5 0x22 0x12 0xf8
LayoutOrder = #pages[_x01xxx]:GetChildren(), ZIndex = 33}, pages[_x01xxx]))
-- 11011101100010100001110000001101100100111
corner(_1x10111100, 10)
tStroke(stroke(_1x10111100, Theme.strokeSoft, 1, 0.4))

-- 7428d88421731bccf8b659db34c89fabf3e16d71c620e9e310
local _1x1x111x = new(_cfdbb8({148, 164, 181, 168, 171, 171, 174, 169, 160, 129, 181, 166, 170, 162}, 199), {Size = UDim2.new(1, -8, 1, -66),
Position = UDim2.fromOffset(4, 4), BackgroundTransparency = 1, BorderSizePixel = 0,
ScrollBarThickness = 3, ScrollBarImageColor3 = Theme.neon,
CanvasSize = UDim2.new(0, 0, 0, 0), AutomaticCanvasSize = Enum.AutomaticSize.Y,
-- a7bfb2c9a48fd4a1a8aeab395d
ZIndex = 34}, _1x10111100)
new(_cfdbb8({50, 46, 43, 14, 20, 19, 43, 6, 30, 8, 18, 19}, 103), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, _1x1x111x)
new(_cfdbb8({252, 224, 249, 200, 205, 205, 192, 199, 206}, 169), {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
-- 0xb1 0x9a 0x76 0xa6
PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _1x1x111x)

local _x100x11 = tPanel2(new(_cfdbb8({0, 52, 39, 43, 35}, 70), {Size = UDim2.new(1, -8, 0, 18),
Position = UDim2.new(0, 4, 1, -58), BackgroundColor3 = Theme.panel2,
BackgroundTransparency = 0.3, BorderSizePixel = 0, ZIndex = 34}, _1x10111100))
corner(_x100x11, 4)
new(_cfdbb8({50, 3, 30, 18, 42, 7, 4, 3, 10}, 102), {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(12, 0),
-- 0x60 0x4b 0xdd 0xfe 0x6c 0x47
BackgroundTransparency = 1, Text = _cfdbb8({161, 212, 204, 99, 47, 42, 53, 38, 99, 129, 244, 99, 36, 47, 44, 33, 34, 47, 99, 129, 244, 99, 51, 44, 47, 47, 42, 45, 36, 99, 119, 48}, 67),
-- 0x4e 0x99 0x3d 0xe1 0xd7 0x1d
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.success,
-- 86be24a2eb80933039a32eb8df3cefe
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 35}, _x100x11)

local _1xx1x0x0 = tPanel2(new(_cfdbb8({64, 116, 103, 107, 99}, 6), {Size = UDim2.new(1, -8, 0, 28),
-- 16124dc419f510825524e06d70cc9db5f4f95b2d2b823b7
Position = UDim2.new(0, 4, 1, -38), BackgroundColor3 = Theme.panel2,
-- ca44e41dbdacffd32104a82052c2050cab4a3fce97a46f34b65219a83
BorderSizePixel = 0, ZIndex = 50, Active = true}, _1x10111100))
corner(_1xx1x0x0, 7)
tStroke(stroke(_1xx1x0x0, Theme.strokeSoft, 1))

-- 9de00e1bc393c8d9f001d48360dadcd
local _0x10x0x = new(_cfdbb8({214, 231, 250, 246, 192, 237, 250}, 130), {Size = UDim2.new(1, -66, 1, 0),
-- 101100111101000111011001001011111101000110110
Position = UDim2.fromOffset(6, 0), BackgroundTransparency = 1,
Active = true, Selectable = true,
-- 101110101111110000011100111110011011100000111100001111100
PlaceholderText = _cfdbb8({127, 119, 97, 97, 115, 117, 119, 50, 119, 100, 119, 96, 107, 125, 124, 119, 62, 50, 119, 100, 119, 96, 107, 101, 122, 119, 96, 119, 240, 146, 180}, 18), PlaceholderColor3 = Theme.muted,
-- 0x1b 0xcc 0x48 0x9c 0x2a
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text, Text = _cfdbb8({}, 0),
-- 111110011010101000100001010001111011001001110010100011101
ClearTextOnFocus = false, ZIndex = 51}, _1xx1x0x0)
-- 110101100010011110100010011100111101111000011111111
local _x1x1x1001 = new(_cfdbb8({123, 74, 87, 91, 109, 90, 91, 91, 64, 65}, 47), {Size = UDim2.fromOffset(54, 20),
Position = UDim2.new(1, -58, 0.5, -10), BackgroundColor3 = Theme.neon, Text = _cfdbb8({15, 25, 18, 24}, 92),
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false, ZIndex = 51}, _1xx1x0x0)
corner(_x1x1x1001, 5)

-- 501230685a4650f740cd1bd4104238c
local _x1xx1 = {}
local function _0xxx0110(_1x011x1x1)
-- 001011100111011110010011001010110101111110111101001001110101
if type(_1x011x1x1) == _cfdbb8({37, 48, 51, 61, 52}, 81) and _1x011x1x1.__deleteMsgId then
-- 11100001111010101111101000100111101100011100100101001010
local _0110xx0 = _x1xx1[_1x011x1x1.__deleteMsgId]
if _0110xx0 and _0110xx0.row and _0110xx0.row.Parent then _0110xx0.row:Destroy() end
-- 0x83 0x26 0x27 0xb2
_x1xx1[_1x011x1x1.__deleteMsgId] = nil
return
-- 0x76 0x07 0x47 0x33 0x7a 0x71
end
-- 0011101001111100000100000
if not _1x1x111x.Parent then return end
local _1xx01xx1x = new(_cfdbb8({213, 225, 242, 254, 246}, 147), {Size = UDim2.new(1, 0, 0, 42), BackgroundTransparency = 1,
-- 0xb5 0x08 0xf6 0xa3
LayoutOrder = (#_1x1x111x:GetChildren()) + 1, ZIndex = 35,
-- 0xc3 0xaa 0xe7 0xb9 0x7f 0x5f
AutomaticSize = Enum.AutomaticSize.Y}, _1x1x111x)
-- d102dff7c784066b0c51e00bb80dc42aa9
local _10x10x1 = new(_cfdbb8({192, 241, 236, 224, 214, 225, 224, 224, 251, 250}, 148), {Size = UDim2.fromOffset(30, 30),
-- 45fd6948cdd4accb7ce06894
Position = UDim2.fromOffset(0, 2), BackgroundTransparency = 1,
-- 715b3f285d47ef63d18f114a6da2da6af22a90a8fd7ef
Text = _cfdbb8({}, 0), AutoButtonColor = false, ZIndex = 36}, _1xx01xx1x)
-- 101011100110011101110100101010110001001000100110
local _11x0x00 = new(_cfdbb8({169, 141, 129, 135, 133, 172, 129, 130, 133, 140}, 224), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Image = _cfdbb8({}, 0), ZIndex = 36}, _10x10x1)
corner(_11x0x00, 15)
local _110x1xx = new(_cfdbb8({124, 77, 80, 92, 100, 73, 74, 77, 68}, 40), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = (_1x011x1x1.sender or _cfdbb8({190}, 129)):sub(1, 1):upper(),
-- 0x36 0x8e 0x4c 0x9e 0x84
Font = Enum.Font.GothamBlack, TextSize = 13, TextColor3 = Color3.new(1, 1, 1),
ZIndex = 37}, _10x10x1)
-- 0x15 0x8f 0xec 0x16 0x87
local _10x0x0111 = new(_cfdbb8({30, 42, 57, 53, 61}, 88), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, ZIndex = 38}, _10x10x1)
-- 0x12 0xc3 0xc3 0x9d 0x68
corner(_10x0x0111, 15)
local _x0x0x00 = _1x011x1x1[_cfdbb8({66, 68, 82, 69, 126, 83}, 55)] and getRankFor(_1x011x1x1[_cfdbb8({120, 126, 104, 127, 68, 105}, 13)])
-- 11011110011110001101101010010
local _01x1x10 = _1x011x1x1.col or Theme.neon
-- 11001111000111111110111000
if _x0x0x00 and BADGE_STYLE[_x0x0x00] then _01x1x10 = BADGE_STYLE[_x0x0x00].color end
stroke(_10x0x0111, _01x1x10, _x0x0x00 and 2 or 1.4, 0.15)
if _1x011x1x1[_cfdbb8({135, 144, 135, 146, 135, 148}, 230)] and _1x011x1x1[_cfdbb8({55, 32, 55, 34, 55, 36}, 86)] ~= _cfdbb8({}, 0) then
-- 0x80 0x25 0x73 0x1f 0x59 0x20
task.spawn(function()
-- 0x42 0x3c 0xcb 0x22 0xb1 0x80
local _x0x111x10x = getChatAvatarAsset(_1x011x1x1[_cfdbb8({23, 0, 23, 2, 23, 4}, 118)])
-- 00101010011110101011001001111000101110101111011100
if _x0x111x10x and _11x0x00.Parent then
-- 0x4d 0x00 0xd6 0x08 0xd0
_11x0x00.Image = _x0x111x10x
-- 1001010001101000010011101100000011
_11x0x00.ScaleType = Enum.ScaleType.Crop
-- 0x0a 0x1a 0x54
_110x1xx.Visible = false
end
-- 0111011100100100010001111000111110
end)
end
-- 335f6b32a45c53a624b8112c51730b323822c98
if isMod() then
_10x10x1.MouseButton1Click:Connect(function()
_x00x11({
-- d104cf2ed99dad0fcafdf9567eea6beeb05beefebc87be49920c51c6ac4
[_cfdbb8({73, 79, 89, 78, 117, 88}, 60)] = _1x011x1x1[_cfdbb8({218, 220, 202, 221, 230, 203}, 175)], [_cfdbb8({10, 7, 29, 13, 1, 28, 10, 39, 10}, 110)] = _1x011x1x1[_cfdbb8({135, 138, 144, 128, 140, 145, 135, 170, 135}, 227)],
name = (_1x011x1x1.discordName and _1x011x1x1.discordName ~= _cfdbb8({}, 0) and (_cfdbb8({34}, 98) .. _1x011x1x1.discordName)) or _1x011x1x1.sender,
msgId = _1x011x1x1.msgId,
-- 6731d9923f10ba5d19d14923c861453f385a6dbc1628f
})
-- 0x0c 0x9f 0xfa 0x09 0x99
end)
end
-- 0011011100011110001010101101
local _100x0010 = new(_cfdbb8({49, 5, 22, 26, 18}, 119), {Size = UDim2.new(1, -38, 0, 0),
Position = UDim2.fromOffset(38, 0), BackgroundTransparency = 1,
AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 36}, _1xx01xx1x)
-- 010000000111100101000000110000111010010100111
local _1110x01x = _cfdbb8({}, 0)
if _x0x0x00 and BADGE_STYLE[_x0x0x00] then
-- 0x33 0x00 0xad 0x1b 0x60
local _x10001 = BADGE_STYLE[_x0x0x00]
-- 110000011111100001111100000
_1110x01x = string.format(_cfdbb8({33, 123, 114, 115, 105, 61, 126, 114, 113, 114, 111, 32, 63, 62, 56, 110, 63, 35, 56, 110, 61, 56, 110, 33, 50, 123, 114, 115, 105, 35, 61, 61}, 29), _x10001.color:ToHex(), _x10001.emoji, _x10001.label)
end
-- 98b5b9e58a8dc94fd71300091e6ff
local _01100x = _cfdbb8({}, 0)
-- 1010011001100010011000001000110101
if _1x011x1x1.placeId and _1x011x1x1.placeId ~= _cfdbb8({}, 0) and tostring(_1x011x1x1.placeId) ~= tostring(game.PlaceId) then
_01100x = string.format(_cfdbb8({163, 163, 191, 229, 236, 237, 247, 163, 224, 236, 239, 236, 241, 190, 161, 160, 181, 198, 187, 177, 193, 181, 161, 189, 216, 243, 239, 226, 224, 230, 163, 166, 240, 222, 191, 172, 229, 236, 237, 247, 189}, 131), tostring(_1x011x1x1.placeId))
end
-- e343650231e1e9d7cb6c9c4bcc88fc24ac408
local _11x101xx1 = string.format(_cfdbb8({139, 209, 216, 217, 195, 151, 212, 216, 219, 216, 197, 138, 149, 148, 143, 241, 246, 129, 245, 242, 149, 137, 146, 196, 139, 152, 209, 216, 217, 195, 137, 151, 151, 146, 196, 139, 209, 216, 217, 195, 151, 212, 216, 219, 216, 197, 138, 149, 148, 146, 196, 149, 137, 139, 213, 137, 146, 196, 139, 152, 213, 137, 139, 152, 209, 216, 217, 195, 137, 146, 196}, 183),
-- 8f319a2d36e22e0a5f8e96f0134f55
os.date(_cfdbb8({87, 58, 72, 87, 63}, 114), math.floor(_1x011x1x1.time or tick())),
_1110x01x,
-- 99b5dbe25b648407e4393cacbcbdaad8f8fbdd132a89aaf927c4f1d1
(_1x011x1x1.col or Color3.fromRGB(148, 204, 255)):ToHex(),
-- 0xca 0xc9 0xbd 0xcf 0xf8 0x6b
(_1x011x1x1.discordName and _1x011x1x1.discordName ~= _cfdbb8({}, 0) and (_cfdbb8({82}, 18) .. _1x011x1x1.discordName)) or _1x011x1x1.sender,
_01100x)
new(_cfdbb8({37, 20, 9, 5, 61, 16, 19, 20, 29}, 113), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 000111100010000001100001100010101010
RichText = true, Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
-- 1010010100011011101001000011001100000000010101010
Text = _11x101xx1, ZIndex = 37}, _100x0010)
-- 0x88 0xee 0x9c 0xed
new(_cfdbb8({76, 125, 96, 108, 84, 121, 122, 125, 116}, 24), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
TextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y, Font = Enum.Font.Gotham,
TextSize = 10, TextColor3 = Theme.text, RichText = true,
-- 1110000111011100010100100010000101010100001100110000111
TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
-- 2926d638019091992fc7decc61ea53dca2c7000f3e97
Position = UDim2.fromOffset(0, 14), Text = _1x011x1x1.text or _cfdbb8({}, 0), ZIndex = 37}, _100x0010)
-- 0xe2 0x2b 0xed 0x9f 0xe7
if isMod() and _1x011x1x1[_cfdbb8({10, 7, 29, 13, 1, 28, 10, 39, 10}, 110)] then
-- 11111111010001001011000111001110101111101
local _x1x0x0x11 = new(_cfdbb8({255, 203, 216, 212, 220}, 185), {Size = UDim2.new(1, -38, 0, 22),
-- 0x42 0x24 0x2d 0x33 0xe8
Position = UDim2.fromOffset(38, 34), BackgroundTransparency = 1,
Visible = false, ZIndex = 40}, _1xx01xx1x)
-- c6f6d2a92f46fa22310b850af7c
new(_cfdbb8({231, 251, 254, 219, 193, 198, 254, 211, 203, 221, 199, 198}, 178), {FillDirection = Enum.FillDirection.Horizontal,
HorizontalAlignment = Enum.HorizontalAlignment.Left,
VerticalAlignment = Enum.VerticalAlignment.Center,
Padding = UDim.new(0, 4)}, _x1x0x0x11)
-- 11011111010011110110110001
local function _011x0110x(_1xxx10, _0110x1, _xx1x0x)
-- 1000101010011001100110011011110001110011010100100
local _x11x1 = new(_cfdbb8({120, 73, 84, 88, 110, 89, 88, 88, 67, 66}, 44), {Size = UDim2.fromOffset(0, 18),
-- 76ea59bc1d527569ab14cf43f02268c06e0f95944a1511f
AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = Theme.panel2,
Text = _1xxx10, Font = Enum.Font.GothamBold, TextSize = 9,
-- 0x05 0x15 0x3f 0x1a
TextColor3 = _0110x1, AutoButtonColor = false, ZIndex = 41}, _x1x0x0x11)
corner(_x11x1, 4)
new(_cfdbb8({104, 116, 109, 92, 89, 89, 84, 83, 90}, 61), {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _x11x1)
-- dd87cc7b0592ca83e1b62901
stroke(_x11x1, _0110x1, 1, 0.4)
_x11x1.MouseButton1Click:Connect(_xx1x0x)
end
-- 111100011101101000101010010010011011111000110101000000100
if _1x011x1x1.msgId then _011x0110x(_cfdbb8({114, 29, 21, 19, 162, 230, 231, 238, 231, 246, 231}, 130), Theme.danger, function() doModDelete(_1x011x1x1.msgId) end) end
-- 0x74 0x36 0x3a
_011x0110x(_cfdbb8({133, 232, 214, 71, 82, 10}, 103), Theme.gold, function() doModBan(_1x011x1x1[_cfdbb8({39, 42, 48, 32, 44, 49, 39, 10, 39}, 67)], _cfdbb8({}, 0), 300) end)
-- 0x80 0x77 0x36 0x2b 0xb4
_011x0110x(_cfdbb8({146, 255, 193, 80, 65, 24}, 112), Theme.gold, function() doModBan(_1x011x1x1[_cfdbb8({165, 168, 178, 162, 174, 179, 165, 136, 165}, 193)], _cfdbb8({}, 0), 3600) end)
_011x0110x(_cfdbb8({108, 3, 8, 52, 188, 254, 253, 242}, 156), Theme.danger, function() doModBan(_1x011x1x1[_cfdbb8({107, 102, 124, 108, 96, 125, 107, 70, 107}, 15)], _cfdbb8({}, 0), 0) end)
_1xx01xx1x.MouseEnter:Connect(function() _x1x0x0x11.Visible = true end)
_1xx01xx1x.MouseLeave:Connect(function() _x1x0x0x11.Visible = false end)
end
if _1x011x1x1.msgId then _x1xx1[_1x011x1x1.msgId] = {row = _1xx01xx1x, [_cfdbb8({25, 31, 9, 30, 37, 8}, 108)] = _1x011x1x1[_cfdbb8({138, 140, 154, 141, 182, 155}, 255)], [_cfdbb8({74, 71, 93, 77, 65, 92, 74, 103, 74}, 46)] = _1x011x1x1[_cfdbb8({4, 9, 19, 3, 15, 18, 4, 41, 4}, 96)]} end
-- 0x1d 0xab 0xff 0x8b 0xec
task.defer(function()
_1x1x111x.CanvasPosition = Vector2.new(0, math.max(0, _1x1x111x.AbsoluteCanvasSize.Y))
-- 0010110011101000100000001100001000000011010111100
end)
end
Chat.listeners[#Chat.listeners + 1] = _0xxx0110
-- 10011100101101110011001110010110101010011
for _11011x0x, _1xx0x0 in ipairs(Chat.messages) do _0xxx0110(_1xx0x0) end

local function _xx00100()
-- 3f243426ed2e1a8b351c4ae6e5cade606144c1be528b4195a5f
local _00x1xx11 = _0x10x0x.Text or _cfdbb8({}, 0)
-- 0x74 0x93 0x00 0xa0 0x42 0x73
if _00x1xx11:gsub(_cfdbb8({31, 73}, 58), _cfdbb8({}, 0)) == _cfdbb8({}, 0) then return end
-- 10010010000001001110000110110100
_0x10x0x.Text = _cfdbb8({}, 0)
local _100010 = sendChat(_00x1xx11)
-- f38a773bcbb1d4587528f3c983e1b7130ad35236811a
if _100010 then
-- d188d41d5438d865e1a93df6eb0
pulse(_x1x1x1001, 0.94, 0.06)
glow(_x1x1x1001, Theme.accent2, 0.4)
end
end
_x1x1x1001.MouseButton1Click:Connect(_xx00100)
-- 0x4b 0x8c 0x23 0xb4 0x9f
_0x10x0x.FocusLost:Connect(function(_0xxxx0) if _0xxxx0 then _xx00100() end end)

task.spawn(function()
-- 1110011011001100010000110010101000001110010100001100111
local _1x0xx11 = 0
-- 10010001111001101110010001
while gui and gui.Parent do
task.wait(4)
local _11x101x, _10x011x00 = httpGet(KEY_API .. _cfdbb8({214, 154, 145, 152, 141, 214, 159, 156, 141, 154, 145, 198, 138, 144, 151, 154, 156, 196}, 249) .. _1x0xx11 .. _cfdbb8({197, 143, 138, 142, 138, 151, 222, 214, 211}, 227))
-- ea101beb4a692a14dd5018d39a45d593f6ca324068c4ca7a1090
if _11x101x and _10x011x00 then
local _x0xx1, _0x0xx11 = pcall(function() return _000xxxxxx:JSONDecode(_10x011x00) end)
-- 164faedfcd5b4eabd7d203ade777316be6
if _x0xx1 and type(_0x0xx11) == _cfdbb8({71, 82, 81, 95, 86}, 51) and _0x0xx11.messages then
-- 0x85 0x62 0x6b 0x3f 0x4e
for _00x1xxx, _10001 in ipairs(_0x0xx11.messages) do
-- 101001101100001000011000100011
if _10001.id and _10001.id > _1x0xx11 then _1x0xx11 = _10001.id end
-- 0x28 0x2f 0x3d 0xa9
addChat(_10001.sender, _10001.text, false, Color3.fromRGB(148, 204, 255),
-- 68466ce281ae8459b89ddea92bf2623f6d28f99d546dba9
_10001[_cfdbb8({49, 38, 49, 36, 49, 34}, 80)], _10001.discordName, _10001.country, _10001.countryCode,
_10001[_cfdbb8({189, 187, 173, 186, 129, 172}, 200)], _10001.id, _10001.placeId, _10001.time, _10001[_cfdbb8({97, 108, 118, 102, 106, 119, 97, 76, 97}, 5)])
-- aa40a22ef426ce34be973077a20fe3db1d90946e0
end
end
-- 1111101111010100111001000011000
end
-- 0x21 0x07 0xd1 0x63 0x39 0xae
end
end)

-- 877dc4adbe11a9d2c9c19d86b3c1918ac2c81893456b7cde6462b3cb8f4
section(_x01xxx, _cfdbb8({239, 236, 236, 237, 235, 232, 234, 226}, 169), _cfdbb8({152, 230, 243, 149, 194, 245}, 122))
local _xx1xxx1 = tPanel(new(_cfdbb8({28, 40, 59, 55, 63}, 90), {Size = UDim2.new(1, 0, 0, 84),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
-- 0x52 0xd3 0x0a 0x05 0xb8 0x8b
LayoutOrder = #pages[_x01xxx]:GetChildren(), ZIndex = 33}, pages[_x01xxx]))
-- 8322bd675be009208992f890937d1680c3bf02ebf66a9
corner(_xx1xxx1, 10)
-- 0x65 0x24 0x95 0x37 0x3a 0xd6
tStroke(stroke(_xx1xxx1, Theme.strokeSoft, 1, 0.4))
-- 11001110011101100000101110110001011101001101010000111
local _x00x1 = tPanel2(new(_cfdbb8({74, 123, 102, 106, 92, 113, 102}, 30), {Size = UDim2.new(1, -12, 1, -42),
-- da89c4860ebda9c0e2dad3e0fb274f5ec41338e0f988bad46a1e13
Position = UDim2.fromOffset(6, 6), BackgroundColor3 = Theme.panel2,
BackgroundTransparency = 0.2, Text = _cfdbb8({}, 0), PlaceholderText = _cfdbb8({95, 82, 91, 78, 11, 82, 68, 94, 89, 11, 77, 78, 78, 79, 73, 74, 72, 64, 11, 67, 78, 89, 78, 201, 171, 141}, 43),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 10,
TextColor3 = Theme.text, MultiLine = true, ClearTextOnFocus = false,
Active = true, Selectable = true,
-- 000101000011011011000001111011101011101101
TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
ZIndex = 50}, _xx1xxx1))
corner(_x00x1, 6)
-- 01101001000000011010011100000001000011010101111111
tStroke(stroke(_x00x1, Theme.strokeSoft, 1))
local _xx0xx = new(_cfdbb8({69, 116, 105, 101, 83, 100, 101, 101, 126, 127}, 17), {Size = UDim2.new(1, -12, 0, 24),
Position = UDim2.new(0, 6, 1, -30), BackgroundColor3 = Theme.neon, Text = _cfdbb8({14, 24, 19, 25, 125, 27, 24, 24, 25, 31, 28, 30, 22}, 93),
-- 0xea 0x47 0xde 0xb7 0x47 0x40
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Color3.new(1, 1, 1),
-- 0xb2 0xdf 0xe6 0x17
AutoButtonColor = false, ZIndex = 34}, _xx1xxx1)
corner(_xx0xx, 6)
-- 0x8d 0xa4 0x95 0xdd
_xx0xx.MouseButton1Click:Connect(function()
local _x1xx0 = _x00x1.Text or _cfdbb8({}, 0)
-- 9e91ca71e724d044585f6d4c6df4172921d52d5
if _x1xx0:gsub(_cfdbb8({130, 212}, 167), _cfdbb8({}, 0)) == _cfdbb8({}, 0) then
notify(_cfdbb8({77, 110, 110, 111, 105, 106, 104, 96}, 11), _cfdbb8({0, 33, 58, 38, 39, 32, 41, 110, 58, 33, 110, 61, 43, 32, 42}, 78), Theme.danger, 2); return
end
if #_x1xx0 > 500 then _x1xx0 = _x1xx0:sub(1, 500) end
-- 11101000010101100010000101100001011010110111011011110001001
task.spawn(function()
-- 0011001011111000101110010110100100111
local _0x001110 = _000xxxxxx:JSONEncode({
text = _x1xx0, name = _0xx011101.Name,
[_cfdbb8({5, 3, 21, 2, 57, 20}, 112)] = tostring(_0xx011101.UserId), placeId = tostring(game.PlaceId),
})
local _x010111xxx, _1x1x0x00x = httpPost(FEEDBACK_WEBHOOK, _0x001110)
-- 0x88 0x3e 0x2b 0x58 0xeb 0x6f
if _x010111xxx then
_x00x1.Text = _cfdbb8({}, 0)
notify(_cfdbb8({207, 236, 236, 237, 235, 232, 234, 226, 169, 250, 236, 231, 253}, 137), _cfdbb8({82, 110, 103, 104, 109, 117}, 6), Theme.success, 3)
else
notify(_cfdbb8({25, 58, 58, 59, 61, 62, 60, 52, 127, 57, 62, 54, 51, 58, 59}, 95), tostring(_1x1x0x00x), Theme.danger, 5, tostring(_1x1x0x00x))
-- ae6de5646bcddfe6440f1bf5916a0f8c5f5a
end
end)
-- 1011001010111100010110011010
end)
end

-- 010010011010110111101001011100010111

if isMod() then
local _00xx1 = _cfdbb8({199, 223, 198, 205, 218}, 168)
-- 0xdc 0xf5 0xe5 0x91 0x9c 0x64
section(_00xx1, _cfdbb8({251, 254, 225, 242, 151, 246, 249, 249, 248, 226, 249, 244, 242, 250, 242, 249, 227, 228}, 183), _cfdbb8({230, 137, 133, 180}, 22))
new(_cfdbb8({236, 221, 192, 204, 244, 217, 218, 221, 212}, 184), {Size = UDim2.new(1, 0, 0, 16), BackgroundTransparency = 1,
Text = _cfdbb8({85, 69, 88, 86, 83, 84, 86, 68, 67, 23, 67, 88, 23, 82, 65, 82, 69, 78, 23, 101, 114, 118, 103, 114, 101, 23, 66, 68, 82, 69, 23, 94, 89, 23, 82, 65, 82, 69, 78, 23, 68, 82, 69, 65, 82, 69}, 55),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = #pages[_00xx1]:GetChildren(), ZIndex = 33}, pages[_00xx1])

-- 7098ca577dce7d8892d136b1e541d5519f9c9683cfc6953cc8ced8ebb5
local _0x11011100 = tPanel2(new(_cfdbb8({236, 221, 192, 204, 250, 215, 192}, 184), {Size = UDim2.new(1, 0, 0, 70),
-- 0x5e 0xcd 0x34 0x5a
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
-- 9fb41042f649f0d4b5f884419294860c819cee05ce3cf0e5b6fb
BorderSizePixel = 0, Text = _cfdbb8({}, 0),
Active = true, Selectable = true,
PlaceholderText = _cfdbb8({215, 218, 211, 198, 131, 218, 204, 214, 209, 131, 194, 205, 205, 204, 214, 205, 192, 198, 206, 198, 205, 215, 65, 35, 5}, 163),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
-- 0xde 0x9d 0xe5 0xae
TextSize = 11, TextColor3 = Theme.text, MultiLine = true,
-- 00101111111001110111010110011100
ClearTextOnFocus = false, TextXAlignment = Enum.TextXAlignment.Left,
-- 10001010100110110100001101000110011110111111100010011110
TextYAlignment = Enum.TextYAlignment.Top,
-- 011001001010000000101101110101011011001001100100001
LayoutOrder = #pages[_00xx1]:GetChildren(), ZIndex = 50}, pages[_00xx1]))
corner(_0x11011100, 8)
tStroke(stroke(_0x11011100, Theme.strokeSoft, 1))

buttonRow(_00xx1, _cfdbb8({37, 19, 24, 18, 86, 2, 25, 86, 19, 0, 19, 4, 15, 25, 24, 19}, 118), _cfdbb8({19, 124, 112, 65, 195, 176, 166, 173, 167}, 227), function(_111011)
-- 0x39 0xfe 0xab 0x5b 0x61
local _1011011 = _0x11011100.Text or _cfdbb8({}, 0)
-- 000101010100000100000001100100000110100001010001
if sendAnnouncement(_1011011) then _0x11011100.Text = _cfdbb8({}, 0) end
end)
buttonRow(_00xx1, _cfdbb8({226, 192, 215, 196, 219, 215, 197, 146, 222, 221, 209, 211, 222, 222, 203}, 178), _cfdbb8({147, 145, 134, 149, 138, 134, 148}, 195), function()
-- 0x70 0xb3 0x6d
local _x0110010 = _0x11011100.Text or _cfdbb8({}, 0)
if _x0110010:gsub(_cfdbb8({50, 100}, 23), _cfdbb8({}, 0)) == _cfdbb8({}, 0) then
-- 0x6a 0xfc 0x17 0x0a
notify(_cfdbb8({29, 63, 40, 59, 36, 40, 58}, 77), _cfdbb8({71, 106, 99, 118, 51, 114, 51, 126, 118, 96, 96, 114, 116, 118, 51, 117, 122, 97, 96, 103}, 19), Theme.gold, 2); return
end
showAnnouncement({text = _x0110010, sender = _0xx011101.Name,
-- 0x3d 0x37 0x65 0xaa 0x4e
[_cfdbb8({247, 241, 231, 240, 203, 230}, 130)] = _0xx011101.UserId, [_cfdbb8({130, 145, 158, 155}, 240)] = getLocalRank() or _cfdbb8({120, 96, 121, 114, 101}, 23), time = os.time()})
-- 0x2b 0x43 0x43 0xfb 0xef 0xa7
end)

section(_00xx1, _cfdbb8({2, 9, 0, 21, 97, 12, 14, 5, 4, 19, 0, 21, 8, 14, 15, 97, 2, 14, 15, 18, 14, 13, 4}, 65), _cfdbb8({161, 206, 202, 240}, 81))
-- 277cdbdfa87ec44c6d1c2d5b5f5b394ce74327873
new(_cfdbb8({79, 126, 99, 111, 87, 122, 121, 126, 119}, 27), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 94781b4be1cbc3e13821493e8c0f
Text = _cfdbb8({167, 163, 191, 181, 189, 251, 180, 183, 184, 246, 180, 175, 246, 146, 191, 165, 181, 185, 164, 178, 246, 159, 146, 246, 20, 97, 246, 160, 191, 179, 161, 246, 180, 183, 184, 246, 186, 191, 165, 162}, 214),
-- 03b4f26c55efd72458e20d447fc13fe0839a28b25790490321
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,
-- 1011100000000000100111111010011011001000
LayoutOrder = #pages[_00xx1]:GetChildren(), ZIndex = 33}, pages[_00xx1])

-- 0x6c 0x17 0xff 0xa8 0xb9
local _0x00x01 = tPanel2(new(_cfdbb8({117, 68, 89, 85, 99, 78, 89}, 33), {Size = UDim2.new(1, 0, 0, 28),
-- 08f6861af00d24c226d4b7e5a9c1c249a857
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
-- 0101001000111010011110111101111010111001011000000000
BorderSizePixel = 0, Text = _cfdbb8({}, 0),
Active = true, Selectable = true,
-- 0x08 0x4f 0xbc 0x70
PlaceholderText = _cfdbb8({123, 110, 125, 104, 106, 123, 47, 75, 102, 124, 108, 96, 125, 107, 47, 70, 75, 47, 39, 62, 56, 34, 61, 63, 47, 107, 102, 104, 102, 123, 124, 38}, 15),
-- 0xae 0x71 0x69
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
-- 0x4b 0x4a 0xc6 0x9f 0x35 0x53
TextSize = 11, TextColor3 = Theme.text,
-- 0xdc 0x28 0x0f
ClearTextOnFocus = false,
-- f070f29d9789f609a2b1d9a561f13035f7209568320e019513f7b1c521
LayoutOrder = #pages[_00xx1]:GetChildren(), ZIndex = 50}, pages[_00xx1]))
corner(_0x00x01, 7)
tStroke(stroke(_0x00x01, Theme.strokeSoft, 1))

local _x010001 = tPanel2(new(_cfdbb8({127, 78, 83, 95, 105, 68, 83}, 43), {Size = UDim2.new(1, 0, 0, 28),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
-- 111100101110100111001000100111110100010010110101
BorderSizePixel = 0, Text = _cfdbb8({}, 0),
-- 00000100010000010011100100111010100000
Active = true, Selectable = true,
PlaceholderText = _cfdbb8({223, 200, 204, 222, 194, 195, 141, 133, 194, 221, 217, 196, 194, 195, 204, 193, 132}, 173),
-- e173ac07da9784bcb019ccfae5a6c536a805dc3d0bb4b
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
-- 11001000110000011001010110110001010010000000
TextSize = 11, TextColor3 = Theme.text,
-- dd819c451679dc66082a1bc706e439e217
ClearTextOnFocus = false,
-- abb57dba9473329345ab71d023
LayoutOrder = #pages[_00xx1]:GetChildren(), ZIndex = 50}, pages[_00xx1]))
-- 0x11 0x0e 0x6d 0xa5
corner(_x010001, 7)
-- 21b6268773cfbe8e308e7dcf6ea763629ed6
tStroke(stroke(_x010001, Theme.strokeSoft, 1))

buttonRow(_00xx1, _cfdbb8({76, 113, 117, 125, 119, 109, 108, 56, 45, 56, 117, 113, 118}, 24), _cfdbb8({199, 191}, 242), function()
-- 3a0a256ebeac52c0138290bed42e60
local _000x101 = (_0x00x01.Text or _cfdbb8({}, 0)):gsub(_cfdbb8({32, 118}, 5), _cfdbb8({}, 0))
-- 11011111001101000101111100
if _000x101 == _cfdbb8({}, 0) then notify(_cfdbb8({156, 191, 176}, 222), _cfdbb8({210, 249, 227, 242, 229, 183, 246, 183, 211, 254, 228, 244, 248, 229, 243, 183, 222, 211, 183, 241, 254, 229, 228, 227}, 151), Theme.gold, 2); return end
doModBan(_000x101, _x010001.Text, 300); _x010001.Text = _cfdbb8({}, 0)
end)
buttonRow(_00xx1, _cfdbb8({97, 92, 88, 80, 90, 64, 65, 21, 4, 21, 93, 90, 64, 71}, 53), _cfdbb8({69, 60}, 116), function()
local _0x101100 = (_0x00x01.Text or _cfdbb8({}, 0)):gsub(_cfdbb8({218, 140}, 255), _cfdbb8({}, 0))
if _0x101100 == _cfdbb8({}, 0) then notify(_cfdbb8({161, 130, 141}, 227), _cfdbb8({160, 139, 145, 128, 151, 197, 132, 197, 161, 140, 150, 134, 138, 151, 129, 197, 172, 161, 197, 131, 140, 151, 150, 145}, 229), Theme.gold, 2); return end
-- 10010000001010111111101000100010001010000100101
doModBan(_0x101100, _x010001.Text, 3600); _x010001.Text = _cfdbb8({}, 0)
-- 1000100001011111000100100010
end)
-- 00011111011110011001111000101101100101110
buttonRow(_00xx1, _cfdbb8({238, 211, 215, 223, 213, 207, 206, 154, 136, 142, 154, 210, 213, 207, 200, 201}, 186), _cfdbb8({231, 225, 157}, 213), function()
local _x101x1 = (_0x00x01.Text or _cfdbb8({}, 0)):gsub(_cfdbb8({122, 44}, 95), _cfdbb8({}, 0))
-- aad9aa9ac05d81001862a8b1d5395104f25efd7845
if _x101x1 == _cfdbb8({}, 0) then notify(_cfdbb8({45, 14, 1}, 111), _cfdbb8({102, 77, 87, 70, 81, 3, 66, 3, 103, 74, 80, 64, 76, 81, 71, 3, 106, 103, 3, 69, 74, 81, 80, 87}, 35), Theme.gold, 2); return end
doModBan(_x101x1, _x010001.Text, 86400); _x010001.Text = _cfdbb8({}, 0)
-- 0x41 0xc4 0x51 0x82
end)
-- 00110110100110011010010100000011100001101101100
buttonRow(_00xx1, _cfdbb8({143, 172, 163, 237, 189, 168, 191, 160, 172, 163, 168, 163, 185, 161, 180}, 205), _cfdbb8({158, 157, 146}, 220), function()
-- 49015a7027a256ff2718e2fd29c072cd7e8e6ecfa6dc34094f5a1e2bfc
local _1x0x01x110 = (_0x00x01.Text or _cfdbb8({}, 0)):gsub(_cfdbb8({143, 217}, 170), _cfdbb8({}, 0))
-- 0x30 0x2f 0x31 0xb6 0x45
if _1x0x01x110 == _cfdbb8({}, 0) then notify(_cfdbb8({15, 44, 35}, 77), _cfdbb8({57, 18, 8, 25, 14, 92, 29, 92, 56, 21, 15, 31, 19, 14, 24, 92, 53, 56, 92, 26, 21, 14, 15, 8}, 124), Theme.gold, 2); return end
doModBan(_1x0x01x110, _x010001.Text, 0); _x010001.Text = _cfdbb8({}, 0)
end)
buttonRow(_00xx1, _cfdbb8({239, 212, 216, 219, 212, 154, 207, 201, 223, 200}, 186), _cfdbb8({82, 73, 69, 70, 73}, 7), function()
-- e35a979351e86eb9d5e8adab457a
local _0x00000111 = (_0x00x01.Text or _cfdbb8({}, 0)):gsub(_cfdbb8({241, 167}, 212), _cfdbb8({}, 0))
-- 1101110010111100111000000110011111110100000
if _0x00000111 == _cfdbb8({}, 0) then notify(_cfdbb8({7, 60, 48, 51, 60}, 82), _cfdbb8({156, 183, 173, 188, 171, 249, 184, 249, 157, 176, 170, 186, 182, 171, 189, 249, 144, 157, 249, 191, 176, 171, 170, 173}, 217), Theme.gold, 2); return end
task.spawn(function()
-- 0xa1 0x97 0x0c 0x26
local _11x11 = _000xxxxxx:JSONEncode({
robloxId = tostring(_0xx011101.UserId), key = SESSION_KEY or _cfdbb8({}, 0),
-- 0x26 0x36 0x0b 0xec 0xc9
targetDiscordId = _0x00000111,
})
local _011xx00, _x10x10xx0 = httpPost(KEY_API .. _cfdbb8({184, 244, 255, 246, 227, 184, 226, 249, 245, 246, 249}, 151), _11x11)
-- 1110000001010000010011010110001011
if _011xx00 then
notify(_cfdbb8({80, 107, 103, 100, 107, 107, 96, 97}, 5), _0x00000111, Theme.success, 3)
-- 8cee56fd869aab573b9529fb740
else
-- 010110101111100011101101010100100100111110100001100101110101
local _x001xxxx = parseErrorReason(_x10x10xx0)
notify(_cfdbb8({173, 150, 154, 153, 150, 216, 158, 153, 145, 148, 157, 156}, 248), _x001xxxx, Theme.danger, 8, _x001xxxx)
end
end)
-- 8f5aa68169ad538eb8d9848afc400f4cc88360a194702ecb707
end)

section(_00xx1, _cfdbb8({214, 215, 213, 208, 215, 220, 185, 202, 205, 216, 223, 223}, 153), _cfdbb8({251, 148, 144, 170, 228, 179, 132}, 11))
-- 248a75060fecd486747b4157fd60a42ea148891c1cf485
local _xx111x0111 = new(_cfdbb8({99, 87, 68, 72, 64}, 37), {Size = UDim2.new(1, 0, 0, 0),
-- 0x17 0x5f 0x2e 0x1c 0xb8
BackgroundTransparency = 1, LayoutOrder = #pages[_00xx1]:GetChildren(),
AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_00xx1])
new(_cfdbb8({170, 182, 179, 150, 140, 139, 179, 158, 134, 144, 138, 139}, 255), {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, _xx111x0111)
-- ba4e2ef98d25207cc2f33b10ef
local function _01000111()
-- 0x26 0xc8 0x27 0x58 0x04 0xea
for _x11100, _1x001x0010 in ipairs(_xx111x0111:GetChildren()) do
if not _1x001x0010:IsA(_cfdbb8({2, 30, 27, 62, 36, 35, 27, 54, 46, 56, 34, 35}, 87)) then _1x001x0010:Destroy() end
-- bca0cc0ccb8c4b451d98da589927a7ad2d920106b0df1b4606
end
local _x1x010 = 0
-- 0x37 0x76 0x69 0x11 0xf2 0xe6
for _0x1000x11, _10x1x0xxx0 in ipairs(_001x1001:GetPlayers()) do
local _11x00101x = getRankFor(_10x1x0xxx0.UserId)
-- 2eeb2243e279bb3ecf99a48baf8c8eefaad858fa88a677a81cf
local _111x110x = _11x00101x and BADGE_STYLE[_11x00101x]
-- 0xcc 0xe6 0x1b 0x19 0xce
if _111x110x then
-- fb043c668fbb794cd1ef09ec7cf2d5b5a59e24826901567c
_x1x010 = _x1x010 + 1
-- 482515e69cb8a19214d6b997751b0baf0932537c3e2270a419b5111e
local _0x1x10 = tPanel(new(_cfdbb8({169, 157, 142, 130, 138}, 239), {Size = UDim2.new(1, 0, 0, 26),
-- 573609742be262b6053a9fe0b319a2ee3209ac7b4934467655cf27a885
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 01001010111001011111100101011110010011000000101101
LayoutOrder = _x1x010, ZIndex = 34}, _xx111x0111))
corner(_0x1x10, 6)
stroke(_0x1x10, _111x110x.color, 1.4, 0.2)
-- 0x44 0x13 0x88
new(_cfdbb8({96, 81, 76, 64, 120, 85, 86, 81, 88}, 52), {Size = UDim2.new(1, -10, 1, 0),
Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1,
Text = string.format(_cfdbb8({69, 19, 64, 69, 19, 64, 64, 69, 19}, 96), _111x110x.emoji, _111x110x.label, _10x1x0xxx0.Name),
-- 0x27 0x8a 0xcc 0x53 0x81
Font = Enum.Font.GothamBold, TextSize = 10,
TextColor3 = _111x110x.color, TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 35}, _0x1x10)
end
-- e21273a7e0b818ee62d79e1c30dc058039070ad8d9114ec
end
if _x1x010 == 0 then
new(_cfdbb8({237, 220, 193, 205, 245, 216, 219, 220, 213}, 185), {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
-- 0399c16db559977ada87aedb691db8abd29735992f5dd94dc
Text = _cfdbb8({219, 218, 149, 198, 193, 212, 211, 211, 149, 218, 219, 217, 220, 219, 208}, 181), Font = Enum.Font.Gotham, TextSize = 9,
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
-- 0x58 0x14 0xb9
LayoutOrder = 1, ZIndex = 34}, _xx111x0111)
-- d8f45f9f449fc6b92ea4bc8d2454c81c3f1ce89b395b4bfa5f3a0222bc8
end
end
_01000111()
-- 11011011010101101010011000111001001011010110111
buttonRow(_00xx1, _cfdbb8({195, 244, 247, 227, 244, 226, 249, 177, 226, 229, 240, 247, 247, 177, 253, 248, 226, 229}, 145), _cfdbb8({166, 177, 178, 166, 177, 167, 188}, 244), _01000111)
end

-- d35259b76e2f4d0d2b572744dcca02



-- 00101001101100100101010001100100100111100100000000
do
-- 0xf2 0x3f 0xf3 0x0b 0x5d
local _xxxx1 = _cfdbb8({117, 121, 123, 116, 119, 98}, 22)
-- 1fa07211a77a8178e5a00a45fa2
section(_xxxx1, _cfdbb8({145, 153, 157, 146, 159, 132}, 208), _cfdbb8({183, 216, 201, 232}, 71))
-- 899823778092c8bf9a50971ae865063d1d0b7
toggleRow(_xxxx1, _cfdbb8({24, 48, 52, 59, 54, 45, 119, 28, 55, 56, 59, 53, 60, 61}, 89), _cfdbb8({241, 217, 221, 210, 223, 196}, 176))
-- 0xaf 0xcf 0xf0
buttonRow(_xxxx1, _cfdbb8({52, 28, 24, 85, 62, 16, 12}, 117), Cfg[_cfdbb8({157, 181, 177, 190, 179, 168}, 220)].Key.Name, function(_01x1010x0)
pendingKeybind = {path = _cfdbb8({76, 100, 96, 111, 98, 121, 35, 70, 104, 116}, 13), raw = true, btn = _01x1010x0}
_01x1010x0.Text = _cfdbb8({194, 192, 215, 193, 193, 80, 50, 20}, 178)
end)
toggleRow(_xxxx1, _cfdbb8({29, 53, 49, 62, 51, 40, 114, 8, 51, 59, 59, 48, 57, 17, 51, 56, 57}, 92), _cfdbb8({203, 240, 248, 248, 243, 250, 191, 210, 240, 251, 250}, 159))
-- 0x43 0x4f 0x6c
toggleRow(_xxxx1, _cfdbb8({200, 224, 228, 235, 230, 253, 167, 193, 252, 228, 232, 231, 224, 243, 236}, 137), _cfdbb8({91, 102, 126, 114, 125, 122, 105, 118}, 19))
sliderRow(_xxxx1, _cfdbb8({45, 5, 1, 14, 3, 24, 66, 42, 35, 58}, 108), _cfdbb8({195, 202, 211}, 133), 10, 800, 0)
sliderRow(_xxxx1, _cfdbb8({127, 87, 83, 92, 81, 74, 16, 115, 95, 70, 122, 87, 77, 74}, 62), _cfdbb8({18, 62, 39, 127, 27, 54, 44, 43, 62, 49, 60, 58}, 95), 50, 5000, 0)
-- 0xdc 0x96 0xc5
sliderRow(_xxxx1, _cfdbb8({3, 43, 47, 32, 45, 54, 108, 17, 47, 45, 45, 54, 42, 44, 39, 49, 49}, 66), _cfdbb8({202, 244, 246, 246, 237, 241, 247, 252, 234, 234}, 153), 1, 20, 0)
-- 9df6724926e887dff3f91bb473a8a50073abd4ed915c119bf9ee1688
sliderRow(_xxxx1, _cfdbb8({39, 15, 11, 4, 9, 18, 72, 53, 18, 20, 3, 8, 1, 18, 14}, 102), _cfdbb8({37, 2, 4, 19, 24, 17, 2, 30}, 118), 1, 10, 1)
-- 10101000001000111100101111
toggleRow(_xxxx1, _cfdbb8({177, 153, 157, 146, 159, 132, 222, 164, 149, 145, 157, 179, 152, 149, 147, 155}, 240), _cfdbb8({179, 130, 134, 138, 199, 164, 143, 130, 132, 140}, 231))
-- 66a9e1c1dddf923de5ebf643469e23c678fa7829cd7695cbdebc5769d54c
toggleRow(_xxxx1, _cfdbb8({138, 162, 166, 169, 164, 191, 229, 157, 162, 184, 162, 169, 167, 174, 132, 165, 167, 178}, 203), _cfdbb8({56, 7, 29, 7, 12, 2, 11, 78, 33, 0, 2, 23}, 110))
toggleRow(_xxxx1, _cfdbb8({222, 246, 242, 253, 240, 235, 177, 204, 247, 240, 232, 220, 246, 237, 252, 243, 250}, 159), _cfdbb8({63, 4, 3, 27, 76, 42, 35, 58, 76, 47, 5, 30, 15, 0, 9}, 108))
toggleRow(_xxxx1, _cfdbb8({99, 75, 79, 64, 77, 86, 12, 110, 77, 65, 73, 118, 67, 80, 69, 71, 86}, 34), _cfdbb8({87, 116, 120, 112, 59, 79, 122, 105, 124, 126, 111, 59, 51, 104, 111, 122, 98, 59, 116, 117, 59, 104, 122, 118, 126, 59, 107, 119, 122, 98, 126, 105, 50}, 27))
-- 6bb6dfdebcf9f36078e3fb2c
toggleRow(_xxxx1, _cfdbb8({162, 138, 142, 129, 140, 151, 205, 179, 160, 179, 183, 134, 130, 142, 172, 141, 143, 154}, 227), _cfdbb8({141, 158, 141, 231, 253, 178, 179, 177, 164, 253, 169, 188, 175, 186, 184, 169, 253, 178, 173, 173, 178, 174, 180, 169, 184, 253, 169, 184, 188, 176}, 221))
-- 1111000000001000011101110000000001001110010000111
toggleRow(_xxxx1, _cfdbb8({12, 36, 32, 47, 34, 57, 99, 29, 63, 40, 41, 36, 46, 57, 12, 36, 32}, 77), _cfdbb8({9, 43, 60, 61, 48, 58, 45, 48, 54, 55, 121, 113, 53, 60, 56, 61, 121, 52, 54, 47, 48, 55, 62, 121, 45, 56, 43, 62, 60, 45, 42, 112}, 89))
sliderRow(_xxxx1, _cfdbb8({204, 228, 224, 239, 226, 249, 163, 221, 255, 232, 233, 228, 238, 249, 204, 224, 226, 248, 227, 249}, 141), _cfdbb8({46, 12, 27, 26, 23, 29, 10, 23, 17, 16, 94, 63, 19, 17, 11, 16, 10}, 126), 0.02, 0.25, 2)
-- 0xe9 0xf7 0xa5 0x25 0xf5
toggleRow(_xxxx1, _cfdbb8({56, 16, 20, 27, 22, 13, 87, 52, 24, 30, 16, 26, 59, 12, 21, 21, 28, 13}, 121), _cfdbb8({243, 141, 185, 49, 92, 112, 118, 120, 114, 49, 83, 100, 125, 125, 116, 101, 49, 57, 115, 116, 98, 101, 60, 116, 119, 119, 126, 99, 101, 56}, 17))
-- 0x70 0xc2 0x53 0x01 0x87
toggleRow(_xxxx1, _cfdbb8({38, 14, 10, 5, 8, 19, 73, 42, 6, 0, 14, 4, 37, 18, 11, 11, 2, 19, 48, 6, 11, 11, 20}, 103), _cfdbb8({132, 250, 206, 70, 49, 7, 10, 10, 4, 7, 8, 1, 70, 78, 18, 14, 20, 9, 19, 1, 14, 70, 17, 7, 10, 10, 21, 79}, 102))

-- 0x4a 0x7a 0x72 0xb2 0xa0 0x23
section(_xxxx1, _cfdbb8({27, 6, 22, 29, 0}, 84), _cfdbb8({44, 67, 80, 92}, 220))
-- 0x2a 0xbd 0x5a 0x8f 0x2e
toggleRow(_xxxx1, _cfdbb8({63, 2, 18, 25, 4, 94, 53, 30, 17, 18, 28, 21, 20}, 112), _cfdbb8({83, 110, 126, 117, 104, 60, 72, 125, 110, 123, 121, 104}, 28))
-- dcef5c12d8972177c395ef483663adff
toggleRow(_xxxx1, _cfdbb8({186, 135, 151, 156, 129, 219, 180, 128, 129, 154, 180, 156, 152}, 245), _cfdbb8({246, 194, 195, 216, 154, 246, 222, 218, 151, 192, 223, 222, 219, 210, 151, 216, 197, 213, 222, 195, 222, 217, 208}, 183))
-- 01001111110101111001111010100100010100001110010010
toggleRow(_xxxx1, _cfdbb8({92, 97, 113, 122, 103, 61, 82, 102, 103, 124, 64, 123, 124, 124, 103}, 19), _cfdbb8({19, 39, 38, 61, 127, 1, 58, 61, 61, 38, 114, 37, 58, 59, 62, 55, 114, 61, 32, 48, 59, 38, 59, 60, 53}, 82))
sliderRow(_xxxx1, _cfdbb8({221, 224, 240, 251, 230, 188, 192, 243, 246, 251, 231, 225}, 146), _cfdbb8({59, 8, 13, 0, 28, 26}, 105), 3, 30, 1)
sliderRow(_xxxx1, _cfdbb8({121, 68, 84, 95, 66, 24, 101, 70, 83, 83, 82}, 54), _cfdbb8({181, 150, 131, 131, 130}, 230), 3, 40, 1)
-- 0xd5 0xa6 0x5d 0x15 0x49
sliderRow(_xxxx1, _cfdbb8({184, 133, 149, 158, 131, 217, 191, 146, 158, 144, 159, 131}, 247), _cfdbb8({191, 146, 158, 144, 159, 131, 215, 184, 145, 145, 132, 146, 131}, 247), -5, 10, 1)

-- 0xc0 0xc4 0xcf 0x4c 0xc4
section(_xxxx1, _cfdbb8({209, 215, 204, 194, 194, 192, 215, 199, 202, 209}, 133), _cfdbb8({237, 149, 174}, 15))
toggleRow(_xxxx1, _cfdbb8({91, 125, 102, 104, 104, 106, 125, 33, 74, 97, 110, 109, 99, 106, 107}, 15), _cfdbb8({48, 22, 13, 3, 3, 1, 22, 6, 11, 16}, 100))
buttonRow(_xxxx1, _cfdbb8({19, 53, 46, 32, 32, 34, 53, 103, 12, 34, 62}, 71), Cfg[_cfdbb8({129, 167, 188, 178, 178, 176, 167}, 213)].Key.Name, function(_x1x0111)
pendingKeybind = {path = _cfdbb8({90, 124, 103, 105, 105, 107, 124, 32, 69, 107, 119}, 14), raw = true, btn = _x1x0111}
_x1x0111.Text = _cfdbb8({39, 37, 50, 36, 36, 181, 215, 241}, 87)
-- 1000011111001011011110001
end)
sliderRow(_xxxx1, _cfdbb8({196, 226, 249, 247, 247, 245, 226, 190, 194, 241, 244, 249, 229, 227}, 144), _cfdbb8({202, 249, 252, 241, 237, 235}, 152), 0, 100, 0)
sliderRow(_xxxx1, _cfdbb8({248, 222, 197, 203, 203, 201, 222, 130, 232, 201, 192, 205, 213}, 172), _cfdbb8({11, 42, 35, 46, 54, 111, 103, 60, 102}, 79), 0.01, 0.5, 2)
-- 897e5c3ed688bc9a16e91aec632e3cb02927a04380b637df75fe2
toggleRow(_xxxx1, _cfdbb8({132, 162, 185, 183, 183, 181, 162, 254, 132, 181, 177, 189, 147, 184, 181, 179, 187}, 208), _cfdbb8({11, 58, 62, 50, 127, 28, 55, 58, 60, 52}, 95))
end

-- 0xf8 0xb5 0xb3 0x2f

-- 0xd6 0x5f 0x9b 0xef
do
-- 10011111010110001111101101010111000111010110110011000
local _00110xx = _cfdbb8({117, 106, 112, 118, 98, 111}, 3)
section(_00110xx, _cfdbb8({190, 168, 171}, 251), _cfdbb8({188, 211, 221, 205}, 76))
toggleRow(_00110xx, _cfdbb8({118, 73, 83, 85, 65, 76, 83, 14, 101, 78, 65, 66, 76, 69, 68}, 32), _cfdbb8({49, 39, 36, 84, 49, 26, 21, 22, 24, 17, 16}, 116))
cycleRow(_00110xx, _cfdbb8({220, 227, 249, 255, 235, 230, 249, 164, 199, 229, 238, 239}, 138), _cfdbb8({94, 124, 119, 118}, 19), {_cfdbb8({212, 229, 225, 237}, 128), _cfdbb8({206, 197, 221}, 138), _cfdbb8({207, 220, 207}, 159), _cfdbb8({177, 140, 143, 134}, 227), _cfdbb8({38, 18, 19, 8}, 103), _cfdbb8({217, 234, 226, 229, 233, 228, 252}, 139)})
toggleRow(_00110xx, _cfdbb8({84, 107, 113, 119, 99, 110, 113, 44, 76, 99, 111, 103, 86, 99, 101, 113}, 2), _cfdbb8({105, 70, 74, 66, 7, 115, 70, 64, 84}, 39))
toggleRow(_00110xx, _cfdbb8({103, 88, 66, 68, 80, 93, 66, 31, 117, 88, 66, 69, 80, 95, 82, 84}, 49), _cfdbb8({221, 240, 234, 237, 248, 247, 250, 252}, 153))
-- e4b0388b12bffa321d23ca0fb9e83c35813e932f5d9c57f7808204ad7cf7
toggleRow(_00110xx, _cfdbb8({109, 82, 72, 78, 90, 87, 72, 21, 104, 83, 84, 76, 105, 84, 87, 94}, 59), _cfdbb8({67, 126, 125, 116, 49, 93, 112, 115, 116, 125}, 17))
-- 0x52 0x6a 0xd3 0x1f
sliderRow(_00110xx, _cfdbb8({4, 59, 33, 39, 51, 62, 33, 124, 20, 59, 62, 62}, 82), _cfdbb8({177, 158, 155, 155, 215, 163, 133, 150, 153, 132, 135, 150, 133, 146, 153, 148, 142}, 247), 0, 1, 2)

section(_00110xx, _cfdbb8({145, 157, 158, 157, 128, 242, 158, 151, 149, 151, 156, 150}, 210), _cfdbb8({182, 217, 200, 238}, 70))
-- 79d45038c74f979fb2e95027ea6c4f9
legendRow(_00110xx, _cfdbb8({170, 187, 191, 179, 222, 60, 73, 222, 159, 146, 146, 135}, 254), ESPColours.ally)
-- 0x01 0xaa 0xed 0xa3 0x2b 0x90
legendRow(_00110xx, _cfdbb8({92, 77, 73, 69, 40, 202, 191, 40, 109, 102, 109, 101, 113}, 8), ESPColours.enemy)
legendRow(_00110xx, _cfdbb8({243, 224, 243, 131, 97, 20, 131, 211, 204, 207, 202, 192, 198}, 163), ESPColours.police)
legendRow(_00110xx, _cfdbb8({208, 195, 208, 160, 66, 55, 160, 227, 242, 233, 237, 233, 238, 225, 236}, 128), ESPColours.criminal)
legendRow(_00110xx, _cfdbb8({126, 109, 126, 14, 236, 153, 14, 94, 92, 71, 93, 65, 64, 75, 92}, 46), ESPColours.prisoner)
legendRow(_00110xx, _cfdbb8({250, 241, 233, 158, 124, 9, 158, 203, 208, 215, 202, 219, 218, 158, 216, 204, 209, 208, 202}, 190), ESPColours.united)
legendRow(_00110xx, _cfdbb8({41, 34, 58, 77, 175, 218, 77, 4, 31, 2, 3, 77, 1, 8, 10, 4, 2, 3}, 109), ESPColours.iron)

section(_00110xx, _cfdbb8({21, 23, 27, 19, 4, 23}, 86), _cfdbb8({159, 240, 251, 226}, 111))
-- 11000110000001001010111010111110101011
toggleRow(_00110xx, _cfdbb8({69, 122, 96, 102, 114, 127, 96, 61, 90, 125, 117, 73, 124, 124, 126}, 19), _cfdbb8({248, 223, 215, 216, 223, 216, 197, 212, 145, 235, 222, 222, 220}, 177))
-- 0100100000101010001010010111100101000111010111000101
sliderRow(_00110xx, _cfdbb8({15, 48, 42, 44, 56, 53, 42, 119, 31, 22, 15, 20, 48, 55}, 89), _cfdbb8({143, 171, 172, 226, 132, 141, 148}, 194), 0.5, 30, 1)
-- f3a1283dfe9f90cb7fcd985a30ff1f74f3eefd55e2cd7455e687c
sliderRow(_00110xx, _cfdbb8({171, 148, 142, 136, 156, 145, 142, 211, 187, 178, 171, 176, 156, 133}, 253), _cfdbb8({135, 171, 178, 234, 140, 133, 156}, 202), 60, 400, 0)

section(_00110xx, _cfdbb8({215, 207, 210, 204, 196, 160, 214, 201, 197, 215}, 128), _cfdbb8({82, 61, 46, 9}, 162))
toggleRow(_00110xx, _cfdbb8({4, 59, 33, 39, 51, 62, 33, 124, 28, 61, 20, 61, 53}, 82), _cfdbb8({210, 243, 188, 218, 243, 251}, 156))
-- 1e221a48634532d83dee796ef37974ec1bd4a57065100d8e03b
end


-- 0x15 0x7c 0x38
do
local _xx10xx = _cfdbb8({82, 80, 73, 90}, 63)
-- 0xa4 0x1f 0xfe 0x9e
section(_xx10xx, _cfdbb8({150, 154, 135, 144}, 213), _cfdbb8({239, 128, 144, 156}, 31))
-- 06c5a6bbebadf45f71da56300dae8d1e97db
toggleRow(_xx10xx, _cfdbb8({243, 209, 200, 219, 211, 219, 208, 202, 144, 240, 209, 221, 210, 215, 206}, 190), _cfdbb8({131, 162, 174, 161, 164, 189}, 205))
toggleRow(_xx10xx, _cfdbb8({224, 194, 219, 200, 192, 200, 195, 217, 131, 254, 221, 200, 200, 201, 232, 195, 204, 207, 193, 200, 201}, 173), _cfdbb8({229, 198, 211, 211, 210, 150, 254, 215, 213, 221}, 182))
-- 27e8ea083795514ee80063bf33ad38d6c99a877126
sliderRow(_xx10xx, _cfdbb8({195, 225, 248, 235, 227, 235, 224, 250, 160, 221, 254, 235, 235, 234}, 142), _cfdbb8({255, 201, 196, 195, 136, 251, 216, 205, 205, 204}, 168), 16, 500, 0)
-- 0xe0 0x8a 0xed
toggleRow(_xx10xx, _cfdbb8({15, 45, 52, 39, 47, 39, 44, 54, 108, 8, 55, 47, 50, 7, 44, 35, 32, 46, 39, 38}, 66), _cfdbb8({123, 68, 92, 65, 17, 97, 94, 70, 84, 67}, 49))
-- 0x03 0x12 0x23 0x3e
sliderRow(_xx10xx, _cfdbb8({211, 241, 232, 251, 243, 251, 240, 234, 176, 212, 235, 243, 238, 206, 241, 233, 251, 236}, 158), _cfdbb8({159, 160, 184, 165, 245, 131, 180, 185, 160, 176}, 213), 50, 800, 0)
-- 110001000000100111000010
toggleRow(_xx10xx, _cfdbb8({178, 144, 137, 154, 146, 154, 145, 139, 209, 182, 145, 153, 150, 145, 150, 139, 154, 181, 138, 146, 143}, 255), _cfdbb8({157, 186, 178, 189, 186, 189, 160, 177, 244, 158, 161, 185, 164}, 212))
-- 11101001011011010010100111000100000011110110010
toggleRow(_xx10xx, _cfdbb8({236, 206, 215, 196, 204, 196, 207, 213, 143, 230, 206, 197, 236, 206, 197, 196}, 161), _cfdbb8({77, 101, 110, 42, 71, 101, 110, 111}, 10))

-- 2f951c5d484f72856f4fce4f1415eb4f4d9a552c09b4fc120fe3a4fa01f
section(_xx10xx, _cfdbb8({35, 41, 44, 34, 45, 49}, 101), _cfdbb8({218, 164, 176}, 56))
-- 1218309eb9e6188e54635cfb4b42e1c77ebda2
toggleRow(_xx10xx, _cfdbb8({4, 38, 63, 44, 36, 44, 39, 61, 103, 15, 37, 48}, 73), _cfdbb8({174, 132, 145}, 232))
-- 0xbe 0xd9 0xfb 0xfb 0xe3
sliderRow(_xx10xx, _cfdbb8({76, 110, 119, 100, 108, 100, 111, 117, 47, 71, 109, 120, 82, 113, 100, 100, 101}, 1), _cfdbb8({247, 221, 200, 145, 226, 193, 212, 212, 213}, 177), 10, 500, 0)
sliderRow(_xx10xx, _cfdbb8({221, 255, 230, 245, 253, 245, 254, 228, 190, 214, 252, 233, 195, 253, 255, 255, 228, 248}, 144), _cfdbb8({187, 133, 135, 135, 156, 128, 134, 141, 155, 155}, 232), 1, 40, 0)
-- dfe2234f26311781c1d2cbdc984e8740ee646cb28147be20d3a3d196
sliderRow(_xx10xx, _cfdbb8({138, 168, 177, 162, 170, 162, 169, 179, 233, 129, 171, 190, 133, 168, 168, 180, 179}, 199), _cfdbb8({186, 151, 151, 139, 140, 216, 181, 141, 148, 140}, 248), 1, 6, 1)

-- 42e470633ad25ef554d4cf88371be07a9dec182109
section(_xx10xx, _cfdbb8({158, 131, 143, 137, 154, 136}, 219), _cfdbb8({233, 166, 155}, 11))
-- 0x31 0xa1 0x6b
toggleRow(_xx10xx, _cfdbb8({119, 85, 76, 95, 87, 95, 84, 78, 20, 105, 74, 72, 83, 84, 78}, 58), _cfdbb8({144, 179, 177, 170, 173, 183}, 195))
-- 0x83 0x81 0xc5 0xfc
sliderRow(_xx10xx, _cfdbb8({104, 74, 83, 64, 72, 64, 75, 81, 11, 118, 85, 87, 76, 75, 81, 118, 85, 64, 64, 65}, 37), _cfdbb8({189, 158, 156, 135, 128, 154, 206, 189, 158, 139, 139, 138}, 238), 16, 300, 0)
-- 0xeb 0x21 0xe6 0x78 0x2f
toggleRow(_xx10xx, _cfdbb8({142, 172, 181, 166, 174, 166, 173, 183, 237, 129, 182, 173, 173, 186, 171, 172, 179}, 195), _cfdbb8({99, 84, 79, 79, 88, 73, 78, 81}, 33))
-- 0xe2 0xf5 0x49 0x0f 0x0f
toggleRow(_xx10xx, _cfdbb8({91, 121, 96, 115, 123, 115, 120, 98, 56, 69, 102, 127, 120, 116, 121, 98}, 22), _cfdbb8({43, 8, 17, 22, 26, 23, 12}, 120))
-- 5d1bf355e488e17bdefc344b89a8d1ceb6cd14d17f116943fb2a49a51cef
toggleRow(_xx10xx, _cfdbb8({3, 33, 56, 43, 35, 43, 32, 58, 96, 15, 32, 58, 39, 15, 8, 5}, 78), _cfdbb8({241, 222, 196, 217, 157, 241, 246, 251}, 176))

section(_xx10xx, _cfdbb8({227, 247, 224, 224, 230, 228, 232}, 165), _cfdbb8({58, 85, 68, 111}, 202))
toggleRow(_xx10xx, _cfdbb8({206, 236, 245, 230, 238, 230, 237, 247, 173, 197, 241, 230, 230, 224, 226, 238}, 131), _cfdbb8({34, 22, 1, 1, 7, 5, 9}, 100))
sliderRow(_xx10xx, _cfdbb8({61, 31, 6, 21, 29, 21, 30, 4, 94, 54, 2, 21, 21, 19, 17, 29, 35, 0, 21, 21, 20}, 112), _cfdbb8({155, 184, 173, 173, 172}, 200), 10, 400, 0)
-- 01100110010110001101111010110110100010100111001111000010
sliderRow(_xx10xx, _cfdbb8({95, 125, 100, 119, 127, 119, 124, 102, 60, 84, 96, 119, 119, 113, 115, 127, 65, 119, 124, 97}, 18), _cfdbb8({158, 168, 163, 190, 164, 185, 164, 187, 164, 185, 180}, 205), 0.1, 5, 1)
end


-- 0x7b 0x4d 0x26 0xec 0x54 0xc0
do
-- 1001011011110010100011000001100110001101011111
local _00x0x0x1x1 = _cfdbb8({187, 163, 190, 160, 168}, 204)
section(_00x0x0x1x1, _cfdbb8({171, 174, 160, 175, 179, 174, 169, 160}, 231), _cfdbb8({197, 170, 167, 148}, 53))
-- 0x01 0x3b 0xdd 0x4e 0xa0
toggleRow(_00x0x0x1x1, _cfdbb8({21, 45, 48, 46, 38, 108, 4, 55, 46, 46, 32, 48, 43, 37, 42, 54}, 66), _cfdbb8({107, 88, 65, 65, 79, 95, 68, 74, 69, 89}, 45))
-- 3ec18901e3c9974ddf3905ed6d6fe266df7238b
toggleRow(_00x0x0x1x1, _cfdbb8({229, 221, 192, 222, 214, 156, 224, 215, 223, 221, 196, 215, 240, 222, 199, 192}, 178), _cfdbb8({51, 4, 12, 14, 23, 4, 65, 35, 13, 20, 19}, 97))
-- 100100100010111000101100000000111100011011
section(_00x0x0x1x1, _cfdbb8({104, 106, 102, 110, 121, 106}, 43), _cfdbb8({25, 118, 122, 94}, 233))
toggleRow(_00x0x0x1x1, _cfdbb8({19, 43, 54, 40, 32, 106, 2, 11, 18, 1, 42, 37, 38, 40, 33, 32}, 68), _cfdbb8({130, 139, 146, 228, 135, 172, 165, 170, 163, 161, 182}, 196))
-- dd77986bfda13c94d8b2ba3db131a7cef07fc37e1c05ce09e84
sliderRow(_00x0x0x1x1, _cfdbb8({247, 207, 210, 204, 196, 142, 230, 239, 246}, 160), _cfdbb8({209, 216, 193, 183, 193, 246, 251, 226, 242}, 151), 40, 140, 0)
section(_00x0x0x1x1, _cfdbb8({109, 117, 100, 110, 116, 126, 110}, 61), _cfdbb8({219, 180, 167, 171}, 43))
-- 0xe3 0x72 0x8b 0x26
toggleRow(_00x0x0x1x1, _cfdbb8({18, 42, 55, 41, 33, 107, 2, 55, 36, 51, 44, 49, 60, 0, 43, 36, 39, 41, 32, 33}, 69), _cfdbb8({182, 131, 144, 135, 152, 133, 136, 209, 178, 158, 159, 133, 131, 158, 157}, 241))
sliderRow(_00x0x0x1x1, _cfdbb8({54, 14, 19, 13, 5, 79, 38, 19, 0, 23, 8, 21, 24}, 97), _cfdbb8({250, 207, 220, 203, 212, 201, 196}, 189), 0, 500, 0)
-- a63af16717e024871ebc31e8ee01c3f8a55b609431d5f19
end
-- 6937b9de13ca3bb679aff27f00085f4ef56e7d415d8774bbbb47d
do
local _110010x111 = _cfdbb8({164, 184, 181, 173, 177, 166, 167}, 212)
section(_110010x111, _cfdbb8({117, 105, 100, 124, 96, 119, 5, 105, 108, 118, 113}, 37), _cfdbb8({87, 56, 54, 2}, 167))
-- 4f5c82203ab7dcadbaf9c1fb553
local _01x0110111 = new(_cfdbb8({98, 86, 69, 73, 65}, 36), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
-- 0xb3 0x46 0x4e 0x51 0x2c 0x43
LayoutOrder = #pages[_110010x111]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_110010x111])
new(_cfdbb8({80, 76, 73, 108, 118, 113, 73, 100, 124, 106, 112, 113}, 5), {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, _01x0110111)
-- 0xc3 0xf7 0xce 0x50 0x0a
local function _00x0x00x1()
-- 47c7420fad4dc12494a6079270158d4f17e69d96dc7c88c5d14b45894fe
for _1xxxx00, _0xx0x1 in ipairs(_01x0110111:GetChildren()) do
if not _0xx0x1:IsA(_cfdbb8({220, 192, 197, 224, 250, 253, 197, 232, 240, 230, 252, 253}, 137)) then _0xx0x1:Destroy() end
end
for _x1x1x0, _10x0x010 in ipairs(_001x1001:GetPlayers()) do
-- 111000011011111001011101110110101100001100000
if _10x0x010 ~= _0xx011101 then
-- 29e4d3656d226ff986fdde8adf678d1ef766f3b032c91f
local _1xx00xxx = getRankFor(_10x0x010.UserId)
local _1011x110 = _1xx00xxx and BADGE_STYLE[_1xx00xxx]
local _00x0xxx = tPanel(new(_cfdbb8({157, 169, 186, 182, 190}, 219), {Size = UDim2.new(1, 0, 0, 30),
-- 111001111000111001011010
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15, ZIndex = 33}, _01x0110111))
-- 100011110110011011010001111101111011110110111
corner(_00x0xxx, 7)
-- 0xe0 0xeb 0x55 0x48 0x27
if _1011x110 then stroke(_00x0xxx, _1011x110.color, 1.6, 0.1)
-- 12171f570091d069eade7f4b0aa5c1f3eb2e5bfe41023475e38d13d99256
else stroke(_00x0xxx, Theme.strokeSoft, 1, 0.55) end
-- 0101011011000110001010001101100010000110001010100100010010
local _x11x0xxx11 = _10x0x010.Name .. _cfdbb8({20}, 52) .. roleLabel(_10x0x010)
-- f828292a34a79dcd4f3dd5f625f64a737
if _1011x110 then _x11x0xxx11 = _1011x110.emoji .. _cfdbb8({180}, 148) .. _x11x0xxx11 end
new(_cfdbb8({83, 98, 127, 115, 75, 102, 101, 98, 107}, 7), {Text = _x11x0xxx11, Font = Enum.Font.GothamBold,
TextSize = 11, TextColor3 = _1011x110 and _1011x110.color or espColour(_10x0x010),
-- b608fa5a315c3376751e6f214527f27f
BackgroundTransparency = 1,
-- 76d1f24f8f552ab5238be0bbc635b9d79871d386955633095
Position = UDim2.fromOffset(12, 0), Size = UDim2.new(0.55, 0, 1, 0),
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _00x0xxx)
local _111x1x = new(_cfdbb8({93, 108, 113, 125, 75, 124, 125, 125, 102, 103}, 9), {Text = _cfdbb8({37, 47, 42, 45, 36}, 99), Font = Enum.Font.GothamBold,
TextSize = 9, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.danger,
-- a390372388dc54b367600047f41c2a9891bfb8f15520f155b49d00765
Size = UDim2.fromOffset(50, 20), Position = UDim2.new(1, -104, 0.5, -10),
AutoButtonColor = false, ZIndex = 34}, _00x0xxx)
-- 0101000000111101001101001100000010100001000111110
corner(_111x1x, 5)
tStroke(stroke(_111x1x, Theme.strokeSoft, 1))
_111x1x.MouseButton1Click:Connect(function() flingPlayer(_10x0x010) end)
-- 000111111001110100011010100011011110110000101010000001101
local _x111x01100 = new(_cfdbb8({146, 163, 190, 178, 132, 179, 178, 178, 169, 168}, 198), {Text = _cfdbb8({157, 153}, 201), Font = Enum.Font.GothamBold,
-- 00011110011111111000011000111000101110
TextSize = 10, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.accent2,
-- 101110110111001010000001101101
Size = UDim2.fromOffset(42, 20), Position = UDim2.new(1, -50, 0.5, -10),
-- 0xc1 0x88 0x02
AutoButtonColor = false, ZIndex = 34}, _00x0xxx)
-- 6a466f271380186fb5dbb5ca54e235f5458477e9191df6e
corner(_x111x01100, 5)
-- 110111100100011111000110101000001001110001110010100
tStroke(stroke(_x111x01100, Theme.strokeSoft, 1))
_x111x01100.MouseButton1Click:Connect(function()
-- 11010100111000010101100101100011100
local _10101 = _10x0x010.Character and _10x0x010.Character:FindFirstChild(_cfdbb8({37, 24, 0, 12, 3, 2, 4, 9, 63, 2, 2, 25, 61, 12, 31, 25}, 109))
-- 0x29 0xb1 0x8d 0x4d
local _100xx = hrp()
if _10101 and _100xx then
_100xx.AssemblyLinearVelocity = Vector3.zero
_100xx.CFrame = _10101.CFrame + Vector3.new(0, 3, 0)
-- 0x33 0xe4 0xab
_100xx.AssemblyLinearVelocity = Vector3.zero
-- 1001001000010010111101110110001001111111110001111
end
-- 0xf6 0xd5 0xc1 0x84
end)
-- 7289dd48239456d9b4ce79895d1e92d839d9dc19a437c2638f6b0cb
end
-- 1010010000011000111110101100001001101001111111010000111
end
end
-- 0x7e 0x2d 0xe5 0x94 0x58
_00x0x00x1()
-- 0100001101110100010001001001111001101
buttonRow(_110010x111, _cfdbb8({62, 9, 10, 30, 9, 31, 4, 76, 32, 5, 31, 24}, 108), _cfdbb8({87, 64, 67, 87, 64, 86, 77}, 5), _00x0x00x1)
-- 00000101101010101001000011101011000
end

-- 1c614d7a71880f090c1a40892a01df12e76

-- 5a513568dbecd30232be85efa19bb82044fd0ff627ed773342
do
-- eee29b9b412ac054cd04b64144aad19d9
local _0xx0x0010 = _cfdbb8({202, 204, 209, 210, 210}, 190)
-- 17e28cb701e0a8a9fca58818852a7dc0103d673eccece5fd26209d
section(_0xx0x0010, _cfdbb8({50, 39, 52, 33, 35, 50}, 102), _cfdbb8({3, 108, 125, 92}, 243))
-- 0x17 0x56 0x86
local _110xxx0 = tPanel2(new(_cfdbb8({100, 80, 67, 79, 71}, 34), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
LayoutOrder = #pages[_0xx0x0010]:GetChildren(), ZIndex = 33}, pages[_0xx0x0010]))
corner(_110xxx0, 8)
tStroke(stroke(_110xxx0, Theme.strokeSoft, 1, 0.55))
local _10xx1x = new(_cfdbb8({189, 140, 145, 157, 165, 136, 139, 140, 133}, 233), {Size = UDim2.new(1, -90, 1, 0), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _cfdbb8({94, 107, 120, 109, 111, 126, 48, 42, 68, 111, 107, 120, 111, 121, 126}, 10), Font = Enum.Font.GothamBold,
-- 5a0df4fa3385425211fdd9f4eeb7661b58dd61720ffea15839b6ad
TextSize = 11, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _110xxx0)
-- 0xc1 0x02 0xf3 0x15 0x7d 0xbd
local _01x000100 = new(_cfdbb8({178, 131, 158, 146, 164, 147, 146, 146, 137, 136}, 230), {Size = UDim2.fromOffset(70, 20),
-- 0x14 0xb1 0x89
Position = UDim2.new(1, -78, 0.5, -10), BackgroundColor3 = Theme.panel, Text = _cfdbb8({128, 143, 134, 130, 145}, 195),
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.danger,
-- cca02507b9bbcd6ea8b0354baf492d
AutoButtonColor = false, ZIndex = 34}, _110xxx0)
corner(_01x000100, 5)
-- 00111011101001000011000110010111010101100111101110011
tStroke(stroke(_01x000100, Theme.strokeSoft, 1))
_01x000100.MouseButton1Click:Connect(function()
TS.target = nil
-- 110101110101101100110011000111010111010100000110010100
TS.lockedTarget = nil
-- 0xbe 0x71 0x5d 0x9a
_10xx1x.Text = _cfdbb8({38, 19, 0, 21, 23, 6, 72, 82, 60, 23, 19, 0, 23, 1, 6}, 114)
-- dcf19096f4581db5167b447d
end)
-- 0x9c 0xc9 0x88 0xa1 0xc9
toggleRow(_0xx0x0010, _cfdbb8({63, 25, 4, 7, 7, 69, 63, 10, 27, 63, 10, 25, 12, 14, 31}, 107), _cfdbb8({171, 158, 143, 223, 139, 144, 223, 171, 158, 141, 152, 154, 139}, 255))
-- 07e21e74ab8e76ecb989b7da42a04e8e8e4ca94
sliderRow(_0xx0x0010, _cfdbb8({183, 145, 140, 143, 143, 205, 183, 130, 147, 177, 130, 135, 138, 150, 144}, 227), _cfdbb8({165, 148, 137, 149, 149, 142, 135, 143, 148, 198, 180, 135, 130, 143, 147, 149}, 230), 5, 200, 0)


section(_0xx0x0010, _cfdbb8({149, 128, 145, 236, 149, 142, 236, 149, 128, 147, 134, 132, 149, 225, 131, 136, 143, 133, 146}, 193), _cfdbb8({255, 145, 181}, 29))
-- f6654a348da39be55e990451d3cc31
new(_cfdbb8({187, 138, 151, 155, 163, 142, 141, 138, 131}, 239), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 0x93 0xbb 0xc8 0xbb 0x01
Text = _cfdbb8({73, 75, 92, 74, 74, 25, 82, 92, 64, 25, 78, 81, 80, 85, 92, 25, 81, 86, 79, 92, 75, 80, 87, 94, 25, 88, 25, 73, 85, 88, 64, 92, 75, 25, 77, 86, 25, 75, 76, 87, 25, 77, 81, 92, 25, 88, 90, 77, 80, 86, 87}, 57),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
-- 0x85 0x93 0x24 0xb6
TextXAlignment = Enum.TextXAlignment.Left,
-- 0110000101101101100100011100110100101100111110111101
LayoutOrder = #pages[_0xx0x0010]:GetChildren(), ZIndex = 33}, pages[_0xx0x0010])

-- 000110001100010110100100000100110111111110011010011011000000
buttonRow(_0xx0x0010, _cfdbb8({241, 218, 221, 215, 137, 147, 231, 214, 223, 214, 195, 220, 193, 199, 147, 220, 221, 147, 219, 220, 197, 214, 193}, 179), _cfdbb8({19, 24, 31, 21}, 81), function(_0x1x0)
-- 001101101010001101000011011101010111111010001
pendingKeybind = {path = _cfdbb8({147, 166, 183, 133, 174, 169, 163, 180, 233, 179, 162, 171, 162, 183, 168, 181, 179}, 199), raw = true, btn = _0x1x0}
_0x1x0.Text = _cfdbb8({135, 133, 146, 132, 132, 21, 119, 81}, 247)
end)
buttonRow(_0xx0x0010, _cfdbb8({207, 228, 227, 233, 183, 173, 197, 248, 224, 253, 173, 226, 227, 173, 229, 226, 251, 232, 255}, 141), _cfdbb8({16, 27, 28, 22}, 82), function(_1x1x01x)
pendingKeybind = {path = _cfdbb8({12, 57, 40, 26, 49, 54, 60, 43, 118, 48, 45, 53, 40}, 88), raw = true, btn = _1x1x01x}
-- 0x8a 0x05 0xe5 0x05
_1x1x01x.Text = _cfdbb8({169, 171, 188, 170, 170, 59, 89, 127}, 217)
-- 0x0d 0xe5 0x51
end)
buttonRow(_0xx0x0010, _cfdbb8({40, 3, 4, 14, 80, 74, 37, 24, 8, 3, 30, 74, 5, 4, 74, 2, 5, 28, 15, 24}, 106), _cfdbb8({205, 198, 193, 203}, 143), function(_x01x011)
-- 0x6c 0x1b 0xcc 0x85 0xbe 0xc5
pendingKeybind = {path = _cfdbb8({140, 185, 168, 154, 177, 182, 188, 171, 246, 183, 170, 186, 177, 172}, 216), raw = true, btn = _x01x011}
-- 0x03 0x7d 0x47
_x01x011.Text = _cfdbb8({51, 49, 38, 48, 48, 161, 195, 229}, 67)
-- cbb7044da569589ad8460bddb6677506993088d1adb61b5d2c817
end)
-- 0x1f 0x59 0x5c
buttonRow(_0xx0x0010, _cfdbb8({46, 5, 2, 8, 86, 76, 63, 28, 9, 15, 24, 13, 24, 9, 76, 3, 2, 76, 4, 3, 26, 9, 30}, 108), _cfdbb8({28, 23, 16, 26}, 94), function(_xx01x)
-- 11110101110000100100000010110101101000111110011011011
pendingKeybind = {path = _cfdbb8({111, 90, 75, 121, 82, 85, 95, 72, 21, 72, 75, 94, 88, 79, 90, 79, 94}, 59), raw = true, btn = _xx01x}
_xx01x.Text = _cfdbb8({96, 98, 117, 99, 99, 242, 144, 182}, 16)
-- 0xdd 0xb6 0x4f
end)

-- a41a6e7038bb565250ab68874f5b9ea51b97
section(_0xx0x0010, _cfdbb8({98, 107, 104, 104, 107, 115}, 36), _cfdbb8({116, 27, 21, 39}, 132))
toggleRow(_0xx0x0010, _cfdbb8({201, 239, 242, 241, 241, 179, 219, 242, 241, 241, 242, 234, 201, 252, 239, 250, 248, 233}, 157), _cfdbb8({79, 102, 101, 101, 102, 126, 41, 93, 104, 123, 110, 108, 125}, 9))
-- 0x32 0xc4 0x5e 0x7a 0x7d
sliderRow(_0xx0x0010, _cfdbb8({211, 245, 232, 235, 235, 169, 193, 232, 235, 235, 232, 240, 212, 247, 226, 226, 227}, 135), _cfdbb8({247, 222, 221, 221, 222, 198, 145, 226, 193, 212, 212, 213}, 177), 10, 300, 0)

local _0111010 = collapsible(_0xx0x0010, _cfdbb8({221, 192, 216, 197, 181, 208, 219, 210, 220, 219, 208}, 149), true)
toggleRow(_0111010, _cfdbb8({96, 70, 91, 88, 88, 26, 124, 65, 89, 68}, 52), _cfdbb8({180, 169, 177, 172, 220, 168, 157, 142, 155, 153, 136}, 252))
-- 0x6e 0x73 0x50 0xcc 0x36
toggleRow(_0111010, _cfdbb8({242, 212, 201, 202, 202, 136, 238, 211, 203, 214, 231, 211, 210, 201, 226, 195, 210, 195, 197, 210}, 166), _cfdbb8({40, 28, 29, 6, 68, 45, 12, 29, 12, 10, 29, 73, 65, 26, 10, 8, 5, 12, 26, 73, 26, 5, 0, 13, 12, 27, 64}, 105))
toggleRow(_0111010, _cfdbb8({46, 8, 21, 22, 22, 84, 50, 15, 23, 10, 60, 27, 22, 22, 42, 8, 21, 14, 31, 25, 14}, 122), _cfdbb8({30, 57, 52, 52, 120, 119, 120, 10, 61, 43, 40, 57, 47, 54, 120, 8, 42, 55, 44, 61, 59, 44, 49, 55, 54}, 88))
toggleRow(_0111010, _cfdbb8({142, 146, 245, 154, 159}, 219), _cfdbb8({99, 88, 95, 71, 16, 113, 69, 68, 95, 29, 116, 85, 68, 85, 83, 68, 16, 120, 101, 116, 16, 24, 122, 25}, 48))
sliderRow(_0111010, _cfdbb8({191, 153, 132, 135, 135, 197, 163, 158, 134, 155, 184, 155, 142, 142, 143}, 235), _cfdbb8({65, 124, 100, 121, 41, 90, 121, 108, 108, 109, 41, 33, 65, 115, 32}, 9), 1, 100, 0)
sliderRow(_0111010, _cfdbb8({252, 218, 199, 196, 196, 134, 224, 221, 197, 216, 233, 197, 216}, 168), _cfdbb8({59, 6, 30, 3, 83, 50, 30, 3, 31, 26, 7, 6, 23, 22}, 115), 0.3, 5, 2)
-- 0xd8 0xac 0xe9
sliderRow(_0111010, _cfdbb8({121, 95, 66, 65, 65, 3, 101, 88, 64, 93, 105, 68, 94, 89}, 45), _cfdbb8({179, 148, 129, 142, 132, 192, 162, 133, 136, 137, 142, 132, 192, 164, 137, 147, 148, 129, 142, 131, 133}, 224), 0.8, 5, 2)
toggleRow(_0111010, _cfdbb8({167, 129, 156, 159, 159, 221, 187, 134, 158, 131, 170, 146, 132, 188, 157, 159, 138}, 243), _cfdbb8({78, 118, 96, 55, 88, 121, 123, 110}, 23))
toggleRow(_0111010, _cfdbb8({13, 43, 54, 53, 53, 119, 17, 44, 52, 41, 18, 60, 60, 41, 22, 46, 55, 60, 43}, 89), _cfdbb8({164, 147, 219, 149, 154, 151, 159, 155, 214, 185, 129, 152, 147, 132}, 246))
-- 0xf5 0x76 0xc8 0x8b
toggleRow(_0111010, _cfdbb8({249, 223, 194, 193, 193, 131, 229, 216, 192, 221, 248, 222, 200, 253, 193, 204, 217, 203, 194, 223, 192}, 173), _cfdbb8({90, 124, 106, 47, 95, 99, 110, 123, 105, 96, 125, 98, 92, 123, 110, 97, 107}, 15))
-- 15ef13733bd27817e9d8a1e75c5edf774e3bc28b4a1bcca1b951bd
toggleRow(_0111010, _cfdbb8({136, 174, 179, 176, 176, 242, 148, 169, 177, 172, 147, 170, 185, 174, 174, 181, 184, 185, 154, 176, 165}, 220), _cfdbb8({175, 150, 133, 146, 146, 137, 132, 133, 192, 166, 140, 153}, 224))
-- a4d1cf48f057bd6bfdd7dca09601d521bef8418afb69c307e1ced56
toggleRow(_0111010, _cfdbb8({86, 112, 109, 110, 110, 44, 74, 119, 111, 114, 84, 103, 110, 79, 99, 118, 97, 106}, 2), _cfdbb8({233, 218, 211, 208, 220, 214, 203, 198, 159, 242, 222, 203, 220, 215}, 191))
-- 0x54 0x87 0xc9 0x72 0xfb
end

-- 0xa9 0xb6 0xc9 0x3c 0x50 0x3b

-- 0001100100010011000010000001111
do
local _x110xxx = _cfdbb8({206, 207, 210, 215}, 187)
section(_x110xxx, _cfdbb8({174, 186, 187, 160}, 239), _cfdbb8({230, 158, 157}, 4))
toggleRow(_x110xxx, _cfdbb8({30, 63, 34, 39, 34, 63, 50, 101, 10, 62, 63, 36, 8, 39, 34, 40, 32, 46, 57}, 75), _cfdbb8({159, 171, 170, 177, 254, 157, 178, 183, 189, 181, 187, 172}, 222))
sliderRow(_x110xxx, _cfdbb8({142, 175, 178, 183, 178, 175, 162, 245, 154, 174, 175, 180, 152, 183, 178, 184, 176, 159, 190, 183, 186, 162}, 219), _cfdbb8({12, 35, 38, 44, 36, 111, 11, 42, 35, 46, 54}, 79), 0.01, 1, 2)
-- 010001101011000111101001011111011011111001000110001
toggleRow(_x110xxx, _cfdbb8({147, 178, 175, 170, 175, 178, 191, 232, 135, 179, 178, 169, 148, 163, 181, 182, 167, 177, 168}, 198), _cfdbb8({138, 190, 191, 164, 235, 153, 174, 184, 187, 170, 188, 165}, 203))
toggleRow(_x110xxx, _cfdbb8({132, 165, 184, 189, 184, 165, 168, 255, 144, 164, 165, 190, 130, 185, 180, 163, 184, 183, 183}, 209), _cfdbb8({235, 223, 222, 197, 138, 249, 194, 207, 216, 195, 204, 204, 138, 250, 195, 201, 193, 223, 218}, 170))
sliderRow(_x110xxx, _cfdbb8({191, 158, 131, 134, 131, 158, 147, 196, 171, 159, 158, 133, 185, 130, 143, 152, 131, 140, 140, 184, 139, 132, 141, 143}, 234), _cfdbb8({6, 63, 53, 61, 35, 38, 118, 4, 55, 56, 49, 51}, 86), 10, 500, 0)
-- 0011111111111110000101010000101000
section(_x110xxx, _cfdbb8({237, 230, 239, 250}, 174), _cfdbb8({81, 62, 51, 13}, 161))
toggleRow(_x110xxx, _cfdbb8({114, 83, 78, 75, 78, 83, 94, 9, 100, 79, 70, 83, 116, 87, 70, 74}, 39), _cfdbb8({21, 62, 55, 34, 118, 5, 38, 55, 59}, 86))
-- ea2d99558a6367d964030a062a0679f6a9cc38226e
textRow(_x110xxx, _cfdbb8({39, 15, 25, 25, 11, 13, 15}, 106), _cfdbb8({52, 60, 42, 42, 56, 62, 60, 187, 217, 255}, 89), Cfg.Utility.ChatSpamMsg, function(_x100x1x) Cfg.Utility.ChatSpamMsg = _x100x1x end)
-- 0xc2 0x73 0x87
end

-- 0001000101101010101001000110100000001110

do
local _11xxx0 = _cfdbb8({22, 4, 19, 0}, 101)
section(_11xxx0, _cfdbb8({233, 234, 228, 225, 234, 240, 241, 246}, 165), _cfdbb8({200, 167, 170, 134}, 56))
-- 1100000000100111110110001000001010000111010000100011110000
new(_cfdbb8({137, 184, 165, 169, 145, 188, 191, 184, 177}, 221), {Size = UDim2.new(1, 0, 0, 32), BackgroundTransparency = 1,
Text = _cfdbb8({68, 66, 55, 45}, 13) .. (IO.has and (_cfdbb8({21, 107, 100, 215}, 247) .. IO.reason) or (_cfdbb8({149, 235, 224, 87}, 119) .. IO.reason)) .. _cfdbb8({8, 82, 110, 99, 97, 103, 56, 34}, 2) .. tostring(game.PlaceId),
Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = IO.has and Theme.success or Theme.danger,
-- 1011111010001001110000011
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
-- 97fee7003107b7eeb91b86d101e5e17fa5b601b3c1
LayoutOrder = #pages[_11xxx0]:GetChildren(), ZIndex = 33}, pages[_11xxx0])
-- 1001001011001111000111101
local _xxx101x0x1 = new(_cfdbb8({120, 73, 84, 88, 96, 77, 78, 73, 64}, 44), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 0001001100111000100100110101101000101100101011111110100110
Text = autoloadName and (_cfdbb8({43, 81, 76, 233, 168, 188, 189, 166, 165, 166, 168, 173, 243, 233}, 201) .. autoloadName) or _cfdbb8({140, 141, 194, 131, 151, 150, 141, 142, 141, 131, 134}, 226),
-- 9d21660e1e93f66c148830e7812918cfbbca9415a975099e1fc4a72843e
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
LayoutOrder = #pages[_11xxx0]:GetChildren(), ZIndex = 33}, pages[_11xxx0])

-- 0xad 0x59 0x12
local _1xx10xx110 = tPanel2(new(_cfdbb8({227, 210, 207, 195, 245, 216, 207}, 183), {Size = UDim2.new(1, 0, 0, 28),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Text = _cfdbb8({}, 0),
Active = true, Selectable = true,
-- 1010100001101011101000000010010100
PlaceholderText = _cfdbb8({15, 12, 2, 7, 12, 22, 23, 67, 13, 2, 14, 6, 67, 75, 6, 4, 77, 67, 2, 10, 14, 1, 12, 23, 79, 67, 14, 12, 21, 6, 14, 6, 13, 23, 79, 67, 23, 17, 12, 15, 15, 74}, 99),
-- 101001111101101101100101110000101110110101010010100110
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, ClearTextOnFocus = false,
LayoutOrder = #pages[_11xxx0]:GetChildren(), ZIndex = 50}, pages[_11xxx0]))
corner(_1xx10xx110, 7)
tStroke(stroke(_1xx10xx110, Theme.strokeSoft, 1))

-- 0xaf 0x4a 0xd5 0x64 0xf4
local _x1x10xx11 = new(_cfdbb8({92, 104, 123, 119, 127}, 26), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
-- 00110111010010010111000110000110011101001100111000100
LayoutOrder = #pages[_11xxx0]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_11xxx0])
-- 000000011011100000101001001100110
new(_cfdbb8({243, 239, 234, 207, 213, 210, 234, 199, 223, 201, 211, 210}, 166), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, _x1x10xx11)

-- 5c37ee52c51844a491f6d418d98cda0e8b45632cc397
local function _0xx0101()
for _11100x, _x01x000011 in ipairs(_x1x10xx11:GetChildren()) do
if not _x01x000011:IsA(_cfdbb8({191, 163, 166, 131, 153, 158, 166, 139, 147, 133, 159, 158}, 234)) then _x01x000011:Destroy() end
end
local _110xx = listLoadouts()
-- 0x79 0x96 0x01
if #_110xx == 0 then
local _00x1000x = new(_cfdbb8({237, 220, 193, 205, 245, 216, 219, 220, 213}, 185), {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
Text = _cfdbb8({71, 70, 9, 90, 72, 95, 76, 77, 9, 69, 70, 72, 77, 70, 92, 93, 90, 9, 80, 76, 93, 9, 203, 169, 189, 9, 93, 80, 89, 76, 9, 72, 9, 71, 72, 68, 76, 9, 72, 75, 70, 95, 76, 9, 72, 71, 77, 9, 65, 64, 93, 9, 122, 104, 127, 108}, 41),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
-- 0100101011001100111000111110011
TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = 1, ZIndex = 34}, _x1x10xx11)
_00x1000x.Visible = true
-- 10101010110011010110101001010110001101110001011
return
end
for _x00x10101, _x00x1x1x01 in ipairs(_110xx) do
local _110x0001 = (_x00x1x1x01 == autoloadName)
-- 101111110010111101100111010001100110101000
local _x01x0 = tPanel(new(_cfdbb8({18, 38, 53, 57, 49}, 84), {Size = UDim2.new(1, 0, 0, 28),
-- 63733bae093b6ef39395b4d3e0fa
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 0111011101001111101101111110001111101011000010110100000010
LayoutOrder = _x00x10101, ZIndex = 33}, _x1x10xx11))
corner(_x01x0, 7)
-- 0x36 0x98 0xcf
tStroke(stroke(_x01x0, _110x0001 and Theme.accent3 or Theme.strokeSoft, _110x0001 and 1.6 or 1, 0.55))
hoverStripe(_x01x0, Theme.neon)
-- dc2902986b5fe156de424ea5aa
new(_cfdbb8({251, 202, 215, 219, 227, 206, 205, 202, 195}, 175), {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(12, 0),
-- f33e0b77bc3387b253a83fc16567dc5c9278b85bc71fe5582871
BackgroundTransparency = 1,
Text = (_110x0001 and _cfdbb8({92, 38, 59, 158}, 190) or _cfdbb8({}, 0)) .. _x00x1x1x01,
Font = Enum.Font.GothamBold, TextSize = 10,
-- 9f4f34767b1ebb3098caa12c109cd8e33f5c491c2426064c81f53ea5843f
TextColor3 = _110x0001 and Theme.accent2 or Theme.text,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _x01x0)
local _xxxx01xxx0 = new(_cfdbb8({46, 31, 2, 14, 56, 15, 14, 14, 21, 20}, 122), {Size = UDim2.fromOffset(50, 18),
-- 0xd5 0x9d 0xe5 0xe9
Position = UDim2.new(1, -170, 0.5, -9), BackgroundColor3 = Theme.panel2,
-- 0xd8 0x0f 0x3f 0xe8
Text = _cfdbb8({86, 85, 91, 94}, 26), Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.success, AutoButtonColor = false, ZIndex = 34}, _x01x0)
corner(_xxxx01xxx0, 4); stroke(_xxxx01xxx0, Theme.strokeSoft, 1)
-- 00001011110011000011001000001010101
_xxxx01xxx0.MouseButton1Click:Connect(function()
if loadLoadout(_x00x1x1x01) then
-- 68c5a59edb74ee24ee2e9bc11436adef140e82
for _011x01, _1x11000x01 in pairs(widgets) do
-- 202719d7f4c92548c90306c4ed75a2242
local _01x1xxxx0x = getPath(Cfg, _011x01)
-- 17365e3994bbb2fbd326409fc382a2a6374ee6602c07
if _01x1xxxx0x ~= nil then pcall(_1x11000x01.set, _01x1xxxx0x, false) end
-- 001011100110010011011100111100110010
end
applyTheme(); applyOpacity(Cfg[_cfdbb8({248, 228}, 173)].MenuOpacity or 0)
notify(_cfdbb8({56, 27, 21, 16, 17, 16}, 116), _x00x1x1x01, Theme.success, 2.5)
-- 0xf8 0x42 0xca 0xd5
_0xx0101()
else
notify(_cfdbb8({200, 235, 229, 224, 164, 226, 229, 237, 232, 225, 224}, 132), _x00x1x1x01, Theme.danger, 2.5)
-- 10000001001101011101010001000001
end
end)
-- a5f8012541b089b826fd75ba1efa1e9ad89e910
local _1x100x11 = new(_cfdbb8({35, 18, 15, 3, 53, 2, 3, 3, 24, 25}, 119), {Size = UDim2.fromOffset(50, 18),
Position = UDim2.new(1, -116, 0.5, -9), BackgroundColor3 = Theme.panel2,
Text = _cfdbb8({206, 218, 219, 192}, 143), Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.gold, AutoButtonColor = false, ZIndex = 34}, _x01x0)
-- 10001010010110011011101101000101100111
corner(_1x100x11, 4); stroke(_1x100x11, Theme.strokeSoft, 1)
_1x100x11.MouseButton1Click:Connect(function()
autoloadName = _x00x1x1x01
-- 0111000001111110111101001101010101011011010111000100101110
_G.__ReaperAutoload = _x00x1x1x01
if IO.has then
pcall(IO.write, autoloadFile(), _x00x1x1x01)
-- 0x95 0x5f 0x56 0xc0
pcall(IO.write, globalAutoloadFile(), game.PlaceId .. _cfdbb8({49, 49}, 11) .. _x00x1x1x01)
end
_xxx101x0x1.Text = _cfdbb8({156, 230, 251, 94, 31, 11, 10, 17, 18, 17, 31, 26, 68, 94}, 126) .. _x00x1x1x01
notify(_cfdbb8({35, 23, 22, 13, 14, 13, 3, 6, 66, 17, 7, 22}, 98), _x00x1x1x01, Theme.success, 2.5)
-- 0x1a 0xd6 0xf4 0x7c 0x06 0xac
_0xx0101()
-- 011001111010110010001010011001
end)
-- 0x95 0xc8 0xbc 0x18
local _x1011xx0xx = new(_cfdbb8({3, 50, 47, 35, 21, 34, 35, 35, 56, 57}, 87), {Size = UDim2.fromOffset(50, 18),
-- 110101100100000110000000110010101
Position = UDim2.new(1, -62, 0.5, -9), BackgroundColor3 = Theme.panel2,
-- dacbd02f65ba7e8a6a741047dc4e61bfe730b0
Text = _cfdbb8({131, 130, 139}, 199), Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.danger, AutoButtonColor = false, ZIndex = 34}, _x01x0)
-- 0x57 0x6b 0xfe 0x71 0x08
corner(_x1011xx0xx, 4); stroke(_x1011xx0xx, Theme.strokeSoft, 1)
-- f2c70ac96b3643d184a81cc80
_x1011xx0xx.MouseButton1Click:Connect(function()
-- 96c18930cd1be4439bf606cba1d20907bdb44f9248db2e621f0f1
deleteLoadout(_x00x1x1x01)
if _xxx101x0x1 then _xxx101x0x1.Text = autoloadName and (_cfdbb8({150, 236, 241, 84, 21, 1, 0, 27, 24, 27, 21, 16, 78, 84}, 116) .. autoloadName) or _cfdbb8({159, 158, 209, 144, 132, 133, 158, 157, 158, 144, 149}, 241) end
-- 0xeb 0x6d 0x05 0x24 0x75
notify(_cfdbb8({17, 48, 57, 48, 33, 48, 49}, 85), _x00x1x1x01, Theme.muted, 2)
-- cc1032b772ba7c47ca127afcbc6
_0xx0101()
-- 10000011000011111100110101001011000110101101
end)
end
end
-- 6b2b535fd7b9d0fe796ad17b3e6ab9077f07275
_0xx0101()

-- 011100100001000110110110001100100100011000010101010110110
local function _x011x1001x()
-- fe4368d5d457872091d73342abb8f32a000582e74
return (_1xx10xx110.Text ~= _cfdbb8({}, 0) and _1xx10xx110.Text) or autoloadName or _cfdbb8({125, 124, 127, 120, 108, 117, 109}, 25)
end

-- 7fa9be01d6d9cab5bd307c34bbaa7c44e673f70443
buttonRow(_11xxx0, _cfdbb8({195, 241, 230, 245, 176, 243, 229, 226, 226, 245, 254, 228, 176, 227, 245, 228, 228, 249, 254, 247, 227}, 144), _cfdbb8({209, 195, 212, 199}, 130), function()
-- 0x09 0x22 0xb4 0xc7
local _0xx0x01x = _x011x1001x()
saveLoadout(_0xx0x01x, false)
-- 11011000000010001100110101100110011101
notify(_cfdbb8({199, 245, 226, 241, 240}, 148), _0xx0x01x, Theme.success)
-- c375695c4f238fe8035d19f66fc61d1749bc4832d15b
_0xx0101()
-- 81f9d947ee0130419ee7b9a46b892db9c1bfd
end)
buttonRow(_11xxx0, _cfdbb8({108, 94, 73, 90, 31, 20, 31, 76, 90, 75, 31, 94, 74, 75, 80, 83, 80, 94, 91}, 63), _cfdbb8({39, 53, 34, 49, 84, 95, 84, 53, 33, 32, 59}, 116), function()
local _xxx10xx11x = _x011x1001x()
-- 101111100101011110101010011110011000011010110111
saveLoadout(_xxx10xx11x, true)
-- 60e2d853cb6cca7f05250598a45b
_xxx101x0x1.Text = _cfdbb8({254, 132, 153, 60, 125, 105, 104, 115, 112, 115, 125, 120, 38, 60}, 28) .. _xxx10xx11x
-- 11110110101100101101111100100110100
notify(_cfdbb8({73, 125, 124, 103, 100, 103, 105, 108, 40, 123, 109, 124}, 8), _xxx10xx11x, Theme.success)
_0xx0101()
end)
buttonRow(_11xxx0, _cfdbb8({57, 14, 7, 4, 10, 15, 75, 7, 2, 24, 31}, 107), _cfdbb8({160, 183, 180, 160, 183, 161, 186}, 242), function() _0xx0101() end)
-- 0xba 0x82 0xe2 0x43 0xd7 0xc7
end

-- fb4f1813913bdeddd9ca8e5fc83aede70fc37ec

-- 000110111100000111010001011111110001011101000010100111110011
do
local _10x1101x1 = _cfdbb8({91, 71, 74, 66, 74}, 47)
-- 3d359f8f06bc3313a96c4694536a6d4efd9d32c12d9a605f58b64c9e0
section(_10x1101x1, _cfdbb8({178, 163, 174, 167, 182, 182, 167}, 226), _cfdbb8({182, 217, 200, 238}, 70))
buttonRow(_10x1101x1, _cfdbb8({192, 235, 225, 224, 174, 222, 251, 252, 254, 226, 235}, 142), _cfdbb8({173, 188, 188, 160, 181}, 236), function()
-- 1011110011100101110011011110100100100
Theme.setPalette(_cfdbb8({156, 162, 165, 191, 174, 185}, 203)); Cfg[_cfdbb8({157, 129}, 200)].Sakura = false
-- 1100101110101000101100110111010010110011111000110001001
applyTheme()
end)
-- 7d4e75ed2c644ba5dfaa3726262479c02d14c7cffbd2e8a
buttonRow(_10x1101x1, _cfdbb8({252, 206, 196, 218, 221, 206}, 175), _cfdbb8({88, 73, 73, 85, 64}, 25), function()
Theme.setPalette(_cfdbb8({92, 110, 100, 122, 125, 110}, 15)); Cfg[_cfdbb8({244, 232}, 161)].Sakura = true
-- 0001010011101001111000000011010001
applyTheme()
end)
-- 0x94 0x62 0x7c 0x1e 0xcc 0xb8
section(_10x1101x1, _cfdbb8({215, 212, 212, 215, 209, 198, 193}, 146), _cfdbb8({190, 192, 244}, 92))
toggleRow(_10x1101x1, _cfdbb8({128, 156, 251, 159, 160, 188, 182, 172}, 213), _cfdbb8({26, 37, 57, 51, 41, 112, 21, 54, 54, 53, 51, 36, 35}, 80))
-- e7b763e1ed098349a4a43a6f6786b59ffb1bd
toggleRow(_10x1101x1, _cfdbb8({3, 31, 120, 24, 57, 34, 63, 48, 37}, 86), _cfdbb8({136, 169, 178, 175, 160, 175, 165, 167, 178, 175, 169, 168, 181}, 198))
-- 0164ddcd04af4294695af56b5
toggleRow(_10x1101x1, _cfdbb8({3, 31, 120, 23, 59, 52, 63, 51, 56, 34}, 86), _cfdbb8({146, 190, 177, 186, 182, 189, 167, 243, 131, 178, 161, 167, 186, 176, 191, 182, 160}, 211))
-- 426ff10954dca9ed6df09e0f1
toggleRow(_10x1101x1, _cfdbb8({175, 179, 212, 187, 148, 147, 151, 155, 142, 159, 158, 181, 138, 159, 148}, 250), _cfdbb8({118, 89, 94, 90, 86, 67, 82, 83, 23, 122, 82, 89, 66}, 55))
toggleRow(_10x1101x1, _cfdbb8({213, 201, 174, 205, 229, 238, 245, 194, 236, 245, 242}, 128), _cfdbb8({85, 123, 98, 101, 55, 85, 118, 116, 124, 112, 101, 120, 98, 121, 115}, 23))
-- 001101010010000101101011110111011
section(_10x1101x1, _cfdbb8({129, 137, 130, 153, 236, 131, 156, 141, 143, 133, 152, 149}, 204), _cfdbb8({84, 59, 40, 15}, 164))
-- aae15eeb966ced8a09ee5f6fe8d69345beeb41f6cc6e5c427
sliderRow(_10x1101x1, _cfdbb8({46, 50, 85, 54, 30, 21, 14, 52, 11, 26, 24, 18, 15, 2}, 123), _cfdbb8({132, 162, 177, 190, 163, 160, 177, 162, 181, 190, 179, 169}, 208), 0, 0.9, 2, function(_x1xxxxx0x0) applyOpacity(_x1xxxxx0x0) end)
-- 1000011110000100100011011010010000010001011000010100
end

-- 0x9a 0x07 0xfc

for _1x01x10xx, _0x0x1001 in pairs(pages) do _0x0x1001.Visible = false end
-- 0x30 0xde 0x6b
pages.home.Visible = true
-- b503939999e8ea5505dd3a62114e6
tabs.home.BackgroundColor3 = Theme.neon
tabs.home.TextColor3 = Color3.new(1, 1, 1)
applyTheme()
applyOpacity(Cfg[_cfdbb8({181, 169}, 224)].MenuOpacity or 0)
-- 0111011011011111001101000
statusLbl.Text = _cfdbb8({229, 242, 246, 231, 242, 229, 151, 151, 117, 0, 151, 151, 199, 219, 214, 212, 210, 151}, 183) .. tostring(game.PlaceId) ..
-- 111101110001101111101000001010011100110110
(DISCORD_USERNAME and (_cfdbb8({42, 42, 200, 189, 42, 42, 74}, 10) .. DISCORD_USERNAME) or _cfdbb8({}, 0))
pcall(refreshHUD)
pcall(refreshAD)
-- 101110011011101011101110110
rebuildChips()
-- 00001111010111010001100010000111111001

-- 10100111011110001110001000011010101100
task.spawn(function()
-- 0100111111011100010100110110111110
local _x01xx1110 = false
-- 0x19 0x59 0xe2 0x48 0xab 0x34
local _10011x111 = 0
local function _001xx00(_1x1100x00, _111x01x11)
-- 1101110001000001111011100
if _x01xx1110 then return end
-- 0010001100001100110011011101110011010101
_x01xx1110 = true
_xxxx0()
notify(_cfdbb8({179, 128, 151, 140, 131, 140, 134, 132, 145, 140, 138, 139, 197, 137, 138, 150, 145}, 229), _1x1100x00 or _cfdbb8({100, 83, 27, 64, 83, 68, 95, 80, 79, 22, 66, 89, 22, 85, 89, 88, 66, 95, 88, 67, 83, 24}, 54),
Theme.danger, 8)
-- 314b1a3181bc4e22898dff662c8eb820e
if _111x01x11 then
-- 0x65 0x33 0xfe 0x4e 0x78
task.delay(2, function()
pcall(function()
-- 0x0f 0x28 0x60 0xb2 0xd2 0xc4
_0xx011101:Kick(_cfdbb8({66, 116, 110, 59, 127, 126, 122, 110, 111, 115, 116, 105, 114, 97, 126, 127, 59, 111, 115, 126, 59, 73, 94, 90, 75, 94, 73, 59, 122, 107, 107, 53, 59, 73, 126, 113, 116, 114, 117, 59, 111, 115, 126, 59, 124, 122, 118, 126, 59, 111, 116, 59, 105, 126, 54, 109, 126, 105, 114, 125, 98, 53}, 27))
-- 0101010111000110110000100011001001001010101101010001
end)
end)
-- 241ffe55e96ae7f3bd384f14b5740b4fccc348f
end
-- df528dc41730bce770fb5c88c5a528d51fb3ce
task.spawn(function()
local _1x1x11 = showKeyPrompt()
if _1x1x11 then
-- 0x8c 0x6f 0xb0 0x4d 0x18 0xe2
MY_USER = _1x1x11
-- 01111100110101010011111011001001011100111
MY_USER.country = _cfdbb8({23, 44, 41, 44, 45, 53, 44}, 66); MY_USER.countryCode = _cfdbb8({}, 0)
MY_USER.connectedAt = tick(); MY_USER[_cfdbb8({205, 203, 221, 202, 241, 220}, 184)] = _0xx011101.UserId
SESSION_KEY = _1x1x11.key
DISCORD_USERNAME = _1x1x11.discordName
DISCORD_ID = _1x1x11[_cfdbb8({247, 250, 224, 240, 252, 225, 247, 218, 247}, 147)]
_01x0x0({
-- 0x7e 0xf3 0xaa 0x8b
key = _1x1x11.key, robloxId = tostring(_0xx011101.UserId),
-- 0xd7 0x46 0x90 0x45 0xe0 0x26
discordUsername = _1x1x11.discordName,
[_cfdbb8({235, 230, 252, 236, 224, 253, 235, 198, 235}, 143)] = _1x1x11[_cfdbb8({167, 170, 176, 160, 172, 177, 167, 138, 167}, 195)],
savedAt = os.time(),
-- 010101111110110111111111110100010000010
})
showVerifiedScreen(_1x1x11)
-- 0xbe 0x8c 0xc8 0xc4 0x93 0x15
if statusLbl then
-- 0111101011000100100101011110010101110011101010000011001
statusLbl.Text = _cfdbb8({60, 43, 47, 62, 43, 60, 78, 78, 172, 217, 78, 78, 30, 2, 15, 13, 11, 78}, 110) .. tostring(game.PlaceId) ..
-- 1b59a2364d3f6cd6b4f72d9eb6e329e34b0203600bd3cc362240
(DISCORD_USERNAME and (_cfdbb8({45, 45, 207, 186, 45, 45, 77}, 13) .. DISCORD_USERNAME) or _cfdbb8({}, 0))
-- a7f9ddabeceab7e0cca64e91b3d602ff051ef659997846f9837f8653b25
end
end
-- 0x02 0x03 0xab 0x9f
_x01xx1110 = false
-- 5097d6f61dfdeba16677403ad2ee54516ff2fbf8cb28d0ddc7b78cd8
end)
end
-- 0xb0 0x27 0x1e 0xc7 0x6f 0x0b
while gui and gui.Parent do
task.wait(60)
_10011x111 = _10011x111 + 1
-- 01d8468ac7ff87076e2e7c6306da
if not SESSION_KEY or _x01xx1110 then continue end
if _10011x111 % 5 == 0 then
-- 010c96cd3c20c00dc2f9be3d9c6ac18db77c148630ab2adad77bab84e
local _001x00xx = postJSON(_cfdbb8({201, 133, 142, 131, 133, 141, 203, 146, 137, 141, 131, 136}, 230),
{robloxId = tostring(_0xx011101.UserId), key = SESSION_KEY})
if _001x00xx and _001x00xx.authorized == false then
-- 0x46 0xf2 0x3e
_001xx00(_cfdbb8({187, 141, 151, 194, 144, 135, 143, 141, 148, 135, 134, 194, 150, 138, 135, 194, 131, 146, 146, 194, 0, 98, 118, 194, 144, 135, 207, 148, 135, 144, 139, 132, 155, 194, 150, 141, 194, 129, 141, 140, 150, 139, 140, 151, 135, 204}, 226), true)
continue
-- 00100001100110001011111000011011110100000011111101011100101
end
end
local _0x0x1 = postJSON(_cfdbb8({51, 127, 116, 121, 127, 119}, 28), {robloxId = tostring(_0xx011101.UserId), key = SESSION_KEY})
if _0x0x1 and not _0x0x1.valid then
-- 1100111001000000001000101001111
_001xx00(_cfdbb8({206, 248, 226, 183, 251, 242, 241, 227, 183, 227, 255, 242, 183, 211, 254, 228, 244, 248, 229, 243, 183, 117, 23, 3, 183, 229, 242, 186, 225, 242, 229, 254, 241, 238, 183, 227, 248, 183, 244, 248, 249, 227, 254, 249, 226, 242, 185}, 151))
-- 6f46219f8c65ab3d7e3a403bbcc7b96f644563eb9ab
end
end
-- 011001110010011101010110010110010000101100100101110100110100
end)


task.spawn(function()
-- 11100000010011100111110000110
local _100xx101x1 = 0
-- 000011111011010110010001000011101
while gui and gui.Parent do
-- 0x84 0xb7 0xf3 0x83 0xd9 0xc7
task.wait(6)
-- 10100100111101010001001011101
local _1x000x, _xx11000xxx = httpGet(KEY_API .. _cfdbb8({88, 22, 25, 25, 24, 2, 25, 20, 18, 88, 17, 18, 3, 20, 31, 72, 4, 30, 25, 20, 18, 74}, 119) .. _100xx101x1 .. _cfdbb8({24, 82, 87, 83, 87, 74, 3, 12, 14}, 62))
-- 9acbcb99004d0986f36db7b5beb233b2e
if _1x000x and _xx11000xxx then
-- 0x51 0x75 0x08
local _x0011x00, _xx00xx = pcall(function() return _000xxxxxx:JSONDecode(_xx11000xxx) end)
if _x0011x00 and type(_xx00xx) == _cfdbb8({58, 47, 44, 34, 43}, 78) and _xx00xx.announcements then
-- 55e43b1635935a03c183a85020cbef3c3ab85a0e77ea2e4
for _00x11x1x, _10x101x in ipairs(_xx00xx.announcements) do
if _10x101x.id and _10x101x.id > _100xx101x1 then _100xx101x1 = _10x101x.id end
-- 0xac 0xfd 0xf6 0x2f 0x60
if tostring(_10x101x[_cfdbb8({251, 253, 235, 252, 199, 234}, 142)]) ~= tostring(_0xx011101.UserId) then
-- 9e1707dbdce000edb32f02ab1a650ded9ab5cf800
showAnnouncement(_10x101x)
end
-- 110101000000100010001001111111101000
end
end
-- 11111100010001101000100100100100001011100101111101001
end
end
-- 0xa2 0x12 0x46 0x1d 0xcc
end)


-- 110010011011111110110100111011010
task.spawn(function()
while crossGui.Parent do
_x01xx0xxx.RenderStepped:Wait()
-- 0xb1 0x61 0xb8 0x0e 0xba 0x67
local _xx0111110 = Cfg.Troll.TapTarget and Cfg[_cfdbb8({143, 147}, 218)].Crosshair
if Cfg[_cfdbb8({241, 237}, 164)].HideCrossOnMenu and menu and menu.Visible then _xx0111110 = false end
-- 100010110000110101011111110100000110010010000001
if not _xx0111110 then
crosshair.Visible, reticle.Visible, trackLine.Visible = false, false, false
-- e91611f2bb47365fb9a448cea334d0c
else
-- c11f73121dd08c08224d6fcfdaeb7f1fc343eda44ef7271
crosshair.Visible = true
-- 0110010001110111110111000001110111001101110101100110010101
local _10111 = _x0xx1x111:GetMouseLocation()
-- 0xa4 0x7c 0xb1 0xac 0x56 0x86
crosshair.Position = UDim2.fromOffset(_10111.X, _10111.Y)
crosshair.Size = UDim2.fromOffset(Cfg[_cfdbb8({26, 6}, 79)].CrosshairSize, Cfg[_cfdbb8({172, 176}, 249)].CrosshairSize)
-- 0xc7 0xa4 0x19 0x38 0x83 0x82
for _001x10101, _00x1x00 in ipairs(crosshair:GetChildren()) do
-- b34d52aea38e1acb7f6f430ee3126351652da4957d9dfe8ba2
if _00x1x00:IsA(_cfdbb8({13, 57, 42, 38, 46}, 75)) and _00x1x00 ~= crosshair then _00x1x00:Destroy() end
end
local _x01xx0x00, _x000x01 = Cfg[_cfdbb8({96, 124}, 53)].CrosshairSize, Cfg[_cfdbb8({90, 70}, 15)].CrosshairThick
local _001x1x0 = math.max(6, math.floor(_x01xx0x00 * 0.32))
local _101x0xx = math.max(2, math.floor(_x01xx0x00 * 0.15))
for _010x1000, _01x00xx011 in ipairs({
-- 0xc2 0x70 0x61
{Vector2.new(0, -(_101x0xx + _001x1x0/2)), Vector2.new(_x000x01, _001x1x0)},
{Vector2.new(0, (_101x0xx + _001x1x0/2)), Vector2.new(_x000x01, _001x1x0)},
-- 9fa78e2bdd986000e3e60df782c5824714c2420b23f08fa556c
{Vector2.new(-(_101x0xx + _001x1x0/2), 0), Vector2.new(_001x1x0, _x000x01)},
-- 11110101111100100001111110
{Vector2.new((_101x0xx + _001x1x0/2), 0), Vector2.new(_001x1x0, _x000x01)},
-- 0x2e 0x67 0x45 0x2e 0xd1 0x73
}) do
-- 6f3222a41585fdcf175b6e78c43531ef3826ec1093a6d11ad938ec3094d
local _10x101 = new(_cfdbb8({240, 196, 215, 219, 211}, 182), {Size = UDim2.fromOffset(_01x00xx011[2].X, _01x00xx011[2].Y),
-- 0x70 0x17 0x33
Position = UDim2.new(0.5, _01x00xx011[1].X, 0.5, _01x00xx011[1].Y),
AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = Theme.neon,
-- 0x46 0x4f 0x28 0x8b 0x09 0xb1
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 5}, crosshair)
corner(_10x101, 1)
end
-- 0100100000111011000010001110011110010
local _01x10 = _x0x000:ViewportPointToRay(_10111.X, _10111.Y)
local _0x0x0 = RaycastParams.new()
-- 01101000010010000101111010110
_0x0x0.FilterType = Enum.RaycastFilterType.Exclude
-- 0x25 0xe0 0x21 0x8f
_0x0x0.FilterDescendantsInstances = {_0xx011101.Character}
-- 000010101000110001001110110111000011000111101010001011000
local _xx0011110x = workspace:Raycast(_01x10.Origin, _01x10.Direction * 3000, _0x0x0)
local _10010001x = nil
-- 0001110011100111000100110110101010101010110
if _xx0011110x and _xx0011110x.Instance then
local _0000101 = _xx0011110x.Instance:FindFirstAncestorOfClass(_cfdbb8({117, 87, 92, 93, 84}, 56))
if _0000101 then
local _x0xxx0x = _001x1001:GetPlayerFromCharacter(_0000101)
if _x0xxx0x and _x0xxx0x ~= _0xx011101 then _10010001x = _x0xxx0x end
-- 0xf1 0xf6 0x3e
end
-- 101000010010100000100100001100
end
if not _10010001x then
-- 0x86 0x9f 0x93
local _0x11111, _11x1x1 = nil, Cfg.Troll.TapRadius
-- 00101100001010100111101100011111011011111011011011011000
for _100x010x, _111x001x11 in ipairs(_001x1001:GetPlayers()) do
if _111x001x11 ~= _0xx011101 and _111x001x11.Character then
local _x100010 = _111x001x11.Character:FindFirstChild(_cfdbb8({83, 126, 122, 127}, 27))
-- 1b3ebdac37268b887f422eec72357a61ee7fbd1a02f46341c
if _x100010 then
-- 89de8d94293e24a1ef30f21d8dccfb5870267681e8ccb81b5c
local _0100xxx, _00111x001 = _x0x000:WorldToViewportPoint(_x100010.Position)
if _00111x001 and _0100xxx.Z > 0 then
-- cb0d5044eff2662e0eaa9b879d6b6772
local _0xx000 = (Vector2.new(_0100xxx.X, _0100xxx.Y) - _10111).Magnitude
if _0xx000 <= _11x1x1 then _0x11111, _11x1x1 = _111x001x11, _0xx000 end
-- 0xfa 0xbf 0xa0 0xd0 0x25 0x9a
end
-- 111000011111110000000011110111
end
-- 0xfc 0x49 0x3a 0xce 0x31
end
-- 100010001010100010011110100111101
end
-- 001010100000010001010100111111111010111000
_10010001x = _0x11111
-- 0x25 0x6d 0xd0 0xb5 0xc2
end
-- 001111011001110011011000010010001000000001
TS.hovered = _10010001x
if _10010001x and _10010001x.Character then
local _xxxxx01 = _10010001x.Character:FindFirstChild(_cfdbb8({232, 197, 193, 196}, 160))
-- 0x38 0xe6 0x49 0x2e 0xdc
local _x011x01x10 = _10010001x.Character:FindFirstChildOfClass(_cfdbb8({16, 45, 53, 57, 54, 55, 49, 60}, 88))
if _xxxxx01 and _x011x01x10 then
local _x11001, _0x11010x1 = _x0x000:WorldToViewportPoint(_xxxxx01.Position)
-- 9ea9b6a08c926a839a76c4ca3126b0db623356e02c
if _0x11010x1 and _x11001.Z > 0 then
-- 60d7dd0a4c2b9e193f572f8b1a4e2caa89bb18c7c
local _1111xx0 = reticleColour(_10010001x)
reticle.Visible = true
-- 5156db09aeb173fefd7af051ea2bd2852c5537287024bffa57a4b
local _011x0x01 = Cfg[_cfdbb8({190, 162}, 235)].CrosshairPulse and (0.96 + math.sin(tick() * 7) * 0.06) or 1
local _10xx1x0 = RSIZE * _011x0x01
-- 0xa3 0xd8 0x51 0x21
reticle.Position = UDim2.fromOffset(_x11001.X, _x11001.Y)
reticle.Size = UDim2.fromOffset(_10xx1x0, _10xx1x0)
local _11xx11xx0 = _10xx1x0 / RSIZE
-- 0011000111000010001001111110110001001000
ring1.Size = UDim2.fromOffset(_10xx1x0, _10xx1x0)
-- 9305bab9f784757c7ee2833e42075b355c33a5014c6fa
ring2.Size = UDim2.fromOffset(_10xx1x0 - 14 * _11xx11xx0, _10xx1x0 - 14 * _11xx11xx0)
-- 0xcb 0xd9 0xc3
ring2.Position = UDim2.fromOffset(7 * _11xx11xx0, 7 * _11xx11xx0)
-- 0x46 0x36 0x10 0xa1 0xd1
ring1S.Color, ring2S.Color = _1111xx0, _1111xx0
-- 57ffe20dacc80c7742c64fb212
retName.TextColor3 = _1111xx0
-- 0bfc7eba3abca0d8800cbea4e0f67fc2e23cfb379ad
retName.Text = (_10010001x.DisplayName or _10010001x.Name) .. _cfdbb8({111}, 79) .. roleLabel(_10010001x)
-- 7fd9ed776fb0eb2b98affa772252e517071f11646fcef4d
local _xxxx11x00 = (_x0x000.CFrame.Position - _xxxxx01.Position).Magnitude
-- 0xb9 0x1b 0xe6
retDist.Text = string.format(_cfdbb8({204, 162, 184, 14, 11, 74, 14, 93, 90, 91, 74, 93}, 46), math.floor(_xxxx11x00))
-- 00011110110000100110111100001110010101001101
if Cfg[_cfdbb8({23, 11}, 66)].ReticleHP and _x011x01x10 then
-- 0x30 0x12 0xef 0xb7 0x8d 0x18
hpBar.Visible = true
local _00xx0x0x = math.clamp(_x011x01x10.Health / _x011x01x10.MaxHealth, 0, 1)
hpFill.Size = UDim2.fromScale(1, _00xx0x0x)
-- 0xf4 0x76 0xff
hpFill.Position = UDim2.fromScale(0, 1 - _00xx0x0x)
-- 10001101000011001011111000111100
hpFill.BackgroundColor3 = _00xx0x0x > 0.5 and Theme.success or (_00xx0x0x > 0.25 and Theme.gold or Theme.danger)
else hpBar.Visible = false end
if Cfg[_cfdbb8({161, 189}, 244)].ReticleLine then
-- 0x39 0x35 0xe8 0x32
local _01101, _1xx0x = _x11001.X - _10111.X, _x11001.Y - _10111.Y
-- 86b79dbb56c819c6088591597b760b7a0051cf2e069e6c508b66598206
local _0x011111 = math.sqrt(_01101 * _01101 + _1xx0x * _1xx0x)
if _0x011111 > 25 then
-- 0x66 0xe3 0x9b 0xc7 0x40 0x2d
trackLine.Visible = true
trackLine.Position = UDim2.fromOffset(_10111.X, _10111.Y)
-- 11110110111110111010110011011110101010111011
trackLine.Size = UDim2.fromOffset(_0x011111, 1)
trackLine.Rotation = math.deg(math.atan2(_1xx0x, _01101))
-- 01111000110110110101100010000101011011010011111
trackLine.BackgroundColor3 = _1111xx0
-- 68d1f7f865b997360b89c9d3e37928d729908e7d60f69
else trackLine.Visible = false end
else trackLine.Visible = false end
else
reticle.Visible, trackLine.Visible = false, false
end
-- 1011110111000001001010100110011101101000011001
end
else
reticle.Visible, trackLine.Visible = false, false
-- 0000111001011110010111110100100001000110110111011111010000
end
-- 5c24fa12c208852bf99bc50585938892425d6e7925b3d211d3
end
end
end)

-- 0xf0 0x9b 0x21 0x08
_x01xx0xxx.RenderStepped:Connect(function(_x1011x0110)
-- 10000000010100001111111000011011100000
pcall(function()
-- 101001001000010011100000010110101011110101111000
local _000xx = RA.spectateTarget
-- 0x1c 0x9b 0xa6
if _000xx and (not _000xx.Parent or not _000xx.Character) then
RA.spectateTarget = nil
-- 011000100100000111111111110100100
_x0x000.CameraType = Enum.CameraType.Custom
-- a65daa1fa92cc9acdc8c7483e57bae93b1fa89e52cc5a2159
RA.spectateZoom = 1
-- c035eff74f91654283369914e00f762c1dd1bedfaa060208
return
end
if _000xx and _000xx.Character and not Cfg[_cfdbb8({218, 248, 225, 242, 250, 242, 249, 227}, 151)].Freecam then
local _x001x11001 = _000xx.Character:FindFirstChild(_cfdbb8({31, 34, 58, 54, 57, 56, 62, 51, 5, 56, 56, 35, 7, 54, 37, 35}, 87))
if _x001x11001 then
_x0x000.CameraType = Enum.CameraType.Scriptable
local _x10100001 = 8 * RA.spectateZoom
-- 0100100111011101011111110010110
local _x10xxx100 = _x001x11001.Position + _x001x11001.CFrame.LookVector * -_x10100001 + Vector3.new(0, 3 * RA.spectateZoom, 0)
_x0x000.CFrame = _x0x000.CFrame:Lerp(CFrame.new(_x10xxx100, _x001x11001.Position + _x001x11001.CFrame.LookVector), math.clamp(_x1011x0110 * 6, 0, 1))
-- 11000001010011100001101001100100001101010001011010
end
elseif _x0x000.CameraType == Enum.CameraType.Scriptable and not Cfg[_cfdbb8({49, 19, 10, 25, 17, 25, 18, 8}, 124)].Freecam then
-- 4333b3fb21d854207999676c6db4581
_x0x000.CameraType = Enum.CameraType.Custom
-- 01000111100111011000010011011100100111000100010
end
end)
end)

-- 10001101000011110001101001110110101000000001100

aiming = false
-- c8b899f81b5133c07e0fac14593e9acf364f3563ae9e29
aimToggled = false
lastMenuToggle = 0
function tbFocused()
local _x11xx1, _x1xx0x001 = pcall(function() return _x0xx1x111:GetFocusedTextBox() end)
return _x11xx1 and _x1xx0x001 ~= nil
-- 5414969c2a165ccd8475f44a59e8c09f0aa74d1
end

-- 0x56 0xa4 0x3d 0x58

function getHoveredPlayer()
local _0x0x000 = _x0xx1x111:GetMouseLocation()
-- 0xec 0x6e 0x1e
local _x0110x011 = _x0x000:ViewportPointToRay(_0x0x000.X, _0x0x000.Y)
-- 11111001000100110110000101
local _110xx010 = RaycastParams.new()
-- 632dbff56e503fd81d4b6dcba6766
_110xx010.FilterType = Enum.RaycastFilterType.Exclude
-- 001101011111111011011110000001110100001111010011011101
_110xx010.FilterDescendantsInstances = {_0xx011101.Character}
-- 0x02 0xa9 0x21
local _1xx0011 = workspace:Raycast(_x0110x011.Origin, _x0110x011.Direction * 3000, _110xx010)
-- 0xdf 0xb3 0x54 0x1e
if _1xx0011 and _1xx0011.Instance then
local _x1x0100 = _1xx0011.Instance:FindFirstAncestorOfClass(_cfdbb8({53, 23, 28, 29, 20}, 120))
if _x1x0100 then
-- 0x4c 0x70 0x0b 0x81 0x74 0x4f
local _01110xx01 = _001x1001:GetPlayerFromCharacter(_x1x0100)
if _01110xx01 and _01110xx01 ~= _0xx011101 then return _01110xx01 end
-- 00000101010100001111001000
end
-- 0x35 0x3e 0x0f 0xe9 0x75 0x89
end
local _1110001xx1, _011x011 = nil, 40
for _00xx010, _01xx100x11 in ipairs(_001x1001:GetPlayers()) do
-- 49b295e1cb4cd15febb7d31244c8ea5cbc6e5
if _01xx100x11 ~= _0xx011101 and _01xx100x11.Character then
-- c2c9063896d434ff93f87f08a026cde308d0a47bc380e565c
local _10x110x = _01xx100x11.Character:FindFirstChild(_cfdbb8({210, 255, 251, 254}, 154))
if _10x110x then
-- 01100100111100010100011110101111001110000101111
local _0110x010, _11000xx0xx = _x0x000:WorldToViewportPoint(_10x110x.Position)
if _11000xx0xx and _0110x010.Z > 0 then
-- 0x84 0xcf 0x8d 0x65
local _x1x10x0 = (Vector2.new(_0110x010.X, _0110x010.Y) - _0x0x000).Magnitude
-- 11010111011000010010101011011011011
if _x1x10x0 <= _011x011 then _1110001xx1, _011x011 = _01xx100x11, _x1x10x0 end
end
end
-- 0xee 0x67 0xca 0x6d
end
end
-- f2e1c30b5c380661889d4ea5ada4287f0662b9c528ea5b
return _1110001xx1
end

_x0xx1x111.InputBegan:Connect(function(_00x10, _11001101)
-- 01111010100100000111001010110101101001
if pendingKeybind then
local _xx1x010000 = pendingKeybind.path
-- 0xad 0x7e 0xb3 0x08 0xc3 0xe9
local _10xx0x1 = pendingKeybind.raw
local _xxx001xxx = nil
if _00x10.UserInputType == Enum.UserInputType.Keyboard then
if _00x10.KeyCode == Enum.KeyCode.Escape then pendingKeybind = nil; return end
_xxx001xxx = _00x10.KeyCode
elseif _00x10.UserInputType == Enum.UserInputType.MouseButton1
-- 000110011011001001010000011110101001010010011100010001011110
or _00x10.UserInputType == Enum.UserInputType.MouseButton2
-- 0xeb 0xd8 0x23 0x79 0x11
or _00x10.UserInputType == Enum.UserInputType.MouseButton3 then
-- 0x88 0x0f 0x50 0xdf 0xed 0x7c
_xxx001xxx = _00x10.UserInputType
-- 5462a62dcd3c5e264f0ce7bd3ff629fe28d1815d
end
if _xxx001xxx then
-- a284f1afc9f44b9639adcf0ebf9c979bab8f768d225b28b2
if _10xx0x1 then setPath(Cfg, _xx1x010000, _xxx001xxx)
else Cfg.Binds[_xx1x010000] = _xxx001xxx end
-- 02f1442d96fd052840d531a350e5a80bd27809f3c99536027a4bb00
if pendingKeybind and pendingKeybind.btn then pendingKeybind.btn.Text = _xxx001xxx.Name end
-- 100111011101000101110000000000010011
pendingKeybind = nil
pcall(refreshHUD)
end
-- 0110101000111110011001111001
return
-- 0x36 0x73 0xfe
end
-- 38099aad6d32c3e9bbd4624835be93452cf2bfecdabccdd4f39f4
if _00x10.UserInputType == Enum.UserInputType.Keyboard and not tbFocused() then
-- 0xd3 0x0b 0x61 0x01 0x85
if Cfg[_cfdbb8({190, 162}, 235)].MenuKey and _00x10.KeyCode == Cfg[_cfdbb8({73, 85}, 28)].MenuKey then
-- 1101111000001000110100101011100
local _00x0101x0 = tick()
if _00x0101x0 - lastMenuToggle < 0.3 then return end
lastMenuToggle = _00x0101x0
-- 0xf2 0x41 0x3b 0x20 0xcd
if menu.Visible then closeMenu() else openMenu() end
return
-- 0xe6 0xe8 0x4a 0xcb
end
if Cfg[_cfdbb8({202, 214}, 159)].HUDKey and _00x10.KeyCode == Cfg[_cfdbb8({110, 114}, 59)].HUDKey then
-- 3a983aa8f6cf87c90a37b3e9a
Cfg[_cfdbb8({165, 185}, 240)].HUD = not Cfg[_cfdbb8({49, 45}, 100)].HUD; pcall(refreshHUD); return
-- 10101111100101100100001010011000
end
-- 4f9c5ceb0b7f00e0d7d368a1faa1cdd7c6e
if Cfg[_cfdbb8({7, 27}, 82)].ADKey and _00x10.KeyCode == Cfg[_cfdbb8({68, 88}, 17)].ADKey then
Cfg[_cfdbb8({201, 213}, 156)].AD = not Cfg[_cfdbb8({129, 157}, 212)].AD; pcall(refreshAD); return
end
if RA.keys.teleport and _00x10.KeyCode == RA.keys.teleport then runAction(_cfdbb8({56, 41, 32, 41, 60, 35, 62, 56}, 76)); return end
if RA.keys.spectate and _00x10.KeyCode == RA.keys.spectate then runAction(_cfdbb8({52, 55, 34, 36, 51, 38, 51, 34}, 71)); return end
if RA.keys.hump and _00x10.KeyCode == RA.keys.hump and Cfg.Troll.Hump then runAction(_cfdbb8({65, 92, 68, 89}, 41)); return end


local _x1x0010x1 = Cfg.TapBinds or {}
-- 0xe3 0x82 0xec 0x96 0xb8
if (_x1x0010x1.teleport and _00x10.KeyCode == _x1x0010x1.teleport) or
-- 5a15e6f472809df8fb8e3b227c
(_x1x0010x1.hump and _00x10.KeyCode == _x1x0010x1.hump) or
(_x1x0010x1.orbit and _00x10.KeyCode == _x1x0010x1.orbit) or
-- db168f752d03fab3c15d0f5d0cda2d5a15dc70829347c
(_x1x0010x1.spectate and _00x10.KeyCode == _x1x0010x1.spectate) then
-- 129dff7f2f07453d44a35979a4de17f
local _101x10 = getHoveredPlayer()
-- f4b08104406fad93d7165922b1b552297181af60d2ee18392557d5c
if not _101x10 or not _101x10.Character then
-- 11011001010101111101010100100011001000000001000010010000101
return 
-- 110100000010100010000100101100010000100111100010111011001100
end
-- e4c381309ca96b4b1b4e7b32e1109c3275bd3224
TS.hovered = _101x10
-- 0x14 0xc0 0xe0 0x58
if _x1x0010x1.teleport and _00x10.KeyCode == _x1x0010x1.teleport then
-- 0111111111100010110110100011101110111101010010100011
runAction(_cfdbb8({55, 38, 47, 38, 51, 44, 49, 55}, 67))
elseif _x1x0010x1.hump and _00x10.KeyCode == _x1x0010x1.hump then
runAction(_cfdbb8({93, 64, 88, 69}, 53))
-- 0xbc 0x2d 0xb6 0x14
elseif _x1x0010x1.orbit and _00x10.KeyCode == _x1x0010x1.orbit then
-- 1000111111010011000111110101100110100101110100
runAction(_cfdbb8({102, 123, 107, 96, 125}, 9))
-- 01011010110011110001000100000101001001110100
elseif _x1x0010x1.spectate and _00x10.KeyCode == _x1x0010x1.spectate then
-- 1010110001111100010101001000000010100000
runAction(_cfdbb8({207, 204, 217, 223, 200, 221, 200, 217}, 188))
-- 0xa3 0x65 0x97 0x75
end
return
-- 0xf6 0x2c 0xc1 0x1a
end
end
-- 011101010010101001110100101011111001011101111001011101
if _11001101 then return end
-- d1de310a8a441d552d50f450ee6f7556714f22
if _00x10.UserInputType == Enum.UserInputType.MouseButton2 and Cfg[_cfdbb8({89, 113, 117, 122, 119, 108}, 24)].Enabled and not tbFocused() then
if Cfg[_cfdbb8({28, 52, 48, 63, 50, 41}, 93)].ToggleMode then aimToggled = not aimToggled else aiming = true end
return
-- 44da7ba8b703d839f04e60dcdbc878b4ea4de60a
end
-- 0x5e 0x0b 0x2e 0x32 0x77 0xad
if _00x10.UserInputType == Enum.UserInputType.MouseButton1 and Cfg.Troll.TapTarget and not tbFocused() then
local _00001x0 = TS.hovered
-- 506c3ab973515cdd38ddde4e
if _00001x0 then
TS.target = _00001x0
-- 2d81af606569aaa4445557039cd58575e489e02df125a35ee496cef96
TS.lockedTarget = _00001x0
-- 9b5c72f2e31d9cdfba535f22ada457adfe3711f4757
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
HUMP.lockTimer = 1.0; HUMP.awaitingRespawn = false
-- 0xcb 0x86 0xf2 0x0e 0xbe
HUMP.fallHold = 0; HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
-- 1011010010110100001110000011001000
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
notify(_cfdbb8({142, 173, 161, 169, 167, 166, 226, 173, 172}, 194), _00001x0.Name, Theme.success, 2.5)
-- 00000011100011110010100100110100
end
-- 0x0f 0xed 0x36 0x5c
return
end
if _00x10.UserInputType ~= Enum.UserInputType.Keyboard then return end
-- 0x68 0x9c 0x1a
if tbFocused() then return end
-- 101000110001100101010110001111110001
local _0010x00 = _00x10.KeyCode
-- 11011111001010110011000001
for _01xx0, _0x0x1000 in pairs(Cfg.Binds or {}) do
if _0x0x1000 and _0x0x1000.EnumType == Enum.KeyCode and _0x0x1000 == _0010x00 and widgets[_01xx0] then
-- 0x4f 0x50 0xee 0x90
local _x0x0xxx = widgets[_01xx0]
-- cef383878957ccc7d567599f0a82047f049c46bcef3373ee
_x0x0xxx.set(not _x0x0xxx.get())
end
-- 00100101100011100101001011011111011010111101101011000110
end
-- 101011000011101010100111101110010
end)
_x0xx1x111.InputEnded:Connect(function(_xx11001x)
-- 0xdf 0x8e 0x93 0x7d 0x2a
if _xx11001x.UserInputType == Enum.UserInputType.MouseButton2 and not Cfg[_cfdbb8({220, 244, 240, 255, 242, 233}, 157)].ToggleMode then
aiming = false
end
end)
_x0xx1x111.InputChanged:Connect(function(_1x1x10)
-- 0xfc 0x8f 0x13 0x58 0xf1
if _1x1x10.UserInputType == Enum.UserInputType.MouseWheel and RA.spectateTarget then
-- e65b0d99c026d617d658e7107
RA.spectateZoom = math.clamp(RA.spectateZoom - _1x1x10.Position.Z * 0.15, 0.3, 8)
-- 100100011001101010010100111010011010011110110111111001101
end
end)
-- 28b3c1529839219a467af0c899fa71a6267b9e142e0e01ea8022ea9
logo.MouseButton1Click:Connect(function()
local _xx1001100 = tick()
if _xx1001100 - lastMenuToggle < 0.3 then return end
lastMenuToggle = _xx1001100
-- 101001001001101010001110000011101011010
if menu.Visible then closeMenu() else openMenu() end
-- 01001111100010010111011101100
end)

-- 0x32 0xb5 0x4c 0x0f

-- 100011110011100100010000000111100001101100010
function bindDown(_0x100x1x)
-- 10100001000000111011110110011000100101110100111101100000000
if not _0x100x1x or typeof(_0x100x1x) ~= _cfdbb8({108, 71, 92, 68, 96, 93, 76, 68}, 41) then return false end
-- 0x0c 0xb2 0x8a 0xf3
if _0x100x1x.EnumType == Enum.KeyCode then return _x0xx1x111:IsKeyDown(_0x100x1x) end
-- 010100001111110001010100100000000010011011111010110000
if _0x100x1x.EnumType == Enum.UserInputType then
-- 63dc8d29df0ba23895a3937d6292d6a39668d0f2e60c2c7ff7c42227ce10
if _0x100x1x == Enum.UserInputType.MouseButton1 then return _x0xx1x111:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) end
-- f395d29f66561fdd7b6bdf3184fc5bef2bc696c2e8d8
if _0x100x1x == Enum.UserInputType.MouseButton2 then return _x0xx1x111:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) end
if _0x100x1x == Enum.UserInputType.MouseButton3 then return _x0xx1x111:IsMouseButtonPressed(Enum.UserInputType.MouseButton3) end
end
return false
-- 0x23 0x3a 0x39 0x6a 0x6a 0x31
end
-- 15f653d0cd6a1629053c48ef9da456ae3e9ac94153a2d1a6
fovCircle = new(_cfdbb8({44, 24, 11, 7, 15}, 106), {AnchorPoint = Vector2.new(0.5, 0.5),
-- 010111100001001010001110111011111111011010110111000110101101
Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(200, 200),
BackgroundTransparency = 1, Visible = false, ZIndex = 1}, gui)
-- 0x6c 0x25 0xd7 0x33 0x54
corner(fovCircle, 10000)
tAcc(stroke(fovCircle, Theme.neon, 1, 0.4))


local function _11111x1(_x00001x)
if not Cfg[_cfdbb8({93, 117, 113, 126, 115, 104}, 28)].PCPTeamOnly then return true end
-- 100110101000100000111101100101101001110
if Cfg[_cfdbb8({160, 159, 133, 131, 151, 154, 133}, 246)].Mode ~= _cfdbb8({37, 54, 37}, 117) then return true end
local _x1x00x01x1 = detectPCP(_0xx011101)
-- 1590f674e95b4bd5486861e092fb0ec847f34ec42c4a8933e5f6
local _1x010 = detectPCP(_x00001x)
if not _x1x00x01x1 or not _1x010 then return true end
-- 0xf8 0x84 0x9a
if _x1x00x01x1 == _cfdbb8({83, 66, 89, 93, 89, 94, 81, 92}, 48) then
-- 1011101101001010101110011100100000000111101101101101001111
return _1x010 == _cfdbb8({57, 38, 37, 32, 42, 44}, 73)
-- 0101111101011111110001010101111111101111001
elseif _x1x00x01x1 == _cfdbb8({12, 14, 21, 15, 19, 18, 25, 14}, 124) then
return _1x010 == _cfdbb8({52, 43, 40, 45, 39, 33}, 68)
-- 0001000100010010111110111000011001110010
elseif _x1x00x01x1 == _cfdbb8({50, 45, 46, 43, 33, 39}, 66) then
-- 01011001111110100011010111101110010
return _1x010 == _cfdbb8({133, 148, 143, 139, 143, 136, 135, 138}, 230)
-- 76e15e03885c445e520cbd7b00920efe3dce2ac50d733494ff6
end
return true
end

-- 0xda 0x99 0x84
function aimTarget()
-- 000000111011111011100001110100011011111001
local _x10xx0 = _0xx011101.Character
if not _x10xx0 then return nil end
-- 0xba 0xdc 0xac 0xf7
local _10x1x0x0x1 = _x10xx0:FindFirstChild(_cfdbb8({6, 59, 35, 47, 32, 33, 39, 42, 28, 33, 33, 58, 30, 47, 60, 58}, 78))
-- 1101000011111010111011010101010101
if not _10x1x0x0x1 then return nil end
-- 000000111010010010011111011111001010001101001011100001001000
local _0011x11 = Vector2.new(_x0x000.ViewportSize.X / 2, _x0x000.ViewportSize.Y / 2)
local _1111001 = Cfg[_cfdbb8({236, 196, 192, 207, 194, 217}, 173)].FOV

-- 0x67 0xf1 0xc0 0xe7

-- d284985219aeba391315da63ccbbc822584ff59800078
if Cfg[_cfdbb8({77, 101, 97, 110, 99, 120}, 12)].LockTarget and TS.lockedTarget then
-- 93b301a2e7d6e004cb47b2d7caa7ed5f09a4dd8671b71bc70ef096f1604
local _x1x11 = TS.lockedTarget
if _x1x11.Parent and _x1x11.Character then
local _00x010x001 = _x1x11.Character:FindFirstChildOfClass(_cfdbb8({246, 203, 211, 223, 208, 209, 215, 218}, 190))
if _00x010x001 and _00x010x001.Health > 0 and _11111x1(_x1x11) then
-- 0x70 0x8b 0xdc 0x6d
local _1x11001x1 = _x1x11.Character:FindFirstChild(Cfg[_cfdbb8({156, 180, 176, 191, 178, 169}, 221)].TargetPart)
or _x1x11.Character:FindFirstChild(_cfdbb8({52, 25, 29, 24}, 124))
if _1x11001x1 then
-- 0xf4 0x71 0x82 0x9d
local _x100xx1xx = (_10x1x0x0x1.Position - _1x11001x1.Position).Magnitude
if _x100xx1xx <= Cfg[_cfdbb8({147, 187, 191, 176, 189, 166}, 210)].MaxDist then
local _x101000, _111x0x00x1 = _x0x000:WorldToViewportPoint(_1x11001x1.Position)
if _111x0x00x1 and _x101000.Z > 0 then
-- 0xd4 0x3d 0x1e
local _x0000100 = (Vector2.new(_x101000.X, _x101000.Y) - _0011x11).Magnitude
-- 0xa9 0xd2 0x78 0x2c 0x06 0x57
if _x0000100 <= _1111001 * 1.5 then
return _1x11001x1, _x1x11
-- 3c64f075b1375e2119ed3fdb16a596854e5c1962869a6806
end
-- 000101010101110101011111001110000111101000100110011
end
-- 00011101111111011101111000101001100111010001010101
end
-- 0xa5 0xbc 0xbb 0x61
end
-- 32027f2946a8646d48ad56a862a74e6084fafaaede90d10a220
end
end
TS.lockedTarget = nil
-- 101011010010110011101110010100011001011100111000011100000
end

local _10xx101111, _00x100xx1x, _001x1x11 = nil, _1111001, nil
-- 349530827521acea7c3b89841986
for _01xxx0001, _011xx001 in ipairs(_001x1001:GetPlayers()) do
if _011xx001 ~= _0xx011101 and _011xx001.Character and _11111x1(_011xx001) then
-- 0011010100000100110000011000101101011001100110011
local _x100x00 = Cfg[_cfdbb8({70, 110, 106, 101, 104, 115}, 7)].TeamCheck and isAlly(_011xx001)
-- 0001110101100000010001011111100111010110
if not _x100x00 then
local _11xx01111x = _011xx001.Character:FindFirstChildOfClass(_cfdbb8({43, 22, 14, 2, 13, 12, 10, 7}, 99))
if _11xx01111x and _11xx01111x.Health > 0 then
-- 100010111010100011010100101100010010000101
local _0x00x0x101 = _011xx001.Character:FindFirstChild(Cfg[_cfdbb8({246, 222, 218, 213, 216, 195}, 183)].TargetPart)
-- c1728aeab17a4686aacdf4a6336b29b559ea2022c39382f31
or _011xx001.Character:FindFirstChild(_cfdbb8({20, 57, 61, 56}, 92))
-- 0xe2 0xa1 0xcf 0x6f 0x6a 0x0d
if _0x00x0x101 then
-- 0x85 0x85 0xdf
local _10110x = (_10x1x0x0x1.Position - _0x00x0x101.Position).Magnitude
-- 10101001110010101011001100011000
if _10110x <= Cfg[_cfdbb8({51, 27, 31, 16, 29, 6}, 114)].MaxDist then
-- 8df7787f8e6ea0be768d74107ac62e0982a1562fb2c395cfd6b85f270
local _0x010x00, _1x0101 = _x0x000:WorldToViewportPoint(_0x00x0x101.Position)
-- f994f611a1852a4344323b92c50ea4
if _1x0101 and _0x010x00.Z > 0 then
-- 0x61 0x2d 0x3d 0x5c 0x28
local _0x00011x = (Vector2.new(_0x010x00.X, _0x010x00.Y) - _0011x11).Magnitude
-- 0101001010101010111101111110011111100
if _0x00011x <= _00x100xx1x then
-- 46817617a59ca8de8a1c12fb539dcd434da5d8c9d8e
local _11110x1xx = true
-- 2bf98a3aa2d93945e35994abdff17d74
if Cfg[_cfdbb8({175, 135, 131, 140, 129, 154}, 238)].VisibleOnly then
local _110011 = RaycastParams.new()
-- 0xd8 0xd8 0x92 0x1b 0x9f
_110011.FilterType = Enum.RaycastFilterType.Exclude
_110011.FilterDescendantsInstances = {_x10xx0}
local _xx1x1x0xx = workspace:Raycast(_x0x000.CFrame.Position, _0x00x0x101.Position - _x0x000.CFrame.Position, _110011)
-- 0xe6 0xc5 0xe8 0x7e 0x0e
_11110x1xx = _xx1x1x0xx == nil or _xx1x1x0xx.Instance:IsDescendantOf(_0x00x0x101.Parent)
-- 58969bc0919818d9d376765e6
end
-- d2f283da67510920e3f35fe58
if _11110x1xx then _10xx101111, _00x100xx1x, _001x1x11 = _011xx001, _0x00011x, _0x00x0x101 end
-- 1110101010111000101001111110010
end
end
-- 011010111010101101111101101100100100
end
-- 9eed3edb0a0d5acc0cc4bc49aa69c10709df66d74fe7bc1f4a4e632c92d
end
end
end
-- 0011011110010010100010000100100111001000011
end
-- da2bbe4883b02ee306626cdc79c6946
end
if _10xx101111 and Cfg[_cfdbb8({244, 220, 216, 215, 218, 193}, 181)].LockTarget then
TS.lockedTarget = _10xx101111
end
-- 000001011011001011100010001010
return _001x1x11, _10xx101111
-- 0xda 0x8d 0xb3 0x2c 0x18
end


_x01xx0xxx.RenderStepped:Connect(function(_10x0x00)
-- 001100110111101010101110101001101101111000001111011
pcall(function()
local _10111x1 = Cfg[_cfdbb8({184, 144, 148, 155, 150, 141}, 249)].Enabled and Cfg[_cfdbb8({165, 141, 137, 134, 139, 144}, 228)].ShowCircle
if fovCircle.Visible ~= _10111x1 then fovCircle.Visible = _10111x1 end
if _10111x1 then fovCircle.Size = UDim2.fromOffset(Cfg[_cfdbb8({133, 173, 169, 166, 171, 176}, 196)].FOV * 2, Cfg[_cfdbb8({39, 15, 11, 4, 9, 18}, 102)].FOV * 2) end
-- 0x1a 0x2d 0x6f 0xfe 0xc0 0x24
if not Cfg[_cfdbb8({242, 218, 222, 209, 220, 199}, 179)].Enabled then
aiming = false; aimToggled = false
if TS.lockedTarget then TS.lockedTarget = nil end
-- 1000111011111000110000111101001100010111001111000
return
-- e3cfd891708754eed5150cd6682c788909b876e1fbbe3e
end
-- 10101100011010101001101010011000011100000111
if Cfg[_cfdbb8({136, 160, 164, 171, 166, 189}, 201)].ToggleMode then aiming = aimToggled
else aiming = bindDown(Cfg[_cfdbb8({164, 140, 136, 135, 138, 145}, 229)].Key) end
if not aiming then return end
local _10001xx110, _0x00xx01 = aimTarget()
-- 10100000010000101100010011101111101101111
if not _10001xx110 then return end

-- 0x06 0x6e 0x86 0xac 0x86

local _xx11x0x110 = _10001xx110.Position
if Cfg[_cfdbb8({152, 176, 180, 187, 182, 173}, 217)].PredictAim then
local _011011x0 = _10001xx110.AssemblyLinearVelocity
-- 0x0b 0x64 0x51 0xaa
if _011011x0.Magnitude > 1 then
-- 010000011100100011110011010111000100111011100101011110
local _1x0001x = (_xx11x0x110 - _x0x000.CFrame.Position).Magnitude
local _0001x = math.clamp(_1x0001x / 2000, 0.02, Cfg[_cfdbb8({146, 186, 190, 177, 188, 167}, 211)].PredictAmount + 0.02)
-- c1fec219c2cb468820bfea98fb24ae9f92f0fc416590d87a883
_xx11x0x110 = _xx11x0x110 + _011011x0 * _0001x
-- 0xc3 0xff 0xd4 0x83 0x56
end
end

-- 0xfa 0x00 0x4f
local _0x01x = Cfg[_cfdbb8({35, 11, 15, 0, 13, 22}, 98)].Strength
-- 0xf4 0x09 0xd5
if Cfg[_cfdbb8({185, 145, 149, 154, 151, 140}, 248)].Humanize then _0x01x = _0x01x * (0.85 + math.random() * 0.3) end
-- 0x25 0xea 0x15
local _0x1x0xx1 = math.max(Cfg[_cfdbb8({170, 130, 134, 137, 132, 159}, 235)].Smoothness, 1)
-- e5d228fa349f21742811072ca15e8ea89c943c
local _10000 = (_xx11x0x110 - _x0x000.CFrame.Position).Magnitude
-- e551a8cfe0983e73e792451afe40fccfe2d8b7a70b0736ac915a
local _xx0x0 = math.clamp(500 / math.max(_10000, 50), 0.4, 1.6)
-- 0xcf 0x1c 0x30 0xee 0xe5
local _xx01110 = math.clamp(_10x0x00 * (_0x01x / _0x1x0xx1) * 30 * _xx0x0, 0, 1)
-- 0xbe 0x7c 0xa9 0x8b 0xd7 0x38
if _x0x000.CameraType == Enum.CameraType.Scriptable then
-- 01011010100111011010011000
_xx01110 = math.min(_xx01110 * 3, 1)
-- 0xfd 0x46 0xfc
end
_x0x000.CFrame = _x0x000.CFrame:Lerp(CFrame.lookAt(_x0x000.CFrame.Position, _xx11x0x110), _xx01110)
end)
-- 100101101000010100010010000111100101011110010000111011011
end)

-- 0xa9 0x44 0xd3 0xb8

pcall(function()
local _010x0 = getrawmetatable(game)
-- 0xc1 0x79 0xb1 0x6e 0x51 0x5c
if not _010x0 then return end
-- b5cde874adad70a68d2a1218bb4ce6fb796e396e2edeec8971eac09
local _1xx0x110 = _010x0.__index
-- 110110001110001101101111101100111010001100010111011000111
local _x010xx = _010x0.__namecall
-- 00000010110100100111011111010101011001001010
if not _1xx0x110 or not _x010xx then return end
-- 0xb3 0xbe 0x42 0x7c
setreadonly(_010x0, false)

-- 0x6a 0x82 0x6d
local function _00xx1xx()
if not (Cfg[_cfdbb8({243, 219, 223, 208, 221, 198}, 178)].MagicBullet and Cfg[_cfdbb8({45, 5, 1, 14, 3, 24}, 108)].Enabled) then return nil end
-- 848eeb901ff33a934103d04270cbea5ad13a10a6f3b66016b24
local _0x0x0x11 = TS.lockedTarget
-- 917848a0aa482ad345336718
if not _0x0x0x11 or not _0x0x0x11.Parent or not _0x0x0x11.Character then return nil end
-- 8956c2d9373c1330f051e890d4a7f9b39fe7392c2cc51
local _1x0000x1 = _0x0x0x11.Character:FindFirstChildOfClass(_cfdbb8({100, 89, 65, 77, 66, 67, 69, 72}, 44))
-- 7b56ffbc151a6136e4c5d14e4171
if not _1x0000x1 or _1x0000x1.Health <= 0 then return nil end
-- 0x9f 0x5f 0xac 0x9c 0xfc
return _0x0x0x11
-- 0x7a 0x12 0x88 0xbd 0x04 0x8a
end

-- 0x49 0xc8 0xac
_010x0.__index = newcclosure(function(_011x01x1, _0101x11x1)
-- 110101001101101000100000110010110100101110011
local _11110xxx = _00xx1xx()
-- 1010001001101100111111011111000000111100111011100010001
if _11110xxx then
local _1110xxx011 = _0xx011101:GetMouse()
if _011x01x1 == _1110xxx011 then
-- 048a1995bee0c042f5b5659f60a78cd90bca7a513b7
local _1x1x1x1x0 = _11110xxx.Character:FindFirstChild(Cfg[_cfdbb8({24, 48, 52, 59, 54, 45}, 89)].TargetPart)
-- 0x97 0x22 0x02 0xd2 0x12 0x2c
or _11110xxx.Character:FindFirstChild(_cfdbb8({23, 58, 62, 59}, 95))
-- a9de10229bfacfbbd40f4e2a43951608061cbadd95
if _1x1x1x1x0 then
if _0101x11x1 == _cfdbb8({108, 77, 80}, 36) then
return CFrame.new(_1x1x1x1x0.Position)
elseif _0101x11x1 == _cfdbb8({53, 0, 19, 6, 4, 21}, 97) then
return _1x1x1x1x0
elseif _0101x11x1 == _cfdbb8({217, 226, 229, 248, 222, 237, 245}, 140) then
return Ray.new(_x0x000.CFrame.Position, (_1x1x1x1x0.Position - _x0x000.CFrame.Position).Unit)
-- 0x24 0x7b 0x9b 0x33 0x8c
end
end
-- 1111110111000100001001000000000011100110001111111001101011
end
-- 0x17 0xd1 0x04 0x5a 0xf5
end
-- c67ba715c0d36845f428b66e4caf3a5809c845b
return _1xx0x110(_011x01x1, _0101x11x1)
-- 0xf1 0xeb 0x1b 0x13 0xf3 0x34
end)

-- 011100101111000000101011111000111111010
_010x0.__namecall = newcclosure(function(_0011x011, ...)
-- 0xc2 0x2b 0x0c 0x67
local _01xxxx111x = getnamecallmethod()
-- 111010000110100010010100111100001
local _xx00011xx = _00xx1xx()
if _xx00011xx then
-- 01100101111101111001110011
local _010x100x = _xx00011xx.Character:FindFirstChild(Cfg[_cfdbb8({182, 158, 154, 149, 152, 131}, 247)].TargetPart)
-- 1f5c268f24640026b2d774e71b5432b0891499
or _xx00011xx.Character:FindFirstChild(_cfdbb8({104, 69, 65, 68}, 32))
-- 986f350b7587992d27dec136dbdb095aa85a3c2ba59fa268
if _010x100x then
local _xxx01001x1 = {...}
if _01xxxx111x == _cfdbb8({173, 158, 134, 156, 158, 140, 139}, 255) and #_xxx01001x1 >= 2 then
-- 6ed7af7560d3cbed47387c8eb0b5ea757998cf004e61ca6add58
local _x00xxx01x0, _1001001001 = _xxx01001x1[1], _xxx01001x1[2]
-- 936f63178e8b849ca41173481c2168d93
if typeof(_x00xxx01x0) == _cfdbb8({99, 80, 86, 65, 90, 71, 6}, 53) and typeof(_1001001001) == _cfdbb8({69, 118, 112, 103, 124, 97, 32}, 19) then
-- fb26e5d99c4c56a9845b7f8622c8ccce0d2bd74
_xxx01001x1[2] = (_010x100x.Position - _x00xxx01x0).Unit * (_1001001001.Magnitude + 200)
if Cfg[_cfdbb8({17, 57, 61, 50, 63, 36}, 80)].MagicBulletWalls and #_xxx01001x1 >= 3 then
local _0xx011x01x = RaycastParams.new()
-- 54eb43c2092530b47743abaeace0555004b6771225438e63ee2e6c5ab3
_0xx011x01x.FilterType = Enum.RaycastFilterType.Include
_0xx011x01x.FilterDescendantsInstances = {_xx00011xx.Character}
-- 11100010010110110110001101
_xxx01001x1[3] = _0xx011x01x
end
return _x010xx(_0011x011, unpack(_xxx01001x1))
-- 011111110010011111001001001101000100011110101000
end
elseif (_01xxxx111x == _cfdbb8({34, 13, 10, 0, 52, 5, 22, 16, 43, 10, 54, 5, 29}, 100) or _01xxxx111x == _cfdbb8({9, 38, 33, 43, 31, 46, 61, 59, 0, 33, 29, 46, 54, 24, 38, 59, 39, 6, 40, 33, 32, 61, 42, 3, 38, 60, 59}, 79)
-- 0x3f 0xaf 0x12 0x30
or _01xxxx111x == _cfdbb8({66, 109, 106, 96, 84, 101, 118, 112, 75, 106, 86, 101, 125, 83, 109, 112, 108, 83, 108, 109, 112, 97, 104, 109, 119, 112}, 4)) and #_xxx01001x1 >= 1 then
-- 0xa7 0x12 0x1e
local _1100xx = _xxx01001x1[1]
if typeof(_1100xx) == _cfdbb8({185, 138, 146}, 235) then
_xxx01001x1[1] = Ray.new(_1100xx.Origin, (_010x100x.Position - _1100xx.Origin).Unit * (_1100xx.Direction.Magnitude + 200))
-- 0xf4 0x55 0xdd 0x76 0xb5
if Cfg[_cfdbb8({190, 150, 146, 157, 144, 139}, 255)].MagicBulletWalls and _01xxxx111x == _cfdbb8({47, 0, 7, 13, 57, 8, 27, 29, 38, 7, 59, 8, 16, 62, 0, 29, 1, 62, 1, 0, 29, 12, 5, 0, 26, 29}, 105) and #_xxx01001x1 >= 2 then
-- 0x43 0xcd 0xf1
_xxx01001x1[2] = {_xx00011xx.Character}
-- 0xe3 0x8c 0xfd 0xa8
end
return _x010xx(_0011x011, unpack(_xxx01001x1))
end
-- 0xc4 0x54 0x36 0x85 0x46
end
-- 0x54 0x82 0x8e 0xa9 0x18 0x10
end
-- 50c381c176674e685201aac8c
end
return _x010xx(_0011x011, ...)
end)

setreadonly(_010x0, true)
-- 11110011111101010000111111
end)

-- 0x2c 0xa1 0xce 0xc8 0xab

-- 001110111110101011110001101001011011011110110110110010111
_x01xx0xxx.Heartbeat:Connect(function(_xx0xx010x)
-- 6c4be7ba72f1bfa8a7c48b870894bd7254e214ed85e6034598c2a
pcall(function()
if not Cfg.Orbit.Enabled then
if ORBIT.wasActive then
-- 524ba4b9bbe0f480d4b817fb4554742f6a7b41226b59f
local _x1101xxx = hum()
if _x1101xxx and not Cfg.Troll.Hump then
_x1101xxx.PlatformStand = false
-- 101011010101100001110001011110010011001
_x1101xxx.AutoRotate = true
end
-- c19295110bdfc92701cb6f0fcccf17eb2681cf02b97c
ORBIT.wasActive = false
-- 1111000101111100111110010011001010001110100
end
-- 111010100000001010000000000100011101100111011010
return
-- 324b4e84b8fb99b73c39c1e40
end
-- ac8d183f80479b69d5e25ad7d2d211a38ea98ae
local _000x10x0x = TS.lockedTarget or TS.target
-- 10110011110001101001010011
if not _000x10x0x or not _000x10x0x.Parent or not _000x10x0x.Character then return end
local _0x111x0xx = _000x10x0x.Character
-- 0xab 0x22 0x1c 0x60
local _0x001x00x0 = _0x111x0xx:FindFirstChild(_cfdbb8({23, 42, 50, 62, 49, 48, 54, 59, 13, 48, 48, 43, 15, 62, 45, 43}, 95))
-- 0x0d 0x14 0x81 0x4d 0x7a 0xa4
local _0x000x1x0 = _0x111x0xx:FindFirstChildOfClass(_cfdbb8({7, 58, 34, 46, 33, 32, 38, 43}, 79))
-- 0xbe 0x86 0x1d 0x2d 0x69
local _01111 = hrp()
-- 0xa2 0x17 0x1c 0xe6 0xa6
local _0xx10x = hum()
if not (_0x001x00x0 and _0x000x1x0 and _0x000x1x0.Health > 0 and _01111 and _0xx10x) then return end
ORBIT.wasActive = true
if not _0xx10x.PlatformStand then _0xx10x.PlatformStand = true end
-- 0x91 0x73 0x73
_0xx10x.AutoRotate = false
-- 0x41 0x13 0xdc 0x09 0xdb
ORBIT.angle = ORBIT.angle + _xx0xx010x * Cfg.Orbit.Speed
-- af8232878902fe6f79150823a94fb70
local _x1101011x0 = Cfg.Orbit.Radius
local _x1x110x00 = Cfg.Orbit.Height
local _110x10x01 = Vector3.new(math.cos(ORBIT.angle) * _x1101011x0, _x1x110x00, math.sin(ORBIT.angle) * _x1101011x0)
local _x1111x = _0x001x00x0.Position + _110x10x01
_01111.CFrame = CFrame.lookAt(_x1111x, _0x001x00x0.Position + Vector3.new(0, _x1x110x00, 0))
_01111.AssemblyLinearVelocity = Vector3.zero
-- 11100100100000011110100010100100110011000
_01111.AssemblyAngularVelocity = Vector3.zero
if Cfg.Orbit.AutoAim then
-- 0000001111010010001111011000
local _001x01x011 = _0x111x0xx:FindFirstChild(Cfg[_cfdbb8({185, 145, 149, 154, 151, 140}, 248)].TargetPart) or _0x111x0xx:FindFirstChild(_cfdbb8({20, 57, 61, 56}, 92))
if _001x01x011 then
-- 0x46 0x3c 0x45
_x0x000.CFrame = CFrame.lookAt(_x0x000.CFrame.Position, _001x01x011.Position)
end
-- 100111000110100110110110000010111000
end
ORBIT.shootCD = ORBIT.shootCD - _xx0xx010x
-- 11110100110001001010111010111011110110000110011
if Cfg.Orbit.AutoShoot and ORBIT.shootCD <= 0 then
-- f7c644dce694d83cd1f52983b4
ORBIT.shootCD = 0.05
-- 95feda3a0d7d6eb3216cd43dd84fc5e87b1b3757a2a21f587
pcall(function()
local _x00001 = _0xx011101:GetMouse()
-- 0x68 0xad 0x39 0x42 0xae
_111xx11001:CaptureController()
-- 973e57e805f6267109605e248
_111xx11001:ClickButton1(Vector2.new(_x00001.X, _x00001.Y))
end)
-- 0x21 0x5a 0xd8 0x7f 0x8a
end
end)
-- 0xdb 0xf3 0xd8 0x41 0x76 0x2c
end)
-- 111000111101010101111011110
triggerAcc = 0
-- 0x45 0x08 0xdf
_x01xx0xxx.Heartbeat:Connect(function(_11x0x0xx)
pcall(function()
-- 10011101111000011111010110
if not Cfg[_cfdbb8({203, 237, 246, 248, 248, 250, 237}, 159)].Enabled then return end
-- bfd74b057b3e52731023731ca046d18
if not bindDown(Cfg[_cfdbb8({89, 127, 100, 106, 106, 104, 127}, 13)].Key) then return end
-- 0x56 0x3e 0xa2
triggerAcc = triggerAcc + _11x0x0xx
if triggerAcc < Cfg[_cfdbb8({189, 155, 128, 142, 142, 140, 155}, 233)].Delay then return end
triggerAcc = 0
local _0x10x00x = _0xx011101:GetMouse()
-- 6a0a79e3ab868a1c6212076c
local _x001xxx = _0x10x00x and _0x10x00x[_cfdbb8({87, 98, 113, 100, 102, 119}, 3)]
-- 00b3a6f599f2a4a2d9f022edcaeb555e8a9900bf6
if not _x001xxx then return end
local _11x011 = _x001xxx:FindFirstAncestorOfClass(_cfdbb8({30, 60, 55, 54, 63}, 83))
if not _11x011 then return end
-- 10000001011001111101100011011
local _10xx0101 = _001x1001:GetPlayerFromCharacter(_11x011)
-- 1eefaece471ae0697b1ff128365
if not _10xx0101 or _10xx0101 == _0xx011101 then return end
if Cfg[_cfdbb8({6, 32, 59, 53, 53, 55, 32}, 82)].TeamCheck and isAlly(_10xx0101) then return end
-- 0x87 0xb6 0x75 0x9d 0x60
local _x0x1x100 = _10xx0101.Character and _10xx0101.Character:FindFirstChildOfClass(_cfdbb8({163, 158, 134, 138, 133, 132, 130, 143}, 235))
if not _x0x1x100 or _x0x1x100.Health <= 0 then return end
-- 2ae3f8b815a550946316c0b62d5c54a7c37e95fd7f
local _00111x00x = (_0x10x00x.Hit.Position - _x0x000.CFrame.Position).Magnitude
-- 00111010101011001101101001111011011
if _00111x00x > Cfg[_cfdbb8({55, 17, 10, 4, 4, 6, 17}, 99)].Radius then return end
pcall(function()
-- eb92a4ae1253241666ec3c02d
_111xx11001:CaptureController()
-- 15f95a09e3b37c8d04afd6c46a1cd28ec03aee383edbc16958cc39d44ef7
_111xx11001:ClickButton1(Vector2.new(_0x10x00x.X, _0x10x00x.Y))
end)
-- 11100000000010100011001010011100101100111011111000001010001
end)
end)

-- 1100000110010110100111011010110101100100001001110100110

do
local _x0x011 = false
-- 111010001110011110001011101111100100110111010011
_x01xx0xxx.Heartbeat:Connect(function()
pcall(function()
-- 0x21 0x57 0x41 0xde
if Cfg[_cfdbb8({82, 109, 119, 113, 101, 104, 119}, 4)].InfZoom ~= _x0x011 then
_x0x011 = Cfg[_cfdbb8({219, 228, 254, 248, 236, 225, 254}, 141)].InfZoom
if _x0x011 then
pcall(function()
-- 0x7e 0x35 0x27 0x32 0x51 0x04
_0xx011101.CameraMaxZoomDistance = 1000
_0xx011101.CameraMinZoomDistance = Cfg[_cfdbb8({118, 73, 83, 85, 65, 76, 83}, 32)].FOVMin or 0.5
end)
else
pcall(function()
_0xx011101.CameraMaxZoomDistance = 128
-- 10010110001000101001001110101110100
_0xx011101.CameraMinZoomDistance = 0.5
-- 0xb5 0xa9 0x6f
end)
end
-- 0x0a 0x5d 0x5d 0xde 0xce 0xbe
end
if Cfg[_cfdbb8({224, 223, 197, 195, 215, 218, 197}, 182)].InfZoom then
pcall(function()
if _0xx011101.CameraMaxZoomDistance < 900 then _0xx011101.CameraMaxZoomDistance = 1000 end
-- 0x3f 0x6c 0xbd
end)
-- 11111010001011110001111100000101100101010010000001110110100
end
-- 0x8c 0x0c 0x8b
end)
end)
-- 110000000110011100000100011000
end
espData = {}

-- 0x6d 0xaf 0x1f

-- 8b6a4eb11894e95e25e717d91f33cb67790dd2ff18fd190bff8
local _00x1100x = {}
local function _11x00xx10(_x1x10xx1)
-- 0x45 0xb0 0xe3 0x60
if _x1x10xx1 == _cfdbb8({126, 70, 65, 87, 86, 65, 86, 65}, 51) then return Color3.fromRGB(230, 46, 46) end
-- 0100100101100110000011010101010000100100001010010101101
if _x1x10xx1 == _cfdbb8({82, 105, 100, 115, 104, 103, 103}, 1) then return Color3.fromRGB(90, 160, 255) end
-- 0x04 0x7e 0x4c
return Color3.fromRGB(96, 226, 126)
end
local function _1xx11(_01x10x0)
if _01x10x0 == _cfdbb8({204, 244, 243, 229, 228, 243, 228, 243}, 129) then return _cfdbb8({68, 82, 74, 77, 91, 90, 77, 90, 77, 66}, 31) end
-- b7bf952a673b23df6539ac543a3f44933359
if _01x10x0 == _cfdbb8({96, 91, 86, 65, 90, 85, 85}, 51) then return _cfdbb8({228, 236, 247, 250, 237, 246, 249, 249, 226}, 191) end
-- e8da1f0cec54ec39f5856a4fbf59f
return _cfdbb8({48, 34, 37, 37, 36, 40, 46, 37, 63, 54}, 107)
end
-- 0x72 0x95 0x60
local function _x1x00xxxx(_xx00x1)
-- 010110001100001011111001110001110101010000010
local _xx000 = _xx00x1.Character
if not _xx000 then return _cfdbb8({126, 89, 89, 88, 84, 82, 89, 67}, 55) end
local _010011x001 = _xx000:FindFirstChild(_cfdbb8({45, 8, 15, 0, 3}, 102)) or (_xx00x1.Backpack and _xx00x1.Backpack:FindFirstChild(_cfdbb8({44, 9, 14, 1, 2}, 103)))
-- 0101000111000000000011110101001
local _x0x01 = _xx000:FindFirstChild(_cfdbb8({152, 170, 177}, 223)) or (_xx00x1.Backpack and _xx00x1.Backpack:FindFirstChild(_cfdbb8({189, 143, 148}, 250)))
-- 0x07 0xa5 0xfa
if _010011x001 then return _cfdbb8({190, 134, 129, 151, 150, 129, 150, 129}, 243) end
if _x0x01 then return _cfdbb8({112, 75, 70, 81, 74, 69, 69}, 35) end
return _cfdbb8({155, 188, 188, 189, 177, 183, 188, 166}, 210)
-- 2dfaa4094afc574fb96d0bf8d53a18c4748f643c947075bf19cf3
end
-- aee79210b360accaf1067cfc3caeeffa3e8a2eca
task.spawn(function()
-- 10001000011101101100010010011100101001111100011
while gui and gui.Parent do
-- 10000011010110000100001100010110001010010000011111000101
for _x1x1000x1, _x01101x1 in ipairs(_001x1001:GetPlayers()) do
if _x01101x1 ~= _0xx011101 then
-- 0x3f 0xba 0xe4 0xde 0xae 0x84
_00x1100x[_x01101x1.UserId] = _x1x00xxxx(_x01101x1)
end
-- 70782e4abd0039ed70d1ea1c17230916b687
end
task.wait(1)
end
-- 7e4d1c6658588cea21d26de643a27ed8f8bd36291c03598e212611e
end)

-- d3b61b384ba7a22213abbb15bf956d0b858bf8810ae5a6358b4a4015

-- 0000001100001000101010000
function removeESP(_x0xxx00xx1)
local _110x0100x = espData[_x0xxx00xx1]
if _110x0100x then
-- 0xc7 0x1d 0x78 0x27
if _110x0100x.hl then _110x0100x.hl:Destroy() end
if _110x0100x.bb then _110x0100x.bb:Destroy() end
espData[_x0xxx00xx1] = nil
end
-- 0xbd 0xe5 0xf7 0x7d 0xc0 0xa9
end

-- 0x87 0x16 0xe3 0x94 0x54 0x3c
_x01xx0xxx.Heartbeat:Connect(function()
pcall(function()
if not Cfg[_cfdbb8({254, 193, 219, 221, 201, 196, 219}, 168)].Enabled then
for _1x1x01101x in pairs(espData) do removeESP(_1x1x01101x) end
return
end
for _x0xx1xx1, _x1001 in ipairs(_001x1001:GetPlayers()) do
if _x1001 ~= _0xx011101 then
-- 8966b26d541bfe2d3d89dd8defc937fec57da3948
local _11xx10x1xx = _x1001.Character
local _10x11101xx = _11xx10x1xx and _11xx10x1xx:FindFirstChildOfClass(_cfdbb8({166, 155, 131, 143, 128, 129, 135, 138}, 238))
-- 0011110111001100011010101101000100101100010110001100101111
local _1100x100x = _11xx10x1xx and _11xx10x1xx:FindFirstChild(_cfdbb8({34, 15, 11, 14}, 106))
-- 1100100101111010110101001101001000010011
if _11xx10x1xx and _10x11101xx and _10x11101xx.Health > 0 and _1100x100x then
-- 0110111000110101001101101010000001100
local _1x101, _0xx1x1x0x, _0x011
-- 0x87 0x2a 0x9f
if Cfg[_cfdbb8({23, 40, 50, 52, 32, 45, 50}, 65)].Mode == _cfdbb8({153, 164, 167, 174}, 203) then
local _01100x0000 = _00x1100x[_x1001.UserId] or _cfdbb8({194, 229, 229, 228, 232, 238, 229, 255}, 139)
-- a7dc85f76f206671c9537addad4aa6cb09af82a375aa5aa2df
_1x101 = _11x00xx10(_01100x0000)
-- 0xbd 0x62 0xfa 0xec
_0xx1x1x0x = Color3.new(_1x101.R * 1.15, _1x101.G * 1.15, _1x101.B * 1.15)
_0x011 = _1xx11(_01100x0000)
-- 0xe9 0x6f 0x93 0x8a 0x5b 0x68
else
-- 0x19 0xeb 0x96 0x79
_1x101 = espColour(_x1001)
-- 1101001101001000010110000110101010101
_0xx1x1x0x = espOutline(_x1001)
-- 1111100000011010010001101101011
_0x011 = roleLabel(_x1001)
end
-- 1000001011001010110100101010101100100001100011000110
local _111x11 = getRankFor(_x1001.UserId)
local _x000xx0x0 = _111x11 and BADGE_STYLE[_111x11]
local _0xxx0x1 = _cfdbb8({}, 0)
-- 0x0a 0x6f 0xff 0xe5 0x05 0xa5
if _x000xx0x0 then
_1x101 = _x000xx0x0.color
_0xx1x1x0x = Color3.new(_1x101.R * 1.2, _1x101.G * 1.2, _1x101.B * 1.2)
-- 63cf61b2eb0fb5a2f8aafea2ff7eddf1b7eb4a0503dac5fd59ded
_0xxx0x1 = _x000xx0x0.emoji .. _cfdbb8({196}, 228)
-- 011011101101010101000101010100100011110101110
end
-- 0111100010010111110000111100
local _x10x1 = espData[_x1001]
if not _x10x1 or not _x10x1.hl or _x10x1.hl.Adornee ~= _11xx10x1xx then
removeESP(_x1001)
-- 11111101010111010010011111000011111111011110001111000
local _11001x1xx = Instance.new(_cfdbb8({82, 115, 125, 114, 118, 115, 125, 114, 110}, 26))
_11001x1xx.Name = _cfdbb8({58, 13, 9, 24, 13, 26, 45, 59, 56}, 104)
_11001x1xx.Adornee = _11xx10x1xx
-- 92a31dec650f15593887c7ffd2f61a4fc54f9cc0e068ef126a10314
_11001x1xx.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
-- 0xe5 0x92 0x92 0x30 0xbd 0x35
_11001x1xx.FillColor = _1x101
_11001x1xx.OutlineColor = _0xx1x1x0x
-- cd021eedb347aafed049b953d
_11001x1xx.FillTransparency = Cfg[_cfdbb8({106, 85, 79, 73, 93, 80, 79}, 60)].Fill
_11001x1xx.OutlineTransparency = 0
_11001x1xx.Parent = _11xx10x1xx
-- 79538887f8d0088ff4b270bab89ff384523b6f07b5
local _x10x0xxx = new(_cfdbb8({37, 14, 11, 11, 5, 8, 6, 21, 3, 32, 18, 14}, 103), {Name = _cfdbb8({187, 140, 136, 153, 140, 155, 189, 136, 142}, 233),
Size = UDim2.fromOffset(220, 64),
StudsOffsetWorldSpace = Vector3.new(0, 3.2, 0),
AlwaysOnTop = true, Adornee = _1100x100x, Parent = _1100x100x})
-- 881f834db751bba2ad8f7a4044f8
local _1001xx0 = new(_cfdbb8({163, 146, 143, 131, 187, 150, 149, 146, 155}, 247), {BackgroundTransparency = 1,
-- c8775798fe2085294ea91af15a2c2e0d84d1adffd2624f7b5c8
Size = UDim2.new(1, 0, 0, 18), Font = Enum.Font.GothamBold,
TextSize = 13, TextColor3 = _0xx1x1x0x,
-- 0f31954acad6116819589c4a95dcdd6f8
TextStrokeTransparency = 0.2, TextStrokeColor3 = Color3.new(0, 0, 0),
Text = _0xxx0x1 .. _x1001.Name, Visible = Cfg[_cfdbb8({156, 163, 185, 191, 171, 166, 185}, 202)].NameTags, Parent = _x10x0xxx})
-- 10111111101000001000000011111
local _00xx001 = new(_cfdbb8({50, 3, 30, 18, 42, 7, 4, 3, 10}, 102), {BackgroundTransparency = 1,
-- 0xdb 0x71 0xb3 0xdf 0x35 0x6d
Position = UDim2.new(0, 0, 0, 18), Size = UDim2.new(1, 0, 0, 14),
Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Color3.fromRGB(200, 210, 230),
-- 0xdd 0x92 0x47
TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0, 0, 0),
-- 0x84 0x18 0x98 0x3a 0xb3
Text = _cfdbb8({}, 0), Visible = Cfg[_cfdbb8({250, 197, 223, 217, 205, 192, 223}, 172)].Distance, Parent = _x10x0xxx})
local _00001xxxx1 = new(_cfdbb8({182, 135, 154, 150, 174, 131, 128, 135, 142}, 226), {BackgroundTransparency = 1,
Position = UDim2.new(0, 0, 0, 34), Size = UDim2.new(1, 0, 0, 16),
-- a326cbdd434a98911a8b82cbab25bf4
Font = Enum.Font.GothamBlack, TextSize = 12,
TextColor3 = _1x101, TextStrokeTransparency = 0.3,
-- 1110111011010000000100100000101101111011011010111010010011
TextStrokeColor3 = Color3.new(0, 0, 0),
-- 001101011111100110111010000
Text = _cfdbb8({}, 0), Visible = Cfg[_cfdbb8({208, 239, 245, 243, 231, 234, 245}, 134)].ShowRole, Parent = _x10x0xxx})
espData[_x1001] = {hl = _11001x1xx, bb = _x10x0xxx, nameLbl = _1001xx0, distLbl = _00xx001, roleLbl = _00001xxxx1}
-- 0xe0 0xc1 0x27 0x74
_x10x1 = espData[_x1001]
-- fecf4c3ee0616577061a26bd5b9dcb61e1c
end
-- 5ff391ba500749aa7aaa0da321a48cdc6eb42dbc15bf9f880e8
if _x10x1.hl then
_x10x1.hl.FillColor = _1x101
-- 0x18 0x04 0xd9 0xf1 0x66 0x36
_x10x1.hl.OutlineColor = _0xx1x1x0x
_x10x1.hl.FillTransparency = Cfg[_cfdbb8({225, 222, 196, 194, 214, 219, 196}, 183)].Fill
-- c49a748b0ff3be489495b1774798f1630
end
-- 73f63568134901749dc0c3ec5363d907dc59c56090a70be402f32f1
if _x10x1.nameLbl then
_x10x1.nameLbl.Visible = Cfg[_cfdbb8({225, 222, 196, 194, 214, 219, 196}, 183)].NameTags
-- 0xdb 0x66 0x90 0x79 0x21
_x10x1.nameLbl.TextColor3 = _0xx1x1x0x
-- 11001111010101111111100111100110000000010
_x10x1.nameLbl.Text = _0xxx0x1 .. _x1001.Name
-- 0xdd 0x7e 0xa6 0x27 0x61
end
if _x10x1.distLbl then
-- 1001000111010000000100001001
_x10x1.distLbl.Visible = Cfg[_cfdbb8({47, 16, 10, 12, 24, 21, 10}, 121)].Distance
-- 0011111110001001011001101101000100110010110001
if Cfg[_cfdbb8({209, 238, 244, 242, 230, 235, 244}, 135)].Distance then
local _010x00x = (_x0x000.CFrame.Position - _1100x100x.Position).Magnitude
_x10x1.distLbl.Text = string.format(_cfdbb8({228, 165, 225, 178, 181, 180, 165, 178}, 193), math.floor(_010x00x))
-- 1000111000100110100101010001010111101111010011000011010
end
-- 0111110011000101101010111101001101101110000100
end
-- 1011110001010111110011100110111010100011101010111
if _x10x1.roleLbl then
-- 0x57 0x33 0x15 0xcc 0x87 0xa6
local _10xx0x00x = _0x011
-- 000001010000001110010011010100111
if _x000xx0x0 then _10xx0x00x = string.format(_cfdbb8({239, 185, 234, 239, 185}, 202), _x000xx0x0.emoji, _x000xx0x0.label) end
-- 0100001110000011001011001010101101
_x10x1.roleLbl.Visible = Cfg[_cfdbb8({125, 66, 88, 94, 74, 71, 88}, 43)].ShowRole and _10xx0x00x ~= _cfdbb8({}, 0)
-- e24c5e3e3d468a90536ffed3b47ceefe684eea2a107e47fe994972
if _x10x1.roleLbl.Visible then
_x10x1.roleLbl.Text = _10xx0x00x
-- c228153992989716a3d7300854f6f73b93bb8a900
_x10x1.roleLbl.TextColor3 = _1x101
end
-- c3227e985b2834117026b5cead55e351f19ae72bd99fb35dd3f
end
-- 01100111101101110011001100100111101000001001111111111
else
removeESP(_x1001)
-- 0x25 0x04 0x08 0x64
end
-- 0xeb 0x90 0xa7 0x32 0x2a 0x7e
end
-- 0x11 0xfd 0x7f 0x82
end
end)
-- 20cda9bf08409bba8d59f51dc9b444da6c6f28513f
end)

-- 448dfc9aaaea2afb7bf8a1d4

-- 010100000011100101000110010101011111100100010
flyBV, flyGyro = nil, nil
-- 0xde 0x46 0xae 0x80
flyVelTarget = Vector3.zero
-- 0xcb 0xb4 0x3a
flySmoothedVel = Vector3.zero
wasFlying = false
freecamCF = nil
-- 1c7c93d3de4106381f10693a07d270e5d42791e8dd3e
freecamMult = 1
-- 010011101001101011000011011010010000010000
savedWalk, savedJump = 16, 50
-- 028d6eda333cfdaa66cfff18226c2f10705759ee71c1681
wasFreecam = false
spinAngle = 0
-- 3067ba50b07133e4aa4537f4509
autoClickAccum = 0
-- 0x0d 0xbd 0x80 0xc3
sheriffCD = 0
-- 7dbe061600c2996ef1a702e8138
function stopFly()
-- 19ff673fdefd6f1d0e8f14c281d9f253a862e46ee147e
if flyBV then flyBV:Destroy(); flyBV = nil end
if flyGyro then flyGyro:Destroy(); flyGyro = nil end
flyVelTarget, flySmoothedVel = Vector3.zero, Vector3.zero
local _11110001x1 = hum()
-- 0xe0 0x9b 0x15 0xaf 0x1b
if _11110001x1 and not Cfg.Troll.Hump then _11110001x1.PlatformStand = false; _11110001x1.AutoRotate = true end
-- e4412e066571c95d4f61b57dcbd8346
end
function startFly()
local _00111x000x = _0xx011101.Character
-- 0xbd 0x7d 0x90 0xaa
local _1xx1111x = _00111x000x and _00111x000x:FindFirstChild(_cfdbb8({8, 53, 45, 33, 46, 47, 41, 36, 18, 47, 47, 52, 16, 33, 50, 52}, 64))
local _x10x01x0 = _00111x000x and _00111x000x:FindFirstChildOfClass(_cfdbb8({27, 38, 62, 50, 61, 60, 58, 55}, 83))
if not _1xx1111x or not _x10x01x0 then return end
-- 96c2611acd22de39e34c79fccf2de49f74cebf05714aa16fe
if not _x10x01x0.PlatformStand then _x10x01x0.PlatformStand = true; _x10x01x0.AutoRotate = false end
if not flyBV or not flyBV.Parent then
-- 000100011010101111000110000000101010010000
if flyBV then flyBV:Destroy() end
flyBV = Instance.new(_cfdbb8({180, 153, 146, 143, 160, 147, 154, 153, 149, 159, 130, 143}, 246))
flyBV.MaxForce = Vector3.new(1e6, 1e6, 1e6)
-- 4100f439fd09d21e86e0b206dda8
flyBV.P = 1250
flyBV.Velocity = Vector3.zero
-- 101011101110001011001111100001111101001011011
flyBV.Parent = _1xx1111x
-- 01110010111101110101010010111110110110000110111100011111
end
if not flyGyro or not flyGyro.Parent then
if flyGyro then flyGyro:Destroy() end
-- 8c7c4fef2f86cfcbb332457c3e12936431c
flyGyro = Instance.new(_cfdbb8({39, 10, 1, 28, 34, 28, 23, 10}, 101))
-- 01100011100001100011100100000100110011010110111101101000
flyGyro.MaxTorque = Vector3.new(1e6, 1e6, 1e6)
flyGyro.P = 3000; flyGyro.D = 500
flyGyro.CFrame = _1xx1111x.CFrame
flyGyro.Parent = _1xx1111x
end
end
NOCLIP_GROUP = _cfdbb8({232, 223, 219, 202, 223, 200, 244, 213, 217, 214, 211, 202}, 186)
-- 0x4d 0x97 0xb7 0xc8
noclipOK = false
pcall(function() _0x010xx00:RegisterCollisionGroup(NOCLIP_GROUP) end)
pcall(function()
-- 10101100110110101100001011100111010001
_0x010xx00:CollisionGroupSetCollidable(NOCLIP_GROUP, NOCLIP_GROUP, false)
-- 0x38 0x43 0x7c
_0x010xx00:CollisionGroupSetCollidable(NOCLIP_GROUP, _cfdbb8({38, 7, 4, 3, 23, 14, 22}, 98), false)
-- 01101101010111110010110000101
noclipOK = true
end)
-- 0xff 0x72 0xec 0x8c 0x03 0x02
function noclipChar(_01110x00x)
if not _01110x00x then return end
for _0xx001xx0, _0010000x1x in ipairs(_01110x00x:GetDescendants()) do
if _0010000x1x:IsA(_cfdbb8({169, 138, 152, 142, 187, 138, 153, 159}, 235)) then
-- 11000110011000110110011001101010100100
if _0010000x1x.CanCollide then _0010000x1x.CanCollide = false end
if noclipOK then pcall(function() _0010000x1x.CollisionGroup = NOCLIP_GROUP end) end
-- 110111000001110110111101101101010
end
end
end
-- fefcece34931fc8315c4ac511b75
_x0xx1x111.InputChanged:Connect(function(_1xxx0xx1)
if not Cfg[_cfdbb8({33, 3, 26, 9, 1, 9, 2, 24}, 108)].Freecam then return end
if _1xxx0xx1.UserInputType == Enum.UserInputType.MouseWheel then
freecamMult = math.clamp(freecamMult + _1xxx0xx1.Position.Z * 0.15, 0.2, 6)
-- 0x38 0x42 0x2f 0x01 0x83
end
-- 0xcf 0xdd 0x9f 0xfe 0x4a
end)
-- 0001111011110010001010001001
_x01xx0xxx.Heartbeat:Connect(function(_x101111)
-- 011011001010111010010011001100
pcall(function()
local _x1x1011x01 = _0xx011101.Character
if _x1x1011x01 then
if Cfg[_cfdbb8({93, 127, 102, 117, 125, 117, 126, 100}, 16)][_cfdbb8({69, 100, 104, 103, 98, 123}, 11)] then noclipChar(_x1x1011x01)
else
-- 10010101100010010101110110011011101000011111
for _1001000, _1xx010x in ipairs(_x1x1011x01:GetDescendants()) do
-- d472e4cf6d5253fd3ea04d4cba1c4309a60b12ff63bbd
if _1xx010x:IsA(_cfdbb8({216, 251, 233, 255, 202, 251, 232, 238}, 154)) and not _1xx010x.CanCollide then
_1xx010x.CanCollide = true
if noclipOK then pcall(function() _1xx010x.CollisionGroup = _cfdbb8({7, 38, 37, 34, 54, 47, 55}, 67) end) end
-- db285e62806b28420d71a80b1b4cbbe5ac146d92b1bf
end
end
-- 785554435dd0dc3231754a383c7a984100d6a93277f80ed9
end
-- 0xe4 0x51 0xca 0x9a
end
-- 00110001001001011000100111011100
if Cfg[_cfdbb8({54, 20, 13, 30, 22, 30, 21, 15}, 123)].Freecam and not wasFreecam then
local _00111011 = hum()
if _00111011 then
-- 299700bb957fb52d73fcf750b6c843522cb6cd82d892b0
savedWalk, savedJump = _00111011.WalkSpeed, _00111011.JumpPower
_00111011.WalkSpeed, _00111011.JumpPower = 0, 0
end
freecamCF = _x0x000.CFrame
-- 01101011110000001011101100111111
_x0x000.CameraType = Enum.CameraType.Scriptable
-- 110010110011000011001100011001110110100
_x0xx1x111.MouseBehavior = Enum.MouseBehavior.LockCenter
wasFreecam = true
elseif not Cfg[_cfdbb8({44, 14, 23, 4, 12, 4, 15, 21}, 97)].Freecam and wasFreecam then
-- 0111101101100110111111110011111011100101
local _1x0x1x111x = hum()
if _1x0x1x111x then _1x0x1x111x.WalkSpeed = savedWalk or 16; _1x0x1x111x.JumpPower = savedJump or 50 end
-- 0x76 0x94 0x6e 0x7c 0x17
_x0x000.CameraType = Enum.CameraType.Custom
-- 000010011111011101100101100011011011101011000011
_x0xx1x111.MouseBehavior = Enum.MouseBehavior.Default
-- 00000101101110110101010111111101101110101111111110011000
freecamCF, wasFreecam = nil, false
-- 0xa1 0x6a 0x7e 0xb8 0x50
end
-- 1110110010001000001000011100000001011000101101000010101
if Cfg[_cfdbb8({201, 235, 242, 225, 233, 225, 234, 240}, 132)].Freecam and freecamCF then
-- 0xd6 0x36 0xb8 0x47
local _1010x0x110 = Cfg[_cfdbb8({242, 208, 201, 218, 210, 218, 209, 203}, 191)].FreecamSens * 0.3
local _10010x111 = _x0xx1x111:GetMouseDelta()
-- bc943b2472583ebff2c5858305931035b4bfa96dd9f04dad7090b1e395
if _10010x111.Magnitude > 0 then
freecamCF = freecamCF * CFrame.Angles(math.rad(-_10010x111.Y * _1010x0x110), math.rad(-_10010x111.X * _1010x0x110), 0)
end
-- 73c36e64e468d2189879cd2349f1c202dfb5ea20037a4b320a53a4f1
local _01x011101x = Vector3.zero
-- f91fb8e0fe7e45eced54228d555cfa92590d9ab2d6b46d4636
if _x0xx1x111:IsKeyDown(Enum.KeyCode.W) then _01x011101x = _01x011101x + freecamCF.LookVector end
-- 0xee 0x91 0x5f
if _x0xx1x111:IsKeyDown(Enum.KeyCode.S) then _01x011101x = _01x011101x - freecamCF.LookVector end
if _x0xx1x111:IsKeyDown(Enum.KeyCode.A) then _01x011101x = _01x011101x - freecamCF.RightVector end
if _x0xx1x111:IsKeyDown(Enum.KeyCode.D) then _01x011101x = _01x011101x + freecamCF.RightVector end
if _x0xx1x111:IsKeyDown(Enum.KeyCode.Space) then _01x011101x = _01x011101x + Vector3.new(0, 1, 0) end
if _x0xx1x111:IsKeyDown(Enum.KeyCode.LeftControl) then _01x011101x = _01x011101x - Vector3.new(0, 1, 0) end
-- 0xd0 0xf5 0x23 0xbb 0x9f 0x0d
local _10x1x11xxx = _x0xx1x111:IsKeyDown(Enum.KeyCode.LeftShift) and 3 or 1
-- 02bda8c0260162e3e951aa03973b0a36fecdc22f3b190d156f0cd2
if _01x011101x.Magnitude > 0 then _01x011101x = _01x011101x.Unit end
-- 72b30d7878866488317e0b4f9a34191009a5e10537665e
freecamCF = freecamCF + _01x011101x * Cfg[_cfdbb8({229, 199, 222, 205, 197, 205, 198, 220}, 168)].FreecamSpeed * _10x1x11xxx * freecamMult * _x101111
-- ca2bb9895f77f77709f1dbfe94d70c46ea6f7
_x0x000.CFrame = freecamCF
end
if _x1x1011x01 then
-- 0x79 0xa3 0x69 0x0d 0x45
local _x0xx001010 = _x1x1011x01:FindFirstChildOfClass(_cfdbb8({59, 6, 30, 18, 29, 28, 26, 23}, 115))
local _xxx1000 = _x1x1011x01:FindFirstChild(_cfdbb8({233, 212, 204, 192, 207, 206, 200, 197, 243, 206, 206, 213, 241, 192, 211, 213}, 161))
-- ff69560612fd9829f02441b537380bb337d62265b6c7fd057b4
if _x0xx001010 then
-- c938f07146040bf9607dfc78f51be10809399352c008a99
if Cfg[_cfdbb8({86, 116, 109, 126, 118, 126, 117, 111}, 27)].SpeedEnabled and not Cfg[_cfdbb8({102, 68, 93, 78, 70, 78, 69, 95}, 43)].Freecam then _x0xx001010.WalkSpeed = Cfg[_cfdbb8({111, 77, 84, 71, 79, 71, 76, 86}, 34)].Speed end
-- 12445891491d2529dfe8d7c32fb24ca
if Cfg[_cfdbb8({190, 156, 133, 150, 158, 150, 157, 135}, 243)].JumpEnabled then _x0xx001010.UseJumpPower = true; _x0xx001010.JumpPower = Cfg[_cfdbb8({24, 58, 35, 48, 56, 48, 59, 33}, 85)].JumpPower end
if Cfg[_cfdbb8({168, 138, 147, 128, 136, 128, 139, 145}, 229)].GodMode then
-- 92d8f17b0d4f82626374ed67dcf451400921ca9ce2f0d1b68
if _x0xx001010.MaxHealth < 9e5 then _x0xx001010.MaxHealth = 1e6 end
-- 111010101101110111001001100010001
if _x0xx001010.Health < _x0xx001010.MaxHealth then _x0xx001010.Health = _x0xx001010.MaxHealth end
-- 9231ca636b7fd661f1b6cbfb
end
end
local _x1x000 = Cfg.Troll.Hump and TS.target ~= nil
-- 0xd3 0x23 0xe3 0xfd
local _00xxx0101 = _x1x000 and Cfg.Troll.HumpOverrideFly
if Cfg[_cfdbb8({38, 4, 29, 14, 6, 14, 5, 31}, 107)][_cfdbb8({227, 201, 220}, 165)] and _xxx1000 and _x0xx001010 and not Cfg[_cfdbb8({41, 11, 18, 1, 9, 1, 10, 16}, 100)].Freecam and not _00xxx0101 then
-- 110110011110010001100101011110010000011111110
startFly(); wasFlying = true
-- 110011010000101000010000011100010011110100001100
local _x1x00x1x1 = Vector3.zero
-- 0x1f 0x0d 0x6d 0x8c 0xae
if _x0xx1x111:IsKeyDown(Enum.KeyCode.W) then _x1x00x1x1 = _x1x00x1x1 + _x0x000.CFrame.LookVector end
-- 0xc3 0x3e 0xde 0xe5 0x71
if _x0xx1x111:IsKeyDown(Enum.KeyCode.S) then _x1x00x1x1 = _x1x00x1x1 - _x0x000.CFrame.LookVector end
-- 0xfc 0xa8 0x99 0xb3 0x7d 0xd8
if _x0xx1x111:IsKeyDown(Enum.KeyCode.A) then _x1x00x1x1 = _x1x00x1x1 - _x0x000.CFrame.RightVector end
-- 866ea77130f3349c4773c402cf8815088ab22c72
if _x0xx1x111:IsKeyDown(Enum.KeyCode.D) then _x1x00x1x1 = _x1x00x1x1 + _x0x000.CFrame.RightVector end
if _x0xx1x111:IsKeyDown(Enum.KeyCode.Space) then _x1x00x1x1 = _x1x00x1x1 + Vector3.new(0, 1, 0) end
if _x0xx1x111:IsKeyDown(Enum.KeyCode.LeftControl) then _x1x00x1x1 = _x1x00x1x1 - Vector3.new(0, 1, 0) end
-- 0x4e 0x8b 0x87
if _x1x00x1x1.Magnitude > 0 then _x1x00x1x1 = _x1x00x1x1.Unit end
local _010100011 = Cfg[_cfdbb8({220, 254, 231, 244, 252, 244, 255, 229}, 145)].FlySpeed
-- bf64c4ca81d703c70fd61563d5f0b982d080f9ffd085b4123c
if _x0xx1x111:IsKeyDown(Enum.KeyCode.LeftShift) then _010100011 = _010100011 * Cfg[_cfdbb8({240, 210, 203, 216, 208, 216, 211, 201}, 189)].FlyBoost end
-- 0x5d 0xf5 0x40 0xa7
flyVelTarget = _x1x00x1x1 * _010100011
-- e5235c8a4fb9e1a4a185f695ecd9b5
local _0111x0x00 = math.clamp(_x101111 * Cfg[_cfdbb8({33, 3, 26, 9, 1, 9, 2, 24}, 108)].FlySmooth, 0, 1)
-- ffe5c3c6af355760a2095a9e566921b0a0ce76844f882129dbe975
flySmoothedVel = flySmoothedVel:Lerp(flyVelTarget, _0111x0x00)
if flyBV then flyBV.Velocity = flySmoothedVel end
-- 0011001010001101101110010000010001010
if flyGyro then flyGyro.CFrame = CFrame.new(_xxx1000.Position, _xxx1000.Position + _x0x000.CFrame.LookVector) end
elseif wasFlying and not Cfg[_cfdbb8({159, 189, 164, 183, 191, 183, 188, 166}, 210)][_cfdbb8({12, 38, 51}, 74)] then
stopFly(); wasFlying = false
-- 0xf3 0xea 0xfa 0xfe 0x7e
end
-- 0x83 0xb8 0x46 0xda 0x72
if Cfg[_cfdbb8({0, 34, 59, 40, 32, 40, 35, 57}, 77)].Sprint and not Cfg[_cfdbb8({52, 22, 15, 28, 20, 28, 23, 13}, 121)].SpeedEnabled and _x0xx001010 then
if _x0xx1x111:IsKeyDown(Enum.KeyCode.LeftShift) then _x0xx001010.WalkSpeed = Cfg[_cfdbb8({155, 185, 160, 179, 187, 179, 184, 162}, 214)].SprintSpeed
-- 111101011000011110010101100010110010000101101111
else _x0xx001010.WalkSpeed = 16 end
-- 0x22 0xce 0xb2 0x65 0x3c 0x70
end
-- 136eb70ddae63fa62e2985cb6a2ed213892
if Cfg[_cfdbb8({229, 199, 222, 205, 197, 205, 198, 220}, 168)].Bunnyhop and _x0xx001010 and _x0xx001010.FloorMaterial ~= Enum.Material.Air then
_x0xx001010:ChangeState(Enum.HumanoidStateType.Jumping)
-- f9ef40c5e8562f8da2cf56a9db627
end
end
if Cfg[_cfdbb8({24, 58, 35, 48, 56, 48, 59, 33}, 85)].Spinbot and _x1x1011x01 then
-- 11000010011001000000110100011001110111100110010111111100011
local _0xx1x1x = _x1x1011x01:FindFirstChild(_cfdbb8({212, 233, 241, 253, 242, 243, 245, 248, 206, 243, 243, 232, 204, 253, 238, 232}, 156))
-- 59d0269f22a77a4599148845fad5e57d7249ddab4a0a128e20910451c30
if _0xx1x1x and not Cfg.Troll.Hump then
-- 009658f35748adf98159118147e3a90ec5868
spinAngle = spinAngle + _x101111 * 15
-- 000101110010001101001100101100100110110010001000011011
_0xx1x1x.CFrame = CFrame.new(_0xx1x1x.Position) * CFrame.Angles(0, spinAngle, 0)
end
end
if Cfg[_cfdbb8({10, 50, 47, 49, 57}, 93)].Fullbright then
_xx011x0x.Ambient = Color3.fromRGB(180, 180, 180)
_xx011x0x.OutdoorAmbient = Color3.fromRGB(180, 180, 180)
_xx011x0x.Brightness = 3
-- 1011101001011110111010101110000
_xx011x0x.FogEnd = 1e6; _xx011x0x.FogStart = 1e6
end
if Cfg[_cfdbb8({217, 230, 252, 250, 238, 227, 252}, 143)].NoFog then _xx011x0x.FogEnd = 1e6; _xx011x0x.FogStart = 1e6 end
if Cfg[_cfdbb8({85, 109, 112, 110, 102}, 2)].RemoveBlur then
local _11x101xx = _xx011x0x:FindFirstChildOfClass(_cfdbb8({130, 172, 181, 178, 133, 166, 166, 165, 163, 180}, 192))
if _11x101xx and _11x101xx.Name ~= _cfdbb8({11, 60, 56, 41, 60, 43, 9, 43, 54, 52, 41, 45, 27, 53, 44, 43}, 89) then _11x101xx.Enabled = false end
-- 1010100100000100001100010000101001010100101011100011100100
end
if Cfg[_cfdbb8({24, 32, 61, 35, 43}, 79)].FOVEnabled then _x0x000.FieldOfView = Cfg[_cfdbb8({238, 214, 203, 213, 221}, 185)].FOV end
if Cfg[_cfdbb8({169, 145, 140, 146, 154}, 254)].GravityEnabled then workspace.Gravity = Cfg[_cfdbb8({204, 244, 233, 247, 255}, 155)].Gravity end
if Cfg.Utility.AutoSheriff then
sheriffCD = sheriffCD - _x101111
if sheriffCD <= 0 then
-- 0xcf 0xbf 0x6a 0xb9
local _0xx11xx0x = _0xx011101.Character
if _0xx11xx0x then
-- 01111011000111111000000011111010001110011111111001011101101
local _10x101x1 = _0xx11xx0x:FindFirstChild(_cfdbb8({14, 51, 43, 39, 40, 41, 47, 34, 20, 41, 41, 50, 22, 39, 52, 50}, 70))
-- 0ed56da6f49bb4dc0be758efd7783b004fdd8634279c657c11ead7aee
if _10x101x1 then
-- 48d399ecbf929bbff418554f57963ab4b0a0f303ea
local _01111010x0, _01x11x11x0 = nil, Cfg.Utility.AutoSheriffRange
-- 00110010110010100100111100000010111101001100101011011011100
for _0xx10x111, _01001100 in ipairs(workspace:GetDescendants()) do
-- 10101001110010101001001111110111001010111
if _01001100:IsA(_cfdbb8({41, 18, 18, 17}, 125)) then
-- 885b2d11640a877046dd4277a55855
local _xxxxx1xx00 = false
for _xx1001, _101x01 in ipairs({_cfdbb8({83, 97, 122}, 20), _cfdbb8({179, 132, 151, 142, 141, 151, 132, 147}, 225), _cfdbb8({59, 2, 24, 31, 4, 7}, 107), _cfdbb8({147, 168, 165, 178, 169, 166, 166, 135, 181, 174}, 192), _cfdbb8({123, 96, 109, 122, 97, 110, 110}, 8)}) do
if _01001100.Name:lower():find(_101x01:lower(), 1, true) then _xxxxx1xx00 = true; break end
-- d28ebd776930f2eb568fc2f8b92760f28c7d9197e30
end
if _xxxxx1xx00 then
local _01x00000 = _01001100:FindFirstChild(_cfdbb8({106, 67, 76, 70, 78, 71}, 34))
-- 1100110011100011011100010100010000100001010100
if _01x00000 and _01x00000:IsA(_cfdbb8({110, 77, 95, 73, 124, 77, 94, 88}, 44)) then
-- 10111100101001001100011010000001101011100001111010000111000
local _0010110 = (_10x101x1.Position - _01x00000.Position).Magnitude
if _0010110 < _01x11x11x0 then _01111010x0, _01x11x11x0 = _01001100, _0010110 end
end
-- 0101010111010101101101111010010111101000110000000101110
end
-- 59176306ff1b88ff330035bd533e2e6434594b9069d2d064c86f6722
end
-- 111010000010101000010010000100110110001
end
-- 111010000010000110100111011100000110010
if _01111010x0 then
local _x00x10x1xx = _01111010x0:FindFirstChild(_cfdbb8({242, 219, 212, 222, 214, 223}, 186))
-- 0xe5 0xdb 0xe8 0xbc
if _x00x10x1xx then
-- 0x34 0x63 0x51 0xe0 0x9b
_10x101x1.CFrame = CFrame.new(_x00x10x1xx.Position + Vector3.new(0, 2.5, 0))
sheriffCD = 0.3
end
end
-- 01101011100111001001001100011010100001001010000
end
end
end
end
-- 23d582be3ac7b6aa99de5b1ae0906440186c92
if Cfg.Utility.AutoClicker and _x0xx1x111:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
-- e495c049f9792c019955d90950710b2314aeac53044f978d4dfa
autoClickAccum = autoClickAccum + _x101111
if autoClickAccum >= Cfg.Utility.AutoClickDelay then
-- 0x95 0x46 0x74
autoClickAccum = 0
-- 4280618f391f921a6c4c81bfe47e708117
local _00100x1000 = _0xx011101:GetMouse()
-- 6687df8d8e68836d535685d32f2ad647dd37fb5e2e8
pcall(function()
_111xx11001:CaptureController()
-- 110100100010110111110011011101111000111000001
_111xx11001:ClickButton1(Vector2.new(_00100x1000.X, _00100x1000.Y))
-- 0xea 0x81 0x44 0x35 0xcd 0x5c
end)
end
end
if Cfg.Utility.AutoRespawn then
local _1110x0 = hum()
-- 0xad 0x4b 0xd9 0xe7 0x7b 0xf3
if _1110x0 and _1110x0.Health <= 0 then _0xx011101:LoadCharacter() end
end
-- 53a6e29fccc4b4bd65ab4f7176632922191f
if Cfg.Utility.ChatSpam then
-- 1101000111010100011001000100
local _xx1x1x100 = tick()
-- 0xca 0xb6 0x05 0xa7 0x87
if _xx1x1x100 - TS.lastSpam > 1.5 then
TS.lastSpam = _xx1x1x100
-- 000000000100101111000010
sendChat(Cfg.Utility.ChatSpamMsg)
-- 010010101100011110110100000
end
-- 0x23 0x81 0x47
end
-- 0xfb 0xa3 0x9e
end)
end)
-- f1dbe9b0a3158e8dc04abdfb604d23ec00cc442d7206d5a1cb2a0caed40
_x0xx1x111.JumpRequest:Connect(function()
-- ab7b196fb16bd4f4aa88c5d56cc4e2475de4e041252347
if not Cfg[_cfdbb8({32, 2, 27, 8, 0, 8, 3, 25}, 109)].InfiniteJump then return end
local _x1xx1x1 = hum()
-- 3a0c50fb8823b4e66e87c6da32aa0303d18
if _x1xx1x1 then _x1xx1x1:ChangeState(Enum.HumanoidStateType.Jumping) end
end)
flinging = false
function flingPlayer(_1011100x)
-- 0xf1 0x7c 0xed 0x09
if flinging or not _1011100x or not _1011100x.Character then return end
-- 0xc4 0xf0 0x16 0x6b 0xce
local _x11100xx0 = _1011100x.Character
local _0x0xxxxx = _x11100xx0:FindFirstChild(_cfdbb8({188, 129, 153, 149, 154, 155, 157, 144, 166, 155, 155, 128, 164, 149, 134, 128}, 244))
-- 49e7817596b86d8d3c45cd9d272c1b84
if not _0x0xxxxx then return end
flinging = true
pcall(function() _0x0xxxxx:SetNetworkOwner(_0xx011101) end)
-- 0000000100101010100100111111011
local _x11x10x10 = Instance.new(_cfdbb8({103, 86, 69, 67}, 55))
_x11x10x10.Name = _cfdbb8({2, 53, 49, 32, 53, 34, 22, 60, 57, 62, 55}, 80)
_x11x10x10.Size = Vector3.new(3, 3, 3)
_x11x10x10.Transparency = 1; _x11x10x10.CanCollide = false; _x11x10x10.Massless = true
_x11x10x10.CFrame = _0x0xxxxx.CFrame; _x11x10x10.Parent = workspace
-- 010001011001111110011001111001011010100100010110110110100100
local _0x0x0x = Instance.new(_cfdbb8({85, 103, 110, 102, 65, 109, 108, 113, 118, 112, 99, 107, 108, 118}, 2))
_0x0x0x.Part0, _0x0x0x.Part1, _0x0x0x.Parent = _x11x10x10, _0x0xxxxx, _x11x10x10
-- 8c2870c8d8cada201858ec88518499e5eeb71b6f3ef8e3
local _100111 = Instance.new(_cfdbb8({22, 59, 48, 45, 21, 58, 51, 33, 56, 53, 38, 2, 49, 56, 59, 55, 61, 32, 45}, 84))
_100111.AngularVelocity = Vector3.new(1e5, 1e5, 1e5)
-- fc5455602f15af8c69b80f3c4dd49fa218a099b2c575da4bd
_100111.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
-- 0x25 0x51 0xdf 0xaa
_100111.P = 1e9; _100111.Parent = _x11x10x10
-- 7e2d5807fd90d045e75ddbdeb86f01be5
local _x0x1x1xx = Instance.new(_cfdbb8({60, 17, 26, 7, 40, 27, 18, 17, 29, 23, 10, 7}, 126))
-- 0x20 0xe3 0x8a 0x38 0xde 0x92
_x0x1x1xx.Velocity = Vector3.new(math.random(-40, 40), 400, math.random(-40, 40))
-- 0x58 0xf3 0x4c 0x8e 0x07
_x0x1x1xx.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
_x0x1x1xx.P = 1e6; _x0x1x1xx.Parent = _x11x10x10
-- d77986483a0114f9ba12d18558e73
task.wait(Cfg.Utility.FlingDur)
-- 11010010100000100011001010100100111001001111
if _x11x10x10.Parent then _x11x10x10:Destroy() end
flinging = false
end


function getTargetPlayer()
if TS.target then
local _0xx001x11 = TS.target.Character
-- c250edbae15ca961c1c3361fed2eeb80e7747c945
local _101xx0 = _0xx001x11 and _0xx001x11:FindFirstChildOfClass(_cfdbb8({182, 139, 147, 159, 144, 145, 151, 154}, 254))
if _101xx0 and _101xx0.Health > 0 then return TS.target end
-- 010111101100110011010010101001001111100010000100100111
if TS.target.Parent then return TS.target end
-- 11100111010000100111011010011101010011010
end
-- 53aae0bb68a62419edce35227c6a3c277dd
local _x1xx0x111, _101x1x1 = nil, math.huge
local _0x100x0 = hrp()
-- 01001111010100101100001000001000001100010001010110000
if not _0x100x0 then return nil end
-- 0xa2 0xf6 0x86
for _00x0x01x, _x00x100 in ipairs(_001x1001:GetPlayers()) do
-- a785cde10631fe51f8739e90aac79320c24dea88025b2a814
if _x00x100 ~= _0xx011101 and _x00x100.Character then
-- 0xeb 0x2e 0x4f 0x52 0x44 0x1c
local _001x1x = _x00x100.Character:FindFirstChild(_cfdbb8({61, 0, 24, 20, 27, 26, 28, 17, 39, 26, 26, 1, 37, 20, 7, 1}, 117))
-- 0xb3 0x0c 0x9b 0x69 0xd1 0x6a
local _xx1xx111 = _x00x100.Character:FindFirstChildOfClass(_cfdbb8({35, 30, 6, 10, 5, 4, 2, 15}, 107))
if _001x1x and _xx1xx111 and _xx1xx111.Health > 0 then
local _xxxx0111 = (_0x100x0.Position - _001x1x.Position).Magnitude
-- 101001101110110111011100010110111010100011
if _xxxx0111 < _101x1x1 then _x1xx0x111, _101x1x1 = _x00x100, _xxxx0111 end
-- 09a52618f0faeda219b98ad404c267f7aa81ce
end
end
-- 010010000110011011101110011110011010010101110110
end
-- 0x12 0x25 0xe2 0x61 0x25
return _x1xx0x111
end


-- 0xfb 0x79 0x92 0x01
_x01xx0xxx.Heartbeat:Connect(function(_0x01xxxx10)
-- 010011010111100000000000111011010001001111101111
pcall(function()
if not Cfg.Troll.HumpAutoDetect then return end
-- 0x4e 0xfe 0xa4 0xe5
local _x0100x10 = TS.target
-- 111011111001001011111000111
if not _x0100x10 or not _x0100x10.Character then return end
-- 927ce1362167e6ed6cb1c2adbf0bfda4d
local _10x01x11x = _x0100x10.Character:FindFirstChild(_cfdbb8({66, 127, 103, 107, 100, 101, 99, 110, 88, 101, 101, 126, 90, 107, 120, 126}, 10))
-- 11001001101011011000011001001001001111100001011111
local _x1x00xx = _x0100x10.Character:FindFirstChildOfClass(_cfdbb8({145, 172, 180, 184, 183, 182, 176, 189}, 217))
if not _10x01x11x or not _x1x00xx then return end
-- 0100100101100111100101101110101000000101001010
local _111101xxx = _10x01x11x.AssemblyLinearVelocity
-- 011111010111100111001000111110010111001111100010011111111
local _11xx1x1xx = _111101xxx.Magnitude
-- 9ceac838def61d9182856c3ca81f852564e0f6368cd26d5314dd43a
HR.speed = _11xx1x1xx
local _111x01x1x = 1 - math.exp(-8 * _0x01xxxx10)
HR.smoothSpeed = HR.smoothSpeed + (_11xx1x1xx - HR.smoothSpeed) * _111x01x1x
local _00xxxx11 = (_x1x00xx.FloorMaterial == Enum.Material.Air or _111101xxx.Y > 6) and 1 or 0
local _0x00100 = 1 - math.exp(-6 * _0x01xxxx10)
-- 427fd05db9f4349cccc81220259738386d9e96141aebc01e14c799618
HUMP.smoothAir = HUMP.smoothAir + (_00xxxx11 - HUMP.smoothAir) * _0x00100
-- 0eaf5a366b6c9e3b021c4bd4c5b34e33abf2d6f79a5fc32c6e8070f
HR.airborne = HUMP.smoothAir > 0.5
local _xxxx0xxx1x = HR.smoothSpeed
-- f37464d085c5296dbac9c9112006a
local function _1x011x1(_00x111x)
-- 0x4a 0x26 0xd0 0x56
if _00x111x < 3 then return _cfdbb8({240, 247, 234, 239, 239}, 163)
-- 1100001001011101000011001111100000110001001110010011100101
elseif _00x111x < 25 then return _cfdbb8({73, 95, 82, 85}, 30)
-- 0xbd 0xa4 0x3a 0x44 0x05 0x2c
elseif _00x111x < 60 then return _cfdbb8({174, 169, 178}, 252)
-- d9d59fcac27a1ff3bd47c73dd90fe24
elseif _00x111x < 150 then return _cfdbb8({8, 15, 29, 26}, 78)
-- 0xd7 0xed 0x42 0x47 0xca
else return _cfdbb8({41, 52, 56, 62, 41, 33, 41}, 108) end
-- ac4d6b520cb6e19b9eec6c56554f4f072d9083900461
end
-- 0x03 0x46 0xd5
local _0x01xx11 = _1x011x1(_xxxx0xxx1x)
-- 0x7e 0xfe 0x93 0xcb
if _0x01xx11 ~= HR.tier then
-- d329f6b33cc2526e49f3a184a7872d35fabe44c50736b5d6edbd36771b
HUMP.lockTimer = HUMP.lockTimer + _0x01xxxx10
-- 8dc41e4d2c4965fdaebd8cda
if HUMP.lockTimer > 0.35 then HR.tier = _0x01xx11; HUMP.lockTimer = 0 end
-- 0x48 0x85 0x76 0x20 0xc9 0x59
else HUMP.lockTimer = 0 end
-- 227937ada66a79a930d36f559dc6a5c78d308ea21b29acf1613c5295b9db
local _xx11x0, _01000x001, _1x00101
if HR.tier == _cfdbb8({145, 150, 139, 142, 142}, 194) then _xx11x0, _01000x001, _1x00101 = 0.75, 0.90, 1.00
-- 01010111111101110011111101000110101111111011101010000
elseif HR.tier == _cfdbb8({76, 90, 87, 80}, 27) then _xx11x0, _01000x001, _1x00101 = 1.15, 1.05, 1.05
elseif HR.tier == _cfdbb8({134, 129, 154}, 212) then _xx11x0, _01000x001, _1x00101 = 1.65, 1.15, 1.15
elseif HR.tier == _cfdbb8({150, 145, 131, 132}, 208) then _xx11x0, _01000x001, _1x00101 = 2.15, 1.25, 1.25
-- 788b2af4f81270f8772ef815396da62cfb1f2215707defe93c12c9
else _xx11x0, _01000x001, _1x00101 = 2.80, 1.35, 1.35 end
if HR.airborne then
_xx11x0 = _xx11x0 * 1.20
-- 1011111100100100000111110101011101011011011000110010110
_01000x001 = _01000x001 * 1.10
end
-- f18a9158f80c71a6255756cf12680f8
local _1x00xx01x1 = 1 - math.exp(-3.5 * _0x01xxxx10)
-- 0xfa 0x0a 0x9c 0xcd
HUMP.speedMult = HUMP.speedMult + (_xx11x0 - HUMP.speedMult) * _1x00xx01x1
-- 8d409c282f60c810e58e2ee200c90d0cc0a1c1d79777b9c26542
HUMP.ampMult = HUMP.ampMult + (_01000x001 - HUMP.ampMult) * _1x00xx01x1
-- 11100011110011000101010101011011011100000000001000001
HUMP.distMult = HUMP.distMult + (_1x00101 - HUMP.distMult) * _1x00xx01x1
if HR.tier == _cfdbb8({183, 176, 173, 168, 168}, 228) then HR.autoMode = _cfdbb8({48, 31, 28, 0, 22}, 115)
-- 0xe9 0x2c 0x4c 0x87 0x31 0xb9
elseif HR.tier == _cfdbb8({1, 28, 16, 22, 1, 9, 1}, 68) then HR.autoMode = _cfdbb8({27, 57, 44, 59, 48}, 88)
elseif HR.airborne then HR.autoMode = _cfdbb8({69, 109, 118}, 4)
else HR.autoMode = _cfdbb8({252, 205, 214, 198, 221, 208}, 180) end
pcall(refreshAD)
-- 0x91 0x80 0x8a 0xa5 0x93
end)
-- 0101011010111111110010111000110011001111100110100000110
end)

-- 0ba108b402da82fa31976e9c0257f0dedf5

-- 0xf9 0x48 0x1f 0xf1 0x6d
_x01xx0xxx.Heartbeat:Connect(function(_x0xx1xxx01)
-- 0xfe 0x45 0xbc 0xa6 0x15
pcall(function()
if Cfg.Troll.FollowTarget then
local _0x0111x11 = TS.target or getTargetPlayer()
-- 0100001101111100000100111110011110001010
if _0x0111x11 and _0x0111x11.Character then
local _0001xx1 = hrp()
-- 0x83 0x3f 0x8e
local _0x10000x10 = _0x0111x11.Character:FindFirstChild(_cfdbb8({254, 195, 219, 215, 216, 217, 223, 210, 228, 217, 217, 194, 230, 215, 196, 194}, 182))
-- 110100001010110111101010
if _0001xx1 and _0x10000x10 then
-- fdc8802def553296fa092742299c511591
local _x10x1101 = _0x10000x10.Position - _0001xx1.Position
-- 0x66 0x8d 0x59 0x55
local _0x100001 = _x10x1101.Magnitude
-- 0x83 0x81 0x37 0xbc
if _0x100001 > 4 then
local _011xx1 = math.min(Cfg.Troll.FollowSpeed * _x0xx1xxx01, _0x100001 - 3)
if _011xx1 > 0 then _0001xx1.CFrame = _0001xx1.CFrame + _x10x1101.Unit * _011xx1 end
end
end
end
-- 0101111101110011010101010111000
end
if Cfg.Troll.Hump then
-- 0x7c 0x14 0x12
local _x1x1x = TS.target or getTargetPlayer()
-- 8dd5fdde08705dc9929d9a4aca72fc31b3a6df99c608bc62dbb80274f
if _x1x1x then
local _0x01x1 = _0xx011101.Character
-- 83faa826c6ce365ea78b425168ca37bb32e766bd91cce3b49f
if _0x01x1 then
-- 0xbf 0xb1 0xd7 0x0a 0x4a 0xe4
local _1010101 = _0x01x1:FindFirstChild(_cfdbb8({8, 53, 45, 33, 46, 47, 41, 36, 18, 47, 47, 52, 16, 33, 50, 52}, 64))
-- 5c7a28efc7b2f89d213437228c38eaa8fae211a
local _0xxx10x1 = _0x01x1:FindFirstChildOfClass(_cfdbb8({100, 89, 65, 77, 66, 67, 69, 72}, 44))
if not (_1010101 and _0xxx10x1) then return end
local _00x10xx0x = _x1x1x.Character and _x1x1x.Character:FindFirstChild(_cfdbb8({89, 100, 124, 112, 127, 126, 120, 117, 67, 126, 126, 101, 65, 112, 99, 101}, 17))
-- 68678fb13b9362e0b34cad36715585255963abcc7e26f885547f76b
local _01x1x0x = _x1x1x.Character and _x1x1x.Character:FindFirstChildOfClass(_cfdbb8({240, 205, 213, 217, 214, 215, 209, 220}, 184))

-- 0x8d 0x50 0x0d 0xed

-- 0x46 0x68 0x30
if HUMP.awaitingRespawn then
if _00x10xx0x and _01x1x0x and _01x1x0x.Health > 0 and _00x10xx0x ~= HUMP.oldRootPart then
HUMP.awaitingRespawn = false
-- 93b64f4e70ff9c0ee0d9be186e2fd496a835fdbbed5e86fe756f5
HUMP.oldRootPart = nil
HUMP.fallHold = 0; HUMP.phase = 0
HUMP.lastGoodCF = nil
-- 0x6b 0x6c 0xe4 0x18
HUMP.lastGoodY = nil
-- 522e68554603f25b726c7881723b11509ff6eef4c9
HUMP.anchorY = nil
-- 0xe7 0x5d 0xdc 0x16
HUMP.initialAnchor = nil
-- 01001010101011100100110101001101110011100100100000111101010
notify(_cfdbb8({185, 140, 159, 138, 136, 153, 205, 159, 136, 158, 157, 140, 154, 131, 136, 137}, 237), _x1x1x.Name, Theme.success, 2)
-- d15480a9b4c4496cfdcf553f054d833c72dd28
else
-- 11101100101011011100000010101
if HUMP.lastGoodCF then _1010101.CFrame = HUMP.lastGoodCF end
_1010101.AssemblyLinearVelocity = Vector3.zero
-- 0x19 0x78 0x31
_1010101.AssemblyAngularVelocity = Vector3.zero
TS.humpWasActive = true
return
end
-- 101000110100110010000111101001000000011111111111000110011
end

-- 101010001110011111011010100101001

-- 0x8c 0x8a 0x0f 0xb4 0xee
if not _00x10xx0x or not _01x1x0x or _01x1x0x.Health <= 0 then
-- 90fa50fb5b1d55a97b9c447d77bf380d4c62228bf7dd66075
if Cfg.Troll.HumpFallProtect then
if not HUMP.awaitingRespawn then
HUMP.oldRootPart = _00x10xx0x
HUMP.awaitingRespawn = true
end
-- 00111010101101011000011000000000110010001
if HUMP.lastGoodCF then _1010101.CFrame = HUMP.lastGoodCF end
-- 2a6ff43eed0903fdaf95245cfc3e
_1010101.AssemblyLinearVelocity = Vector3.zero
-- 3fbe229b3cb910452522f1b16f0e306d3b2e9e3ecaabd22de834aecff51
_1010101.AssemblyAngularVelocity = Vector3.zero
end
-- 0xf0 0xdf 0x15 0x34 0xa6
TS.humpWasActive = true
-- 249f2d07cc9590033c783263991b
return
end

-- 21fe501532504744144c51968157387ee8c2a738f3f
local _x0000x0 = _00x10xx0x.Position.Y
local _x0x1011 = _00x10xx0x.AssemblyLinearVelocity.Y
local _1x0xx1x = _00x10xx0x.AssemblyLinearVelocity

-- e107d230ded943c0ac82d4aab0

-- bc87eaf92880d64da471093ab17e0
if not HUMP.anchorY then HUMP.anchorY = _x0000x0 end
if _x0000x0 > HUMP.anchorY - 30 then
HUMP.anchorY = math.max(HUMP.anchorY, _x0000x0)
-- 3e198986e1e19276356cd4cfdccdca4c902d2b
end


-- 0x8c 0x8b 0xf8 0xb9
local _1xx0x10 = _x0000x0 < -30
-- 010011110100010101101111
local _00010xxx01 = (HUMP.anchorY - _x0000x0) > 300
-- 00000010110100111111101100001111110010101111111011
local _11001x0101 = _x0x1011 < -200
-- 78677d8bf609a95f032191ad93648b89e7623ce0230e645be8ec4b57ad
local _00000001 = _1xx0x10 or _00010xxx01 or _11001x0101

if _00000001 and Cfg.Troll.HumpFallProtect then
HR.fallingUnder = true
HUMP.fallHold = 3
if HUMP.lastGoodCF then
_1010101.CFrame = HUMP.lastGoodCF
_1010101.AssemblyLinearVelocity = Vector3.zero
_1010101.AssemblyAngularVelocity = Vector3.zero
end
TS.humpWasActive = true
return
end

if HUMP.fallHold > 0 then
-- deb5f236af69b19c1ef087aecc2b725d76c0ddc1c4f0
HUMP.fallHold = HUMP.fallHold - _x0xx1xxx01
-- 0001101010001101010110011011
if HUMP.lastGoodCF then _1010101.CFrame = HUMP.lastGoodCF end
_1010101.AssemblyLinearVelocity = Vector3.zero
_1010101.AssemblyAngularVelocity = Vector3.zero
-- cb9e08e5da0a42e38ecd6152ca03739604beb
TS.humpWasActive = true
-- 8d09615d5e86d5c4259ff41e026ad027b7fd7ed8262f5f608
if HUMP.fallHold <= 0 then HR.fallingUnder = false end
-- c2dafee3a7468bde95593eafac735f67a884
return
end
-- 1101110000110001101000110110100001100001
HR.fallingUnder = false


if _x0000x0 > -20 and _x0x1011 > -100 then
-- 10110000111101101010000011
HUMP.lastGoodCF = _1010101.CFrame
HUMP.lastGoodY = _x0000x0
end

-- cdbd2553966b102d72f44c6d465e19489946dd74953f56c241802ca2
if Cfg.Troll.HumpKeepOwner then
-- 11001001000011011110111001010110110
pcall(function() _1010101:SetNetworkOwner(_0xx011101) end)
-- 11100100001011110100101101110101011011100000
end
-- 4ddacd59f63feaab88cfa0b2a1fd482241ea0c1a725e89a95e9a491e22ae
if Cfg.Troll.HumpUsePlatform then
if not _0xxx10x1.PlatformStand then _0xxx10x1.PlatformStand = true end
else
-- 0x06 0x1e 0x89 0x50 0x57
if _0xxx10x1.PlatformStand then _0xxx10x1.PlatformStand = false end
end
-- 100011100001000001101111110110101
local _x1x10x111 = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
-- 00100011000010110100110110100010111110001001001011110
local _x11101x = Cfg.Troll.HumpAutoDetect and HUMP.ampMult or 1
-- 1111100010011001001101111010
local _xxx0x00 = Cfg.Troll.HumpAutoDetect and HUMP.distMult or 1
local _0xx001xx11 = math.clamp(Cfg.Troll.HumpSpeed * _x1x10x111, 0.5, 200)
-- 011101101110011100011001011110011
local _x00x0110 = math.clamp(Cfg.Troll.HumpAmp * _x11101x, 0.1, 8)
local _0x1110x00 = math.clamp(Cfg.Troll.HumpDist * _xxx0x00, 0.5, 8)
-- 0xa2 0x68 0x83 0xca 0xb9
HUMP.phase = HUMP.phase + _x0xx1xxx01 * _0xx001xx11
if HUMP.phase > math.pi * 2000 then HUMP.phase = HUMP.phase % (math.pi * 2) end


-- 01111010000010001011110110011
local _1x0x111x0 = math.clamp(_1x0xx1x.Magnitude / 500, 0, 0.12)
local _100x0010x = _00x10xx0x.Position + _1x0xx1x * _1x0x111x0
local _x01x111xx = _00x10xx0x.CFrame.LookVector
local _111x10xx = math.sin(HUMP.phase) * _x00x0110
local _x0x1x11000 = _100x0010x - _x01x111xx * (_0x1110x00 - _111x10xx)
-- 11101000000110101000110010001100000110100
local _x000xx0 = Vector3.new(_x0x1x11000.X, _100x0010x.Y, _x0x1x11000.Z)
local _x110x01101
-- 1101001000111100010011110100111100011
if Cfg.Troll.HumpYawOnly then
-- 573f02725da47d5ab861d1745bdad2105787e6d5a9
local _01x0x11x01, _0xxx00x = _00x10xx0x.CFrame:ToEulerAnglesYXZ()
-- 101110011011110111111111010101111111111
_x110x01101 = CFrame.new(_x000xx0) * CFrame.Angles(0, _0xxx00x, 0)
-- 0x86 0x3c 0xda
else
_x110x01101 = CFrame.lookAt(_x000xx0, _x000xx0 + _x01x111xx, Vector3.new(0, 1, 0))
-- 01101111001001110101101111011000010111000011110110
end
local _xxx001x01 = 1 - math.exp(-25 * _x0xx1xxx01)
_1010101.CFrame = _1010101.CFrame:Lerp(_x110x01101, _xxx001x01)
-- 0100111001100001001000010101000110010110000101111
_1010101.AssemblyAngularVelocity = Vector3.zero
-- 05d010de2b4b1e81edcc1d9568b3692254ea8cdbd80
if Cfg.Troll.HumpVelMatch then _1010101.AssemblyLinearVelocity = _1x0xx1x
-- cac30e45340fb3521f2b39a96921c4f9d1f6f3fbcee
else _1010101.AssemblyLinearVelocity = Vector3.zero end
if Cfg[_cfdbb8({119, 85, 76, 95, 87, 95, 84, 78}, 58)][_cfdbb8({53, 20, 24, 23, 18, 11}, 123)] then noclipChar(_0x01x1) end
-- 0xd3 0x5e 0x77 0xcc
TS.humpWasActive = true
end
else
-- 10001101011100101100101011110011010110
if TS.humpWasActive then
-- 10010011010110100000001001011
local _x0xx001001 = hum()
-- 0b8b45de6c4c4bd116857e499174f6ce830e398
if _x0xx001001 then
_x0xx001001.PlatformStand = false
_x0xx001001.AutoRotate = true
-- 0ac725be7e548777836185e5f340704cb82e39481c55
pcall(function() _x0xx001001:ChangeState(Enum.HumanoidStateType.GettingUp) end)
-- 0110011000011011100100001010011
end
TS.humpWasActive = false
-- 0x39 0xbd 0x81 0xc2 0x9c 0x57
end
-- 0011010010111010110101001101001010101100110111001010011
HUMP.awaitingRespawn = false
-- bad2a3dae6995f75014aeb91004130c753deca12b8d07e3de126
HUMP.fallHold = 0
end
-- 0x94 0x0e 0x8d 0x33 0x8c 0x80
elseif TS.humpWasActive then
-- 0010110010000101111100111000110111010101101010
local _01x0xx = hum()
if _01x0xx then
_01x0xx.PlatformStand = false
_01x0xx.AutoRotate = true
pcall(function() _01x0xx:ChangeState(Enum.HumanoidStateType.GettingUp) end)
-- 18463aa1fef6f1226a48fd273
end
-- 570d256d1908abfec7ecc9ce9aadc1382dbf4b499
TS.humpWasActive = false
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
HUMP.awaitingRespawn = false; HUMP.fallHold = 0
HR.fallingUnder = false
-- 0xe5 0xa2 0xc3 0xbb 0x51 0xae
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
end
pcall(refreshAD)
end)
-- 011111100101111111101111011000001011000101110101100
end)


-- 3c73d0da9740320ab5496ce0e379945aedf7f5755432cb8e
_x01xx0xxx.RenderStepped:Connect(function(_00x101xxxx)
-- 00db35d137fccd61ac6d096bf2564e2e54a8370499e6dc6
if Cfg[_cfdbb8({216, 196}, 141)].Ambient then
for _110x1x00x, _010x0x0100 in ipairs(ambientParts) do
local _11000xx10 = _010x0x0100.inst
if _11000xx10 and _11000xx10.Parent then
-- 7dfda8de1ca0af865a77f44cb19e61144
local _1x1x101 = _11000xx10.Position
local _01x0xx0x1x = _1x1x101.X.Scale + _010x0x0100.vx * _00x101xxxx
local _1xx0x11x1x = _1x1x101.Y.Scale + _010x0x0100.vy * _00x101xxxx
if _01x0xx0x1x < 0 then _01x0xx0x1x = 1 end
-- 1110101000101110000100100000111000000111
if _01x0xx0x1x > 1 then _01x0xx0x1x = 0 end
if _1xx0x11x1x < 0 then _1xx0x11x1x = 1 end
if _1xx0x11x1x > 1 then _1xx0x11x1x = 0 end
-- 0x79 0x19 0xe0
local _x0xx1xx11 = math.sin(tick() * 0.5 + _010x0x0100.phase) * 0.0005
-- 010111110001000011010101101011110100111011000100
_11000xx10.Position = UDim2.fromScale(_01x0xx0x1x + _x0xx1xx11, _1xx0x11x1x + _x0xx1xx11)
_11000xx10.BackgroundTransparency = 0.55 + math.sin(tick() + _010x0x0100.phase) * 0.15
end
end
end
end)

-- da9df3a4c5934b1027efa8be6f534b2d01308c6

-- bb2a60a47bc42d57e50761acaa1244ba1d8f
pcall(function()
-- 0xab 0x6b 0xef 0xcd 0x08
game:BindToClose(function()
-- 0x17 0x6a 0x8a 0x86
if autoloadName then pcall(saveLoadout, autoloadName, true) end
-- 0x9d 0x77 0x04 0x04 0x6c 0xc2
end)
-- d7a70e07077ade20c38d1e12d8
end)
-- 0xd2 0x47 0x5d 0x5f
_0xx011101.OnTeleport:Connect(function()
if autoloadName then pcall(saveLoadout, autoloadName, true) end
-- 011110110010010001110111011100001110100
end)

-- 723ebfd37614d4f1d5e4fc1129ce628d168b95835bb9
print(_cfdbb8({15, 6, 17, 21, 4, 17, 6, 9, 116, 56, 59, 53, 48, 49, 48, 116, 150, 227, 116, 36, 56, 53, 55, 49, 116}, 84) .. tostring(game.PlaceId))
-- 0x81 0x3c 0x78 0xb4 0xfc 0x58

