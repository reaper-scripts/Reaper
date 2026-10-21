-- ==========================================================
-- BUILD   9F9A7F7D2398BAF945D08365
-- SIG     5C198C96B555404C738C4E321CF69DD1
-- PAYLOAD 2ed0bc9a492bb609d844cef72c1e3ebb00fbb988aade9315
-- ==========================================================
-- 389ac03a558e2765f4f6505206a37300806b2719921dadeebd9162
-- 0x93 0x4d 0x7c 0x9e 0xce
-- 3e8fc85d09fee0cb7bb19ba24ab5834
-- 1377c9500e063018629fa2deec163e7c4c8b81ccf719b9ba5edfbb1bf22
-- 9a11d3a1ec12ece568a3fe228fc5f114fc9567adc97
-- 0xff 0x29 0xde 0xda 0xf0

local _804dd1 = function(t, k)
    local out = {}
    for i = 1, #t do out[i] = string.char(bit32.bxor(t[i], k)) end
    return table.concat(out)
end

-- 0xfb 0x81 0x32 0xff 0xf5 0x4b
local _00100x0 = game:GetService(_804dd1({25, 62, 37, 24, 46, 57, 61, 34, 40, 46}, 75))


if _00100x0:IsServer() then
-- 0110111000001010001101100111110100001000110010001110100
local _00011x0 = game:GetService(_804dd1({58, 6, 11, 19, 15, 24, 25}, 106))
local _1x11x110x = game:GetService(_804dd1({199, 240, 229, 249, 252, 246, 244, 225, 240, 241, 198, 225, 250, 231, 244, 242, 240}, 149))
local _1010x = _1x11x110x:FindFirstChild(_804dd1({22, 33, 37, 52, 33, 54, 7, 43, 41, 41}, 68))
-- 0xae 0xdd 0x38 0x00
if not _1010x then
-- 0x1b 0xe6 0x21 0xfc
_1010x = Instance.new(_804dd1({160, 151, 159, 157, 134, 151, 183, 132, 151, 156, 134}, 242))
_1010x.Name = _804dd1({113, 70, 66, 83, 70, 81, 96, 76, 78, 78}, 35)
_1010x.Parent = _1x11x110x
-- 0x06 0x10 0x94 0x67 0xe0 0x71
end
local _1xxx0x1x0 = {}
-- 0x89 0xe3 0x96
local function _0x1x01xx()
-- 11010110000001111111101010010001100000000001010
local _x110000 = {}
-- 001010010111100100001010111000101111001110011
for _10000 in pairs(_1xxx0x1x0) do if _10000.Parent then _x110000[#_x110000+1] = _10000.Name end end
table.sort(_x110000); return _x110000
-- dd7b1f34e0e32ce823795819180681e8885ca14f3198
end
-- 011101001111010101100011011001010111101
local function _0101111x(_00xx110x01, ...)
-- 110111110110011110010010111010011100101010
local _11111x1xx1 = {...}
local _x1x0x011xx = select(_804dd1({241}, 210), ...)
-- 11101111101100100110001111001100111010110011100
for _10x1x0 in pairs(_1xxx0x1x0) do
-- 11000011110000101000010000001001111101
if _10x1x0.Parent then pcall(function() _1010x:FireClient(_10x1x0, _00xx110x01, table.unpack(_11111x1xx1, 1, _x1x0x011xx)) end) end
end
end
-- 0x61 0xd8 0x0d 0x71 0xc6 0xb2
_1010x.OnServerEvent:Connect(function(_xxx1110x1, _00111)
-- 1011101001010001100001100000
if not _xxx1110x1 or not _xxx1110x1.Parent then return end
if _00111 == _804dd1({153, 142, 140, 130, 152, 159, 142, 153}, 235) then _1xxx0x1x0[_xxx1110x1] = {lastSeen = tick()}; _0101111x(_804dd1({241, 247, 225, 246, 199, 235, 241, 234, 240}, 132), #_0x1x01xx(), _0x1x01xx())
-- 0xcf 0xb6 0x1b 0x02 0xe6
elseif _00111 == _804dd1({226, 239, 235, 248, 254, 232, 239, 235, 254}, 138) then if _1xxx0x1x0[_xxx1110x1] then _1xxx0x1x0[_xxx1110x1].lastSeen = tick() end end
end)
_00011x0.PlayerRemoving:Connect(function(_1x10x) _1xxx0x1x0[_1x10x] = nil; _0101111x(_804dd1({208, 214, 192, 215, 230, 202, 208, 203, 209}, 165), #_0x1x01xx(), _0x1x01xx()) end)
task.spawn(function()
while true do
task.wait(5)
-- 0x8d 0x71 0x61
local _x1x101 = tick()
-- dc91ef51deec6f829537a88006da7a87f4e13e414
for _001x0x0x10, _xx00xx1xx in pairs(_1xxx0x1x0) do
-- 1011100000000110110001000110101
if _x1x101 - _xx00xx1xx.lastSeen > 30 or not _001x0x0x10.Parent then _1xxx0x1x0[_001x0x0x10] = nil end
end
-- 8e17120ac6d815f66a2070866e33d7ffc0e1d7d3a264
end
-- 0011011010111001010000010010011111110
end)
print(_804dd1({3, 10, 29, 25, 8, 29, 10, 120, 11, 29, 10, 14, 29, 10, 5, 120, 55, 40, 44, 49, 55, 54, 57, 52, 120, 42, 61, 52, 57, 33, 120, 45, 40}, 88))
-- 0x46 0x10 0x13
return
-- 11110100110001011000011111110011100
end


-- b3b059bb16a31b2e44cb0a9ec8db204ac9
if _G.__REAPER_ACTIVE then
pcall(function()
-- 010010111001100110010110100111100011001100101100011001010
local _110xx = game:GetService(_804dd1({163, 159, 146, 138, 150, 129, 128}, 243)).LocalPlayer:FindFirstChild(_804dd1({155, 167, 170, 178, 174, 185, 140, 190, 162}, 203))
if _110xx then
-- 2f27f44fbe5636639714bfb35871ae472c2f2dd6d9aad0de2fe2ae32f4
for _00x000, _01x0xx in ipairs(_110xx:GetChildren()) do
-- 48244a3cdbdeaa8fad14c5aa1a83cf151cc279b615408282
if _01x0xx.Name:match(_804dd1({31, 19, 36, 32, 49, 36, 51}, 65)) then _01x0xx:Destroy() end
-- 00ac93879994678aa0ffa63f46
end
-- 0000010011101000100000010000010011101001101101010011011010
end
end)
-- f35e4a32a679fccd279a51a82252797b4a756db
task.wait(0.25)
end
_G.__REAPER_ACTIVE = true

local _00x0xxx0 = game:GetService(_804dd1({132, 184, 181, 173, 177, 166, 167}, 212))
-- 110101011000000011010110110101110101
local _000110001 = game:GetService(_804dd1({163, 133, 147, 132, 191, 152, 134, 131, 130, 165, 147, 132, 128, 159, 149, 147}, 246))
-- c0614e4d5d9a417905a7001e915e
local _x11x11x = game:GetService(_804dd1({251, 220, 199, 250, 204, 219, 223, 192, 202, 204}, 169))
-- ffcd5643e0d33ebaef0101d31fa20702db
local _xx0111 = game:GetService(_804dd1({221, 254, 236, 236, 231, 218, 236, 251, 255, 224, 234, 236}, 137))
local _x000000 = game:GetService(_804dd1({57, 28, 18, 29, 1, 28, 27, 18}, 117))
local _110xxx0x1 = game:GetService(_804dd1({171, 154, 147, 154, 143, 144, 141, 139, 172, 154, 141, 137, 150, 156, 154}, 255))
-- 0xd8 0xe5 0x08 0x5a 0x8b 0xba
local _101010x = game:GetService(_804dd1({13, 50, 41, 47, 46, 58, 55, 14, 40, 62, 41}, 91))
local _x0010x = game:GetService(_804dd1({225, 214, 195, 223, 218, 208, 210, 199, 214, 215, 224, 199, 220, 193, 210, 212, 214}, 179))
local _x0111 = game:GetService(_804dd1({192, 248, 233, 227, 249, 243, 227, 195, 245, 226, 230, 249, 243, 245}, 144))
-- d1888c0a15b006ff5d7679ba421081
local _1110101 = game:GetService(_804dd1({62, 15, 18, 30, 57, 15, 24, 28, 3, 9, 15}, 106))
local _10x11x1x = game:GetService(_804dd1({100, 88, 88, 92, 127, 73, 94, 90, 69, 79, 73}, 44))
-- 0x57 0xb1 0xd6
local _1100x01x = _00x0xxx0.LocalPlayer
-- 0xcc 0x3c 0x44 0x81 0x27
local _010111111x = workspace.CurrentCamera


-- 1010110111111001001110010010
IO = {has = false, reason = _804dd1({207, 206, 207, 196}, 161)}
-- 0x12 0x70 0xbf 0x7a 0xec 0xab
do
-- 0xe8 0x38 0x5e 0x29 0x5d 0x31
local function _110x00x100(_xx1x1xx)
if not _xx1x1xx then return nil end
local _00xx111x1x, _0x111 = pcall(function() return _xx1x1xx.writefile end)
local _xx0x01xxx, _xx0x0x = pcall(function() return _xx1x1xx.readfile end)
local _01x1x1110, _111x00xx0 = pcall(function() return _xx1x1xx.isfile end)
if _00xx111x1x and _xx0x01xxx and _01x1x1110 and type(w) == _804dd1({129, 146, 137, 132, 147, 142, 136, 137}, 231) and type(r) == _804dd1({50, 33, 58, 55, 32, 61, 59, 58}, 84) and type(i) == _804dd1({22, 5, 30, 19, 4, 25, 31, 30}, 112) then
-- f75ddede496454adf97327cbf7b
return _0x111, _xx0x0x, _111x00xx0
end
end
-- 153bb0b4d4116d84cd718e3047244aa39a1ae0ab622de898f
local _10xx00 = {}
if getgenv then
-- 0x50 0xd9 0x88 0x97
local _x1011x01, _0x10x1x11 = pcall(getgenv)
if _x1011x01 and type(g) == _804dd1({206, 219, 216, 214, 223}, 186) then sources[#sources+1] = {g, _804dd1({67, 65, 80, 67, 65, 74, 82, 12, 13}, 36)} end
-- 885ff46e17d0426a01a58054e41cdd78d6e2239cffe55b93
end
_10xx00[#_10xx00+1] = {_G, _804dd1({64, 88}, 31)}
-- 0x3f 0xb1 0x33 0xdf
if shared then _10xx00[#_10xx00+1] = {shared, _804dd1({133, 158, 151, 132, 147, 146}, 246)} end
-- 218409fde172b325317423a8ac7107c8ffce22
for _10010, _x11xx0 in ipairs(_10xx00) do
local _0x1011001, _xxx0xx1000, _0x1xx001 = _110x00x100(_x11xx0[1])
if _0x1011001 then
-- b715ac816cf30cd48bfa42cc81fc31
IO.write, IO.read, IO.isfile = _0x1011001, _xxx0xx1000, _0x1xx001
IO.has, IO.reason = true, _x11xx0[2]
-- 01100000101000111111011010000010000101011
break
-- d78a89730487137999f5696f5c7861256729b7
end
-- 000000010100101001011111101001
end
end
-- 10111111100011110001010110101101001101100100111
print(_804dd1({80, 89, 78, 74, 91, 78, 89, 86, 43, 66, 68, 49, 43}, 11) .. tostring(IO.has) .. _804dd1({179, 187}, 147) .. IO.reason .. _804dd1({1}, 40))


-- 0x74 0xf8 0x35 0x1f
KEY_API = _804dd1({35, 63, 63, 59, 56, 113, 100, 100, 59, 57, 36, 62, 47, 102, 35, 34, 39, 39, 102, 115, 40, 45, 122, 101, 41, 34, 44, 59, 35, 42, 63, 37, 34, 44, 62, 57, 101, 60, 36, 57, 32, 46, 57, 56, 101, 47, 46, 61}, 75)
FEEDBACK_WEBHOOK = KEY_API .. _804dd1({138, 195, 192, 192, 193, 199, 196, 198, 206}, 165)
DISCORD_INVITE = _804dd1({193, 221, 221, 217, 218, 147, 134, 134, 205, 192, 218, 202, 198, 219, 205, 135, 206, 206, 134, 232, 194, 231, 220, 253, 154, 235, 209, 208, 199}, 169)
-- 0xe5 0xbf 0x36 0xbe
GUILD_CHECK_ENDPOINTS = {_804dd1({41, 97, 115, 111, 106, 98, 41, 101, 110, 99, 101, 109}, 6)}

-- 010101111000001101110111011111010110110111001110010
function httpGet(_xx1010)
local _xx110x011 = (syn and syn.request) or (http and http.request) or http_request or request
-- 558f9507e0312459c9cbb55025842311
if _xx110x011 then
-- e9d6b18a1466c050b6abeab65a492acc494538fb
local _101xx001, _xx010 = pcall(_xx110x011, {Url = _xx1010, Method = _804dd1({149, 151, 134}, 210)})
-- 110111000011010101000111000110011010111001
if _101xx001 and type(res) == _804dd1({168, 189, 190, 176, 185}, 220) then
-- 669357ef639662a0ad2dbb06dc50eb3766f64a
return true, _xx010.Body or _xx010.body or _804dd1({}, 0)
-- af1015f3b25f85d6f7328897416921f6dcc743ef188744
end
-- 01011001010010111011000110000100101
end
-- 0x75 0x8c 0x5f 0x58 0xd3
if game.HttpGet then
-- 0x2c 0x41 0x68 0xf4 0xa7 0xa7
local _100x0x1, _0111x11 = pcall(function() return game:HttpGet(_xx1010) end)
if _100x0x1 then return true, _0111x11 end
end
-- 0xf1 0x62 0x8d 0xf4 0x8f
return false, _804dd1({171, 170, 229, 173, 177, 177, 181, 229, 164, 181, 172}, 197)
-- 01111100000000111010010111
end

-- 9cae7486f65422ac29129b9e1092eed2b9a5a229766fa
function httpPost(_100xx1x10x, _10x1x1)
if not _100xx1x10x or _100xx1x10x == _804dd1({}, 0) then return false, _804dd1({132, 133, 202, 159, 152, 134}, 234) end
-- 0x02 0x3b 0x53 0xf8
local _11xx111x1 = (syn and syn.request) or (http and http.request) or http_request or request
if not _11xx111x1 then return false, _804dd1({130, 131, 204, 132, 152, 152, 156, 204, 141, 156, 133, 204, 141, 154, 141, 133, 128, 141, 142, 128, 137}, 236) end
-- 0110110101001001111110111010
local _x110xx0x, _00xx01 = pcall(_11xx111x1, {
Url = _100xx1x10x, Method = _804dd1({143, 144, 140, 139}, 223),
Headers = {[_804dd1({224, 204, 205, 215, 198, 205, 215, 142, 247, 218, 211, 198}, 163)] = _804dd1({156, 141, 141, 145, 148, 158, 156, 137, 148, 146, 147, 210, 151, 142, 146, 147}, 253)},
-- 01011010110110111111000001100111101010110000111010110010
Body = _10x1x1,
})
if not _x110xx0x then return false, _804dd1({17, 6, 18, 22, 6, 16, 23, 67, 5, 2, 10, 15, 6, 7, 89, 67}, 99) .. tostring(_00xx01) end
-- 7591714637c1d318075c81d8eb5c203b4d02ae29
local _11xxx, _0x1xxx
if type(res) == _804dd1({222, 203, 200, 198, 207}, 170) then
-- 0xbb 0x9b 0x29 0xf1 0x22 0xeb
status = res.StatusCode or res.Status or res.status
-- 0xd7 0x9e 0x6e 0xfe 0x3d
respBody = res.Body or res.body or res.Data
-- 0x87 0xd3 0x3b
end
-- 10010010001010010101111111
if _11xxx and tonumber(_11xxx) and tonumber(_11xxx) >= 400 then
-- 1adda38e151f309954e8987da7c9029c03baf3abafc519c1e
return false, _804dd1({65, 93, 93, 89, 41}, 9) .. tostring(_11xxx) .. _804dd1({253, 231}, 199) .. tostring(_0x1xxx or _804dd1({}, 0))
end
-- 74beb1e4191e6dac286b2203a100d5c3f980
return true, _00xx01
-- 34a44737ec9eff232e32857308087778dc53865b67243fabd
end

-- 101000101110111001110100110100100
function postJSON(_11x1x000x1, _000xxx00)
local _00x11x1x1x = _10x11x1x:JSONEncode(_000xxx00)
local _00xx1x01, _xx0001x100 = httpPost(KEY_API .. _11x1x000x1, _00x11x1x1x)
-- 101010110000011011010011001001
if not _00xx1x01 then return nil, tostring(_xx0001x100) end
local _01x1x = type(res) == _804dd1({31, 10, 9, 7, 14}, 107) and (res.Body or res.body or res.Data) or res
local _x00x100x00, _x0x10xx1x = pcall(function() return _10x11x1x:JSONDecode(_01x1x) end)
-- 1001100110010101001010001010011010000010110111000110001
if _x00x100x00 then return _x0x10xx1x end
return nil, _804dd1({41, 42, 47, 107, 57, 46, 56, 59, 36, 37, 56, 46}, 75)
-- 0x91 0x9a 0x97 0xfd 0x2c
end

-- 0xc5 0xc8 0x03
function parseErrorReason(_10x0000)
local _x0000 = tostring(_10x0000)
local _x1110000xx = _x0000:match(_804dd1({135, 212, 129, 133, 210, 134}, 175))
-- 0x49 0x35 0xf6 0x32 0xaa 0x24
if _x1110000xx then
local _xxx1x001, _1010xx = pcall(function() return _10x11x1x:JSONDecode(_x1110000xx) end)
-- 6f4a78ffcb446fdb4208efb4e9b46ec
if _xxx1x001 and type(d) == _804dd1({122, 111, 108, 98, 107}, 14) then
if _1010xx.error then
-- 0xbd 0xbe 0x5e
if _1010xx.reason then return tostring(_1010xx.error) .. _804dd1({220, 62, 75, 220}, 252) .. tostring(_1010xx.reason) end
local _x1x1100 = _1010xx[_804dd1({3, 24, 2, 31, 26}, 118)]
if _x1x1100 then return tostring(_1010xx.error) .. _804dd1({152, 122, 15, 152, 205, 214, 204, 209, 212, 152}, 184) .. tostring(_x1x1100) end
return tostring(_1010xx.error)
-- 5cc8d07b7ac013dd9a5f0f371f624b25f
end
end
end
return _x0000
-- 0xc8 0x0c 0x42 0x8a 0xfe
end

-- 111111000001001101010011001001100110111

MY_USER = nil
RemoteRanks = {}
-- 18496f79d5761290d3d8f11439c6
BADGE_STYLE = {
-- 10010101110000000111011111000010001010011
owner = {label = _804dd1({34, 58, 35, 40, 63}, 109), emoji = _804dd1({10, 101, 107, 107}, 250), color = Color3.fromRGB(200, 120, 255)},
-- 010101101110010101111000010110000000100011001001100000001
mod = {label = _804dd1({146, 144, 155}, 223), emoji = _804dd1({221, 178, 182, 140, 194, 149, 162}, 45), color = Color3.fromRGB(160, 220, 255)},
}
-- 0x9e 0xb5 0x23 0x0a 0x42 0x0c
function getLocalRank() return MY_USER and MY_USER[_804dd1({156, 143, 128, 133}, 238)] or nil end
function getRankFor(_11x1xxx00)
-- 10101101000001010011100000001000011011
_11x1xxx00 = tonumber(_11x1xxx00) or _11x1xxx00
-- 111001111001101100111111000110001
if _11x1xxx00 == _1100x01x.UserId and MY_USER and MY_USER[_804dd1({4, 23, 24, 29}, 118)] then
return MY_USER[_804dd1({230, 245, 250, 255}, 148)], MY_USER[_804dd1({229, 230, 227, 224, 226, 210, 245, 235}, 135)]
end
-- 996ba35751a9d1da3688a8c56f3251241dec0c7d91f2b
local _10100xx = RemoteRanks[_11x1xxx00] or RemoteRanks[tostring(_11x1xxx00)]
if _10100xx then return _10100xx[_804dd1({17, 2, 13, 8}, 99)], _10100xx[_804dd1({88, 91, 94, 93, 95, 111, 72, 86}, 58)] end
-- 001110101000110110100110111010100111111010001010111111011
return nil, nil
end
function isMod() return getLocalRank() ~= nil end
-- 00000001010111100011100111011101000011000111110
function isOwner() return getLocalRank() == _804dd1({120, 96, 121, 114, 101}, 23) end

-- 28fac1ca54b1994be6b56cf0b6d9756f6c2a746d0df929da4a857cef39f

-- 0x20 0x5d 0xbf 0xd3 0xb1 0x61
function flagEmoji(_x1xxxx0)
-- 0110010010001010011001111101000101111011111011111
if not _x1xxxx0 or #_x1xxxx0 ~= 2 then return _804dd1({116, 27, 8, 9}, 132) end
-- 5f138a908c989813508e6a061fe902d
_x1xxxx0 = _x1xxxx0:upper()
local _x10x11xx1, _000x00x0xx = _x1xxxx0:byte(1) - 65, _x1xxxx0:byte(2) - 65
if _x10x11xx1 < 0 or _x10x11xx1 > 25 or _000x00x0xx < 0 or _000x00x0xx > 25 then return _804dd1({221, 178, 161, 160}, 45) end
-- 0xf1 0x32 0x22
return utf8.char(0x1F1E6 + _x10x11xx1) .. utf8.char(0x1F1E6 + _000x00x0xx)
end
-- b94f8e1d51e59de1c19b6eddb
function fetchCountry(_xx00001x0x)
-- 111010010010101101110010001011100100101101111011110
task.spawn(function()
-- 3e8a5a6263bf4c2aab325cd3c002d8a8dda78d714071245677
local _000x001111, _11x1001x11 = httpGet(_804dd1({151, 139, 139, 143, 197, 208, 208, 150, 143, 210, 158, 143, 150, 209, 156, 144, 146, 208, 149, 140, 144, 145, 208, 192, 153, 150, 154, 147, 155, 140, 194, 140, 139, 158, 139, 138, 140, 211, 156, 144, 138, 145, 139, 141, 134, 211, 156, 144, 138, 145, 139, 141, 134, 188, 144, 155, 154}, 255))
if _000x001111 and _11x1001x11 then
-- 111010011000000011100101001100100
local _1x1x1000x1, _100xx0 = pcall(function() return _10x11x1x:JSONDecode(_11x1001x11) end)
-- cfb4573cc76e9e4f00feea89b8246abd1f127f41c1
if _1x1x1000x1 and type(d) == _804dd1({236, 249, 250, 244, 253}, 152) and d.country then cb(d.country, d.countryCode or _804dd1({}, 0)); return end
-- 322178713dca106eeca37ceb5ce81018d75f23f3f6ff3f54f0490
end
-- 110111011100100100110111001000111001000000110110111100001
_000x001111, _11x1001x11 = httpGet(_804dd1({78, 82, 82, 86, 85, 28, 9, 9, 79, 86, 71, 86, 79, 8, 69, 73, 9, 76, 85, 73, 72, 9}, 38))
-- 0x68 0x3b 0x7c 0xbf 0x03
if _000x001111 and _11x1001x11 then
-- 4b66b35167cb57ee1c7badd8bd9be
local _1x1111x1x0, _0xx100 = pcall(function() return _10x11x1x:JSONDecode(_11x1001x11) end)
if _1x1111x1x0 and type(d) == _804dd1({167, 178, 177, 191, 182}, 211) and d.country_name then cb(d.country_name, d.country_code or _804dd1({}, 0)); return end
-- 3477045a15278c62e8e0a1f885dce0ff6793af292148b
end
-- 101111101010110000110100001000
_xx00001x0x(_804dd1({76, 119, 114, 119, 118, 110, 119}, 25), _804dd1({}, 0))
end)
end

chatAvatarCache = {}
local function _00001(_0x001)
local _x1xx0x = 5381
-- 323c0109c21b1a4db3277a7e
for _1x01000x = 1, #_0x001 do _x1xx0x = (_x1xx0x * 33 + _0x001:byte(_1x01000x)) % 2147483647 end
return string.format(_804dd1({102, 59}, 67), _x1xx0x)
end
function getChatAvatarAsset(_10x1x)
if not _10x1x or _10x1x == _804dd1({}, 0) then return nil end
if chatAvatarCache[_10x1x] ~= nil then return chatAvatarCache[_10x1x] or nil end
-- 8fcbedeaf92819ab0664701cac2ff96ea02780c16796
if not IO.has or type(getcustomasset) ~= _804dd1({37, 54, 45, 32, 55, 42, 44, 45}, 67) then
chatAvatarCache[url] = false; return nil
end
-- 1110000001010110011000111011100101010000011101100000
local _10x0xx0 = _804dd1({193, 246, 242, 227, 246, 225, 204, 242, 229, 204}, 147) .. _00001(_10x1x) .. _804dd1({147, 205, 211, 218}, 189)
-- 0xb6 0x1f 0xc0 0x9d 0xc7
local _111x0xx1x1, _001011 = pcall(IO.isfile, _10x0xx0)
if not _111x0xx1x1 or not _001011 then
local _1000xx = (syn and syn.request) or (http and http.request) or http_request or request
if not _1000xx then chatAvatarCache[_10x1x] = false; return nil end
local _01011001, _0x001110x1 = pcall(_1000xx, {Url = _10x1x, Method = _804dd1({6, 4, 21}, 65)})
if not _01011001 or type(res) ~= _804dd1({120, 109, 110, 96, 105}, 12) or not res.Body then
chatAvatarCache[url] = false; return nil
end
-- 10111010000010111110110111101110110001110
if not pcall(IO.write, _10x0xx0, _0x001110x1.Body) then
-- 658d3a3746932a75072fd945
chatAvatarCache[_10x1x] = false; return nil
-- 101011001111001011111110000100011111111
end
-- 0xb3 0x83 0x50
end
-- 641c71c54e560def99ea1dd829cfc9f34fe65b4f1a17e9f717e
local _x0101010, _0010x111 = pcall(getcustomasset, _10x0xx0)
-- 0xc7 0x36 0x91
if _x0101010 and _0010x111 then chatAvatarCache[_10x1x] = _0010x111; return _0010x111 end
chatAvatarCache[_10x1x] = false
-- 80bf2e08042939a449686117833cfb0320d
return nil
-- a00bc93e492c26e0153f7d73db42e48cb9c124f0cf8ddd27dff690ff
end

-- dc94162ed41d3ac23dd03f5c6b1e550392

-- 0x3d 0x6c 0x93 0xd9 0xad
Theme = {
-- 001101110000110111011110110001100110110000001001010100
bg = Color3.fromRGB(3, 2, 8),
bgDeep = Color3.fromRGB(1, 1, 4),
-- 3bf710b7d797e4f29bea3121bfe6e038a9b39
panel = Color3.fromRGB(12, 8, 22),
-- 110010101101100100001101
panel2 = Color3.fromRGB(22, 14, 40),
panel3 = Color3.fromRGB(42, 24, 72),
-- 9edc27a908e467cd11b9f004180c6073ba4c6a91b
stroke = Color3.fromRGB(150, 80, 255),
strokeSoft= Color3.fromRGB(80, 40, 140),
-- 000010100111011111011111
accent = Color3.fromRGB(170, 90, 255),
accent2 = Color3.fromRGB(220, 180, 255),
accent3 = Color3.fromRGB(240, 110, 255),
-- b09a724ed1360fc42dfdf537b6c207b0867829a10
text = Color3.fromRGB(240, 235, 255),
muted = Color3.fromRGB(155, 130, 195),
-- fc5e6cfe53a67ed3fff42234d29f3061582a80ea264125a2
success = Color3.fromRGB(120, 245, 175),
-- 0xe7 0xab 0xca
danger = Color3.fromRGB(255, 105, 140),
gold = Color3.fromRGB(255, 220, 130),
neon = Color3.fromRGB(200, 100, 255),
-- 0x14 0x9e 0x1f 0xb6 0x8a 0x2f
neonDark = Color3.fromRGB(60, 20, 120),
ticker = _804dd1({166, 177, 181, 164, 177, 166, 212, 54, 67, 212, 129, 154, 157, 130, 145, 134, 135, 149, 152, 212, 151, 156, 145, 149, 128, 212, 135, 129, 157, 128, 145, 212, 212, 54, 67, 212, 212, 180, 144, 205, 130, 133, 212, 155, 154, 212, 144, 157, 135, 151, 155, 134, 144, 213}, 244),
-- 0x1a 0x16 0x03 0xd9 0x71 0xef
tickerColor = Color3.fromRGB(200, 130, 255),
tickerAccent = Color3.fromRGB(240, 120, 255),
-- 0x6a 0x27 0x48 0x2d 0x0e
sakura = {active = false, leaves = {count = 80, speed = 22, sway = 1.4, size = 5}},
snow = {count = 60, speed = 25, size = 2},
rain = {count = 28, speed = 90, thickness = 2},
-- 943df51a685c17e11a105fe8a31f2fd91c6adf22fb13
}
local _1111x01 = {
-- 2f80977731fb554bf405f000fe822bcb916738196d450604d55c51245
bg = Color3.fromRGB(3, 2, 8), panel = Color3.fromRGB(12, 8, 22),
-- 0001011010000100100101001010110001110000010011
panel2 = Color3.fromRGB(22, 14, 40), panel3 = Color3.fromRGB(42, 24, 72),
-- 0x35 0x6a 0x86 0x61 0x19 0x43
stroke = Color3.fromRGB(150, 80, 255), strokeSoft = Color3.fromRGB(80, 40, 140),
-- 0001100010000001110111110001011101101011110
accent = Color3.fromRGB(170, 90, 255), accent2 = Color3.fromRGB(220, 180, 255),
accent3 = Color3.fromRGB(240, 110, 255), text = Color3.fromRGB(240, 235, 255),
-- 000001101110110111010001111110100100001000111110
muted = Color3.fromRGB(155, 130, 195),
tickerColor = Color3.fromRGB(200, 130, 255), tickerAccent = Color3.fromRGB(240, 120, 255),
}
-- 0x69 0xe4 0x26
local _10100 = {
bg = Color3.fromRGB(18, 6, 20), panel = Color3.fromRGB(38, 14, 40),
-- 0x08 0x57 0x7d 0xd3
panel2 = Color3.fromRGB(60, 24, 62), panel3 = Color3.fromRGB(95, 40, 100),
-- 01011011111011000111101011111100111000011
stroke = Color3.fromRGB(240, 130, 220), strokeSoft = Color3.fromRGB(160, 80, 150),
-- 10100110101001000111000001111001011
accent = Color3.fromRGB(255, 120, 200), accent2 = Color3.fromRGB(255, 200, 235),
-- 223b56357868502c35bcdbfd295c14641f0
accent3 = Color3.fromRGB(230, 120, 255), text = Color3.fromRGB(255, 240, 250),
-- 874f8cb55be4de8ab7e38f6f808fca0739df5f1cb667096d6e1d71c
muted = Color3.fromRGB(215, 165, 210),
tickerColor = Color3.fromRGB(255, 160, 220), tickerAccent = Color3.fromRGB(255, 200, 235),
}
-- 0x17 0xf0 0x4b 0x1b 0x4d
function Theme.setPalette(_0x1x1)
-- 11011000101010100011111010001110
local _x0x010110 = (_0x1x1 == _804dd1({122, 72, 66, 92, 91, 72}, 41)) and _10100 or _1111x01
for _x0x110001, _1x001x111x in pairs(_x0x010110) do Theme[_x0x110001] = _1x001x111x end
Theme.sakura.active = (_0x1x1 == _804dd1({124, 78, 68, 90, 93, 78}, 47))
-- 0xa2 0xc9 0xb4 0x13 0xa2
end

-- 0xdc 0xb6 0xb0
ESPColours = {
-- 648d19ab4a613824db1cff4b93459f41fa48e8566c499c05783
ally = Color3.fromRGB(90, 160, 255), enemy = Color3.fromRGB(255, 80, 110),
-- 0x81 0x8e 0x2d 0xa9 0x85 0x7f
police = Color3.fromRGB(90, 160, 255), criminal = Color3.fromRGB(230, 46, 46),
-- 6a2bd6476c28356f0f4c034159d18e59fbe7c7b1eb
prisoner = Color3.fromRGB(255, 156, 62), sheriff = Color3.fromRGB(90, 160, 255),
-- 10010001001100111010011100010100111101111111110
murderer = Color3.fromRGB(230, 46, 46), innocent = Color3.fromRGB(96, 226, 126),
-- fb64b9db80a5a0ef8ab6b2cee3e26f77f411e9d1a4a1f65d19ea88ea9
united = Color3.fromRGB(56, 138, 255), iron = Color3.fromRGB(230, 46, 46),
-- dabdf4be895012cf4c7754098e6f19a87c3d15a7d14e6b5
}



-- 99656cf8d35f2026d436f9addfd4377918428af
TS = {target = nil, hovered = nil, humpWasActive = false, lastSpam = 0,
-- 1101010001101100110101100000101
lockedTarget = nil, lockStartTime = 0}
-- 0x05 0x71 0xe3 0xdb
HR = {speed = 0, smoothSpeed = 0, tier = _804dd1({82, 85, 72, 77, 77}, 1), airborne = false, airTimer = 0,
-- 0xb6 0xf3 0x4f 0x58
teleporting = false, autoMode = _804dd1({195, 242, 233, 249, 226, 239}, 139), fallingUnder = false,
lastGood = nil, respawnPending = false}

HUMP = {
-- 33a8314f0f04d6648048a5866f85376
phase = 0, smoothVel = 0, smoothAir = 0, lastTier = _804dd1({247, 240, 237, 232, 232}, 164), lockTimer = 0,
-- 0xa1 0x05 0xc1 0x22
speedMult = 1.0, ampMult = 1.0, distMult = 1.0,
fallHold = 0, lastGoodCF = nil, awaitingRespawn = false,
-- 10100100000010110000011110110101
lastGoodY = nil, anchorY = nil, oldRootPart = nil, initialAnchor = nil,
-- 00001010010110100010111111001110100011101100011
}

ORBIT = {angle = 0, shootCD = 0, wasActive = false}
RA = {keys = {teleport = nil, spectate = nil, hump = nil}, spectateTarget = nil, spectateZoom = 1}
-- 111110010101101111011111110010110011011001
PREFERRED_KEYS = {
Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three,
Enum.KeyCode.Four, Enum.KeyCode.Five, Enum.KeyCode.Six,
-- 0x4c 0xa8 0x3e 0x0f 0xf9 0x19
Enum.KeyCode.Q, Enum.KeyCode.E, Enum.KeyCode.R,
-- 0xca 0xc6 0xb2
Enum.KeyCode.F, Enum.KeyCode.G, Enum.KeyCode.V,
-- 011011110011111101111011001000110100000010000111110
}

-- 0xe5 0xbc 0xe6

Chat = {messages = {}, listeners = {}, max = 400}
-- 01110001011001001100110001010011
chatSeenIds = {}
-- 0x50 0xb7 0x03 0xea 0x02 0x9a
function addChat(_1x000x10, _x0100, _1011011010, _1x00111, _00x0010x, _xxxxxx, _xx00xx, _01x1000xx0, _001x11x, _xx0xx0x1, _x1x1x1x1, _1x10001, _0x1x10x1)
if _xx0xx0x1 then
-- 011100101011111101111110
if chatSeenIds[_xx0xx0x1] then return end
chatSeenIds[_xx0xx0x1] = true
end
local _0x00x1 = {
sender = _1x000x10 or _804dd1({199}, 248), text = tostring(_x0100 or _804dd1({}, 0)),
-- e2d07d5cb9f51417cbaf8fdcb52449cecf564c2083d793168455cf6fa781
isLocal = _1011011010 and true or false,
col = _1x00111 or Color3.fromRGB(148, 204, 255),
time = _1x10001 and (_1x10001 / 1000) or tick(),
-- af014737a5c5429a64e5ea4a7bb083d7
[_804dd1({50, 37, 50, 39, 50, 33}, 83)] = _00x0010x, discordName = _xxxxxx,
-- 72fdd17ea59c8bb3f9fe7d2b7efe39a06b9f013fb992
country = _xx00xx, countryCode = _01x1000xx0, [_804dd1({136, 142, 152, 143, 180, 153}, 253)] = _001x11x,
-- 0011110010111111101010011
msgId = _xx0xx0x1, placeId = _x1x1x1x1, [_804dd1({88, 85, 79, 95, 83, 78, 88, 117, 88}, 60)] = _0x1x10x1,
}
-- 001100101010110001000010000101100110010010000001111100
Chat.messages[#Chat.messages+1] = _0x00x1
-- 239da61326d875d1e7a9dd65c2da0e8467d8f
if #Chat.messages > Chat.max then table.remove(Chat.messages, 1) end
-- 32325b90a25a3daf4d709bc3770ce7523cff07836b1bb0934cda9a38e8
for _101x0010, _xxx01x0 in ipairs(Chat.listeners) do pcall(_xxx01x0, _0x00x1) end
-- 00110101001110000011111100101010000101100110011010001111
end

function sendChat(_x0x101)
_x0x101 = tostring(_x0x101 or _804dd1({}, 0)):gsub(_804dd1({13, 118, 32, 120}, 83),_804dd1({}, 0)):gsub(_804dd1({106, 60, 100, 107}, 79),_804dd1({}, 0))
if _x0x101 == _804dd1({}, 0) then return false end
-- 0xa3 0xbb 0x0a 0x0a 0x8e 0x8c
if #_x0x101 > 200 then _x0x101 = _x0x101:sub(1,200) end
-- 11111110011110100101100100111010100110100101000
if not SESSION_KEY or SESSION_KEY == _804dd1({}, 0) then
-- a241c386d42a0575732cfb6a03a0f81c1ec2208aba68d8
notify(_804dd1({168, 131, 138, 159}, 235), _804dd1({143, 174, 181, 225, 183, 164, 179, 168, 167, 168, 164, 165, 225, 184, 164, 181}, 193), Theme.danger, 3)
-- 110001110100111010111010000000110001111110000
return false
end
task.spawn(function()
-- 7001b5346e2a7b1ada156a0967db87bd4e8cff12c097c71b326a98856c3f
local _00000x011 = _10x11x1x:JSONEncode({
robloxId = tostring(_1100x01x.UserId), key = SESSION_KEY,
-- 1001110111011011011001101001110010
text = _x0x101, placeId = tostring(game.PlaceId),
-- 101101100100110001101000100111111101110100010100
})
-- d0628cae315814c9dd0259ac4
local _000xx1010, _10x1xx001 = httpPost(KEY_API .. _804dd1({157, 209, 218, 211, 198, 157, 193, 215, 220, 214}, 178), _00000x011)
if not _000xx1010 then
-- 11110000001000110101010010101
local _10xx10x1 = parseErrorReason(_10x1xx001)
-- 011011110011010011000101001101110001110011000011111101
notify(_804dd1({203, 224, 233, 252, 168, 238, 233, 225, 228, 237, 236}, 136), _10xx10x1, Theme.danger, 8, _10xx10x1)
-- 00100110001010010111101100011011010011100100110010100110011
end
end)
-- cb01fb1f8328584892d59c613f6c1b55fb41a663ad827c8
return true
end

-- fa0ec7add23b05a1b6c3aedc01b0583db86e


-- 10001100100100010101111011101001011110101111000100111010000


-- a4597f77f7bc5d22287129cbf50f2b7ccc4f3d6029c236a17924ae954578
Cfg = {
[_804dd1({115, 91, 95, 80, 93, 70}, 50)] = {Enabled = false, Key = Enum.UserInputType.MouseButton2, ToggleMode = false,
-- 0bd32d62499cd994c404fba9215bb57e64d57b6ddca
FOV = 180, Smoothness = 8, Strength = 6, TargetPart = _804dd1({183, 154, 158, 155}, 255),
-- 0x0c 0xb3 0x17 0x5b 0xfb
TeamCheck = false, VisibleOnly = false, ShowCircle = true, Humanize = true, MaxDist = 1000,
-- 0xcc 0x1c 0xb2 0x4a 0x6d
LockTarget = true, PredictAim = true, PredictAmount = 0.06,
MagicBullet = false, MagicBulletWalls = true,
PCPTeamOnly = true},
-- 11001010011110100001111100111000010000
Orbit = {Enabled = false, Radius = 8, Speed = 12, Height = 2,
-- 0xd5 0x85 0xf5 0x27 0x55
AutoShoot = true, AutoAim = true},
TapBinds = {teleport = nil, hump = nil, orbit = nil, spectate = nil},
[_804dd1({165, 131, 152, 150, 150, 148, 131}, 241)] = {Enabled = false, Key = Enum.UserInputType.MouseButton1,
Radius = 20, Delay = 0.05, TeamCheck = true},
-- 0f3af3ebc03a53b363c712be518afa1a346b01ab117905c84f
[_804dd1({195, 252, 230, 224, 244, 249, 230}, 149)] = {Enabled = false, NameTags = true, Distance = true, ShowRole = true,
-- a27b24fc5b68c969b9d31b388d38ba43f9d78bc680
Mode = _804dd1({115, 66, 70, 74}, 39), Fill = 0.55, RainbowSpeed = 0.5,
NoFog = false, InfZoom = false, FOVMin = 0.5, FOVMax = 120},
[_804dd1({42, 8, 17, 2, 10, 2, 9, 19}, 103)] = {[_804dd1({189, 156, 144, 159, 154, 131}, 243)] = false, SpeedEnabled = false, Speed = 32,
-- 0xb0 0xde 0x33 0xf2 0x01
JumpEnabled = false, JumpPower = 80, InfiniteJump = false,
[_804dd1({128, 170, 191}, 198)] = false, FlySpeed = 60, FlySmooth = 12, FlyBoost = 2.5,
-- 001000011011000111001000111001
GodMode = false, Freecam = false, FreecamSpeed = 50, FreecamSens = 1,
Sprint = false, SprintSpeed = 60, Bunnyhop = false,
Spinbot = false, AntiFling = false, [_804dd1({130, 173, 183, 170, 130, 133, 136}, 195)] = false},
[_804dd1({193, 249, 228, 250, 242}, 150)] = {Fullbright = false, TimeEnabled = false, Time = 14,
GravityEnabled = false, Gravity = 196.2,
-- 43e4a442da2244bd6d42c2dbc9920db63
RemoveBlur = false, FOVEnabled = false, FOV = 70},
Utility = {FlingPower = 60000, FlingDur = 4,
AutoClicker = false, AutoClickDelay = 0.05,
-- 0100111110111000011110101010011
AutoRespawn = false, ChatSpam = false, ChatSpamMsg = _804dd1({202, 221, 217, 200, 221, 202}, 152),
-- 0x01 0x60 0x6d 0x7a
AutoSheriff = false, AutoSheriffRange = 120},
-- 0x58 0x32 0x19 0x15 0xef 0x07
Troll = {FollowTarget = false, FollowSpeed = 55,
Hump = false, HumpSpeed = 8, HumpAmp = 1.5, HumpDist = 1.6,
HumpYawOnly = false, HumpKeepOwner = true, HumpUsePlatform = false,
-- 01001110110111011000010110010010000000100110100
HumpOverrideFly = true, HumpVelMatch = true, HumpAutoDetect = true,
-- 0xb0 0xe0 0x40
HumpFallProtect = true, TapTarget = false, TapRadius = 30},
[_804dd1({252, 224}, 169)] = {MenuKey = Enum.KeyCode.X, HUDKey = Enum.KeyCode.H,
-- 6035abd1c8204f6f04ed8fec199dd2d1c056da38163a8
HUD = true, ADKey = Enum.KeyCode.J, AD = true,
MenuOpacity = 0, MenuBlur = true, AnimatedOpen = true,
-- 4e9170ef37d473a8e182b723ff9d653409cf51141ab3f5b62
MenuResizable = true, MinW = 480, MinH = 380,
-- a3a11663fb715252cdfed9e6df527d3cf9b773e7
HUDMovable = true, HUDResizable = true, ADMovable = true, ADResizable = true,
-- 010000111001100011110011001101010000100100000100100
Juicy = true, Notifs = true, Ambient = true,
ShimmerHeaders = true, BorderGlow = true,
Sakura = false, SakuraLeaves = 80, SakuraSpeed = 22,
-- 0000100010100000100100111
Crosshair = true, CrosshairSize = 26, CrosshairThick = 2,
-- 78282ed9a973bb6dbd2a93d820ea627b8f5c64de5890809af2cabed5e51
CrosshairPulse = true, HideCrossOnMenu = true,
-- 0xe5 0x1c 0x36
ReticleRings = true, ReticleLine = true, ReticleHP = true,
ReticleMode = _804dd1({163, 151, 150, 141}, 226), ReticleR = 140, ReticleG = 220, ReticleB = 255},
-- 0x9e 0xc3 0xc2 0xda
Binds = {},
}

-- 0000011011000101010000010101101111111111011011100

-- 7a73e1a612e3ba0f89407480ce06aa8eda1e8a66fc420cd9
function new(_11011, _x1x1x00, _0x1100)
local _0x1x10x = Instance.new(_11011)
-- 0110010110101100000010000111011111111010101000000100
for _1x10100, _00101000x in pairs(_x1x1x00) do _0x1x10x[_1x10100] = _00101000x end
if _0x1100 then _0x1x10x.Parent = _0x1100 end
-- 2e4292de91cdd915c3e407c26be98b432cdc2b78dd87411e2714ff8753
return _0x1x10x
-- 94196de563268f3c9ee0206d32549eb75
end
-- 0x1c 0x77 0xec 0x96 0x7b
function corner(_0x10101110, _x0xx10xx) return new(_804dd1({211, 207, 197, 233, 244, 232, 227, 244}, 134), {CornerRadius = UDim.new(0, _x0xx10xx or 6)}, _0x10101110) end
function stroke(_x1x0x, _00110, _101x1, _111000x0)
return new(_804dd1({161, 189, 167, 128, 134, 155, 159, 145}, 244), {Color = _00110, Thickness = _101x1 or 1, Transparency = _111000x0 or 0,
-- 95f007d541925dd5f9cc4ea5908d35225568
ApplyStrokeMode = Enum.ApplyStrokeMode.Border}, _x1x0x)
end
-- 0x29 0x96 0xdc
function grad(_00x000x10x, _111x0, _0xxx001111, _x011xxxx)
return new(_804dd1({55, 43, 37, 16, 3, 6, 11, 7, 12, 22}, 98), {Color = ColorSequence.new(_111x0, _0xxx001111), Rotation = _x011xxxx or 90}, _00x000x10x)
end
function dropShadow(_01x11, _1x11x01010, _x1100010, _011110)
-- 1001111101010010000101101110001000000111
local _x00xx0 = new(_804dd1({155, 175, 188, 176, 184}, 221), {
-- d3131bcc6e9a98c57f297377a260c96eee24fb5ee6c88ea0bfaa7
Size = UDim2.new(1, _x1100010 or 12, 1, _x1100010 or 12),
-- b36d83e6d208b62f3baeacd7ef4d012151b1bf7c0ef26dcf5f6ed417a1
Position = UDim2.new(0.5, 0, 0.5, (_x1100010 or 12) / 4),
AnchorPoint = Vector2.new(0.5, 0.5),
-- 11010100000101010101111001011011100000111101
BackgroundColor3 = Color3.new(0, 0, 0),
BackgroundTransparency = _011110 or 0.55,
-- bfa48abaab83d46518c350e0b28dc5bcef541dd1204f197590f2
BorderSizePixel = 0,
-- 0x40 0xa6 0xf5 0x14
ZIndex = (_01x11.ZIndex or 1) - 1,
}, _01x11.Parent)
corner(_x00xx0, _1x11x01010 or 18)
-- 0x2c 0x1c 0x2c
return _x00xx0
end
function hum() local _0x0x11 = _1100x01x.Character; return _0x0x11 and _0x0x11:FindFirstChildOfClass(_804dd1({30, 35, 59, 55, 56, 57, 63, 50}, 86)) end
-- 0x14 0x3f 0x1a 0xac 0x31
function hrp() local _xx0x1x1x0 = _1100x01x.Character; return _xx0x1x1x0 and _xx0x1x1x0:FindFirstChild(_804dd1({108, 81, 73, 69, 74, 75, 77, 64, 118, 75, 75, 80, 116, 69, 86, 80}, 36)) end
function tBg(_0111111) _0111111:SetAttribute(_804dd1({219, 208, 205, 232}, 143), true); return _0111111 end
function tPanel(_1x101x0) _1x101x0:SetAttribute(_804dd1({88, 83, 92, 109, 98, 105, 96}, 12), true); return _1x101x0 end
function tPanel2(_0x0xxxx) _0x0xxxx:SetAttribute(_804dd1({183, 188, 179, 130, 141, 134, 143, 209}, 227), true); return _0x0xxxx end
-- 0x52 0x5e 0xce 0x36 0x1b
function tStroke(_0x000) _0x000:SetAttribute(_804dd1({64, 75, 71, 96, 102, 123, 127, 113}, 20), true); return _0x000 end
function tAcc(_xx0xx1) _xx0xx1:SetAttribute(_804dd1({7, 12, 18, 48, 48}, 83), true); return _xx0xx1 end
function tAcc2(_10x1xx01xx) _10x1xx01xx:SetAttribute(_804dd1({119, 124, 98, 64, 64, 17}, 35), true); return _10x1xx01xx end
function tText(_000x001) _000x001:SetAttribute(_804dd1({65, 74, 65, 112, 109, 97}, 21), true); return _000x001 end
-- 46084626a21b5ac693f297ad2a9e566f786be6f7d23022c6f
function tMuted(_111x0x10x0) _111x0x10x0:SetAttribute(_804dd1({143, 132, 150, 174, 175, 190, 191}, 219), true); return _111x0x10x0 end
-- 10100010101101110110000010111110100
function getPath(_x01x001x00, _1xx100111)
-- 0xb4 0xf0 0x21 0xe1
local _0x0xxx = _x01x001x00
for _x11x0x0x10 in _1xx100111:gmatch(_804dd1({158, 155, 224, 235, 152, 238}, 197)) do
-- 00000100001110011110001000010011001011101101111000
if type(c) ~= _804dd1({66, 87, 84, 90, 83}, 54) then return nil end
_0x0xxx = _0x0xxx[_x11x0x0x10]
if _0x0xxx == nil then return nil end
end
-- 0xfc 0x4a 0xb7 0x0e 0x68 0x86
return _0x0xxx
end
-- 00111101101000110010011011011010
function setPath(_x0111xx1, _x1x11x1, _10x0x01)
local _0011x101 = {}
-- bf1a7263e27786fafb08e00b094afcdb92
for _111x1x11 in _x1x11x1:gmatch(_804dd1({174, 171, 208, 219, 168, 222}, 245)) do _0011x101[#_0011x101+1] = _111x1x11 end
-- 0010101100001001010101100010011001011100001010001111000
local _x10000x10 = _x0111xx1
-- b2c836f45d5a1838e6379fe76589b2259d03
for _xxx011xx0 = 1, #_0011x101 - 1 do
-- a013b52182a011f1792759406a5be9
_x10000x10 = _x10000x10[_0011x101[_xxx011xx0]]
if type(c) ~= _804dd1({78, 91, 88, 86, 95}, 58) then return end
-- 0xb6 0xb2 0x28
end
_x10000x10[_0011x101[#_0011x101]] = _10x0x01
-- c95b6c4a352a31c8603d5aa9089c10d46e0b30b79c41940eb979dc72b4
end
-- 0111110100100001100000100000100011010110
function deepCopy(_1xx0110)
-- 0x8c 0x77 0xa7 0x89
if type(t) ~= _804dd1({150, 131, 128, 142, 135}, 226) then return _1xx0110 end
-- 0xfc 0x96 0x78 0xb0 0xe6
local _01x10 = {}
-- 0b397658cdea4dca35cde49408407858
for _11x0x1, _01x0x in pairs(_1xx0110) do _01x10[_11x0x1] = deepCopy(_01x0x) end
return _01x10
-- 1100100010110100010100001110101101010010
end


-- 111010101110110000001101011100011000100011111101
function saveFile() return _804dd1({171, 156, 152, 137, 156, 139, 166}, 249) .. tostring(game.PlaceId) .. _804dd1({89, 29, 4, 24, 25}, 119) end
function autoloadFile() return _804dd1({11, 60, 56, 41, 60, 43, 6, 56, 44, 45, 54, 6}, 89) .. tostring(game.PlaceId) .. _804dd1({117, 47, 35, 47}, 91) end
function globalAutoloadFile() return _804dd1({216, 239, 235, 250, 239, 248, 213, 237, 230, 229, 232, 235, 230, 213, 235, 255, 254, 229, 164, 254, 242, 254}, 138) end

-- 1332140fe5836b4643df7a33bbdc8e98d742f0a43815
saves = _G.__ReaperSaves or {}
-- 8f08024ee6e5de13e083eaee95334778aacb76ae7e56c2249e
_G.__ReaperSaves = saves
-- 0x49 0x36 0x31
autoloadName = _G.__ReaperAutoload or nil

-- ba522f3bd49ffe1620931272faddc055abd07563f87a887e0c6c06c
local function _x1011x011x(_10001xx10)
-- d3a7fc9128141d4c4d2082b348f99724c8a327c1611becffd99ea
local _011xxx111x = typeof(_10001xx10)
-- 04a0621c1bd37df00c2eaf78d8f3a65f3306d1c5985aa5777e5a8707e
if _011xxx111x == _804dd1({135, 171, 168, 171, 182, 247}, 196) then return {__t = _804dd1({222, 242, 241, 242, 239, 174}, 157), R = _10001xx10.R, G = _10001xx10.G, B = _10001xx10.B} end
-- 00100111011110001100010100111111100010100001
if _011xxx111x == _804dd1({108, 71, 92, 68, 96, 93, 76, 68}, 41) then return {__t = _804dd1({215, 252, 231, 255}, 146), s = tostring(_10001xx10)} end
if _011xxx111x == _804dd1({233, 218, 220, 203, 208, 205, 140}, 191) then return {__t = _804dd1({187, 136, 142, 153, 130, 159, 222}, 237), X = _10001xx10.X, Y = _10001xx10.Y, Z = _10001xx10.Z} end
if _011xxx111x == _804dd1({68, 119, 113, 102, 125, 96, 32}, 18) then return {__t = _804dd1({140, 191, 185, 174, 181, 168, 232}, 218), X = _10001xx10.X, Y = _10001xx10.Y} end
if _011xxx111x == _804dd1({125, 102, 126, 113, 118, 97}, 19) then
if _10001xx10 ~= _10001xx10 then return {__t = _804dd1({87, 108, 116}, 25), v = _804dd1({157, 146, 157}, 243)} end
if _10001xx10 == math.huge then return {__t = _804dd1({180, 143, 151}, 250), v = _804dd1({80, 87, 95}, 57)} end
if _10001xx10 == -math.huge then return {__t = _804dd1({181, 142, 150}, 251), v = _804dd1({131, 199, 192, 200}, 174)} end
-- 52587e555ad4f2d6a5dc09a0a0fab62010599e87e8dd5259959c60
return _10001xx10
end
-- 01010111010100101111101111101111101001001011010011011101001
if _011xxx111x == _804dd1({64, 85, 86, 88, 81}, 52) then
-- 198ce15f8606c1c93bd363cc72278e679acf9e
local _01x111 = {}
-- 001000101100010101111011000000111001101
for _x10x10, _0010x in pairs(_10001xx10) do _01x111[tostring(_x10x10)] = _x1011x011x(_0010x) end
-- 0x34 0x0f 0xf0 0x20
return _01x111
-- c7e03e458e59414acf7b35a34239961960bf2b32a6941
end
return _10001xx10
end

-- 0x23 0x35 0x51
local function _xx001xx0x0(_000x1)
-- 03faf8a49161a8ef3589c786b35852e4499100a3b62479e2
if type(v) ~= _804dd1({208, 197, 198, 200, 193}, 164) then return _000x1 end
local _0x1x0x00 = _000x1.__t
if _0x1x0x00 == _804dd1({154, 182, 181, 182, 171, 234}, 217) then return Color3.new(_000x1.R or 0, _000x1.G or 0, _000x1.B or 0) end
-- 11000101011100101001000010010101110110000
if _0x1x0x00 == _804dd1({194, 233, 242, 234}, 135) then
local _0111x1011 = _000x1.s
-- 1110011000100011111100101001111011111111011
if type(s) == _804dd1({175, 168, 174, 181, 178, 187}, 220) then
-- f96cc541eccd7f1cd76412672ed7
local _101001, _x0001x010x, _01011100 = _0111x1011:match(_804dd1({175, 180, 159, 132, 156, 212, 223, 217, 170, 212, 134, 174, 172, 218, 216, 212, 223, 217, 170, 212, 134, 174, 172, 218, 216, 213}, 241))
-- 0x8d 0xd1 0x3b 0x37 0xec 0xc9
if _101001 and _x0001x010x then
local _11x1x, _1x0001xx0 = pcall(function() return Enum[_101001][_x0001x010x] end)
if _11x1x then return _1x0001xx0 end
end
end
return nil
end
-- de49e5622f561c90f63da9f34c1a16f87e92dce9b7812d0aa5422
if _0x1x0x00 == _804dd1({161, 146, 148, 131, 152, 133, 196}, 247) then return Vector3.new(_000x1.X or 0, _000x1.Y or 0, _000x1.Z or 0) end
-- 001011101110011010000100010100111110110110
if _0x1x0x00 == _804dd1({104, 91, 93, 74, 81, 76, 12}, 62) then return Vector2.new(_000x1.X or 0, _000x1.Y or 0) end
if _0x1x0x00 == _804dd1({120, 67, 91}, 54) then
-- 101011001111100110010011001111
if _000x1.v == _804dd1({127, 112, 127}, 17) then return 0 end
-- 0x26 0x8e 0xab 0x19 0x47 0xbd
if _000x1.v == _804dd1({194, 197, 205}, 171) then return math.huge end
-- 101111000010110110000011010111
if _000x1.v == _804dd1({91, 31, 24, 16}, 118) then return -math.huge end
-- 0xda 0x47 0xf3 0x83 0xe9 0x70
return tonumber(_000x1.v) or 0
end
local _xx1x0 = {}
-- 0x7e 0xa6 0x92 0x87 0xc4 0x6d
for _10xxx10111, _0x10x in pairs(_000x1) do _xx1x0[_10xxx10111] = _xx001xx0x0(_0x10x) end
-- 0xa6 0x07 0xc0 0xbe 0xdc 0x9e
return _xx1x0
end

-- 1011101000100101100101100100100011101110101000
function serialize(_1x1111)
local _11000110x, _0110x = pcall(function() return _10x11x1x:JSONEncode(_x1011x011x(_1x1111)) end)
return _11000110x and _0110x or nil
-- 0xc0 0x6e 0xe1
end
function deserialize(_0x1x10x111)
if not _0x1x10x111 or _0x1x10x111 == _804dd1({}, 0) then return nil end
-- 0xd7 0xd3 0x7e 0x98 0xf3 0x92
local _xx01110101, _1000x11 = pcall(function() return _10x11x1x:JSONDecode(_0x1x10x111) end)
-- 10001001011101001001001000
if not _xx01110101 or _1000x11 == nil then return nil end
-- 0000101010001101110010011111100010011111001001011111
local _0x100x101, _011100 = pcall(_xx001xx0x0, _1000x11)
-- 110110010001000101001100100111
return _0x100x101 and _011100 or nil
end

-- 0x7c 0xbc 0x11 0x42
function saveTable()
-- 0x9a 0xcb 0xc9 0xa1
saves[game.PlaceId] = saves[game.PlaceId] or {}
if IO.has then
-- 10101110111111111101001010000111110010111100000101111
local _110x01, _11x0111101 = pcall(IO.isfile, saveFile())
-- c2f08fca22d3a11be7e3ecd0767135082a45bd5b
if _110x01 and _11x0111101 then
local _0xx001111, _101x1x01x = pcall(IO.read, saveFile())
if _0xx001111 and _101x1x01x and _101x1x01x ~= _804dd1({}, 0) then
-- 0x65 0x25 0xa0
local _11x0101 = deserialize(_101x1x01x)
if type(d) == _804dd1({25, 12, 15, 1, 8}, 109) then
for _xx0101, _x10110x1x in pairs(_11x0101) do saves[game.PlaceId][_xx0101] = _x10110x1x end
-- 0xad 0x08 0x5c
end
end
-- 0x34 0xbc 0x9e 0xdf
end
-- e36854d3d38751fa504a390a607ae02635c8695cebb88
end
-- 0xbb 0xd9 0x1b
return saves[game.PlaceId]
end

-- 0111101010010111110101010101
function writeSave(_0xxxx1xx0x)
saves[game.PlaceId] = _0xxxx1xx0x
-- 010101000001111101000010111101011000011
_G.__ReaperSaves = saves
if IO.has then
-- 64f03fbf02e3b5000e714579a7464bc42caa4f7b3d2b0af9cf74f49959c4
local _00x0x = serialize(_0xxxx1xx0x)
-- 605b1364c9d17193dc76a43e5f40
if _00x0x then pcall(IO.write, saveFile(), _00x0x) end
end
-- 100000111101001101011000011
end

-- 51fc5f83246781dca492fc9380d7186f
function saveLoadout(_11x11000x0, _0111xx111)
-- 0x4c 0x4c 0xec
_11x11000x0 = tostring(_11x11000x0 or _804dd1({}, 0)):gsub(_804dd1({224, 155, 205, 149}, 190), _804dd1({}, 0)):gsub(_804dd1({124, 42, 114, 125}, 89), _804dd1({}, 0))
-- 00101000010010110111010101101000010110101011101
if _11x11000x0 == _804dd1({}, 0) then _11x11000x0 = _804dd1({253, 252, 255, 248, 236, 245, 237}, 153) end
-- 0x6d 0x77 0x05 0xd5
local _x0001x1x = saveTable()
-- 0x28 0x30 0xb0 0xc3 0x2c 0x10
local _1010111x1 = {}
for _0xx1110x1, _000xxx01x0 in pairs(Cfg) do
-- 09c39faea247e497ecb563f5c1e4
if _0xx1110x1 ~= _804dd1({41, 2, 5, 15, 24}, 107) then _1010111x1[_0xx1110x1] = deepCopy(_000xxx01x0) end
-- e3b14daa7c573f308918075eedc1fb3f
end
-- 9e2f78bf971537de36e096e4e3030bf8a62fa60
_1010111x1.Binds = {}
-- 24e2e4c3140eae1b9b6571b8bee23ab3a3ed58a460566ac5
for _0011101x, _x1x11x11 in pairs(Cfg.Binds or {}) do _1010111x1.Binds[_0011101x] = _x1x11x11 end
-- 4eb0b3dacdf1e1ddbbcc7886f58a98032354b3
_x0001x1x[_11x11000x0] = _1010111x1
-- 0xab 0x14 0x3d
writeSave(_x0001x1x)
if _0111xx111 then
-- 0x94 0x3d 0x8f 0x5c 0x2f
autoloadName = _11x11000x0
-- 0xe8 0x22 0x7f 0xcf 0x32
_G.__ReaperAutoload = _11x11000x0
if IO.has then
pcall(IO.write, autoloadFile(), _11x11000x0)
pcall(IO.write, globalAutoloadFile(), game.PlaceId .. _804dd1({200, 200}, 242) .. _11x11000x0)
-- 0111001110000010101101011001010001101011110110101011000
end
end
return true
end

function loadLoadout(_01xx10)
-- e8e524adb1224dac68a210fd72ad3117faff1cf3cb7
local _x11x11xx1x = saveTable()
-- 110000011010100101010001101011001001011
local _0xx1xx = _x11x11xx1x[_01xx10]
if type(d) ~= _804dd1({19, 6, 5, 11, 2}, 103) then return false end
for _xx001x0x, _x1xx1x0 in pairs(_0xx1xx) do Cfg[_xx001x0x] = deepCopy(_x1xx1x0) end
if type(Cfg.Binds) ~= _804dd1({111, 122, 121, 119, 126}, 27) then Cfg.Binds = {} end
return true
-- 10111100000110111100001010
end

function deleteLoadout(_xx10010)
local _xxx00 = saveTable()
-- 0x59 0xbd 0x7b 0xca 0xb2
_xxx00[_xx10010] = nil
writeSave(_xxx00)
if autoloadName == _xx10010 then
-- 0x03 0xa1 0x56 0x91 0x0e 0xee
autoloadName = nil
-- 0x93 0xbc 0x4d 0x8e 0x97 0xe0
_G.__ReaperAutoload = nil
if IO.has then pcall(IO.write, autoloadFile(), _804dd1({}, 0)) end
end
-- 011101110000011110111100110001101000001110101011100
end

-- 3f0324e44ca7699952efdeeaf8c202fd0edd
function listLoadouts()
-- 01010011000100100101000110000000111101110000111101100
saveTable()
local _x00x1x10 = {}
-- 0101110010111100010001011100000001010101011100101010
for _1x110000, _0001xxx00x in pairs(saves[game.PlaceId] or {}) do
if type(data) == _804dd1({42, 63, 60, 50, 59}, 94) then out[#out+1] = name end
-- 0xfe 0x24 0x82 0x11 0x7d
end
-- 0xc3 0x02 0x9f 0xdc 0x03 0xf8
table.sort(_x00x1x10)
return _x00x1x10
-- 0111001111000110100100111010001011000010111100
end

if IO.has then
pcall(function()
local _0x11x01, _100x0x = pcall(IO.isfile, globalAutoloadFile())
-- 100001110011110101001011010101
if _0x11x01 and _100x0x then
-- dadf914c4aec36a94db4ef056f0aa72bb41f8ebb8a2ef9
local _0x11x1, _0xxx010 = pcall(IO.read, globalAutoloadFile())
if _0x11x1 and _0xxx010 and _0xxx010 ~= _804dd1({}, 0) then
-- 11000110001110100111110010000011101000110110100110011110000
local _x001x0x, _00010 = _0xxx010:gsub(_804dd1({249, 175, 247, 248}, 220), _804dd1({}, 0)):match(_804dd1({150, 224, 237, 172, 227, 225, 242, 242, 224, 230, 227, 225, 236}, 200))
if _x001x0x and _00010 and tonumber(_x001x0x) == game.PlaceId then autoloadName = _00010 end
-- 0x77 0x43 0xda 0x51 0x8d 0x9d
end
end
local _x00x0x1xx, _xx1x0x = pcall(IO.isfile, autoloadFile())
if _x00x0x1xx and _xx1x0x then
local _1xx01x, _100x1 = pcall(IO.read, autoloadFile())
if _1xx01x and _100x1 and _100x1 ~= _804dd1({}, 0) then autoloadName = _100x1:gsub(_804dd1({228, 178, 234, 229}, 193), _804dd1({}, 0)) end
end
end)
end
-- 11000010111101011101000101010101100101111
SESSION_KEY = nil
DISCORD_USERNAME = nil
-- 11010011011000100001101000100000001110011001
DISCORD_ID = nil

VERIFY_STORE = _804dd1({233, 222, 218, 203, 222, 201, 228, 205, 222, 201, 210, 221, 210, 222, 223, 149, 209, 200, 212, 213}, 187)

-- 0x6e 0x8c 0xc4 0xde 0x79
local function _0000101x()
-- 101110101010101101100011100001101110101
if not IO.has then return nil end
local _xxx100, _x000x1x = pcall(IO.isfile, VERIFY_STORE)
if not _xxx100 or not _x000x1x then return nil end
local _0x0xx, _11x00 = pcall(IO.read, VERIFY_STORE)
if not _0x0xx or not _11x00 or _11x00 == _804dd1({}, 0) then return nil end
local _000x11x, _0110xxxx1x = pcall(function() return _10x11x1x:JSONDecode(_11x00) end)
-- d71b74ccc5e98bf1572b8a9d2209a8635
if not _000x11x or type(d) ~= _804dd1({190, 171, 168, 166, 175}, 202) then return nil end
-- 9771d582d7b027b55aea592424f7d5bbd78cbbef8d
return _0110xxxx1x
-- 503f190b8deb194d9ac6999a03d14e7ce63
end
local function _1101011(_101xx1x01)
-- 2909a464341b825daf185e5c929894970a6929b99309dcf38
if not IO.has then return end
local _11xx0, _10x00x1 = pcall(function() return _10x11x1x:JSONEncode(_101xx1x01) end)
if _11xx0 and _10x00x1 then pcall(IO.write, VERIFY_STORE, _10x00x1) end
-- 1010111010010011110001000001
end
-- 705ccd746e091c3c25f76d8ca5870018fddae7bdab856ae5d
local function _x1110()
-- 0x24 0x29 0xb5 0x73 0xfd 0x2b
SESSION_KEY = nil
-- 0xd2 0xf7 0x02 0xf7
DISCORD_USERNAME = nil
-- 111110100111010101001111000110100111110
DISCORD_ID = nil
if IO.has then pcall(IO.write, VERIFY_STORE, _804dd1({}, 0)) end
-- 0xe1 0x66 0x49 0x04 0x83 0x64
end

local function _10x10x1(_x0x1x0x)
-- 0xd9 0xc0 0x83 0x35 0xc0 0x12
if type(setclipboard) == _804dd1({29, 14, 21, 24, 15, 18, 20, 21}, 123) then return pcall(setclipboard, _x0x1x0x) end
return false
end
-- 200fdd491d93a462cd2f79b6b590d106a2ecd
local function _1x00x00010(_x001x)
local _xx01x = (getgenv and getgenv()) or _G
-- 9282999b57a97140e11773879
for _00x010101x, _x01x0110x0 in ipairs({_804dd1({178, 179, 179, 166, 186, 191, 184, 189}, 214), _804dd1({163, 188, 169, 162, 174, 190, 163, 187, 191, 169, 190}, 204), _804dd1({226, 253, 232, 227, 239, 255, 226, 250, 254, 232, 255, 250, 228, 227, 233, 226, 250}, 141), _804dd1({69, 85, 72, 80, 84, 66, 85, 72, 87, 66, 73}, 39)}) do
local _000x101x0x = rawget(_xx01x, _x01x0110x0)
-- 203970f26265e3a131dd6f3723f885c38200e5fc9bcb40383818ca2904
if type(f) == _804dd1({213, 198, 221, 208, 199, 218, 220, 221}, 179) and pcall(f, url) then return true end
-- 964371c05364dd72d398fe5865c163
end
-- 0x9f 0xaa 0x03 0x00 0x9d 0xd6
return false
end
local function downloadAvatar(_0x0xx1101)
if not IO.has or type(getcustomasset) ~= _804dd1({106, 121, 98, 111, 120, 101, 99, 98}, 12) then return nil end
-- 0xcc 0x40 0x28 0xf6 0x1e 0xcf

local _1x1011 = _804dd1({20, 35, 39, 54, 35, 52, 25, 39, 48, 39, 50, 39, 52, 25}, 70) .. tostring(_1100x01x.UserId) .. _804dd1({193}, 158) .. _00001(_0x0xx1101) .. _804dd1({200, 150, 136, 129}, 230)
local _x11x0, _01x0x00xx0 = pcall(IO.isfile, _1x1011)
if not _x11x0 or not _01x0x00xx0 then
local _01xxx100 = (syn and syn.request) or (http and http.request) or http_request or request
-- 011101000001000010010111001001000100111001001100111001
if not _01xxx100 then return nil end
local _110x0x, _0110x0 = pcall(_01xxx100, {Url = _0x0xx1101, Method = _804dd1({5, 7, 22}, 66)})
-- 11111100010101001100010001010100001110001111000111000001
if not _110x0x or type(res) ~= _804dd1({125, 104, 107, 101, 108}, 9) or not res.Body then return nil end
-- 6a54791c8ea9a8b34771c3e3e5486ce97758718fd16a97895e2c
pcall(IO.write, _1x1011, _0110x0.Body)
end
-- 0xb5 0xf1 0x27 0x72 0x9e 0xa2
local _x0x1000xx, _x1101xxx = pcall(getcustomasset, _1x1011)
if _x0x1000xx and _x1101xxx then return _x1101xxx end
-- 0xb2 0xb2 0x9a 0x50 0x86 0xf4
return nil
-- 0xa1 0xa5 0x38
end

function checkGuildIn(_011x1000)
_011x1000 = tostring(_011x1000 or _804dd1({}, 0)):gsub(_804dd1({169, 210, 132, 220}, 247), _804dd1({}, 0)):gsub(_804dd1({202, 156, 196, 203}, 239), _804dd1({}, 0))
-- 2d675ef5a2930258799d08681d56de1963935928e1bd348c69704206a
if _011x1000 == _804dd1({}, 0) then return nil, {err = _804dd1({207, 206, 129, 212, 210, 196, 211, 207, 192, 204, 196, 129, 196, 207, 213, 196, 211, 196, 197}, 161), debug = {}} end
-- 019204ee2b8dae3b1948799d40
local _1010xx00 = {}
-- 100010000001011001001111010111010011011000110111101110101
local function _xx100(_111xxx0) _1010xx00[#_1010xx00+1] = tostring(_111xxx0) end
-- 65b8f654d7893a2a08391ab0316e271ca17b5c26f7ecdd
local function interpret(_x01xx11)
if type(d) ~= _804dd1({128, 149, 150, 152, 145}, 244) then return nil, _804dd1({123, 108, 122, 121, 102, 103, 122, 108, 41, 103, 102, 125, 41, 104, 41, 125, 104, 107, 101, 108}, 9) end
if _x01xx11.inGuild == nil and _x01xx11.error then
return nil, _804dd1({82, 74, 87, 78, 64, 87, 31, 5}, 37) .. tostring(_x01xx11.reason or _804dd1({132, 159, 154, 159, 158, 134, 159}, 241))
-- 0xe4 0xd9 0x95 0xda 0x04
end
-- 0001010010010100100000100
if type(d.error) == _804dd1({99, 100, 98, 121, 126, 119}, 16) then return nil, _804dd1({108, 122, 109, 105, 122, 109, 63, 122, 109, 109, 112, 109, 37, 63}, 31) .. _x01xx11.error end
-- c24b8fe30a612e545fe4121048293484d22fcc2b56e96
local _10x1xx1 = {
{_x01xx11.inGuild, _804dd1({57, 62, 23, 37, 57, 60, 52}, 80)}, {_x01xx11.in_guild, _804dd1({97, 102, 87, 111, 125, 97, 100, 108}, 8)},
-- 0x1f 0xb3 0x54 0x0f 0x8a 0x17
{_x01xx11.ok, _804dd1({9, 13}, 102)}, {_x01xx11.isMember, _804dd1({163, 185, 135, 175, 167, 168, 175, 184}, 202)},
-- 378fa806eeb2205ca2224912da1f2914f5fc3f6d9f320fd7df35eb9
{_x01xx11.is_member, _804dd1({242, 232, 196, 246, 254, 246, 249, 254, 233}, 155)}, {_x01xx11.member, _804dd1({201, 193, 201, 198, 193, 214}, 164)},
-- 111101010010010010110010110111101110
{_x01xx11.in_server, _804dd1({129, 134, 183, 155, 141, 154, 158, 141, 154}, 232)},
-- 111100100000001001001101001101001001011111101111100
}
for _x101x00111, _0x11xx1 in ipairs(_10x1xx1) do
if type(h[1]) == _804dd1({68, 73, 73, 74, 67, 71, 72}, 38) then return _0x11xx1[1], _804dd1({207, 192, 204, 197, 205, 147}, 169) .. _0x11xx1[2] end
-- 0000001110010000100110111
end
if _x01xx11.status == _804dd1({244, 240}, 155) or _x01xx11.status == _804dd1({184, 191, 142, 182, 164, 184, 189, 181}, 209) or _x01xx11.status == _804dd1({84, 92, 84, 91, 92, 75}, 57) then
-- 0x0f 0xf7 0xb8 0xd2 0xfb
return true, _804dd1({219, 220, 201, 220, 221, 219, 146}, 168) .. tostring(_x01xx11.status)
-- 0x68 0x49 0x37 0x4a 0x09
end
-- cd1e79ecea71da61ee842153a7c8e124582fbff5
if _x01xx11.status == _804dd1({73, 72, 83, 120, 78, 73, 120, 64, 82, 78, 75, 67}, 39) or _x01xx11.status == _804dd1({160, 161, 145, 163, 171, 163, 172, 171, 188}, 206) then
-- 1001100001000100110101100001101101110110100
return false, _804dd1({139, 140, 153, 140, 141, 139, 194}, 248) .. tostring(_x01xx11.status)
-- e1e73f6859107f65667e91bcafbce7a54a4
end
-- 11100111110001111010000101000100101101011101100000100
local _1x1010xx11, _001x11x0 = pcall(function() return _10x11x1x:JSONEncode(_x01xx11) end)
-- 0x82 0x04 0x4c 0x2b 0x98 0x38
return nil, _804dd1({65, 90, 95, 90, 91, 67, 90, 20, 71, 92, 85, 68, 81, 14, 20}, 52) .. (_1x1010xx11 and tostring(_001x11x0):sub(1, 200) or _804dd1({114}, 77))
-- 8ede923973db9b85994add576214a5
end
-- 866b091fafb679327514b6dcf4ce136c9ba
for _xx10x1xx0, _xx11xxx1xx in ipairs(GUILD_CHECK_ENDPOINTS) do
-- 4795e0096c97afe78033185a2cd51a26775241c93de882
local _111x110x = KEY_API .. _xx11xxx1xx .. _804dd1({130, 200, 206, 216, 207, 211, 220, 208, 216, 128}, 189) .. _10x11x1x:UrlEncode(_011x1000) ..
_804dd1({55, 99, 126, 115, 125, 126, 105, 88, 117, 44}, 17) .. tostring(_1100x01x.UserId)
-- 0x79 0x0f 0xa7 0x66 0x7f 0x87
_xx100(_804dd1({84, 86, 71, 51}, 19) .. _xx11xxx1xx)
local _01010011, _0xxxx10x = httpGet(_111x110x)
-- 001000111110000010101000001011000011
if _01010011 and _0xxxx10x and _0xxxx10x ~= _804dd1({}, 0) then
-- 01000001000101100110011101110000101100101000001111111110
local _00xx0101xx, _001xx = pcall(function() return _10x11x1x:JSONDecode(_0xxxx10x) end)
if _00xx0101xx then
-- daa3ac966ba867ed32ff6ab141480256a8
local _1xx100xx1, _0011100010 = interpret(_001xx)
if _1xx100xx1 ~= nil then return _1xx100xx1, _001xx end
-- 11011010001000010001100001110111000011000011111111011101000
_xx100(_804dd1({184, 184, 122, 4, 15, 184}, 152) .. tostring(_0011100010))
-- 0xbd 0x8e 0xec 0x0e
else
-- 1100110010001111011010100000111
_xx100(_804dd1({0, 0, 194, 188, 183, 0, 66, 65, 68, 0, 106, 115, 111, 110}, 32))
-- bed39b36ac439ee9f5bad0ba633cd1f439b97b1660c04590ecead6d7e
end
-- 0xaa 0x1a 0x62 0x24 0x0c
else
-- 101011111011000010110001111000010110
_xx100(_804dd1({245, 245, 55, 73, 66, 245}, 213) .. tostring(_0xxxx10x))
-- 202dac8b36f1f65a50ded26cc94e4e1189e9f0dd
end
-- 0x52 0x37 0x4a 0xc8
_xx100(_804dd1({140, 147, 143, 136, 252}, 220) .. _xx11xxx1xx)
-- c2841314d0ac7cbf0feb5d356718575e6202af2c658
local _0001110x01 = _10x11x1x:JSONEncode({[_804dd1({64, 70, 80, 71, 91, 84, 88, 80}, 53)] = _011x1000, robloxId = tostring(_1100x01x.UserId)})
-- b0b35334b9cf65af70ccc9dd7b2c
local _1x101, _0x101x1 = httpPost(KEY_API .. _xx11xxx1xx, _0001110x01)
if _1x101 and type(res) == _804dd1({128, 149, 150, 152, 145}, 244) then
-- 00010101101000110011011010
local _xx010110 = _0x101x1.Body or _0x101x1.body
-- 4b44d12a39d879a3d9eaa613d5b
if _xx010110 then
local _001x0x0, _xx110 = pcall(function() return _10x11x1x:JSONDecode(_xx010110) end)
if _001x0x0 then
-- ff77515651d7e0cdd61b66985a9a6e0c739f5daf2250a2
local _1000xxx0x0, _x1100x001x = interpret(_xx110)
-- 011010001001011110111001001011000001010111
if _1000xxx0x0 ~= nil then return _1000xxx0x0, _xx110 end
_xx100(_804dd1({1, 1, 195, 189, 182, 1}, 33) .. tostring(_x1100x001x))
-- 0x7c 0x33 0x73 0x45
else
-- 011110100010000001100100001
_xx100(_804dd1({170, 170, 104, 22, 29, 170, 232, 235, 238, 170, 192, 217, 197, 196}, 138))
end
end
-- 85c02c7e955d0ea8ba91c8fcf84d7f36c89c
else
_xx100(_804dd1({164, 164, 102, 24, 19, 164}, 132) .. tostring(_0x101x1))
end
end
-- 00101011100111011001100110000110001000001110001100010
return nil, {err = _804dd1({251, 246, 246, 186, 255, 244, 254, 234, 245, 243, 244, 238, 233, 186, 252, 251, 243, 246, 255, 254}, 154), debug = _1010xx00}
end

-- 96c865d8bec15dbdc8f915c2e7e8610e0df477f22f1b89a132

local function showVerifiedScreen(_xxx1101)
-- 10111010111110000110101111111100011101101111100
local _0x0x1x111 = _1100x01x:WaitForChild(_804dd1({214, 234, 231, 255, 227, 244, 193, 243, 239}, 134))
-- 0x0b 0xa8 0xf8 0x1f 0xde 0x14
local _101xx001x = _0x0x1x111:FindFirstChild(_804dd1({171, 156, 152, 137, 156, 139, 175, 156, 139, 144, 159, 144, 156, 157}, 249))
if _101xx001x then _101xx001x:Destroy() end
-- 0x1b 0x79 0x8f
local _xx011 = new(_804dd1({185, 137, 152, 143, 143, 132, 173, 159, 131}, 234), {Name = _804dd1({52, 3, 7, 22, 3, 20, 48, 3, 20, 15, 0, 15, 3, 2}, 102), ResetOnSpawn = false,
-- 7a30b2b048ff990fca68ffe7dae3a2b95e73c5
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, _0x0x1x111)
local _0x0xx10 = new(_804dd1({172, 152, 139, 135, 143}, 234), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 0.15,
-- 46af12434f59cf54db0fa0dc723d6f4d471a05c8450bd261f858c6
BorderSizePixel = 0, ZIndex = 1}, _xx011)
local _11101, _00x0x01 = 430, 400
-- 111101101101111011100011100011110001
local _x1xx10x = new(_804dd1({82, 102, 117, 121, 113}, 20), {Size = UDim2.fromOffset(_11101, _00x0x01),
Position = UDim2.new(0.5, -_11101/2, 0.5, -_00x0x01/2 + 40),
-- 28c9511cffff5c5effa0e916f26727e5c15faae45872ab8197c177
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, _xx011)
-- 0110001100001111101010101100111000000001010
corner(_x1xx10x, 22)
-- ec86dc29f731e60bbddb0e701cfdf4e8af9525228f17ca07698e
grad(_x1xx10x, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)
dropShadow(_x1xx10x, 22, 18, 0.65)
-- 0x33 0xa2 0x74
local _0x11x011 = new(_804dd1({210, 230, 245, 249, 241}, 148), {Size = UDim2.new(1, 16, 1, 16),
-- 010001100000000110100011011110001
Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,
-- 0xcf 0xd2 0xbf 0xde
BorderSizePixel = 0, ZIndex = 9}, _x1xx10x)
corner(_0x11x011, 26)
-- 0x07 0x91 0xb0 0xa9 0xcb
local _01xx0100x0 = 92
-- 0x99 0x54 0x78
local _x00x111x00 = new(_804dd1({247, 195, 208, 220, 212}, 177), {Size = UDim2.fromOffset(_01xx0100x0, _01xx0100x0),
-- 0x9f 0x0f 0xaa 0x6a
Position = UDim2.new(0.5, 0, 0, 32), AnchorPoint = Vector2.new(0.5, 0),
-- 0101011101111001010110100111010111110
BackgroundTransparency = 1, ZIndex = 13}, _x1xx10x)
local _0011x1111 = new(_804dd1({17, 37, 54, 58, 50}, 87), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0,
-- 00110111011001011010011000000000
ZIndex = 14, ClipsDescendants = true}, _x00x111x00)
corner(_0011x1111, _01xx0100x0 / 2)
-- 0x1a 0x01 0x49
local _1x11xx1 = false
-- 1110011110100100010001111000
if _xxx1101[_804dd1({93, 74, 93, 72, 93, 78}, 60)] and _xxx1101[_804dd1({63, 40, 63, 42, 63, 44}, 94)] ~= _804dd1({}, 0) then
local _0xxx11 = downloadAvatar(_xxx1101[_804dd1({3, 20, 3, 22, 3, 16}, 98)])
-- 4d472b1936dc0041fe52bbf9702035f256306d818748510842
if _0xxx11 then
-- 0xee 0x30 0x50 0xfd 0xd8 0x6d
local _0xx0x = new(_804dd1({147, 183, 187, 189, 191, 150, 187, 184, 191, 182}, 218), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Image = _0xxx11,
ScaleType = Enum.ScaleType.Crop, ZIndex = 15}, _0011x1111)
-- 110011001100111010110100111111110
corner(_0xx0x, _01xx0100x0 / 2)
-- 0xe4 0x71 0x12
_1x11xx1 = true
-- 9a76aadbfb20e06e96968f688e48618c808fdbf
end
end
-- 01111000110001101101011001110110001100011111100000111
if not _1x11xx1 then
-- ba80640e06b03dd38833f06e
local _01x0000x0x = new(_804dd1({14, 58, 41, 37, 45}, 72), {Size = UDim2.fromScale(1, 1),
-- 0x16 0x5d 0x12 0x28 0x47 0x3b
BackgroundColor3 = Theme.accent, BorderSizePixel = 0, ZIndex = 15}, _0011x1111)
-- 110010010001111110010110
corner(_01x0000x0x, _01xx0100x0 / 2)
-- 5fdd8a9b234c74debdbe4e31ea7e3f8f8fd3325a0838abb99688
grad(_01x0000x0x, Theme.accent3, Theme.neon, 45)
-- 0x91 0x14 0x7a 0xad
new(_804dd1({186, 139, 150, 154, 162, 143, 140, 139, 130}, 238), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
-- 551be13a2720b29016c679b967a34cca81c33793f95afd599283
Text = (_xxx1101[_804dd1({207, 194, 216, 219, 199, 202, 210, 229, 202, 198, 206}, 171)] or _xxx1101[_804dd1({19, 21, 3, 20, 8, 7, 11, 3}, 102)] or _804dd1({205}, 242)):sub(1, 1):upper(),
-- 0x51 0xea 0x4e
Font = Enum.Font.GothamBlack, TextSize = 42,
-- ab5d2db72cd0833e1275c41e1f7383a280a36fb96841641
TextColor3 = Color3.new(1, 1, 1), ZIndex = 16}, _01x0000x0x)
-- 549533f1b8f9280f3caa1f7299092619565a83f5dba81
end
-- 2897788d16bd8e50231bb9ca56f5ea6ff87be6498ba2b2fd712
local _11x0x0 = new(_804dd1({4, 48, 35, 47, 39}, 66), {Size = UDim2.fromScale(1, 1),
-- 0x5c 0x0b 0x37
BackgroundTransparency = 1, ZIndex = 16}, _0011x1111)
-- 0x82 0xff 0x96 0xdc
corner(_11x0x0, _01xx0100x0 / 2)
stroke(_11x0x0, Theme.neon, 2.6, 0.1)
-- 09fe0897bc9eb806832975570720cf82833cd7d
local _01xx0x1x = 32 + _01xx0100x0 + 14
new(_804dd1({185, 136, 149, 153, 161, 140, 143, 136, 129}, 237), {Size = UDim2.new(1, -40, 0, 26),
-- 1100000010100110111111001110000010001
Position = UDim2.fromOffset(20, _01xx0x1x), BackgroundTransparency = 1,
-- 0xc3 0x44 0x7f 0x44 0xce
Text = _xxx1101[_804dd1({138, 135, 157, 158, 130, 143, 151, 160, 143, 131, 139}, 238)] or _xxx1101[_804dd1({245, 243, 229, 242, 238, 225, 237, 229}, 128)] or _804dd1({54, 5, 18, 9, 6, 9, 5, 4}, 96),
-- 110111111000001011010010001100100001001010100101
Font = Enum.Font.GothamBlack, TextSize = 18,
-- 0x81 0xba 0x51 0x94
TextColor3 = Theme.text, ZIndex = 12}, _x1xx10x)
-- 0x50 0xfd 0x7a 0x6f
new(_804dd1({215, 230, 251, 247, 207, 226, 225, 230, 239}, 131), {Size = UDim2.new(1, -40, 0, 16),
Position = UDim2.fromOffset(20, _01xx0x1x + 26), BackgroundTransparency = 1,
-- fd767281a5af9c507397a6a6e8c8d6d5b1189d11e06d4cd45f3f255f39d
Text = _804dd1({83}, 19) .. (_xxx1101[_804dd1({237, 235, 253, 234, 246, 249, 245, 253}, 152)] or _804dd1({208, 203, 206, 203, 202, 210, 203}, 165)) ..
-- 000101101010110001001010001001001011001010000001
(_xxx1101.discordName and (_804dd1({31, 31, 253, 136, 31, 31, 91, 86, 76, 92, 80, 77, 91, 31, 127}, 63) .. _xxx1101.discordName) or _804dd1({}, 0)),
-- c7e2d7c89b2312799f791062a
Font = Enum.Font.Gotham, TextSize = 12,
TextColor3 = Theme.muted, ZIndex = 12}, _x1xx10x)
-- 866a9e0de756f747f5669f523196a8988a236ca87cd2b
local _101xx10011 = 160
-- 0100100010001100100000000000100101001111100011000
local _10x1xxxxx = new(_804dd1({10, 62, 45, 33, 41}, 76), {Size = UDim2.fromOffset(_101xx10011, 22),
-- 0x55 0x2a 0x39 0xac 0x8b
Position = UDim2.new(0.5, -_101xx10011/2, 0, _01xx0x1x + 48),
-- 11111111111000101100010011001010111100110100010111010111
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.8,
BorderSizePixel = 0, ZIndex = 12}, _x1xx10x)
-- 0011010101101100101101111001000001010101100110
corner(_10x1xxxxx, 11)
-- f64ddda13f18e51508621bea0fed58f56
tStroke(stroke(_10x1xxxxx, Theme.neon, 1.2, 0.15))
-- ac2bc9bcd78251569d979a89a20dce
local _x10000x0 = new(_804dd1({127, 78, 83, 95, 103, 74, 73, 78, 71}, 43), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
Text = _804dd1({11, 126, 102, 201, 164, 172, 164, 171, 172, 187, 201, 191, 172, 187, 160, 175, 160, 172, 173}, 233), Font = Enum.Font.GothamBold, TextSize = 10,
-- 111101010101111100110000000001
TextColor3 = Theme.neon, ZIndex = 13}, _10x1xxxxx)
if _xxx1101[_804dd1({86, 69, 74, 79}, 36)] and BADGE_STYLE[_xxx1101[_804dd1({228, 247, 248, 253}, 150)]] then
-- c768f348da5e88f2b95d9c793bc77f0dadb3b3b0e08de96a943
local _x1010x1x01 = BADGE_STYLE[_xxx1101[_804dd1({113, 98, 109, 104}, 3)]]
_10x1xxxxx.BackgroundColor3 = _x1010x1x01.color
_x10000x0.Text = _x1010x1x01.emoji .. _804dd1({74}, 106) .. _x1010x1x01.label
-- 100101011001010001010001010110010100111100011111000
_x10000x0.TextColor3 = _x1010x1x01.color
-- 001000010100101111111000000101110100011011110001001011010
end
-- 0x3f 0xa9 0x72 0x59 0x26
local _10x11x0xx = _01xx0x1x + 82
local _00010xxx = new(_804dd1({110, 95, 66, 78, 120, 79, 78, 78, 85, 84}, 58), {Size = UDim2.new(1, -60, 0, 48),
Position = UDim2.fromOffset(30, _10x11x0xx), BackgroundColor3 = Theme.neon,
-- 0x68 0x2d 0x37 0x83
Text = _804dd1({196, 199, 201, 204, 168, 219, 203, 218, 193, 216, 220}, 136), Font = Enum.Font.GothamBlack, TextSize = 15,
TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
-- c1e51b764c317e60acda92e2a2562c8a16d507bac21018f08a415ba29f1c
BorderSizePixel = 0, ZIndex = 13}, _x1xx10x)
-- 0xe7 0x0f 0x64
corner(_00010xxx, 12)
grad(_00010xxx, Theme.neon, Theme.accent3, 0)
_x1xx10x.Position = UDim2.new(0.5, -_11101/2, 0.5, -_00x0x01/2 + 90)
-- 01001110011111110010010111000000110000010010111001001010110
_x1xx10x.BackgroundTransparency = 1
-- 0x93 0x10 0x9d 0x1b
_xx0111:Create(_x1xx10x, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = UDim2.new(0.5, -_11101/2, 0.5, -_00x0x01/2), BackgroundTransparency = 0}):Play()
-- 0x88 0x14 0xe2 0x67 0x8e 0x37
local _1x1x10 = false
_00010xxx.MouseButton1Click:Connect(function()
if _1x1x10 then return end
_1x1x10 = true
-- 6c8c7b470542fd89536589f19064
_00010xxx.Text = _804dd1({30, 29, 19, 22, 27, 28, 21, 176, 210, 244}, 82)
_00010xxx.BackgroundColor3 = Theme.success
-- 0x33 0xdc 0xd8 0x4f 0x0e 0x21
task.wait(0.3)
-- 0111111111001110110011010111001000111110011
_xx0111:Create(_x1xx10x, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- be5876d83af4b2db433ec17ec184c48e6133397428c28c4
{Position = UDim2.new(0.5, -_11101/2, 0.5, -_00x0x01/2 - 40), BackgroundTransparency = 1}):Play()
-- 0x6e 0xdd 0x0a
task.wait(0.4)
-- 53615abe3ae1b9d7246864c94bd09
_xx011:Destroy()
-- c13180fb8763ab920dd66e9c93cf74f7ef2f0d209c08817d075b374c
end)
-- 0x78 0xc3 0x4e 0xf7

task.delay(60, function()
-- 0xc1 0xdb 0x9f 0xe5 0x3e 0x68
if not _1x1x10 and _xx011.Parent then _1x1x10 = true; _xx011:Destroy() end
-- c984810f44c3e95d018cec25e1ddd9f38241b07a276336d7998de5e5e
end)
while not _1x1x10 do task.wait(0.2) end
-- 140800574c86f43d3a593d198589b46b821ce5f5e60d35b335d711169
return true
end

-- 11110101000001110011100101001

local function showKeyPrompt()
-- 3b62902b783617cc1b0e1441
local _1x1100 = _1100x01x:WaitForChild(_804dd1({248, 196, 201, 209, 205, 218, 239, 221, 193}, 168))
-- 001001011010101011100101010010010011111000111100001100011010
local _x000x01 = _1x1100:FindFirstChild(_804dd1({217, 238, 234, 251, 238, 249, 192, 238, 242, 219, 249, 228, 230, 251, 255}, 139))
if _x000x01 then _x000x01:Destroy() end
local _1xx011x1x1 = new(_804dd1({89, 105, 120, 111, 111, 100, 77, 127, 99}, 10), {Name = _804dd1({99, 84, 80, 65, 84, 67, 122, 84, 72, 97, 67, 94, 92, 65, 69}, 49), ResetOnSpawn = false,
-- 0x25 0x25 0xdb 0x0b 0xb7
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, _1x1100)
-- 7466668bfa28a7e92d46e7cccb40
pcall(function()
local _101101x = new(_804dd1({57, 23, 14, 9, 62, 29, 29, 30, 24, 15}, 123), {Size = 20, Parent = _x000000})
_101101x.Name = _804dd1({68, 115, 119, 102, 115, 100, 70, 100, 121, 123, 102, 98, 84, 122, 99, 100}, 22)
-- 1111111100011001000110101000010011101111010101001110
task.spawn(function() while _1xx011x1x1.Parent do task.wait(0.2) end; _101101x:Destroy() end)
end)
-- 011101101101000111001110000001001101
local _x0xxx0 = new(_804dd1({61, 9, 26, 22, 30}, 123), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 1,
-- 621ceb7b4df82cfdd1c5da3a3b929ce8a1fdb619d71eeee
BorderSizePixel = 0, ZIndex = 1}, _1xx011x1x1)
_xx0111:Create(_x0xxx0, TweenInfo.new(0.4), {BackgroundTransparency = 0.3}):Play()
-- 0011000010101010101101110001
local _01100, _0x0x0xx0 = 540, 660
local _xxx10 = new(_804dd1({11, 63, 44, 32, 40}, 77), {Size = UDim2.fromOffset(_01100, _0x0x0xx0),
-- 0x85 0x50 0x75 0xd7 0x9e 0x05
Position = UDim2.new(0.5, -_01100/2, 0.5, -_0x0x0xx0/2 + 20),
-- 8483fb4287a3404e0b9dca68f4c0d20d0910c380ba39c4f176515c86cc4
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, _1xx011x1x1)
-- 0x8e 0xd1 0x86 0xe4
corner(_xxx10, 22)
grad(_xxx10, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)
dropShadow(_xxx10, 22, 22, 0.7)
local _10x0x01x1 = new(_804dd1({167, 147, 128, 140, 132}, 225), {Size = UDim2.new(1, 16, 1, 16),
-- 0xe2 0xa3 0x5d
Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
-- 0x30 0x2c 0x02
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,
BorderSizePixel = 0, ZIndex = 9}, _xxx10)
corner(_10x0x01x1, 26)
new(_804dd1({58, 11, 22, 26, 34, 15, 12, 11, 2}, 110), {Size = UDim2.new(1, 0, 0, 26),
Position = UDim2.fromOffset(0, 20), BackgroundTransparency = 1,
Text = _804dd1({81, 66, 85, 78, 65, 78, 68, 70, 83, 78, 72, 73}, 7), Font = Enum.Font.GothamBlack,
-- 11101111100000011001000100111100
TextSize = 21, TextColor3 = Theme.neon, ZIndex = 12}, _xxx10)
-- 0x1e 0xa2 0x0f 0x78 0xb3 0xf2
new(_804dd1({95, 110, 115, 127, 71, 106, 105, 110, 103}, 11), {Size = UDim2.new(1, -40, 0, 16),
-- 0xdb 0xbd 0xce 0x16
Position = UDim2.fromOffset(20, 48), BackgroundTransparency = 1,
Text = _804dd1({107, 72, 80, 31, 78, 74, 86, 92, 84, 31, 76, 75, 90, 79, 76, 31, 221, 191, 171, 31, 75, 94, 84, 90, 76, 31, 94, 93, 80, 74, 75, 31, 94, 31, 82, 86, 81, 74, 75, 90, 17}, 63),
-- 0100010110100101101111110110101111101110101
Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = Theme.muted, ZIndex = 12}, _xxx10)

-- 0x4c 0x07 0xfe 0xaa 0x33

local _10x00x00 = new(_804dd1({76, 120, 107, 103, 111}, 10), {Size = UDim2.new(1, -50, 0, 240),
-- 01101100010101000110100000111011110011001010
Position = UDim2.fromOffset(25, 76), BackgroundColor3 = Theme.panel,
-- 0xc9 0xf5 0x2d 0x35 0x6a
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, _xxx10)
corner(_10x00x00, 12)
-- 21e874b198b8be500494a02fa57b38f1a96a0b1301cb69afbb1528c846f
local _x11x00x1 = stroke(_10x00x00, Theme.strokeSoft, 1.4, 0.4)
-- 4988e4af58e7693c8f1ebb73e6c93462774dcde1003093ab158629cde
grad(_10x00x00, Color3.fromRGB(28, 16, 52), Theme.panel, 90)
-- bb152e6287aef5555586de9a41f5ffd
local _x01xx00xx1 = new(_804dd1({234, 222, 205, 193, 201}, 172), {Size = UDim2.fromOffset(30, 30),
-- 0xde 0x5f 0xd7 0x1a 0xff
Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,
-- a03ad8eb95f4d191313d34b27250703646afc330bf43ffeb1
BorderSizePixel = 0, ZIndex = 13}, _10x00x00)
-- 0x62 0x16 0xd9
corner(_x01xx00xx1, 15)
local _100xx0x01 = new(_804dd1({34, 19, 14, 2, 58, 23, 20, 19, 26}, 118), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = _804dd1({2}, 51), Font = Enum.Font.GothamBlack,
TextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, _x01xx00xx1)
-- 0xd0 0x6e 0xb0 0x9b 0x9e
new(_804dd1({131, 178, 175, 163, 155, 182, 181, 178, 187}, 215), {Size = UDim2.new(1, -58, 0, 20),
-- 2561db09c1e514dc3178b100586033a80cc894c59781df2defff1c657a
Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
-- c3c3937009860bb84ea77b81965b
Text = _804dd1({79, 74, 76, 75, 37, 65, 76, 86, 70, 74, 87, 65, 37, 46, 37, 83, 64, 87, 76, 67, 92, 37, 80, 86, 64, 87, 75, 68, 72, 64}, 5), Font = Enum.Font.GothamBlack,
-- 588f015b599f21bc0fb5aa3116da0b068a
TextSize = 13, TextColor3 = Theme.text,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, _10x00x00)
-- 18f736a0df9f218a918d9bad5986027467abbbddb39588b89ac7c1e3e15
new(_804dd1({12, 61, 32, 44, 20, 57, 58, 61, 52}, 88), {Size = UDim2.new(1, -30, 0, 46),
Position = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,
Text = _804dd1({226, 229, 253, 138, 254, 229, 144, 160, 138, 138, 155, 132, 138, 138, 233, 197, 218, 211, 138, 222, 194, 207, 138, 195, 196, 220, 195, 222, 207, 138, 200, 207, 198, 197, 221, 138, 203, 196, 206, 138, 192, 197, 195, 196, 138, 222, 194, 207, 138, 217, 207, 216, 220, 207, 216, 160, 138, 138, 152, 132, 138, 138, 254, 211, 218, 207, 138, 211, 197, 223, 216, 138, 238, 195, 217, 201, 197, 216, 206, 138, 223, 217, 207, 216, 196, 203, 199, 207, 138, 200, 207, 198, 197, 221, 160, 138, 138, 153, 132, 138, 138, 233, 198, 195, 201, 193, 138, 252, 239, 248, 227, 236, 243, 138, 72, 42, 62, 138, 221, 207, 138, 201, 194, 207, 201, 193, 138, 222, 194, 207, 138, 205, 223, 195, 198, 206, 138, 199, 207, 199, 200, 207, 216, 217, 194, 195, 218, 138, 203, 223, 222, 197, 199, 203, 222, 195, 201, 203, 198, 198, 211}, 170),
-- 0xd0 0x8f 0x52 0x01 0xc6
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,
-- 0x61 0x0f 0x82 0x2d 0xb6 0xf5
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _10x00x00)
-- 0xef 0xdf 0x9d 0xd5 0x2d 0xed
local _x10x0101x = new(_804dd1({31, 46, 51, 63, 9, 62, 63, 63, 36, 37}, 75), {Size = UDim2.new(1, -32, 0, 30),
Position = UDim2.fromOffset(16, 98), BackgroundColor3 = Theme.neon,
-- 001001111000011101001011110111011111111100010111010010011
Text = _804dd1({170, 197, 206, 205, 122, 122, 25, 21, 10, 3, 122, 19, 20, 12, 19, 14, 31, 122, 22, 19, 20, 17}, 90), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Color3.new(1,1,1), AutoButtonColor = false,
-- ef1c67d38981ae01cfbfbee25eeb17212a39da2236b1e9f9c6
BorderSizePixel = 0, ZIndex = 13}, _10x00x00)
-- 0x30 0xf8 0x09 0x31 0xd5
corner(_x10x0101x, 8)
-- 0xd8 0xfb 0x31 0xfc 0x0e
grad(_x10x0101x, Theme.neon, Theme.accent3, 0)
-- 0x65 0x16 0x82 0xa9 0xf3
local _101xx0111 = new(_804dd1({53, 4, 25, 21, 35, 14, 25}, 97), {Size = UDim2.new(1, -130, 0, 30),
-- 0x10 0x43 0x48
Position = UDim2.fromOffset(16, 136), BackgroundColor3 = Theme.panel2,
-- 250fb38b26e0a90aa625df6156ac5681400ee02752
BorderSizePixel = 0, Text = _804dd1({}, 0), PlaceholderText = _804dd1({116, 121, 99, 115, 127, 98, 116, 48, 101, 99, 117, 98, 126, 113, 125, 117, 242, 144, 182}, 16),
-- 0x7e 0x23 0xf2 0x2c
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
-- 0xfd 0x2e 0x56 0xaf 0x8b 0x73
TextColor3 = Theme.text, ClearTextOnFocus = false, ZIndex = 50}, _10x00x00)
-- 057a2b37220cde34674e661b0b3f45
corner(_101xx0111, 8)
-- 0x8b 0x63 0x08 0xf4
stroke(_101xx0111, Theme.strokeSoft, 1.2)
local _x1xx01100 = new(_804dd1({25, 40, 53, 57, 15, 56, 57, 57, 34, 35}, 77), {Size = UDim2.fromOffset(100, 30),
Position = UDim2.new(1, -114, 0, 136), BackgroundColor3 = Theme.neon,
-- 49fe23441c2d93942c1e27b3cd71305b
Text = _804dd1({70, 85, 66, 89, 86, 73}, 16), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Color3.new(1,1,1), AutoButtonColor = false, ZIndex = 13}, _10x00x00)
-- 101100010100011011110001
corner(_x1xx01100, 8)
-- 0xc9 0xd1 0xb9 0x9d 0x19 0xb1
grad(_x1xx01100, Theme.neon, Theme.accent3, 0)
-- 0x7a 0xc1 0xfe 0x90
local _x101101x = new(_804dd1({224, 209, 204, 192, 248, 213, 214, 209, 216}, 180), {Size = UDim2.new(1, -32, 0, 56),
Position = UDim2.fromOffset(16, 174), BackgroundTransparency = 1,
-- 101010101101110100001001001010011001100001001001
Text = _804dd1({}, 0), Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
-- 110101001011100100011000111001101
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _10x00x00)

-- f5245e628f3423a4a1970e9b58996b148515589

local _11x0000xx = new(_804dd1({121, 77, 94, 82, 90}, 63), {Size = UDim2.new(1, -50, 0, 185),
-- 0x51 0x1e 0x40
Position = UDim2.fromOffset(25, 326), BackgroundColor3 = Theme.panel,
-- 9cf2975fd115fd4bd22995519635ef5c099594f9bc3f3
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, _xxx10)
corner(_11x0000xx, 12)
local _11x001100x = stroke(_11x0000xx, Theme.strokeSoft, 1.4, 0.4)
grad(_11x0000xx, Color3.fromRGB(28, 16, 52), Theme.panel, 90)
local _xx10111 = new(_804dd1({191, 139, 152, 148, 156}, 249), {Size = UDim2.fromOffset(30, 30),
-- 0x3f 0x79 0x86
Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,
-- 0x1f 0xe5 0xe8 0x1b 0xb4
BorderSizePixel = 0, ZIndex = 13}, _11x0000xx)
-- 0x83 0x73 0xb0 0xba 0xfc 0x47
corner(_xx10111, 15)
-- 9df5c6e7cf408224eef4fa42de5c340b5e8d6b474eff4066aef
local _10xxx0x0x1 = new(_804dd1({57, 8, 21, 25, 33, 12, 15, 8, 1}, 109), {Size = UDim2.fromScale(1, 1),
-- 0bc92aeb074e7850d474cca8448610e5cd1fc15b28835
BackgroundTransparency = 1, Text = _804dd1({20}, 38), Font = Enum.Font.GothamBlack,
-- 0x67 0xd1 0xb1 0x52 0x89 0x5e
TextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, _xx10111)
new(_804dd1({40, 25, 4, 8, 48, 29, 30, 25, 16}, 124), {Size = UDim2.new(1, -58, 0, 20),
-- 28070eb92123917317fb9ea73ba3541
Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
-- 0340f5ba1b410fc817976d26946099f17a6b891badf1acd23827c893e0a
Text = _804dd1({48, 36, 37, 57, 62, 35, 56, 43, 52, 81, 37, 57, 52, 81, 48, 33, 33}, 113), Font = Enum.Font.GothamBlack,
TextSize = 13, TextColor3 = Theme.text,
-- 00111011011011011101101011101000011100
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, _11x0000xx)
new(_804dd1({89, 104, 117, 121, 65, 108, 111, 104, 97}, 13), {Size = UDim2.new(1, -30, 0, 60),
-- e45eddb1f8f0259a7dbb420affd659dde6212f790294072474d
Position = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,
-- a1a21ae727a9545b241474b56b818fa3395
Text = _804dd1({102, 97, 121, 14, 122, 97, 20, 36, 14, 14, 31, 0, 14, 14, 109, 66, 71, 77, 69, 14, 14, 109, 97, 126, 119, 14, 111, 123, 122, 102, 14, 98, 103, 96, 101, 14, 14, 76, 75, 66, 65, 89, 36, 14, 14, 28, 0, 14, 14, 97, 94, 75, 64, 14, 90, 70, 75, 14, 66, 71, 64, 69, 14, 204, 168, 188, 14, 77, 66, 71, 77, 69, 14, 111, 91, 90, 70, 65, 92, 71, 84, 75, 36, 14, 14, 29, 0, 14, 14, 106, 71, 93, 77, 65, 92, 74, 14, 89, 71, 66, 66, 14, 77, 65, 64, 72, 71, 92, 67, 14, 204, 174, 186, 14, 90, 70, 71, 93, 14, 93, 77, 92, 75, 75, 64, 14, 79, 91, 90, 65, 3, 77, 66, 65, 93, 75, 93}, 46),
-- 0df794d035c49811436a36a4b
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,
-- 5364d476eee7b874e072e54e7f4e4d7df9da3602a79
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
-- d0bd6b20a583c957a455c0ddd622473ff907970cea58a0f6aaf389e3d9
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _11x0000xx)
local _11101x1 = new(_804dd1({55, 6, 27, 23, 33, 22, 23, 23, 12, 13}, 99), {Size = UDim2.new(1, -32, 0, 36),
Position = UDim2.fromOffset(16, 122), BackgroundColor3 = Theme.neon,
Text = _804dd1({30, 113, 122, 124, 206, 206, 162, 161, 173, 165, 171, 170, 206, 12, 110, 122, 206, 141, 129, 131, 158, 130, 139, 154, 139, 206, 157, 154, 139, 158, 206, 223, 206, 136, 135, 156, 157, 154}, 238), Font = Enum.Font.GothamBold, TextSize = 11,
-- ddf9101943617d3c5a70ca46
TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
BorderSizePixel = 0, ZIndex = 13}, _11x0000xx)
-- 229702ff12ff48929f02b9fe1
corner(_11101x1, 8)
local _10x10x111 = grad(_11101x1, Color3.new(0.35, 0.35, 0.35), Color3.new(0.2, 0.2, 0.2), 0)
-- 561326cee08e398f4e947fe802fb9d48466a62b451412e896e99c7d349
_11101x1.Active = false
-- 0xf8 0x8a 0xaa 0x5b
_11x0000xx.BackgroundTransparency = 0.55
-- 0100100001111101001101110
_11x001100x.Transparency = 0.75
local _0x1x01x = false
local _1xx01100x = nil
-- cb22f4ba4e675eda97bf36f7e5cbe64366f472cac96f46a89
local function _10x11110(_00x11)
_0x1x01x = true
-- 000001000100100110000111000001101001000110100010
_1xx01100x = _00x11
-- e41b14933b8952f989c2cd63c8af45
_11x0000xx.BackgroundTransparency = 0.15
-- 011010110110101000011100010110011100111110
_11x001100x.Transparency = 0.4
-- 11110100001010001111000111001110110000110010111
_11101x1.Active = true
_11101x1.Text = _804dd1({151, 248, 243, 247, 71, 71, 36, 40, 55, 62, 71, 38, 50, 51, 47, 71, 43, 46, 41, 44}, 103)
_11101x1.BackgroundColor3 = Theme.neon
-- 01011101100010010100000010
_10x10x111.Color = ColorSequence.new(Theme.neon, Theme.accent3)
-- 110000000110001000010110011100010000000010001110
end
-- 0x87 0xa1 0x5d 0x5d 0xe7
local _xxx11x00x = new(_804dd1({60, 8, 27, 23, 31}, 122), {Size = UDim2.new(1, -50, 0, 56),
Position = UDim2.fromOffset(25, 521), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 12}, _xxx10)
corner(_xxx11x00x, 10)
local _1x0xx1101 = stroke(_xxx11x00x, Theme.strokeSoft, 1, 0.5)
local _00x0001x01 = new(_804dd1({6, 50, 33, 45, 37}, 64), {Size = UDim2.fromOffset(10, 10),
-- f976e024d917f331353f795b16031f51113ea4
Position = UDim2.fromOffset(14, 23), BackgroundColor3 = Theme.gold,
-- 6c7f7dfd9c8e5da04dbb4e9052752a217dc35c3341b8
BorderSizePixel = 0, ZIndex = 13}, _xxx11x00x)
corner(_00x0001x01, 5)
local _10x10 = new(_804dd1({239, 222, 195, 207, 247, 218, 217, 222, 215}, 187), {Size = UDim2.new(1, -40, 1, -10),
-- 001011110000101011100100110100001101101100010010011010001
Position = UDim2.fromOffset(32, 5), BackgroundTransparency = 1,
-- 0xa0 0x33 0x02 0x63
Text = _804dd1({199, 224, 241, 228, 180, 165, 174, 180, 247, 251, 228, 237, 180, 224, 252, 241, 180, 253, 250, 226, 253, 224, 241, 184, 180, 254, 251, 253, 250, 180, 208, 253, 231, 247, 251, 230, 240, 184, 180, 224, 252, 241, 250, 180, 226, 241, 230, 253, 242, 237, 180, 237, 251, 225, 230, 180, 225, 231, 241, 230, 250, 245, 249, 241, 186}, 148),
-- 0000000010011001001101101
Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = Theme.gold,
-- d5c554e588101064989741812fe5ac8c881d0179982568
TextXAlignment = Enum.TextXAlignment.Left,
-- 10111100000110111111110001100011110111010001
TextYAlignment = Enum.TextYAlignment.Center,
-- 0xf2 0xb2 0xe5
TextWrapped = true, ZIndex = 13}, _xxx11x00x)
-- 10110000101000001101001111111110110001110000000001001001
local function _1001101(_0xxx0, _11x1xx110)
_10x10.Text = _0xxx0
-- 101010110110010111010001100100100010000
_10x10.TextColor3 = _11x1xx110 or Theme.gold
-- 0x33 0xb1 0xe0 0x06 0xe7 0xb9
_00x0001x01.BackgroundColor3 = _11x1xx110 or Theme.gold
-- 97bba2b12180f994935e02398fae4f982126a8c48071cc7170ca2bf1
_xx0111:Create(_1x0xx1101, TweenInfo.new(0.2), {Color = _11x1xx110 or Theme.strokeSoft}):Play()
-- 0xbe 0xe0 0xde 0xe4 0x6e
end
local _0111x0x = new(_804dd1({151, 163, 176, 188, 180}, 209), {Size = UDim2.new(1, -50, 0, 5),
Position = UDim2.fromOffset(25, 585), BackgroundColor3 = Theme.panel2,
BorderSizePixel = 0, ZIndex = 12}, _xxx10)
-- 0xe2 0x32 0x61 0xfe 0x99
corner(_0111x0x, 3)
-- 001101110001110100111110011001001010111
local _x1xx1110 = new(_804dd1({85, 97, 114, 126, 118}, 19), {Size = UDim2.new(0, 0, 1, 0),
BackgroundColor3 = Theme.success, BorderSizePixel = 0, ZIndex = 13}, _0111x0x)
corner(_x1xx1110, 3)
grad(_x1xx1110, Theme.neon, Theme.success, 0)
-- 000110010001100011111000011011111011101010111000001101
local _1xx00x1 = {done = false, user = nil}
local _xx10110 = nil
local _xxx0xx1 = false
_x10x0101x.MouseButton1Click:Connect(function()
_10x10x1(DISCORD_INVITE)
_1x00x00010(DISCORD_INVITE)
-- a3e62c0f69c38e03d08296968a42d7b96fc0d78fa883083047080f2feac9
_x10x0101x.Text = _804dd1({91, 37, 42, 153, 153, 250, 246, 233, 240, 252, 253, 153, 91, 57, 45, 153, 243, 246, 240, 247, 153, 247, 246, 238}, 185)
task.delay(2, function()
-- 10101111100101010010011011100100010110011110100100100
if _x10x0101x and _x10x0101x.Parent then _x10x0101x.Text = _804dd1({195, 172, 167, 164, 19, 19, 112, 124, 99, 106, 19, 122, 125, 101, 122, 103, 118, 19, 127, 122, 125, 120}, 51) end
-- 101111000101001001100001001001110000000110010
end)
_xx0111:Create(_x1xx1110, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
{Size = UDim2.new(0.25, 0, 1, 0)}):Play()
-- 198325c800a430304f8159c631072b40e5bae4e4850776ca419a573
_1001101(_804dd1({174, 137, 145, 142, 147, 130, 199, 132, 136, 151, 142, 130, 131, 201, 199, 173, 136, 142, 137, 199, 147, 143, 130, 199, 148, 130, 149, 145, 130, 149, 203, 199, 147, 143, 130, 137, 199, 147, 158, 151, 130, 199, 158, 136, 146, 149, 199, 146, 148, 130, 149, 137, 134, 138, 130, 199, 134, 137, 131, 199, 132, 139, 142, 132, 140, 199, 177, 162, 181, 174, 161, 190, 201}, 231), Theme.accent2)
-- 0x9e 0x94 0x95 0xdf
end)
-- bd66c4aaf37c1c1c66a5dd3ca18ebaef431b4d0f
_x1xx01100.MouseButton1Click:Connect(function()
if _0x1x01x then return end
local _x1x010xx01 = (_101xx0111.Text or _804dd1({}, 0)):gsub(_804dd1({20, 111, 57, 97}, 74), _804dd1({}, 0)):gsub(_804dd1({79, 25, 65, 78}, 106), _804dd1({}, 0))
-- 9121b2d8ab561db270987e43b4f33016de2f55bc0e0a6186cc4bfb
if _x1x010xx01 == _804dd1({}, 0) then
-- 111110010000011100000111
_x101101x.Text = _804dd1({176, 200, 242, 114, 55, 60, 38, 55, 32, 114, 43, 61, 39, 32, 114, 22, 59, 33, 49, 61, 32, 54, 114, 39, 33, 55, 32, 60, 51, 63, 55, 114, 52, 59, 32, 33, 38}, 82)
_x101101x.TextColor3 = Theme.danger
-- 0100101100111001000111111110101010101010101100001
return
end
_x1xx01100.Text = _804dd1({123, 112, 125, 123, 115, 113, 118, 127, 218, 184, 158}, 56)
-- 01010110000010011011110010001000000000100010001111
_x1xx01100.Active = false
_x101101x.Text = _804dd1({17, 29, 28, 6, 19, 17, 6, 27, 28, 21, 82, 1, 23, 0, 4, 23, 0, 144, 242, 212}, 114)
_x101101x.TextColor3 = Theme.muted
-- 2ea427e58d373d3e7a7442a7acf647ff85f7d0871ba30158ec1
task.spawn(function()
-- 101001011011011001101001111010111000010000
local _0x001xx0, _0x11xxx = checkGuildIn(_x1x010xx01)
-- 001000100110000101110000110000001101100100010111010000100
_x1xx01100.Active = true
-- 0xc4 0x71 0x1a 0xa3 0x71
if _0x001xx0 == true then
_x1xx01100.Text = _804dd1({91, 37, 42, 153, 239, 252, 235, 240, 255, 240, 252, 253}, 185)
_x1xx01100.BackgroundColor3 = Theme.success
-- d519582cb1ea874ec44ab8663edc546
_x10x0101x.Active = false
-- 10100101111111010010110100111010001011111010000
_101xx0111.Active = false
_x101101x.Text = _804dd1({219, 165, 170, 25, 125, 80, 74, 90, 86, 75, 93, 25, 76, 74, 92, 75, 25, 121}, 57) .. _x1x010xx01 .. _804dd1({104, 46, 39, 61, 38, 44, 104, 33, 38, 104, 60, 32, 45, 104, 59, 45, 58, 62, 45, 58, 104, 170, 200, 220, 104, 59, 60, 45, 56, 104, 122, 104, 61, 38, 36, 39, 43, 35, 45, 44}, 72)
-- 0x57 0xe2 0xfe 0x68 0x0a
_x101101x.TextColor3 = Theme.success
_x01xx00xx1.BackgroundColor3 = Theme.success
_100xx0x01.Text = _804dd1({118, 8, 7}, 148)
_xx0111:Create(_x11x00x1, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
_xx0111:Create(_x1xx1110, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
-- 7aadc580cb927647c82e12fbba61abceb2
{Size = UDim2.new(0.5, 0, 1, 0)}):Play()
-- 11011010100101011000111101111111110111000101011000
_10x11110(_x1x010xx01)
-- 7d51ad586e02ed7ba16d18b4d93
_1001101(_804dd1({157, 227, 236, 95, 44, 11, 26, 15, 95, 78, 95, 27, 16, 17, 26, 81, 95, 60, 16, 15, 6, 95, 11, 23, 26, 95, 30, 10, 11, 23, 95, 19, 22, 17, 20, 95, 29, 26, 19, 16, 8, 95, 30, 17, 27, 95, 30, 10, 11, 23, 16, 13, 22, 5, 26, 95, 11, 23, 26, 95, 30, 15, 15, 81}, 127), Theme.accent2)
-- 111101010101111110001010011110000110010011001110101
elseif _0x001xx0 == false then
-- d60200c7a150216c0ebc8f27cacc7179b662efd5371
_x1xx01100.Text = _804dd1({99, 112, 103, 124, 115, 108}, 53)
-- 10111011111101111110110101101000110001101
_x101101x.Text = _804dd1({111, 17, 26, 173, 205}, 141) .. _x1x010xx01 .. _804dd1({34, 108, 109, 118, 34, 107, 108, 34, 118, 106, 103, 34, 113, 103, 112, 116, 103, 112, 34, 224, 130, 150, 34, 104, 109, 107, 108, 34, 100, 107, 112, 113, 118, 46, 34, 118, 106, 103, 108, 34, 112, 103, 118, 112, 123}, 2)
-- 10110000001111010011101100011101010
_x101101x.TextColor3 = Theme.danger
_1001101(_804dd1({120, 68, 77, 88, 12, 104, 69, 95, 79, 67, 94, 72, 12, 89, 95, 73, 94, 66, 77, 65, 73, 12, 69, 95, 66, 11, 88, 12, 69, 66, 12, 88, 68, 73, 12, 95, 73, 94, 90, 73, 94, 12, 85, 73, 88, 2, 12, 111, 67, 92, 85, 12, 88, 68, 73, 12, 69, 66, 90, 69, 88, 73, 12, 77, 66, 72, 12, 70, 67, 69, 66, 2}, 44), Theme.danger)
-- 0x23 0x8b 0x88 0x04 0xa4
else
-- 58dceb28201bbe4e765a0e4f744553dfb4a667
_x1xx01100.Text = _804dd1({93, 78, 89, 66, 77, 82}, 11)
local _11xxx0x = (type(info) == _804dd1({107, 126, 125, 115, 122}, 31) and info.err) or tostring(info)
local _xxx00x1 = (type(info) == _804dd1({227, 246, 245, 251, 242}, 151) and info.debug) and info.debug or {}
local _001110 = table.concat(_xxx00x1, _804dd1({208}, 218))
print(_804dd1({18, 27, 12, 8, 25, 12, 27, 20, 105, 14, 60, 32, 37, 45, 105, 42, 33, 44, 42, 34, 105, 47, 40, 32, 37, 44, 45, 115, 105}, 73) .. _11xxx0x)
-- 01101001000000101001000000100010010110011111001001
print(_804dd1({87, 94, 73, 77, 92, 73, 94, 81, 44, 72, 101, 109, 107, 98, 99, 127, 120, 101, 111, 44, 99, 121, 120, 124, 121, 120, 54, 6}, 12) .. _001110)
-- 49aa00da60c3f8ea2743339cd6ef28f403c46bdea071d5ecc562819e
_x101101x.Text = _804dd1({250, 130, 184, 56}, 24) .. _11xxx0x
_x101101x.TextColor3 = Theme.danger
-- 0x56 0xbe 0xbc 0x6d 0xab 0x41
_1001101(_804dd1({49, 3, 31, 26, 18, 86, 21, 30, 19, 21, 29, 86, 16, 23, 31, 26, 19, 18, 88, 86, 53, 26, 31, 21, 29, 86, 53, 57, 38, 47, 86, 50, 51, 52, 35, 49, 86, 23, 24, 18, 86, 5, 19, 24, 18, 86, 2, 25, 86, 5, 2, 23, 16, 16, 88}, 118), Theme.danger)
notify(_804dd1({232, 218, 198, 195, 203, 143, 204, 199, 202, 204, 196, 143, 201, 206, 198, 195, 202, 203}, 175),
_11xxx0x .. _804dd1({21, 21, 92, 115, 118, 124, 116, 63, 92, 80, 79, 70, 63, 91, 90, 93, 74, 88, 63, 126, 113, 123, 63, 111, 126, 108, 107, 122, 63, 107, 119, 122, 63, 107, 122, 103, 107, 63, 107, 112, 63, 108, 107, 126, 121, 121, 49}, 31),
Theme.danger, 30, _001110)
end
end)
end)
_11101x1.MouseButton1Click:Connect(function()
-- 0010111111111010101011111111110111110111010100001
if not _0x1x01x then
-- 0x14 0x51 0xad 0x0c 0xb8
_1001101(_804dd1({128, 172, 174, 179, 175, 166, 183, 166, 227, 176, 183, 166, 179, 227, 242, 227, 161, 166, 165, 172, 177, 166, 227, 162, 182, 183, 171, 172, 177, 170, 185, 170, 173, 164, 237}, 195), Theme.danger)
-- 01111010001001011111110010100111100100010111110110100010
return
-- b2a6f4408c5bfcb9fbe9f5d9b8ce393c28e624ffa3c
end
-- 1011011110100001000000100001111001010001
local _0100000 = _804dd1({164, 166, 164, 137}, 214) .. tostring(_1100x01x.UserId) .. _804dd1({135}, 216) ..
tostring(math.random(100000, 999999)) .. _804dd1({81}, 14) ..
tostring(math.floor(tick() * 1000))
-- c4709958830f3706f94059dd37ee94ff62
local _1001x10xxx = KEY_API .. _804dd1({244, 180, 186, 174, 175, 179, 244, 168, 175, 186, 169, 175, 228, 168, 190, 168, 168, 178, 180, 181, 230}, 219) .. _0100000 ..
-- 0x8f 0xda 0xe7 0xb6 0x9c 0xeb
_804dd1({212, 135, 129, 151, 128, 156, 147, 159, 151, 207}, 242) .. _10x11x1x:UrlEncode(_1xx01100x or _804dd1({}, 0))
_10x10x1(_1001x10xxx)
-- 101110001001101110010101101001001101110010101000101
_1x00x00010(_1001x10xxx)
_11101x1.Text = _804dd1({97, 31, 16, 163, 163, 192, 204, 211, 202, 198, 199, 163, 97, 3, 23, 163, 204, 211, 198, 205, 163, 202, 205, 163, 193, 209, 204, 212, 208, 198, 209}, 131)
task.delay(2.5, function()
if _11101x1 and _11101x1.Parent then _11101x1.Text = _804dd1({52, 91, 80, 84, 228, 228, 135, 139, 148, 157, 228, 133, 145, 144, 140, 228, 136, 141, 138, 143}, 196) end
-- 0xcd 0x11 0xce 0x94 0x3c 0xd3
end)
_1001101(_804dd1({97, 85, 84, 72, 0, 76, 73, 78, 75, 0, 67, 79, 80, 73, 69, 68, 1, 0, 111, 80, 69, 78, 0, 73, 84, 12, 0, 65, 85, 84, 72, 79, 82, 73, 90, 69, 12, 0, 84, 72, 69, 78, 0, 87, 65, 73, 84, 0, 72, 69, 82, 69, 14}, 32), Theme.accent2)
_xx10110 = _0100000
-- 0x16 0x92 0x63 0xcc 0x34 0x12
if not _xxx0xx1 then
-- 1011011011000111101100100110001
_xxx0xx1 = true
-- 0x17 0x75 0xa6 0x66 0xab
task.spawn(function()
-- e4d2828afc7746d19b7ced7fd0caa695cdb17c84e3000a0
while _xxx0xx1 and _xx10110 do
task.wait(2)
if not _xxx0xx1 or not _xx10110 then break end
-- 1110111000011000000001011000
local _xxx11x = postJSON(_804dd1({62, 126, 112, 100, 101, 121, 62, 97, 126, 125, 125}, 17), {session = _xx10110, robloxId = tostring(_1100x01x.UserId)})
-- 545723b19877c3097794fe80
if not _xxx11x then
-- 0010110101001101101100001111
_1001101(_804dd1({22, 61, 44, 47, 55, 42, 51, 120, 48, 49, 59, 59, 45, 40, 120, 186, 216, 204, 120, 42, 61, 44, 42, 33, 49, 54, 63, 186, 216, 254}, 88), Theme.danger)
-- 0xd6 0x0f 0x92
elseif _xxx11x.status == _804dd1({127, 123}, 16) and _xxx11x.key then
-- 06a23d8779240616beef834eb9d3718239e82b80494385a608a2b32d99f1
SESSION_KEY = _xxx11x.key
-- a04be9044a5f27261081fadda8751a522e5e7ef
DISCORD_USERNAME = _xxx11x.discordName or _1xx01100x
-- 110001010110101111110011
DISCORD_ID = _xxx11x[_804dd1({127, 114, 104, 120, 116, 105, 127, 82, 127}, 27)]
_1101011({
-- 0x6c 0xdd 0x6d 0xb6 0x09 0x6e
key = SESSION_KEY,
robloxId = tostring(_1100x01x.UserId),
-- 0110011010000100010101000001110
discordUsername = DISCORD_USERNAME,
-- 10000110000111111000100001011
[_804dd1({116, 121, 99, 115, 127, 98, 116, 89, 116}, 16)] = DISCORD_ID,
-- 110101010110100111111110
savedAt = os.time(),
})
_xx10111.BackgroundColor3 = Theme.success
-- 0x4b 0xf7 0x9d 0x0d
_10xxx0x0x1.Text = _804dd1({85, 43, 36}, 183)
_xx0111:Create(_11x001100x, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
-- 0xda 0xcf 0xd6
_11101x1.Text = _804dd1({91, 37, 42, 153, 153, 239, 252, 235, 240, 255, 240, 252, 253}, 185)
-- 10101111011111101101011100111
_11101x1.BackgroundColor3 = Theme.success
-- 0x2d 0xf6 0x2e 0x9a
_10x10x111.Color = ColorSequence.new(Theme.success, Theme.accent)
-- 0xa3 0xbc 0x3a 0xf5 0xa3 0xde
_1001101(_804dd1({124, 2, 13, 190, 200, 251, 236, 247, 248, 247, 251, 250, 191, 190, 210, 241, 255, 250, 247, 240, 249, 124, 30, 56}, 158), Theme.success)
-- 00101000100011100001110100110010010011000110001110000
_xx0111:Create(_x1xx1110, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
-- 11100100000010110101110111100
{Size = UDim2.new(1, 0, 1, 0)}):Play()
_xxx0xx1 = false
task.wait(0.8)
_xx0111:Create(_xxx10, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- 11100011111101010100101000110110110010010011101110
{Position = UDim2.new(0.5, -_01100/2, 0.5, -_0x0x0xx0/2 - 30), BackgroundTransparency = 1}):Play()
-- 0xe1 0xd6 0x0c
task.wait(0.35)
-- 688078e81da6f6376274bd80cdab6cbae9248557435cd5005601a3def
_1xx011x1x1:Destroy()
_1xx00x1.done = true
-- 9ae0a4201a9f992f4bcfb5660ecfc9e89bec8f14099754ad303421a3
_1xx00x1.user = {
-- 1b04f621558c0e67540fb82afae075976b6a18fe88cd687
key = _xxx11x.key,
[_804dd1({232, 238, 248, 239, 243, 252, 240, 248}, 157)] = _xxx11x[_804dd1({219, 221, 203, 220, 192, 207, 195, 203}, 174)] or _804dd1({47, 41, 63, 40}, 90),
-- 0x42 0x55 0xc2
[_804dd1({155, 150, 140, 143, 147, 158, 134, 177, 158, 146, 154}, 255)] = _xxx11x[_804dd1({9, 4, 30, 29, 1, 12, 20, 35, 12, 0, 8}, 109)] or _xxx11x[_804dd1({166, 160, 182, 161, 189, 178, 190, 182}, 211)] or _804dd1({234, 217, 206, 213, 218, 213, 217, 216}, 188),
-- 00100000110010011001110011
[_804dd1({125, 106, 125, 104, 125, 110}, 28)] = _xxx11x[_804dd1({22, 1, 22, 3, 22, 5}, 119)] or _804dd1({}, 0),
[_804dd1({205, 192, 218, 202, 198, 219, 205, 224, 205}, 169)] = _xxx11x[_804dd1({1, 12, 22, 6, 10, 23, 1, 44, 1}, 101)] or _804dd1({}, 0),
discordName = DISCORD_USERNAME or _804dd1({}, 0),
[_804dd1({208, 195, 204, 201}, 162)] = _xxx11x[_804dd1({144, 131, 140, 137}, 226)] or nil,
[_804dd1({105, 106, 111, 108, 110, 94, 121, 103}, 11)] = _xxx11x[_804dd1({243, 240, 245, 246, 244, 196, 227, 253}, 145)] or nil,
}
return
-- 0x2e 0x1e 0xb6 0xc0 0xf1 0x8e
elseif _xxx11x.status == _804dd1({101, 112, 123, 113, 124, 123, 114}, 21) then
-- 1011101110111010000101010010100001000011101011011010100111
_00x0001x01.BackgroundTransparency = 0.3 + math.sin(tick() * 4) * 0.3
-- 0xed 0x0f 0xcd 0xcd
end
-- b2bd9e5db30e65bfcf4a8e21edab74d1c545a2d26847ec66374c7c2
end
end)
end
end)
-- 0xf9 0xfb 0xe1 0x2c 0x57 0x22
_xxx10.Position = UDim2.new(0.5, -_01100/2, 0.5, -_0x0x0xx0/2 + 80)
-- 001000010100000110110101100110010
_xxx10.BackgroundTransparency = 1
_xx0111:Create(_xxx10, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = UDim2.new(0.5, -_01100/2, 0.5, -_0x0x0xx0/2), BackgroundTransparency = 0}):Play()
-- 0110010100100000100011010100001100100110
while not _1xx00x1.done do task.wait(0.2) end
-- 2122e860b5644001223158486e5c4
return _1xx00x1.user
-- 0x5a 0x43 0x47 0x52 0x4e
end


local function verifySession()

local function _x11000(_00x101)
if not _00x101 then return nil end
local _1xxx10 = postJSON(_804dd1({127, 51, 56, 53, 51, 59}, 80), {robloxId = tostring(_1100x01x.UserId), key = _00x101})
-- 0x66 0x17 0x17
if _1xxx10 and _1xxx10.valid then
-- f49f528055b28086ebeb5a373c842ca3e70e6029ee
local _001000xx10 = postJSON(_804dd1({14, 66, 73, 68, 66, 74, 12, 85, 78, 74, 68, 79}, 33), {robloxId = tostring(_1100x01x.UserId), key = _00x101})
-- 10011101010110010010010000100110000101001100100100001
if _001000xx10 and _001000xx10.authorized == false then
-- 0xfc 0xe9 0xe9 0xe1 0x35 0x52
return nil, { reason = _001000xx10.reason or _804dd1({69, 68, 64, 84, 85, 73, 78, 83, 72, 91, 68, 69}, 33) }
end
-- 2d7b3e738f6763b6df3ad69a6960b3db70eb6af905257b0e0a9
return {
key = _00x101,
-- 62d716726cdeedeff2dea9581c43082d564f4ddd0c8cb1b883c49aef
[_804dd1({217, 223, 201, 222, 194, 205, 193, 201}, 172)] = _1xxx10[_804dd1({35, 37, 51, 36, 56, 55, 59, 51}, 86)] or _804dd1({91, 93, 75, 92}, 46),
-- 0x0a 0x97 0x6a
[_804dd1({240, 253, 231, 228, 248, 245, 237, 218, 245, 249, 241}, 148)] = _1xxx10[_804dd1({12, 1, 27, 24, 4, 9, 17, 38, 9, 5, 13}, 104)] or _1xxx10[_804dd1({189, 187, 173, 186, 166, 169, 165, 173}, 200)] or _804dd1({68, 119, 96, 123, 116, 123, 119, 118}, 18),
[_804dd1({81, 70, 81, 68, 81, 66}, 48)] = _1xxx10[_804dd1({72, 95, 72, 93, 72, 91}, 41)] or _804dd1({}, 0),
[_804dd1({106, 103, 125, 109, 97, 124, 106, 71, 106}, 14)] = _1xxx10[_804dd1({90, 87, 77, 93, 81, 76, 90, 119, 90}, 62)] or DISCORD_ID or _804dd1({}, 0),
-- 0010111001011010110111011000000011110001101111
discordName = _1xxx10.discordName or DISCORD_USERNAME or _804dd1({}, 0),
[_804dd1({160, 179, 188, 185}, 210)] = _1xxx10[_804dd1({48, 35, 44, 41}, 66)] or nil,
[_804dd1({111, 108, 105, 106, 104, 88, 127, 97}, 13)] = _1xxx10[_804dd1({125, 126, 123, 120, 122, 74, 109, 115}, 31)] or nil,
}
end
return nil, _1xxx10
end
local _1x001xx01 = _0000101x()
-- 6a303c1f15ed0bb85c11983d1bf2a989901
if _1x001xx01 and _1x001xx01.key then
-- 010010100000100010101001111001110111
local _x1xx10101x = _x11000(_1x001xx01.key)
-- 01101011001100011000100110101
if _x1xx10101x then
SESSION_KEY = _1x001xx01.key
-- 8373af3db49582840f1d1b43d9c868931da8a299457fa7225f9b6c46
DISCORD_USERNAME = _1x001xx01.discordUsername or _x1xx10101x.discordName
DISCORD_ID = _1x001xx01[_804dd1({111, 98, 120, 104, 100, 121, 111, 66, 111}, 11)] or _x1xx10101x[_804dd1({248, 245, 239, 255, 243, 238, 248, 213, 248}, 156)]
_x1xx10101x.discordName = _x1xx10101x.discordName or DISCORD_USERNAME
_x1xx10101x[_804dd1({89, 84, 78, 94, 82, 79, 89, 116, 89}, 61)] = _x1xx10101x[_804dd1({106, 103, 125, 109, 97, 124, 106, 71, 106}, 14)] or DISCORD_ID
print(_804dd1({70, 79, 88, 92, 77, 88, 79, 64, 61, 79, 120, 110, 105, 114, 111, 120, 121, 61, 110, 120, 110, 110, 116, 114, 115, 61, 123, 114, 111, 61, 93}, 29) .. tostring(DISCORD_USERNAME or _804dd1({205}, 242)))
return _x1xx10101x, true
-- 0xb9 0x9c 0xfc 0xc5
else
_x1110()
end
-- 80a91f7c3255a90835a4ee9cdce7
end
-- 011100001101010010001110110011111101100111100010110101
local _001x1111 = showKeyPrompt()
-- 01010110111000111000111100000001001000
if _001x1111 then
SESSION_KEY = _001x1111.key
DISCORD_USERNAME = _001x1111.discordName
-- 1c56b4c3a573783afb0028df192bdba888ec184569c
DISCORD_ID = _001x1111[_804dd1({129, 140, 150, 134, 138, 151, 129, 172, 129}, 229)]
_1101011({
key = _001x1111.key,
robloxId = tostring(_1100x01x.UserId),
-- c71947e27ae542df940e736313ba28b65
discordUsername = _001x1111.discordName,
[_804dd1({229, 232, 242, 226, 238, 243, 229, 200, 229}, 129)] = _001x1111[_804dd1({76, 65, 91, 75, 71, 90, 76, 97, 76}, 40)],
-- 0x6b 0x5c 0xa8 0x80
savedAt = os.time(),
-- 0100100000100101001001101001011001111101000110010111110101
})
-- 01111110101101011101000101010111101000
end
-- dddda30512418ce285d513d14f31241c
return _001x1111, false
end

-- 0ea62188cf23161c2a8087a98526fc6d52bcf85b7d417f2c4ca
local _x1x1x0, _x10xx1x0x0 = verifySession()
if not _x1x1x0 then
-- f198aee81189db41eef97346a93763e8488626d58
warn(_804dd1({234, 227, 244, 240, 225, 244, 227, 236, 145, 250, 212, 200, 145, 199, 212, 195, 216, 215, 216, 210, 208, 197, 216, 222, 223, 145, 215, 208, 216, 221, 212, 213, 159}, 177))
return
-- 4c2ef9093c9798a0ed0fc09dbff002069
end

-- ceeeea7e8ce54c2a4aa1535cb0beb0f975
MY_USER = _x1x1x0
MY_USER.country = _804dd1({146, 169, 172, 169, 168, 176, 169}, 199)
MY_USER.countryCode = _804dd1({}, 0)
MY_USER.connectedAt = tick()
MY_USER[_804dd1({200, 206, 216, 207, 244, 217}, 189)] = _1100x01x.UserId

fetchCountry(function(_00011x1x01, _x1x0xxxx01)
MY_USER.country = _00011x1x01 or _804dd1({253, 198, 195, 198, 199, 223, 198}, 168)
MY_USER.countryCode = _x1x0xxxx01 or _804dd1({}, 0)
end)


-- 0xf7 0x8e 0x2c 0xfa 0x11
showVerifiedScreen(_x1x1x0)


function makeDraggable(_01xx00x, _x11xxx)
local _xxx1xx011, _10xx10xx, _01x10111 = false, nil, nil
_x11xxx.InputBegan:Connect(function(_0x01x1xx1)
-- 0x43 0x85 0xf0 0xc3 0x10 0xd0
if _0x01x1xx1.UserInputType == Enum.UserInputType.MouseButton1 or _0x01x1xx1.UserInputType == Enum.UserInputType.Touch then
_xxx1xx011, _10xx10xx, _01x10111 = true, _0x01x1xx1.Position, _01xx00x.Position
end
-- 0xcc 0x21 0x96 0x65 0x5b 0x35
end)
_000110001.InputChanged:Connect(function(_x1010x0)
-- 01110100010100100100000010110111110011110010000010100001
if not _xxx1xx011 then return end
if _x1010x0.UserInputType == Enum.UserInputType.MouseMovement or _x1010x0.UserInputType == Enum.UserInputType.Touch then
-- 00001110001010011001001010110111000010000001111001111111
local _1xx0110x = _x1010x0.Position - _10xx10xx
-- 0x5c 0x04 0x88
_01xx00x.Position = UDim2.new(_01x10111.X.Scale, _01x10111.X.Offset + _1xx0110x.X, _01x10111.Y.Scale, _01x10111.Y.Offset + _1xx0110x.Y)
end
end)
_000110001.InputEnded:Connect(function(_0000x)
if _0000x.UserInputType == Enum.UserInputType.MouseButton1 or _0000x.UserInputType == Enum.UserInputType.Touch then
-- 0x23 0xa6 0x5c 0x58 0xbc 0xf2
_xxx1xx011 = false
-- 0x6d 0x45 0x94 0xb6 0x0f 0xac
end
-- 1001001011010001110111000000100001111
end)
end

function makeResizable(_0xxx0x0, _11x1x010xx)
-- f6a4780a9979ec56608a472c2b18159494dc2bb1818bc62ab9624886abd9
_11x1x010xx = _11x1x010xx or {}
-- 0x9d 0x91 0x22
local _1001001x, _10xxxx = _11x1x010xx.minW or 300, _11x1x010xx.minH or 200
-- 0110100101001100100101001111
local _01xx101111 = _11x1x010xx.corners or {_804dd1({235, 251}, 137), _804dd1({20, 18}, 96), _804dd1({244, 250}, 150), _804dd1({229, 253}, 145)}
-- c065a48f6e31bb3bbde7e22a1fdc2764fa
local _xx1x00 = _11x1x010xx.gripSize or 14
local _0x00x = (_0xxx0x0.ZIndex or 1) + 500
_0xxx0x0.ClipsDescendants = true
-- 0xf0 0xc5 0xe4 0x20 0xa9 0xd3
for _0x0xx0111, _000xx10 in ipairs(_01xx101111) do
local _1xx00111 = new(_804dd1({166, 146, 129, 141, 133}, 224), {Name = _804dd1({202, 253, 235, 241, 226, 253, 199}, 152) .. _000xx10, Size = UDim2.fromOffset(_xx1x00, _xx1x00),
BackgroundTransparency = 1, ZIndex = _0x00x, Active = true}, _0xxx0x0)
-- 0x52 0xd3 0x48 0x41 0x27
if _000xx10 == _804dd1({3, 19}, 97) then _1xx00111.Position = UDim2.new(1, -_xx1x00, 1, -_xx1x00)
-- 0xca 0x4f 0xf7 0x13 0x25 0x4c
elseif _000xx10 == _804dd1({229, 227}, 145) then _1xx00111.Position = UDim2.new(1, -_xx1x00, 0, 0)
-- 00101111101000111100011011
elseif _000xx10 == _804dd1({134, 136}, 228) then _1xx00111.Position = UDim2.new(0, 0, 1, -_xx1x00)
-- 0xfb 0x84 0x55
elseif _000xx10 == _804dd1({36, 60}, 80) then _1xx00111.Position = UDim2.new(0, 0, 0, 0) end
local _x0xxxxxx0 = new(_804dd1({117, 65, 82, 94, 86}, 51), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = _0x00x + 2}, _1xx00111)
-- 4f88601e6825125c195ea208cfcd1395ea287962f55d4beaad0b0
local _x1xxx10, _xxx1x1, _x1001011 = false, nil, nil
-- 0x68 0xe8 0x5f
local function _10x10x(_10x1x1001)
if _10x1x1001.UserInputType == Enum.UserInputType.MouseButton1 or _10x1x1001.UserInputType == Enum.UserInputType.Touch then
-- 8725aaab981f7f1a01629a508d0d9673da83d2079651e0a
_x1xxx10, _xxx1x1 = true, _10x1x1001.Position
-- 0x73 0xca 0x4c 0x24 0x35
_x1001011 = Vector2.new(_0xxx0x0.AbsoluteSize.X, _0xxx0x0.AbsoluteSize.Y)
-- 0x27 0x6d 0xe2 0x34
end
end
_1xx00111.InputBegan:Connect(_10x10x)
_x0xxxxxx0.InputBegan:Connect(_10x10x)
-- 1011011101001011110101111110101001001100100
_000110001.InputChanged:Connect(function(_1111010xx)
if not _x1xxx10 then return end
if _1111010xx.UserInputType == Enum.UserInputType.MouseMovement or _1111010xx.UserInputType == Enum.UserInputType.Touch then
-- 0x7d 0x0f 0x5b 0xed 0xf1
local _01x100x = _1111010xx.Position - _xxx1x1
local _00x1x1x, _111x0xxx = _x1001011.X, _x1001011.Y
if _000xx10:find(_804dd1({123}, 9)) then _00x1x1x = _x1001011.X + _01x100x.X end
-- 111101001001100000100000010001100011010111111101011110111101
if _000xx10:find(_804dd1({76}, 32)) then _00x1x1x = _x1001011.X - _01x100x.X end
if _000xx10:find(_804dd1({168}, 202)) then _111x0xxx = _x1001011.Y + _01x100x.Y end
-- 00010100010100001001000111111111100111001100100101010
if _000xx10:find(_804dd1({60}, 72)) then _111x0xxx = _x1001011.Y - _01x100x.Y end
_00x1x1x, _111x0xxx = math.max(_1001001x, _00x1x1x), math.max(_10xxxx, _111x0xxx)
_0xxx0x0.Size = UDim2.fromOffset(_00x1x1x, _111x0xxx)
-- dc325ea61467ff8f6a3f873b694ff4128f199f418dbe
if _11x1x010xx.onResize then pcall(_11x1x010xx.onResize, _00x1x1x, _111x0xxx) end
-- 0x31 0x36 0x27 0x4a 0x8f
end
-- 0001011001111001001010000010101001110100010101
end)
-- 0011110111000001100000011110001100110001111001
_000110001.InputEnded:Connect(function(_101xx)
if _101xx.UserInputType == Enum.UserInputType.MouseButton1 or _101xx.UserInputType == Enum.UserInputType.Touch then
_x1xxx10 = false
-- fa80b4314591984771eadc168953328f9107d62c5
end
-- 0cc560ad5d29da91ddd731e93e3850761a7daf2c5afb9646f9e3ad6
end)
-- 0e5e505710ec3376276efc64790073d78cd856
end
end

-- 2e17e2dd9b4e8ddda66438aaf0feec1acb20da7ab7

-- 56492c397727bb5b5c506244278fcc996cd75
function isAlly(_x01111xx)
-- 0x9a 0x4c 0x38 0xd8 0x2b 0xa9
if _x01111xx == _1100x01x then return true end
-- ce3025d6d8c96bc34e1531e8a5e73e030e80bdef760
if _1100x01x.Team and _x01111xx.Team then return _1100x01x.Team == _x01111xx.Team end
return false
end
-- 11010011101010110111000111000111001001000001
local _1x0x101111 = {_804dd1({75, 84, 87, 82, 88, 94}, 59), _804dd1({165, 169, 182}, 198), _804dd1({220, 213, 213, 218, 208, 214, 193}, 179), _804dd1({153, 157, 139, 158}, 234), _804dd1({247, 229, 241, 226, 244}, 144), _804dd1({10, 17, 28, 11, 16, 31, 31}, 121), _804dd1({64, 77, 91}, 44), _804dd1({8, 30, 13, 27, 26, 17}, 127), _804dd1({152, 150, 143, 159}, 250), _804dd1({168, 185, 172, 170, 183, 180}, 216)}
-- 0xad 0x18 0x8d 0x48 0x12
local _0101x = {_804dd1({200, 217, 194, 198, 194, 197, 202, 199}, 171), _804dd1({95, 78, 85, 81}, 60), _804dd1({51, 46, 35, 35, 36, 51}, 65), _804dd1({67, 95, 94, 82, 81}, 55), _804dd1({157, 155, 148, 157}, 250), _804dd1({207, 205, 192}, 162), _804dd1({239, 227, 228, 235, 227}, 130), _804dd1({215, 205, 204, 212, 217, 207}, 184), _804dd1({13, 26, 27}, 127)}
local _00xx110x00 = {_804dd1({195, 193, 218, 192, 220, 221}, 179), _804dd1({77, 74, 73, 69, 80, 65}, 36), _804dd1({57, 53, 52, 44, 51, 57, 46}, 90), _804dd1({158, 131, 144, 159, 150, 148}, 241), _804dd1({114, 121, 113, 116}, 24)}
-- 11111011111010101111010000
local _x0x011 = {_804dd1({139, 144, 151, 138, 155, 154, 222, 152, 140, 145, 144, 138}, 254), _804dd1({252, 231, 224, 253, 236, 237, 239, 251, 230, 231, 253}, 137), _804dd1({148, 143, 136, 149, 132, 133}, 225), _804dd1({204, 216, 197, 196, 222}, 170)}
-- 987d2c1fe19f66516dc884d9d6ce70b072287a246ef
local _x1xx01 = {_804dd1({255, 228, 249, 248, 182, 250, 243, 241, 255, 249, 248}, 150), _804dd1({33, 58, 39, 38, 36, 45, 47, 33, 39, 38}, 72), _804dd1({123, 96, 125, 124}, 18), _804dd1({73, 64, 66, 76, 74, 75}, 37)}
function detectPCP(_xx101xxx0)
-- 000000011010000101010100000001111111100
if not _xx101xxx0 then return nil end
-- 1d27ae8d0323c62bf5a114fde44fa786f9ec7a25
local _xx0101x = _804dd1({}, 0)
-- 10100100001110011101111110011
if _xx101xxx0.Team and _xx101xxx0.Team.Name then _xx0101x = _xx101xxx0.Team.Name:lower() end
-- 100010100111010100001101010001000100110100000010000
if _xx0101x == _804dd1({}, 0) and _xx101xxx0.TeamColor then _xx0101x = tostring(_xx101xxx0.TeamColor):lower() end
-- 00110011011011110111101001111011001101000101010110011011101
if _xx0101x == _804dd1({}, 0) then return nil end
-- 000110011110000101101000000110001110011010000010
for _1000xx0, _00x01x1 in ipairs(_1x0x101111) do if _xx0101x:find(_00x01x1, 1, true) then return _804dd1({191, 160, 163, 166, 172, 170}, 207) end end
for _001xxx011x, _1x0x11 in ipairs(_0101x) do if _xx0101x:find(_1x0x11, 1, true) then return _804dd1({218, 203, 208, 212, 208, 215, 216, 213}, 185) end end
for _01x1101xx0, _0x0xx01010 in ipairs(_00xx110x00) do if _xx0101x:find(_0x0xx01010, 1, true) then return _804dd1({25, 27, 0, 26, 6, 7, 12, 27}, 105) end end
-- 11000100001011000100010001011000110010001110000001110111011
return nil
-- 0x7e 0x7c 0xbe 0x1d 0x48 0x18
end
function detectDOW(_x0xx011xx)
if _x0xx011xx == _1100x01x then return _804dd1({59, 32, 39, 58, 43, 42}, 78) end
local _1x11101 = _804dd1({}, 0)
-- 0110110000101000011010010101011010011100000100
if _x0xx011xx.Team and _x0xx011xx.Team.Name then _1x11101 = _x0xx011xx.Team.Name:lower() end
if _1x11101 == _804dd1({}, 0) and _x0xx011xx.TeamColor then _1x11101 = tostring(_x0xx011xx.TeamColor):lower() end
-- 0x0b 0x51 0x22
if _1x11101 == _804dd1({}, 0) then return nil end
for _0111x, _xx001 in ipairs(_x0x011) do if _1x11101:find(_xx001, 1, true) then return _804dd1({248, 227, 228, 249, 232, 233}, 141) end end
-- 011001010110000000010110111001110
for _1x1010x1, _0xxx1x1 in ipairs(_x1xx01) do if _1x11101:find(_0xxx1x1, 1, true) then return _804dd1({11, 16, 13, 12}, 98) end end
return nil
end
function getRole(_xx100xx)
local _0xxx00x1x = _xx100xx.Character
-- 0x9f 0x1b 0xfc 0x8b 0x91
if _0xxx00x1x then
local _011x0 = _0xxx00x1x:FindFirstChildOfClass(_804dd1({12, 55, 55, 52}, 88))
if _011x0 then
-- 0xa5 0x12 0x88 0x27 0x0c
local _x1x0x0000 = _011x0.Name:lower()
-- 0x7f 0x0e 0x54 0x97 0xd7
if _x1x0x0000:find(_804dd1({91, 73, 82}, 60)) or _x1x0x0000:find(_804dd1({149, 130, 145, 136, 139, 145, 130, 149}, 231)) or _x1x0x0000:find(_804dd1({50, 43, 49, 54, 45, 46}, 66)) or _x1x0x0000:find(_804dd1({219, 192, 205, 218, 193, 206, 206}, 168)) or _x1x0x0000:find(_804dd1({121, 112, 127, 117, 118, 100, 127}, 17)) then
return _804dd1({53, 46, 35, 52, 47, 32, 32}, 70)
end
-- ffdb811fc69472817de29bf962fc
if _x1x0x0000:find(_804dd1({77, 72, 79, 64, 67}, 38)) or _x1x0x0000:find(_804dd1({50, 55, 49, 49, 51, 36}, 86)) or _x1x0x0000:find(_804dd1({180, 186, 183, 178, 179}, 214)) or _x1x0x0000:find(_804dd1({162, 174, 172, 167, 170, 187, 170}, 207)) or _x1x0x0000:find(_804dd1({168, 176, 183, 161, 160, 183}, 197)) then
return _804dd1({186, 162, 165, 179, 178, 165, 178, 165}, 215)
end
end
-- 01001001001100000110000101000111110001111110
end
-- 73aae5e656c1d26ad5cbba2426412d58c
return _804dd1({13, 10, 10, 11, 7, 1, 10, 16}, 100)
end
-- f997f46e08116f4054b6c92c338f0e0739722142
function espColour(_0xx0001)
if not _0xx0001 then return ESPColours.ally end
-- 0xa6 0xa1 0x90
local _xxx1xx = Cfg[_804dd1({152, 167, 189, 187, 175, 162, 189}, 206)].Mode or _804dd1({171, 154, 158, 146}, 255)
-- 6f8aa6135e6e57ba62adc20458a1
if _xxx1xx == _804dd1({190, 141, 133, 130, 142, 131, 155}, 236) then return Color3.fromHSV(rainbowH or 0, 1, 1) end
-- 1110110011001011001001001010101100001000100100111101
if _xxx1xx == _804dd1({152, 169, 173, 161}, 204) then return isAlly(_0xx0001) and ESPColours.ally or ESPColours.enemy end
if _xxx1xx == _804dd1({174, 189, 174}, 254) then
local _xx1x111 = detectPCP(_0xx0001)
-- ec4de52ed770f1f329be0bac422a8c7cbed
if _xx1x111 == _804dd1({47, 48, 51, 54, 60, 58}, 95) then return ESPColours.police end
-- 0x55 0xe0 0x24 0x5d 0xe4 0x17
if _xx1x111 == _804dd1({190, 175, 180, 176, 180, 179, 188, 177}, 221) then return ESPColours.criminal end
if _xx1x111 == _804dd1({206, 204, 215, 205, 209, 208, 219, 204}, 190) then return ESPColours.prisoner end
-- 723ab8cc9734bb27b14a66a4b1e13bef4f29741dcbda4438ea5ad
return isAlly(_0xx0001) and ESPColours.ally or ESPColours.prisoner
-- 0x83 0x37 0x1c 0x02 0x06
end
if _xxx1xx == _804dd1({0, 61, 62, 55}, 82) then
-- 0xc9 0x18 0x6d 0x4d
local _011xxxx = getRole(_0xx0001)
-- 1088b833340fdbcc0f396d8f0b6c60698839c7a69e5a2870af1d43061
if _011xxxx == _804dd1({51, 40, 37, 50, 41, 38, 38}, 64) then return ESPColours.sheriff end
if _011xxxx == _804dd1({68, 92, 91, 77, 76, 91, 76, 91}, 41) then return ESPColours.murderer end
return ESPColours.innocent
-- 7779a64756ee7dc542c1cbbb5e2b9b0533291ca3e8
end
-- 8568b954fd8872eab4dd8b7fd64bdaa03cff25d736007f8149
if _xxx1xx == _804dd1({85, 94, 70}, 17) then return isAlly(_0xx0001) and ESPColours.united or ESPColours.iron end
local _1xx101011 = detectDOW(_0xx0001)
-- 111110101000110100000110001001000101110111
if _1xx101011 == _804dd1({82, 73, 78, 83, 66, 67}, 39) then return ESPColours.united end
if _1xx101011 == _804dd1({48, 43, 54, 55}, 89) then return ESPColours.iron end
-- 10001111001100100011011101111100
local _1x1x0x11 = detectPCP(_0xx0001)
-- 1000000100111001110110011
if _1x1x0x11 == _804dd1({36, 59, 56, 61, 55, 49}, 84) then return ESPColours.police end
-- 1110101010101000110100000100110010111001000011101111
if _1x1x0x11 == _804dd1({79, 94, 69, 65, 69, 66, 77, 64}, 44) then return ESPColours.criminal end
-- c7a0056f9f9e7e1fa460b5153e37cb3d7c7c7a18efa
if _1x1x0x11 == _804dd1({186, 184, 163, 185, 165, 164, 175, 184}, 202) then return ESPColours.prisoner end
return isAlly(_0xx0001) and ESPColours.ally or ESPColours.enemy
-- 0x93 0xee 0xae 0x6c
end
function espOutline(_00011x11)
-- 100001011001100100010101111001011100111110
local _x1xx100 = espColour(_00011x11)
-- 0x32 0x2c 0x43
return Color3.new(math.min(1, _x1xx100.R * 1.15), math.min(1, _x1xx100.G * 1.15), math.min(1, _x1xx100.B * 1.15))
end
function roleLabel(_0x11x11xx1)
local _xx11x1x01 = Cfg[_804dd1({199, 248, 226, 228, 240, 253, 226}, 145)].Mode or _804dd1({85, 100, 96, 108}, 1)
if _xx11x1x01 == _804dd1({37, 20, 16, 28}, 113) then return isAlly(_0x11x11xx1) and _804dd1({185, 182, 167, 163, 175, 191}, 226) or _804dd1({6, 24, 19, 24, 16, 4, 0}, 93) end
if _xx11x1x01 == _804dd1({222, 205, 222}, 142) then
-- 60e1a7db62fc489573556b087445f73733c
local _x0xxx11 = detectPCP(_0x11x11xx1)
-- ebf239f76643ef40f4b3fdc7de411d703f978d4dab51caf657c3a
if _x0xxx11 == _804dd1({25, 6, 5, 0, 10, 12}, 105) then return _804dd1({40, 35, 60, 63, 58, 48, 54, 46}, 115) end
if _x0xxx11 == _804dd1({176, 161, 186, 190, 186, 189, 178, 191}, 211) then return _804dd1({190, 166, 183, 172, 168, 172, 171, 164, 169, 184}, 229) end
-- 01110100111111001100100101011000011000
return _804dd1({162, 169, 171, 176, 170, 182, 183, 188, 171, 164}, 249)
-- 7e4a904227ed4bd00a56e464955c
end
-- 011101000110010110100010111010010011101110101
if _xx11x1x01 == _804dd1({19, 46, 45, 36}, 65) then
local _0110x0x11 = getRole(_0x11x11xx1)
-- 0x66 0xbb 0x2a 0xd9
if _0110x0x11 == _804dd1({37, 62, 51, 36, 63, 48, 48}, 86) then return _804dd1({101, 109, 118, 123, 108, 119, 120, 120, 99}, 62) end
if _0110x0x11 == _804dd1({225, 249, 254, 232, 233, 254, 233, 254}, 140) then return _804dd1({63, 41, 49, 54, 32, 33, 54, 33, 54, 57}, 100) end
-- db500ac5899474422e479e805210b1b9a273dfe9f798eef2274b130a7d6f
return _804dd1({146, 128, 135, 135, 134, 138, 140, 135, 157, 148}, 201)
end
-- 1011011001101101010111100001010101010111101110111001
if _xx11x1x01 == _804dd1({91, 80, 72}, 31) then return isAlly(_0x11x11xx1) and _804dd1({123, 117, 110, 105, 116, 101, 100, 0, 102, 114, 111, 110, 116, 125}, 32) or _804dd1({26, 8, 19, 14, 15, 97, 13, 4, 6, 8, 14, 15, 28}, 65) end
if _xx11x1x01 == _804dd1({113, 66, 74, 77, 65, 76, 84}, 35) then return _804dd1({}, 0) end
-- 2d9600019aae6cc3a7e558c1b
local _x00x1000x = detectDOW(_0x11x11xx1)
-- 0a40f68ed8fe93e683927e50e11e71ef409fa0a8de80d51441
if _x00x1000x == _804dd1({133, 158, 153, 132, 149, 148}, 240) then return _804dd1({76, 66, 89, 94, 67, 82, 83, 55, 81, 69, 88, 89, 67, 74}, 23) end
-- 001101110000011100101110101011110100000000010010101011
if _x00x1000x == _804dd1({140, 151, 138, 139}, 229) then return _804dd1({173, 191, 164, 185, 184, 214, 186, 179, 177, 191, 185, 184, 171}, 246) end
-- 0x1a 0xcd 0xba 0x7a 0xc4
local _x0x1xx = detectPCP(_0x11x11xx1)
-- 6f9936bbccc3ffcee6d71aef1bf13cac8c9e78ece1d1e2751eaf6c
if _x0x1xx == _804dd1({50, 45, 46, 43, 33, 39}, 66) then return _804dd1({241, 250, 229, 230, 227, 233, 239, 247}, 170) end
-- 0x97 0xa1 0x41 0xc9 0x4c 0x56
if _x0x1xx == _804dd1({8, 25, 2, 6, 2, 5, 10, 7}, 107) then return _804dd1({242, 234, 251, 224, 228, 224, 231, 232, 229, 244}, 169) end
if _x0x1xx == _804dd1({166, 164, 191, 165, 185, 184, 179, 164}, 214) then return _804dd1({157, 150, 148, 143, 149, 137, 136, 131, 148, 155}, 198) end
-- 100111101000001001100011000100001011011000100011101100010
return isAlly(_0x11x11xx1) and _804dd1({88, 87, 70, 66, 78, 94}, 3) or _804dd1({240, 238, 229, 238, 230, 242, 246}, 171)
end
function reticleColour(_0x1x10)
-- 0xcd 0xae 0xe8 0xc9 0x26 0xe8
local _xx1x1xx000 = Cfg[_804dd1({92, 64}, 9)].ReticleMode or _804dd1({66, 118, 119, 108}, 3)
if _xx1x1xx000 == _804dd1({237, 219, 221, 218, 193, 195}, 174) then return Color3.fromRGB(Cfg[_804dd1({215, 203}, 130)].ReticleR, Cfg[_804dd1({14, 18}, 91)].ReticleG, Cfg[_804dd1({177, 173}, 228)].ReticleB) end
-- 6d66979b7eba58ca73bc17a7748f2732
if _xx1x1xx000 == _804dd1({223, 236, 228, 227, 239, 226, 250}, 141) then return Color3.fromHSV((tick() * 0.4) % 1, 1, 1) end
return espColour(_0x1x10)
end

function boundKeys()
-- 101111110000110011010011111
local _0xx0000x0 = {}
-- 8f930220de4d5921fc201f1025947cd4724fc319d8
if Cfg[_804dd1({7, 27}, 82)].MenuKey then _0xx0000x0[Cfg[_804dd1({123, 103}, 46)].MenuKey] = true end
if Cfg[_804dd1({75, 87}, 30)].HUDKey then _0xx0000x0[Cfg[_804dd1({50, 46}, 103)].HUDKey] = true end
-- 0x4c 0xe9 0x3e 0x00 0xc6 0x04
if Cfg[_804dd1({247, 235}, 162)].ADKey then _0xx0000x0[Cfg[_804dd1({131, 159}, 214)].ADKey] = true end
for _0110x00x, _1x011 in pairs(Cfg.Binds or {}) do if _1x011 then _0xx0000x0[_1x011] = true end end
-- 0x1a 0x18 0xe9 0xdd 0xb6
for _x101x0x0, _1x011xx0 in pairs(Cfg.TapBinds or {}) do if _1x011xx0 then _0xx0000x0[_1x011xx0] = true end end
-- 0x75 0x50 0x83 0x89 0x0a
return _0xx0000x0
end
-- 52afb2493038e0f3194a9d3baddaf18ba791f
function unboundKeys(_1x11x1)
local _1xx01 = boundKeys()
-- 0xc5 0xd1 0xd9 0xd7 0xce 0xa1
local _0x10x10 = {}
for _010xx00, _1100xx010 in ipairs(PREFERRED_KEYS) do
-- d3ae8d3a7b278ed8f32e580e1311589dc9e1f17a6c89a007ae
if not _1xx01[_1100xx010] then
-- c7d931a00dde656aa731fd1a437b6c4afee74a8ed63
_0x10x10[#_0x10x10+1] = _1100xx010
-- 101100110111101100110001001100101
if #_0x10x10 >= _1x11x1 then break end
end
end
-- 64c71d71fa1ea5ea2b13cba27cb0c1
return _0x10x10
-- fd817e52f9a3a277e989d705
end


-- 695926d5d2157da002158538b6737c92ee1e00565c48f00909ab3
function ripple(_0x011, _x0x1100, _xx1x0101, _0x010x, _1xx11110, _xxx0x0)
if not Cfg[_804dd1({134, 154}, 211)].Juicy then return end
-- 01001110100100010000011111110000010100101011001100001110
local _10xx1xx0 = new(_804dd1({47, 27, 8, 4, 12}, 105), {
-- 522e2f553d8708fed2cd681dc33f7f1bea0712f0e32a
Position = UDim2.fromOffset(_x0x1100 - _1xx11110/2, _xx1x0101 - _1xx11110/2),
-- ac80fa258a8e0e260a498ad2d5316eccbc244f2c26
Size = UDim2.fromOffset(_1xx11110, _1xx11110),
-- 0x38 0xcb 0x47 0x5c 0x5e 0x0a
BackgroundColor3 = _0x010x or Theme.accent,
-- 0xa2 0xa0 0x7c 0x24 0x34
BackgroundTransparency = 0.4, BorderSizePixel = 0, ZIndex = 100,
}, _0x011)
corner(_10xx1xx0, _1xx11110)
-- d48b6f115dafbf197989e4703be431
local _x101111110 = stroke(_10xx1xx0, _0x010x or Theme.accent, 2, 0.15)
-- 0xed 0xe6 0xf2 0x5e 0xd5 0x78
local _x110xx = _xx0111:Create(_10xx1xx0, TweenInfo.new(_xxx0x0 or 0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
{Size = UDim2.fromOffset(_1xx11110 * 2.6, _1xx11110 * 2.6),
-- 0x95 0x9e 0x1a 0xb7 0xa0 0xca
Position = UDim2.fromOffset(_x0x1100 - _1xx11110 * 1.3, _xx1x0101 - _1xx11110 * 1.3),
-- 0x9c 0x9f 0x66 0xa5 0x25 0xea
BackgroundTransparency = 1})
-- 0xc0 0xd9 0x0b 0xd4
local _11x11100 = _xx0111:Create(_x101111110, TweenInfo.new(_xxx0x0 or 0.4, Enum.EasingStyle.Quart), {Transparency = 1, Thickness = 1})
-- 29b2870d73d879e3afde64dd183a87cd69c5f6
_x110xx:Play(); _11x11100:Play()
_x110xx.Completed:Connect(function() _10xx1xx0:Destroy() end)
end
-- 0x4b 0x31 0xf9 0x3e
function pulse(_0110xx1, _10110x, _0xx11111)
if not Cfg[_804dd1({129, 157}, 212)].Juicy then return end
if not _0110xx1 or not _0110xx1.Parent then return end
-- 01100101001100111101000100
local _xx00010x = _0110xx1:GetAttribute(_804dd1({108, 73, 80, 79, 89, 126, 93, 79, 89}, 60))
-- b4bedaabea99bb78736981e4ab5fb50ce8eb95181a37
if _xx00010x == nil then
-- 61f4f2c4d0abbaf3776f8e03
_xx00010x = _0110xx1.Size
_0110xx1:SetAttribute(_804dd1({83, 118, 111, 112, 102, 65, 98, 112, 102}, 3), _xx00010x)
-- 9115b278f6df2858080470417b52bf5
end
-- 10001101110111001010111100
local _100100 = _10110x or 1.06
-- 0x8e 0x67 0xdf
local _x0xx1 = UDim2.new(_xx00010x.X.Scale * _100100, _xx00010x.X.Offset * _100100, _xx00010x.Y.Scale * _100100, _xx00010x.Y.Offset * _100100)
_0110xx1.Size = _x0xx1
task.delay(_0xx11111 or 0.09, function()
if _0110xx1 and _0110xx1.Parent then
-- 0x7d 0xe7 0x06 0xdb 0x1f
_xx0111:Create(_0110xx1, TweenInfo.new(_0xx11111 or 0.14, Enum.EasingStyle.Back), {Size = _xx00010x}):Play()
end
end)
-- 101100011110110110110111100110101111001000110101011010011100
end
function flash(_x010x010x, _0x0000x1, _xx1100xx)
-- 000011000100001100111111000000
if not Cfg[_804dd1({221, 193}, 136)].Juicy then return end
local _00x111001x = _x010x010x:GetAttribute(_804dd1({222, 244, 249, 235, 240, 218, 249, 235, 253}, 152))
-- 8d8b6fddd6b8fa20c9b0923d80
if _00x111001x == nil then
-- 657a3ce4286c1f39582649e291fb620c417
_00x111001x = _x010x010x.BackgroundColor3
_x010x010x:SetAttribute(_804dd1({40, 2, 15, 29, 6, 44, 15, 29, 11}, 110), _00x111001x)
-- 011101100010010100001010000110101100000011011001110101
end
_x010x010x.BackgroundColor3 = _0x0000x1
task.delay(_xx1100xx or 0.1, function()
if _x010x010x and _x010x010x.Parent then
_xx0111:Create(_x010x010x, TweenInfo.new(0.18), {BackgroundColor3 = _00x111001x}):Play()
-- 7d4011cfee5c9ca9e0404240bc7afe93cd87c77081372
end
end)
end
-- 10100100101110100110000111010
function glow(_xx1010x1, _x000x1x1, _x1xxx011xx)
-- 011111100000100000010011111010100110110
if not Cfg[_804dd1({218, 198}, 143)].Juicy then return end
local _00x11011 = _xx1010x1:FindFirstChildOfClass(_804dd1({61, 33, 59, 28, 26, 7, 3, 13}, 104))
-- 0x8a 0xc7 0x38
if not _00x11011 then return end
local _0x1x010, _0110011x01 = _00x11011.Transparency, _00x11011.Thickness
-- 0x73 0xae 0x5a 0xc7 0x5d 0xc1
_00x11011.Transparency, _00x11011.Thickness, _00x11011.Color = 0, _0110011x01 + 1.5, _x000x1x1 or Theme.accent2
_xx0111:Create(_00x11011, TweenInfo.new(_x1xxx011xx or 0.35), {Transparency = _0x1x010, Thickness = _0110011x01}):Play()
end
function shine(_0011101011, _01x00x00, _xx0010x01)
-- 0d9c9d529f40a87306251e2438fb5e8
local _x1001x = new(_804dd1({91, 111, 124, 112, 120}, 29), {
Size = UDim2.new(0.35, 0, 1, 0), Position = UDim2.new(-0.4, 0, 0, 0),
-- 0010000101011001011111010101100000101
BackgroundColor3 = _01x00x00 or Color3.new(1, 1, 1), BackgroundTransparency = 0.5,
BorderSizePixel = 0, ZIndex = (_0011101011.ZIndex or 1) + 5,
-- 0x67 0x18 0xaf 0x46
}, _0011101011)
-- 0xa1 0xa4 0x62 0xab 0x7c 0xd2
corner(_x1001x, 4)
new(_804dd1({49, 45, 35, 22, 5, 0, 13, 1, 10, 16}, 100), {Transparency = NumberSequence.new({
-- 110001000001111101110101111
NumberSequenceKeypoint.new(0, 1),
NumberSequenceKeypoint.new(0.5, 0.1),
NumberSequenceKeypoint.new(1, 1),
}), Rotation = 0}, _x1001x)
-- 0000111100010110010001110101011011101110010111
_xx0111:Create(_x1001x, TweenInfo.new(_xx0010x01 or 0.6, Enum.EasingStyle.Quart),
-- 19ecee85ee0b1fa6b06d08644dd9e
{Position = UDim2.new(1.2, 0, 0, 0)}):Play()
-- 0xc3 0xe5 0x4f 0x12
task.delay(_xx0010x01 or 0.6, function() if _x1001x and _x1001x.Parent then _x1001x:Destroy() end end)
-- 0x5a 0x86 0x63 0xf4 0xc9 0x22
end
-- 11110000100011011111011101111111
function hoverStripe(_10xx110, _1000xx101)
-- 0c95ca62354d1867b4d8555328bdadf57f27
local _1000x0 = new(_804dd1({4, 48, 35, 47, 39}, 66), {
-- 0xe4 0xc4 0xcd 0x26
Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
-- 100000101000110000011011100110100001100111
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = _1000xx101 or Theme.neon,
BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 38,
-- a9558b47782d2c7f567a8dc62c0da2ea40f547cdbe5a42e22fb
}, _10xx110)
-- e137a35333ab54b4aff9d6edbdcf8c5fb156725503fea
corner(_1000x0, 2)
_10xx110.MouseEnter:Connect(function() _xx0111:Create(_1000x0, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play() end)
_10xx110.MouseLeave:Connect(function() _xx0111:Create(_1000x0, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play() end)
-- 589e81d051678aca5abcb0641a525fbb17f211c5
end

-- 011100111100010111011001000111000111010011110111001

function initNotifs(_11x1xxxx0)
notifGui = new(_804dd1({58, 10, 27, 12, 12, 7, 46, 28, 0}, 105), {Name = _804dd1({103, 80, 84, 69, 80, 71, 123, 90, 65, 92, 83}, 53), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9996}, _11x1xxxx0)
notifStack = new(_804dd1({221, 233, 250, 246, 254}, 155), {Size = UDim2.new(0, 320, 1, -40),
Position = UDim2.new(1, -330, 0, 20), BackgroundTransparency = 1, ZIndex = 1}, notifGui)
-- 1037adfbe158f1deef22bb90f8f2c8d
new(_804dd1({169, 181, 176, 149, 143, 136, 176, 157, 133, 147, 137, 136}, 252), {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder,
HorizontalAlignment = Enum.HorizontalAlignment.Right,
VerticalAlignment = Enum.VerticalAlignment.Top}, notifStack)
-- 0x9b 0x86 0x91 0x20 0xd5 0x90
end

-- 0xfd 0x10 0xbe 0x63 0x77
function notify(_1x0xx1x, _x1x1xx, _101100, _1xx0111x10, _101xx1100)
if not Cfg[_804dd1({179, 175}, 230)].Notifs or not notifStack then return end
_101100 = _101100 or Theme.neon
-- 0x4c 0x18 0xd9 0x04 0x6c
local _01011 = type(copyText) == _804dd1({72, 79, 73, 82, 85, 92}, 59) and copyText ~= _804dd1({}, 0)
-- 00111111011111111110101111
local _1000x = _01011 and 86 or 68
local _0x0x1100 = new(_804dd1({232, 220, 207, 195, 203}, 174), {Size = UDim2.new(1, 0, 0, 0),
-- 11110010111111100100001001010011001001111000000101
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.05,
-- 0xc0 0x25 0x82
BorderSizePixel = 0, ZIndex = 2, ClipsDescendants = true}, notifStack)
-- 67ed3b874507f04a3b78fc0e
corner(_0x0x1100, 12)
-- 0x45 0x23 0xd6 0x23 0xa3 0x5c
local _1010xx101 = stroke(_0x0x1100, _101100, 1.8, 0.1)
grad(_0x0x1100, Theme.panel2, Theme.bg, 90)
new(_804dd1({242, 198, 213, 217, 209}, 180), {Size = UDim2.new(0, 3, 1, -14), Position = UDim2.new(0, 7, 0.5, 0),
-- 1101100001000011111111101110
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = _101100, BorderSizePixel = 0, ZIndex = 3}, _0x0x1100)
new(_804dd1({138, 187, 166, 170, 146, 191, 188, 187, 178}, 222), {Size = UDim2.new(1, -28, 0, 18), Position = UDim2.fromOffset(20, 10),
BackgroundTransparency = 1, Text = _1x0xx1x or _804dd1({}, 0), Font = Enum.Font.GothamBlack,
TextSize = 12, TextColor3 = _101100, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 3}, _0x0x1100)
new(_804dd1({5, 52, 41, 37, 29, 48, 51, 52, 61}, 81), {Size = UDim2.new(1, -28, 0, 32), Position = UDim2.fromOffset(20, 30),
BackgroundTransparency = 1, Text = _x1x1xx or _804dd1({}, 0), Font = Enum.Font.Gotham,
-- 0x2a 0xda 0x2d 0xb9 0x4c
TextSize = 11, TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true, ZIndex = 3}, _0x0x1100)
if _01011 then
-- ea505875357ba9abead7e17ba6466233139f1256e87a101fbafe
local _xx0000 = new(_804dd1({217, 232, 245, 249, 207, 248, 249, 249, 226, 227}, 141), {Size = UDim2.new(1, -28, 0, 20),
-- 0x48 0xb1 0x41
Position = UDim2.fromOffset(20, _1000x - 26),
-- 0xcc 0x92 0x64 0xd9 0x57 0x2a
BackgroundColor3 = Theme.panel2, Text = _804dd1({64, 47, 35, 59, 144, 144, 243, 255, 224, 233, 144, 245, 226, 226, 255, 226}, 176),
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
-- 0x16 0x38 0xaa 0x24 0xaf 0x87
AutoButtonColor = false, ZIndex = 4}, _0x0x1100)
-- 0111011001000111001001111000111
corner(_xx0000, 6)
stroke(_xx0000, _101100, 1, 0.3)
-- 00111110110001001111010010
_xx0000.MouseButton1Click:Connect(function()
if type(setclipboard) == _804dd1({137, 154, 129, 140, 155, 134, 128, 129}, 239) then
-- 0x83 0xba 0xf7 0x25
pcall(setclipboard, copyText)
copyBtn.Text = _804dd1({72, 54, 57, 138, 233, 229, 250, 227, 239, 238}, 170)
-- 0xc9 0x1c 0x4a 0x2d 0x66 0x60
task.delay(1, function()
if _xx0000 and _xx0000.Parent then _xx0000.Text = _804dd1({161, 206, 194, 218, 113, 113, 18, 30, 1, 8, 113, 20, 3, 3, 30, 3}, 81) end
-- 001110001010011011000010110100110001101000101010010100000
end)
else
_xx0000.Text = _804dd1({80, 81, 30, 93, 82, 87, 78, 92, 81, 95, 76, 90, 30, 95, 78, 87}, 62)
-- 804959d36eb28938e7f0683c585db67e60c851152ec1b94f74900bd8c71
end
-- 0001010110001101011000101010110110011000010001101001000
end)
end
-- 0x33 0xf7 0xe5 0x04 0x3b 0xf0
_0x0x1100.Position = UDim2.new(1, 60, 0, 0)
_xx0111:Create(_0x0x1100, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
{Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 0, _1000x)}):Play()
-- 3e6e687e3cd80167ea24887cbf801972b7cfbf796a886772abada5f04e1
shine(_0x0x1100, _101100, 0.7)
local _1xxxx010 = _1xx0111x10 or (_01011 and 12 or 3.5)
task.delay(_1xxxx010, function()
-- d9e249f502492d23bfdb57b3943e6665d37
if not _0x0x1100 or not _0x0x1100.Parent then return end
-- 3ad59ad94fe5741093eddf092ae1e89d8ccbffccd368de4f8a5a0429a04
local _x001xx = _xx0111:Create(_0x0x1100, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
{Position = UDim2.new(1, 60, 0, 0), BackgroundTransparency = 1})
_x001xx:Play()
-- 0x6a 0x70 0x1f 0x32
_xx0111:Create(_1010xx101, TweenInfo.new(0.35), {Transparency = 1}):Play()
-- 0x79 0x9c 0x95 0xa4 0x1e 0x2e
_x001xx.Completed:Connect(function() _0x0x1100:Destroy() end)
end)
-- 7224df4ff2fd2f37433d712c8a9e90161dbc5b0b1b90318cf0243c
end
-- 101011000101010011101110001
local _111xx0 = _1100x01x:WaitForChild(_804dd1({211, 239, 226, 250, 230, 241, 196, 246, 234}, 131))
gui = new(_804dd1({229, 213, 196, 211, 211, 216, 241, 195, 223}, 182), {Name = _804dd1({8, 63, 59, 42, 63, 40, 15, 19}, 90), ResetOnSpawn = false,
-- 000000111101001010110101111
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9999}, _111xx0)
initNotifs(_111xx0)

-- 000010001110111001001001110011101111111101111001100100100

-- 0xbd 0x6e 0x1e 0xe9
annGui = new(_804dd1({253, 205, 220, 203, 203, 192, 233, 219, 199}, 174), {Name = _804dd1({64, 119, 115, 98, 119, 96, 83, 124, 124, 125, 103, 124, 113, 119}, 18), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10001}, _111xx0)
-- 001000101011101110101011010111010010100110110111
annSlot = new(_804dd1({164, 144, 131, 143, 135}, 226), {Size = UDim2.new(0, 520, 0, 0),
-- 0x49 0xb2 0x47 0xee 0xc3
Position = UDim2.new(0.5, 0, 0, 60), AnchorPoint = Vector2.new(0.5, 0),
-- 43ab8e66dba7c55fc2e12b9c12414ddab905
BackgroundTransparency = 1, ZIndex = 1}, annGui)
-- 1000001101010001001011001010111011
annCurrent = nil

-- 5aeeec9dcb9bbf354ebebd028d48d
function dismissAnnouncement()
-- 0xde 0x3b 0x51 0x9f
local _00x0100 = annCurrent
if not _00x0100 then return end
annCurrent = nil
-- 10000110110100011010000111111
if _00x0100.shadow and _00x0100.shadow.Parent then _00x0100.shadow:Destroy() end
-- 100101010001110001111010011011101100001010
if _00x0100.card and _00x0100.card.Parent then
-- 00000011011111110010001010000110010011010000
local _1x001x0x10 = _xx0111:Create(_00x0100.card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- 4873cd4d11d280f3aa719a7e77aa912f453027
{Position = UDim2.new(0, 0, 0, -180), BackgroundTransparency = 1})
_1x001x0x10:Play()
-- b63c8a5ce0f5e7a2f8103399faf11f424
if _00x0100.stroke then _xx0111:Create(_00x0100.stroke, TweenInfo.new(0.35), {Transparency = 1}):Play() end
-- 000011000110111101101011111111001101100000011110110100
_1x001x0x10.Completed:Connect(function()
if _00x0100.card and _00x0100.card.Parent then _00x0100.card:Destroy() end
-- 0xf5 0x06 0xab 0x29 0xdd 0x57
end)
-- 00010111000001000110101101
end
end

-- d16cb8e87d1da06e8b9e15dc5824
function showAnnouncement(_1x1x0xxx)
if not annSlot or not annSlot.Parent then return end
dismissAnnouncement()
-- 1de821535c39c4699ca31d4c26e8c0216c0c3db25
local _1101x1x = _1x1x0xxx[_804dd1({148, 135, 136, 141}, 230)] or _804dd1({184, 160, 185, 178, 165}, 215)
local _1xxx00x = BADGE_STYLE[_1101x1x] or BADGE_STYLE.owner
-- 0be1cc132b6a119ea814ecf430c33da6439d6516ba628
local _x1010111x = _1xxx00x.color
local _x0x00 = 520
-- 0x39 0x0e 0xe0 0xd0 0xde
local _01000 = 16
-- 10100111011110001000011110110110001100010011000011011011
local _01x1xx10xx = _x0x00 - _01000 * 2 - 4
local _101x1001 = tostring(_1x1x0xxx.text or _804dd1({}, 0))
local _x0x00x00 = 22
-- 0x71 0x41 0x28 0x7c 0x1f
pcall(function()
-- 1011100111001010101010000010111110
local _x1x0x1xx1 = _1110101:GetTextSize(_101x1001, 13, Enum.Font.GothamBold, Vector2.new(_01x1xx10xx, 500))
_x0x00x00 = math.clamp(_x1x0x1xx1.Y + 4, 22, 220)
end)
-- 10111001100110010111011111
local _0x11x110x1 = 60
local _1x110 = _0x11x110x1 + _x0x00x00 + 18
-- 96007214a6a167b365c1befa0f263d5
local _00xxx001 = new(_804dd1({224, 212, 199, 203, 195}, 166), {Size = UDim2.fromOffset(_x0x00 + 14, _1x110 + 14),
-- 01100100110011000111011011110010110101000
Position = UDim2.fromOffset(-7, -160), BackgroundColor3 = Theme.neon,
-- 1010001101000000111110101110000111001110001
BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 2}, annSlot)
-- 0x12 0xbb 0x2d 0x18
corner(_00xxx001, 16)
-- e57318cb2e2163421c18ee1b76a8ae7d49
local _01x0x11xx1 = new(_804dd1({53, 1, 18, 30, 22}, 115), {Size = UDim2.fromOffset(_x0x00, _1x110),
-- 0101100100100100011100001110110001101000000011010110001
Position = UDim2.new(0, 0, 0, -180), BackgroundColor3 = Theme.bg,
-- 0x3d 0xf9 0x2a 0xc4 0x44 0x28
BackgroundTransparency = 0.02, BorderSizePixel = 0, ZIndex = 3, ClipsDescendants = true}, annSlot)
-- 1998e2650afa512815f72b80b197d4845d74cf5c3f955b688b
corner(_01x0x11xx1, 14)
-- 0x4a 0xea 0xf8 0x71 0x40 0x47
local _xx0x0xx01 = stroke(_01x0x11xx1, _x1010111x, 2, 0.1)
grad(_01x0x11xx1, Color3.fromRGB(28, 14, 56), Theme.bg, 90)
new(_804dd1({229, 209, 194, 206, 198}, 163), {Size = UDim2.new(1, 0, 0, 3),
-- 1010001101001111010000001101000
BackgroundColor3 = _x1010111x, BorderSizePixel = 0, ZIndex = 4}, _01x0x11xx1)
local _0xx0x011 = new(_804dd1({33, 21, 6, 10, 2}, 103), {Size = UDim2.fromOffset(36, 36),
Position = UDim2.fromOffset(14, 13), BackgroundColor3 = _x1010111x,
-- a0c9938b5c513630d2e4f419b62f37b818453738b592d03e5ffb9de3
BackgroundTransparency = 0.85, BorderSizePixel = 0, ZIndex = 4}, _01x0x11xx1)
corner(_0xx0x011, 18)
stroke(_0xx0x011, _x1010111x, 1.5, 0.2)
-- 0x8f 0xb6 0x82 0xeb 0xe4 0xdb
new(_804dd1({98, 83, 78, 66, 122, 87, 84, 83, 90}, 54), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = _1xxx00x.emoji, Font = Enum.Font.GothamBlack,
TextSize = 19, TextColor3 = _x1010111x, ZIndex = 5}, _0xx0x011)
-- 0xb6 0x86 0xa6 0xb6 0x8f
new(_804dd1({252, 205, 208, 220, 228, 201, 202, 205, 196}, 168), {Size = UDim2.new(1, -80, 0, 18),
-- 77ab7b81a2130772647faf0c7f0b15c2a0155b700ed4a4d3
Position = UDim2.fromOffset(60, 10), BackgroundTransparency = 1,
-- 69b2ac482b2c50ec55dc71d950b26e63b6969199edf
Text = string.upper(_1xxx00x.label) .. _804dd1({93, 60, 51, 51, 50, 40, 51, 62, 56, 48, 56, 51, 41}, 125),
Font = Enum.Font.GothamBlack, TextSize = 11, TextColor3 = _x1010111x,
-- 0x05 0xc9 0x7f
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, _01x0x11xx1)
-- 0xbe 0xac 0x21
new(_804dd1({181, 132, 153, 149, 173, 128, 131, 132, 141}, 225), {Size = UDim2.new(1, -80, 0, 14),
Position = UDim2.fromOffset(60, 28), BackgroundTransparency = 1,
-- 0x74 0x42 0xf3 0xc9
Text = _804dd1({169, 189, 160, 162, 239}, 207) .. tostring(_1x1x0xxx.sender or _804dd1({198}, 249)), Font = Enum.Font.Gotham, TextSize = 10,
-- 3135ab5785978438fdb434e5da55e3d54bac0c
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, _01x0x11xx1)
-- 01010011100010101100010000001000100011011001
new(_804dd1({216, 233, 244, 248, 192, 237, 238, 233, 224}, 140), {Size = UDim2.fromOffset(_01x1xx10xx, _x0x00x00),
Position = UDim2.fromOffset(_01000, _0x11x110x1), BackgroundTransparency = 1,
-- a6891f293b20dd02d58665c3953688
Text = _101x1001, Font = Enum.Font.GothamBold, TextSize = 13,
TextColor3 = Theme.text, TextWrapped = true,
TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 5}, _01x0x11xx1)
_xx0111:Create(_01x0x11xx1, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- 47a469e4dac55d698f2bcebce35
{Position = UDim2.new(0, 0, 0, 0)}):Play()
_xx0111:Create(_00xxx001, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- f0f8db1755d966961c3ec981b7716479ac044f7bbf93884291c4b22c5f75
{Position = UDim2.fromOffset(-7, 3)}):Play()
-- 0x21 0x41 0x89 0x0d 0xb5
local _0x1xxx1x1 = math.clamp(6 + #_101x1001 * 0.045, 6, 16)
annCurrent = {card = _01x0x11xx1, stroke = _xx0x0xx01, shadow = _00xxx001}
-- e086dbfb8080d6dec23fe363b3ce
task.delay(_0x1xxx1x1, function()
-- 73b18051fd31f0abcdbb072afb4e9d2c597116ad0a0b53
if annCurrent and annCurrent.card == _01x0x11xx1 then dismissAnnouncement() end
end)
-- 1101001110001010111011111100111100001101010110011
end

-- 0x6a 0x58 0x1b 0x43 0x83 0x40
function sendAnnouncement(_x001010x)
if not isMod() then
-- 10111111000010111011011111000100000
notify(_804dd1({5, 36, 47, 40, 36, 37}, 65), _804dd1({98, 84, 78, 27, 90, 73, 94, 27, 85, 84, 79, 27, 90, 85, 27, 84, 76, 85, 94, 73, 20, 86, 84, 95}, 59), Theme.danger, 2)
return false
end
-- 63df2e019838f097663d191a24aaf3bb970da39b0190
_x001010x = tostring(_x001010x or _804dd1({}, 0)):gsub(_804dd1({215, 172, 250, 162}, 137),_804dd1({}, 0)):gsub(_804dd1({35, 117, 45, 34}, 6),_804dd1({}, 0))
if _x001010x == _804dd1({}, 0) then return false end
-- 0x05 0x49 0x6f 0x19
if not SESSION_KEY or SESSION_KEY == _804dd1({}, 0) then
notify(_804dd1({119, 88, 88, 89, 67, 88, 85, 83}, 54), _804dd1({80, 113, 106, 62, 104, 123, 108, 119, 120, 119, 123, 122, 62, 103, 123, 106}, 30), Theme.danger, 5)
return false
end
task.spawn(function()
local _xx11001xxx = _10x11x1x:JSONEncode({
-- 1001010110010001101101010000000000010
robloxId = tostring(_1100x01x.UserId), key = SESSION_KEY, text = _x001010x,
})
local _1011xx0, _x1x01x0 = httpPost(KEY_API .. _804dd1({130, 204, 195, 195, 194, 216, 195, 206, 200, 130, 222, 200, 195, 201}, 173), _xx11001xxx)
if _1011xx0 then
showAnnouncement({text = _x001010x, sender = _1100x01x.Name,
[_804dd1({39, 33, 55, 32, 27, 54}, 82)] = _1100x01x.UserId, [_804dd1({138, 153, 150, 147}, 248)] = getLocalRank() or _804dd1({216, 192, 217, 210, 197}, 183), time = os.time()})
notify(_804dd1({243, 220, 220, 221, 199, 220, 209, 215, 223, 215, 220, 198, 146, 193, 215, 220, 198}, 178), _804dd1({26, 42, 55, 57, 60, 59, 57, 43, 44, 120, 44, 55, 120, 57, 52, 52, 120, 43, 61, 42, 46, 61, 42, 43}, 88), Theme.success, 3)
-- aaf0f5d1486dceb27c3b0c8981fb5a7c7c
else
-- ad7b4af04c8244cf4d23f947c6e37
local _x0xx01001 = parseErrorReason(_x1x01x0)
-- 101111111001101001010111011110001001110001000010011010100101
notify(_804dd1({195, 236, 236, 237, 247, 236, 225, 231, 162, 228, 227, 235, 238, 231, 230}, 130), _x0xx01001, Theme.danger, 8, _x0xx01001)
end
-- 000010110001100010110101010111010000011110111001010101
end)
return true
-- 1111010101001100110111100000001000110001100
end

-- 0111000011000000000110010101011100010010

-- 000000100011010001101110110101000101001010110011010100
crossGui = new(_804dd1({198, 246, 231, 240, 240, 251, 210, 224, 252}, 149), {Name = _804dd1({146, 165, 161, 176, 165, 178, 131, 178, 175, 179, 179}, 192), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10000}, _111xx0)
crosshair = new(_804dd1({138, 190, 173, 161, 169}, 204), {Size = UDim2.fromOffset(40, 40), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundTransparency = 1, Visible = false}, crossGui)
reticle = new(_804dd1({241, 197, 214, 218, 210}, 183), {Size = UDim2.fromOffset(110, 110), AnchorPoint = Vector2.new(0.5, 0.5),
-- 1010101100010110010110110101011110110101110
BackgroundTransparency = 1, Visible = false}, crossGui)
-- 0011110100101011000111101011111011110010100111110000100
RSIZE = 110
-- d1040fbb369d259aacf1fe2abcef99dc43fc99e87cb8f5d7211f6
ring1 = new(_804dd1({140, 184, 171, 167, 175}, 202), {Size = UDim2.fromOffset(RSIZE, RSIZE), BackgroundTransparency = 1, ZIndex = 6}, reticle)
corner(ring1, RSIZE); ring1S = stroke(ring1, Theme.neon, 2, 0.15)
-- 011001000010101000011011101101011000011010
ring2 = new(_804dd1({79, 123, 104, 100, 108}, 9), {Size = UDim2.fromOffset(RSIZE - 14, RSIZE - 14),
-- 0x0c 0xd8 0x98 0xb1 0xa9
Position = UDim2.fromOffset(7, 7), BackgroundTransparency = 1, ZIndex = 7}, reticle)
-- 0x1e 0xfa 0xfb 0x6f 0xbd 0x1e
corner(ring2, RSIZE); ring2S = stroke(ring2, Theme.neon, 1, 0.5)
-- 1000111111100101010011110110100110001
trackLine = new(_804dd1({54, 2, 17, 29, 21}, 112), {BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,
AnchorPoint = Vector2.new(0, 0.5), BorderSizePixel = 0, ZIndex = 5, Visible = false}, crossGui)
-- 75308fc381fd63717ade9dc7bdbada3cbcb7b8057f
hpBar = new(_804dd1({48, 4, 23, 27, 19}, 118), {Size = UDim2.fromOffset(4, 60), Position = UDim2.new(1, 10, 0.5, -30),
-- 110001110011011100110110110110000101
BackgroundColor3 = Theme.danger, BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 10}, reticle)
-- db3207e8ce8370d6f3f0f110c2024168b153656d4893f58b
corner(hpBar, 2)
-- 0x7f 0xcf 0xda 0x2d
hpFill = new(_804dd1({195, 247, 228, 232, 224}, 133), {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Theme.success,
BorderSizePixel = 0, ZIndex = 11}, hpBar)
corner(hpFill, 2)
-- b57ab4c7137c0e84951d6ae70886e5422a12fbc8e4bf4b237
retName = new(_804dd1({105, 88, 69, 73, 113, 92, 95, 88, 81}, 61), {Size = UDim2.new(1, 60, 0, 18), Position = UDim2.new(0, -30, 1, 10),
-- edd413b8c36dbb0659a62a562f671c49f784
BackgroundTransparency = 1, Font = Enum.Font.GothamBlack, TextSize = 14, TextColor3 = Theme.neon,
-- 001100010101101010110001111110001011100100011001101
Text = _804dd1({}, 0), TextStrokeTransparency = 0.3, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)
-- 0xc0 0x95 0xab 0x6f
retDist = new(_804dd1({149, 164, 185, 181, 141, 160, 163, 164, 173}, 193), {Size = UDim2.new(1, 60, 0, 13), Position = UDim2.new(0, -30, 1, 28),
-- 0x3a 0xc0 0xcf 0x05 0x32
BackgroundTransparency = 1, Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Theme.muted,
Text = _804dd1({}, 0), TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)
-- 0x62 0x5f 0xe8
retActions = new(_804dd1({114, 70, 85, 89, 81}, 52), {Size = UDim2.new(1, 100, 0, 20),
-- 4a64712008eb4e04da4faf50fafc67cb3e956b9f8e34f69f0971ae1510b6
Position = UDim2.new(0, -50, 1, 46), BackgroundTransparency = 1, ZIndex = 13}, reticle)
new(_804dd1({240, 236, 233, 204, 214, 209, 233, 196, 220, 202, 208, 209}, 165), {FillDirection = Enum.FillDirection.Horizontal,
-- 001110010100101110000100100010101100000110100110000
HorizontalAlignment = Enum.HorizontalAlignment.Center,
-- d1e25b299205e5ec1617b0c192649502f18ea0a147dc
VerticalAlignment = Enum.VerticalAlignment.Center,
-- 1001110000111001110011000110010011100111
Padding = UDim.new(0, 5)}, retActions)
rainbowH = 0
-- 0x6b 0xe2 0xb3 0x4a 0x9f 0x9a
_x11x11x.Heartbeat:Connect(function(_0x110x1x11) rainbowH = (rainbowH + _0x110x1x11 * 0.5) % 1 end)

-- 677b52b85c92abd35c63eb157ae35b022aa43c571a6a15b89590cccfdc87


-- 274d1e6081e9e9dc7e1d78c1c86bcf08e4a9557740d321748b5567
function runAction(_00x111x111)
local _0001x0 = TS.hovered
-- 0x97 0xe6 0xa6 0x3f
if not _0001x0 or not _0001x0.Character then
-- 0xfc 0xa7 0xc8
notify(_804dd1({4, 37, 106, 62, 43, 56, 45, 47, 62}, 74), _804dd1({92, 123, 98, 113, 102, 52, 103, 123, 121, 113, 123, 122, 113, 52, 114, 125, 102, 103, 96}, 20), Theme.danger, 2); return
-- 310f42dc1213b68a541b802a405093b850d82b
end
-- 10000111011110110000111100100011111
if _00x111x111 == _804dd1({113, 96, 105, 96, 117, 106, 119, 113}, 5) then
-- 0101011001000000010011111
local _110x11x = _0001x0.Character:FindFirstChild(_804dd1({252, 193, 217, 213, 218, 219, 221, 208, 230, 219, 219, 192, 228, 213, 198, 192}, 180))
-- 111100101011101011100111001
local _0xx00 = hrp()
if _110x11x and _0xx00 then
_0xx00.AssemblyLinearVelocity = Vector3.zero
-- 00011000100000000001001011010111001001100
_0xx00.CFrame = _110x11x.CFrame + Vector3.new(0, 3, 0)
_0xx00.AssemblyLinearVelocity = Vector3.zero
notify(_804dd1({83, 98, 107, 98, 119, 104, 117, 115, 98, 99}, 7), _0001x0.Name, Theme.neon)
end
elseif _00x111x111 == _804dd1({187, 184, 173, 171, 188, 169, 188, 173}, 200) then
-- a64fdf6035dfd64cfb1d820c35c9239d2691233c2ef0b8d22c
if RA.spectateTarget == _0001x0 then
-- 10011111001011010100110110010
RA.spectateTarget = nil; RA.spectateZoom = 1
-- 0101001010011011001100110
notify(_804dd1({210, 241, 228, 226, 245, 224, 245, 228, 161, 238, 231, 231}, 129), _804dd1({}, 0), Theme.muted, 1.5)
else
RA.spectateTarget = _0001x0; RA.spectateZoom = 1
-- 1111010010110001011010110000001010001110010100111
notify(_804dd1({43, 8, 29, 27, 12, 25, 12, 17, 22, 31}, 120), _0001x0.Name .. _804dd1({168, 74, 63, 168, 251, 235, 250, 231, 228, 228, 168, 252, 231, 168, 242, 231, 231, 229}, 136), Theme.accent3, 3)
-- 1111101010010001111000110010
end
-- 01100110110100010000111111010100111101001
elseif _00x111x111 == _804dd1({183, 170, 178, 175}, 223) then
TS.target = _0001x0
TS.lockedTarget = _0001x0
if not Cfg.Troll.Hump and widgets[_804dd1({239, 201, 212, 215, 215, 149, 243, 206, 214, 203}, 187)] then widgets[_804dd1({216, 254, 227, 224, 224, 162, 196, 249, 225, 252}, 140)].set(true) end
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
-- 0x94 0x64 0xe7 0x97 0xf4
HUMP.lockTimer = 1.5; HUMP.awaitingRespawn = false; HUMP.fallHold = 0
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
notify(_804dd1({103, 90, 66, 95, 70, 65, 72}, 47), _0001x0.Name, Theme.gold)
elseif _00x111x111 == _804dd1({221, 192, 208, 219, 198}, 178) then
-- 9c0ee68195967bf1ca56d69fb1944511aaf1d8a62
TS.target = _0001x0
-- 033fdf6b54b56a1b45b0cf3f55fb39720bb5ceee1d7381a5cf49e864
TS.lockedTarget = _0001x0
if not Cfg.Orbit.Enabled and widgets[_804dd1({37, 24, 8, 3, 30, 68, 47, 4, 11, 8, 6, 15, 14}, 106)] then
-- 0x44 0x3f 0xb3 0x4d
widgets[_804dd1({232, 213, 197, 206, 211, 137, 226, 201, 198, 197, 203, 194, 195}, 167)].set(true)
-- 01111011011100000000101001010
end
ORBIT.angle = 0
-- 0xdc 0x9a 0x09 0x59 0xf2 0x86
notify(_804dd1({246, 203, 219, 208, 205, 208, 215, 222}, 185), _0001x0.Name .. _804dd1({36, 198, 179, 36, 101, 113, 112, 107, 41, 101, 109, 105, 36, 47, 36, 119, 108, 107, 107, 112}, 4), Theme.accent3, 3)
-- 0xb1 0xda 0x9a 0xe8 0x48
end
-- 000010100101111010001001100010001011001010101110100000111010
end
function rebuildChips()
for _x1011x1, _1x0x11100 in ipairs(retActions:GetChildren()) do
if not _1x0x11100:IsA(_804dd1({88, 68, 65, 100, 126, 121, 65, 108, 116, 98, 120, 121}, 13)) then _1x0x11100:Destroy() end
-- 0x8b 0xaa 0xfc
end
local _x0x11x = {
{id = _804dd1({23, 6, 15, 6, 19, 12, 17, 23}, 99), label = _804dd1({51, 55}, 103), key = RA.keys.teleport, col = Theme.neon},
-- 101101000101010110001001010100100011100111011100
{id = _804dd1({206, 205, 216, 222, 201, 220, 201, 216}, 189), label = _804dd1({158, 157, 136, 142}, 205), key = RA.keys.spectate, col = Theme.accent3},
-- 0d865214929e906c55e2095f5e3995a92fb01e981211ce1dd436c1357a
}
-- 00011000010101000011111000000011110110011
if Cfg.Troll.Hump then
_x0x11x[#_x0x11x + 1] = {id = _804dd1({69, 88, 64, 93}, 45), label = _804dd1({202, 215, 207, 210}, 130), key = RA.keys.hump, col = Theme.gold}
end
-- 0x58 0x13 0x27 0xea
for _0x00x10x00, _001x110 in ipairs(_x0x11x) do
-- 0xd4 0x34 0xca
if _001x110.key then
-- 010110001100101100110010111000001010010000
local _1x0011 = new(_804dd1({186, 139, 150, 154, 172, 155, 154, 154, 129, 128}, 238), {
-- 11001000110000110100010100000010011001
Size = UDim2.new(0, 0, 1, 0), AutomaticSize = Enum.AutomaticSize.X,
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.2,
Text = _001x110.label .. _804dd1({84, 47}, 116) .. _001x110.key.Name .. _804dd1({39}, 122), Font = Enum.Font.GothamBold,
TextSize = 9, TextColor3 = _001x110.col, AutoButtonColor = false, ZIndex = 14,
-- 1101010100100100111110011100000101111110001111011111000110
}, retActions)
-- aa5bb9b1a0dfc74124eec8c8e1c12ad578318e397c8fb37
corner(_1x0011, 4)
new(_804dd1({175, 179, 170, 155, 158, 158, 147, 148, 157}, 250), {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _1x0011)
local _101111x = stroke(_1x0011, _001x110.col, 1, 0.35)
-- 0011010010000001101101000
_1x0011.MouseButton1Click:Connect(function() runAction(_001x110.id); pulse(_1x0011, 1.1, 0.08) end)
-- aa74230d8fe05aa58ba672a54087655283
_1x0011.MouseEnter:Connect(function()
-- 0xc3 0x7a 0x09 0x50
_xx0111:Create(_1x0011, TweenInfo.new(0.12), {BackgroundTransparency = 0}):Play()
_101111x.Transparency = 0
-- 001011011000010111100010100111001101000010001110100001011
end)
-- 1000111011010111110111101110
_1x0011.MouseLeave:Connect(function()
-- 0xad 0xdf 0x48 0xed 0x4f
_xx0111:Create(_1x0011, TweenInfo.new(0.15), {BackgroundTransparency = 0.2}):Play()
_101111x.Transparency = 0.35
-- 0101011100100011101011111100011
end)
-- 669c8a6fb77927db3a57d4565269daf9e86d23c42
end
end
end
-- 7d4a4c9fd783727f57fd22f92f4bab74008
do
-- 0xa8 0x3f 0xbc 0xc7
local _1001x1 = unboundKeys(3)
RA.keys.teleport = _1001x1[1]; RA.keys.spectate = _1001x1[2]; RA.keys.hump = _1001x1[3]
end


LW, LH = 170, 54
-- 0x4e 0xc8 0xd0 0x03 0xa2 0xb3
logo = new(_804dd1({52, 5, 24, 20, 34, 21, 20, 20, 15, 14}, 96), {Name = _804dd1({34, 1, 9, 1}, 110), Size = UDim2.fromOffset(LW, LH),
Position = UDim2.new(0.5, -LW/2, 0, 12), BackgroundTransparency = 1, Text = _804dd1({}, 0),
-- 7888fa8d554d7b45a36c7575ef4224b93e96
AutoButtonColor = false, ZIndex = 60}, gui)
aura = new(_804dd1({145, 165, 182, 186, 178}, 215), {Size = UDim2.fromScale(1.1, 1.25),
-- 1110011011111001100010110
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
-- 100111000000001011111010110100000010010000110010010111100001
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,
-- 1ed17298b88b1a706d8053fdc513c352dd706254d35
BorderSizePixel = 0, ZIndex = 1}, logo)
corner(aura, 16)
-- cf6cfc7129a53c4d21158d98e35959c9a43898ded83f38f642358c7b7
back = tBg(new(_804dd1({111, 91, 72, 68, 76}, 41), {Size = UDim2.fromScale(1, 1),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, logo))
-- ef1117a00b3b521a005be4eb1
corner(back, 14)
grad(back, Color3.fromRGB(22, 10, 44), Theme.bgDeep, 90)
backStroke = tAcc(stroke(back, Theme.neon, 1.8, 0.15))
dropShadow(back, 14, 10, 0.6)
ring = new(_804dd1({77, 121, 106, 102, 110}, 11), {Size = UDim2.fromScale(1, 1),
-- 0x7c 0x6b 0xc5 0x5c
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
-- 0xbf 0x24 0x08 0x01
BackgroundTransparency = 1, ZIndex = 3}, logo)
-- 0x1b 0x1d 0x41 0x92
corner(ring, 14)
-- fd556ea3b58cc2cd0aa8b7d7aee15e29fd6
new(_804dd1({220, 192, 218, 253, 251, 230, 226, 236}, 137), {Color = Color3.new(1, 1, 1), Thickness = 1.6}, ring)
ringG = new(_804dd1({204, 208, 222, 235, 248, 253, 240, 252, 247, 237}, 153), {Color = ColorSequence.new({
-- 0x61 0xe2 0x00 0xe3 0x4a
ColorSequenceKeypoint.new(0, Theme.neon),
ColorSequenceKeypoint.new(0.33, Theme.accent3),
-- 111011000010000001110010100101111110100100001000010100
ColorSequenceKeypoint.new(0.66, Color3.fromRGB(180, 220, 255)),
ColorSequenceKeypoint.new(1, Theme.neon),
-- 061a731bbcba4af794e220ca37ce77c74
}), Rotation = 0}, ring:FindFirstChildOfClass(_804dd1({237, 241, 235, 204, 202, 215, 211, 221}, 184)))
plate = new(_804dd1({194, 246, 229, 233, 225}, 132), {Size = UDim2.fromOffset(34, 34),
Position = UDim2.new(0, 10, 0.5, -17), BackgroundColor3 = Theme.panel,
-- 11001100011010001110011111011011111110000
BorderSizePixel = 0, ZIndex = 4}, back)
corner(plate, 4)
-- 1011100101011111000110000011000010011101010010111101100
stroke(plate, Theme.neon, 1.6, 0.1)
-- 0x08 0x73 0xce 0xd9 0x10
plate.Rotation = 45
-- 9d6b3ae2b9d96bd8a82539e0df37f1c4a3772bb3e28101a6d78
flame = new(_804dd1({244, 192, 211, 223, 215}, 178), {Size = UDim2.fromOffset(16, 16),
-- 1000111100111111001101111001111010011101
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
-- 855d802eeb086f6f00fa2ff8f12d9
BackgroundColor3 = Theme.neon, BorderSizePixel = 0, Rotation = 0, ZIndex = 5}, plate)
corner(flame, 4)
grad(flame, Theme.accent3, Theme.neon, 90)
stroke(flame, Theme.accent2, 1, 0.3)
new(_804dd1({3, 55, 36, 40, 32}, 69), {Size = UDim2.fromOffset(7, 7),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
-- f63b5fa889ea9b88eb5af9d95ef910502a3318905cce6e70d392d9870ef
BackgroundColor3 = Color3.fromRGB(255, 245, 255), BorderSizePixel = 0,
-- b2c6efb46b6b359337ee20888674bfbd37a3d0b44a81fe962e64de9363
ZIndex = 6}, plate)
title = new(_804dd1({74, 123, 102, 106, 82, 127, 124, 123, 114}, 30), {Size = UDim2.new(1, -60, 0, 24), Position = UDim2.fromOffset(56, 8),
-- eb47e02818c107a61c5bf72ce59c8d9001ba47951cfebfcf2a
BackgroundTransparency = 1, Text = _804dd1({17, 6, 2, 19, 6, 17}, 67), Font = Enum.Font.GothamBlack,
TextSize = 17, TextColor3 = Color3.new(1, 1, 1), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back)
titleG = new(_804dd1({222, 194, 204, 249, 234, 239, 226, 238, 229, 255}, 139), {Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Theme.accent2),
-- 0x57 0xd5 0x1d
ColorSequenceKeypoint.new(0.5, Theme.neon),
ColorSequenceKeypoint.new(1, Theme.accent3),
}), Rotation = 20}, title)
-- 01011100011001011010010010010011000101
tAcc(stroke(title, Theme.neon, 1.2, 0.2))
-- 11111001011111010111110001111000101010000010
tMuted(new(_804dd1({147, 162, 191, 179, 139, 166, 165, 162, 171}, 199), {Size = UDim2.new(1, -60, 0, 11), Position = UDim2.fromOffset(57, 32),
-- a49b9564a819b690d652623a86d13215e4
BackgroundTransparency = 1, Text = _804dd1({211, 220, 217, 211, 219, 176, 82, 39, 176, 200}, 144), Font = Enum.Font.GothamBold,
-- 0000110000100111111100110001
TextSize = 7, TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back))
task.spawn(function()
while ring.Parent do
for _0xx0x11 = 0, 360, 4 do
-- 0xf9 0xcc 0x4d 0x4e 0xbc 0xd1
if not ring.Parent then return end
ringG.Rotation = _0xx0x11
_x11x11x.RenderStepped:Wait()
-- 111101101011001101100000001000010011111110000000101
end
-- 101101000010111010011000100010011101100000001000001110011
end
-- 1110000000010110101001001000100
end)
-- 953ef217268ff2e9b794e22e60b0128aad5128bae9c2c56bfb63
logo.MouseEnter:Connect(function()
_xx0111:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0}):Play()
pulse(back, 1.03, 0.1)
end)
-- 00100110101011111111011111100000111000011111010111001
logo.MouseLeave:Connect(function()
_xx0111:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0.15}):Play()
end)

-- 00000011011110001111000110101110

-- 266aa5d1f577a4fa0bb66f74ceb52e29d712d038b090ed2240
menu = tBg(new(_804dd1({170, 158, 141, 129, 137}, 236), {Name = _804dd1({214, 254, 245, 238}, 155), Size = UDim2.fromOffset(660, 500),
Position = UDim2.new(0.5, -330, 0.5, -250), BackgroundColor3 = Theme.bg,
-- f3f8bd843e6f3940100bae2bc9382b834454f4546ed
BorderSizePixel = 0, ClipsDescendants = true, Visible = false, ZIndex = 30}, gui))
-- 00100100111011010101111110011110111111101010101
corner(menu, 14)
menuStroke = tAcc(stroke(menu, Theme.neon, 2, 0.25))
-- 0011111101001100100101011101100011100101100
dropShadow(menu, 14, 18, 0.7)
if Cfg[_804dd1({125, 97}, 40)].MenuBlur then
local _11x10xx1x = new(_804dd1({154, 180, 173, 170, 157, 190, 190, 189, 187, 172}, 216), {Size = 8, Parent = _x000000})
task.spawn(function()
-- 086acd8c4445e4530d101977f8380591ea2c40131e076178322c5
while menu.Parent do
_11x10xx1x.Enabled = menu.Visible
-- 001001100000011001101010011001101000101110010111111110111
task.wait(0.1)
end
-- 0xfe 0x8a 0xbf 0x1b 0x5e 0x57
_11x10xx1x:Destroy()
-- 17d85135a82b7a36af5cce94314b3fd6bc1a52
end)
end
ambient = new(_804dd1({42, 30, 13, 1, 9}, 108), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
ClipsDescendants = true, ZIndex = 2}, menu)
ambientParts = {}
function buildAmbient()
-- 6a823055b3f4f5358418a3de271ec403173a6
for _0x01x10x, _10xx1 in ipairs(ambientParts) do if _10xx1.inst then _10xx1.inst:Destroy() end end
ambientParts = {}
-- 10111010010001111011110011000111001
if not Cfg[_804dd1({80, 76}, 5)].Ambient then return end
-- 0xec 0x2e 0x09 0x3d 0xce 0x8d
for _x11111x10 = 1, 18 do
-- 01110001111111001001110110111001101
local _1111x001x = 2 + math.random() * 3
-- 010110111100010000100011011110101011100111100111101010101
local _0x0100x000 = new(_804dd1({186, 142, 157, 145, 153}, 252), {Size = UDim2.fromOffset(_1111x001x, _1111x001x),
Position = UDim2.fromScale(math.random(), math.random()),
BackgroundColor3 = Theme.accent2,
BackgroundTransparency = 0.55 + math.random() * 0.3,
-- 0x69 0xf2 0x06 0x67 0xb1 0xc4
BorderSizePixel = 0, ZIndex = 2}, ambient)
corner(_0x0100x000, _1111x001x)
ambientParts[#ambientParts + 1] = {inst = _0x0100x000,
vx = (math.random() - 0.5) * 0.015, vy = (math.random() - 0.5) * 0.015,
phase = math.random() * math.pi * 2}
-- 011010110000111011001010010011111100001001011110001
end
end
buildAmbient()

-- 4fde2e92c896902ffd8f3b00328c1e99cf028a979eadf4e77cf1262699

header = tPanel2(new(_804dd1({53, 1, 18, 30, 22}, 115), {Size = UDim2.new(1, 0, 0, 54),
-- 617ee1a77004f4c484db583962bf49717c0669f99e88927a0a20dd5d
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, ZIndex = 31}, menu))
-- 111000010000101010101001011110010101101100111010110000101
corner(header, 14)
-- aacfaf3524146cb24635278315ce
grad(header, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
new(_804dd1({112, 68, 87, 91, 83}, 54), {Size = UDim2.new(1, 0, 0, 2), Position = UDim2.new(0, 0, 1, -2),
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 32}, header)
tAcc2(new(_804dd1({183, 134, 155, 151, 175, 130, 129, 134, 143}, 227), {Size = UDim2.fromOffset(100, 54), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _804dd1({239, 248, 252, 237, 248, 239}, 189), Font = Enum.Font.GothamBlack,
-- 011111100110101101111100101111101000100101111000110101110100
TextSize = 17, TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header))
-- 000111010011110111111110111100100011001101100
local _x11x1x10 = new(_804dd1({224, 209, 204, 192, 248, 213, 214, 209, 216}, 180), {Size = UDim2.new(0, 120, 0, 20),
-- 010011011011000000011011101011110000100110011001110000101
Position = UDim2.fromOffset(110, 17), BackgroundTransparency = 1,
-- 0x74 0x3c 0x39 0x7f
Text = _804dd1({}, 0), Font = Enum.Font.GothamBlack, TextSize = 11,
TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header)
local _010xx = 38
-- 0x5e 0x7c 0x37
local _00xxxx11x = new(_804dd1({110, 90, 73, 69, 77}, 40), {Size = UDim2.fromOffset(_010xx, _010xx),
Position = UDim2.new(1, -320, 0.5, -19), BackgroundTransparency = 1, ZIndex = 33}, header)
-- 01011111100001100011100101110010101000101001010110100100
local _x10xx011 = new(_804dd1({144, 180, 184, 190, 188, 149, 184, 187, 188, 181}, 217), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Theme.panel3, BorderSizePixel = 0, Image = _804dd1({}, 0), ZIndex = 34}, _00xxxx11x)
-- 111110011110010011001111110100001110001011111110010001
corner(_x10xx011, _010xx / 2)
-- 00111000000111100010101111101111101011110000000
local _1x1101010 = new(_804dd1({190, 143, 146, 158, 166, 139, 136, 143, 134}, 234), {Size = UDim2.fromScale(1, 1),
-- bcf595f4e5cdddff423c37eb2c0862d8a2650da90c
BackgroundTransparency = 1, Text = _804dd1({11}, 52), Font = Enum.Font.GothamBlack, TextSize = 16,
TextColor3 = Color3.new(1, 1, 1), ZIndex = 35}, _00xxxx11x)
-- 0x97 0x72 0x35 0x9c
local _111xx = new(_804dd1({170, 158, 141, 129, 137}, 236), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, ZIndex = 36}, _00xxxx11x)
corner(_111xx, _010xx / 2)
tAcc(stroke(_111xx, Theme.neon, 1.6, 0.15))
local _011x110 = new(_804dd1({164, 149, 136, 132, 188, 145, 146, 149, 156}, 240), {Size = UDim2.new(0, 240, 0, 16),
Position = UDim2.new(1, -278, 0.5, -19), BackgroundTransparency = 1,
Text = _804dd1({60, 16, 19, 29, 24, 21, 18, 27, 158, 252, 218}, 124), Font = Enum.Font.GothamBold, TextSize = 11,
-- 0xf7 0x6f 0x3d
TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)
-- 0x88 0xf7 0xbb 0xea
local _1x0xx = new(_804dd1({5, 52, 41, 37, 29, 48, 51, 52, 61}, 81), {Size = UDim2.new(0, 240, 0, 13),
-- 0x38 0x53 0x2e
Position = UDim2.new(1, -278, 0.5, 1), BackgroundTransparency = 1,
Text = _804dd1({143, 224, 243, 242, 95, 157, 255, 235, 95, 95, 95, 157, 240, 206, 95, 79, 79, 69, 79, 79, 69, 79, 79}, 127), Font = Enum.Font.Gotham, TextSize = 9,
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)
task.spawn(function()
-- 10111111000011111010100011111
local _1111xxxx = 0
-- 0x10 0xe3 0x85 0x93 0xef 0xd7
while _011x110.Parent do
if MY_USER then
_011x110.Text = _804dd1({149}, 213) .. (MY_USER[_804dd1({40, 46, 56, 47, 51, 60, 48, 56}, 93)] or _804dd1({213, 211, 197, 210}, 160)) ..
(MY_USER.discordName and (_804dd1({18, 18, 240, 133, 18, 18, 86, 91, 65, 81, 93, 64, 86, 18, 114}, 50) .. MY_USER.discordName) or _804dd1({}, 0))
if MY_USER[_804dd1({90, 77, 90, 79, 90, 73}, 59)] and MY_USER[_804dd1({226, 245, 226, 247, 226, 241}, 131)] ~= _804dd1({}, 0) and _x10xx011.Image == _804dd1({}, 0) then
-- 1101101010001000010101011101001110111000100101011010
local _xx0xx0 = tick()
-- 000111010010011011111111011101111111110001110110111010010
if _xx0xx0 - _1111xxxx > 3 then
-- 11111110011011101001001000101000000101101000
_1111xxxx = _xx0xx0
-- 101111000000110111001010000001001010111011000001110111101
local _x01110011 = downloadAvatar(MY_USER[_804dd1({62, 41, 62, 43, 62, 45}, 95)])
-- 111011001111000111010010000100001110100001010010100
if _x01110011 then
_x10xx011.Image = _x01110011
_x10xx011.ScaleType = Enum.ScaleType.Crop
-- 00001010101011011100100001010011
_1x1101010.Visible = false
-- 0xd5 0xc5 0x07 0xaf 0x86
end
end
end
if _1x1101010.Visible then
-- 0xf1 0x60 0x55
_1x1101010.Text = (MY_USER[_804dd1({27, 22, 12, 15, 19, 30, 6, 49, 30, 18, 26}, 127)] or MY_USER[_804dd1({4, 2, 20, 3, 31, 16, 28, 20}, 113)] or _804dd1({236}, 211)):sub(1, 1):upper()
end
local _0011x = flagEmoji(MY_USER.countryCode)
local _x1x10x0 = math.max(0, tick() - (MY_USER.connectedAt or tick()))
local _xx0x01 = math.floor(_x1x10x0 / 3600)
-- 111010100010001010001001101010111
local _0x01x1 = math.floor((_x1x10x0 % 3600) / 60)
local _1x1111001 = math.floor(_x1x10x0 % 60)
-- ca4e3643929ec8e0317294909c8
_1x0xx.Text = string.format(_804dd1({29, 75, 24, 29, 75, 24, 24, 24, 218, 183, 137, 24, 29, 8, 10, 92, 2, 29, 8, 10, 92, 2, 29, 8, 10, 92}, 56),
-- dbd7ca4f7a5d3c5044f6c262b4e0e8a8669
_0011x, (MY_USER.country ~= _804dd1({}, 0) and MY_USER.country) or _804dd1({212, 182, 162}, 54), _xx0x01, _0x01x1, _1x1111001)
local _001011001x = MY_USER[_804dd1({163, 176, 191, 186}, 209)]
local _0xx01011x1 = _001011001x and BADGE_STYLE[_001011001x]
-- 0100000100001110010111100111001110101100100010001001001
if _0xx01011x1 then
_x11x1x10.Text = _0xx01011x1.emoji .. _804dd1({245}, 213) .. _0xx01011x1.label
_x11x1x10.TextColor3 = _0xx01011x1.color
-- 0x9f 0xc9 0x1c 0xfd 0x2a
else
_x11x1x10.Text = _804dd1({}, 0)
end
end
-- 000100100101000101000111
task.wait(0.5)
-- 01010111111100001100101100100000001001
end
end)
-- 0xfd 0xf9 0xa3 0x63 0xac 0xc1
closeBtn = new(_804dd1({128, 177, 172, 160, 150, 161, 160, 160, 187, 186}, 212), {Size = UDim2.fromOffset(24, 24),
-- de1974fe7968ded365a894d23b7a0042e731fa76
Position = UDim2.new(1, -32, 0, 9), BackgroundColor3 = Theme.danger, Text = _804dd1({93, 35, 42}, 191),
-- 0x8a 0x30 0x90
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
-- 0x63 0x40 0x5d
AutoButtonColor = false, ZIndex = 33}, header)
corner(closeBtn, 6)
closeBtn.MouseButton1Click:Connect(function() closeMenu() end)


-- 0011001101110101101010001100010111011101101010010000000110
TICKER_HEIGHT = 28
-- 1110110100011000100101101100111111000011011100001010010111
tickerBar = tPanel(new(_804dd1({104, 92, 79, 67, 75}, 46), {Size = UDim2.new(1, -20, 0, TICKER_HEIGHT),
-- 331aa13aaee2c8331d8d79f2
Position = UDim2.fromOffset(10, 60), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.15, BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 31}, menu))
corner(tickerBar, 8)
grad(tickerBar, Color3.fromRGB(20, 10, 40), Color3.fromRGB(3, 2, 8), 90)
-- 3d75f27b58555e98692b7d65e2e890fb9010d79d5fdf
tickerStroke = stroke(tickerBar, Theme.neon, 1.4, 0.3)
-- 0x3b 0xb7 0xc1 0x9e 0xaa 0x4a
tickerLabel = new(_804dd1({51, 2, 31, 19, 43, 6, 5, 2, 11}, 103), {Size = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 1,
-- 0x7f 0x65 0x8a
Text = Theme.ticker, Font = Enum.Font.GothamBlack, TextSize = 13,
-- 0xe1 0x1c 0x16 0x91 0xaa
TextColor3 = Theme.tickerColor, TextStrokeTransparency = 0.35,
TextStrokeColor3 = Color3.fromRGB(3, 2, 8),
-- 1010011111011011001011010000000011010
TextXAlignment = Enum.TextXAlignment.Left, AutomaticSize = Enum.AutomaticSize.X, ZIndex = 34}, tickerBar)
-- 111100011111011010100111101001001001011
tickerLabelGrad = new(_804dd1({18, 14, 0, 53, 38, 35, 46, 34, 41, 51}, 71), {Color = ColorSequence.new({
-- 59a457d7990fd1f0c0277c83aec21
ColorSequenceKeypoint.new(0, Theme.tickerColor),
-- 00000010010111010111011101110
ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),
ColorSequenceKeypoint.new(1, Theme.tickerColor),
-- 000110110001010111101010011111
}), Rotation = 0}, tickerLabel)
tickerX = 0
-- 0x86 0x06 0xc7 0x4b 0x0f 0xdc
task.spawn(function()
-- a895283c215e10b1ca5950cd0ba3c65f73eadd7b0bdaf4
_x11x11x.RenderStepped:Connect(function(_0x010)
-- 0xef 0x8a 0x02 0x89 0x10 0xd9
if not tickerLabel.Parent then return end
local _111111xxx0 = tickerLabel.AbsoluteSize.X
tickerX = tickerX - 110 * _0x010
-- d9d294453829f1cc7710ed33aa4b2a796c420f6dfd1c9825a7c
if tickerX + _111111xxx0 < 0 then tickerX = tickerBar.AbsoluteSize.X + 4 end
-- 110001100100101011100111010110110001111011110101011
tickerLabel.Position = UDim2.fromOffset(tickerX, 0)
-- 0x4d 0xdd 0x93 0x43 0xcf 0x78
end)
end)
-- 0xf7 0x64 0x20
rail = tPanel(new(_804dd1({224, 212, 199, 203, 195}, 166), {Size = UDim2.new(0, 120, 1, -130),
Position = UDim2.fromOffset(10, 96), BackgroundColor3 = Theme.panel,
-- 0x50 0x93 0x1e 0x2f 0x90
BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(rail, 10)
new(_804dd1({101, 121, 124, 89, 67, 68, 124, 81, 73, 95, 69, 68}, 48), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, rail)
-- 1100011110011011000010111101000001101001000100
new(_804dd1({137, 149, 140, 189, 184, 184, 181, 178, 187}, 220), {PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 5), PaddingRight = UDim.new(0, 5)}, rail)
-- 0x81 0x90 0x70 0xce 0x0f 0xec
tabIndicator = new(_804dd1({176, 132, 151, 155, 147}, 246), {Size = UDim2.new(1, -10, 0, 26),
-- 01011100111101111000101110101100001100
Position = UDim2.fromOffset(5, 6), BackgroundColor3 = Theme.neon,
-- 0100110010000001101001110100101001101
BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 31}, rail)
-- 0x4e 0x9c 0x10 0x0e 0x49 0xa7
corner(tabIndicator, 6)
new(_804dd1({158, 130, 140, 185, 170, 175, 162, 174, 165, 191}, 203), {Color = ColorSequence.new(Theme.neon, Theme.accent3)}, tabIndicator)
content = tPanel(new(_804dd1({128, 180, 167, 171, 163}, 198), {Size = UDim2.new(1, -148, 1, -130),
-- b4e95d56f6e06140c5848c4f0698a8ef8f8b3adb4732be1491
Position = UDim2.fromOffset(138, 96), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
-- 0x2b 0xff 0x10 0x24 0xd4
corner(content, 10)
-- 0xcd 0xee 0x69
status = tPanel(new(_804dd1({133, 177, 162, 174, 166}, 195), {Size = UDim2.new(1, -20, 0, 20),
-- 0xc5 0xa2 0x98
Position = UDim2.new(0, 10, 1, -25), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 31}, menu))
-- 0xed 0xe2 0xdc 0x4c 0x7a 0xa8
corner(status, 6)
statusLbl = tMuted(new(_804dd1({246, 199, 218, 214, 238, 195, 192, 199, 206}, 162), {Size = UDim2.new(1, -12, 1, 0),
-- 80e22f0322a2b32fdf22ba0a01dd8c5aac57a
Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1, Text = _804dd1({83, 68, 64, 81, 68, 83}, 1),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 32}, status))
-- 10011000000010011111111101101001010110101110100111001
makeDraggable(menu, header)
makeResizable(menu, {minW = Cfg[_804dd1({122, 102}, 47)].MinW, minH = Cfg[_804dd1({252, 224}, 169)].MinH})

function openMenu()
-- 0x51 0x61 0xbd
if Cfg[_804dd1({36, 56}, 113)].AnimatedOpen then
local _10100x1, _xxx000110x = menu.Size, menu.Position
menu.Visible = true
menu.Size = UDim2.fromOffset(600, 460)
menu.Position = UDim2.new(0.5, -300, 0.5, -230)
-- 0x1b 0x9a 0xb5 0x77 0xa2 0xd8
_xx0111:Create(menu, TweenInfo.new(0.32, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Size = _10100x1, Position = _xxx000110x}):Play()
else
menu.Visible = true
end
-- 1944a4dee4d4deacc28147c1698ef8a43a27132fb5555e008
end
-- 0xc0 0x12 0x01 0xab 0x68 0xfe
function closeMenu()
-- 462565247d45a08cb76f75597fe3464f790fceca77853167abe4
if Cfg[_804dd1({137, 149}, 220)].AnimatedOpen and menu.Visible then
-- 0x13 0xa9 0x11 0xe5 0xd6
local _01xx001x1, _1x0x0100 = menu.Size, menu.Position
local _011110110 = _xx0111:Create(menu, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- adb9ba930c0432209be6da0168070c5
{Size = UDim2.fromOffset(600, 460), Position = UDim2.new(0.5, -300, 0.5, -230)})
_011110110:Play()
_011110110.Completed:Connect(function()
-- 91cc8e025e3dd4c3845379c8e0f8f6d1c374e6b2517fac36b5881
menu.Visible = false
-- 0010001010110010000011101000000011011011100010
menu.Size, menu.Position = _01xx001x1, _1x0x0100
-- 59d2d1faee213578bdf20b95772e27376a4c6ee29da5fd3086bf0a29496
end)
-- 0x15 0x92 0x9d 0x3a 0xa2
else
menu.Visible = false
-- 0x8f 0xba 0xa9 0x17
end
-- 130a34201284729735b938878062c240f7e7c57c6ffc2d1584
end


pages = {}; tabs = {}; widgets = {}
-- 010000111000011100111011
toggleLabels = {}
-- 0x90 0xe8 0x16 0x63
pendingKeybind = nil
-- 181dca013043eb6b5a1e0dcba0557ae40ddabb
refreshHUD = function() end
-- 0xfe 0x3c 0xa9 0xd2
refreshAD = function() end
function resolvePage(_1010001x) if type(p) == _804dd1({130, 133, 131, 152, 159, 150}, 241) then return pages[_1010001x] end; return _1010001x end

function makeTab(_1xx1010111, _1xx01xx)
-- 1010010001110110110010000000111010100010110
local _x01x1 = tPanel2(new(_804dd1({252, 205, 208, 220, 234, 221, 220, 220, 199, 198}, 168), {Size = UDim2.new(1, 0, 0, 26),
BackgroundColor3 = Theme.panel2, Text = _1xx01xx, Font = Enum.Font.GothamBold,
TextSize = 10, TextColor3 = Theme.muted, AutoButtonColor = false,
-- 00110110100100001011110001000101000110010
LayoutOrder = #rail:GetChildren(), ZIndex = 32}, rail))
-- 100000101011001001110010110010001110000
corner(_x01x1, 7)
-- f0d6e8234fd8fbafeb6d4c5506e03df99f638a1c7ca
tStroke(stroke(_x01x1, Theme.strokeSoft, 1, 0.5))
-- 0xc0 0x3e 0xb4 0x2b 0xd2 0x61
tabs[_1xx1010111] = _x01x1
-- 1111101010000100100100001111110010101010100101001111000000
local _xx01x0x11x = new(_804dd1({81, 97, 112, 109, 110, 110, 107, 108, 101, 68, 112, 99, 111, 103}, 2), {Name = _804dd1({243, 194, 196, 198, 252}, 163) .. _1xx1010111, Size = UDim2.fromScale(1, 1),
-- 0x72 0xa6 0x6f 0x98
BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 3,
-- 177a6e62151cc9a148e9254827088a491193461e94aef3
ScrollBarImageColor3 = Theme.neon, CanvasSize = UDim2.new(0, 0, 0, 0),
AutomaticCanvasSize = Enum.AutomaticSize.Y, Visible = false, ZIndex = 32}, content)
new(_804dd1({202, 214, 211, 246, 236, 235, 211, 254, 230, 240, 234, 235}, 159), {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, _xx01x0x11x)
-- 068e0d789e25bb456e04144a7c
new(_804dd1({186, 166, 191, 142, 139, 139, 134, 129, 136}, 239), {PaddingTop = UDim.new(0, 10), PaddingLeft = UDim.new(0, 10),
-- 0xf4 0xe1 0x31 0xb6 0xbb
PaddingRight = UDim.new(0, 10), PaddingBottom = UDim.new(0, 10)}, _xx01x0x11x)
pages[_1xx1010111] = _xx01x0x11x
-- 10011010000101011011001011001010100010000100001111100110111
_x01x1.MouseButton1Click:Connect(function()
for _x00x00, _0001x011 in pairs(pages) do _0001x011.Visible = false end
_xx01x0x11x.Visible = true
-- 0x46 0x41 0xe0 0x25 0xe5 0x11
for _110101, _0x0x100xx in pairs(tabs) do
_0x0x100xx.TextColor3 = Theme.muted
-- 332f1fa97ec03e1f453cec61bc1997341f76364a35a0d2abe777a1d4d
_0x0x100xx.BackgroundColor3 = Theme.panel2
-- 80b491987bbbf08efe093ebdb6ecbd0f12a993d4f6efdd5f332b88a27
end
-- 0100100100111111010010100110000001101110
_x01x1.TextColor3 = Color3.new(1, 1, 1)
_x01x1.BackgroundColor3 = Theme.neon
-- 110010100011000100100100110
glow(_x01x1, Theme.accent2, 0.4)
-- 42a10c472a7442c3fc65fba2d2a36f57ea04b7b97ac3f752e4a4532a183
shine(_x01x1, Color3.new(1, 1, 1), 0.5)
-- 0000100001110100011010011110111011010000010001010010000
local _000x10 = _x01x1.AbsolutePosition.Y - rail.AbsolutePosition.Y
_xx0111:Create(tabIndicator, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
{Position = UDim2.fromOffset(5, _000x10)}):Play()
ripple(_x01x1, _x01x1.AbsoluteSize.X / 2, _x01x1.AbsoluteSize.Y / 2, Theme.accent2, 18, 0.5)
end)
-- 01b7774fa8b8ffd0f73e08c05a115c74a8f15a5ddd8c470de18f8
_x01x1.MouseEnter:Connect(function()
-- 6502d6079c2d0e1862035f6df54f260ee9d80e56d3066791a18bc8d3c8a
if _x01x1.BackgroundColor3 ~= Theme.neon then
-- 00101100100001101011111011011111011010000110100010100
_xx0111:Create(_x01x1, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel3}):Play()
end
end)
_x01x1.MouseLeave:Connect(function()
if _x01x1.BackgroundColor3 ~= Theme.neon then
-- c3674f665d70e1141c1b49735e0f9082903cedfd59522e0de789153819
_xx0111:Create(_x01x1, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
-- 01010011010011001000010100
end
end)
end

function section(_xxx1x0001x, _0x01x0x, _100x101xxx)
local _x1xxx01x1x = resolvePage(_xxx1x0001x)
if not _x1xxx01x1x then return nil end
local _00x011 = tPanel2(new(_804dd1({119, 67, 80, 92, 84}, 49), {Size = UDim2.new(1, 0, 0, 24),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
LayoutOrder = #_x1xxx01x1x:GetChildren(), ZIndex = 33}, _x1xxx01x1x))
corner(_00x011, 7)
-- df4a5041badbdacbc9965bf8687eb44
tStroke(stroke(_00x011, Theme.strokeSoft, 1, 0.5))
local _x01x110 = grad(_00x011, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)
-- 0xaa 0x19 0x3f
new(_804dd1({13, 57, 42, 38, 46}, 75), {Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
-- f209f56dc1b44db7d5638d0e6882b6eabae9c27766dc609373c370
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = Theme.neon,
BorderSizePixel = 0, ZIndex = 35}, _00x011)
-- 85331a370042d0a2ce665363b92b434af8d04
new(_804dd1({30, 47, 50, 62, 6, 43, 40, 47, 38}, 74), {Size = UDim2.new(1, -14, 1, 0), Position = UDim2.fromOffset(12, 0),
-- 0011011001011100010101001111000
BackgroundTransparency = 1, Text = (_100x101xxx and _100x101xxx .. _804dd1({182, 182}, 150) or _804dd1({}, 0)) .. _0x01x0x,
-- 1011011001101101011010100111111001010010110011101101
Font = Enum.Font.GothamBlack, TextSize = 10, TextColor3 = Theme.accent2,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _00x011)
-- 2be406cab17dba2d2b2e34b228d8d58950ff126beb0db24
if Cfg[_804dd1({227, 255}, 182)].ShimmerHeaders then
-- 0xe0 0x11 0xb9 0xb7
task.spawn(function()
-- 0x9d 0x66 0x9e
local _00101 = 0
-- 33f16e5cb797139a87b4fd0fed0d69b1b444fc4abc
while _00x011.Parent do
_00101 = (_00101 + 0.02) % 1
-- 0x2e 0x56 0xe3
_x01x110.Offset = Vector2.new(_00101, 0)
_x11x11x.RenderStepped:Wait()
-- 0x4f 0x4f 0x53 0x20 0x17 0x65
end
end)
end
-- 3e92260f2e12490d7ccda8390bd0b7dd
return _00x011
end

-- 0xd6 0xa5 0xff 0xff
function collapsible(_x0x1x110x, _01xx0x, _0x1111)
-- 0xf4 0x7f 0xf0 0xd2 0x1b 0xf7
local _1xxxx = resolvePage(_x0x1x110x)
-- 0xfd 0xb1 0x5c 0xf0
if not _1xxxx then return nil end
local _0100xxx = _0x1111 and true or false
local _011xx11x01 = tPanel2(new(_804dd1({29, 44, 49, 61, 11, 60, 61, 61, 38, 39}, 73), {Size = UDim2.new(1, 0, 0, 24),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15, Text = _804dd1({}, 0),
-- 0xe2 0x22 0x64
AutoButtonColor = false, LayoutOrder = #_1xxxx:GetChildren(), ZIndex = 33}, _1xxxx))
-- 0xd1 0xa0 0x3a 0xf6 0xb2 0x98
corner(_011xx11x01, 7)
tStroke(stroke(_011xx11x01, Theme.strokeSoft, 1, 0.5))
grad(_011xx11x01, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)
-- 0xdd 0x44 0xd5 0xf5 0x2b
local _x1xx1 = new(_804dd1({80, 97, 124, 112, 72, 101, 102, 97, 104}, 4), {Size = UDim2.fromOffset(18, 24), Position = UDim2.fromOffset(8, 0),
BackgroundTransparency = 1, Text = _0100xxx and _804dd1({94, 42, 0}, 188) or _804dd1({202, 190, 158}, 40),
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2, ZIndex = 34}, _011xx11x01)
-- 0010101101100010001011011010001
new(_804dd1({139, 186, 167, 171, 147, 190, 189, 186, 179}, 223), {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(26, 0),
-- 10111010110010010110110010000000010011111111100010001010010
BackgroundTransparency = 1, Text = _01xx0x, Font = Enum.Font.GothamBlack,
-- 0xc8 0x74 0xb0
TextSize = 10, TextColor3 = Theme.accent2,
-- 0x97 0x71 0x8d
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _011xx11x01)
-- 0x10 0x82 0x81
local _0110111x = new(_804dd1({128, 180, 167, 171, 163}, 198), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
-- 02184034798746fa56a8c11b324d9ec1dfa3e9d0f479c
AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = #_1xxxx:GetChildren(),
Visible = _0100xxx, ZIndex = 33}, _1xxxx)
-- d682b10e9fc3086a096fc3195593c3c621aa70a42eb14d0206c99b97
new(_804dd1({242, 238, 235, 206, 212, 211, 235, 198, 222, 200, 210, 211}, 167), {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, _0110111x)
-- 000011011011110001100001011110000
new(_804dd1({87, 75, 82, 99, 102, 102, 107, 108, 101}, 2), {PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4)}, _0110111x)
_011xx11x01.MouseButton1Click:Connect(function()
_0100xxx = not _0100xxx
_x1xx1.Text = _0100xxx and _804dd1({77, 57, 19}, 175) or _804dd1({208, 164, 132}, 50)
_0110111x.Visible = _0100xxx
-- 00111110101100001001011100
glow(_011xx11x01, Theme.accent2, 0.3)
end)
-- 0x80 0xf0 0x92
return _0110111x, _011xx11x01
end

-- 006894e995bf47dc5d4950284e447235e3ccf68a7dee1b887dd412ab

function toggleRow(_x1x1x, _00101x0x1x, _0x0xx0x, _011xx111)
local _0001xxx11 = resolvePage(_x1x1x)
-- 45d8d5b45dfa6dfb0bca7973372cab1cc75a8087b5d3804b8a4
if not _0001xxx11 then return end
toggleLabels[_00101x0x1x] = _0x0xx0x
-- 0110110111010100011011001101101111011
local _100x1x1 = getPath(Cfg, _00101x0x1x) == true
-- 99c4df48cd24ee69301142befb903a010a5f3ec09ddf2245ac5a7
local _xx0x1x0 = tPanel(new(_804dd1({127, 75, 88, 84, 92}, 57), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 0x76 0x54 0xa2 0x2a 0xd0 0x01
LayoutOrder = #_0001xxx11:GetChildren(), ZIndex = 33}, _0001xxx11))
-- 0x52 0x9a 0xc6 0x3e 0x52 0x7e
corner(_xx0x1x0, 7)
tStroke(stroke(_xx0x1x0, Theme.strokeSoft, 1, 0.55))
-- 0x55 0x60 0x46
hoverStripe(_xx0x1x0, Theme.neon)
-- aa2062cbe7f7b8bee35aa4555a235d5b24a71374f592fe3ee0da930ebf4
new(_804dd1({153, 168, 181, 185, 129, 172, 175, 168, 161}, 205), {Size = UDim2.new(1, -200, 1, 0), Position = UDim2.fromOffset(14, 0),
-- 711033e9a247e7c81d723510b49092fa2fa
BackgroundTransparency = 1, Text = _0x0xx0x, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _xx0x1x0)
local _0x00x00100 = tPanel2(new(_804dd1({56, 9, 20, 24, 46, 25, 24, 24, 3, 2}, 108), {Size = UDim2.fromOffset(72, 18),
-- 01001111111001010011110110011001011011
Position = UDim2.new(1, -116, 0.5, -9), BackgroundColor3 = Theme.panel2,
Text = _804dd1({212, 223, 157, 150, 145, 155}, 255), Font = Enum.Font.GothamBold, TextSize = 9,
-- 0xe2 0xeb 0xf6 0x09
TextColor3 = Theme.muted, AutoButtonColor = false, ZIndex = 36}, _xx0x1x0))
-- 0x5d 0xdb 0x87
corner(_0x00x00100, 5)
tStroke(stroke(_0x00x00100, Theme.strokeSoft, 1))
-- f3ca4281b0369df1be274fbff70
local function _00x11xx()
local _0xx11 = Cfg.Binds and Cfg.Binds[_00101x0x1x]
-- 011100101110001100000011111001111110000
if _0xx11 then
-- 0xcf 0xce 0xac
_0x00x00100.Text = _0xx11.Name
-- 5683aac530021ce2460e493f2aaf76a6c80a5e7f499f8ebbc138485ac191
_0x00x00100.TextColor3 = Theme.accent2
-- f7808bf3014a98510ec55782db96cf2ec3678
else
_0x00x00100.Text = _804dd1({214, 221, 159, 148, 147, 153}, 253)
_0x00x00100.TextColor3 = Theme.muted
-- 0xdb 0x0a 0x53 0xd0
end
-- 100110010011110111010110011001110001111011111110011010
end
-- 0x62 0x75 0xd7 0x28 0xd3 0xab
_00x11xx()
_0x00x00100.MouseButton1Click:Connect(function()
-- 3c2b4f583531e174d4aaa7a0b90c705618d32faa732a29182
pendingKeybind = {path = _00101x0x1x, btn = _0x00x00100, refresh = _00x11xx}
_0x00x00100.Text = _804dd1({111, 109, 122, 108, 108, 253, 159, 185}, 31)
-- 1011111001000001010010101000001101011011010010
_0x00x00100.TextColor3 = Theme.danger
end)
local _x1x01111 = new(_804dd1({236, 216, 203, 199, 207}, 170), {Size = UDim2.fromOffset(42, 20),
Position = UDim2.new(1, -50, 0.5, -10),
-- 10001110101111100001110100110
BackgroundColor3 = _100x1x1 and Theme.neon or Theme.panel2,
-- 0xad 0xfd 0x06 0x92 0x09 0x0e
BorderSizePixel = 0, ZIndex = 36}, _xx0x1x0)
-- 0x63 0x64 0xa4 0xd2 0xec 0x5a
corner(_x1x01111, 10)
-- 0xdc 0x94 0xa0 0x46 0xdb
tStroke(stroke(_x1x01111, Theme.strokeSoft, 1, 0.4))
-- 11001001100101110011100101110010011000
local _x0x1x0x00 = new(_804dd1({44, 24, 11, 7, 15}, 106), {Size = UDim2.fromOffset(14, 14),
Position = _100x1x1 and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7),
BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 37}, _x1x01111)
corner(_x0x1x0x00, 7)
-- 0x84 0x37 0x07 0x13
tAcc(stroke(_x0x1x0x00, Theme.neon, 1.4, 0.2))
local function _01xx00x000()
-- dcd2045dba28908ced5c544f52caf4bfca8b297bd671876af2065
if _100x1x1 then
_x1x01111.BackgroundColor3 = Theme.neon
-- 0xe2 0x9f 0xca 0x9b
_x0x1x0x00.Position = UDim2.new(1, -17, 0.5, -7)
else
-- 87aa4263cbe99cf8332cedbca120e0
_x1x01111.BackgroundColor3 = Theme.panel2
_x0x1x0x00.Position = UDim2.new(0, 3, 0.5, -7)
end
end
local function _x0x0xx(_1x0111xx, _x101x11x1)
-- 001101110101000010111111010111001101110011001011100
local _11011x = _1x0111xx and true or false
-- 0xa5 0xf9 0x81 0x55 0x01
local _x010xx = _11011x ~= _100x1x1
-- 0xaf 0xd3 0x46 0xd2 0x29
_100x1x1 = _11011x
-- 8d98e403a7f7806bb95d8d51e1e1cb2e
setPath(Cfg, _00101x0x1x, _100x1x1)

if _x010xx then
-- 7479aa1d877f382260f0f36ebaccb59d02616
local _00xxx0 = _100x1x1 and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
_xx0111:Create(_x0x1x0x00, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = _00xxx0}):Play()
-- 0111101011000110001110001010001001001000100110100
_xx0111:Create(_x1x01111, TweenInfo.new(0.18, Enum.EasingStyle.Quart),
{BackgroundColor3 = _100x1x1 and Theme.neon or Theme.panel2}):Play()
end
_01xx00x000()
-- c0b2c451276a62e84d53747ff0d296f722ff527c116ed40aeb1a8fa
if _00101x0x1x == _804dd1({117, 83, 78, 77, 77, 15, 105, 84, 76, 81}, 33) then
-- 3714cba952c4af3519b42d34e6af1b
if not _100x1x1 then
local _001xxx000 = hum()
if _001xxx000 then
_001xxx000.PlatformStand = false
_001xxx000.AutoRotate = true
-- 0110010011100011001101011011001001000101001001
pcall(function() _001xxx000:ChangeState(Enum.HumanoidStateType.GettingUp) end)
end
-- 0111011100010010011000110111110110110001
TS.humpWasActive = false
-- 0xd7 0x22 0xe9 0x77 0x16
TS.lockedTarget = nil
-- a70d60b56edd36631ab7d3b07b3df635a215743692aad2d
HUMP.awaitingRespawn = false
-- aea83399efd418ca641737e1fb3a541c9d7dda257164
HUMP.anchorY = nil
HUMP.lastGoodY = nil
-- ff016a33decf5df97585ece13243fc53853cdf3b60740c37aada0
HUMP.oldRootPart = nil
-- 0x08 0x8b 0x7f 0xfd
else
-- 0xe0 0xcb 0x54 0x09 0x4e
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
HUMP.lockTimer = 1.5; HUMP.lastTier = _804dd1({21, 18, 15, 10, 10}, 70)
HUMP.awaitingRespawn = false; HUMP.fallHold = 0
-- be37477ec4ffd8aa59ab7725b16bb86d14cb92e762f184f3e7be083311
HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
-- 0xc6 0x7a 0x82 0x1e 0xcb 0x18
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
end
end
-- 0x1d 0x81 0x9c 0x0d
if _x101x11x1 ~= false and _011xx111 then pcall(_011xx111, _100x1x1) end
-- 1010001110110101001010010011011101111011011111010011010101
if _x010xx then pcall(refreshHUD); pcall(refreshAD) end
-- 8f46ec23cafbf943657daa9129adcdaf59b998c77
end
-- 0x89 0x21 0x33 0x9f
widgets[_00101x0x1x] = {set = _x0x0xx, get = function() return _100x1x1 end,
rerender = _01xx00x000, refreshKey = _00x11xx, label = _0x0xx0x}
-- d84042fb36a80acbaf6ccfd627c74fc0cac988
_01xx00x000()

-- 0x53 0x34 0x4b 0x2c 0xf3 0x79
_x1x01111.InputBegan:Connect(function(_11x111111)
-- 9dbf36e4be72cb9a3e372231a7919a6539d619760d9de9
if _11x111111.UserInputType == Enum.UserInputType.MouseButton1 or _11x111111.UserInputType == Enum.UserInputType.Touch then
local _0x01010 = not _100x1x1
-- 0xd5 0x6e 0xef 0x64 0xbc 0x15
_x0x0xx(_0x01010)
local _x10x011x1 = _0x01010 and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
-- 1100111001011001111000101110111110110111010
_xx0111:Create(_x0x1x0x00, TweenInfo.new(0.22, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = _x10x011x1}):Play()
_xx0111:Create(_x1x01111, TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
-- e8ad5515c02e365250413b07d
{BackgroundColor3 = _0x01010 and Theme.neon or Theme.panel2}):Play()
-- 936ef11ad2d8fceb3828aac561b3cb7373914aaeb3feb0f
pulse(_x0x1x0x00, 1.5, 0.1)
-- 92009731c9e5f81192c60d4b958
flash(_x1x01111, _0x01010 and Theme.success or Theme.danger, 0.14)
glow(_x1x01111, _0x01010 and Theme.success or Theme.danger, 0.5)
end
end)
-- 11101111010001011100111001100011000011010011001111
end

function sliderRow(_1x0x1x1, _x1x1111, _xxx011, _1x00xx0x1, _101x11x100, _xxxx1, _11x1x10)
-- 01100111011100001010011000100000010101011001
local _1x1x1x = resolvePage(_1x0x1x1)
if not _1x1x1x then return end
-- 1491dc9c01eddf22f6397bb2e
local _x0x0x0xx = getPath(Cfg, _x1x1111)
-- 0100110010100011011011000
if type(cur) ~= _804dd1({66, 89, 65, 78, 73, 94}, 44) then cur = mn; setPath(Cfg, path, mn) end
-- 0x43 0x1f 0x4a 0x7d 0x92 0x7d
local _1xx010x0 = tPanel(new(_804dd1({226, 214, 197, 201, 193}, 164), {Size = UDim2.new(1, 0, 0, 38),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = #_1x1x1x:GetChildren(), ZIndex = 33}, _1x1x1x))
corner(_1xx010x0, 7)
tStroke(stroke(_1xx010x0, Theme.strokeSoft, 1, 0.55))
-- 00001010010110000100111100101001100001
hoverStripe(_1xx010x0, Theme.neon)
new(_804dd1({0, 49, 44, 32, 24, 53, 54, 49, 56}, 84), {Size = UDim2.new(1, -90, 0, 14), Position = UDim2.fromOffset(14, 4),
BackgroundTransparency = 1, Text = _xxx011, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _1xx010x0)
-- 00111110111111110101000100110000010
local _0100x0 = new(_804dd1({159, 174, 179, 191, 135, 170, 169, 174, 167}, 203), {Size = UDim2.fromOffset(70, 14),
Position = UDim2.new(1, -80, 0, 4), BackgroundTransparency = 1,
-- 01011100011111011110010110011111110101101001100
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 36}, _1xx010x0)
-- 53f0d49f68716baeab6d0b0e84e4edc34
local _00100x00x1 = tPanel2(new(_804dd1({137, 189, 174, 162, 170}, 207), {Size = UDim2.new(1, -22, 0, 5),
-- 0x7d 0x2c 0x39 0x9b 0x94 0x59
Position = UDim2.fromOffset(11, 24), BackgroundColor3 = Theme.panel2, ZIndex = 34}, _1xx010x0))
corner(_00100x00x1, 3)
tStroke(stroke(_00100x00x1, Theme.strokeSoft, 1, 0.5))
local _x0010100x = new(_804dd1({159, 171, 184, 180, 188}, 217), {Size = UDim2.new(0, 0, 1, 0),
-- c7cd81973bb4f9f5fb0ada03
BackgroundColor3 = Theme.neon, BorderSizePixel = 0, ZIndex = 35}, _00100x00x1)
-- 1001100110111110110111010101011010000000110010101000
corner(_x0010100x, 3)
grad(_x0010100x, Theme.neon, Theme.accent3, 0)
-- cb71696a04fddc808ba50635423930e1b2f2b833655198a56eccb0
local _x0111x10 = new(_804dd1({6, 50, 33, 45, 37}, 64), {Size = UDim2.fromOffset(12, 12),
Position = UDim2.new(0, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 36}, _00100x00x1)
corner(_x0111x10, 6)
-- 0x44 0xa3 0x6c 0x06 0x84
tAcc(stroke(_x0111x10, Theme.neon, 1.5))
-- 9b3aa960dbf7772305a46c07e021bb9d17027ae7d9e608b0a5c51
local _011x1 = 10 ^ _xxxx1
-- 100010100100001110100111000
local _0011xx = _x0x0x0xx
local function _1x11xxx(_xx1x1x1, _10110101)
_0011xx = _xx1x1x1
setPath(Cfg, _x1x1111, _xx1x1x1)
local _101xx000 = math.clamp((_xx1x1x1 - _1x00xx0x1) / (_101x11x100 - _1x00xx0x1), 0, 1)
-- 0011100000001000011110010001100111110001000010010111111101
_x0010100x.Size = UDim2.new(_101xx000, 0, 1, 0)
-- aa32979a50c3704e0f72e8e4db496c08a471d0d70b34dc2cbc20eaefd97
_x0111x10.Position = UDim2.new(_101xx000, 0, 0.5, 0)
_0100x0.Text = string.format(_804dd1({97, 106}, 68) .. _xxxx1 .. _804dd1({141}, 235), _xx1x1x1)
if _10110101 ~= false and _11x1x10 then pcall(_11x1x10, _xx1x1x1) end
end
widgets[_x1x1111] = {set = _1x11xxx, get = function() return _0011xx end}
-- 0x8a 0x06 0xc7
_1x11xxx(_0011xx, false)
-- ea0ada5ae12e47d73df600bbdcd0a449c9fc493
local _x01110xxx0 = false
-- 0x1b 0x79 0xe8 0xf3 0x29 0x66
local function _x0x1x0(_0xx101)
-- 1110100000011001000110101100
local _x0x001 = math.clamp((_0xx101 - _00100x00x1.AbsolutePosition.X) / math.max(_00100x00x1.AbsoluteSize.X, 1), 0, 1)
_1x11xxx(math.floor((_1x00xx0x1 + (_101x11x100 - _1x00xx0x1) * _x0x001) * _011x1 + 0.5) / _011x1)
end
_00100x00x1.InputBegan:Connect(function(_010x000x)
-- 010100001001100001110100
if _010x000x.UserInputType == Enum.UserInputType.MouseButton1 or _010x000x.UserInputType == Enum.UserInputType.Touch then
_x01110xxx0 = true
_x0x1x0(_010x000x.Position.X)
-- 0xd1 0x35 0xfb 0x31 0x15 0x1b
pulse(_x0111x10, 1.5, 0.1)
-- fbb477b07d5bbe600723d0e03af3e858fdd8ada06bb8bdf952d2beb4494
end
end)
-- 0x65 0x9f 0x28 0x23 0xf2
_000110001.InputChanged:Connect(function(_xxxxx1)
-- 0xc4 0x18 0x0e 0x1f
if _x01110xxx0 and (_xxxxx1.UserInputType == Enum.UserInputType.MouseMovement or _xxxxx1.UserInputType == Enum.UserInputType.Touch) then
_x0x1x0(_xxxxx1.Position.X)
-- 986be9b87b5f68ced856c81e1b109a0f19f2149e5a60528449e744641e7a
end
-- 0110101010000010111010101011011001110010001101100100011100
end)
-- fb6077a97443ab70453f601968cd53cee9e3835972d795b3d0c6feea88
_000110001.InputEnded:Connect(function(_001xx10x1)
-- 000010110001001101000011
if _001xx10x1.UserInputType == Enum.UserInputType.MouseButton1 or _001xx10x1.UserInputType == Enum.UserInputType.Touch then
-- 0xfa 0x25 0xc5 0x0c
_x01110xxx0 = false
end
-- 9fe54a594a2bf49363d3ec91da56f24
end)
end

-- 0110011101011110011011100011001
function buttonRow(_x1x0x111, _xx1011001, _x0xx01xx0, _0x01x11)
local _10x10xx0x = resolvePage(_x1x0x111)
if not _10x10xx0x then return end
local _x010011 = tPanel(new(_804dd1({199, 243, 224, 236, 228}, 129), {Size = UDim2.new(1, 0, 0, 30),
-- e0847b68137599508360193511ad05d9edbace27a34
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 0xb8 0xa0 0x10 0x45 0xa1 0xc2
LayoutOrder = #_10x10xx0x:GetChildren(), ZIndex = 33}, _10x10xx0x))
corner(_x010011, 7)
-- 001001111111000110001111000001011101010111000101010
tStroke(stroke(_x010011, Theme.strokeSoft, 1, 0.55))
-- 0adcd51f1d441de056024c623ef1796dce387bc8299177c6149fa
hoverStripe(_x010011, Theme.neon)
-- 0xcc 0xa1 0x21 0x02 0x59 0x63
new(_804dd1({74, 123, 102, 106, 82, 127, 124, 123, 114}, 30), {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _xx1011001, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _x010011)
-- 10111100000100101011101010011010
local _000111xx = tPanel2(new(_804dd1({0, 49, 44, 32, 22, 33, 32, 32, 59, 58}, 84), {Size = UDim2.fromOffset(140, 20),
Position = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,
-- 0x33 0x7a 0x7e 0xf8
Text = _x0xx01xx0, Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.accent2, AutoButtonColor = false, ZIndex = 36}, _x010011))
corner(_000111xx, 6)
-- 0x8a 0x02 0x2c 0x63 0x10
tStroke(stroke(_000111xx, Theme.strokeSoft, 1))
_000111xx.MouseButton1Click:Connect(function()
pulse(_000111xx, 0.94, 0.06)
-- f8df29c52a3835c06440322841b
glow(_000111xx, Theme.accent2, 0.35)
shine(_000111xx, Theme.accent2, 0.5)
-- 0x76 0x11 0xf8 0x06 0x97
_0x01x11(_000111xx)
end)
-- 01100010000100000111101100111000011010111010
_000111xx.MouseEnter:Connect(function()
_xx0111:Create(_000111xx, TweenInfo.new(0.12), {BackgroundColor3 = Theme.panel3}):Play()
-- 0xff 0xec 0x7a 0x2c
end)
-- 0x18 0x64 0x09 0x4d
_000111xx.MouseLeave:Connect(function()
_xx0111:Create(_000111xx, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
end)
-- 0101000111000010110001101110111110001
return _000111xx
end

-- 1b771bcba38680aeffa1776e0d43831952c6e04
function infoRow(_x11x011, _0x01xxx10x)
local _x0110111 = resolvePage(_x11x011)
-- 0x7b 0x46 0xed 0x6b 0xdf 0xfb
if not _x0110111 then return nil end
local _1110000 = tPanel2(new(_804dd1({205, 249, 234, 230, 238}, 139), {Size = UDim2.new(1, 0, 0, 24),
-- ebf7459be81dc61e925bcd738b5812ef4548dacadbc14e47a465
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.2,
-- 9dcf6d10a9521352f98ed14a5532f7c1cce4effee15f898e3c9
LayoutOrder = #_x0110111:GetChildren(), ZIndex = 33}, _x0110111))
-- 70912ce20159b810edfbd04597d69ce4e45c6c3
corner(_1110000, 6)
-- 0x96 0x82 0x86 0xaa 0x42
tStroke(stroke(_1110000, Theme.strokeSoft, 1, 0.5))
local _110x1x0 = new(_804dd1({186, 139, 150, 154, 162, 143, 140, 139, 130}, 238), {Size = UDim2.new(1, -10, 1, 0), Position = UDim2.fromOffset(12, 0),
-- 0x1c 0xc6 0xbe
BackgroundTransparency = 1, Text = _0x01xxx10x or _804dd1({}, 0), Font = Enum.Font.Code, TextSize = 10,
-- 3f5950603ab9acde468e64112ff3e838f4841ee2ebcbd35b1
TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _1110000)
-- 0x94 0x08 0x30
return _110x1x0
-- 0x88 0x3f 0x77 0xe8 0x5f 0xee
end

function textRow(_1100100x, _x01xxx00x, _111110, _10101, _0x0101)
-- 0100101000011100101101000010110000110111001010011110111
local _1x0x011x = resolvePage(_1100100x)
if not _1x0x011x then return end
local _x1x0110xx1 = tPanel(new(_804dd1({119, 67, 80, 92, 84}, 49), {Size = UDim2.new(1, 0, 0, 30),
-- 11101001011110100100110001001110000
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = #_1x0x011x:GetChildren(), ZIndex = 33}, _1x0x011x))
corner(_x1x0110xx1, 7)
-- 0x33 0xff 0xfa
tStroke(stroke(_x1x0110xx1, Theme.strokeSoft, 1, 0.55))
new(_804dd1({74, 123, 102, 106, 82, 127, 124, 123, 114}, 30), {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _x01xxx00x, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _x1x0110xx1)
-- 0x8c 0x1c 0x07
local _x10x0x0xx = tPanel2(new(_804dd1({142, 191, 162, 174, 152, 181, 162}, 218), {Size = UDim2.fromOffset(160, 20),
-- 1010010010000010010101100110100110
Position = UDim2.new(1, -168, 0.5, -10), BackgroundColor3 = Theme.panel2,
-- 10000000001111100110011110000100110010
Text = _10101 or _804dd1({}, 0), PlaceholderText = _111110 or _804dd1({}, 0), Font = Enum.Font.Gotham,
TextSize = 10, TextColor3 = Theme.accent2, PlaceholderColor3 = Theme.muted,
-- ddaf3481bc92de18b8299052df6eddfb5c6c85227318370
ClearTextOnFocus = false, Active = true, Selectable = true, ZIndex = 50}, _x1x0110xx1))
-- 000101010011010001011100101001000
corner(_x10x0x0xx, 5)
-- 342bb8999ed5bfb946a3620da4c
tStroke(stroke(_x10x0x0xx, Theme.strokeSoft, 1))
_x10x0x0xx.FocusLost:Connect(function() if _0x0101 then _0x0101(_x10x0x0xx.Text) end end)
return _x10x0x0xx
-- 0x8d 0x6b 0xb7 0xa8 0x48
end

-- 28b75fd5d80eb510cb5dc7cc283d98738cdb1fe1
function cycleRow(_00x00, _xx1x0x0, _x001xxxx, _1x110010, _00x0x00)
-- 0x17 0x30 0xc8 0x3c
local _1xx00x111 = resolvePage(_00x00)
if not _1xx00x111 then return end
-- 000001111011110111111001
local _0xx11x0110 = tPanel(new(_804dd1({37, 17, 2, 14, 6}, 99), {Size = UDim2.new(1, 0, 0, 30),
-- 10010001010010100000000010111100110000100111111
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 1011111110001101010111001011000111110101010100010
LayoutOrder = #_1xx00x111:GetChildren(), ZIndex = 33}, _1xx00x111))
-- 0xf2 0xe9 0x23 0x0e 0x7e
corner(_0xx11x0110, 7)
tStroke(stroke(_0xx11x0110, Theme.strokeSoft, 1, 0.55))
hoverStripe(_0xx11x0110, Theme.neon)
-- 0xb0 0x58 0x00 0x39 0x94 0xc7
new(_804dd1({77, 124, 97, 109, 85, 120, 123, 124, 117}, 25), {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),
-- 0x90 0x99 0x7d
BackgroundTransparency = 1, Text = _x001xxxx, Font = Enum.Font.Gotham, TextSize = 11,
-- 0xdb 0xf4 0xf1 0x4e 0x87
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _0xx11x0110)
local _0001111110 = tPanel2(new(_804dd1({247, 198, 219, 215, 225, 214, 215, 215, 204, 205}, 163), {Size = UDim2.fromOffset(140, 20),
-- 10100111000111000101101011010101011010100
Position = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,
-- 940165cae6892a4a87f7faf64e3d4e1a3f4f320d
Text = tostring(getPath(Cfg, _xx1x0x0) or _1x110010[1]),
-- 0x1b 0xb9 0xf7
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.accent2,
AutoButtonColor = false, ZIndex = 36}, _0xx11x0110))
-- 5331206b7e3de07e1e523931cc89abc6bd8fd024592
corner(_0001111110, 6)
tStroke(stroke(_0001111110, Theme.strokeSoft, 1))
-- 000011111111101011101000110010111111000011101110111
_0001111110.MouseButton1Click:Connect(function()
-- 0x42 0x6b 0xad 0x65
local _1xx10x1x1x = getPath(Cfg, _xx1x0x0)
-- a9281952abe13aca9098ad3de2
local _00x0x10 = 1
-- 0x90 0x75 0x54 0xa9 0xdf
for _00100, _1x01000 in ipairs(_1x110010) do if _1x01000 == _1xx10x1x1x then _00x0x10 = _00100 end end
-- 0010001101011010011111111110011011100000111011111000110001
_00x0x10 = _00x0x10 % #_1x110010 + 1
-- 0x32 0xf8 0x1e 0x1b
setPath(Cfg, _xx1x0x0, _1x110010[_00x0x10])
-- 0x89 0x1a 0x42 0x97 0xef 0xdc
_0001111110.Text = tostring(_1x110010[_00x0x10])
pulse(_0001111110, 0.94, 0.06)
-- 0x49 0x77 0x22
if _00x0x00 then pcall(_00x0x00, _1x110010[_00x0x10]) end
end)
widgets[_xx1x0x0] = {set = function(_01x1111) setPath(Cfg, _xx1x0x0, _01x1111); _0001111110.Text = tostring(_01x1111) end,
get = function() return getPath(Cfg, _xx1x0x0) end}
return _0001111110
-- 0x70 0x89 0xae 0x47 0x08
end

function legendRow(_011101x001, _10x11, _01001x11xx)
-- 0x5e 0x38 0x46 0x46
local _1x0011x1x = resolvePage(_011101x001)
-- 101000100100001111001101
if not _1x0011x1x then return end
-- c5175d2eea42dada9b37ef18ece32158594ef32b524bd8df9ba
local _100xx1 = tPanel(new(_804dd1({253, 201, 218, 214, 222}, 187), {Size = UDim2.new(1, 0, 0, 26),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = #_1x0011x1x:GetChildren(), ZIndex = 33}, _1x0011x1x))
corner(_100xx1, 7)
tStroke(stroke(_100xx1, Theme.strokeSoft, 1, 0.55))
-- 1100000111011111100111101011101
local _0xx0x0x = new(_804dd1({224, 212, 199, 203, 195}, 166), {Size = UDim2.fromOffset(26, 14), Position = UDim2.fromOffset(12, 6),
BackgroundColor3 = _01001x11xx, BorderSizePixel = 0, ZIndex = 34}, _100xx1)
corner(_0xx0x0x, 4)
stroke(_0xx0x0x, _01001x11xx, 1, 0)
new(_804dd1({35, 18, 15, 3, 59, 22, 21, 18, 27}, 119), {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(46, 0),
-- 11100111010111101011010010110000101
BackgroundTransparency = 1, Text = _10x11, Font = Enum.Font.GothamBold,
-- 010101110000010010010110000100110
TextSize = 10, TextColor3 = _01001x11xx, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _100xx1)
return _100xx1
-- c7dc1a3acff9a9ec30bf08842bf49badcd4b6e2c5327bbc8eacb07da
end

-- 97dd5a2e10be1f6857bc49870dc33cd55f1da

function applyOpacity(_1x110x1x1x)
-- 0x55 0x4b 0xf2 0x6d 0x30
_1x110x1x1x = math.clamp(tonumber(_1x110x1x1x) or 0, 0, 1)
for _x11xx1x, _111x11x in ipairs(menu:GetDescendants()) do
local _0011x0, _x1x01010x0 = _111x11x.Parent, false
-- 5b294842192fa520e7f77432381c28f
while _0011x0 and _0011x0 ~= menu do
-- 67b055822a81f4d66fee29685f85cc1b2
if _0011x0 == ambient then _x1x01010x0 = true; break end
-- e266b230cd477bf9885d86c67fbd84c2ef28bcac9
_0011x0 = _0011x0.Parent
-- 2837def00edba67d81f68ba0f0d257
end
-- 000000010101111101010000000111010101111111
if not _x1x01010x0 then
if _111x11x:IsA(_804dd1({3, 55, 36, 40, 32}, 69)) or _111x11x:IsA(_804dd1({106, 91, 70, 74, 124, 75, 74, 74, 81, 80}, 62)) or _111x11x:IsA(_804dd1({155, 170, 183, 187, 141, 160, 183}, 207)) or _111x11x:IsA(_804dd1({110, 94, 79, 82, 81, 81, 84, 83, 90, 123, 79, 92, 80, 88}, 61)) then
-- 0xe4 0xf7 0xd8 0x2d
local _10x001 = _111x11x:GetAttribute(_804dd1({137, 182, 132, 167, 181, 163}, 198))
if _10x001 == nil then _10x001 = _111x11x.BackgroundTransparency; _111x11x:SetAttribute(_804dd1({226, 221, 239, 204, 222, 200}, 173), _10x001) end
-- 0x74 0x76 0x19
_111x11x.BackgroundTransparency = math.clamp(_10x001 + _1x110x1x1x * (1 - _10x001), 0, 1)
-- df9a60c2cb4ad6271eb278bda7aa2bc13ad509ab
elseif _111x11x:IsA(_804dd1({133, 153, 131, 164, 162, 191, 187, 181}, 208)) then
-- 0xed 0x20 0x3d 0xd2
local _x010xx0x1 = _111x11x:GetAttribute(_804dd1({236, 211, 225, 194, 208, 198}, 163))
if _x010xx0x1 == nil then _x010xx0x1 = _111x11x.Transparency; _111x11x:SetAttribute(_804dd1({57, 6, 52, 23, 5, 19}, 118), _x010xx0x1) end
-- 0x9b 0xb0 0x02 0x37 0x35
_111x11x.Transparency = math.clamp(_x010xx0x1 + _1x110x1x1x * 0.9, 0, 1)
-- 0000101011000100111000101110001100001010111
end
end
end
-- 0x67 0xe7 0x5a 0x97
end
function applyTheme()
-- 1011111110001101001010111001
for _110x01x, _x01x01xx in ipairs(gui:GetDescendants()) do
-- 0xc3 0xd6 0x8a 0xd9
if _x01x01xx:GetAttribute(_804dd1({212, 223, 194, 231}, 128)) and _x01x01xx:IsA(_804dd1({113, 69, 86, 90, 82}, 55)) then _x01x01xx.BackgroundColor3 = Theme.bg end
-- 0xcf 0x65 0x8f 0x1f 0x0e 0xa1
if _x01x01xx:GetAttribute(_804dd1({230, 237, 226, 211, 220, 215, 222}, 178)) and (_x01x01xx:IsA(_804dd1({142, 186, 169, 165, 173}, 200)) or _x01x01xx:IsA(_804dd1({0, 48, 33, 60, 63, 63, 58, 61, 52, 21, 33, 50, 62, 54}, 83))) then _x01x01xx.BackgroundColor3 = Theme.panel end
-- 11010100110010110110101010010011010100001001111001010011
if _x01x01xx:GetAttribute(_804dd1({136, 131, 140, 189, 178, 185, 176, 238}, 220)) and (_x01x01xx:IsA(_804dd1({110, 90, 73, 69, 77}, 40)) or _x01x01xx:IsA(_804dd1({41, 24, 5, 9, 63, 18, 5}, 125))) then _x01x01xx.BackgroundColor3 = Theme.panel2 end
if _x01x01xx:GetAttribute(_804dd1({30, 21, 11, 41, 41}, 74)) then
if _x01x01xx:IsA(_804dd1({152, 132, 158, 185, 191, 162, 166, 168}, 205)) then _x01x01xx.Color = Theme.neon
elseif _x01x01xx:IsA(_804dd1({150, 162, 177, 189, 181}, 208)) or _x01x01xx:IsA(_804dd1({169, 152, 133, 137, 191, 136, 137, 137, 146, 147}, 253)) then _x01x01xx.BackgroundColor3 = Theme.neon end
end
-- e3f591d56e723ea9d42f1932d73b9115df9b89fdc38c8626a85376
if _x01x01xx:GetAttribute(_804dd1({118, 125, 99, 65, 65, 16}, 34)) and _x01x01xx:IsA(_804dd1({123, 74, 87, 91, 99, 78, 77, 74, 67}, 47)) then _x01x01xx.TextColor3 = Theme.accent2 end
if _x01x01xx:GetAttribute(_804dd1({177, 186, 177, 128, 157, 145}, 229)) and _x01x01xx:IsA(_804dd1({52, 5, 24, 20, 44, 1, 2, 5, 12}, 96)) then _x01x01xx.TextColor3 = Theme.text end
-- 0xfd 0x47 0x17 0x28 0xbd 0xe7
if _x01x01xx:GetAttribute(_804dd1({43, 32, 50, 10, 11, 26, 27}, 127)) and _x01x01xx:IsA(_804dd1({189, 140, 145, 157, 165, 136, 139, 140, 133}, 233)) then _x01x01xx.TextColor3 = Theme.muted end
if _x01x01xx:GetAttribute(_804dd1({169, 162, 174, 137, 143, 146, 150, 152}, 253)) and _x01x01xx:IsA(_804dd1({126, 98, 120, 95, 89, 68, 64, 78}, 43)) then _x01x01xx.Color = Theme.stroke end
-- 0x17 0x06 0xfd 0x18
end
-- 31c3433f0e993b6bbb4e5ccd46a7e550
tickerLabel.TextColor3 = Theme.tickerColor
-- 01010011001010110101001001100
tickerStroke.Color = Theme.neon
-- 0xa6 0x32 0x9f 0xd0 0xd8
if tickerLabelGrad then
-- 0x54 0xbb 0x34 0x53
tickerLabelGrad.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Theme.tickerColor),
-- 0101111000111010110010011011000010
ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),
ColorSequenceKeypoint.new(1, Theme.tickerColor),
})
-- 010100110111110100000001111001010001001000111
end
-- 51d9b5546298b601866e3124cf0e7bb3a575755daf718e0d884
for _10x01, _xx1111 in ipairs(ambientParts) do if _xx1111.inst then _xx1111.inst.BackgroundColor3 = Theme.accent2 end end
for _xx1110, _10xx1x00 in pairs(widgets) do if _10xx1x00.rerender then pcall(_10xx1x00.rerender) end end
-- 0x5d 0xf7 0x42 0xad 0x8b
pcall(refreshHUD)
-- d2053459e1d312e6f4abb2a12
end


-- 1110110110100111111010100
hudGui = new(_804dd1({171, 155, 138, 157, 157, 150, 191, 141, 145}, 248), {Name = _804dd1({84, 99, 103, 118, 99, 116, 78, 83, 66}, 6), ResetOnSpawn = false,
-- 1010011111100101010001101010010101110110000011111100000111
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9998}, _111xx0)
hudFrame = tBg(new(_804dd1({203, 255, 236, 224, 232}, 141), {Name = _804dd1({205, 240, 225, 215, 234, 234, 241}, 133), Size = UDim2.fromOffset(220, 40),
Position = UDim2.new(0, 20, 0, 200), BackgroundColor3 = Theme.bg,
BackgroundTransparency = 0.12, BorderSizePixel = 0,
AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, hudGui))
corner(hudFrame, 10)
tAcc(stroke(hudFrame, Theme.neon, 1.5, 0.3))
-- 01110000100110001011011110
grad(hudFrame, Theme.panel, Theme.bg, 90)
hudHeader = tPanel2(new(_804dd1({98, 86, 69, 73, 65}, 36), {Size = UDim2.new(1, 0, 0, 22),
-- 100101001111100001100100111011
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, hudFrame))
-- 0xb6 0x0b 0x53
corner(hudHeader, 10)
-- 1111101101010010010100110011000
grad(hudHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
-- 0xec 0x56 0xe4 0xb2 0x80
tAcc2(new(_804dd1({192, 241, 236, 224, 216, 245, 246, 241, 248}, 148), {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(10, 0),
BackgroundTransparency = 1, Text = _804dd1({167, 223, 228, 101, 14, 0, 28, 7, 12, 11, 1, 22}, 69), Font = Enum.Font.GothamBlack,
-- 91b941b754404e50a6f46e164d3edbf1b9e51943450779060d96467c4925
TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, hudHeader))
-- 0x35 0xab 0x42 0xc0 0x46
hudHide = new(_804dd1({32, 17, 12, 0, 54, 1, 0, 0, 27, 26}, 116), {Size = UDim2.fromOffset(18, 18),
-- 1a7b9865615e901b354647618c1a2bad88d6bd7842454dedd7e90e31243
Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = _804dd1({59, 81, 75}, 217),
-- 11100001001101011111010111010111110110000001100101110001011
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
-- 7298cf77e86809dc0ff1a315
AutoButtonColor = false}, hudHeader)
corner(hudHide, 4)
-- 06057cff570f0d1367aa68280b855596
hudList = new(_804dd1({22, 34, 49, 61, 53}, 80), {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),
BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, hudFrame)
-- 0xad 0x97 0x99 0x3f
new(_804dd1({253, 225, 228, 193, 219, 220, 228, 201, 209, 199, 221, 220}, 168), {Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder}, hudList)
-- f9a4f88dbc6865283767e2c49fe9155334ad
new(_804dd1({222, 194, 219, 234, 239, 239, 226, 229, 236}, 139), {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
-- 0c1c6f0cd1db7a5933f07fdf2232d012e90c96011b47743763683e
PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, hudList)
-- 0x41 0x1b 0xf5 0xa4 0x61
hudHide.MouseButton1Click:Connect(function() Cfg[_804dd1({196, 216}, 145)].HUD = false; pcall(refreshHUD) end)
hudEmpty = tMuted(new(_804dd1({54, 7, 26, 22, 46, 3, 0, 7, 14}, 98), {Size = UDim2.new(1, 0, 0, 16),
-- 0xea 0x21 0xdc 0xfc 0x42 0x6e
BackgroundTransparency = 1, Text = _804dd1({33, 32, 111, 45, 38, 33, 43, 60}, 79), Font = Enum.Font.Gotham,
-- 0xc1 0x33 0x39 0xc4
TextSize = 9, TextColor3 = Theme.muted, LayoutOrder = 1}, hudList))
-- 0000101010000010010111100101000010101100011100
if Cfg[_804dd1({199, 219}, 146)].HUDMovable then makeDraggable(hudFrame, hudHeader) end
-- ea8844b31e6df54f50bf39ca8caf912497
if Cfg[_804dd1({108, 112}, 57)].HUDResizable then
makeResizable(hudFrame, {minW = 180, minH = 80, corners = {_804dd1({208, 192}, 178), _804dd1({133, 139}, 231), _804dd1({23, 17}, 99)},
-- be31e2eceb74e84b0c56917906
onResize = function(_000x01, _0xxx1)
hudFrame.AutomaticSize = Enum.AutomaticSize.None
-- 0x7c 0x8b 0x4a 0x87
hudFrame.Size = UDim2.fromOffset(_000x01, _0xxx1)
-- 110101100000000010001010010011100011100010100010010011110
end})
end
-- 0x50 0x5b 0x19 0x68 0xa8
refreshHUD = function()
-- 4ae00de27afa458831c998d774bda96
hudFrame.Visible = Cfg[_804dd1({233, 245}, 188)].HUD and true or false
-- f6855ee75e93124d1a8d8b49640e48e57f51186bbfd2b0511bd
for _010101110, _10xxx01x00 in ipairs(hudList:GetChildren()) do
if not _10xxx01x00:IsA(_804dd1({55, 43, 46, 11, 17, 22, 46, 3, 27, 13, 23, 22}, 98)) and _10xxx01x00 ~= hudEmpty then _10xxx01x00:Destroy() end
-- 0x49 0x78 0xb2
end
local _1x1011x10 = {}
for _0xxxx0, _010010010 in pairs(Cfg.Binds or {}) do
-- 0xf3 0x36 0x31 0x18 0x0d
if _010010010 and widgets[_0xxxx0] then _1x1011x10[#_1x1011x10 + 1] = {path = _0xxxx0, key = _010010010} end
end
-- 010000000010110011010100101111110110110100100110110010101110
table.sort(_1x1011x10, function(_0x0x0x010, _10001010) return _0x0x0x010.path < _10001010.path end)
if #_1x1011x10 == 0 then hudEmpty.Visible = true; return end
hudEmpty.Visible = false
for _x0x1xx0, _10001x11 in ipairs(_1x1011x10) do
local _x00011x0x1 = widgets[_10001x11.path].get()
-- 0xa6 0x4c 0xd2
local _0101xx = new(_804dd1({248, 204, 223, 211, 219}, 190), {Size = UDim2.new(1, 0, 0, 18),
-- d81f020aa3d237597bc06c2a9b89f
BackgroundColor3 = _x00011x0x1 and Theme.panel2 or Theme.panel,
-- 9c7607560578d11111161051f8
BackgroundTransparency = 0.3, BorderSizePixel = 0, LayoutOrder = _x0x1xx0}, hudList)
-- 01111110100101111001100011001110
corner(_0101xx, 4)
-- 0x80 0x53 0x85
stroke(_0101xx, _x00011x0x1 and Theme.success or Theme.stroke, 1, 0.4)
new(_804dd1({163, 151, 132, 136, 128}, 229), {Size = UDim2.fromOffset(7, 7), Position = UDim2.new(0, 4, 0.5, -3.5),
-- 826270f838d7b6c96017964edc92ab349854f946c9de4e04e20600d8574
BackgroundColor3 = _x00011x0x1 and Theme.success or Theme.muted, BorderSizePixel = 0}, _0101xx)
-- df27a8543107fdd78b0686286d81
new(_804dd1({104, 89, 68, 72, 112, 93, 94, 89, 80}, 60), {Size = UDim2.new(1, -75, 1, 0), Position = UDim2.fromOffset(16, 0),
-- 11011010001010110001100111000100101111101
BackgroundTransparency = 1, Text = toggleLabels[_10001x11.path] or _10001x11.path,
-- 001110100001000111110110000010
Font = Enum.Font.Gotham, TextSize = 9,
-- 01101011001011110010100010011111010
TextColor3 = _x00011x0x1 and Theme.success or Theme.muted,
-- 0xac 0xf4 0x33
TextXAlignment = Enum.TextXAlignment.Left}, _0101xx)
new(_804dd1({150, 167, 186, 182, 142, 163, 160, 167, 174}, 194), {Size = UDim2.fromOffset(60, 18), Position = UDim2.new(1, -62, 0, 0),
-- 00110010001011100000000000011
BackgroundTransparency = 1, Text = _804dd1({76}, 23) .. _10001x11.key.Name .. _804dd1({196}, 153),
Font = Enum.Font.GothamBold, TextSize = 9,
-- 0xcc 0xfb 0x0f 0xa5 0xfb
TextColor3 = _x00011x0x1 and Theme.accent2 or Theme.muted,
-- 43f2ae04174f52679c1c159b23a3fb74b67661c676a59a
TextXAlignment = Enum.TextXAlignment.Right}, _0101xx)
-- e6bd96285e643f1eb5acb3a76adacfc114d96fce609ef6877576
end
end

-- 1ad32aa14e1729529806a3a80d7f42

adGui = new(_804dd1({137, 185, 168, 191, 191, 180, 157, 175, 179}, 218), {Name = _804dd1({119, 64, 68, 85, 64, 87, 100, 97}, 37), ResetOnSpawn = false,
-- 110100000010010100011111111001
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9997}, _111xx0)
adFrame = tBg(new(_804dd1({36, 16, 3, 15, 7}, 98), {Name = _804dd1({253, 248, 238, 211, 211, 200}, 188), Size = UDim2.fromOffset(240, 40),
Position = UDim2.new(0, 20, 0, 260), BackgroundColor3 = Theme.bg,
-- 77e0831dfd2e9137e8a7223a1dea1ce73ecc9290f96f4ee99d
BackgroundTransparency = 0.12, BorderSizePixel = 0,
-- 111011110011100010000000011110
AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, adGui))
-- b5054af9d9d22503426918a54476
corner(adFrame, 10)
tAcc(stroke(adFrame, Theme.neon, 1.5, 0.3))
grad(adFrame, Theme.panel, Theme.bg, 90)
-- 0x61 0xd2 0xa5 0x5d
adHeader = tPanel2(new(_804dd1({218, 238, 253, 241, 249}, 156), {Size = UDim2.new(1, 0, 0, 22),
-- 1100101111111111011111101010000101011010011101101001
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, adFrame))
-- 0001101100011000011010110111000110
corner(adHeader, 10)
grad(adHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
tAcc2(new(_804dd1({5, 52, 41, 37, 29, 48, 51, 52, 61}, 81), {Size = UDim2.new(1, -70, 1, 0), Position = UDim2.fromOffset(10, 0),
-- 110111000110111110110100100
BackgroundTransparency = 1, Text = _804dd1({38, 94, 93, 228, 133, 145, 144, 139, 233, 128, 129, 144, 129, 135, 144}, 196), Font = Enum.Font.GothamBlack,
-- 00000111110101111101001101100000001
TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, adHeader))
adHide = new(_804dd1({155, 170, 183, 187, 141, 186, 187, 187, 160, 161}, 207), {Size = UDim2.fromOffset(18, 18),
Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = _804dd1({147, 249, 227}, 113),
-- 0xcf 0xbf 0xa9
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false}, adHeader)
corner(adHide, 4)
adBody = new(_804dd1({168, 156, 143, 131, 139}, 238), {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),
-- 1100011010101000111101101000101110110000011111000010001
BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, adFrame)
new(_804dd1({110, 114, 119, 82, 72, 79, 119, 90, 66, 84, 78, 79}, 59), {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}, adBody)
new(_804dd1({150, 138, 147, 162, 167, 167, 170, 173, 164}, 195), {PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5),
-- 0xab 0xb7 0xfa
PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}, adBody)
-- 45f0d9e12d43efb03b7d67f776113e4200e67a28
adRows = {}
-- 1101110001101010000100000
function adRow(_0xxx111x0, _x00011, _001x01x)
-- beefe8eab2757ed30230a61ef
local _1x010xx = new(_804dd1({182, 130, 145, 157, 149}, 240), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 0x1e 0x7d 0x8a 0x0e
LayoutOrder = #adBody:GetChildren()}, adBody)
new(_804dd1({119, 70, 91, 87, 111, 66, 65, 70, 79}, 35), {Size = UDim2.new(0, 100, 1, 0), BackgroundTransparency = 1, Text = _x00011,
-- b81587b263ef60d19f0536b3e07fb711f00c
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.muted,
-- 0110111001111110110001110111100101001001001010
TextXAlignment = Enum.TextXAlignment.Left}, _1x010xx)
local _x01x0x1xx1 = new(_804dd1({224, 209, 204, 192, 248, 213, 214, 209, 216}, 180), {Size = UDim2.new(1, -104, 1, 0), Position = UDim2.fromOffset(104, 0),
-- 194c8b072490db752b5bec920ce0c29bef07
BackgroundTransparency = 1, Text = _804dd1({134, 228, 240}, 100), Font = Enum.Font.Code, TextSize = 9,
TextColor3 = _001x01x or Theme.accent2, TextXAlignment = Enum.TextXAlignment.Right}, _1x010xx)
-- 7e16d918aba60f37fbf31d8daea3323eb81d76c670ee8fb66f8
adRows[_0xxx111x0] = _x01x0x1xx1
-- 10110010001010110110010111011
return _x01x0x1xx1
end
adRow(_804dd1({99, 68, 81, 68, 69, 67}, 48), _804dd1({51, 20, 1, 20, 21, 19, 90}, 96), Theme.success)
-- 578291d9409cc08ea0831efe58a36bc9e7351988d95b21d76
adRow(_804dd1({46, 27, 8, 29, 31, 14}, 122), _804dd1({57, 12, 31, 10, 8, 25, 87}, 109), Theme.accent2)
-- 0xde 0x80 0x7a 0xb4 0xa5 0xe8
adRow(_804dd1({35, 0, 18, 4, 50, 17, 4, 4, 5}, 97), _804dd1({170, 137, 155, 141, 200, 187, 152, 141, 141, 140, 210}, 232), Theme.accent2)
-- 0xfd 0x3d 0x1c 0x2f 0x90 0x9f
adRow(_804dd1({156, 191, 170, 170, 171, 130, 186, 163, 187}, 207), _804dd1({32, 3, 22, 22, 23, 83, 176, 228, 73}, 115), Theme.accent3)
-- 01101011010010000010101110000011010
adRow(_804dd1({117, 86, 86, 99, 64, 85, 85, 84}, 48), _804dd1({14, 45, 45, 46, 40, 63, 34, 61, 46, 113}, 75), Theme.gold)
-- d56083bd0cf17ba7eafa85d6bd099894e54bbc0b454c9bc30becc48f290
adRow(_804dd1({169, 148, 152, 143}, 253), _804dd1({38, 27, 23, 0, 72}, 114), Theme.success)
adRow(_804dd1({206, 230, 253}, 143), _804dd1({220, 244, 239, 255, 242, 239, 243, 248, 167}, 157), Theme.accent2)
adRow(_804dd1({77, 106, 103, 103}, 11), _804dd1({24, 63, 50, 50, 100}, 94), Theme.danger)
-- aff43360737c74e25c98efd1b87
adRow(_804dd1({112, 71, 81, 82, 67, 85, 76}, 34), _804dd1({198, 241, 231, 228, 245, 227, 250, 174}, 148), Theme.gold)
-- 101001111111110101000000001100010000010001101100
adRow(_804dd1({117, 87, 92, 93}, 56), _804dd1({7, 37, 46, 47, 112}, 74), Theme.success)
-- 0xe6 0x59 0x1a 0xdc
if Cfg[_804dd1({19, 15}, 70)].ADMovable then makeDraggable(adFrame, adHeader) end
if Cfg[_804dd1({181, 169}, 224)].ADResizable then
makeResizable(adFrame, {minW = 200, minH = 100, corners = {_804dd1({35, 51}, 65), _804dd1({53, 59}, 87), _804dd1({83, 85}, 39)},
-- 225c2c72e90c246f433e57c093c54cd5fbb6b3b542
onResize = function(_011000x0x0, _1xx100x010)
-- 3e25b7b43d045d8c34fdf0f22e68f0d6a5ba695512aad70fd4fa22d11c56
adFrame.AutomaticSize = Enum.AutomaticSize.None
-- 0x8b 0xbf 0xbc 0x51 0x0c
adFrame.Size = UDim2.fromOffset(_011000x0x0, _1xx100x010)
end})
end
-- e17cde2bcb5e9ed62acf891cc6900c
adHide.MouseButton1Click:Connect(function() Cfg[_804dd1({251, 231}, 174)].AD = false; pcall(refreshAD) end)
-- 0xc7 0x0c 0xff 0x18 0xb3 0xa1
refreshAD = function()
-- 248f3fc9be87a45bd6a1d7dbe19cceb1
local _x0x1x000x = Cfg[_804dd1({155, 135}, 206)].AD and Cfg.Troll.Hump
adFrame.Visible = _x0x1x000x and true or false
-- 604b5eb5cc871ca3a6be6d622e665dc4653bbcdc66d31570963319811d
if not _x0x1x000x then return end
-- 0001001111100100001011100111001101110111000010110110
local _111x10x = TS.target
-- 0xf3 0x3a 0x3c
if HUMP.awaitingRespawn then
adRows.Status.Text = _804dd1({230, 240, 248, 229, 248, 255, 246, 145, 227, 244, 226, 225, 240, 230, 255}, 177); adRows.Status.TextColor3 = Theme.gold
-- 0xba 0xae 0x49 0xfb 0xff
elseif HUMP.fallHold > 0 then
-- 110110010110111001111000011001010101101011
adRows.Status.Text = _804dd1({130, 133, 134, 142, 131, 132, 141, 234, 139, 131, 152}, 202); adRows.Status.TextColor3 = Theme.danger
-- 0111110100100111111110011000111101000000110001000011
else
-- bdfdeda5bcfc2e6b70d862458d3f6d
adRows.Status.Text = _804dd1({208, 210, 197, 216, 199, 212}, 145); adRows.Status.TextColor3 = Theme.success
end
adRows[_804dd1({130, 183, 164, 177, 179, 162}, 214)].Text = _111x10x and _111x10x.Name or _804dd1({175, 205, 217}, 77)
-- fdd8991b4a503345e0915217
local _xx011x01 = Cfg.Troll.HumpSpeed
local _0xx100x1x = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
-- 0x5b 0x3a 0xc6 0x08
local _11x01 = math.clamp(_xx011x01 * _0xx100x1x, 0.5, 200)
adRows.BaseSpeed.Text = string.format(_804dd1({81, 90, 69, 18, 84, 60, 14}, 116), _xx011x01)
adRows.SpeedMult.Text = Cfg.Troll.HumpAutoDetect and string.format(_804dd1({244, 160, 18, 25, 5, 81}, 55), HUMP.speedMult) or _804dd1({253, 169, 15, 16, 14, 14}, 62)
-- 0x1a 0x64 0x3f
adRows.EffSpeed.Text = string.format(_804dd1({253, 246, 233, 190, 248, 144, 162}, 216), _11x01)
-- 11111001010010000001011000001110101010101000100010111111011
adRows.Tier.Text = HR.tier
-- 21d54d83b2105f9a9b210728e7c05c8ad
adRows.Air.Text = HR.airborne and _804dd1({66, 94, 72}, 59) or _804dd1({84, 85}, 58)
-- 0x66 0xad 0xd9 0xb8
adRows.Fall.Text = HR.fallingUnder and _804dd1({166, 186, 172}, 223) or _804dd1({203, 202}, 165)
-- 6b9a4d75f81e0096a314546c
adRows.Respawn.Text = HUMP.awaitingRespawn and _804dd1({226, 229, 230, 238}, 138) or _804dd1({168, 202, 222}, 74)
-- 86078697710fc567279eb16ceeab0ff94
adRows.Mode.Text = HR.autoMode
-- 0x5e 0x70 0xd2 0xb2 0x2e 0xff
end


-- 8f6f390f75d4b87ddff5701d6390373b3591d170d234c24211de1ea4c
tabOrder = {_804dd1({21, 18, 16, 24}, 125), _804dd1({134, 138, 136, 135, 132, 145}, 229), _804dd1({255, 224, 250, 252, 232, 229}, 137), _804dd1({103, 101, 124, 111}, 10), _804dd1({48, 40, 53, 43, 35}, 71), _804dd1({164, 184, 181, 173, 177, 166, 167}, 212), _804dd1({150, 144, 141, 142, 142}, 226), _804dd1({228, 229, 248, 253}, 145), _804dd1({183, 165, 178, 161}, 196), _804dd1({246, 234, 231, 239, 231}, 130)}
tabTitles = {
-- 76a6a4f7ba6b1597e54344aa409f538f7917a8a60d
home = _804dd1({81, 86, 84, 92}, 25), combat = _804dd1({110, 98, 96, 111, 108, 121}, 45), visual = _804dd1({252, 227, 249, 255, 235, 230}, 170), move = _804dd1({14, 12, 21, 6}, 67),
world = _804dd1({254, 230, 251, 229, 237}, 169), players = _804dd1({34, 62, 51, 43, 55, 32, 33}, 114), troll = _804dd1({52, 50, 47, 44, 44}, 96), util = _804dd1({84, 85, 72, 77}, 1),
-- 0x22 0xc5 0x35
save = _804dd1({36, 54, 33, 50}, 119), theme = _804dd1({23, 11, 6, 14, 6}, 67),
}
if isMod() then
-- 0x45 0x5e 0x65 0xe3 0x6f 0xc2
table.insert(tabOrder, 2, _804dd1({56, 32, 57, 50, 37}, 87))
tabTitles.owner = _804dd1({165, 202, 196, 196, 117, 26, 2, 27, 16, 7}, 85)
-- 0xf7 0x3f 0xab 0xdf 0x60 0x4a
end
-- 0x9e 0xb4 0x58 0xb1 0x03 0x69
for _00011x01, _x0011001 in ipairs(tabOrder) do makeTab(_x0011001, tabTitles[_x0011001]) end
function doModBan(_xxx1x11, _1xx01010x, _0x010x1)
-- 722405ea4af84a1269e09b729b132f56d53989bc80097155ca33046
if not _xxx1x11 or _xxx1x11 == _804dd1({}, 0) then
-- 53f73a5fc707d4096921ee9b53d6c06c01e8b48cdfa0d
notify(_804dd1({58, 25, 22}, 120), _804dd1({124, 93, 18, 118, 91, 65, 81, 93, 64, 86, 18, 123, 118, 18, 83, 68, 83, 91, 94, 83, 80, 94, 87}, 50), Theme.gold, 3); return
end
-- 0x3e 0x5d 0x54 0xdb 0x78 0x75
task.spawn(function()
local _110x11110x = _10x11x1x:JSONEncode({
-- 0x1e 0xb7 0x8b 0x0d 0xc1
robloxId = tostring(_1100x01x.UserId), key = SESSION_KEY or _804dd1({}, 0),
targetDiscordId = tostring(_xxx1x11),
-- 0011001111110111100110101
reason = _1xx01010x or _804dd1({}, 0), duration = _0x010x1 or 0,
-- 0011001001000010110100001010
})
-- 0x43 0xf3 0xe8 0x2b 0x81
local _00x110, _x01x01x111 = httpPost(KEY_API .. _804dd1({247, 187, 176, 185, 172, 247, 186, 185, 182}, 216), _110x11110x)
if _00x110 then
local _10001011 = (_0x010x1 and _0x010x1 > 0) and (_804dd1({136, 129, 156, 206}, 238) .. tostring(math.floor(_0x010x1 / 60)) .. _804dd1({69}, 40)) or _804dd1({136, 157, 138, 149, 153, 150, 157, 150, 140, 148, 129}, 248)
notify(_804dd1({99, 64, 79, 79, 68, 69}, 33), tostring(_xxx1x11) .. _804dd1({1}, 33) .. _10001011, Theme.success, 3)
-- 0101101010101101111001011001010111110
else
-- 5827a9a2b4042ca7a3e44d9c9d66f1e4c990ef4b64f696
local _0xxxx00101 = parseErrorReason(_x01x01x111)
notify(_804dd1({205, 238, 225, 175, 233, 238, 230, 227, 234, 235}, 143), _0xxxx00101, Theme.danger, 8, _0xxxx00101)
end
-- 0001000111001111001110011110010000000101100100110000
end)
end

-- 010000000011000000000111001
function doModDelete(_10010x010)
-- 010111010100001010000101001111110100001011000011100110101100
if not _10010x010 then return end
-- 0x4f 0x54 0xa7 0x73
task.spawn(function()
-- 0111101110111010101111010101111000101010110010
local _1xxx1x1 = _10x11x1x:JSONEncode({
robloxId = tostring(_1100x01x.UserId), key = SESSION_KEY or _804dd1({}, 0),
-- 0010010111101110001111001111000011110100100111011110
messageId = _10010x010,
})
local _0x0x11x1, _xx01x10001 = httpPost(KEY_API .. _804dd1({49, 125, 118, 127, 106, 49, 122, 123, 114, 123, 106, 123}, 30), _1xxx1x1)
-- ced391aa2c1dff8a6c8781f553fc304f8a84bde76c66b23ba35c0e5b0
if _0x0x11x1 then
for _x1xxxx, _0011x1 in ipairs(Chat.listeners) do
if _0011x1 and type(fn) == _804dd1({188, 175, 180, 185, 174, 179, 181, 180}, 218) then
-- 0xf9 0x46 0xc0 0x0d 0x92 0x88
pcall(fn, {__deleteMsgId = msgId})
-- 901a2aed9622d849abd70e01
end
end
notify(_804dd1({29, 60, 53, 60, 45, 60, 61}, 89), _804dd1({138, 130, 148, 148, 134, 128, 130, 199, 196}, 231) .. tostring(_10010x010), Theme.success, 2.5)
-- 7d8fb35ed49012d5650beb71
else
local _11x10xx = parseErrorReason(_xx01x10001)
-- 101100001001100000101100010
notify(_804dd1({157, 188, 181, 188, 173, 188, 249, 191, 184, 176, 181, 188, 189}, 217), _11x10xx, Theme.danger, 8, _11x10xx)
-- c7597f71122a8161acbec8703010d15ca63
end
-- 0x3f 0xc6 0x2b 0x58 0x74 0xde
end)
end

-- 0x2f 0x18 0x7a 0x51 0xf4 0x8d

-- 0101100011000001110000000000010110001111000100011110
local function _1000x1(_0001001)
-- 6318df1837c80052a7118c3244cd6126579a4eb316
if not isMod() then return end
-- 0x5b 0x9b 0x18 0x60 0xfd
if not _0001001 or not _0001001[_804dd1({255, 242, 232, 248, 244, 233, 255, 210, 255}, 155)] then
-- 9759fd160a152ae06ffe9b2276f7d26d414dc0ac509f81ced2afa8eaf3a
notify(_804dd1({112, 82, 89}, 61), _804dd1({69, 100, 43, 79, 98, 120, 104, 100, 121, 111, 43, 66, 79, 43, 106, 125, 106, 98, 103, 106, 105, 103, 110, 43, 109, 100, 121, 43, 127, 99, 98, 120, 43, 126, 120, 110, 121}, 11), Theme.gold, 3); return
-- f0b78d99a656e5d6d8ee1127f08d078d31ddfa7ba3e53e8a474
end
-- a3f0e08b3ca4fe3b28d7072335efcf4f72d1638359332706889b4
local _xx11100 = _111xx0:FindFirstChild(_804dd1({103, 80, 84, 69, 80, 71, 100, 64, 92, 86, 94, 120, 90, 81}, 53))
-- 01011110111100101100010100011000000101100
if _xx11100 then _xx11100:Destroy() end
local _xxx111 = new(_804dd1({104, 88, 73, 94, 94, 85, 124, 78, 82}, 59), {Name = _804dd1({35, 20, 16, 1, 20, 3, 32, 4, 24, 18, 26, 60, 30, 21}, 113), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10050}, _111xx0)
local _1xx00111xx = new(_804dd1({61, 12, 17, 29, 43, 28, 29, 29, 6, 7}, 105), {Size = UDim2.fromScale(1, 1),
-- 10110010111111101101010000101010000101110100010010010111000
BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 0.65,
Text = _804dd1({}, 0), AutoButtonColor = false, ZIndex = 1}, _xxx111)
_1xx00111xx.MouseButton1Click:Connect(function() _xxx111:Destroy() end)
-- f9038200999f41cf47ef36a163de21dbfe8f20ae1d452681e1e3b
local _10x1x1x, _011000 = 340, 330
-- d5f41fecd29c85c9465fb132fbcde7861c
local _0x0x0xxx10, _1100x1 = _000110001:GetMouseLocation()
local _0000111xx = new(_804dd1({131, 183, 164, 168, 160}, 197), {Size = UDim2.fromOffset(_10x1x1x, _011000),
Position = UDim2.fromOffset(
math.clamp(_0x0x0xxx10 - _10x1x1x / 2, 20, _010111111x.ViewportSize.X - _10x1x1x - 20),
-- e773917e1552ae7439294ffa36fcee93cf5253f42fc6ebd47
math.clamp(_1100x1 - 40, 20, _010111111x.ViewportSize.Y - _011000 - 20)),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, _xxx111)
corner(_0000111xx, 14)
-- 0x88 0x3b 0x4f
grad(_0000111xx, Color3.fromRGB(20, 10, 40), Theme.bgDeep, 90)
stroke(_0000111xx, Theme.neon, 2, 0.15)
-- 111011110101001001110100010010101100111101100
dropShadow(_0000111xx, 14, 16, 0.7)
-- 010011101000100000001000101011101101111001001010111011011000
new(_804dd1({89, 109, 126, 114, 122}, 31), {Size = UDim2.new(1, 0, 0, 3), BackgroundColor3 = Theme.neon,
BorderSizePixel = 0, ZIndex = 3}, _0000111xx)
new(_804dd1({80, 97, 124, 112, 72, 101, 102, 97, 104}, 4), {Size = UDim2.new(1, -20, 0, 20), Position = UDim2.fromOffset(14, 12),
BackgroundTransparency = 1, Text = _804dd1({184, 186, 177, 176, 167, 180, 161, 188, 186, 187}, 245), Font = Enum.Font.GothamBlack,
-- 011110011100110011000010101110000101101010001111100010011
TextSize = 12, TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _0000111xx)
new(_804dd1({42, 27, 6, 10, 50, 31, 28, 27, 18}, 126), {Size = UDim2.new(1, -20, 0, 15), Position = UDim2.fromOffset(14, 32),
BackgroundTransparency = 1, Text = _804dd1({6}, 70) .. tostring(_0001001.name or _804dd1({115}, 76)),
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _0000111xx)
-- adfda1d6aa0bed614129805a2a127af43f7a6171e36e7ebe959
new(_804dd1({38, 23, 10, 6, 62, 19, 16, 23, 30}, 114), {Size = UDim2.new(1, -20, 0, 15), Position = UDim2.fromOffset(14, 48),
BackgroundTransparency = 1, Text = _804dd1({44, 33, 59, 43, 39, 58, 44, 114, 104}, 72) .. tostring(_0001001[_804dd1({171, 166, 188, 172, 160, 189, 171, 134, 171}, 207)]),
Font = Enum.Font.Code, TextSize = 9, TextColor3 = Theme.accent2,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _0000111xx)
-- 2af142a546c096aa4d5e3b371a3cfc70e36d8932be36a47be208be16e2e2
local _x00111xx10 = tPanel2(new(_804dd1({124, 77, 80, 92, 106, 71, 80}, 40), {Size = UDim2.new(1, -28, 0, 26),
Position = UDim2.fromOffset(14, 70), BackgroundColor3 = Theme.panel2,
-- 01ead46e5206a34c1d8a713a4be59a47571038481
Text = _804dd1({}, 0), PlaceholderText = _804dd1({133, 146, 150, 132, 152, 153, 215, 223, 152, 135, 131, 158, 152, 153, 150, 155, 222}, 247), PlaceholderColor3 = Theme.muted,
-- 010000110101111011011100110010010
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text,
-- 49a612a983e267e6869e283aa47028b4a869fb31ee304d729e5
ClearTextOnFocus = false, Active = true, Selectable = true, ZIndex = 50}, _0000111xx))
corner(_x00111xx10, 6)
tStroke(stroke(_x00111xx10, Theme.strokeSoft, 1))
local function _x0xx10(_xxx10xx1, _10x1110x0, _100x100, _xx001010)
-- 0xcc 0xef 0xe7 0x34
local _0101010x = new(_804dd1({19, 34, 63, 51, 5, 50, 51, 51, 40, 41}, 71), {Size = UDim2.new(1, -28, 0, 26),
Position = UDim2.fromOffset(14, _xxx10xx1), BackgroundColor3 = Theme.panel2,
-- 0x8c 0x02 0xcd 0x56 0x60
Text = _10x1110x0, Font = Enum.Font.GothamBold, TextSize = 10,
-- 111101010000111011011011
TextColor3 = _100x100, AutoButtonColor = false, ZIndex = 5}, _0000111xx)
-- 0xa4 0xd3 0xed
corner(_0101010x, 6)
local _x01100x0x = stroke(_0101010x, Theme.strokeSoft, 1)
-- 0x71 0xc1 0xf9 0xa0
_0101010x.MouseEnter:Connect(function()
_xx0111:Create(_0101010x, TweenInfo.new(0.12), {BackgroundColor3 = Theme.panel3}):Play()
_x01100x0x.Color = _100x100
-- dfee3a131333b6b241486a5ff204627e8f
end)
-- 0x4f 0x35 0x7b 0x7a
_0101010x.MouseLeave:Connect(function()
_xx0111:Create(_0101010x, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
_x01100x0x.Color = Theme.strokeSoft
end)
-- 0x97 0x3f 0x10 0x34 0x67
_0101010x.MouseButton1Click:Connect(function()
-- 17cb5ceabc2c81b09d8a3c4e21df1f6b69c
_xx001010()
-- 1001000010001100000001010111110010001000001011000010
_xxx111:Destroy()
end)
-- 10010001000011001010110111110111110000001010011
end
_x0xx10(104, _804dd1({35, 78, 112, 225, 225, 149, 168, 172, 164, 174, 180, 181, 225, 244, 225, 172, 168, 175}, 193), Theme.gold, function() doModBan(_0001001[_804dd1({126, 115, 105, 121, 117, 104, 126, 83, 126}, 26)], _x00111xx10.Text, 300) end)
_x0xx10(134, _804dd1({3, 110, 80, 193, 193, 181, 136, 140, 132, 142, 148, 149, 193, 208, 193, 137, 142, 148, 147}, 225), Theme.gold, function() doModBan(_0001001[_804dd1({47, 34, 56, 40, 36, 57, 47, 2, 47}, 75)], _x00111xx10.Text, 3600) end)
_x0xx10(164, _804dd1({193, 172, 146, 3, 3, 119, 74, 78, 70, 76, 86, 87, 3, 17, 23, 3, 75, 76, 86, 81, 80}, 35), Theme.gold, function() doModBan(_0001001[_804dd1({235, 230, 252, 236, 224, 253, 235, 198, 235}, 143)], _x00111xx10.Text, 86400) end)
-- 0xfc 0x7a 0x9d
_x0xx10(194, _804dd1({225, 142, 133, 185, 49, 49, 83, 112, 127, 49, 97, 116, 99, 124, 112, 127, 116, 127, 101, 125, 104}, 17), Theme.danger, function() doModBan(_0001001[_804dd1({253, 240, 234, 250, 246, 235, 253, 208, 253}, 153)], _x00111xx10.Text, 0) end)
-- 04d0456a5be1389ba36a0d7021406ad31bed59e00f75dbdfdfe
if _0001001.msgId then
_x0xx10(224, _804dd1({199, 168, 160, 166, 23, 23, 115, 82, 91, 82, 67, 82, 23, 67, 95, 94, 68, 23, 90, 82, 68, 68, 86, 80, 82}, 55), Theme.danger, function() doModDelete(_0001001.msgId) end)
end
-- 0000010100010101011000101110100101000000000011001101111
_x0xx10(254, _804dd1({29, 99, 106, 223, 223, 188, 158, 145, 156, 154, 147}, 255), Theme.muted, function() end)
-- 0xbb 0x58 0x17 0x2e
end

-- 798d39ad6d0d4a43fc9b4c06edcb7f649a6058b00d6

do
-- 1010001011100010110010101011110101100001000101111000101
local _0x0110 = _804dd1({110, 105, 107, 99}, 6)
-- 110101111000001011000101100101000100
section(_0x0110, _804dd1({121, 123, 102, 111, 96, 101, 108}, 41), _804dd1({210, 189, 179, 134}, 34))
-- 00011111110001110101000111100110011100011010
buttonRow(_0x0110, _804dd1({56, 15, 0, 5, 3, 4}, 106), _804dd1({250, 237, 226, 231, 225, 230}, 168), function()
_110xxx0x1:Teleport(game.PlaceId, _1100x01x)
end)
buttonRow(_0x0110, _804dd1({61, 10, 28, 10, 27, 79, 44, 7, 14, 29, 14, 12, 27, 10, 29}, 111), _804dd1({210, 197, 211, 197, 212}, 128), function()
local _xx001x00xx = hum(); if _xx001x00xx then _xx001x00xx.Health = 0 end
end)

-- 0010011011100010110110110010011
section(_0x0110, _804dd1({235, 224, 227, 238, 237, 224, 140, 239, 228, 237, 248, 140, 110, 27, 140, 207, 222, 195, 223, 223, 129, 203, 205, 193, 201}, 172), _804dd1({187, 212, 199, 219}, 75))
new(_804dd1({110, 95, 66, 78, 118, 91, 88, 95, 86}, 58), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
Text = _804dd1({4, 23, 4, 19, 24, 65, 51, 36, 32, 49, 36, 51, 65, 20, 18, 4, 19, 65, 8, 15, 65, 4, 23, 4, 19, 24, 65, 6, 0, 12, 4, 65, 18, 4, 4, 18, 65, 21, 9, 8, 18, 65, 18, 0, 12, 4, 65, 2, 9, 0, 21}, 97),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
-- 110111011001101011001111111
TextXAlignment = Enum.TextXAlignment.Left,
-- 0010101001110110111111010000
LayoutOrder = #pages[_0x0110]:GetChildren(), ZIndex = 33}, pages[_0x0110])

local _110x1x0xxx = tPanel(new(_804dd1({107, 95, 76, 64, 72}, 45), {Size = UDim2.new(1, 0, 0, 300),
-- 0111100111101111110110111010011100001001100110100100
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
LayoutOrder = #pages[_0x0110]:GetChildren(), ZIndex = 33}, pages[_0x0110]))
corner(_110x1x0xxx, 10)
tStroke(stroke(_110x1x0xxx, Theme.strokeSoft, 1, 0.4))

-- 00101010011101010101010000111100111110
local _111xxx = new(_804dd1({9, 57, 40, 53, 54, 54, 51, 52, 61, 28, 40, 59, 55, 63}, 90), {Size = UDim2.new(1, -8, 1, -66),
Position = UDim2.fromOffset(4, 4), BackgroundTransparency = 1, BorderSizePixel = 0,
-- 111011111111111010011100101000101110011100001011
ScrollBarThickness = 3, ScrollBarImageColor3 = Theme.neon,
CanvasSize = UDim2.new(0, 0, 0, 0), AutomaticCanvasSize = Enum.AutomaticSize.Y,
-- 1100100000000111010011011101001010110010101111000
ZIndex = 34}, _110x1x0xxx)
new(_804dd1({225, 253, 248, 221, 199, 192, 248, 213, 205, 219, 193, 192}, 180), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, _111xxx)
new(_804dd1({97, 125, 100, 85, 80, 80, 93, 90, 83}, 52), {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
-- 0xc4 0x06 0x68 0xc0 0x83 0xd9
PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _111xxx)

-- 16c8b195077cb0b741148e55b1be376358354988cddd5a
local _x0x10x1 = tPanel2(new(_804dd1({32, 20, 7, 11, 3}, 102), {Size = UDim2.new(1, -8, 0, 18),
Position = UDim2.new(0, 4, 1, -58), BackgroundColor3 = Theme.panel2,
BackgroundTransparency = 0.3, BorderSizePixel = 0, ZIndex = 34}, _110x1x0xxx))
corner(_x0x10x1, 4)
new(_804dd1({128, 177, 172, 160, 152, 181, 182, 177, 184}, 212), {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(12, 0),
-- 0x8f 0xf3 0xbd 0xfe 0x8d
BackgroundTransparency = 1, Text = _804dd1({120, 13, 21, 186, 246, 243, 236, 255, 186, 88, 45, 186, 253, 246, 245, 248, 251, 246, 186, 88, 45, 186, 234, 245, 246, 246, 243, 244, 253, 186, 174, 233}, 154),
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.success,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 35}, _x0x10x1)

-- 111101011010000100010010100110011010110001100000110
local _xxxx1x110x = tPanel2(new(_804dd1({40, 28, 15, 3, 11}, 110), {Size = UDim2.new(1, -8, 0, 28),
-- 01110111111110100101010100111101011
Position = UDim2.new(0, 4, 1, -38), BackgroundColor3 = Theme.panel2,
BorderSizePixel = 0, ZIndex = 50, Active = true}, _110x1x0xxx))
corner(_xxxx1x110x, 7)
-- 0dbc2f19c9cf0df9c4b83d6488d9d3bace13
tStroke(stroke(_xxxx1x110x, Theme.strokeSoft, 1))

local _x1100 = new(_804dd1({100, 85, 72, 68, 114, 95, 72}, 48), {Size = UDim2.new(1, -66, 1, 0),
Position = UDim2.fromOffset(6, 0), BackgroundTransparency = 1,
Active = true, Selectable = true,
-- 0x9f 0xb5 0x1c 0x25 0x87 0x66
PlaceholderText = _804dd1({94, 86, 64, 64, 82, 84, 86, 19, 86, 69, 86, 65, 74, 92, 93, 86, 31, 19, 86, 69, 86, 65, 74, 68, 91, 86, 65, 86, 209, 179, 149}, 51), PlaceholderColor3 = Theme.muted,
-- 00101111010111111000000000110101000000
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text, Text = _804dd1({}, 0),
-- a5beb1896620c99b767b318e18e897d61367d1c01a55d7133b7b51940f2a
ClearTextOnFocus = false, ZIndex = 51}, _xxxx1x110x)
-- 11110001111011001101111111101010010000
local _x101x1x = new(_804dd1({113, 64, 93, 81, 103, 80, 81, 81, 74, 75}, 37), {Size = UDim2.fromOffset(54, 20),
-- beb8cb6a7a393154becf484560837582e3b
Position = UDim2.new(1, -58, 0.5, -10), BackgroundColor3 = Theme.neon, Text = _804dd1({4, 18, 25, 19}, 87),
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Color3.new(1, 1, 1),
-- 0xb7 0xd3 0x32 0x3c
AutoButtonColor = false, ZIndex = 51}, _xxxx1x110x)
-- a52c28e1eb0c85c4e6e58d9060
corner(_x101x1x, 5)

local _101x10x0x1 = {}
-- 01100101001011010000010000110100111000010001
local function _1x1xxx110(_x1x11xxx)
if type(e) == _804dd1({18, 7, 4, 10, 3}, 102) and e.__deleteMsgId then
-- a9a8384465972857b2223ed4d902a88345c411cc8914fea24902551
local _001011010 = _101x10x0x1[_x1x11xxx.__deleteMsgId]
if _001011010 and _001011010.row and _001011010.row.Parent then _001011010.row:Destroy() end
_101x10x0x1[_x1x11xxx.__deleteMsgId] = nil
-- 0111110111110010010111000100001010110100110
return
end
if not _111xxx.Parent then return end
local _xxx1x01xx1 = new(_804dd1({30, 42, 57, 53, 61}, 88), {Size = UDim2.new(1, 0, 0, 42), BackgroundTransparency = 1,
LayoutOrder = (#_111xxx:GetChildren()) + 1, ZIndex = 35,
AutomaticSize = Enum.AutomaticSize.Y}, _111xxx)
local _0x0x11x0 = new(_804dd1({85, 100, 121, 117, 67, 116, 117, 117, 110, 111}, 1), {Size = UDim2.fromOffset(30, 30),
-- 0x28 0xb6 0x1f
Position = UDim2.fromOffset(0, 2), BackgroundTransparency = 1,
Text = _804dd1({}, 0), AutoButtonColor = false, ZIndex = 36}, _xxx1x01xx1)
-- 0xf1 0x09 0xa6
local _00x001x10 = new(_804dd1({27, 63, 51, 53, 55, 30, 51, 48, 55, 62}, 82), {Size = UDim2.fromScale(1, 1),
-- 0x50 0xf6 0x1c
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Image = _804dd1({}, 0), ZIndex = 36}, _0x0x11x0)
corner(_00x001x10, 15)
-- 100010011101011000011111101110101110001111011001001011
local _11111 = new(_804dd1({195, 242, 239, 227, 219, 246, 245, 242, 251}, 151), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = (_x1x11xxx.sender or _804dd1({195}, 252)):sub(1, 1):upper(),
Font = Enum.Font.GothamBlack, TextSize = 13, TextColor3 = Color3.new(1, 1, 1),
ZIndex = 37}, _0x0x11x0)
local _11xx10x0 = new(_804dd1({213, 225, 242, 254, 246}, 147), {Size = UDim2.fromScale(1, 1),
-- a8414cd80e5fba9708f2e3d4a6719d6aa5469c999c48c5f764d755
BackgroundTransparency = 1, ZIndex = 38}, _0x0x11x0)
-- 8ee521a07a85c98d879ca129efc80cfdd
corner(_11xx10x0, 15)
-- 01000101010100000110010110010
local _xx0x0 = _x1x11xxx[_804dd1({47, 41, 63, 40, 19, 62}, 90)] and getRankFor(_x1x11xxx[_804dd1({118, 112, 102, 113, 74, 103}, 3)])
local _xxx111x = _x1x11xxx.col or Theme.neon
if _xx0x0 and BADGE_STYLE[_xx0x0] then _xxx111x = BADGE_STYLE[_xx0x0].color end
-- 111101010111011111110010010001010111
stroke(_11xx10x0, _xxx111x, _xx0x0 and 2 or 1.4, 0.15)
-- 84a74afb80beffd87ac44217
if _x1x11xxx[_804dd1({41, 62, 41, 60, 41, 58}, 72)] and _x1x11xxx[_804dd1({117, 98, 117, 96, 117, 102}, 20)] ~= _804dd1({}, 0) then
-- 110110111010010110001011001011001100010
task.spawn(function()
-- 627ef652629acba3300b7a6f09056d56985c1299eb
local _x1x00x0x = getChatAvatarAsset(_x1x11xxx[_804dd1({186, 173, 186, 175, 186, 169}, 219)])
if _x1x00x0x and _00x001x10.Parent then
-- 1110101011111110100101100111011010111011011
_00x001x10.Image = _x1x00x0x
_00x001x10.ScaleType = Enum.ScaleType.Crop
_11111.Visible = false
-- 0001111001101010011110000101000000101
end
end)
end
if isMod() then
_0x0x11x0.MouseButton1Click:Connect(function()
_1000x1({
[_804dd1({17, 23, 1, 22, 45, 0}, 100)] = _x1x11xxx[_804dd1({164, 162, 180, 163, 152, 181}, 209)], [_804dd1({105, 100, 126, 110, 98, 127, 105, 68, 105}, 13)] = _x1x11xxx[_804dd1({120, 117, 111, 127, 115, 110, 120, 85, 120}, 28)],
name = (_x1x11xxx.discordName and _x1x11xxx.discordName ~= _804dd1({}, 0) and (_804dd1({243}, 179) .. _x1x11xxx.discordName)) or _x1x11xxx.sender,
-- 00100100000100001000100111001111001010011001100101
msgId = _x1x11xxx.msgId,
-- 3a428fe301b9423293ea6e870b4dea85fd1418b9d2321c87afe1
})
end)
-- 10111111001011111100100111001110001011101001110111011
end
local _01000x10 = new(_804dd1({50, 6, 21, 25, 17}, 116), {Size = UDim2.new(1, -38, 0, 0),
-- 001100111111100110110100001101111010
Position = UDim2.fromOffset(38, 0), BackgroundTransparency = 1,
AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 36}, _xxx1x01xx1)
local _1x1xx10x10 = _804dd1({}, 0)
if _xx0x0 and BADGE_STYLE[_xx0x0] then
-- 6d5aadf81d40f04e32c4807502b762e9a026d6cc176de302e7cf5f
local _1xx11xx001 = BADGE_STYLE[_xx0x0]
-- ae6dc5386e146cf40cc854ef2bf6854eebdee
_1x1xx10x10 = string.format(_804dd1({154, 192, 201, 200, 210, 134, 197, 201, 202, 201, 212, 155, 132, 133, 131, 213, 132, 152, 131, 213, 134, 131, 213, 154, 137, 192, 201, 200, 210, 152, 134, 134}, 166), _1xx11xx001.color:ToHex(), _1xx11xx001.emoji, _1xx11xx001.label)
-- 0xcf 0x6f 0xf2 0x8c 0x05
end
local _x0011x101x = _804dd1({}, 0)
if _x1x11xxx.placeId and _x1x11xxx.placeId ~= _804dd1({}, 0) and tostring(_x1x11xxx.placeId) ~= tostring(game.PlaceId) then
_x0011x101x = string.format(_804dd1({9, 9, 21, 79, 70, 71, 93, 9, 74, 70, 69, 70, 91, 20, 11, 10, 31, 108, 17, 27, 107, 31, 11, 23, 114, 89, 69, 72, 74, 76, 9, 12, 90, 116, 21, 6, 79, 70, 71, 93, 23}, 41), tostring(_x1x11xxx.placeId))
end
local _11x10xx0 = string.format(_804dd1({114, 40, 33, 32, 58, 110, 45, 33, 34, 33, 60, 115, 108, 109, 118, 8, 15, 120, 12, 11, 108, 112, 107, 61, 114, 97, 40, 33, 32, 58, 112, 110, 110, 107, 61, 114, 40, 33, 32, 58, 110, 45, 33, 34, 33, 60, 115, 108, 109, 107, 61, 108, 112, 114, 44, 112, 107, 61, 114, 97, 44, 112, 114, 97, 40, 33, 32, 58, 112, 107, 61}, 78),
-- 0xf2 0x41 0x21 0xe6 0x97 0xdd
os.date(_804dd1({176, 221, 175, 176, 216}, 149), math.floor(_x1x11xxx.time or tick())),
_1x1xx10x10,
-- 00011011011011110011001101100101101110011101011011111010001
(_x1x11xxx.col or Color3.fromRGB(148, 204, 255)):ToHex(),
(_x1x11xxx.discordName and _x1x11xxx.discordName ~= _804dd1({}, 0) and (_804dd1({124}, 60) .. _x1x11xxx.discordName)) or _x1x11xxx.sender,
_x0011x101x)
-- a33c15472b4d1b6d70e29b567706424dbba77880b137719a
new(_804dd1({168, 153, 132, 136, 176, 157, 158, 153, 144}, 252), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 101111001000111001100111111001001110010110010001011001011
RichText = true, Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
-- 010111110101001110110010111000010001110000011011010000101010
Text = _11x10xx0, ZIndex = 37}, _01000x10)
-- 0xe3 0x6f 0xa4 0xae 0x1c 0x6c
new(_804dd1({85, 100, 121, 117, 77, 96, 99, 100, 109}, 1), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
-- 0x4a 0x23 0x58 0xb7 0xb4
TextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y, Font = Enum.Font.Gotham,
TextSize = 10, TextColor3 = Theme.text, RichText = true,
-- b8a8852c2d7b4f9c5e1366e5bbaefa272d3ea27b3ab7
TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
-- 0xac 0x20 0xc3 0x9d
Position = UDim2.fromOffset(0, 14), Text = _x1x11xxx.text or _804dd1({}, 0), ZIndex = 37}, _01000x10)
-- 3fa7f1750200b788368dddd557d1f2a525b3ce04521
if isMod() and _x1x11xxx[_804dd1({17, 28, 6, 22, 26, 7, 17, 60, 17}, 117)] then
-- ba6d455d2a95684e7117c52105e5310699d9599513128ad1d
local _101xxx1 = new(_804dd1({132, 176, 163, 175, 167}, 194), {Size = UDim2.new(1, -38, 0, 22),
Position = UDim2.fromOffset(38, 34), BackgroundTransparency = 1,
Visible = false, ZIndex = 40}, _xxx1x01xx1)
-- 1101000000101000011111110001010101000110001
new(_804dd1({227, 255, 250, 223, 197, 194, 250, 215, 207, 217, 195, 194}, 182), {FillDirection = Enum.FillDirection.Horizontal,
-- 1111000110000010010001000110111001011100
HorizontalAlignment = Enum.HorizontalAlignment.Left,
-- 10000000101000001001011010010011111100100101111010111
VerticalAlignment = Enum.VerticalAlignment.Center,
Padding = UDim.new(0, 4)}, _101xxx1)
local function _x01100xx0x(_0x1x0xx00, _11xxxx0, _x00xxx)
-- 0x75 0x62 0xd8 0x52
local _xx0110x = new(_804dd1({11, 58, 39, 43, 29, 42, 43, 43, 48, 49}, 95), {Size = UDim2.fromOffset(0, 18),
AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = Theme.panel2,
Text = _0x1x0xx00, Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = _11xxxx0, AutoButtonColor = false, ZIndex = 41}, _101xxx1)
corner(_xx0110x, 4)
new(_804dd1({191, 163, 186, 139, 142, 142, 131, 132, 141}, 234), {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _xx0110x)
-- 0x55 0x2f 0x04 0xe4 0x38 0x77
stroke(_xx0110x, _11xxxx0, 1, 0.4)
-- 1011011110011001010000110001001110110
_xx0110x.MouseButton1Click:Connect(_x00xxx)
end
if _x1x11xxx.msgId then _x01100xx0x(_804dd1({10, 101, 109, 107, 218, 158, 159, 150, 159, 142, 159}, 250), Theme.danger, function() doModDelete(_x1x11xxx.msgId) end) end
_x01100xx0x(_804dd1({169, 196, 250, 107, 126, 38}, 75), Theme.gold, function() doModBan(_x1x11xxx[_804dd1({158, 147, 137, 153, 149, 136, 158, 179, 158}, 250)], _804dd1({}, 0), 300) end)
-- 0xef 0x9c 0xbc 0xa0
_x01100xx0x(_804dd1({187, 214, 232, 121, 104, 49}, 89), Theme.gold, function() doModBan(_x1x11xxx[_804dd1({233, 228, 254, 238, 226, 255, 233, 196, 233}, 141)], _804dd1({}, 0), 3600) end)
-- 85a6999d689c17a61a5f795cd01f279d73ac345d6e
_x01100xx0x(_804dd1({183, 216, 211, 239, 103, 37, 38, 41}, 71), Theme.danger, function() doModBan(_x1x11xxx[_804dd1({203, 198, 220, 204, 192, 221, 203, 230, 203}, 175)], _804dd1({}, 0), 0) end)
-- 010010001100011011001001111011101100110111000010110
_xxx1x01xx1.MouseEnter:Connect(function() _101xxx1.Visible = true end)
-- 0x33 0xcb 0x21 0xad 0xa0 0xaf
_xxx1x01xx1.MouseLeave:Connect(function() _101xxx1.Visible = false end)
end
-- 3b44e42dd1c300ee16d153ddaac9eae50ce52abd6fff
if _x1x11xxx.msgId then _101x10x0x1[_x1x11xxx.msgId] = {row = _xxx1x01xx1, [_804dd1({88, 94, 72, 95, 100, 73}, 45)] = _x1x11xxx[_804dd1({245, 243, 229, 242, 201, 228}, 128)], [_804dd1({180, 185, 163, 179, 191, 162, 180, 153, 180}, 208)] = _x1x11xxx[_804dd1({97, 108, 118, 102, 106, 119, 97, 76, 97}, 5)]} end
-- 1001100000010100010101100000100011110010010
task.defer(function()
_111xxx.CanvasPosition = Vector2.new(0, math.max(0, _111xxx.AbsoluteCanvasSize.Y))
-- 73c72c4f63203a8d7195d47a3be3fd7a59be11e85be1ff14dfbb70490fa7
end)
end
-- 100111101110000111111111
Chat.listeners[#Chat.listeners + 1] = _1x1xxx110
-- 0x0f 0x0a 0x80 0x21 0x06
for _00x000x1x0, _011x00xx in ipairs(Chat.messages) do _1x1xxx110(_011x00xx) end

local function _010110101()
-- 0xd2 0x36 0xb8 0x95 0x89 0x24
local _x01x0011xx = _x1100.Text or _804dd1({}, 0)
-- a9a04776b743aaf83a095298524308527
if _x01x0011xx:gsub(_804dd1({51, 101}, 22), _804dd1({}, 0)) == _804dd1({}, 0) then return end
-- a14c752d3ff3ad20fa3f0696e3759380835f5c1266e767f6ae
_x1100.Text = _804dd1({}, 0)
-- 0xc4 0xbf 0xc0
local _1x01xxx = sendChat(_x01x0011xx)
if _1x01xxx then
pulse(_x101x1x, 0.94, 0.06)
-- 10111000010000010001111010001101000110110011010100101100
glow(_x101x1x, Theme.accent2, 0.4)
end
-- 0100100001101001011000010100001110101110101111000101
end
-- 1d481613d950b7062cffedec831
_x101x1x.MouseButton1Click:Connect(_010110101)
_x1100.FocusLost:Connect(function(_xx01x111) if _xx01x111 then _010110101() end end)

-- 0xda 0x18 0xa7 0x6b 0x3c 0x38
task.spawn(function()
local _x0x000x = 0
-- 10001001101011101111010111010110111010010111100000100
while gui and gui.Parent do
task.wait(4)
-- 11001011000111111111111000
local _x10x1xx, _11x0x0x0 = httpGet(KEY_API .. _804dd1({15, 67, 72, 65, 84, 15, 70, 69, 84, 67, 72, 31, 83, 73, 78, 67, 69, 29}, 32) .. _x0x000x .. _804dd1({140, 198, 195, 199, 195, 222, 151, 159, 154}, 170))
if _x10x1xx and _11x0x0x0 then
-- 0x46 0xe9 0xe6 0x3e 0x85 0x3b
local _00x110001, _11010 = pcall(function() return _10x11x1x:JSONDecode(_11x0x0x0) end)
-- 001011001011111100101111000000001100011011
if _00x110001 and type(data) == _804dd1({117, 96, 99, 109, 100}, 1) and data.messages then
for _1100x1x, _0xx10x1 in ipairs(_11010.messages) do
-- 0x10 0xed 0x85 0x6d 0x29
if _0xx10x1.id and _0xx10x1.id > _x0x000x then _x0x000x = _0xx10x1.id end
addChat(_0xx10x1.sender, _0xx10x1.text, false, Color3.fromRGB(148, 204, 255),
_0xx10x1[_804dd1({107, 124, 107, 126, 107, 120}, 10)], _0xx10x1.discordName, _0xx10x1.country, _0xx10x1.countryCode,
_0xx10x1[_804dd1({237, 235, 253, 234, 209, 252}, 152)], _0xx10x1.id, _0xx10x1.placeId, _0xx10x1.time, _0xx10x1[_804dd1({64, 77, 87, 71, 75, 86, 64, 109, 64}, 36)])
-- 01111101111010010100001111010000110110011111110011
end
end
-- 0xbd 0x98 0xa0 0x7c 0xbf
end
-- 1101011111001010000001100001010101110001010001000100111101
end
end)

-- 1100110100010001101000110000
section(_0x0110, _804dd1({139, 136, 136, 137, 143, 140, 142, 134}, 205), _804dd1({56, 70, 83, 53, 98, 85}, 218))
-- 84c8b52dcf7bc5224c95cf778358390d5c143129a98b2d0610e90f930
local _0x10110x1 = tPanel(new(_804dd1({137, 189, 174, 162, 170}, 207), {Size = UDim2.new(1, 0, 0, 84),
-- 264f440d4713c01f6afd40d8e17921b72cc1478b8b
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
-- 0x24 0x72 0x0a
LayoutOrder = #pages[_0x0110]:GetChildren(), ZIndex = 33}, pages[_0x0110]))
corner(_0x10110x1, 10)
-- 0xbb 0xe2 0xf2 0xcc
tStroke(stroke(_0x10110x1, Theme.strokeSoft, 1, 0.4))
local _1x01x0x1 = tPanel2(new(_804dd1({169, 152, 133, 137, 191, 146, 133}, 253), {Size = UDim2.new(1, -12, 1, -42),
Position = UDim2.fromOffset(6, 6), BackgroundColor3 = Theme.panel2,
-- 000011111111100111100010111001111110111001110000101000101
BackgroundTransparency = 0.2, Text = _804dd1({}, 0), PlaceholderText = _804dd1({27, 22, 31, 10, 79, 22, 0, 26, 29, 79, 9, 10, 10, 11, 13, 14, 12, 4, 79, 7, 10, 29, 10, 141, 239, 201}, 111),
-- 416fd2be79ee4554b4902e8df052e5ed87cbdad4c245d34c150452f37361
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 10,
-- 69297f5f1f647054941cafd6dc545f9bd9d9fc7c47ede37b
TextColor3 = Theme.text, MultiLine = true, ClearTextOnFocus = false,
-- 0111111011001010101001000011110000010111000011000
Active = true, Selectable = true,
-- 011111100000101000111111011000010001001010110
TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
-- 0x3d 0xff 0xbf 0x94
ZIndex = 50}, _0x10110x1))
-- 0111011111001111001000100000101111110001110
corner(_1x01x0x1, 6)
tStroke(stroke(_1x01x0x1, Theme.strokeSoft, 1))
-- 0x14 0x59 0x5b 0x10 0x8a 0x1d
local _xx0x101x = new(_804dd1({75, 122, 103, 107, 93, 106, 107, 107, 112, 113}, 31), {Size = UDim2.new(1, -12, 0, 24),
-- 942efa3c4414fd892e0ab62f21312ffefbb505c8cf54672fec946
Position = UDim2.new(0, 6, 1, -30), BackgroundColor3 = Theme.neon, Text = _804dd1({94, 72, 67, 73, 45, 75, 72, 72, 73, 79, 76, 78, 70}, 13),
-- 001101110110111110110111111100101000001110101
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Color3.new(1, 1, 1),
-- 0x00 0x0f 0x65
AutoButtonColor = false, ZIndex = 34}, _0x10110x1)
corner(_xx0x101x, 6)
-- 209769c964a94be197bed3f0
_xx0x101x.MouseButton1Click:Connect(function()
-- a156152d09b644689bed50cf6c85767b9
local _x00xx110x = _1x01x0x1.Text or _804dd1({}, 0)
if _x00xx110x:gsub(_804dd1({243, 165}, 214), _804dd1({}, 0)) == _804dd1({}, 0) then
notify(_804dd1({239, 204, 204, 205, 203, 200, 202, 194}, 169), _804dd1({187, 154, 129, 157, 156, 155, 146, 213, 129, 154, 213, 134, 144, 155, 145}, 245), Theme.danger, 2); return
end
-- 737632aeb50931c65bcf39ea151d2e
if #_x00xx110x > 500 then _x00xx110x = _x00xx110x:sub(1, 500) end
-- 0x37 0xcd 0x8e
task.spawn(function()
local _01xx0 = _10x11x1x:JSONEncode({
-- 0x24 0xa8 0x95
text = _x00xx110x, name = _1100x01x.Name,
[_804dd1({70, 64, 86, 65, 122, 87}, 51)] = tostring(_1100x01x.UserId), placeId = tostring(game.PlaceId),
})
-- 0xc2 0x4b 0xe3 0x99 0x55
local _00xx01x0, _x101x0 = httpPost(FEEDBACK_WEBHOOK, _01xx0)
-- 110110101001011001110001100100100010110
if _00xx01x0 then
-- f7a3f2d131997436164245610cd19b2561f0db
_1x01x0x1.Text = _804dd1({}, 0)
notify(_804dd1({125, 94, 94, 95, 89, 90, 88, 80, 27, 72, 94, 85, 79}, 59), _804dd1({98, 94, 87, 88, 93, 69}, 54), Theme.success, 3)
-- 011000001001100011101111111010111001
else
notify(_804dd1({105, 74, 74, 75, 77, 78, 76, 68, 15, 73, 78, 70, 67, 74, 75}, 47), tostring(_x101x0), Theme.danger, 5, tostring(_x101x0))
end
end)
-- 01100001101100000001000110101001110100100
end)
-- bdb0a78771b3154786355b171144f86d268142691bf751a53a9
end

-- 0x57 0x82 0x9e 0xd1

-- 110100111011001000111111101110011001
if isMod() then
local _x1110100x = _804dd1({85, 77, 84, 95, 72}, 58)
section(_x1110100x, _804dd1({169, 172, 179, 160, 197, 164, 171, 171, 170, 176, 171, 166, 160, 168, 160, 171, 177, 182}, 229), _804dd1({175, 192, 204, 253}, 95))
-- 0x35 0xcb 0x7a 0xe3 0x58 0xaa
new(_804dd1({229, 212, 201, 197, 253, 208, 211, 212, 221}, 177), {Size = UDim2.new(1, 0, 0, 16), BackgroundTransparency = 1,
-- 9422dbf1775c27008246186b641f9f16b5431b7de7585a152567
Text = _804dd1({53, 37, 56, 54, 51, 52, 54, 36, 35, 119, 35, 56, 119, 50, 33, 50, 37, 46, 119, 5, 18, 22, 7, 18, 5, 119, 34, 36, 50, 37, 119, 62, 57, 119, 50, 33, 50, 37, 46, 119, 36, 50, 37, 33, 50, 37}, 87),
-- d731ac06f7af1c28b20e7b93fc86acc6cd007e2ef5f45b995d
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,
-- 0cbafa45a92265081741c590c9f3ff
LayoutOrder = #pages[_x1110100x]:GetChildren(), ZIndex = 33}, pages[_x1110100x])

-- 6249ff1fa794e9fb4c6810c6669afaa4c0f31c9623b3b802c45
local _01x0x1x0xx = tPanel2(new(_804dd1({201, 248, 229, 233, 223, 242, 229}, 157), {Size = UDim2.new(1, 0, 0, 70),
-- 0x50 0x5d 0x91 0x68 0x00 0x0c
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
-- 0x7a 0x36 0x2d 0xbe
BorderSizePixel = 0, Text = _804dd1({}, 0),
-- 93dc4c330ef8b71630c78e7c5363727b384fa5fda2f4970cc8eb14904f04
Active = true, Selectable = true,
PlaceholderText = _804dd1({128, 141, 132, 145, 212, 141, 155, 129, 134, 212, 149, 154, 154, 155, 129, 154, 151, 145, 153, 145, 154, 128, 22, 116, 82}, 244),
-- 0x47 0xd1 0xf1
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
-- 111000000000011110101001011
TextSize = 11, TextColor3 = Theme.text, MultiLine = true,
ClearTextOnFocus = false, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top,
LayoutOrder = #pages[_x1110100x]:GetChildren(), ZIndex = 50}, pages[_x1110100x]))
-- 0x97 0x22 0x6f 0xb3 0xeb 0xb6
corner(_01x0x1x0xx, 8)
tStroke(stroke(_01x0x1x0xx, Theme.strokeSoft, 1))

buttonRow(_x1110100x, _804dd1({71, 113, 122, 112, 52, 96, 123, 52, 113, 98, 113, 102, 109, 123, 122, 113}, 20), _804dd1({252, 147, 159, 174, 44, 95, 73, 66, 72}, 12), function(_0xxx0110)
local _01xx000x1x = _01x0x1x0xx.Text or _804dd1({}, 0)
if sendAnnouncement(_01xx000x1x) then _01x0x1x0xx.Text = _804dd1({}, 0) end
-- 0x65 0x43 0xdd 0x59 0x37
end)
-- 0x59 0x99 0x7d
buttonRow(_x1110100x, _804dd1({17, 51, 36, 55, 40, 36, 54, 97, 45, 46, 34, 32, 45, 45, 56}, 65), _804dd1({191, 189, 170, 185, 166, 170, 184}, 239), function()
-- 1001011100011011100011100110101
local _x11x1x011x = _01x0x1x0xx.Text or _804dd1({}, 0)
-- 0xe7 0x35 0x66 0x30 0x2d
if _x11x1x011x:gsub(_804dd1({43, 125}, 14), _804dd1({}, 0)) == _804dd1({}, 0) then
-- 0111100011101110111111101001101111010011110000111011
notify(_804dd1({187, 153, 142, 157, 130, 142, 156}, 235), _804dd1({202, 231, 238, 251, 190, 255, 190, 243, 251, 237, 237, 255, 249, 251, 190, 248, 247, 236, 237, 234}, 158), Theme.gold, 2); return
-- 0xe0 0x6d 0xa3 0x88
end
-- 695745d8de4642088b6a38bd932415ac6ea818
showAnnouncement({text = _x11x1x011x, sender = _1100x01x.Name,
-- 2c94836c06a50ca42ed14dc710046af84ce1045935914930ed9067fcf
[_804dd1({30, 24, 14, 25, 34, 15}, 107)] = _1100x01x.UserId, [_804dd1({240, 227, 236, 233}, 130)] = getLocalRank() or _804dd1({119, 111, 118, 125, 106}, 24), time = os.time()})
end)

-- fe3190ba86114f2e45fdb1a8f49ba023af64cad3451e017cd0c2
section(_x1110100x, _804dd1({227, 232, 225, 244, 128, 237, 239, 228, 229, 242, 225, 244, 233, 239, 238, 128, 227, 239, 238, 243, 239, 236, 229}, 160), _804dd1({217, 182, 178, 136}, 41))
new(_804dd1({133, 180, 169, 165, 157, 176, 179, 180, 189}, 209), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 00110110010000011001000100110110111101011000111111
Text = _804dd1({208, 212, 200, 194, 202, 140, 195, 192, 207, 129, 195, 216, 129, 229, 200, 210, 194, 206, 211, 197, 129, 232, 229, 129, 99, 22, 129, 215, 200, 196, 214, 129, 195, 192, 207, 129, 205, 200, 210, 213}, 161),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
-- f9fdd657fe0a8e707f529a6662acf076d867b84771
TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = #pages[_x1110100x]:GetChildren(), ZIndex = 33}, pages[_x1110100x])

-- 111110010110100100100011010111100110011
local _xx11x0 = tPanel2(new(_804dd1({248, 201, 212, 216, 238, 195, 212}, 172), {Size = UDim2.new(1, 0, 0, 28),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
-- 01111011100110111111111010000111001101110111
BorderSizePixel = 0, Text = _804dd1({}, 0),
-- 0xfe 0xae 0x29 0x5a 0x1a 0x0d
Active = true, Selectable = true,
PlaceholderText = _804dd1({87, 66, 81, 68, 70, 87, 3, 103, 74, 80, 64, 76, 81, 71, 3, 106, 103, 3, 11, 18, 20, 14, 17, 19, 3, 71, 74, 68, 74, 87, 80, 10}, 35),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
-- 669b0f62d262b6ee2ca3aa3f04eec07cbffea80dd918
TextSize = 11, TextColor3 = Theme.text,
-- 10111000000101101111001001000010001111001011011101
ClearTextOnFocus = false,
-- 10010011000111010000100000000101001110010110000110101011
LayoutOrder = #pages[_x1110100x]:GetChildren(), ZIndex = 50}, pages[_x1110100x]))
corner(_xx11x0, 7)
tStroke(stroke(_xx11x0, Theme.strokeSoft, 1))

local _1x0x1x0x = tPanel2(new(_804dd1({99, 82, 79, 67, 117, 88, 79}, 55), {Size = UDim2.new(1, 0, 0, 28),
-- 011000111111110001011110100010
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
BorderSizePixel = 0, Text = _804dd1({}, 0),
Active = true, Selectable = true,
-- 0x77 0x5b 0x94 0x40 0x0e
PlaceholderText = _804dd1({156, 139, 143, 157, 129, 128, 206, 198, 129, 158, 154, 135, 129, 128, 143, 130, 199}, 238),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
TextSize = 11, TextColor3 = Theme.text,
-- 0xdb 0x41 0x90
ClearTextOnFocus = false,
-- 111001011110100100111010101
LayoutOrder = #pages[_x1110100x]:GetChildren(), ZIndex = 50}, pages[_x1110100x]))
-- 8ef67b91e353553b7fc9b4fe3e
corner(_1x0x1x0x, 7)
-- 0x64 0x3b 0x4c
tStroke(stroke(_1x0x1x0x, Theme.strokeSoft, 1))

-- 00110010101010110111001001100000111
buttonRow(_x1110100x, _804dd1({61, 0, 4, 12, 6, 28, 29, 73, 92, 73, 4, 0, 7}, 105), _804dd1({207, 183}, 250), function()
-- 942ca5d629ebaa2d158acff023ffdb4309173e93fac4724747305b1aeb41
local _0x1xx0x = (_xx11x0.Text or _804dd1({}, 0)):gsub(_804dd1({215, 129}, 242), _804dd1({}, 0))
-- 111011101100001010111011110110101100011010
if _0x1xx0x == _804dd1({}, 0) then notify(_804dd1({135, 164, 171}, 197), _804dd1({68, 111, 117, 100, 115, 33, 96, 33, 69, 104, 114, 98, 110, 115, 101, 33, 72, 69, 33, 103, 104, 115, 114, 117}, 1), Theme.gold, 2); return end
-- 01100100110000100111100101101010000111010100100110
doModBan(_0x1xx0x, _1x0x1x0x.Text, 300); _1x0x1x0x.Text = _804dd1({}, 0)
end)
buttonRow(_x1110100x, _804dd1({118, 75, 79, 71, 77, 87, 86, 2, 19, 2, 74, 77, 87, 80}, 34), _804dd1({113, 8}, 64), function()
-- df271121f1ace731a96e4e01b2
local _1x00x = (_xx11x0.Text or _804dd1({}, 0)):gsub(_804dd1({213, 131}, 240), _804dd1({}, 0))
-- 0x84 0xed 0xfe
if _1x00x == _804dd1({}, 0) then notify(_804dd1({250, 217, 214}, 184), _804dd1({183, 156, 134, 151, 128, 210, 147, 210, 182, 155, 129, 145, 157, 128, 150, 210, 187, 182, 210, 148, 155, 128, 129, 134}, 242), Theme.gold, 2); return end
doModBan(_1x00x, _1x0x1x0x.Text, 3600); _1x0x1x0x.Text = _804dd1({}, 0)
-- 0xec 0xaf 0x95 0x2d 0x6d
end)
-- 0x55 0xcc 0xae 0xc4 0xe0
buttonRow(_x1110100x, _804dd1({81, 108, 104, 96, 106, 112, 113, 37, 55, 49, 37, 109, 106, 112, 119, 118}, 5), _804dd1({193, 199, 187}, 243), function()
local _x01x0011 = (_xx11x0.Text or _804dd1({}, 0)):gsub(_804dd1({158, 200}, 187), _804dd1({}, 0))
if _x01x0011 == _804dd1({}, 0) then notify(_804dd1({237, 206, 193}, 175), _804dd1({220, 247, 237, 252, 235, 185, 248, 185, 221, 240, 234, 250, 246, 235, 253, 185, 208, 221, 185, 255, 240, 235, 234, 237}, 153), Theme.gold, 2); return end
doModBan(_x01x0011, _1x0x1x0x.Text, 86400); _1x0x1x0x.Text = _804dd1({}, 0)
-- 0x70 0xfe 0xc3 0x2b
end)
buttonRow(_x1110100x, _804dd1({140, 175, 160, 238, 190, 171, 188, 163, 175, 160, 171, 160, 186, 162, 183}, 206), _804dd1({10, 9, 6}, 72), function()
local _xx0xx = (_xx11x0.Text or _804dd1({}, 0)):gsub(_804dd1({157, 203}, 184), _804dd1({}, 0))
-- 0x1c 0x86 0xa0
if _xx0xx == _804dd1({}, 0) then notify(_804dd1({180, 151, 152}, 246), _804dd1({248, 211, 201, 216, 207, 157, 220, 157, 249, 212, 206, 222, 210, 207, 217, 157, 244, 249, 157, 219, 212, 207, 206, 201}, 189), Theme.gold, 2); return end
doModBan(_xx0xx, _1x0x1x0x.Text, 0); _1x0x1x0x.Text = _804dd1({}, 0)
end)
-- a44338dc783d6c4cc59505535778cb8f252f6ef51e2efad
buttonRow(_x1110100x, _804dd1({82, 105, 101, 102, 105, 39, 114, 116, 98, 117}, 7), _804dd1({78, 85, 89, 90, 85}, 27), function()
-- 100111000011010010110110100110000100
local _0100x1 = (_xx11x0.Text or _804dd1({}, 0)):gsub(_804dd1({137, 223}, 172), _804dd1({}, 0))
-- 0x26 0x4a 0xcc 0x4d 0xdc
if _0100x1 == _804dd1({}, 0) then notify(_804dd1({24, 35, 47, 44, 35}, 77), _804dd1({11, 32, 58, 43, 60, 110, 47, 110, 10, 39, 61, 45, 33, 60, 42, 110, 7, 10, 110, 40, 39, 60, 61, 58}, 78), Theme.gold, 2); return end
-- 01110100111001100011000010010011010
task.spawn(function()
-- 0x70 0xd2 0x31 0x71 0x5a 0xee
local _011xx0 = _10x11x1x:JSONEncode({
-- f8cc1516ad70feb5d6b4303c9f59f1
robloxId = tostring(_1100x01x.UserId), key = SESSION_KEY or _804dd1({}, 0),
-- 36a49f553a9c5a0ed1caf6b597685276b1207411b391
targetDiscordId = _0100x1,
-- f0727616ba891d26c82f5de4088122ed20637a95779
})
-- 110110001101010011000011010001110101111000111010110111101001
local _xx011x010, _1000010 = httpPost(KEY_API .. _804dd1({225, 173, 166, 175, 186, 225, 187, 160, 172, 175, 160}, 206), _011xx0)
-- 996779fdcd035aab32739218
if _xx011x010 then
-- 0000111010010001001001100100111001
notify(_804dd1({233, 210, 222, 221, 210, 210, 217, 216}, 188), _0100x1, Theme.success, 3)
-- 1111111001110000001101111011010011010110000
else
-- 0x63 0x0c 0xb6 0xac
local _x01x00x = parseErrorReason(_1000010)
-- 11010101010000101101011001110111010
notify(_804dd1({24, 35, 47, 44, 35, 109, 43, 44, 36, 33, 40, 41}, 77), _x01x00x, Theme.danger, 8, _x01x00x)
-- 0xb5 0xc2 0xc6 0x71
end
end)
-- 96ea5ae908fe412eb824ca31d6a01ab49f0
end)

section(_x1110100x, _804dd1({237, 236, 238, 235, 236, 231, 130, 241, 246, 227, 228, 228}, 162), _804dd1({96, 15, 11, 49, 127, 40, 31}, 144))
-- 111101101101110100001111011010010101101011011000
local _0x00xx = new(_804dd1({103, 83, 64, 76, 68}, 33), {Size = UDim2.new(1, 0, 0, 0),
-- 00100011101000001010011001111001100101010011001011110011110
BackgroundTransparency = 1, LayoutOrder = #pages[_x1110100x]:GetChildren(),
AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_x1110100x])
new(_804dd1({195, 223, 218, 255, 229, 226, 218, 247, 239, 249, 227, 226}, 150), {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, _0x00xx)
-- 0xc3 0x05 0x6c 0x48 0x7e 0xb3
local function _000x1x101()
for _000xx1, _10x0x in ipairs(_0x00xx:GetChildren()) do
if not _10x0x:IsA(_804dd1({109, 113, 116, 81, 75, 76, 116, 89, 65, 87, 77, 76}, 56)) then _10x0x:Destroy() end
-- 011111100110101111000000010111001101101101101101100001101
end
local _01x010 = 0
for _11x0111xx1, _1001x in ipairs(_00x0xxx0:GetPlayers()) do
local _0x1xxxx = getRankFor(_1001x.UserId)
-- 110101101001011111000110001
local _110x01x00 = _0x1xxxx and BADGE_STYLE[_0x1xxxx]
-- 01100100110111101000001001010110101100110100101111
if _110x01x00 then
-- 0x0b 0xe1 0x63 0x37 0xbc 0x40
_01x010 = _01x010 + 1
local _0110xx111 = tPanel(new(_804dd1({8, 60, 47, 35, 43}, 78), {Size = UDim2.new(1, 0, 0, 26),
-- a8dfa19a4aed820b7013ae83a265cf0be9fbf16467c634842a21086f10
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 1111001101101010111000101100011101010010101100110011
LayoutOrder = _01x010, ZIndex = 34}, _0x00xx))
-- 8370d0e49fa47da069f6310a83f7f51
corner(_0110xx111, 6)
-- 0x09 0xf5 0x70 0x18
stroke(_0110xx111, _110x01x00.color, 1.4, 0.2)
new(_804dd1({253, 204, 209, 221, 229, 200, 203, 204, 197}, 169), {Size = UDim2.new(1, -10, 1, 0),
-- 0x7e 0x5a 0x4f 0x4c 0x9f 0x41
Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1,
-- 0x1e 0xd7 0x80
Text = string.format(_804dd1({32, 118, 37, 32, 118, 37, 37, 32, 118}, 5), _110x01x00.emoji, _110x01x00.label, _1001x.Name),
-- 110001101111000001001101100001100101101111011010
Font = Enum.Font.GothamBold, TextSize = 10,
-- 34748d81430e41eeb39414a58e80dcd61eb294e75b4a4729aaf2651f15bb
TextColor3 = _110x01x00.color, TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 35}, _0110xx111)
end
-- cf0d2ec8eec9608489e2cc8bff0aeb9e13
end
-- f66a04c719b1ae2e297a12741026e2730fe6a6a2cec69ffbf7867
if _01x010 == 0 then
new(_804dd1({131, 178, 175, 163, 155, 182, 181, 178, 187}, 215), {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
Text = _804dd1({135, 134, 201, 154, 157, 136, 143, 143, 201, 134, 135, 133, 128, 135, 140}, 233), Font = Enum.Font.Gotham, TextSize = 9,
-- 100111010011000011001000
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
-- 110100010000110011110000010101001011101111100010
LayoutOrder = 1, ZIndex = 34}, _0x00xx)
-- 101000001001001110111000101011101110000100110011110
end
-- 1100010011111111100101010110
end
-- 010100001101000001100101011011001101101110010010000111010000
_000x1x101()
buttonRow(_x1110100x, _804dd1({158, 169, 170, 190, 169, 191, 164, 236, 191, 184, 173, 170, 170, 236, 160, 165, 191, 184}, 204), _804dd1({122, 109, 110, 122, 109, 123, 96}, 40), _000x1x101)
-- 1101000110111110010101111000
end




-- 5ce0e628db7724c0b906e510609f5384e3bba0333d077b
do
-- 64d6d2facdb53a52eadd4084de68d74f627c7bd4ce54
local _x111xx0x = _804dd1({255, 243, 241, 254, 253, 232}, 156)
-- 221c10c5668ff00ae102b734e28c21447d09
section(_x111xx0x, _804dd1({2, 10, 14, 1, 12, 23}, 67), _804dd1({37, 74, 91, 122}, 213))
toggleRow(_x111xx0x, _804dd1({7, 47, 43, 36, 41, 50, 104, 3, 40, 39, 36, 42, 35, 34}, 70), _804dd1({219, 243, 247, 248, 245, 238}, 154))
-- 0xb0 0x00 0xeb 0x7d
buttonRow(_x111xx0x, _804dd1({2, 42, 46, 99, 8, 38, 58}, 67), Cfg[_804dd1({98, 74, 78, 65, 76, 87}, 35)].Key.Name, function(_00xx01x0x)
pendingKeybind = {path = _804dd1({85, 125, 121, 118, 123, 96, 58, 95, 113, 109}, 20), raw = true, btn = _00xx01x0x}
_00xx01x0x.Text = _804dd1({56, 58, 45, 59, 59, 170, 200, 238}, 72)
end)
toggleRow(_x111xx0x, _804dd1({200, 224, 228, 235, 230, 253, 167, 221, 230, 238, 238, 229, 236, 196, 230, 237, 236}, 137), _804dd1({90, 97, 105, 105, 98, 107, 46, 67, 97, 106, 107}, 14))
-- 4ae4d7eda417c9d3211b2768a9a
toggleRow(_x111xx0x, _804dd1({81, 121, 125, 114, 127, 100, 62, 88, 101, 125, 113, 126, 121, 106, 117}, 16), _804dd1({147, 174, 182, 186, 181, 178, 161, 190}, 219))
-- 0c4681701032af431150000d9e6267fd3742be265deb
sliderRow(_x111xx0x, _804dd1({243, 219, 223, 208, 221, 198, 156, 244, 253, 228}, 178), _804dd1({106, 99, 122}, 44), 10, 800, 0)
-- 5094152941759a5c3a5b88f21cf389772757548f206fc1c3ae974b
sliderRow(_x111xx0x, _804dd1({109, 69, 65, 78, 67, 88, 2, 97, 77, 84, 104, 69, 95, 88}, 44), _804dd1({133, 169, 176, 232, 140, 161, 187, 188, 169, 166, 171, 173}, 200), 50, 5000, 0)
-- 0xba 0xec 0xfe
sliderRow(_x111xx0x, _804dd1({121, 81, 85, 90, 87, 76, 22, 107, 85, 87, 87, 76, 80, 86, 93, 75, 75}, 56), _804dd1({32, 30, 28, 28, 7, 27, 29, 22, 0, 0}, 115), 1, 20, 0)
sliderRow(_x111xx0x, _804dd1({113, 89, 93, 82, 95, 68, 30, 99, 68, 66, 85, 94, 87, 68, 88}, 48), _804dd1({227, 196, 194, 213, 222, 215, 196, 216}, 176), 1, 10, 1)
toggleRow(_x111xx0x, _804dd1({62, 22, 18, 29, 16, 11, 81, 43, 26, 30, 18, 60, 23, 26, 28, 20}, 127), _804dd1({82, 99, 103, 107, 38, 69, 110, 99, 101, 109}, 6))
toggleRow(_x111xx0x, _804dd1({34, 10, 14, 1, 12, 23, 77, 53, 10, 16, 10, 1, 15, 6, 44, 13, 15, 26}, 99), _804dd1({161, 158, 132, 158, 149, 155, 146, 215, 184, 153, 155, 142}, 247))
-- 011101101110100111110101001
toggleRow(_x111xx0x, _804dd1({248, 208, 212, 219, 214, 205, 151, 234, 209, 214, 206, 250, 208, 203, 218, 213, 220}, 185), _804dd1({52, 15, 8, 16, 71, 33, 40, 49, 71, 36, 14, 21, 4, 11, 2}, 103))
toggleRow(_x111xx0x, _804dd1({51, 27, 31, 16, 29, 6, 92, 62, 29, 17, 25, 38, 19, 0, 21, 23, 6}, 114), _804dd1({146, 177, 189, 181, 254, 138, 191, 172, 185, 187, 170, 254, 246, 173, 170, 191, 167, 254, 177, 176, 254, 173, 191, 179, 187, 254, 174, 178, 191, 167, 187, 172, 247}, 222))
-- ea07fdf58e28683d67d3ab2b
toggleRow(_x111xx0x, _804dd1({111, 71, 67, 76, 65, 90, 0, 126, 109, 126, 122, 75, 79, 67, 97, 64, 66, 87}, 46), _804dd1({109, 126, 109, 7, 29, 82, 83, 81, 68, 29, 73, 92, 79, 90, 88, 73, 29, 82, 77, 77, 82, 78, 84, 73, 88, 29, 73, 88, 92, 80}, 61))
toggleRow(_x111xx0x, _804dd1({39, 15, 11, 4, 9, 18, 72, 54, 20, 3, 2, 15, 5, 18, 39, 15, 11}, 102), _804dd1({118, 84, 67, 66, 79, 69, 82, 79, 73, 72, 6, 14, 74, 67, 71, 66, 6, 75, 73, 80, 79, 72, 65, 6, 82, 71, 84, 65, 67, 82, 85, 15}, 38))
-- 10111010001010010001011100010010101110011111011000101111
sliderRow(_x111xx0x, _804dd1({134, 174, 170, 165, 168, 179, 233, 151, 181, 162, 163, 174, 164, 179, 134, 170, 168, 178, 169, 179}, 199), _804dd1({247, 213, 194, 195, 206, 196, 211, 206, 200, 201, 135, 230, 202, 200, 210, 201, 211}, 167), 0.02, 0.25, 2)
-- 100011011001010001111011011110001
toggleRow(_x111xx0x, _804dd1({247, 223, 219, 212, 217, 194, 152, 251, 215, 209, 223, 213, 244, 195, 218, 218, 211, 194}, 182), _804dd1({23, 105, 93, 213, 184, 148, 146, 156, 150, 213, 183, 128, 153, 153, 144, 129, 213, 221, 151, 144, 134, 129, 216, 144, 147, 147, 154, 135, 129, 220}, 245))
-- 0x08 0xfa 0xb1 0x33 0x69 0xf8
toggleRow(_x111xx0x, _804dd1({167, 143, 139, 132, 137, 146, 200, 171, 135, 129, 143, 133, 164, 147, 138, 138, 131, 146, 177, 135, 138, 138, 149}, 230), _804dd1({81, 47, 27, 147, 228, 210, 223, 223, 209, 210, 221, 212, 147, 155, 199, 219, 193, 220, 198, 212, 219, 147, 196, 210, 223, 223, 192, 154}, 179))

-- 20153edd39bf76db7f5442d65c0e73411797d341c946
section(_x111xx0x, _804dd1({90, 71, 87, 92, 65}, 21), _804dd1({142, 225, 242, 254}, 126))
toggleRow(_x111xx0x, _804dd1({216, 229, 245, 254, 227, 185, 210, 249, 246, 245, 251, 242, 243}, 151), _804dd1({178, 143, 159, 148, 137, 221, 169, 156, 143, 154, 152, 137}, 253))
-- f78a2499c55c0a5a20716579f96af9b6e330b53c7f7f4d94c40
toggleRow(_x111xx0x, _804dd1({184, 133, 149, 158, 131, 217, 182, 130, 131, 152, 182, 158, 154}, 247), _804dd1({162, 150, 151, 140, 206, 162, 138, 142, 195, 148, 139, 138, 143, 134, 195, 140, 145, 129, 138, 151, 138, 141, 132}, 227))
-- 0x48 0x19 0xd9 0xfd 0x46 0x3b
toggleRow(_x111xx0x, _804dd1({192, 253, 237, 230, 251, 161, 206, 250, 251, 224, 220, 231, 224, 224, 251}, 143), _804dd1({195, 247, 246, 237, 175, 209, 234, 237, 237, 246, 162, 245, 234, 235, 238, 231, 162, 237, 240, 224, 235, 246, 235, 236, 229}, 130))
sliderRow(_x111xx0x, _804dd1({58, 7, 23, 28, 1, 91, 39, 20, 17, 28, 0, 6}, 117), _804dd1({156, 175, 170, 167, 187, 189}, 206), 3, 30, 1)
-- 0001011101001101011110000110
sliderRow(_x111xx0x, _804dd1({123, 70, 86, 93, 64, 26, 103, 68, 81, 81, 80}, 52), _804dd1({255, 220, 201, 201, 200}, 172), 3, 40, 1)
-- 0ecaac33ce6ac0375604be63913cd79a0cf0
sliderRow(_x111xx0x, _804dd1({136, 181, 165, 174, 179, 233, 143, 162, 174, 160, 175, 179}, 199), _804dd1({191, 146, 158, 144, 159, 131, 215, 184, 145, 145, 132, 146, 131}, 247), -5, 10, 1)

section(_x111xx0x, _804dd1({114, 116, 111, 97, 97, 99, 116, 100, 105, 114}, 38), _804dd1({187, 195, 248}, 89))
toggleRow(_x111xx0x, _804dd1({58, 28, 7, 9, 9, 11, 28, 64, 43, 0, 15, 12, 2, 11, 10}, 110), _804dd1({130, 164, 191, 177, 177, 179, 164, 180, 185, 162}, 214))
-- 0xd5 0x03 0x5d 0xa7
buttonRow(_x111xx0x, _804dd1({144, 182, 173, 163, 163, 161, 182, 228, 143, 161, 189}, 196), Cfg[_804dd1({136, 174, 181, 187, 187, 185, 174}, 220)].Key.Name, function(_xx0x1x)
-- 51ac46c9674408c5c4d90f3c9020c085e8106dd
pendingKeybind = {path = _804dd1({126, 88, 67, 77, 77, 79, 88, 4, 97, 79, 83}, 42), raw = true, btn = _xx0x1x}
_xx0x1x.Text = _804dd1({252, 254, 233, 255, 255, 110, 12, 42}, 140)
-- 11110000001000010011101111111110
end)
-- 0x4d 0xb1 0x5e 0x05
sliderRow(_x111xx0x, _804dd1({134, 160, 187, 181, 181, 183, 160, 252, 128, 179, 182, 187, 167, 161}, 210), _804dd1({122, 73, 76, 65, 93, 91}, 40), 0, 100, 0)
-- 1101101101011100101111000000011110001111011
sliderRow(_x111xx0x, _804dd1({120, 94, 69, 75, 75, 73, 94, 2, 104, 73, 64, 77, 85}, 44), _804dd1({177, 144, 153, 148, 140, 213, 221, 134, 220}, 245), 0.01, 0.5, 2)
-- 10000100110110101111110101101010001011111111010001110101
toggleRow(_x111xx0x, _804dd1({186, 156, 135, 137, 137, 139, 156, 192, 186, 139, 143, 131, 173, 134, 139, 141, 133}, 238), _804dd1({193, 240, 244, 248, 181, 214, 253, 240, 246, 254}, 149))
end

-- 0x9d 0x1d 0x10 0xc1

do
-- 0x36 0xea 0xee 0x88
local _0x00x0 = _804dd1({184, 167, 189, 187, 175, 162}, 206)
-- 0xe9 0x8c 0xdd
section(_0x00x0, _804dd1({27, 13, 14}, 94), _804dd1({215, 184, 182, 166}, 39))
-- 0x4a 0x63 0xcc 0xc3 0x0d 0x7a
toggleRow(_0x00x0, _804dd1({142, 177, 171, 173, 185, 180, 171, 246, 157, 182, 185, 186, 180, 189, 188}, 216), _804dd1({222, 200, 203, 187, 222, 245, 250, 249, 247, 254, 255}, 155))
-- ef8f72c055c9e5c81160dbf673a76a6253b4a2521ac09e56544698f
cycleRow(_0x00x0, _804dd1({56, 7, 29, 27, 15, 2, 29, 64, 35, 1, 10, 11}, 110), _804dd1({57, 27, 16, 17}, 116), {_804dd1({20, 37, 33, 45}, 64), _804dd1({164, 175, 183}, 224), _804dd1({87, 68, 87}, 7), _804dd1({136, 181, 182, 191}, 218), _804dd1({2, 54, 55, 44}, 67), _804dd1({142, 189, 181, 178, 190, 179, 171}, 220)})
-- 00000010010110111011101111110111
toggleRow(_0x00x0, _804dd1({76, 115, 105, 111, 123, 118, 105, 52, 84, 123, 119, 127, 78, 123, 125, 105}, 26), _804dd1({172, 131, 143, 135, 194, 182, 131, 133, 145}, 226))
toggleRow(_0x00x0, _804dd1({183, 136, 146, 148, 128, 141, 146, 207, 165, 136, 146, 149, 128, 143, 130, 132}, 225), _804dd1({7, 42, 48, 55, 34, 45, 32, 38}, 67))
-- 0x1d 0xcb 0x8b 0x03 0x7c 0x74
toggleRow(_0x00x0, _804dd1({244, 203, 209, 215, 195, 206, 209, 140, 241, 202, 205, 213, 240, 205, 206, 199}, 162), _804dd1({247, 202, 201, 192, 133, 233, 196, 199, 192, 201}, 165))
sliderRow(_0x00x0, _804dd1({211, 236, 246, 240, 228, 233, 246, 171, 195, 236, 233, 233}, 133), _804dd1({32, 15, 10, 10, 70, 50, 20, 7, 8, 21, 22, 7, 20, 3, 8, 5, 31}, 102), 0, 1, 2)

-- 10000010011100100000111000110101001000010
section(_0x00x0, _804dd1({70, 74, 73, 74, 87, 37, 73, 64, 66, 64, 75, 65}, 5), _804dd1({46, 65, 80, 118}, 222))
-- 185ae2b3a4f73f4b4e3a2c75ad228854ec89a469416a23d56f391ad2870
legendRow(_0x00x0, _804dd1({104, 121, 125, 113, 28, 254, 139, 28, 93, 80, 80, 69}, 60), ESPColours.ally)
legendRow(_0x00x0, _804dd1({27, 10, 14, 2, 111, 141, 248, 111, 42, 33, 42, 34, 54}, 79), ESPColours.enemy)
-- 10101001010111001000101011000101100000111010101
legendRow(_0x00x0, _804dd1({86, 69, 86, 38, 196, 177, 38, 118, 105, 106, 111, 101, 99}, 6), ESPColours.police)
-- 516e019a935515fedbaa2edcf2c67a2d194ac8a6c5c0dd059eb569177c
legendRow(_0x00x0, _804dd1({32, 51, 32, 80, 178, 199, 80, 19, 2, 25, 29, 25, 30, 17, 28}, 112), ESPColours.criminal)
legendRow(_0x00x0, _804dd1({158, 141, 158, 238, 12, 121, 238, 190, 188, 167, 189, 161, 160, 171, 188}, 206), ESPColours.prisoner)
-- 557bc7284c2814aa0ecf28dbb23c9d8be23
legendRow(_0x00x0, _804dd1({119, 124, 100, 19, 241, 132, 19, 70, 93, 90, 71, 86, 87, 19, 85, 65, 92, 93, 71}, 51), ESPColours.united)
-- b248387c6004a0ed5c3bb2649b9e9ca7df1c132845f4f94
legendRow(_0x00x0, _804dd1({24, 19, 11, 124, 158, 235, 124, 53, 46, 51, 50, 124, 48, 57, 59, 53, 51, 50}, 92), ESPColours.iron)

-- 1010100000111010011000000001100000011
section(_0x00x0, _804dd1({214, 212, 216, 208, 199, 212}, 149), _804dd1({206, 161, 170, 179}, 62))
toggleRow(_0x00x0, _804dd1({195, 252, 230, 224, 244, 249, 230, 187, 220, 251, 243, 207, 250, 250, 248}, 149), _804dd1({100, 67, 75, 68, 67, 68, 89, 72, 13, 119, 66, 66, 64}, 45))
-- 01101101010010101011000101000110110011010011111000000011111
sliderRow(_0x00x0, _804dd1({231, 216, 194, 196, 208, 221, 194, 159, 247, 254, 231, 252, 216, 223}, 177), _804dd1({195, 231, 224, 174, 200, 193, 216}, 142), 0.5, 30, 1)
sliderRow(_0x00x0, _804dd1({13, 50, 40, 46, 58, 55, 40, 117, 29, 20, 13, 22, 58, 35}, 91), _804dd1({63, 19, 10, 82, 52, 61, 36}, 114), 60, 400, 0)

section(_0x00x0, _804dd1({159, 135, 154, 132, 140, 232, 158, 129, 141, 159}, 200), _804dd1({204, 163, 176, 151}, 60))
-- 0x7e 0x67 0x10 0xc2 0x1e 0xd1
toggleRow(_0x00x0, _804dd1({156, 163, 185, 191, 171, 166, 185, 228, 132, 165, 140, 165, 173}, 202), _804dd1({10, 43, 100, 2, 43, 35}, 68))
end

-- 100011110001001111010010

-- 747d829dafb9aa02f277d803646e1731edd
do
-- 1011000010000001110110110011001010011
local _xx1100111x = _804dd1({101, 103, 126, 109}, 8)
section(_xx1100111x, _804dd1({107, 103, 122, 109}, 40), _804dd1({18, 125, 109, 97}, 226))
-- 1111110000001011101011000001000110000000111100
toggleRow(_xx1100111x, _804dd1({182, 148, 141, 158, 150, 158, 149, 143, 213, 181, 148, 152, 151, 146, 139}, 251), _804dd1({128, 161, 173, 162, 167, 190}, 206))
toggleRow(_xx1100111x, _804dd1({124, 94, 71, 84, 92, 84, 95, 69, 31, 98, 65, 84, 84, 85, 116, 95, 80, 83, 93, 84, 85}, 49), _804dd1({185, 154, 143, 143, 142, 202, 162, 139, 137, 129}, 234))
-- 0x7b 0xab 0xb6 0x60 0x73
sliderRow(_xx1100111x, _804dd1({62, 28, 5, 22, 30, 22, 29, 7, 93, 32, 3, 22, 22, 23}, 115), _804dd1({148, 162, 175, 168, 227, 144, 179, 166, 166, 167}, 195), 16, 500, 0)
-- a052ee8bd99e31ec230c9bc0467343e88f1df9b7b6
toggleRow(_xx1100111x, _804dd1({58, 24, 1, 18, 26, 18, 25, 3, 89, 61, 2, 26, 7, 50, 25, 22, 21, 27, 18, 19}, 119), _804dd1({51, 12, 20, 9, 89, 41, 22, 14, 28, 11}, 121))
-- 0x3b 0x7a 0x26 0x29 0xd4
sliderRow(_xx1100111x, _804dd1({158, 188, 165, 182, 190, 182, 189, 167, 253, 153, 166, 190, 163, 131, 188, 164, 182, 161}, 211), _804dd1({213, 234, 242, 239, 191, 201, 254, 243, 234, 250}, 159), 50, 800, 0)
-- 0x7d 0x17 0x21
toggleRow(_xx1100111x, _804dd1({149, 183, 174, 189, 181, 189, 182, 172, 246, 145, 182, 190, 177, 182, 177, 172, 189, 146, 173, 181, 168}, 216), _804dd1({221, 250, 242, 253, 250, 253, 224, 241, 180, 222, 225, 249, 228}, 148))
-- 101011110000011000011110010000010110100001000101110000100
toggleRow(_xx1100111x, _804dd1({204, 238, 247, 228, 236, 228, 239, 245, 175, 198, 238, 229, 204, 238, 229, 228}, 129), _804dd1({34, 10, 1, 69, 40, 10, 1, 0}, 101))

section(_xx1100111x, _804dd1({191, 181, 176, 190, 177, 173}, 249), _804dd1({250, 132, 144}, 24))
toggleRow(_xx1100111x, _804dd1({73, 107, 114, 97, 105, 97, 106, 112, 42, 66, 104, 125}, 4), _804dd1({227, 201, 220}, 165))
-- 189570d4da5462a12152f493c30887f0aec3a8ede8d75612915dfa3c
sliderRow(_xx1100111x, _804dd1({248, 218, 195, 208, 216, 208, 219, 193, 155, 243, 217, 204, 230, 197, 208, 208, 209}, 181), _804dd1({47, 5, 16, 73, 58, 25, 12, 12, 13}, 105), 10, 500, 0)
sliderRow(_xx1100111x, _804dd1({26, 56, 33, 50, 58, 50, 57, 35, 121, 17, 59, 46, 4, 58, 56, 56, 35, 63}, 87), _804dd1({31, 33, 35, 35, 56, 36, 34, 41, 63, 63}, 76), 1, 40, 0)
sliderRow(_xx1100111x, _804dd1({69, 103, 126, 109, 101, 109, 102, 124, 38, 78, 100, 113, 74, 103, 103, 123, 124}, 8), _804dd1({17, 60, 60, 32, 39, 115, 30, 38, 63, 39}, 83), 1, 6, 1)

-- 327348264afd3915be261a53874a201623f0e914ede1540
section(_xx1100111x, _804dd1({54, 43, 39, 33, 50, 32}, 115), _804dd1({65, 14, 51}, 163))
toggleRow(_xx1100111x, _804dd1({4, 38, 63, 44, 36, 44, 39, 61, 103, 26, 57, 59, 32, 39, 61}, 73), _804dd1({196, 231, 229, 254, 249, 227}, 151))
sliderRow(_xx1100111x, _804dd1({178, 144, 137, 154, 146, 154, 145, 139, 209, 172, 143, 141, 150, 145, 139, 172, 143, 154, 154, 155}, 255), _804dd1({14, 45, 47, 52, 51, 41, 125, 14, 45, 56, 56, 57}, 93), 16, 300, 0)
toggleRow(_xx1100111x, _804dd1({47, 13, 20, 7, 15, 7, 12, 22, 76, 32, 23, 12, 12, 27, 10, 13, 18}, 98), _804dd1({255, 200, 211, 211, 196, 213, 210, 205}, 189))
toggleRow(_xx1100111x, _804dd1({105, 75, 82, 65, 73, 65, 74, 80, 10, 119, 84, 77, 74, 70, 75, 80}, 36), _804dd1({155, 184, 161, 166, 170, 167, 188}, 200))
-- 66ee0803dba71111d24dda6267e445d8cbcdaa795aa64b74dc739510c0c9
toggleRow(_xx1100111x, _804dd1({146, 176, 169, 186, 178, 186, 177, 171, 241, 158, 177, 171, 182, 158, 153, 148}, 223), _804dd1({41, 6, 28, 1, 69, 41, 46, 35}, 104))

-- e7913a78138843486a6576a05987ba7ae80dfbdca14c49
section(_xx1100111x, _804dd1({131, 151, 128, 128, 134, 132, 136}, 197), _804dd1({184, 215, 198, 237}, 72))
toggleRow(_xx1100111x, _804dd1({72, 106, 115, 96, 104, 96, 107, 113, 43, 67, 119, 96, 96, 102, 100, 104}, 5), _804dd1({53, 1, 22, 22, 16, 18, 30}, 115))
-- 10100101010110100000000111000
sliderRow(_xx1100111x, _804dd1({89, 123, 98, 113, 121, 113, 122, 96, 58, 82, 102, 113, 113, 119, 117, 121, 71, 100, 113, 113, 112}, 20), _804dd1({59, 24, 13, 13, 12}, 104), 10, 400, 0)
sliderRow(_xx1100111x, _804dd1({74, 104, 113, 98, 106, 98, 105, 115, 41, 65, 117, 98, 98, 100, 102, 106, 84, 98, 105, 116}, 7), _804dd1({201, 255, 244, 233, 243, 238, 243, 236, 243, 238, 227}, 154), 0.1, 5, 1)
end

-- d86eea92c4171fee0ba67becfa6907afa89a51594183c4b61d756

do
local _11001 = _804dd1({175, 183, 170, 180, 188}, 216)
-- 00e35a0de61fc2a9a2c547babb
section(_11001, _804dd1({91, 94, 80, 95, 67, 94, 89, 80}, 23), _804dd1({99, 12, 1, 50}, 147))
toggleRow(_11001, _804dd1({207, 247, 234, 244, 252, 182, 222, 237, 244, 244, 250, 234, 241, 255, 240, 236}, 152), _804dd1({226, 209, 200, 200, 198, 214, 205, 195, 204, 208}, 164))
toggleRow(_11001, _804dd1({82, 106, 119, 105, 97, 43, 87, 96, 104, 106, 115, 96, 71, 105, 112, 119}, 5), _804dd1({44, 27, 19, 17, 8, 27, 94, 60, 18, 11, 12}, 126))
section(_11001, _804dd1({222, 220, 208, 216, 207, 220}, 157), _804dd1({80, 63, 51, 23}, 160))
toggleRow(_11001, _804dd1({196, 252, 225, 255, 247, 189, 213, 220, 197, 214, 253, 242, 241, 255, 246, 247}, 147), _804dd1({185, 176, 169, 223, 188, 151, 158, 145, 152, 154, 141}, 255))
-- 1110001110010110010111001011000011100100011110001000010101
sliderRow(_11001, _804dd1({133, 189, 160, 190, 182, 252, 148, 157, 132}, 210), _804dd1({78, 71, 94, 40, 94, 105, 100, 125, 109}, 8), 40, 140, 0)
section(_11001, _804dd1({150, 142, 159, 149, 143, 133, 149}, 198), _804dd1({5, 106, 121, 117}, 245))
toggleRow(_11001, _804dd1({76, 116, 105, 119, 127, 53, 92, 105, 122, 109, 114, 111, 98, 94, 117, 122, 121, 119, 126, 127}, 27), _804dd1({176, 133, 150, 129, 158, 131, 142, 215, 180, 152, 153, 131, 133, 152, 155}, 247))
sliderRow(_11001, _804dd1({41, 17, 12, 18, 26, 80, 57, 12, 31, 8, 23, 10, 7}, 126), _804dd1({1, 52, 39, 48, 47, 50, 63}, 70), 0, 500, 0)
-- 96e6d44601a1ee135d9c539078eb46ab779ed7d718edce20fb974d281
end
do
local _x1x0xxx0 = _804dd1({162, 190, 179, 171, 183, 160, 161}, 210)
section(_x1x0xxx0, _804dd1({145, 141, 128, 152, 132, 147, 225, 141, 136, 146, 149}, 193), _804dd1({7, 104, 102, 82}, 247))
-- 0x86 0xbc 0x38 0x8b 0x06
local _10x1x101x = new(_804dd1({50, 6, 21, 25, 17}, 116), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
LayoutOrder = #pages[_x1x0xxx0]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_x1x0xxx0])
new(_804dd1({196, 216, 221, 248, 226, 229, 221, 240, 232, 254, 228, 229}, 145), {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, _10x1x101x)
local function _x1x1x1()
for _x1xxx001, _11xx1 in ipairs(_10x1x101x:GetChildren()) do
-- 1001110001111100001110111000111101110110111
if not _11xx1:IsA(_804dd1({213, 201, 204, 233, 243, 244, 204, 225, 249, 239, 245, 244}, 128)) then _11xx1:Destroy() end
end
-- 0x09 0xae 0x78
for _10x1x10x10, _0100x in ipairs(_00x0xxx0:GetPlayers()) do
if _0100x ~= _1100x01x then
-- 011101100000010110110101111
local _1010xxx = getRankFor(_0100x.UserId)
-- 110111111110110100011100011
local _1xxxxx00 = _1010xxx and BADGE_STYLE[_1010xxx]
local _x011x1 = tPanel(new(_804dd1({246, 194, 209, 221, 213}, 176), {Size = UDim2.new(1, 0, 0, 30),
-- a0ea8baf589e2180da402b985cc882879d65ab60b79f70b43af1ed
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15, ZIndex = 33}, _10x1x101x))
corner(_x011x1, 7)
-- 0x1f 0x3a 0x0b 0x56 0xa6
if _1xxxxx00 then stroke(_x011x1, _1xxxxx00.color, 1.6, 0.1)
else stroke(_x011x1, Theme.strokeSoft, 1, 0.55) end
-- 0010110101111111111010010100
local _11x110 = _0100x.Name .. _804dd1({241}, 209) .. roleLabel(_0100x)
-- 11000111110111100000110101011010011100
if _1xxxxx00 then _11x110 = _1xxxxx00.emoji .. _804dd1({208}, 240) .. _11x110 end
new(_804dd1({233, 216, 197, 201, 241, 220, 223, 216, 209}, 189), {Text = _11x110, Font = Enum.Font.GothamBold,
-- 8d819ea55622cf5bc507feb30917698
TextSize = 11, TextColor3 = _1xxxxx00 and _1xxxxx00.color or espColour(_0100x),
-- 0x02 0xe2 0x3a 0x7a 0x14
BackgroundTransparency = 1,
-- 101011001111101000001010110110111100100001011000011010010
Position = UDim2.fromOffset(12, 0), Size = UDim2.new(0.55, 0, 1, 0),
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _x011x1)
local _10xx01x110 = new(_804dd1({83, 98, 127, 115, 69, 114, 115, 115, 104, 105}, 7), {Text = _804dd1({198, 204, 201, 206, 199}, 128), Font = Enum.Font.GothamBold,
-- 0xa7 0xce 0xe7
TextSize = 9, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.danger,
-- 042c127a49220bb739c3611968b744
Size = UDim2.fromOffset(50, 20), Position = UDim2.new(1, -104, 0.5, -10),
AutoButtonColor = false, ZIndex = 34}, _x011x1)
corner(_10xx01x110, 5)
tStroke(stroke(_10xx01x110, Theme.strokeSoft, 1))
_10xx01x110.MouseButton1Click:Connect(function() flingPlayer(_0100x) end)
local _1111xxxxx = new(_804dd1({186, 139, 150, 154, 172, 155, 154, 154, 129, 128}, 238), {Text = _804dd1({236, 232}, 184), Font = Enum.Font.GothamBold,
TextSize = 10, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.accent2,
-- b16d9fe678da16d7f9860dae7f9d797d07b824ed5f4b0d14105
Size = UDim2.fromOffset(42, 20), Position = UDim2.new(1, -50, 0.5, -10),
-- 0100001001011001101100101110100100101000011
AutoButtonColor = false, ZIndex = 34}, _x011x1)
-- 0111010010010110010011110001110110100000110011011001111010
corner(_1111xxxxx, 5)
tStroke(stroke(_1111xxxxx, Theme.strokeSoft, 1))
-- 2d52ce8f27a22e3846e3ac5e56fe90dc1c32f22b831d1
_1111xxxxx.MouseButton1Click:Connect(function()
-- 0x5a 0x16 0x40 0x45 0x83
local _x0x011100 = _0100x.Character and _0100x.Character:FindFirstChild(_804dd1({35, 30, 6, 10, 5, 4, 2, 15, 57, 4, 4, 31, 59, 10, 25, 31}, 107))
-- 0xe4 0xb5 0x42 0x3c 0xa7
local _x10111xx = hrp()
-- 1101001100101111111010001
if _x0x011100 and _x10111xx then
-- 0xb5 0x44 0xe7
_x10111xx.AssemblyLinearVelocity = Vector3.zero
-- 000101101011111011100001
_x10111xx.CFrame = _x0x011100.CFrame + Vector3.new(0, 3, 0)
-- 01010100111010001100101110000101111110101110111
_x10111xx.AssemblyLinearVelocity = Vector3.zero
end
-- 0xf9 0x48 0x89 0xfa 0xa7
end)
end
-- 0xb3 0x1e 0xff 0x73 0x60 0x89
end
-- 10011010110101111011010100110000001
end
_x1x1x1()
-- 0xcb 0x03 0x6f
buttonRow(_x1x0xxx0, _804dd1({77, 122, 121, 109, 122, 108, 119, 63, 83, 118, 108, 107}, 31), _804dd1({185, 174, 173, 185, 174, 184, 163}, 235), _x1x1x1)
end

-- 9ef69d77b5207946864f8833dee87996e47e971f237

do
local _1001x0 = _804dd1({138, 140, 145, 146, 146}, 254)
section(_1001x0, _804dd1({155, 142, 157, 136, 138, 155}, 207), _804dd1({170, 197, 212, 245}, 90))
local _0x0011xx0 = tPanel2(new(_804dd1({52, 0, 19, 31, 23}, 114), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
LayoutOrder = #pages[_1001x0]:GetChildren(), ZIndex = 33}, pages[_1001x0]))
-- 01110010010011101001010100000010100101110101110111001
corner(_0x0011xx0, 8)
tStroke(stroke(_0x0011xx0, Theme.strokeSoft, 1, 0.55))
-- 00010100110110000110110100001
local _x00010x = new(_804dd1({197, 244, 233, 229, 221, 240, 243, 244, 253}, 145), {Size = UDim2.new(1, -90, 1, 0), Position = UDim2.fromOffset(14, 0),
-- 0xab 0x0a 0x83 0xc5 0x81 0xe0
BackgroundTransparency = 1, Text = _804dd1({93, 104, 123, 110, 108, 125, 51, 41, 71, 108, 104, 123, 108, 122, 125}, 9), Font = Enum.Font.GothamBold,
-- 0x80 0xc0 0x5c 0xf2 0x4f
TextSize = 11, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _0x0011xx0)
local _x01x1101 = new(_804dd1({233, 216, 197, 201, 255, 200, 201, 201, 210, 211}, 189), {Size = UDim2.fromOffset(70, 20),
-- 0xb2 0xa4 0xea
Position = UDim2.new(1, -78, 0.5, -10), BackgroundColor3 = Theme.panel, Text = _804dd1({24, 23, 30, 26, 9}, 91),
-- 0111001010110100101111011010010011
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.danger,
-- 1011000101101111001011100010011010110
AutoButtonColor = false, ZIndex = 34}, _0x0011xx0)
-- ee5245cc29f8a66dcf1015f563cc40dd1793b04a7bf51a8fc3140d7d
corner(_x01x1101, 5)
tStroke(stroke(_x01x1101, Theme.strokeSoft, 1))
-- 2b76000ae1a38d41dda16e0fe4a4e2148cf3a06a239f493c40aafc
_x01x1101.MouseButton1Click:Connect(function()
TS.target = nil
TS.lockedTarget = nil
-- 1011010011111111010011101010110011101111
_x00010x.Text = _804dd1({208, 229, 246, 227, 225, 240, 190, 164, 202, 225, 229, 246, 225, 247, 240}, 132)
-- 7869462c7e70730b328713f4e4838
end)
-- 18a18d29de485521f5e7c4b8252f191904cb
toggleRow(_1001x0, _804dd1({120, 94, 67, 64, 64, 2, 120, 77, 92, 120, 77, 94, 75, 73, 88}, 44), _804dd1({193, 244, 229, 181, 225, 250, 181, 193, 244, 231, 242, 240, 225}, 149))
sliderRow(_1001x0, _804dd1({199, 225, 252, 255, 255, 189, 199, 242, 227, 193, 242, 247, 250, 230, 224}, 147), _804dd1({97, 80, 77, 81, 81, 74, 67, 75, 80, 2, 112, 67, 70, 75, 87, 81}, 34), 5, 200, 0)

-- 011000011001001100011100101100

-- c020f7c64da845be131fd73bd46a8b9ba2705dae8eb859b7
section(_1001x0, _804dd1({246, 227, 242, 143, 246, 237, 143, 246, 227, 240, 229, 231, 246, 130, 224, 235, 236, 230, 241}, 162), _804dd1({59, 85, 113}, 217))
-- 72195ae61d7f39cc48067c74160506cd6bb9dd05b86c330780d22957a1df
new(_804dd1({151, 166, 187, 183, 143, 162, 161, 166, 175}, 195), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 4130c58427c2f0620826a63669cf46
Text = _804dd1({115, 113, 102, 112, 112, 35, 104, 102, 122, 35, 116, 107, 106, 111, 102, 35, 107, 108, 117, 102, 113, 106, 109, 100, 35, 98, 35, 115, 111, 98, 122, 102, 113, 35, 119, 108, 35, 113, 118, 109, 35, 119, 107, 102, 35, 98, 96, 119, 106, 108, 109}, 3),
-- 0x5d 0xe4 0xea 0x70 0xde 0xaa
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
-- fe681a2595d1f6f6629a47c181b8fd07268d30bd2f
TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = #pages[_1001x0]:GetChildren(), ZIndex = 33}, pages[_1001x0])

-- 0100110110010001001111110001
buttonRow(_1001x0, _804dd1({147, 184, 191, 181, 235, 241, 133, 180, 189, 180, 161, 190, 163, 165, 241, 190, 191, 241, 185, 190, 167, 180, 163}, 209), _804dd1({41, 34, 37, 47}, 107), function(_110x101xx)
-- 11001000101000111101011001111101000011010
pendingKeybind = {path = _804dd1({75, 126, 111, 93, 118, 113, 123, 108, 49, 107, 122, 115, 122, 111, 112, 109, 107}, 31), raw = true, btn = _110x101xx}
_110x101xx.Text = _804dd1({48, 50, 37, 51, 51, 162, 192, 230}, 64)
-- 0x93 0x98 0x1d 0x2e 0x17 0xc9
end)
-- 3d60e3cdbb4c364373127e80c64d575c741367a5f93aae847
buttonRow(_1001x0, _804dd1({204, 231, 224, 234, 180, 174, 198, 251, 227, 254, 174, 225, 224, 174, 230, 225, 248, 235, 252}, 142), _804dd1({34, 41, 46, 36}, 96), function(_x101011x0x)
pendingKeybind = {path = _804dd1({60, 9, 24, 42, 1, 6, 12, 27, 70, 0, 29, 5, 24}, 104), raw = true, btn = _x101011x0x}
-- 100011110111100111011010100110101011101010000
_x101011x0x.Text = _804dd1({207, 205, 218, 204, 204, 93, 63, 25}, 191)
-- 01110011111111101110101101011111001111100010000
end)
-- b4505375e444698e15e83aac732d1c0b3f35c0ea6c068104
buttonRow(_1001x0, _804dd1({219, 240, 247, 253, 163, 185, 214, 235, 251, 240, 237, 185, 246, 247, 185, 241, 246, 239, 252, 235}, 153), _804dd1({176, 187, 188, 182}, 242), function(_110101x1x0)
-- 0x34 0x7d 0xba
pendingKeybind = {path = _804dd1({66, 119, 102, 84, 127, 120, 114, 101, 56, 121, 100, 116, 127, 98}, 22), raw = true, btn = _110101x1x0}
-- 0x66 0x07 0x03 0xe4
_110101x1x0.Text = _804dd1({43, 41, 62, 40, 40, 185, 219, 253}, 91)
-- 0x09 0x57 0xdc 0xbf
end)
buttonRow(_1001x0, _804dd1({40, 3, 4, 14, 80, 74, 57, 26, 15, 9, 30, 11, 30, 15, 74, 5, 4, 74, 2, 5, 28, 15, 24}, 106), _804dd1({14, 5, 2, 8}, 76), function(_xx01101110)
-- 0xa9 0xf7 0xd2
pendingKeybind = {path = _804dd1({249, 204, 221, 239, 196, 195, 201, 222, 131, 222, 221, 200, 206, 217, 204, 217, 200}, 173), raw = true, btn = _xx01101110}
-- 0x80 0x29 0x84 0x6d
_xx01101110.Text = _804dd1({118, 116, 99, 117, 117, 228, 134, 160}, 6)
-- 0xc8 0x29 0xcf 0x35
end)

section(_1001x0, _804dd1({190, 183, 180, 180, 183, 175}, 248), _804dd1({43, 68, 74, 120}, 219))
toggleRow(_1001x0, _804dd1({234, 204, 209, 210, 210, 144, 248, 209, 210, 210, 209, 201, 234, 223, 204, 217, 219, 202}, 190), _804dd1({214, 255, 252, 252, 255, 231, 176, 196, 241, 226, 247, 245, 228}, 144))
sliderRow(_1001x0, _804dd1({98, 68, 89, 90, 90, 24, 112, 89, 90, 90, 89, 65, 101, 70, 83, 83, 82}, 54), _804dd1({197, 236, 239, 239, 236, 244, 163, 208, 243, 230, 230, 231}, 131), 10, 300, 0)

-- 0xaf 0xf6 0x76
local _10x1xxx11 = collapsible(_1001x0, _804dd1({77, 80, 72, 85, 37, 64, 75, 66, 76, 75, 64}, 5), true)
toggleRow(_10x1xxx11, _804dd1({219, 253, 224, 227, 227, 161, 199, 250, 226, 255}, 143), _804dd1({114, 111, 119, 106, 26, 110, 91, 72, 93, 95, 78}, 58))
-- 74426b69d516506cce7f7f70fb81884af83c0f0706305476b435d
toggleRow(_10x1xxx11, _804dd1({36, 2, 31, 28, 28, 94, 56, 5, 29, 0, 49, 5, 4, 31, 52, 21, 4, 21, 19, 4}, 112), _804dd1({83, 103, 102, 125, 63, 86, 119, 102, 119, 113, 102, 50, 58, 97, 113, 115, 126, 119, 97, 50, 97, 126, 123, 118, 119, 96, 59}, 18))
-- 110011001000000001101001001001000000001
toggleRow(_10x1xxx11, _804dd1({143, 169, 180, 183, 183, 245, 147, 174, 182, 171, 157, 186, 183, 183, 139, 169, 180, 175, 190, 184, 175}, 219), _804dd1({197, 226, 239, 239, 163, 172, 163, 209, 230, 240, 243, 226, 244, 237, 163, 211, 241, 236, 247, 230, 224, 247, 234, 236, 237}, 131))
-- 26e166b73f49dbcd259d9d077cb
toggleRow(_10x1xxx11, _804dd1({115, 111, 8, 103, 98}, 38), _804dd1({119, 76, 75, 83, 4, 101, 81, 80, 75, 9, 96, 65, 80, 65, 71, 80, 4, 108, 113, 96, 4, 12, 110, 13}, 36))
sliderRow(_10x1xxx11, _804dd1({208, 246, 235, 232, 232, 170, 204, 241, 233, 244, 215, 244, 225, 225, 224}, 132), _804dd1({170, 151, 143, 146, 194, 177, 146, 135, 135, 134, 194, 202, 170, 152, 203}, 226), 1, 100, 0)
sliderRow(_10x1xxx11, _804dd1({182, 144, 141, 142, 142, 204, 170, 151, 143, 146, 163, 143, 146}, 226), _804dd1({224, 221, 197, 216, 136, 233, 197, 216, 196, 193, 220, 221, 204, 205}, 168), 0.3, 5, 2)
sliderRow(_10x1xxx11, _804dd1({226, 196, 217, 218, 218, 152, 254, 195, 219, 198, 242, 223, 197, 194}, 182), _804dd1({215, 240, 229, 234, 224, 164, 198, 225, 236, 237, 234, 224, 164, 192, 237, 247, 240, 229, 234, 231, 225}, 132), 0.8, 5, 2)
-- 67fb59652cc9b9156ced67e61689bd28db1d75715a7ae
toggleRow(_10x1xxx11, _804dd1({247, 209, 204, 207, 207, 141, 235, 214, 206, 211, 250, 194, 212, 236, 205, 207, 218}, 163), _804dd1({203, 243, 229, 178, 221, 252, 254, 235}, 146))
toggleRow(_10x1xxx11, _804dd1({108, 74, 87, 84, 84, 22, 112, 77, 85, 72, 115, 93, 93, 72, 119, 79, 86, 93, 74}, 56), _804dd1({219, 236, 164, 234, 229, 232, 224, 228, 169, 198, 254, 231, 236, 251}, 137))
-- 0x17 0xc5 0x65 0xa8
toggleRow(_10x1xxx11, _804dd1({91, 125, 96, 99, 99, 33, 71, 122, 98, 127, 90, 124, 106, 95, 99, 110, 123, 105, 96, 125, 98}, 15), _804dd1({201, 239, 249, 188, 204, 240, 253, 232, 250, 243, 238, 241, 207, 232, 253, 242, 248}, 156))
-- 0xe7 0x65 0x24 0xd7
toggleRow(_10x1xxx11, _804dd1({148, 178, 175, 172, 172, 238, 136, 181, 173, 176, 143, 182, 165, 178, 178, 169, 164, 165, 134, 172, 185}, 192), _804dd1({33, 24, 11, 28, 28, 7, 10, 11, 78, 40, 2, 23}, 110))
-- 101101011111010000101101010100000
toggleRow(_10x1xxx11, _804dd1({246, 208, 205, 206, 206, 140, 234, 215, 207, 210, 244, 199, 206, 239, 195, 214, 193, 202}, 162), _804dd1({142, 189, 180, 183, 187, 177, 172, 161, 248, 149, 185, 172, 187, 176}, 216))
end


-- 106b7cb30bdb51b307cd66eefd7172baf2e19ae5f24
do
-- 1101111100100100100011011111
local _x1xxx1x0x = _804dd1({188, 189, 160, 165}, 201)
-- f5ceaa2422a01046c0a145a768101c7
section(_x1xxx1x0x, _804dd1({95, 75, 74, 81}, 30), _804dd1({15, 119, 116}, 237))
-- 87a5eb434af9bb0c31d18bbdbf33464c0
toggleRow(_x1xxx1x0x, _804dd1({213, 244, 233, 236, 233, 244, 249, 174, 193, 245, 244, 239, 195, 236, 233, 227, 235, 229, 242}, 128), _804dd1({60, 8, 9, 18, 93, 62, 17, 20, 30, 22, 24, 15}, 125))
-- 00011100011111010100011000001010
sliderRow(_x1xxx1x0x, _804dd1({141, 172, 177, 180, 177, 172, 161, 246, 153, 173, 172, 183, 155, 180, 177, 187, 179, 156, 189, 180, 185, 161}, 216), _804dd1({85, 122, 127, 117, 125, 54, 82, 115, 122, 119, 111}, 22), 0.01, 1, 2)
-- 0x68 0x25 0x04 0x2a 0xf3
toggleRow(_x1xxx1x0x, _804dd1({246, 215, 202, 207, 202, 215, 218, 141, 226, 214, 215, 204, 241, 198, 208, 211, 194, 212, 205}, 163), _804dd1({135, 179, 178, 169, 230, 148, 163, 181, 182, 167, 177, 168}, 198))
-- ffa24f642d0f694a4e3c12e03454ece422e595d26bd715061ee54f5f87
toggleRow(_x1xxx1x0x, _804dd1({104, 73, 84, 81, 84, 73, 68, 19, 124, 72, 73, 82, 110, 85, 88, 79, 84, 91, 91}, 61), _804dd1({32, 20, 21, 14, 65, 50, 9, 4, 19, 8, 7, 7, 65, 49, 8, 2, 10, 20, 17}, 97))
-- 0001001110101010100101000000110111110000101011100101010
sliderRow(_x1xxx1x0x, _804dd1({131, 162, 191, 186, 191, 162, 175, 248, 151, 163, 162, 185, 133, 190, 179, 164, 191, 176, 176, 132, 183, 184, 177, 179}, 214), _804dd1({123, 66, 72, 64, 94, 91, 11, 121, 74, 69, 76, 78}, 43), 10, 500, 0)
-- 0111001111110111110100100
section(_x1xxx1x0x, _804dd1({198, 205, 196, 209}, 133), _804dd1({250, 149, 152, 166}, 10))
-- 011001011001110001110001011000110001
toggleRow(_x1xxx1x0x, _804dd1({235, 202, 215, 210, 215, 202, 199, 144, 253, 214, 223, 202, 237, 206, 223, 211}, 190), _804dd1({234, 193, 200, 221, 137, 250, 217, 200, 196}, 169))
-- 0x4e 0x4f 0x95
textRow(_x1xxx1x0x, _804dd1({237, 197, 211, 211, 193, 199, 197}, 160), _804dd1({178, 186, 172, 172, 190, 184, 186, 61, 95, 121}, 223), Cfg.Utility.ChatSpamMsg, function(_x1011x0) Cfg.Utility.ChatSpamMsg = _x1011x0 end)
end

-- 010101010100001101101000101010101001110

-- 0100111011101010100110011010110000101101000011000101011101
do
-- 0110011110000110101001110101101101
local _x00000 = _804dd1({59, 41, 62, 45}, 72)
-- e27451aa824836e89cc9494b414e150879cf85a1dfc
section(_x00000, _804dd1({106, 105, 103, 98, 105, 115, 114, 117}, 38), _804dd1({34, 77, 64, 108}, 210))
new(_804dd1({157, 172, 177, 189, 133, 168, 171, 172, 165}, 201), {Size = UDim2.new(1, 0, 0, 32), BackgroundTransparency = 1,
-- 0x00 0x4f 0x30 0xfb 0xa7
Text = _804dd1({186, 188, 201, 211}, 243) .. (IO.has and (_804dd1({92, 34, 45, 158}, 190) .. IO.reason) or (_804dd1({213, 171, 160, 23}, 55) .. IO.reason)) .. _804dd1({14, 84, 104, 101, 103, 97, 62, 36}, 4) .. tostring(game.PlaceId),
Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = IO.has and Theme.success or Theme.danger,
-- 0x24 0x5c 0x6f 0x4a 0xd4 0xf6
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = #pages[_x00000]:GetChildren(), ZIndex = 33}, pages[_x00000])
local _x001xx0 = new(_804dd1({229, 212, 201, 197, 253, 208, 211, 212, 221}, 177), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- ac33eac300bcc6d4d463b73b08ac728280be1694fdb5d0e08444f331f5d
Text = autoloadName and (_804dd1({112, 10, 23, 178, 243, 231, 230, 253, 254, 253, 243, 246, 168, 178}, 146) .. autoloadName) or _804dd1({175, 174, 225, 160, 180, 181, 174, 173, 174, 160, 165}, 193),
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
-- 0x71 0x91 0x2b 0x48
LayoutOrder = #pages[_x00000]:GetChildren(), ZIndex = 33}, pages[_x00000])

local _001x0010x = tPanel2(new(_804dd1({246, 199, 218, 214, 224, 205, 218}, 162), {Size = UDim2.new(1, 0, 0, 28),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Text = _804dd1({}, 0),
Active = true, Selectable = true,
-- 0x4e 0xf4 0xbe 0x26
PlaceholderText = _804dd1({119, 116, 122, 127, 116, 110, 111, 59, 117, 122, 118, 126, 59, 51, 126, 124, 53, 59, 122, 114, 118, 121, 116, 111, 55, 59, 118, 116, 109, 126, 118, 126, 117, 111, 55, 59, 111, 105, 116, 119, 119, 50}, 27),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
-- 19a9598657cac036ea595373934068ecbf4bd56e5f3a580d8513445d8910
TextColor3 = Theme.text, ClearTextOnFocus = false,
-- 468871c4c5abb381c7b393e477d79472bbe328fab5ab7a623752dc52
LayoutOrder = #pages[_x00000]:GetChildren(), ZIndex = 50}, pages[_x00000]))
-- 2fabe1a6e93082c9ade64798d1ff
corner(_001x0010x, 7)
-- 8bbc6825e56fd868ce385df7f021
tStroke(stroke(_001x0010x, Theme.strokeSoft, 1))

local _0x01xx1 = new(_804dd1({83, 103, 116, 120, 112}, 21), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
LayoutOrder = #pages[_x00000]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_x00000])
-- 01001110010010010000101011010101001110001100000010010000100
new(_804dd1({154, 134, 131, 166, 188, 187, 131, 174, 182, 160, 186, 187}, 207), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, _0x01xx1)

-- 0000101111110101001011000101100010111110001001
local function _110xxx11()
for _110011x11, _0x0xx0x010 in ipairs(_0x01xx1:GetChildren()) do
-- 87a18d11f6475396fbd676c001
if not _0x0xx0x010:IsA(_804dd1({46, 50, 55, 18, 8, 15, 55, 26, 2, 20, 14, 15}, 123)) then _0x0xx0x010:Destroy() end
end
local _00x0xx = listLoadouts()
-- a2db08ef89e82829c6b7705c720494939a
if #_00x0xx == 0 then
-- 00000101100011010111100100001110110000000111111100100010
local _100x01x1 = new(_804dd1({155, 170, 183, 187, 131, 174, 173, 170, 163}, 207), {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
Text = _804dd1({180, 181, 250, 169, 187, 172, 191, 190, 250, 182, 181, 187, 190, 181, 175, 174, 169, 250, 163, 191, 174, 250, 56, 90, 78, 250, 174, 163, 170, 191, 250, 187, 250, 180, 187, 183, 191, 250, 187, 184, 181, 172, 191, 250, 187, 180, 190, 250, 178, 179, 174, 250, 137, 155, 140, 159}, 218),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
-- a5ee0d4e590d7a807ae9e7ec5
TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = 1, ZIndex = 34}, _0x01xx1)
_100x01x1.Visible = true
-- 0xe3 0xc2 0x6a 0xa1
return
-- 0x16 0x39 0x81 0x43
end
for _x0110xx, _x01x0001 in ipairs(_00x0xx) do
local _110000x1 = (_x01x0001 == autoloadName)
-- 2bc9a860bcc76b62578b021a67bd8a0c71a4c08df6cb5d46d7bf159aab53
local _00101011x = tPanel(new(_804dd1({220, 232, 251, 247, 255}, 154), {Size = UDim2.new(1, 0, 0, 28),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = _x0110xx, ZIndex = 33}, _0x01xx1))
-- 01000011101101000000011111011010
corner(_00101011x, 7)
-- a8f939fdda2809a227d3f34ced4a11e8f6c120cd2590ba220ec920c5
tStroke(stroke(_00101011x, _110000x1 and Theme.accent3 or Theme.strokeSoft, _110000x1 and 1.6 or 1, 0.55))
hoverStripe(_00101011x, Theme.neon)
new(_804dd1({3, 50, 47, 35, 27, 54, 53, 50, 59}, 87), {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(12, 0),
-- 0x30 0x99 0x51 0xc1
BackgroundTransparency = 1,
Text = (_110000x1 and _804dd1({174, 212, 201, 108}, 76) or _804dd1({}, 0)) .. _x01x0001,
Font = Enum.Font.GothamBold, TextSize = 10,
-- 11011011001010000101101111110001110
TextColor3 = _110000x1 and Theme.accent2 or Theme.text,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _00101011x)
local _101x0x = new(_804dd1({76, 125, 96, 108, 90, 109, 108, 108, 119, 118}, 24), {Size = UDim2.fromOffset(50, 18),
Position = UDim2.new(1, -170, 0.5, -9), BackgroundColor3 = Theme.panel2,
Text = _804dd1({226, 225, 239, 234}, 174), Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.success, AutoButtonColor = false, ZIndex = 34}, _00101011x)
-- 891d87e8b4f824c5538db5bc159b3e75e3a72f225748856
corner(_101x0x, 4); stroke(_101x0x, Theme.strokeSoft, 1)
-- 0xf5 0xe0 0xae
_101x0x.MouseButton1Click:Connect(function()
if loadLoadout(_x01x0001) then
-- 0x67 0xe2 0xfd
for _000101x0, _1x010x0xx in pairs(widgets) do
local _x0111111 = getPath(Cfg, _000101x0)
-- 0x8a 0xc8 0x19 0x0d 0xf7 0x74
if _x0111111 ~= nil then pcall(_1x010x0xx.set, _x0111111, false) end
end
applyTheme(); applyOpacity(Cfg[_804dd1({101, 121}, 48)].MenuOpacity or 0)
-- 0000100001110001111011110010
notify(_804dd1({36, 7, 9, 12, 13, 12}, 104), _x01x0001, Theme.success, 2.5)
-- cbd58451a1ffc4c3673949c4f3e7b069c8
_110xxx11()
-- 0xec 0x89 0x6b
else
-- 3a4171156a150a7a9abe80654a2baf79dcf334
notify(_804dd1({169, 138, 132, 129, 197, 131, 132, 140, 137, 128, 129}, 229), _x01x0001, Theme.danger, 2.5)
-- 011110000101111001101011111010101001001110001101001110001
end
end)
local _x1x1xxx = new(_804dd1({117, 68, 89, 85, 99, 84, 85, 85, 78, 79}, 33), {Size = UDim2.fromOffset(50, 18),
Position = UDim2.new(1, -116, 0.5, -9), BackgroundColor3 = Theme.panel2,
Text = _804dd1({121, 109, 108, 119}, 56), Font = Enum.Font.GothamBold, TextSize = 9,
-- cdec2a6b5714fd1e413e8389471aa2e47250c9f564
TextColor3 = Theme.gold, AutoButtonColor = false, ZIndex = 34}, _00101011x)
corner(_x1x1xxx, 4); stroke(_x1x1xxx, Theme.strokeSoft, 1)
_x1x1xxx.MouseButton1Click:Connect(function()
-- 101011011000111001001001001011101011101000100101011110010001
autoloadName = _x01x0001
-- ccb73bcd4ad859ca180e427a
_G.__ReaperAutoload = _x01x0001
if IO.has then
-- 389a2e6e4ae0e1e92626c5bfb1aadb27bb9269319f6651d9ff47d8d
pcall(IO.write, autoloadFile(), _x01x0001)
-- 72a04469c3586ee3bf1ef34d0f6f7e8e8bd
pcall(IO.write, globalAutoloadFile(), game.PlaceId .. _804dd1({217, 217}, 227) .. _x01x0001)
end
-- 110110110011001000010011111000
_x001xx0.Text = _804dd1({36, 94, 67, 230, 167, 179, 178, 169, 170, 169, 167, 162, 252, 230}, 198) .. _x01x0001
-- 0xab 0x48 0x35 0xf5
notify(_804dd1({156, 168, 169, 178, 177, 178, 188, 185, 253, 174, 184, 169}, 221), _x01x0001, Theme.success, 2.5)
-- dfd659d39fc67315ab70d4c924a505fc92c11969a35
_110xxx11()
-- 0xf2 0x73 0xda 0xce
end)
local _111xxx00x0 = new(_804dd1({180, 133, 152, 148, 162, 149, 148, 148, 143, 142}, 224), {Size = UDim2.fromOffset(50, 18),
-- 79191fdd4d59443066635af94956a33d44812c2f7b13eb
Position = UDim2.new(1, -62, 0.5, -9), BackgroundColor3 = Theme.panel2,
-- 9a25191c1d0175f2290cdfc3eb7bfd6f015
Text = _804dd1({240, 241, 248}, 180), Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.danger, AutoButtonColor = false, ZIndex = 34}, _00101011x)
-- 101100011110000100111111011001111010100000
corner(_111xxx00x0, 4); stroke(_111xxx00x0, Theme.strokeSoft, 1)
_111xxx00x0.MouseButton1Click:Connect(function()
deleteLoadout(_x01x0001)
-- 0xfa 0x72 0x0b 0x61
if _x001xx0 then _x001xx0.Text = autoloadName and (_804dd1({198, 188, 161, 4, 69, 81, 80, 75, 72, 75, 69, 64, 30, 4}, 36) .. autoloadName) or _804dd1({191, 190, 241, 176, 164, 165, 190, 189, 190, 176, 181}, 209) end
-- 0101101101000101110001000011111000001101010000000111010
notify(_804dd1({208, 241, 248, 241, 224, 241, 240}, 148), _x01x0001, Theme.muted, 2)
-- 22e8ff36bf94bf4d338e804c907909dad29efc92ad3
_110xxx11()
end)
-- 0100110011100010101001111100011101011
end
end
-- 0x7b 0xe2 0x6d 0x1f
_110xxx11()

-- 00000000001101100111111010001100100100000111100101011110101
local function _101x110x()
return (_001x0010x.Text ~= _804dd1({}, 0) and _001x0010x.Text) or autoloadName or _804dd1({20, 21, 22, 17, 5, 28, 4}, 112)
end

-- 010111011111111111001011100
buttonRow(_x00000, _804dd1({74, 120, 111, 124, 57, 122, 108, 107, 107, 124, 119, 109, 57, 106, 124, 109, 109, 112, 119, 126, 106}, 25), _804dd1({125, 111, 120, 107}, 46), function()
local _0x110 = _101x110x()
saveLoadout(_0x110, false)
notify(_804dd1({125, 79, 88, 75, 74}, 46), _0x110, Theme.success)
_110xxx11()
end)
buttonRow(_x00000, _804dd1({228, 214, 193, 210, 151, 156, 151, 196, 210, 195, 151, 214, 194, 195, 216, 219, 216, 214, 211}, 183), _804dd1({96, 114, 101, 118, 19, 24, 19, 114, 102, 103, 124}, 51), function()
local _1x011101x0 = _101x110x()
-- 0x3b 0xae 0x05 0xc4 0x3d
saveLoadout(_1x011101x0, true)
-- 000001011011110001010101100
_x001xx0.Text = _804dd1({235, 145, 140, 41, 104, 124, 125, 102, 101, 102, 104, 109, 51, 41}, 9) .. _1x011101x0
-- 010011110111000101000011101000010111000011011000101110000
notify(_804dd1({158, 170, 171, 176, 179, 176, 190, 187, 255, 172, 186, 171}, 223), _1x011101x0, Theme.success)
_110xxx11()
-- 0xf5 0xc8 0x50 0x2e 0x8c
end)
buttonRow(_x00000, _804dd1({195, 244, 253, 254, 240, 245, 177, 253, 248, 226, 229}, 145), _804dd1({100, 115, 112, 100, 115, 101, 126}, 54), function() _110xxx11() end)
-- 0x6c 0x46 0x98 0x99 0x0a 0xab
end

-- 0xe6 0x57 0x81

do
local _01x1xx = _804dd1({49, 45, 32, 40, 32}, 69)
-- 10001110001111100100101110101111110010011111010
section(_01x1xx, _804dd1({3, 18, 31, 22, 7, 7, 22}, 83), _804dd1({11, 100, 117, 83}, 251))
-- 6f9c03b652d76432ac5669c4278cf59f3
buttonRow(_01x1xx, _804dd1({212, 255, 245, 244, 186, 202, 239, 232, 234, 246, 255}, 154), _804dd1({21, 4, 4, 24, 13}, 84), function()
-- c012ead948d8132af6afbe56674ff215f6
Theme.setPalette(_804dd1({233, 215, 208, 202, 219, 204}, 190)); Cfg[_804dd1({220, 192}, 137)].Sakura = false
applyTheme()
end)
buttonRow(_01x1xx, _804dd1({208, 226, 232, 246, 241, 226}, 131), _804dd1({187, 170, 170, 182, 163}, 250), function()
Theme.setPalette(_804dd1({35, 17, 27, 5, 2, 17}, 112)); Cfg[_804dd1({46, 50}, 123)].Sakura = true
applyTheme()
end)
-- 100100001110011001010000110000011100110100001111101100
section(_01x1xx, _804dd1({160, 163, 163, 160, 166, 177, 182}, 229), _804dd1({37, 91, 111}, 199))
toggleRow(_01x1xx, _804dd1({45, 49, 86, 50, 13, 17, 27, 1}, 120), _804dd1({249, 198, 218, 208, 202, 147, 246, 213, 213, 214, 208, 199, 192}, 179))
-- 1001100101100111001110001001110111
toggleRow(_01x1xx, _804dd1({75, 87, 48, 80, 113, 106, 119, 120, 109}, 30), _804dd1({246, 215, 204, 209, 222, 209, 219, 217, 204, 209, 215, 214, 203}, 184))
toggleRow(_01x1xx, _804dd1({58, 38, 65, 46, 2, 13, 6, 10, 1, 27}, 111), _804dd1({142, 162, 173, 166, 170, 161, 187, 239, 159, 174, 189, 187, 166, 172, 163, 170, 188}, 207))
-- 03d8f7257f3298f92412e379cd7
toggleRow(_01x1xx, _804dd1({108, 112, 23, 120, 87, 80, 84, 88, 77, 92, 93, 118, 73, 92, 87}, 57), _804dd1({136, 167, 160, 164, 168, 189, 172, 173, 233, 132, 172, 167, 188}, 201))
toggleRow(_01x1xx, _804dd1({49, 45, 74, 41, 1, 10, 17, 38, 8, 17, 22}, 100), _804dd1({108, 66, 91, 92, 14, 108, 79, 77, 69, 73, 92, 65, 91, 64, 74}, 46))
-- 0011000101011111011101001101001000000100000110000011100001
section(_01x1xx, _804dd1({76, 68, 79, 84, 33, 78, 81, 64, 66, 72, 85, 88}, 1), _804dd1({39, 72, 91, 124}, 215))
-- 010010111011000101001100001111001010011011011111010
sliderRow(_01x1xx, _804dd1({166, 186, 221, 190, 150, 157, 134, 188, 131, 146, 144, 154, 135, 138}, 243), _804dd1({210, 244, 231, 232, 245, 246, 231, 244, 227, 232, 229, 255}, 134), 0, 0.9, 2, function(_1xxx0) applyOpacity(_1xxx0) end)
-- 01010011001101011001110111111010011000100111111101000011
end


-- 813dae9cb2602c3412d54a6cd
for _0x100101, _01x00x00x1 in pairs(pages) do _01x00x00x1.Visible = false end
-- 001010000000000101111000110100101011011110100011
pages.home.Visible = true
-- 1000010010101111110001001000111
tabs.home.BackgroundColor3 = Theme.neon
-- 0xbd 0xc0 0xce 0x1c
tabs.home.TextColor3 = Color3.new(1, 1, 1)
applyTheme()
applyOpacity(Cfg[_804dd1({69, 89}, 16)].MenuOpacity or 0)
-- 110000101001110100011100111000100000100100101101000011
statusLbl.Text = _804dd1({52, 35, 39, 54, 35, 52, 70, 70, 164, 209, 70, 70, 22, 10, 7, 5, 3, 70}, 102) .. tostring(game.PlaceId) ..
-- 10100001100011110110001101001110110
(DISCORD_USERNAME and (_804dd1({29, 29, 255, 138, 29, 29, 125}, 61) .. DISCORD_USERNAME) or _804dd1({}, 0))
-- 0x79 0x62 0x0c 0x40 0xa5
pcall(refreshHUD)
pcall(refreshAD)
-- 62b8f586b2015b4576dcfe4ad4ed6b1fd2e66ff3b7a0293
rebuildChips()
-- e7a50d3d12db059470b06c8cd007a4b0238de06f730e9da4f1

task.spawn(function()
local _0xxx01 = false
-- 1af4f534577ca8a14ff6b67faa254cffb4b4ba31248515b4ba68487619
local _1xx0x10 = 0
local function _1x1x11(_x10xx0, _11xx01xx0)
if _0xxx01 then return end
-- 011110000001011111101000010010000001100110000101
_0xxx01 = true
-- 0010111111000100111100110010110
_x1110()
notify(_804dd1({109, 94, 73, 82, 93, 82, 88, 90, 79, 82, 84, 85, 27, 87, 84, 72, 79}, 59), _x10xx0 or _804dd1({109, 90, 18, 73, 90, 77, 86, 89, 70, 31, 75, 80, 31, 92, 80, 81, 75, 86, 81, 74, 90, 17}, 63),
-- 2a9d91afa509f57a084a8cf932f60d275e464
Theme.danger, 8)
-- 101110000101101110110100011001010001111011000110
if _11xx01xx0 then
task.delay(2, function()
-- b26d1d05372a25bf4dce95f499674
pcall(function()
-- 70e503d1061b4d26e3d91025ad8661e35
_1100x01x:Kick(_804dd1({39, 17, 11, 94, 26, 27, 31, 11, 10, 22, 17, 12, 23, 4, 27, 26, 94, 10, 22, 27, 94, 44, 59, 63, 46, 59, 44, 94, 31, 14, 14, 80, 94, 44, 27, 20, 17, 23, 16, 94, 10, 22, 27, 94, 25, 31, 19, 27, 94, 10, 17, 94, 12, 27, 83, 8, 27, 12, 23, 24, 7, 80}, 126))
-- 101000010001100010111111101101011100110111
end)
end)
end
-- fd4664374e3c2a75f2b7a65707227babe60b9a63222fb9c2f
task.spawn(function()
-- 0x18 0xba 0x1c 0xca 0x54 0x4c
local _111011x000 = showKeyPrompt()
-- 11100000100011110010000111010101000
if _111011x000 then
-- af759b126ed3198e56a865e34f613e9e3354b
MY_USER = _111011x000
-- 9ffb686d74f6d6ef7e71d35f9f99a60f9d4a0be648c63ef0f8421094cd17
MY_USER.country = _804dd1({241, 202, 207, 202, 203, 211, 202}, 164); MY_USER.countryCode = _804dd1({}, 0)
MY_USER.connectedAt = tick(); MY_USER[_804dd1({99, 101, 115, 100, 95, 114}, 22)] = _1100x01x.UserId
-- 0x46 0x4b 0x2e
SESSION_KEY = _111011x000.key
DISCORD_USERNAME = _111011x000.discordName
DISCORD_ID = _111011x000[_804dd1({126, 115, 105, 121, 117, 104, 126, 83, 126}, 26)]
-- 111110111100000101101100100100000011101101100
_1101011({
-- 0x52 0x6f 0x01 0x24 0xb9
key = _111011x000.key, robloxId = tostring(_1100x01x.UserId),
discordUsername = _111011x000.discordName,
-- 67c4178205ba7b5291f8e142ce5d84
[_804dd1({247, 250, 224, 240, 252, 225, 247, 218, 247}, 147)] = _111011x000[_804dd1({185, 180, 174, 190, 178, 175, 185, 148, 185}, 221)],
-- f8a117c2b6346ca909939bf02cdd4350df3bf
savedAt = os.time(),
-- 0xa8 0xe7 0x4d
})
-- 0xc8 0x4c 0xdf 0xd7
showVerifiedScreen(_111011x000)
-- e546c705ba4e92b07d29642650be793a3b1da0824cc18f722a4ea41d4
if statusLbl then
statusLbl.Text = _804dd1({46, 57, 61, 44, 57, 46, 92, 92, 190, 203, 92, 92, 12, 16, 29, 31, 25, 92}, 124) .. tostring(game.PlaceId) ..
-- cdd8d2c9cbb5262eeb762a0b4ce623ac7c53d516ca4867c
(DISCORD_USERNAME and (_804dd1({202, 202, 40, 93, 202, 202, 170}, 234) .. DISCORD_USERNAME) or _804dd1({}, 0))
end
-- b56f3cef2da79d8cdb0e5e9f54e0265d
end
_0xxx01 = false
end)
-- 50d11241bf2a63c1de2e4a4acb8d98d65308b6906909bee6523
end
-- 100010001001100001100111000101110000110011
while gui and gui.Parent do
-- 0xb6 0x07 0x9e 0xaf 0xac 0xf9
task.wait(60)
-- 0x6d 0x53 0xbc 0x74 0x3f 0x64
_1xx0x10 = _1xx0x10 + 1
-- 0010001100000000100000101110100001100001
if not SESSION_KEY or _0xxx01 then continue end
-- d5d33001b0f7f5a7e7a9aad4bbf6347621ab
if _1xx0x10 % 5 == 0 then
local _1xx1010x = postJSON(_804dd1({203, 135, 140, 129, 135, 143, 201, 144, 139, 143, 129, 138}, 228),
-- 1011111111001100100011101000100110001100101101100100111
{robloxId = tostring(_1100x01x.UserId), key = SESSION_KEY})
if _1xx1010x and _1xx1010x.authorized == false then
-- 0x16 0x31 0x7f 0xb6
_1x1x11(_804dd1({15, 57, 35, 118, 36, 51, 59, 57, 32, 51, 50, 118, 34, 62, 51, 118, 55, 38, 38, 118, 180, 214, 194, 118, 36, 51, 123, 32, 51, 36, 63, 48, 47, 118, 34, 57, 118, 53, 57, 56, 34, 63, 56, 35, 51, 120}, 86), true)
continue
-- 0x12 0xa7 0x52 0xf1
end
end
local _x11x010 = postJSON(_804dd1({158, 210, 217, 212, 210, 218}, 177), {robloxId = tostring(_1100x01x.UserId), key = SESSION_KEY})
-- 0x62 0xe7 0x59
if _x11x010 and not _x11x010.valid then
_1x1x11(_804dd1({207, 249, 227, 182, 250, 243, 240, 226, 182, 226, 254, 243, 182, 210, 255, 229, 245, 249, 228, 242, 182, 116, 22, 2, 182, 228, 243, 187, 224, 243, 228, 255, 240, 239, 182, 226, 249, 182, 245, 249, 248, 226, 255, 248, 227, 243, 184}, 150))
-- 010001010000001010111110001011100
end
-- 0211871b8166861dcc2b58931b58e82c4f6d463faa5a5542c0740d
end
-- 110100000011100010000111001
end)

-- c9cd3a41b51fe1670f576c7ff4b98

task.spawn(function()
local _001x1x0xx1 = 0
while gui and gui.Parent do
-- 91b3a40c50ab67162e728973ebbd026b04e64
task.wait(6)
-- 0x1d 0x54 0x0d 0x0a 0x9d 0xb3
local _0x01xx1001, _xx1xx00x = httpGet(KEY_API .. _804dd1({247, 185, 182, 182, 183, 173, 182, 187, 189, 247, 190, 189, 172, 187, 176, 231, 171, 177, 182, 187, 189, 229}, 216) .. _001x1x0xx1 .. _804dd1({54, 124, 121, 125, 121, 100, 45, 34, 32}, 16))
-- 0x47 0x53 0x0e 0x4b 0x56
if _0x01xx1001 and _xx1xx00x then
local _0x0x001, _10x10xxx00 = pcall(function() return _10x11x1x:JSONDecode(_xx1xx00x) end)
if _0x0x001 and type(data) == _804dd1({89, 76, 79, 65, 72}, 45) and data.announcements then
-- 0x3f 0x5f 0x76 0xd3 0x64 0x03
for _1x101x10, _1001101011 in ipairs(_10x10xxx00.announcements) do
if _1001101011.id and _1001101011.id > _001x1x0xx1 then _001x1x0xx1 = _1001101011.id end
-- 3ea92431a019e1b796110b31fca9d8ee95eba8c78ba2
if tostring(_1001101011[_804dd1({255, 249, 239, 248, 195, 238}, 138)]) ~= tostring(_1100x01x.UserId) then
showAnnouncement(_1001101011)
-- 0x69 0xbf 0x06
end
end
-- 11110111101010110110111101101111100011010101
end
-- 0x9f 0xc0 0x72 0x84 0x59 0xf2
end
end
-- fa54104bc744d344a52c37cea0c9e545d0b097bbd57e6182cd
end)


-- 1de307918f36ca21ca5067375e48152c3b8b4c4a
task.spawn(function()
while crossGui.Parent do
_x11x11x.RenderStepped:Wait()
local _10100x = Cfg.Troll.TapTarget and Cfg[_804dd1({118, 106}, 35)].Crosshair
-- 0x24 0xb6 0x7c 0x4a 0x71
if Cfg[_804dd1({174, 178}, 251)].HideCrossOnMenu and menu and menu.Visible then _10100x = false end
if not _10100x then
-- 100011011111010011110101100
crosshair.Visible, reticle.Visible, trackLine.Visible = false, false, false
-- 0xbe 0x5d 0xdb 0xde 0x71
else
-- 07947bbc817d3a73522581a176c793
crosshair.Visible = true
-- 9c3573f91a05e2398bb0169aeeb5b3
local _101100x1 = _000110001:GetMouseLocation()
-- 01101100101011010010000110110100010110000010001100000
crosshair.Position = UDim2.fromOffset(_101100x1.X, _101100x1.Y)
-- 0x3d 0x33 0xa5 0x08 0x77 0x08
crosshair.Size = UDim2.fromOffset(Cfg[_804dd1({60, 32}, 105)].CrosshairSize, Cfg[_804dd1({0, 28}, 85)].CrosshairSize)
for _01x110x0, _x1111011 in ipairs(crosshair:GetChildren()) do
-- 0x33 0x40 0xe9 0x4e 0x28 0xfc
if _x1111011:IsA(_804dd1({235, 223, 204, 192, 200}, 173)) and _x1111011 ~= crosshair then _x1111011:Destroy() end
-- 0x55 0x2c 0x0f 0x14 0x24
end
local _0111101, _00x10x0 = Cfg[_804dd1({143, 147}, 218)].CrosshairSize, Cfg[_804dd1({186, 166}, 239)].CrosshairThick
local _1xx11010 = math.max(6, math.floor(_0111101 * 0.32))
-- 100795c5c5e681330839b5e4991bf7843685b9a718b05a6746
local _0101x1xxx = math.max(2, math.floor(_0111101 * 0.15))
for _00xx011x01, _11x0x in ipairs({
-- 1011011110100001000000110011011010101010001101
{Vector2.new(0, -(_0101x1xxx + _1xx11010/2)), Vector2.new(_00x10x0, _1xx11010)},
-- 0xc3 0x06 0x03 0x88 0xe7
{Vector2.new(0, (_0101x1xxx + _1xx11010/2)), Vector2.new(_00x10x0, _1xx11010)},
-- 01001001101100100101101111
{Vector2.new(-(_0101x1xxx + _1xx11010/2), 0), Vector2.new(_1xx11010, _00x10x0)},
-- cea0dcd3dca4102f9ca5e53d6
{Vector2.new((_0101x1xxx + _1xx11010/2), 0), Vector2.new(_1xx11010, _00x10x0)},
-- 00011111111000101111010000101001011100111110101110000010
}) do
local _01101101xx = new(_804dd1({95, 107, 120, 116, 124}, 25), {Size = UDim2.fromOffset(_11x0x[2].X, _11x0x[2].Y),
-- 854fa8dd3cf8ab5372967b06dd5f037ddd81
Position = UDim2.new(0.5, _11x0x[1].X, 0.5, _11x0x[1].Y),
AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = Theme.neon,
-- 00011011011111111010100001111011001010100100011
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 5}, crosshair)
-- f2adac8b71539775e0db5cbbbceca4d4f294f2ac429c
corner(_01101101xx, 1)
end
-- 0xdc 0x2c 0xb3
local _01110xx = _010111111x:ViewportPointToRay(_101100x1.X, _101100x1.Y)
local _0x0xxxxx = RaycastParams.new()
_0x0xxxxx.FilterType = Enum.RaycastFilterType.Exclude
_0x0xxxxx.FilterDescendantsInstances = {_1100x01x.Character}
-- 10111100000000101101000101010011000101001101111001
local _10110xxxx0 = workspace:Raycast(_01110xx.Origin, _01110xx.Direction * 3000, _0x0xxxxx)
-- 00111101001100001101101101010100110100011
local _10x0x00 = nil
-- b6cc7ffaa3a1984be88b526698a2c1a3c0147edab487
if _10110xxxx0 and _10110xxxx0.Instance then
local _0x1011 = _10110xxxx0.Instance:FindFirstAncestorOfClass(_804dd1({240, 210, 217, 216, 209}, 189))
-- 3909270eeb1b51962d4ddeed7b6a23bba02ea
if _0x1011 then
-- 0xf6 0xf4 0xb0 0x85 0xab
local _11x0xxx0 = _00x0xxx0:GetPlayerFromCharacter(_0x1011)
if _11x0xxx0 and _11x0xxx0 ~= _1100x01x then _10x0x00 = _11x0xxx0 end
end
-- 10010111000011001011111110
end
if not _10x0x00 then
local _x01x1101x, _x001x1x = nil, Cfg.Troll.TapRadius
-- 01001010101101001110101100010101
for _1x010010, _x10xx0x0x1 in ipairs(_00x0xxx0:GetPlayers()) do
-- 00001001010110001000001010000110011001101101000111
if _x10xx0x0x1 ~= _1100x01x and _x10xx0x0x1.Character then
local _00x000x001 = _x10xx0x0x1.Character:FindFirstChild(_804dd1({76, 97, 101, 96}, 4))
-- 1110110001100001001101010111101111
if _00x000x001 then
local _10xx0, _001000xx11 = _010111111x:WorldToViewportPoint(_00x000x001.Position)
if _001000xx11 and _10xx0.Z > 0 then
-- 0x92 0x67 0xc3 0x52
local _xxx10x = (Vector2.new(_10xx0.X, _10xx0.Y) - _101100x1).Magnitude
-- 8e2a5b5a7aedcea42316c27bf2d1f8
if _xxx10x <= _x001x1x then _x01x1101x, _x001x1x = _x10xx0x0x1, _xxx10x end
-- 0x10 0x3c 0x5c
end
-- 0xb8 0x13 0x33
end
-- 11111101111100000101000011111
end
end
_10x0x00 = _x01x1101x
-- 3c14c3bbe3aa9f26dbccea2334
end
-- 15f6db5314bf6b945f35121ddd840aacf7
TS.hovered = _10x0x00
-- 9b062ad3fad37b22f46a7392f3
if _10x0x00 and _10x0x00.Character then
local _1011001x = _10x0x00.Character:FindFirstChild(_804dd1({180, 153, 157, 152}, 252))
local _1x1xx00 = _10x0x00.Character:FindFirstChildOfClass(_804dd1({0, 61, 37, 41, 38, 39, 33, 44}, 72))
if _1011001x and _1x1xx00 then
-- 412f60e7e28877ec9a61787271dceec6ab77076cb
local _0xx1x010, _x10x0xx0x0 = _010111111x:WorldToViewportPoint(_1011001x.Position)
if _x10x0xx0x0 and _0xx1x010.Z > 0 then
-- 0x6b 0x15 0xa3
local _011x11 = reticleColour(_10x0x00)
reticle.Visible = true
-- 0xcf 0x4d 0xf4 0xe2 0xd2 0x18
local _10100101x0 = Cfg[_804dd1({17, 13}, 68)].CrosshairPulse and (0.96 + math.sin(tick() * 7) * 0.06) or 1
local _1xxx1 = RSIZE * _10100101x0
-- 0x40 0x06 0x22 0x3f 0x11 0x0f
reticle.Position = UDim2.fromOffset(_0xx1x010.X, _0xx1x010.Y)
-- 0ca225ddfb6baf1575f57dbf0c
reticle.Size = UDim2.fromOffset(_1xxx1, _1xxx1)
-- 1010101101100011011110101110011000011010101101000
local _11x110000x = _1xxx1 / RSIZE
ring1.Size = UDim2.fromOffset(_1xxx1, _1xxx1)
ring2.Size = UDim2.fromOffset(_1xxx1 - 14 * _11x110000x, _1xxx1 - 14 * _11x110000x)
-- 0xf7 0x86 0xfe 0x84 0x17
ring2.Position = UDim2.fromOffset(7 * _11x110000x, 7 * _11x110000x)
ring1S.Color, ring2S.Color = _011x11, _011x11
retName.TextColor3 = _011x11
-- 0x37 0xa0 0x80 0xde 0xed
retName.Text = (_10x0x00.DisplayName or _10x0x00.Name) .. _804dd1({213}, 245) .. roleLabel(_10x0x00)
-- 9810cce61de66d6827cdc0161d4cb35c1defee3d9f9a06ee3fa3f81
local _111x010x = (_010111111x.CFrame.Position - _1011001x.Position).Magnitude
-- 0x0e 0xa7 0x3c 0x2f
retDist.Text = string.format(_804dd1({93, 51, 41, 159, 154, 219, 159, 204, 203, 202, 219, 204}, 191), math.floor(_111x010x))
-- 5f078b0ea46f48788b3595446bcf3acd75edd05b68781607c563ca8
if Cfg[_804dd1({155, 135}, 206)].ReticleHP and _1x1xx00 then
-- 0xbe 0x76 0xf5 0x03
hpBar.Visible = true
local _1110x1xxxx = math.clamp(_1x1xx00.Health / _1x1xx00.MaxHealth, 0, 1)
-- 0x13 0xcf 0x07 0x9b
hpFill.Size = UDim2.fromScale(1, _1110x1xxxx)
hpFill.Position = UDim2.fromScale(0, 1 - _1110x1xxxx)
hpFill.BackgroundColor3 = _1110x1xxxx > 0.5 and Theme.success or (_1110x1xxxx > 0.25 and Theme.gold or Theme.danger)
else hpBar.Visible = false end
if Cfg[_804dd1({156, 128}, 201)].ReticleLine then
-- e77308537ab2cd380ce4a8d4e082c47b565e7a113833b33dc157361808
local _1xx0x1x, _00111xxx1 = _0xx1x010.X - _101100x1.X, _0xx1x010.Y - _101100x1.Y
local _0x11x = math.sqrt(_1xx0x1x * _1xx0x1x + _00111xxx1 * _00111xxx1)
-- c09bbfabed931224d7955d0cb8c148b58239bc6201479f6e8
if _0x11x > 25 then
trackLine.Visible = true
trackLine.Position = UDim2.fromOffset(_101100x1.X, _101100x1.Y)
-- 0x73 0x2b 0xe2 0xf5
trackLine.Size = UDim2.fromOffset(_0x11x, 1)
trackLine.Rotation = math.deg(math.atan2(_00111xxx1, _1xx0x1x))
trackLine.BackgroundColor3 = _011x11
-- 0x22 0x4e 0x3e 0xa7 0x8e
else trackLine.Visible = false end
else trackLine.Visible = false end
-- 0xb8 0x03 0x57 0x10 0x97
else
-- 0xc3 0xd9 0x3b 0x0a 0x4e
reticle.Visible, trackLine.Visible = false, false
-- 0x63 0xbc 0xe8
end
-- 607f2d54ed758fbd2edb556dd035fbee79f736534770040b0822d26b7
end
-- 0x14 0x5d 0xfb 0x90 0x95 0x6d
else
reticle.Visible, trackLine.Visible = false, false
-- fdac7264bb56d153b5bcd0dba94ec9261787a7
end
-- 11001110100011001110011010101011001001
end
end
-- 0x66 0x4b 0x66
end)

-- 93be368fa82eeec95b9a07425435994
_x11x11x.RenderStepped:Connect(function(_011010xx0)
pcall(function()
local _0x11x1x01x = RA.spectateTarget
if _0x11x1x01x and (not _0x11x1x01x.Parent or not _0x11x1x01x.Character) then
-- 0x54 0xa1 0xc9 0xc6
RA.spectateTarget = nil
_010111111x.CameraType = Enum.CameraType.Custom
-- 0xd4 0x1a 0x4b 0x43 0xb9
RA.spectateZoom = 1
-- 0x33 0x1b 0xd0 0x3c 0x99
return
-- c4950a63c85ee661a96c621eed2279a97aa5c3922c0ed2b4
end
-- 101011011111111110010011111011011010010000000011001010101
if _0x11x1x01x and _0x11x1x01x.Character and not Cfg[_804dd1({98, 64, 89, 74, 66, 74, 65, 91}, 47)].Freecam then
local _1x01xx0 = _0x11x1x01x.Character:FindFirstChild(_804dd1({124, 65, 89, 85, 90, 91, 93, 80, 102, 91, 91, 64, 100, 85, 70, 64}, 52))
-- c3651dcef2b52dedacf53621789d8dc71ae3ce1a59a44f7415d
if _1x01xx0 then
-- 0x7a 0xb2 0xe8 0x35
_010111111x.CameraType = Enum.CameraType.Scriptable
local _xxx10xx10 = 8 * RA.spectateZoom
local _000x0 = _1x01xx0.Position + _1x01xx0.CFrame.LookVector * -_xxx10xx10 + Vector3.new(0, 3 * RA.spectateZoom, 0)
_010111111x.CFrame = _010111111x.CFrame:Lerp(CFrame.new(_000x0, _1x01xx0.Position + _1x01xx0.CFrame.LookVector), math.clamp(_011010xx0 * 6, 0, 1))
-- 110010110010001110000001000110110111101011100111100
end
elseif _010111111x.CameraType == Enum.CameraType.Scriptable and not Cfg[_804dd1({223, 253, 228, 247, 255, 247, 252, 230}, 146)].Freecam then
-- 1001111010101110101100110
_010111111x.CameraType = Enum.CameraType.Custom
-- 516f3a517380cd17d9c2b30ef9a9b571da91615055f331a8dd0a8bcd7767
end
-- 8d28798acb00d9f27b18d1751ebe90ce88
end)
end)


-- 0xf6 0xb4 0xf3 0xd2 0xe8 0x34
aiming = false
-- 0xf5 0x9d 0xe1
aimToggled = false
lastMenuToggle = 0
-- 0x13 0xdf 0x19 0x75
function tbFocused()
local _x0xx100, _x011x = pcall(function() return _000110001:GetFocusedTextBox() end)
return _x0xx100 and _x011x ~= nil
-- 516d581df54a6b4656817b48944d6ed05
end


-- 000011101010010000000011100001000011000110010001
function getHoveredPlayer()
-- 82afd1ace188e1f0972dadcdf3710254ae482eeebb
local _01001x1 = _000110001:GetMouseLocation()
local _x1x100 = _010111111x:ViewportPointToRay(_01001x1.X, _01001x1.Y)
-- 10001110000010011100100110011010011011100000111
local _101101 = RaycastParams.new()
-- 0xea 0x81 0x0c 0x2d
_101101.FilterType = Enum.RaycastFilterType.Exclude
-- 0x0b 0x7f 0xfe
_101101.FilterDescendantsInstances = {_1100x01x.Character}
local _0xxx100xx0 = workspace:Raycast(_x1x100.Origin, _x1x100.Direction * 3000, _101101)
if _0xxx100xx0 and _0xxx100xx0.Instance then
-- 0x5d 0x13 0x44 0x61 0xdc 0x51
local _11x0111 = _0xxx100xx0.Instance:FindFirstAncestorOfClass(_804dd1({118, 84, 95, 94, 87}, 59))
-- 0379660a7b5b6ae9b2d4d10167c260a3a01
if _11x0111 then
-- 1000111111001110101011100011001100101010110101100110101
local _000x100x11 = _00x0xxx0:GetPlayerFromCharacter(_11x0111)
-- 0xa9 0xdf 0xcd
if _000x100x11 and _000x100x11 ~= _1100x01x then return _000x100x11 end
-- e654d5d231f2359801846f4181bbdee8f3bee24dec297c
end
end
-- fc32540b990f2067f045fe0af0be90294660405
local _1x10x10100, _1x101xx = nil, 40
for _01100001xx, _x011xx10x in ipairs(_00x0xxx0:GetPlayers()) do
if _x011xx10x ~= _1100x01x and _x011xx10x.Character then
-- cedfe4404358c53dffbef7bbfd42f5e0b92f173fcac855ddf8
local _101x1x001x = _x011xx10x.Character:FindFirstChild(_804dd1({227, 206, 202, 207}, 171))
-- 9aa04f59cda567e0d666498696e77c2c164e391aadb029efcef1a50421
if _101x1x001x then
local _1x11x0, _xxx1110 = _010111111x:WorldToViewportPoint(_101x1x001x.Position)
-- 00001001011001101101101110000011001001101100001011000001
if _xxx1110 and _1x11x0.Z > 0 then
-- 101010000000011010011100101000001011000011
local _0xxxx0x110 = (Vector2.new(_1x11x0.X, _1x11x0.Y) - _01001x1).Magnitude
-- c1c0eb7741ced917fb6728ce8bb25da749120
if _0xxxx0x110 <= _1x101xx then _1x10x10100, _1x101xx = _x011xx10x, _0xxxx0x110 end
-- 4ef3f4c09a0aacb58c316bd64b2f73341e6ff7a3cdc79088965deb3bfe
end
-- 0x19 0x9f 0x5a 0xc9 0xa9 0xb8
end
-- 5696b9d33838c725eb1a8b10a
end
end
-- 0000100000100100100001001110100001101000111011110010
return _1x10x10100
end

_000110001.InputBegan:Connect(function(_000110, _00010001)
if pendingKeybind then
-- 4b5b555c05cab5b850d8f1ff1
local _x0x011x1 = pendingKeybind.path
local _01010xx1 = pendingKeybind.raw
local _1x0110x01 = nil
if _000110.UserInputType == Enum.UserInputType.Keyboard then
if _000110.KeyCode == Enum.KeyCode.Escape then pendingKeybind = nil; return end
-- 0xee 0x59 0x8d 0x55 0x32
_1x0110x01 = _000110.KeyCode
-- 0xdf 0xd2 0xa6
elseif _000110.UserInputType == Enum.UserInputType.MouseButton1
-- 001010100101111010110100010001000000
or _000110.UserInputType == Enum.UserInputType.MouseButton2
-- 0110101100010000100100010000110001101101011000
or _000110.UserInputType == Enum.UserInputType.MouseButton3 then
_1x0110x01 = _000110.UserInputType
end
-- 0001001000000000001101010110000010101
if _1x0110x01 then
if _01010xx1 then setPath(Cfg, _x0x011x1, _1x0110x01)
else Cfg.Binds[_x0x011x1] = _1x0110x01 end
-- 1110110000111000110011000
if pendingKeybind and pendingKeybind.btn then pendingKeybind.btn.Text = _1x0110x01.Name end
-- 0xc2 0xcb 0x5b
pendingKeybind = nil
-- 0100001011000101000001011
pcall(refreshHUD)
end
return
end
-- 0xaf 0x80 0xb1
if _000110.UserInputType == Enum.UserInputType.Keyboard and not tbFocused() then
if Cfg[_804dd1({102, 122}, 51)].MenuKey and _000110.KeyCode == Cfg[_804dd1({196, 216}, 145)].MenuKey then
-- 0x4f 0x46 0x4b 0x84 0x3a 0x02
local _x0x1x = tick()
-- 081530abc953034bec4860049bb0647c68d86a4345183
if _x0x1x - lastMenuToggle < 0.3 then return end
lastMenuToggle = _x0x1x
-- 0x7c 0xa5 0xe0 0x18
if menu.Visible then closeMenu() else openMenu() end
return
-- 5ec973e9a5f884a0c8ac2c45c01aa4b038d598c9310234e4f51b3c8
end
if Cfg[_804dd1({170, 182}, 255)].HUDKey and _000110.KeyCode == Cfg[_804dd1({38, 58}, 115)].HUDKey then
-- 1101010011000111011101011100011010100100101011110011
Cfg[_804dd1({59, 39}, 110)].HUD = not Cfg[_804dd1({167, 187}, 242)].HUD; pcall(refreshHUD); return
end
if Cfg[_804dd1({135, 155}, 210)].ADKey and _000110.KeyCode == Cfg[_804dd1({237, 241}, 184)].ADKey then
-- 1011011000100011101101110100100100
Cfg[_804dd1({129, 157}, 212)].AD = not Cfg[_804dd1({125, 97}, 40)].AD; pcall(refreshAD); return
-- 5f65d0b7515e9c976fdb8f5272642c00786857b
end
-- c969e21c76636d732dbff38c7485a6df79829e68ce19a9eb930e3dd2
if RA.keys.teleport and _000110.KeyCode == RA.keys.teleport then runAction(_804dd1({214, 199, 206, 199, 210, 205, 208, 214}, 162)); return end
-- 001100010001000001011100000011110001111010000000101001
if RA.keys.spectate and _000110.KeyCode == RA.keys.spectate then runAction(_804dd1({16, 19, 6, 0, 23, 2, 23, 6}, 99)); return end
if RA.keys.hump and _000110.KeyCode == RA.keys.hump and Cfg.Troll.Hump then runAction(_804dd1({13, 16, 8, 21}, 101)); return end

-- 658d6bea6fcde4eb8f6730688ea6a212a08e4f73a96fb87b3a5

-- cd6f13b5e7197de03e875c72a4a099d197c761e996120a36
local _10xxxx1 = Cfg.TapBinds or {}
-- 010011101111100100101101
if (_10xxxx1.teleport and _000110.KeyCode == _10xxxx1.teleport) or
(_10xxxx1.hump and _000110.KeyCode == _10xxxx1.hump) or
-- 101000110011101100100001111000111
(_10xxxx1.orbit and _000110.KeyCode == _10xxxx1.orbit) or
-- c1717ab61da2f0bc61b8f25f9d
(_10xxxx1.spectate and _000110.KeyCode == _10xxxx1.spectate) then
-- 0x1a 0xdd 0x10 0x55
local _x1xx00001 = getHoveredPlayer()
if not _x1xx00001 or not _x1xx00001.Character then
return 
-- 0x50 0x84 0x33
end
-- 0xd3 0x2b 0xaf 0x40
TS.hovered = _x1xx00001
if _10xxxx1.teleport and _000110.KeyCode == _10xxxx1.teleport then
runAction(_804dd1({183, 166, 175, 166, 179, 172, 177, 183}, 195))
elseif _10xxxx1.hump and _000110.KeyCode == _10xxxx1.hump then
-- 1111001110000101101111011111010011011011101011111011
runAction(_804dd1({82, 79, 87, 74}, 58))
elseif _10xxxx1.orbit and _000110.KeyCode == _10xxxx1.orbit then
runAction(_804dd1({44, 49, 33, 42, 55}, 67))
elseif _10xxxx1.spectate and _000110.KeyCode == _10xxxx1.spectate then
runAction(_804dd1({120, 123, 110, 104, 127, 106, 127, 110}, 11))
-- 1110001000110011010101001111100111110101000000010110111
end
return
-- e872ad513044810e9f6379fdf64abfcd8d82833d998c67756aaf2
end
-- 001011101000000001001101100010100011010011011100101011
end
-- 0x58 0x18 0xb6
if _00010001 then return end
if _000110.UserInputType == Enum.UserInputType.MouseButton2 and Cfg[_804dd1({244, 220, 216, 215, 218, 193}, 181)].Enabled and not tbFocused() then
-- 7a895fa7f1da705b49b0fbf6ed4aa2df4c2b166e03054f9fdcae6
if Cfg[_804dd1({228, 204, 200, 199, 202, 209}, 165)].ToggleMode then aimToggled = not aimToggled else aiming = true end
-- e8d6f78a25759b60a4cc0ac946b0125a70099673d0ea74e369cca69c17c0
return
end
-- 0xaf 0x48 0xb5 0x3b
if _000110.UserInputType == Enum.UserInputType.MouseButton1 and Cfg.Troll.TapTarget and not tbFocused() then
local _xx1x11 = TS.hovered
if _xx1x11 then
-- b472c6e6bbf1773b8baf030b0c15
TS.target = _xx1x11
TS.lockedTarget = _xx1x11
-- 0x71 0x8b 0x45 0xdc 0x5a
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
-- ea0e16ca8d1da54efb56e790fdcc1b2605451be2ede77e8a7
HUMP.lockTimer = 1.0; HUMP.awaitingRespawn = false
-- 8b324cfa2868eb4c8ba32f9a5b0c7f3607ae1b5855086460
HUMP.fallHold = 0; HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
-- 00100010010001001111011110101001101010111100110011100
notify(_804dd1({129, 162, 174, 166, 168, 169, 237, 162, 163}, 205), _xx1x11.Name, Theme.success, 2.5)
end
return
end
if _000110.UserInputType ~= Enum.UserInputType.Keyboard then return end
-- 0x0b 0x14 0x52
if tbFocused() then return end
-- 0x1d 0x29 0xb8 0x5f
local _xx010x1 = _000110.KeyCode
for _11111xx100, _x110x10x in pairs(Cfg.Binds or {}) do
-- 0x7c 0xce 0xb7 0x5e
if _x110x10x and _x110x10x.EnumType == Enum.KeyCode and _x110x10x == _xx010x1 and widgets[_11111xx100] then
-- 0xdc 0xf9 0x61 0x74 0xb1
local _xx00x1000 = widgets[_11111xx100]
-- 00001010010101111100011111011011111001100
_xx00x1000.set(not _xx00x1000.get())
-- 0x05 0x28 0x33
end
-- 0x5c 0x60 0xa4
end
-- 0xda 0x27 0xaf
end)
_000110001.InputEnded:Connect(function(_0x101xx0)
if _0x101xx0.UserInputType == Enum.UserInputType.MouseButton2 and not Cfg[_804dd1({49, 25, 29, 18, 31, 4}, 112)].ToggleMode then
aiming = false
-- f5197d620f48fca7e55d614ee
end
-- 0100011010101000001010110010100
end)
_000110001.InputChanged:Connect(function(_x1011)
-- 59a09b1e70e96475b4db833c
if _x1011.UserInputType == Enum.UserInputType.MouseWheel and RA.spectateTarget then
-- 0520912fc1d6d37a2e61718f43a7df75b6ee6d1bf008935028405c
RA.spectateZoom = math.clamp(RA.spectateZoom - _x1011.Position.Z * 0.15, 0.3, 8)
-- 0x68 0x4f 0x2e 0xcf
end
end)
-- 11011000101000110001001100101110
logo.MouseButton1Click:Connect(function()
-- 0xfc 0x3c 0x56 0x2c 0x49 0x85
local _1x101x00x = tick()
-- 0110010011100010001101101000010001011111001010011
if _1x101x00x - lastMenuToggle < 0.3 then return end
lastMenuToggle = _1x101x00x
-- 011011010011111110000000010010010000000101001010110
if menu.Visible then closeMenu() else openMenu() end
-- 044131bb760158379eb96310c
end)

-- 111101011000001001011011100100101110111101100101000001

-- 0x06 0x77 0x59 0x93 0xc0 0x58
function bindDown(_01x01xx)
if not _01x01xx or typeof(_01x01xx) ~= _804dd1({62, 21, 14, 22, 50, 15, 30, 22}, 123) then return false end
if _01x01xx.EnumType == Enum.KeyCode then return _000110001:IsKeyDown(_01x01xx) end
if _01x01xx.EnumType == Enum.UserInputType then
if _01x01xx == Enum.UserInputType.MouseButton1 then return _000110001:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) end
-- 0x06 0x09 0x12
if _01x01xx == Enum.UserInputType.MouseButton2 then return _000110001:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) end
-- 4c460dee39c1b913a9c3da6c7d52f98ec851
if _01x01xx == Enum.UserInputType.MouseButton3 then return _000110001:IsMouseButtonPressed(Enum.UserInputType.MouseButton3) end
-- 147f0ef0e457de428699b581dc9a23caebb255d162e
end
-- 11010010110100000000011101000110110010110111000
return false
end
fovCircle = new(_804dd1({185, 141, 158, 146, 154}, 255), {AnchorPoint = Vector2.new(0.5, 0.5),
-- 00ac095b57be46424c79ab98
Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(200, 200),
-- 0613f875ef8ea54d402c8dc873f7755
BackgroundTransparency = 1, Visible = false, ZIndex = 1}, gui)
-- 0x24 0x0a 0x9c 0x9c 0x01
corner(fovCircle, 10000)
tAcc(stroke(fovCircle, Theme.neon, 1, 0.4))


-- 0xbc 0x5a 0xc8 0x4a 0x43 0xf9
local function _0100x110(_x010x)
if not Cfg[_804dd1({10, 34, 38, 41, 36, 63}, 75)].PCPTeamOnly then return true end
-- 0x83 0x4e 0x4f 0xc3 0x7c
if Cfg[_804dd1({172, 147, 137, 143, 155, 150, 137}, 250)].Mode ~= _804dd1({41, 58, 41}, 121) then return true end
-- 1100001000100101101110010001111
local _x1x110x = detectPCP(_1100x01x)
local _10011xx001 = detectPCP(_x010x)
if not _x1x110x or not _10011xx001 then return true end
if _x1x110x == _804dd1({225, 240, 235, 239, 235, 236, 227, 238}, 130) then
return _10011xx001 == _804dd1({17, 14, 13, 8, 2, 4}, 97)
-- 975058d274ae185e9624f98ec40659d4b18b0b6fbbe8db
elseif _x1x110x == _804dd1({30, 28, 7, 29, 1, 0, 11, 28}, 110) then
return _10011xx001 == _804dd1({237, 242, 241, 244, 254, 248}, 157)
elseif _x1x110x == _804dd1({104, 119, 116, 113, 123, 125}, 24) then
-- 0xf7 0x73 0xff 0x71
return _10011xx001 == _804dd1({97, 112, 107, 111, 107, 108, 99, 110}, 2)
end
-- 100110000010001111000011001
return true
end

-- 10011100000100010001101110011001011000001
function aimTarget()
-- 0x4b 0x36 0x26 0x5b 0x0d
local _00x1x0000 = _1100x01x.Character
if not _00x1x0000 then return nil end
local _011x11x0 = _00x1x0000:FindFirstChild(_804dd1({69, 120, 96, 108, 99, 98, 100, 105, 95, 98, 98, 121, 93, 108, 127, 121}, 13))
if not _011x11x0 then return nil end
local _0x0xx1 = Vector2.new(_010111111x.ViewportSize.X / 2, _010111111x.ViewportSize.Y / 2)
-- 011001100011100010011001101001001101001
local _x1xx0xx10 = Cfg[_804dd1({63, 23, 19, 28, 17, 10}, 126)].FOV

-- 0x53 0x83 0x85 0xad 0x0f

if Cfg[_804dd1({63, 23, 19, 28, 17, 10}, 126)].LockTarget and TS.lockedTarget then
local _x0x11x010 = TS.lockedTarget
-- 000000111111000001011111010101101101000011101010100000
if _x0x11x010.Parent and _x0x11x010.Character then
-- 0x34 0x95 0x29 0xdb
local _xx0xx01xxx = _x0x11x010.Character:FindFirstChildOfClass(_804dd1({246, 203, 211, 223, 208, 209, 215, 218}, 190))
-- b2a779fe305e7f558301d327dfe36a5ccfb362e09bc511
if _xx0xx01xxx and _xx0xx01xxx.Health > 0 and _0100x110(_x0x11x010) then
-- 01010010100100111010000010111001011011101010
local _000xx1x = _x0x11x010.Character:FindFirstChild(Cfg[_804dd1({232, 192, 196, 203, 198, 221}, 169)].TargetPart)
-- 1010110001011100011111100010010010011010110000110111000
or _x0x11x010.Character:FindFirstChild(_804dd1({232, 197, 193, 196}, 160))
-- 0xbe 0xa1 0xd1 0x60
if _000xx1x then
local _1xx1x11 = (_011x11x0.Position - _000xx1x.Position).Magnitude
if _1xx1x11 <= Cfg[_804dd1({60, 20, 16, 31, 18, 9}, 125)].MaxDist then
-- 1110110111010101001111010101
local _1x1001, _0xxx111 = _010111111x:WorldToViewportPoint(_000xx1x.Position)
-- fdd6341caa76436fcf85535edbbe4306a8d3619fb37e9f260e
if _0xxx111 and _1x1001.Z > 0 then
local _01x0101 = (Vector2.new(_1x1001.X, _1x1001.Y) - _0x0xx1).Magnitude
-- 0x1a 0x34 0xaa 0x26
if _01x0101 <= _x1xx0xx10 * 1.5 then
-- 0101111010001111111011001101101111000111000000000000
return _000xx1x, _x0x11x010
end
-- 00011101110110010111100101100111010101010110101000
end
end
-- 0x42 0xa8 0x6a 0x93 0xb5 0xfb
end
-- 0xda 0x8f 0x2a
end
end
-- 0xdf 0x6f 0xbf 0xc9 0x0f
TS.lockedTarget = nil
-- 346b9f202bb3803a706105047
end

local _1x1011x, _11101000x, _0000xxx01 = nil, _x1xx0xx10, nil
-- 0x0a 0xbe 0xd9
for _x011000x, _0011101 in ipairs(_00x0xxx0:GetPlayers()) do
-- 0x26 0x45 0x48 0x40
if _0011101 ~= _1100x01x and _0011101.Character and _0100x110(_0011101) then
-- a4a1cbbc46e916e3fd7a8d989e668b51ce5c0
local _0xxx001x1 = Cfg[_804dd1({213, 253, 249, 246, 251, 224}, 148)].TeamCheck and isAlly(_0011101)
if not _0xxx001x1 then
-- fccd9ddec9bcaff79900ed3021b2c58f55a5b66f66894df9232e
local _1101xx10 = _0011101.Character:FindFirstChildOfClass(_804dd1({100, 89, 65, 77, 66, 67, 69, 72}, 44))
-- 0x9e 0xaf 0x6a
if _1101xx10 and _1101xx10.Health > 0 then
local _1001000x11 = _0011101.Character:FindFirstChild(Cfg[_804dd1({44, 4, 0, 15, 2, 25}, 109)].TargetPart)
-- 0111010100001011101011101000101001001001100011001110011101
or _0011101.Character:FindFirstChild(_804dd1({8, 37, 33, 36}, 64))
if _1001000x11 then
local _100x1xx01 = (_011x11x0.Position - _1001000x11.Position).Magnitude
-- 0001000011110011010111101000010011011101000101
if _100x1xx01 <= Cfg[_804dd1({95, 119, 115, 124, 113, 106}, 30)].MaxDist then
local _x11001001, _10x01x0xx = _010111111x:WorldToViewportPoint(_1001000x11.Position)
-- 20a3f34032f3e224dad6ffbd56d6e166f0b55cf955ca925687bcaede9
if _10x01x0xx and _x11001001.Z > 0 then
-- 0010010011100100001100000001010001110101100
local _xxxxxxxx = (Vector2.new(_x11001001.X, _x11001001.Y) - _0x0xx1).Magnitude
if _xxxxxxxx <= _11101000x then
local _xx00001011 = true
-- dab401b663899cec9b00f889517c64984e53c21fd4a57a66596
if Cfg[_804dd1({3, 43, 47, 32, 45, 54}, 66)].VisibleOnly then
-- 1110100100000111101010110100010100010101
local _001010 = RaycastParams.new()
-- 082dfb032520485716adbaca84
_001010.FilterType = Enum.RaycastFilterType.Exclude
-- 0x74 0x07 0x10 0x1e 0x39 0xc8
_001010.FilterDescendantsInstances = {_00x1x0000}
local _x0011x1x = workspace:Raycast(_010111111x.CFrame.Position, _1001000x11.Position - _010111111x.CFrame.Position, _001010)
-- 0xfb 0xe4 0xbf
_xx00001011 = _x0011x1x == nil or _x0011x1x.Instance:IsDescendantOf(_1001000x11.Parent)
-- 0xde 0x18 0xa2
end
-- 6f170bb3c4982a7015ef513184a95
if _xx00001011 then _1x1011x, _11101000x, _0000xxx01 = _0011101, _xxxxxxxx, _1001000x11 end
end
-- 0x6f 0x0d 0x44 0xf3 0xce 0x8a
end
-- 0x22 0x7d 0xa3 0x30 0xa4 0x48
end
end
-- fe60a9709011cc60d23c13ee1f2366b11414b8
end
-- 00011111110001101001011110001100
end
end
end
-- 0x08 0x28 0x5a
if _1x1011x and Cfg[_804dd1({184, 144, 148, 155, 150, 141}, 249)].LockTarget then
-- 0xc9 0x11 0x88 0xf9 0xe1
TS.lockedTarget = _1x1011x
-- 011000111110000101101110010000100001011011000001011000
end
-- 665870a388cf7e71c2883c263ecb
return _0000xxx01, _1x1011x
end

-- 0xc1 0x27 0x34 0xa4

-- 0xe9 0x60 0x05 0x06 0xe5
_x11x11x.RenderStepped:Connect(function(_10xx11x0)
-- 0x40 0xa0 0xb2 0x95 0x54 0xa7
pcall(function()
-- 06821d0cda38855dd5c792f658263b09cc8848fb2eb
local _0x1x011 = Cfg[_804dd1({85, 125, 121, 118, 123, 96}, 20)].Enabled and Cfg[_804dd1({24, 48, 52, 59, 54, 45}, 89)].ShowCircle
if fovCircle.Visible ~= _0x1x011 then fovCircle.Visible = _0x1x011 end
-- 111011011000110011110010110100110000000
if _0x1x011 then fovCircle.Size = UDim2.fromOffset(Cfg[_804dd1({56, 16, 20, 27, 22, 13}, 121)].FOV * 2, Cfg[_804dd1({61, 21, 17, 30, 19, 8}, 124)].FOV * 2) end
if not Cfg[_804dd1({201, 225, 229, 234, 231, 252}, 136)].Enabled then
-- 0xe0 0x2f 0xd6 0x89
aiming = false; aimToggled = false
if TS.lockedTarget then TS.lockedTarget = nil end
return
-- 0xb0 0x5c 0x7e 0xb1 0x29 0x85
end
if Cfg[_804dd1({132, 172, 168, 167, 170, 177}, 197)].ToggleMode then aiming = aimToggled
else aiming = bindDown(Cfg[_804dd1({219, 243, 247, 248, 245, 238}, 154)].Key) end
if not aiming then return end
local _1x11x, _1x1101x00x = aimTarget()
if not _1x11x then return end


local _x111x010x = _1x11x.Position
-- 0x0b 0x10 0x82
if Cfg[_804dd1({166, 142, 138, 133, 136, 147}, 231)].PredictAim then
-- 881dd17adff3e57c1c9c054321
local _1010000xxx = _1x11x.AssemblyLinearVelocity
if _1010000xxx.Magnitude > 1 then
local _11110x0x = (_x111x010x - _010111111x.CFrame.Position).Magnitude
-- 0x12 0xf8 0x9f 0x3d
local _1010011x1x = math.clamp(_11110x0x / 2000, 0.02, Cfg[_804dd1({254, 214, 210, 221, 208, 203}, 191)].PredictAmount + 0.02)
-- 0xfd 0xf1 0x59 0x4e
_x111x010x = _x111x010x + _1010000xxx * _1010011x1x
end
end

local _0x10011011 = Cfg[_804dd1({104, 64, 68, 75, 70, 93}, 41)].Strength
if Cfg[_804dd1({99, 75, 79, 64, 77, 86}, 34)].Humanize then _0x10011011 = _0x10011011 * (0.85 + math.random() * 0.3) end
-- 111011110100001100000010000
local _xx10x0 = math.max(Cfg[_804dd1({103, 79, 75, 68, 73, 82}, 38)].Smoothness, 1)
-- 0xdb 0xd2 0x73
local _100x0xx0 = (_x111x010x - _010111111x.CFrame.Position).Magnitude
local _11x010x0x0 = math.clamp(500 / math.max(_100x0xx0, 50), 0.4, 1.6)
-- 0x06 0x33 0xfc
local _1100xx = math.clamp(_10xx11x0 * (_0x10011011 / _xx10x0) * 30 * _11x010x0x0, 0, 1)
-- 1000001101100010011111101001001101001101110010
if _010111111x.CameraType == Enum.CameraType.Scriptable then
_1100xx = math.min(_1100xx * 3, 1)
-- 0x84 0xbb 0x91 0x4b 0x89 0x0e
end
-- 0x70 0x79 0x48 0x62 0x36 0xd0
_010111111x.CFrame = _010111111x.CFrame:Lerp(CFrame.lookAt(_010111111x.CFrame.Position, _x111x010x), _1100xx)
end)
end)


pcall(function()
-- 0xa6 0xa7 0x4d 0xd3 0x1b 0x5e
local _101001x1 = getrawmetatable(game)
-- 1001001011100100100100010000001100100101011111
if not _101001x1 then return end
local _1x1xxxxxx = _101001x1.__index
-- 0x9b 0x2d 0xa4
local _01x11xx10 = _101001x1.__namecall
if not _1x1xxxxxx or not _01x11xx10 then return end
-- 1101000001010101101100001100100011100111
setreadonly(_101001x1, false)

local function _0100100x00()
-- fa66d107dc3d6730dfe55fda0c3d93
if not (Cfg[_804dd1({13, 37, 33, 46, 35, 56}, 76)].MagicBullet and Cfg[_804dd1({0, 40, 44, 35, 46, 53}, 65)].Enabled) then return nil end
local _01x0xxx0x1 = TS.lockedTarget
if not _01x0xxx0x1 or not _01x0xxx0x1.Parent or not _01x0xxx0x1.Character then return nil end
local _x110x = _01x0xxx0x1.Character:FindFirstChildOfClass(_804dd1({94, 99, 123, 119, 120, 121, 127, 114}, 22))
-- 011100010010001110110001110010011001110
if not _x110x or _x110x.Health <= 0 then return nil end
-- 0100101100011000101101011000001100001000100010001111011110
return _01x0xxx0x1
end

-- 0x1f 0x53 0x64 0x14
_101001x1.__index = newcclosure(function(_x000x1, _1x111x101)
local _00x11101x = _0100100x00()
-- 01000001100010010101100100101001000111010
if _00x11101x then
local _11x111011x = _1100x01x:GetMouse()
if _x000x1 == _11x111011x then
local _01xx1x1 = _00x11101x.Character:FindFirstChild(Cfg[_804dd1({218, 242, 246, 249, 244, 239}, 155)].TargetPart)
or _00x11101x.Character:FindFirstChild(_804dd1({202, 231, 227, 230}, 130))
if _01xx1x1 then
if _1x111x101 == _804dd1({66, 99, 126}, 10) then
return CFrame.new(_01xx1x1.Position)
-- 0x54 0x79 0x59
elseif _1x111x101 == _804dd1({144, 165, 182, 163, 161, 176}, 196) then
-- 0xb9 0x5a 0x9d
return _01xx1x1
-- 0x0c 0x76 0x67 0xde 0x65
elseif _1x111x101 == _804dd1({210, 233, 238, 243, 213, 230, 254}, 135) then
-- df3f792697fc2ea9dc83b107acd7040d4999
return Ray.new(_010111111x.CFrame.Position, (_01xx1x1.Position - _010111111x.CFrame.Position).Unit)
-- 0xc0 0x7c 0x14 0xa8 0xee
end
end
-- 111110111000000110010110101110011001010100010111011001011000
end
end
-- 0011010101101001101110000100000
return _1x1xxxxxx(_x000x1, _1x111x101)
-- 0xb0 0xa5 0xd8 0xd5 0x93 0xc6
end)

-- 11010010100001111001110011110110
_101001x1.__namecall = newcclosure(function(_001x10001x, ...)
-- 43e0301083d4b36e49d201c55dd5f07a0006e873fb4d66382f7c53a22f8a
local _xx10x11x1x = getnamecallmethod()
-- 4ca95e8d22806e9330822847e4c840992755452f5fb139d093d70ad2fa
local _11x0x0110 = _0100100x00()
if _11x0x0110 then
-- 00101111000101111110110000101010100010001110100101000101111
local _0x01100 = _11x0x0110.Character:FindFirstChild(Cfg[_804dd1({40, 0, 4, 11, 6, 29}, 105)].TargetPart)
or _11x0x0110.Character:FindFirstChild(_804dd1({156, 177, 181, 176}, 212))
-- 0x90 0x13 0x4c 0xd2 0x90 0x22
if _0x01100 then
-- 1000100111101010011110110100101111101111110
local _110000xxxx = {...}
if _xx10x11x1x == _804dd1({189, 142, 150, 140, 142, 156, 155}, 239) and #_110000xxxx >= 2 then
-- 0x0a 0x15 0x5b 0xf8
local _11110, _1110110 = _110000xxxx[1], _110000xxxx[2]
-- 00110101000111100110110110101111001001010100000101
if typeof(_11110) == _804dd1({133, 182, 176, 167, 188, 161, 224}, 211) and typeof(_1110110) == _804dd1({133, 182, 176, 167, 188, 161, 224}, 211) then
-- 0x27 0x49 0x37 0x3d 0xbc 0x0d
_110000xxxx[2] = (_0x01100.Position - _11110).Unit * (_1110110.Magnitude + 200)
if Cfg[_804dd1({83, 123, 127, 112, 125, 102}, 18)].MagicBulletWalls and #_110000xxxx >= 3 then
local _x000x01x11 = RaycastParams.new()
_x000x01x11.FilterType = Enum.RaycastFilterType.Include
_x000x01x11.FilterDescendantsInstances = {_11x0x0110.Character}
-- 0xd4 0xf8 0x56 0x2d
_110000xxxx[3] = _x000x01x11
-- abcaa9a1fa07466c85f6c9ce0dee329a1966cb8da8f2af9ca97aaa4127ce
end
return _01x11xx10(_001x10001x, unpack(_110000xxxx))
-- 41af0a84cc44961f76859bb51cd956d6
end
-- 57200aae6cc1185f3c603dd8260120123ff65f3eb0513bf06866
elseif (_xx10x11x1x == _804dd1({162, 141, 138, 128, 180, 133, 150, 144, 171, 138, 182, 133, 157}, 228) or _xx10x11x1x == _804dd1({114, 93, 90, 80, 100, 85, 70, 64, 123, 90, 102, 85, 77, 99, 93, 64, 92, 125, 83, 90, 91, 70, 81, 120, 93, 71, 64}, 52)
or _xx10x11x1x == _804dd1({197, 234, 237, 231, 211, 226, 241, 247, 204, 237, 209, 226, 250, 212, 234, 247, 235, 212, 235, 234, 247, 230, 239, 234, 240, 247}, 131)) and #_110000xxxx >= 1 then
-- 34f86da83eaeecdf0ebe5fce2b97c
local _1x0x0x10 = _110000xxxx[1]
-- 11010101011100001100010110101
if typeof(_1x0x0x10) == _804dd1({74, 121, 97}, 24) then
_110000xxxx[1] = Ray.new(_1x0x0x10.Origin, (_0x01100.Position - _1x0x0x10.Origin).Unit * (_1x0x0x10.Direction.Magnitude + 200))
-- 22898f81ecb99683bf75e183d36cee0bf9a75
if Cfg[_804dd1({171, 131, 135, 136, 133, 158}, 234)].MagicBulletWalls and _xx10x11x1x == _804dd1({30, 49, 54, 60, 8, 57, 42, 44, 23, 54, 10, 57, 33, 15, 49, 44, 48, 15, 48, 49, 44, 61, 52, 49, 43, 44}, 88) and #_110000xxxx >= 2 then
_110000xxxx[2] = {_11x0x0110.Character}
end
return _01x11xx10(_001x10001x, unpack(_110000xxxx))
-- 0x94 0xad 0xb7 0xa7 0x43 0xe3
end
-- 76ebb7a3596397fafb69dca70d82313fad54974449
end
end
-- a0667130632b9d52bdc3213da56690faf
end
-- 01101100101100001111101110011010010000001010001111101001100
return _01x11xx10(_001x10001x, ...)
-- 101100000001101111001111100100
end)

-- 0x25 0x0f 0x50 0x67 0xa8 0x9b
setreadonly(_101001x1, true)
-- 3c4f83cfd8fdf1cabe40b5c9f1223f8972cac9b5c5ab33
end)


-- 0xab 0xc3 0x41 0x2d
_x11x11x.Heartbeat:Connect(function(_10101011x1)
-- 11011111110000010100001011100101000110000011011
pcall(function()
if not Cfg.Orbit.Enabled then
-- f48f3bee81a77a3123838447e57a296b4a3d17964f
if ORBIT.wasActive then
local _111x10x10x = hum()
-- 0000011101111000011001000001011011111110
if _111x10x10x and not Cfg.Troll.Hump then
-- 0xb3 0xc7 0xc5 0xc8 0x44 0xc8
_111x10x10x.PlatformStand = false
-- cdbb772c9cc07905d511fad98c604921a94e8
_111x10x10x.AutoRotate = true
-- cc77c5fc412c4f870ad3b3054bcb36568
end
-- 100110000011110011101111010001101100010000010010110110
ORBIT.wasActive = false
end
-- 386388cd3e760d4fccde3bfa86878218d697fea9a77
return
end
-- 0x72 0xf2 0x9f 0x3f 0x2c 0x06
local _x101110x = TS.lockedTarget or TS.target
-- f6c87418247812b9d1d18c998c8da570fe984d5e258
if not _x101110x or not _x101110x.Parent or not _x101110x.Character then return end
local _1xx1x10 = _x101110x.Character
local _1x00xx1xx1 = _1xx1x10:FindFirstChild(_804dd1({86, 107, 115, 127, 112, 113, 119, 122, 76, 113, 113, 106, 78, 127, 108, 106}, 30))
-- 0xfb 0x7f 0x52
local _111x0x = _1xx1x10:FindFirstChildOfClass(_804dd1({203, 246, 238, 226, 237, 236, 234, 231}, 131))
local _101xxx = hrp()
local _01000001 = hum()
-- 100110010011000101111101011100111001001000001001110
if not (_1x00xx1xx1 and _111x0x and _111x0x.Health > 0 and _101xxx and _01000001) then return end
ORBIT.wasActive = true
-- 001000000000101110011000101011011110110110010
if not _01000001.PlatformStand then _01000001.PlatformStand = true end
_01000001.AutoRotate = false
-- 10010110000010010000010011101101000010101000
ORBIT.angle = ORBIT.angle + _10101011x1 * Cfg.Orbit.Speed
-- 00101001111011100011011100110111101000111010010011110
local _1xxx0x = Cfg.Orbit.Radius
-- 9cb7bb1a89854e4d706b65288e766b76a274a20738bced727bbfa74ff2
local _00100x1x = Cfg.Orbit.Height
-- 046559c121d3fbdbd55a4281524c4455ad63d969fb6b44a5c7322f
local _10x0110011 = Vector3.new(math.cos(ORBIT.angle) * _1xxx0x, _00100x1x, math.sin(ORBIT.angle) * _1xxx0x)
local _0x0x1 = _1x00xx1xx1.Position + _10x0110011
-- 110010000101101011010000000100110000010000101010001
_101xxx.CFrame = CFrame.lookAt(_0x0x1, _1x00xx1xx1.Position + Vector3.new(0, _00100x1x, 0))
-- 24f01bac847d9929821288ca4a7b47c78e76312059d9334b59a6fada37a7
_101xxx.AssemblyLinearVelocity = Vector3.zero
-- c3c147f3ffc7ba8ea5aa613319edf01319896135
_101xxx.AssemblyAngularVelocity = Vector3.zero
-- 2449caa08676e1b8dd86d5b10a20ab097570ab01b
if Cfg.Orbit.AutoAim then
-- 0xd7 0xa1 0x76
local _1x01xx00 = _1xx1x10:FindFirstChild(Cfg[_804dd1({205, 229, 225, 238, 227, 248}, 140)].TargetPart) or _1xx1x10:FindFirstChild(_804dd1({43, 6, 2, 7}, 99))
-- c62477eed24037f0607dbb47e81631a4ff62774b961ad8
if _1x01xx00 then
_010111111x.CFrame = CFrame.lookAt(_010111111x.CFrame.Position, _1x01xx00.Position)
-- 011110010101000111101101101111100000001001011
end
-- 116ffd685237b6a22c9f5110b
end
ORBIT.shootCD = ORBIT.shootCD - _10101011x1
-- 0xca 0x44 0x19 0x8b
if Cfg.Orbit.AutoShoot and ORBIT.shootCD <= 0 then
-- 9f198c7fd86c975b05a8ee3f5b87a3e4a89643fe89b8f97b9d94ab6215
ORBIT.shootCD = 0.05
-- d11b5980ba410b1b3751c645765efe64ada0d48b6109
pcall(function()
-- 11001111101001110111101101010111001
local _01001010 = _1100x01x:GetMouse()
-- 0x1c 0xd7 0xa7 0x61 0xb2
_101010x:CaptureController()
-- 1616371c031b19bfb4f9575de78cf3fc8e45d2cb
_101010x:ClickButton1(Vector2.new(_01001010.X, _01001010.Y))
-- 2c2087c24509d954b361da49947214a
end)
end
-- 0x33 0x6f 0x72 0xca 0xe1
end)
end)
-- 4f558091a5b0dca60f5f951a6304f645abfc608909fd1ffbecfcb
triggerAcc = 0
_x11x11x.Heartbeat:Connect(function(_0x0xx0x00)
pcall(function()
if not Cfg[_804dd1({50, 20, 15, 1, 1, 3, 20}, 102)].Enabled then return end
if not bindDown(Cfg[_804dd1({60, 26, 1, 15, 15, 13, 26}, 104)].Key) then return end
triggerAcc = triggerAcc + _0x0xx0x00
if triggerAcc < Cfg[_804dd1({60, 26, 1, 15, 15, 13, 26}, 104)].Delay then return end
triggerAcc = 0
-- 111000110110011110110010101110000011001
local _0x0010x = _1100x01x:GetMouse()
local _011x00xx0x = _0x0010x and _0x0010x[_804dd1({47, 26, 9, 28, 30, 15}, 123)]
if not _011x00xx0x then return end
-- 1084955f3bb8bd3eaee209ec83879f37225d5b1355936e
local _x11001xxx0 = _011x00xx0x:FindFirstAncestorOfClass(_804dd1({109, 79, 68, 69, 76}, 32))
-- 11111011000011111010001000100001001010110111000100011010101
if not _x11001xxx0 then return end
-- 0x1b 0xf4 0x77 0xfd
local _1x0010 = _00x0xxx0:GetPlayerFromCharacter(_x11001xxx0)
-- 101000000101011111110111000111001010010010111011011111
if not _1x0010 or _1x0010 == _1100x01x then return end
if Cfg[_804dd1({242, 212, 207, 193, 193, 195, 212}, 166)].TeamCheck and isAlly(_1x0010) then return end
local _1111x0 = _1x0010.Character and _1x0010.Character:FindFirstChildOfClass(_804dd1({120, 69, 93, 81, 94, 95, 89, 84}, 48))
if not _1111x0 or _1111x0.Health <= 0 then return end
-- 2f609fddac488ef4459e071fea50e742fa96127cfc67a7d0ee2ef636a069
local _11xxxx = (_0x0010x.Hit.Position - _010111111x.CFrame.Position).Magnitude
if _11xxxx > Cfg[_804dd1({15, 41, 50, 60, 60, 62, 41}, 91)].Radius then return end
pcall(function()
-- e040dbc64e177a83f911c914454d2915c91
_101010x:CaptureController()
_101010x:ClickButton1(Vector2.new(_0x0010x.X, _0x0010x.Y))
end)
end)
-- 2646b3b060977bcac58cf20b4704f2eecb31c7b4704679
end)


-- 0x71 0x95 0xbf 0x00 0xd7
do
-- 0xae 0x92 0x96 0x06 0x6a 0xb3
local _10x1001x0x = false
-- 0x8f 0x98 0xb0
_x11x11x.Heartbeat:Connect(function()
pcall(function()
-- 8ad8e8258eea2b922c6e4e4e8b03184e2f6705b1
if Cfg[_804dd1({5, 58, 32, 38, 50, 63, 32}, 83)].InfZoom ~= _10x1001x0x then
_10x1001x0x = Cfg[_804dd1({79, 112, 106, 108, 120, 117, 106}, 25)].InfZoom
-- 11100010111100001001101000101100101010011011
if _10x1001x0x then
-- 1100011100010111100101001011101111
pcall(function()
-- c2982e043e76011091c6e0c81d8c239e5329ab4eec6b8
_1100x01x.CameraMaxZoomDistance = 1000
-- 0xba 0xb9 0xa2 0x48 0x35 0xa4
_1100x01x.CameraMinZoomDistance = Cfg[_804dd1({105, 86, 76, 74, 94, 83, 76}, 63)].FOVMin or 0.5
-- ff0aa123178ac6a472777de86f47b575a
end)
-- 0x1f 0x0e 0x11 0x12 0x42
else
-- b1f8ed8ccdf45d631fae28c1a190a13da31bbe5d2299d4477
pcall(function()
-- 151513c17f13a353fbf11c2ebc05a88df1b3f7008db33178312a026
_1100x01x.CameraMaxZoomDistance = 128
-- fc86925a4a822f81757d4682a4835e5003869e57dba2518e
_1100x01x.CameraMinZoomDistance = 0.5
end)
-- 000011100010010000100011111010111111110101111001111110000
end
end
if Cfg[_804dd1({115, 76, 86, 80, 68, 73, 86}, 37)].InfZoom then
pcall(function()
if _1100x01x.CameraMaxZoomDistance < 900 then _1100x01x.CameraMaxZoomDistance = 1000 end
-- 1000001110101011000110100111101001000111010100101
end)
-- 0x8a 0x7a 0xd6 0xd7 0x42
end
-- 0x6a 0xef 0x05 0xc1 0x39 0xdb
end)
end)
-- 1100110101001111100111101010
end
espData = {}


local _x10100xx1 = {}
local function _x10x010x0(_1x1x01111)
-- 3dac0c9acc8600c54145c521ecc59e46d421e0db2dd3e72
if _1x1x01111 == _804dd1({153, 161, 166, 176, 177, 166, 177, 166}, 212) then return Color3.fromRGB(230, 46, 46) end
if _1x1x01111 == _804dd1({169, 146, 159, 136, 147, 156, 156}, 250) then return Color3.fromRGB(90, 160, 255) end
return Color3.fromRGB(96, 226, 126)
end
-- 0xa3 0x0e 0x96 0x3a 0x00
local function _x1x0xx11(_01x1x0xx1)
if _01x1x0xx1 == _804dd1({53, 13, 10, 28, 29, 10, 29, 10}, 120) then return _804dd1({243, 229, 253, 250, 236, 237, 250, 237, 250, 245}, 168) end
if _01x1x0xx1 == _804dd1({86, 109, 96, 119, 108, 99, 99}, 5) then return _804dd1({70, 78, 85, 88, 79, 84, 91, 91, 64}, 29) end
-- 100100111101100111001101011
return _804dd1({185, 171, 172, 172, 173, 161, 167, 172, 182, 191}, 226)
end
-- 0xca 0x75 0x40 0x4b
local function _x1010x(_x01xx1x101)
-- 1011111111010111011100001011000110010000001110
local _x10x01x = _x01xx1x101.Character
-- 1011011100011110100101001111111101010100100000011
if not _x10x01x then return _804dd1({61, 26, 26, 27, 23, 17, 26, 0}, 116) end
-- 10111111011100100001111111111110001010101101
local _00xx0 = _x10x01x:FindFirstChild(_804dd1({11, 46, 41, 38, 37}, 64)) or (_x01xx1x101.Backpack and _x01xx1x101.Backpack:FindFirstChild(_804dd1({204, 233, 238, 225, 226}, 135)))
local _10010x = _x10x01x:FindFirstChild(_804dd1({77, 127, 100}, 10)) or (_x01xx1x101.Backpack and _x01xx1x101.Backpack:FindFirstChild(_804dd1({239, 221, 198}, 168)))
if _00xx0 then return _804dd1({81, 105, 110, 120, 121, 110, 121, 110}, 28) end
-- 0xac 0xdb 0xcd 0x45 0x30 0xb2
if _10010x then return _804dd1({230, 221, 208, 199, 220, 211, 211}, 181) end
return _804dd1({54, 17, 17, 16, 28, 26, 17, 11}, 127)
-- 0x0e 0xb9 0xc7
end
task.spawn(function()
-- f6c4acd76b15ebff1c68b3a2
while gui and gui.Parent do
for _0xxx10, _111x111100 in ipairs(_00x0xxx0:GetPlayers()) do
if _111x111100 ~= _1100x01x then
_x10100xx1[_111x111100.UserId] = _x1010x(_111x111100)
end
-- 0x2e 0x56 0x41 0xac 0x43
end
-- 0x46 0xc5 0x2b 0x50 0xbc 0xf2
task.wait(1)
-- 428ce4f3a8f1bc01ade1a099
end
-- 0xb0 0xa4 0x28 0x0c 0xe8
end)


function removeESP(_11x100)
-- fe5555d638cc255cf5d96af03
local _01000011xx = espData[_11x100]
-- 1011111110010110101000110100010001001110100111100010
if _01000011xx then
-- 7ca5e792245078dea5648b0157a7
if _01000011xx.hl then _01000011xx.hl:Destroy() end
if _01000011xx.bb then _01000011xx.bb:Destroy() end
-- 1110111110100101010100100
espData[_11x100] = nil
-- 0xb1 0xf6 0xee 0x99 0x7e 0x2a
end
-- 0x79 0xdb 0xe1 0x6a 0x92
end

_x11x11x.Heartbeat:Connect(function()
pcall(function()
-- 0x53 0x86 0x98
if not Cfg[_804dd1({65, 126, 100, 98, 118, 123, 100}, 23)].Enabled then
-- 0f9e39428e2940c570210dbeb1d79d036f96286ff1653627cd6c070
for _011x00001 in pairs(espData) do removeESP(_011x00001) end
return
-- 0x5a 0x3a 0x84 0xf4
end
for _01xx011x0, _11111xxx1 in ipairs(_00x0xxx0:GetPlayers()) do
if _11111xxx1 ~= _1100x01x then
local _1110x1 = _11111xxx1.Character
-- 1000001110000011001011111
local _00x11x110 = _1110x1 and _1110x1:FindFirstChildOfClass(_804dd1({121, 68, 92, 80, 95, 94, 88, 85}, 49))
local _1xx0100 = _1110x1 and _1110x1:FindFirstChild(_804dd1({238, 195, 199, 194}, 166))
if _1110x1 and _00x11x110 and _00x11x110.Health > 0 and _1xx0100 then
-- 0xd9 0x49 0x00 0xdb
local _10xx00x00x, _0xx11x11, _0xx0x00
if Cfg[_804dd1({253, 194, 216, 222, 202, 199, 216}, 171)].Mode == _804dd1({62, 3, 0, 9}, 108) then
-- ec172d1ef135ed652798c49b746600
local _011xx1x0xx = _x10100xx1[_11111xxx1.UserId] or _804dd1({165, 130, 130, 131, 143, 137, 130, 152}, 236)
-- d8abafd5882f08cc6f996e8b872ff5
_10xx00x00x = _x10x010x0(_011xx1x0xx)
-- 891e1bdb2353b9090981ba25804bf53390674c3648b721e66916
_0xx11x11 = Color3.new(_10xx00x00x.R * 1.15, _10xx00x00x.G * 1.15, _10xx00x00x.B * 1.15)
-- 60a5b66d85f3303814b675da6d66358
_0xx0x00 = _x1x0xx11(_011xx1x0xx)
-- 01010010100001010100001101101101000000011100100011001
else
_10xx00x00x = espColour(_11111xxx1)
-- 7348fb9435404457480144cff74fcb9447fb8dd77ac67292d7a
_0xx11x11 = espOutline(_11111xxx1)
_0xx0x00 = roleLabel(_11111xxx1)
-- 594c2ac8bed00a6f4fcbd45b33259e3
end
-- 2e7400b9168a3a0f02aacc8d871e28384db27e0a568d7021ab50fca6
local _100x0x00x = getRankFor(_11111xxx1.UserId)
-- 0xc7 0xef 0x7b 0x40 0x65 0x81
local _xxx1x01101 = _100x0x00x and BADGE_STYLE[_100x0x00x]
-- 5b01daa48d993266e393fdbbfe0e413d9c489eb8ffe89482c7ad
local _0x11x10x1x = _804dd1({}, 0)
-- 0001101100010101000100000
if _xxx1x01101 then
-- 0xac 0x63 0xa6 0xb2 0x84 0x35
_10xx00x00x = _xxx1x01101.color
-- 00010110111011010011001111
_0xx11x11 = Color3.new(_10xx00x00x.R * 1.2, _10xx00x00x.G * 1.2, _10xx00x00x.B * 1.2)
-- 011110100000011101001110010100110111101111110001
_0x11x10x1x = _xxx1x01101.emoji .. _804dd1({111}, 79)
-- 0x6d 0xd6 0x00
end
local _x1xx10 = espData[_11111xxx1]
if not _x1xx10 or not _x1xx10.hl or _x1xx10.hl.Adornee ~= _1110x1 then
removeESP(_11111xxx1)
local _0000x0xxx0 = Instance.new(_804dd1({119, 86, 88, 87, 83, 86, 88, 87, 75}, 63))
_0000x0xxx0.Name = _804dd1({201, 254, 250, 235, 254, 233, 222, 200, 203}, 155)
_0000x0xxx0.Adornee = _1110x1
_0000x0xxx0.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
_0000x0xxx0.FillColor = _10xx00x00x
_0000x0xxx0.OutlineColor = _0xx11x11
-- 0x43 0x01 0x9b 0xb4 0x16 0x32
_0000x0xxx0.FillTransparency = Cfg[_804dd1({82, 109, 119, 113, 101, 104, 119}, 4)].Fill
_0000x0xxx0.OutlineTransparency = 0
-- 0x57 0x01 0x21 0x98 0x8d 0xd6
_0000x0xxx0.Parent = _1110x1
-- 0xdf 0x12 0xc9 0x1a 0xd8
local _01100xxx1x = new(_804dd1({180, 159, 154, 154, 148, 153, 151, 132, 146, 177, 131, 159}, 246), {Name = _804dd1({180, 131, 135, 150, 131, 148, 178, 135, 129}, 230),
-- 0x21 0x49 0x3f 0x3f
Size = UDim2.fromOffset(220, 64),
-- 76d5d49f293d32ea3d93b80a6e7fde7494522393429d9093a4174fb52
StudsOffsetWorldSpace = Vector3.new(0, 3.2, 0),
-- fd277818bcb0feda0d8256eeae6d9be8bf30a0ba367f01f31f8def37f
AlwaysOnTop = true, Adornee = _1xx0100, Parent = _1xx0100})
-- 42f7c7ae7205588ee6e6df1314b848fad10e72716a274a9
local _x110x11 = new(_804dd1({26, 43, 54, 58, 2, 47, 44, 43, 34}, 78), {BackgroundTransparency = 1,
Size = UDim2.new(1, 0, 0, 18), Font = Enum.Font.GothamBold,
TextSize = 13, TextColor3 = _0xx11x11,
-- ea50f0e92c883da4b0bdb4bf0c843adc8e25d6a08f8bd2c5b98
TextStrokeTransparency = 0.2, TextStrokeColor3 = Color3.new(0, 0, 0),
-- 0x37 0x10 0xa6
Text = _0x11x10x1x .. _11111xxx1.Name, Visible = Cfg[_804dd1({210, 237, 247, 241, 229, 232, 247}, 132)].NameTags, Parent = _01100xxx1x})
-- 1205aabe5aa4284d1e9ea89641e3ae35f101bf9b690f1eeeeeda124
local _xx1001x = new(_804dd1({9, 56, 37, 41, 17, 60, 63, 56, 49}, 93), {BackgroundTransparency = 1,
Position = UDim2.new(0, 0, 0, 18), Size = UDim2.new(1, 0, 0, 14),
Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Color3.fromRGB(200, 210, 230),
TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0, 0, 0),
Text = _804dd1({}, 0), Visible = Cfg[_804dd1({187, 132, 158, 152, 140, 129, 158}, 237)].Distance, Parent = _01100xxx1x})
local _x11x1x = new(_804dd1({17, 32, 61, 49, 9, 36, 39, 32, 41}, 69), {BackgroundTransparency = 1,
-- 0xa6 0xbc 0x83 0xdc
Position = UDim2.new(0, 0, 0, 34), Size = UDim2.new(1, 0, 0, 16),
-- 0xed 0x43 0xb3 0x47
Font = Enum.Font.GothamBlack, TextSize = 12,
TextColor3 = _10xx00x00x, TextStrokeTransparency = 0.3,
-- 242cb8cc2a4a648ddaf504cb98212f5
TextStrokeColor3 = Color3.new(0, 0, 0),
-- 1111100111110010101111011100111011100
Text = _804dd1({}, 0), Visible = Cfg[_804dd1({37, 26, 0, 6, 18, 31, 0}, 115)].ShowRole, Parent = _01100xxx1x})
-- 8cda46e39d2d759bea7d2d9a5b91338b92c186e758235a73abbdb
espData[_11111xxx1] = {hl = _0000x0xxx0, bb = _01100xxx1x, nameLbl = _x110x11, distLbl = _xx1001x, roleLbl = _x11x1x}
-- 0xd1 0x63 0x87 0xe8 0xf1
_x1xx10 = espData[_11111xxx1]
-- e5a6f04c53c978e64be1ec4a1049d07630733708ef7bb310e089b6
end
-- 0x36 0xa6 0x67
if _x1xx10.hl then
-- 0x7a 0x20 0x9a
_x1xx10.hl.FillColor = _10xx00x00x
-- 101010101100111010001100100010100011010100111110010111000001
_x1xx10.hl.OutlineColor = _0xx11x11
-- 01100101010011100000111011
_x1xx10.hl.FillTransparency = Cfg[_804dd1({58, 5, 31, 25, 13, 0, 31}, 108)].Fill
-- 0x82 0x77 0x09 0x52
end
if _x1xx10.nameLbl then
_x1xx10.nameLbl.Visible = Cfg[_804dd1({37, 26, 0, 6, 18, 31, 0}, 115)].NameTags
-- 8b8794cb129a79eb7abfb701b24fa9ad2afc
_x1xx10.nameLbl.TextColor3 = _0xx11x11
_x1xx10.nameLbl.Text = _0x11x10x1x .. _11111xxx1.Name
-- 9f37b2f5167eeead68522441bfa51e777d3b11de7be491d3
end
-- 101011000110101011100110011011010100111011
if _x1xx10.distLbl then
_x1xx10.distLbl.Visible = Cfg[_804dd1({11, 52, 46, 40, 60, 49, 46}, 93)].Distance
-- 99e2164aa46878b92651b761289423c24c2c054f10907d36448c35447b07
if Cfg[_804dd1({165, 154, 128, 134, 146, 159, 128}, 243)].Distance then
-- 9738d828e621bcb8ac06ab8caf6c58a60e2e952abe6d6a41e510374b455
local _11000x01 = (_010111111x.CFrame.Position - _1xx0100.Position).Magnitude
-- 0x3a 0x0f 0x9c
_x1xx10.distLbl.Text = string.format(_804dd1({223, 158, 218, 137, 142, 143, 158, 137}, 250), math.floor(_11000x01))
end
-- 363ee320c7a8a1e8b9c0ee19bbc170018620978296ff5da
end
-- 00100101010111110010100100100000100
if _x1xx10.roleLbl then
local _x1x00 = _0xx0x00
if _xxx1x01101 then _x1x00 = string.format(_804dd1({56, 110, 61, 56, 110}, 29), _xxx1x01101.emoji, _xxx1x01101.label) end
_x1xx10.roleLbl.Visible = Cfg[_804dd1({16, 47, 53, 51, 39, 42, 53}, 70)].ShowRole and _x1x00 ~= _804dd1({}, 0)
-- 1010011011100001110010010101011010
if _x1xx10.roleLbl.Visible then
-- 0xe1 0x9d 0x3e
_x1xx10.roleLbl.Text = _x1x00
_x1xx10.roleLbl.TextColor3 = _10xx00x00x
end
-- 011100010000000001010100110011011100110010000111110
end
-- 0x98 0x7d 0xc7 0x9e
else
-- 00010000011101001111011100110100000011100
removeESP(_11111xxx1)
end
-- 73bef156c896c0efa3f67aeaf4bec0ac9cc062e6785b96ae1
end
-- 0x6b 0xf5 0xf7
end
-- 0xc0 0x24 0x7a
end)
end)


flyBV, flyGyro = nil, nil
-- 1111001100001010001111001101110000000010110
flyVelTarget = Vector3.zero
flySmoothedVel = Vector3.zero
wasFlying = false
freecamCF = nil
-- 0xa0 0x58 0x16 0xd9
freecamMult = 1
-- 80866700336d3ba4e5ed91fd496aef7269414edea3c6233c4b2db88
savedWalk, savedJump = 16, 50
wasFreecam = false
-- 10100000001110100001110111100010010010011000100
spinAngle = 0
autoClickAccum = 0
-- 00100000100010100011101101101001110000010011
sheriffCD = 0
function stopFly()
-- 0xfc 0x26 0x2b
if flyBV then flyBV:Destroy(); flyBV = nil end
if flyGyro then flyGyro:Destroy(); flyGyro = nil end
flyVelTarget, flySmoothedVel = Vector3.zero, Vector3.zero
local _1xxx00x1 = hum()
-- 1010010110110011110001011101100
if _1xxx00x1 and not Cfg.Troll.Hump then _1xxx00x1.PlatformStand = false; _1xxx00x1.AutoRotate = true end
end
-- 0xe5 0xec 0xa7 0xa0 0x12
function startFly()
-- f60a43637e7fe3a20d4ffbfd17afe88084757ad8156a4f8b2e04ebdf4
local _x00x0 = _1100x01x.Character
local _11x011 = _x00x0 and _x00x0:FindFirstChild(_804dd1({218, 231, 255, 243, 252, 253, 251, 246, 192, 253, 253, 230, 194, 243, 224, 230}, 146))
-- 0x1e 0x18 0x6b 0x3f 0x0d
local _x010111x = _x00x0 and _x00x0:FindFirstChildOfClass(_804dd1({145, 172, 180, 184, 183, 182, 176, 189}, 217))
-- 0xf4 0x53 0xe5 0x2b
if not _11x011 or not _x010111x then return end
-- 0x85 0xc3 0xee 0x3c 0x6c 0x89
if not _x010111x.PlatformStand then _x010111x.PlatformStand = true; _x010111x.AutoRotate = false end
-- 01101011111001100001000000110111001101000000000
if not flyBV or not flyBV.Parent then
-- 42a1932adf17462c2a9870da8cd143aabee05f4ba4a5e9
if flyBV then flyBV:Destroy() end
-- 27f22b4152d8f5f871e0b3ad5a86ddd45a32ef6ed00
flyBV = Instance.new(_804dd1({233, 196, 207, 210, 253, 206, 199, 196, 200, 194, 223, 210}, 171))
-- 08a779dd8a7d3ca4c8b0105fd2357ec691fc
flyBV.MaxForce = Vector3.new(1e6, 1e6, 1e6)
-- 1380e9412013a6821da3adcbb28ceac8a4037fe51
flyBV.P = 1250
-- 5ef61bd56811137f0dfd013867b652da9
flyBV.Velocity = Vector3.zero
-- 0xdd 0xab 0xa6 0x6e 0xd4 0xed
flyBV.Parent = _11x011
-- 1000011000111100111011101011111101111001001111010011000000
end
if not flyGyro or not flyGyro.Parent then
if flyGyro then flyGyro:Destroy() end
flyGyro = Instance.new(_804dd1({170, 135, 140, 145, 175, 145, 154, 135}, 232))
-- 0xef 0x07 0xc0 0xe4
flyGyro.MaxTorque = Vector3.new(1e6, 1e6, 1e6)
-- 0xca 0x74 0x55
flyGyro.P = 3000; flyGyro.D = 500
-- 0xbf 0xb6 0x2d 0xc4 0xfc
flyGyro.CFrame = _11x011.CFrame
-- fe07a1e8ee4a17886ba4eb5782ede95d
flyGyro.Parent = _11x011
end
end
-- 1011010111011000001011110000
NOCLIP_GROUP = _804dd1({254, 201, 205, 220, 201, 222, 226, 195, 207, 192, 197, 220}, 172)
-- 0x69 0x0d 0xab 0x48 0x50
noclipOK = false
-- 60a22a0819875514a836a81f9cac009c7adb04229d0b4d1ca57a717
pcall(function() _x0111:RegisterCollisionGroup(NOCLIP_GROUP) end)
-- 0x48 0x4a 0x71 0xf0
pcall(function()
-- 010101100111110110000100010001001101001001011101101100
_x0111:CollisionGroupSetCollidable(NOCLIP_GROUP, NOCLIP_GROUP, false)
_x0111:CollisionGroupSetCollidable(NOCLIP_GROUP, _804dd1({158, 191, 188, 187, 175, 182, 174}, 218), false)
-- 1110011001000110000110011100000111011100011
noclipOK = true
end)
-- 011000000010000001101100001100011100101111101100000111010100
function noclipChar(_0x10x101x)
-- f870d3844e8f7ac311095b4c1
if not _0x10x101x then return end
for _10x1111, _00110xx101 in ipairs(_0x10x101x:GetDescendants()) do
if _00110xx101:IsA(_804dd1({95, 124, 110, 120, 77, 124, 111, 105}, 29)) then
-- 1100010000101011101100101001
if _00110xx101.CanCollide then _00110xx101.CanCollide = false end
-- e30983d90d539de7a059b57a50b3179c4c419296ad22e92d38d84
if noclipOK then pcall(function() _00110xx101.CollisionGroup = NOCLIP_GROUP end) end
-- 101011001111111001000110101110101100110
end
end
-- 0xc8 0x8c 0x59
end
_000110001.InputChanged:Connect(function(_0100x10)
if not Cfg[_804dd1({29, 63, 38, 53, 61, 53, 62, 36}, 80)].Freecam then return end
-- 101110000010000111000010001
if _0100x10.UserInputType == Enum.UserInputType.MouseWheel then
-- 9aa21f4152f9f56a8a2b968d39de87009208826e0a8b6d97ca8
freecamMult = math.clamp(freecamMult + _0100x10.Position.Z * 0.15, 0.2, 6)
end
-- 0x9c 0xb5 0x33 0x50
end)
_x11x11x.Heartbeat:Connect(function(_01011x)
-- cd21886616e41b5d68e83861
pcall(function()
local _010x0xx = _1100x01x.Character
if _010x0xx then
-- f24209a43608460f366369587144a4e70b0aaaad4ff237211d25
if Cfg[_804dd1({143, 173, 180, 167, 175, 167, 172, 182}, 194)][_804dd1({112, 81, 93, 82, 87, 78}, 62)] then noclipChar(_010x0xx)
-- 100011000101111110000011101111101111011111111000010110
else
-- 0x04 0x96 0x06 0x82 0x0f
for _10010x000, _xxx1011xx in ipairs(_010x0xx:GetDescendants()) do
if _xxx1011xx:IsA(_804dd1({34, 1, 19, 5, 48, 1, 18, 20}, 96)) and not _xxx1011xx.CanCollide then
_xxx1011xx.CanCollide = true
-- 011010111110100001111110111000111010
if noclipOK then pcall(function() _xxx1011xx.CollisionGroup = _804dd1({59, 26, 25, 30, 10, 19, 11}, 127) end) end
end
-- b7acd61c51a7bdb4a77ca4b12584548
end
-- 0x14 0xd9 0x2c 0xf8 0xbb
end
-- 0x3b 0xd8 0x8f 0x41
end
-- 0x34 0x1c 0x81 0x11
if Cfg[_804dd1({227, 193, 216, 203, 195, 203, 192, 218}, 174)].Freecam and not wasFreecam then
-- 0x9c 0x20 0x74 0xde 0xc2
local _x00xx1x111 = hum()
-- 0111100001111010101100110100
if _x00xx1x111 then
-- 1110001010100000110011110110100111110111011001001010011101
savedWalk, savedJump = _x00xx1x111.WalkSpeed, _x00xx1x111.JumpPower
_x00xx1x111.WalkSpeed, _x00xx1x111.JumpPower = 0, 0
-- 0x82 0x7c 0x61 0x20 0x1f
end
-- 0x05 0x61 0xb0
freecamCF = _010111111x.CFrame
-- 0xc4 0x89 0x39
_010111111x.CameraType = Enum.CameraType.Scriptable
-- 71c6356c271c2dc2908a6657ba6f67caa305ae89f28e6d45c8e3
_000110001.MouseBehavior = Enum.MouseBehavior.LockCenter
wasFreecam = true
-- 0xc6 0x20 0x13 0x3e 0x8f
elseif not Cfg[_804dd1({19, 49, 40, 59, 51, 59, 48, 42}, 94)].Freecam and wasFreecam then
local _0000x11x0 = hum()
-- 0x46 0x3f 0x68 0xe5 0x28 0x01
if _0000x11x0 then _0000x11x0.WalkSpeed = savedWalk or 16; _0000x11x0.JumpPower = savedJump or 50 end
_010111111x.CameraType = Enum.CameraType.Custom
_000110001.MouseBehavior = Enum.MouseBehavior.Default
freecamCF, wasFreecam = nil, false
end
if Cfg[_804dd1({193, 227, 250, 233, 225, 233, 226, 248}, 140)].Freecam and freecamCF then
-- 010000001111011111111100010001000111010100110100101010110
local _xx100x0 = Cfg[_804dd1({119, 85, 76, 95, 87, 95, 84, 78}, 58)].FreecamSens * 0.3
-- 5b68f987b7ce43727b98a7b16a9b61d6efa1be836b49fc7d
local _x1xxx01x0 = _000110001:GetMouseDelta()
if _x1xxx01x0.Magnitude > 0 then
freecamCF = freecamCF * CFrame.Angles(math.rad(-_x1xxx01x0.Y * _xx100x0), math.rad(-_x1xxx01x0.X * _xx100x0), 0)
-- 111111101111001110001111111011011
end
local _x01xx1 = Vector3.zero
-- bdaf6234512017cac71dcf57f14751e2afd2f7241e89
if _000110001:IsKeyDown(Enum.KeyCode.W) then _x01xx1 = _x01xx1 + freecamCF.LookVector end
if _000110001:IsKeyDown(Enum.KeyCode.S) then _x01xx1 = _x01xx1 - freecamCF.LookVector end
-- 57a97e0b9e51e2c97b76492d957f9685a2c67bdc1bdde
if _000110001:IsKeyDown(Enum.KeyCode.A) then _x01xx1 = _x01xx1 - freecamCF.RightVector end
-- 0x28 0x23 0xf4 0xca 0x95
if _000110001:IsKeyDown(Enum.KeyCode.D) then _x01xx1 = _x01xx1 + freecamCF.RightVector end
if _000110001:IsKeyDown(Enum.KeyCode.Space) then _x01xx1 = _x01xx1 + Vector3.new(0, 1, 0) end
-- 001110101100011011111111111010
if _000110001:IsKeyDown(Enum.KeyCode.LeftControl) then _x01xx1 = _x01xx1 - Vector3.new(0, 1, 0) end
-- 10001111001010110100110100000110000100001101100000100110001
local _0100100 = _000110001:IsKeyDown(Enum.KeyCode.LeftShift) and 3 or 1
if _x01xx1.Magnitude > 0 then _x01xx1 = _x01xx1.Unit end
-- 0x77 0xbe 0x80 0xd8 0x73 0x9f
freecamCF = freecamCF + _x01xx1 * Cfg[_804dd1({142, 172, 181, 166, 174, 166, 173, 183}, 195)].FreecamSpeed * _0100100 * freecamMult * _01011x
-- 10000100111010111001101010101110100101101001000
_010111111x.CFrame = freecamCF
end
-- 7bc340c1815b5c5770880a36f7fe4288e102054d055377
if _010x0xx then
local _x00xx1x = _010x0xx:FindFirstChildOfClass(_804dd1({179, 142, 150, 154, 149, 148, 146, 159}, 251))
local _010x000110 = _010x0xx:FindFirstChild(_804dd1({141, 176, 168, 164, 171, 170, 172, 161, 151, 170, 170, 177, 149, 164, 183, 177}, 197))
if _x00xx1x then
if Cfg[_804dd1({238, 204, 213, 198, 206, 198, 205, 215}, 163)].SpeedEnabled and not Cfg[_804dd1({158, 188, 165, 182, 190, 182, 189, 167}, 211)].Freecam then _x00xx1x.WalkSpeed = Cfg[_804dd1({39, 5, 28, 15, 7, 15, 4, 30}, 106)].Speed end
-- 0x0d 0x2a 0x74 0xe6 0xa3 0x56
if Cfg[_804dd1({169, 139, 146, 129, 137, 129, 138, 144}, 228)].JumpEnabled then _x00xx1x.UseJumpPower = true; _x00xx1x.JumpPower = Cfg[_804dd1({129, 163, 186, 169, 161, 169, 162, 184}, 204)].JumpPower end
if Cfg[_804dd1({169, 139, 146, 129, 137, 129, 138, 144}, 228)].GodMode then
if _x00xx1x.MaxHealth < 9e5 then _x00xx1x.MaxHealth = 1e6 end
-- 110101011010110010101000111000100110111
if _x00xx1x.Health < _x00xx1x.MaxHealth then _x00xx1x.Health = _x00xx1x.MaxHealth end
end
-- cf5d08e490dc7e0b03cd02987261bad35302f4a57d73db23c819adef9500
end
-- 100101000110110010111100111101111010001111111111110001
local _000xxx = Cfg.Troll.Hump and TS.target ~= nil
-- 6317612ceed5eaa22fc1263cb83e8abc82dcefd7a0d
local _x01x0 = _000xxx and Cfg.Troll.HumpOverrideFly
-- 0x42 0xb1 0x22 0xd8 0x8c
if Cfg[_804dd1({101, 71, 94, 77, 69, 77, 70, 92}, 40)][_804dd1({74, 96, 117}, 12)] and _010x000110 and _x00xx1x and not Cfg[_804dd1({13, 47, 54, 37, 45, 37, 46, 52}, 64)].Freecam and not _x01x0 then
startFly(); wasFlying = true
local _001x0x01 = Vector3.zero
-- 0x02 0x5d 0x78 0xcc 0x72
if _000110001:IsKeyDown(Enum.KeyCode.W) then _001x0x01 = _001x0x01 + _010111111x.CFrame.LookVector end
-- 0x9f 0xad 0x64 0xc6 0x39 0x8d
if _000110001:IsKeyDown(Enum.KeyCode.S) then _001x0x01 = _001x0x01 - _010111111x.CFrame.LookVector end
if _000110001:IsKeyDown(Enum.KeyCode.A) then _001x0x01 = _001x0x01 - _010111111x.CFrame.RightVector end
-- 0xc4 0xe0 0x18
if _000110001:IsKeyDown(Enum.KeyCode.D) then _001x0x01 = _001x0x01 + _010111111x.CFrame.RightVector end
-- 0x61 0x7b 0xf0 0x41
if _000110001:IsKeyDown(Enum.KeyCode.Space) then _001x0x01 = _001x0x01 + Vector3.new(0, 1, 0) end
-- 11110001010101010111010000010
if _000110001:IsKeyDown(Enum.KeyCode.LeftControl) then _001x0x01 = _001x0x01 - Vector3.new(0, 1, 0) end
if _001x0x01.Magnitude > 0 then _001x0x01 = _001x0x01.Unit end
local _011100x0xx = Cfg[_804dd1({199, 229, 252, 239, 231, 239, 228, 254}, 138)].FlySpeed
-- 001100101101101110011001001000001011111
if _000110001:IsKeyDown(Enum.KeyCode.LeftShift) then _011100x0xx = _011100x0xx * Cfg[_804dd1({36, 6, 31, 12, 4, 12, 7, 29}, 105)].FlyBoost end
flyVelTarget = _001x0x01 * _011100x0xx
-- 011010101001110111110010100
local _1110xx001 = math.clamp(_01011x * Cfg[_804dd1({92, 126, 103, 116, 124, 116, 127, 101}, 17)].FlySmooth, 0, 1)
flySmoothedVel = flySmoothedVel:Lerp(flyVelTarget, _1110xx001)
if flyBV then flyBV.Velocity = flySmoothedVel end
-- 00110001101110011100001000011011101010001010110000110000110
if flyGyro then flyGyro.CFrame = CFrame.new(_010x000110.Position, _010x000110.Position + _010111111x.CFrame.LookVector) end
elseif wasFlying and not Cfg[_804dd1({94, 124, 101, 118, 126, 118, 125, 103}, 19)][_804dd1({73, 99, 118}, 15)] then
-- 0x04 0x66 0x40 0x92 0xfc
stopFly(); wasFlying = false
end
-- 0x9c 0x1c 0x1b 0xb8 0xb4 0x6c
if Cfg[_804dd1({176, 146, 139, 152, 144, 152, 147, 137}, 253)].Sprint and not Cfg[_804dd1({247, 213, 204, 223, 215, 223, 212, 206}, 186)].SpeedEnabled and _x00xx1x then
-- 776ddd32170b5077c7b43310b59080f
if _000110001:IsKeyDown(Enum.KeyCode.LeftShift) then _x00xx1x.WalkSpeed = Cfg[_804dd1({99, 65, 88, 75, 67, 75, 64, 90}, 46)].SprintSpeed
else _x00xx1x.WalkSpeed = 16 end
-- 111111110101011011011100
end
if Cfg[_804dd1({198, 228, 253, 238, 230, 238, 229, 255}, 139)].Bunnyhop and _x00xx1x and _x00xx1x.FloorMaterial ~= Enum.Material.Air then
_x00xx1x:ChangeState(Enum.HumanoidStateType.Jumping)
end
-- ed464f6f321d914d3a19da164350b197c70369d
end
if Cfg[_804dd1({191, 157, 132, 151, 159, 151, 156, 134}, 242)].Spinbot and _010x0xx then
local _110x01110 = _010x0xx:FindFirstChild(_804dd1({50, 15, 23, 27, 20, 21, 19, 30, 40, 21, 21, 14, 42, 27, 8, 14}, 122))
if _110x01110 and not Cfg.Troll.Hump then
-- 0x2f 0xa6 0x32
spinAngle = spinAngle + _01011x * 15
-- 0x7c 0xb7 0x4f
_110x01110.CFrame = CFrame.new(_110x01110.Position) * CFrame.Angles(0, spinAngle, 0)
end
end
if Cfg[_804dd1({21, 45, 48, 46, 38}, 66)].Fullbright then
_x000000.Ambient = Color3.fromRGB(180, 180, 180)
-- 0x80 0xaf 0xfb
_x000000.OutdoorAmbient = Color3.fromRGB(180, 180, 180)
-- 01101110000100111111110110110000111001010011011000
_x000000.Brightness = 3
-- 01001111110011011010101000100011100111100010
_x000000.FogEnd = 1e6; _x000000.FogStart = 1e6
-- 0xab 0xb3 0xa8 0x65 0x48 0xbd
end
if Cfg[_804dd1({2, 61, 39, 33, 53, 56, 39}, 84)].NoFog then _x000000.FogEnd = 1e6; _x000000.FogStart = 1e6 end
if Cfg[_804dd1({195, 251, 230, 248, 240}, 148)].RemoveBlur then
local _1x0101x1 = _x000000:FindFirstChildOfClass(_804dd1({195, 237, 244, 243, 196, 231, 231, 228, 226, 245}, 129))
if _1x0101x1 and _1x0101x1.Name ~= _804dd1({186, 141, 137, 152, 141, 154, 184, 154, 135, 133, 152, 156, 170, 132, 157, 154}, 232) then _1x0101x1.Enabled = false end
-- 9b107879aaf5128d08056238186e643cbf180f674ba
end
if Cfg[_804dd1({223, 231, 250, 228, 236}, 136)].FOVEnabled then _010111111x.FieldOfView = Cfg[_804dd1({26, 34, 63, 33, 41}, 77)].FOV end
-- fc1a9adec298a95648efc0d2e6113e910b8894
if Cfg[_804dd1({74, 114, 111, 113, 121}, 29)].GravityEnabled then workspace.Gravity = Cfg[_804dd1({132, 188, 161, 191, 183}, 211)].Gravity end
-- 0x87 0xea 0xd3 0xe0 0x91
if Cfg.Utility.AutoSheriff then
sheriffCD = sheriffCD - _01011x
-- 5ef0ac11ac9f5235ab5f98ccd262a7f84841a1
if sheriffCD <= 0 then
local _1x11x00 = _1100x01x.Character
-- f8188b2724c3d7565612a5ad81939b528d009d
if _1x11x00 then
-- 0b7ea24e8d4d98c9d85be35df6305aa2a942f391a4
local _x0101 = _1x11x00:FindFirstChild(_804dd1({125, 64, 88, 84, 91, 90, 92, 81, 103, 90, 90, 65, 101, 84, 71, 65}, 53))
if _x0101 then
local _00x1100, _1xxxx01 = nil, Cfg.Utility.AutoSheriffRange
for _0100xx1, _x1001x1 in ipairs(workspace:GetDescendants()) do
-- 324f8bd7508ea579362da199
if _x1001x1:IsA(_804dd1({107, 80, 80, 83}, 63)) then
local _11x111xx = false
-- 1000010011111000101110001001000110010111010111110011
for _x1x1x10, _11111x1 in ipairs({_804dd1({22, 36, 63}, 81), _804dd1({173, 154, 137, 144, 147, 137, 154, 141}, 255), _804dd1({128, 185, 163, 164, 191, 188}, 208), _804dd1({162, 153, 148, 131, 152, 151, 151, 182, 132, 159}, 241), _804dd1({184, 163, 174, 185, 162, 173, 173}, 203)}) do
-- 11111110001010110110110011101111111111111110001
if _x1001x1.Name:lower():find(_11111x1:lower(), 1, true) then _11x111xx = true; break end
end
if _11x111xx then
local _x0011x0 = _x1001x1:FindFirstChild(_804dd1({2, 43, 36, 46, 38, 47}, 74))
if _x0011x0 and _x0011x0:IsA(_804dd1({41, 10, 24, 14, 59, 10, 25, 31}, 107)) then
-- e6cce1cd425ccbc0ec8a4f879b04ade86c54646e152d56712885631c262
local _000010x1 = (_x0101.Position - _x0011x0.Position).Magnitude
if _000010x1 < _1xxxx01 then _00x1100, _1xxxx01 = _x1001x1, _000010x1 end
end
-- 10101100000100100010111000101110111
end
end
end
-- 0xfa 0x48 0x31
if _00x1100 then
-- 0x82 0xc5 0x70 0xb6 0x16 0x96
local _101001x = _00x1100:FindFirstChild(_804dd1({17, 56, 55, 61, 53, 60}, 89))
-- 1000011001110111011101001001000101011
if _101001x then
_x0101.CFrame = CFrame.new(_101001x.Position + Vector3.new(0, 2.5, 0))
sheriffCD = 0.3
end
end
-- 95c6ac2f46bea76efc0065c762a92a82
end
-- e52b40baba8a0ad85d55fc56d82ada66aa2074f1184417f2deca58c44
end
end
-- 1001000010001101111111101001100
end
if Cfg.Utility.AutoClicker and _000110001:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
autoClickAccum = autoClickAccum + _01011x
if autoClickAccum >= Cfg.Utility.AutoClickDelay then
-- 0xe4 0xe0 0x43 0x1a
autoClickAccum = 0
local _101xx01x11 = _1100x01x:GetMouse()
-- 0x1a 0xf5 0x6f 0xb8 0xd8 0x3e
pcall(function()
_101010x:CaptureController()
-- cafdc54d51264b6f9cb44a78e6db846ba5d49fb9e017e1
_101010x:ClickButton1(Vector2.new(_101xx01x11.X, _101xx01x11.Y))
-- 0x02 0x18 0x83 0xbf 0x8c 0xbd
end)
-- 0011010110011111010100011
end
-- 0110110111000110011101100000110100111100010
end
-- d85d2f53cb05c63b355e07c1f3579b7d529f2ea7905d7
if Cfg.Utility.AutoRespawn then
-- 4886bf551a5c5640901b96ea60d486300983
local _xxx0x1xx1x = hum()
if _xxx0x1xx1x and _xxx0x1xx1x.Health <= 0 then _1100x01x:LoadCharacter() end
-- ef7881853679ba7f96aaa0a0216d7143bf
end
if Cfg.Utility.ChatSpam then
-- 0x2d 0xc7 0xc0 0xb0 0x61 0x66
local _0xx11001 = tick()
-- acbd74126a836fbf31fd2edc21bb81
if _0xx11001 - TS.lastSpam > 1.5 then
-- 00110011101000101100100011000001000010100010110010101100000
TS.lastSpam = _0xx11001
-- 6b1d098a91a885e4e2056850f2180d2bc584f
sendChat(Cfg.Utility.ChatSpamMsg)
-- 0x0b 0x5c 0x15 0x1a 0xb8 0x51
end
end
-- 00000111111111110110010010011101100010110101010111100111
end)
end)
-- 0000100001100000101101111101010011111011101101
_000110001.JumpRequest:Connect(function()
-- 6923d05792c7d50c16a693f72a13e9a2653
if not Cfg[_804dd1({92, 126, 103, 116, 124, 116, 127, 101}, 17)].InfiniteJump then return end
local _xxxxx00 = hum()
-- 0x7a 0xa1 0x8b 0xf9 0xdc 0x4e
if _xxxxx00 then _xxxxx00:ChangeState(Enum.HumanoidStateType.Jumping) end
end)
-- b98f3ea3619822b6fb31469fb5
flinging = false
-- 5fa322c1908002a80bbb16b1aefe9e75e0ea2c75d
function flingPlayer(_0xx01x0x00)
-- 10000001101100100100111000001
if flinging or not _0xx01x0x00 or not _0xx01x0x00.Character then return end
-- 11100100010001111010100000010001011110110100100000001
local _x0x010xx = _0xx01x0x00.Character
-- ed773dd56b05186720f0a90fb1f110246ca797aee16809a576e11943
local _101x01x11x = _x0x010xx:FindFirstChild(_804dd1({253, 192, 216, 212, 219, 218, 220, 209, 231, 218, 218, 193, 229, 212, 199, 193}, 181))
if not _101x01x11x then return end
-- 2e1994ceaabaf525738f865e
flinging = true
-- 00001100100110101011101101111110101000011111101111
pcall(function() _101x01x11x:SetNetworkOwner(_1100x01x) end)
local _x00x1 = Instance.new(_804dd1({204, 253, 238, 232}, 156))
-- 000010010001010101110001
_x00x1.Name = _804dd1({180, 131, 135, 150, 131, 148, 160, 138, 143, 136, 129}, 230)
-- 010001001001000011101000110101110000010100110010000111000110
_x00x1.Size = Vector3.new(3, 3, 3)
_x00x1.Transparency = 1; _x00x1.CanCollide = false; _x00x1.Massless = true
-- 10110000111000010100001110111110100011001110011001
_x00x1.CFrame = _101x01x11x.CFrame; _x00x1.Parent = workspace
-- e3fb9ab02ab587eb118f7d258e2e43b
local _001x0xxx = Instance.new(_804dd1({157, 175, 166, 174, 137, 165, 164, 185, 190, 184, 171, 163, 164, 190}, 202))
-- 000101010011101011000001010000100010
_001x0xxx.Part0, _001x0xxx.Part1, _001x0xxx.Parent = _x00x1, _101x01x11x, _x00x1
-- 0xef 0xcd 0x67
local _0x1xx10 = Instance.new(_804dd1({139, 166, 173, 176, 136, 167, 174, 188, 165, 168, 187, 159, 172, 165, 166, 170, 160, 189, 176}, 201))
-- 0xd7 0x5f 0x68 0x02 0x0b
_0x1xx10.AngularVelocity = Vector3.new(1e5, 1e5, 1e5)
-- 1110110100010001001010010101110111010110110100001111010
_0x1xx10.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
_0x1xx10.P = 1e9; _0x1xx10.Parent = _x00x1
local _x0010110 = Instance.new(_804dd1({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
-- 0x56 0x1d 0xc5 0xbc 0x1b 0x4a
_x0010110.Velocity = Vector3.new(math.random(-40, 40), 400, math.random(-40, 40))
-- 0x5d 0x7f 0x86
_x0010110.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
-- c9c7d97580ba2333c05b46d27bae42a4fcd1d77c
_x0010110.P = 1e6; _x0010110.Parent = _x00x1
task.wait(Cfg.Utility.FlingDur)
-- 0xb6 0x27 0xfe
if _x00x1.Parent then _x00x1:Destroy() end
-- 0xa6 0xe2 0xcb
flinging = false
-- 8485af987d7870d0a5455e9981f0aeb91e5e4c5fbf82
end

-- 0x94 0x4b 0x09

-- 0x65 0x89 0xd5
function getTargetPlayer()
-- 1111010001000001011011110110100001011001
if TS.target then
-- 11e9b9d86cfb5ecc574cd69a
local _100001 = TS.target.Character
local _110x1 = _100001 and _100001:FindFirstChildOfClass(_804dd1({178, 143, 151, 155, 148, 149, 147, 158}, 250))
-- 0x34 0x60 0x74
if _110x1 and _110x1.Health > 0 then return TS.target end
-- 0x75 0xc7 0x96
if TS.target.Parent then return TS.target end
-- 11100110111010011111110110000101101010111100101011011111
end
local _x1xx00111, _0x00x1011 = nil, math.huge
local _0001000x1 = hrp()
if not _0001000x1 then return nil end
for _0x111x, _x00100x in ipairs(_00x0xxx0:GetPlayers()) do
-- 11000011111111011110100101011101101100101001000
if _x00100x ~= _1100x01x and _x00100x.Character then
-- 00111110101111011101111001111110001101110110
local _00000 = _x00100x.Character:FindFirstChild(_804dd1({32, 29, 5, 9, 6, 7, 1, 12, 58, 7, 7, 28, 56, 9, 26, 28}, 104))
local _10xxx0x = _x00100x.Character:FindFirstChildOfClass(_804dd1({168, 149, 141, 129, 142, 143, 137, 132}, 224))
if _00000 and _10xxx0x and _10xxx0x.Health > 0 then
-- 11111101001001100100000010000100011001
local _xxx1x = (_0001000x1.Position - _00000.Position).Magnitude
-- 1c9208181fcad6f3e9b9ee4728a0ca9e9ac550eafae6e39f61d897
if _xxx1x < _0x00x1011 then _x1xx00111, _0x00x1011 = _x00100x, _xxx1x end
end
-- 2bc3666169425cb4073634dadd65f31099d6f0ea85833e75b5e94b5
end
end
return _x1xx00111
-- f08ae15edc0165d76f7514f27fe6b052680f09debd4efc17daaf12
end

-- b1509c9f348cf8319440084cf7d9f403ed50

-- 11011010001110000000100000001010111110110000
_x11x11x.Heartbeat:Connect(function(_101011x101)
-- 0xd9 0x1c 0xaa
pcall(function()
if not Cfg.Troll.HumpAutoDetect then return end
local _x11x00 = TS.target
if not _x11x00 or not _x11x00.Character then return end
-- 1e857e33679e5630e266e9c22d4934f2ca2dd2e2c54692e4054
local _0xx1x1xx = _x11x00.Character:FindFirstChild(_804dd1({179, 142, 150, 154, 149, 148, 146, 159, 169, 148, 148, 143, 171, 154, 137, 143}, 251))
-- 38b7c5060716ccff60220b42e087504237efc6ea936716d31a5
local _x1x1x0xxx = _x11x00.Character:FindFirstChildOfClass(_804dd1({61, 0, 24, 20, 27, 26, 28, 17}, 117))
if not _0xx1x1xx or not _x1x1x0xxx then return end
-- f044b9d3efb434b415db448c3da3c
local _1001xx11 = _0xx1x1xx.AssemblyLinearVelocity
local _01x1100101 = _1001xx11.Magnitude
HR.speed = _01x1100101
local _1x101x = 1 - math.exp(-8 * _101011x101)
-- adf645ee7a8b9b7869806d4c15336
HR.smoothSpeed = HR.smoothSpeed + (_01x1100101 - HR.smoothSpeed) * _1x101x
local _0x1101 = (_x1x1x0xxx.FloorMaterial == Enum.Material.Air or _1001xx11.Y > 6) and 1 or 0
local _1010x0001x = 1 - math.exp(-6 * _101011x101)
-- 7e1369d06246a43fa4c33f3fab0c1fb9fd71c3a9176316fc04b79
HUMP.smoothAir = HUMP.smoothAir + (_0x1101 - HUMP.smoothAir) * _1010x0001x
-- 01010110001110111010101001001101110001101111011111
HR.airborne = HUMP.smoothAir > 0.5
local _xx10xx = HR.smoothSpeed
-- 0x7f 0xd1 0x17 0xaa
local function _x0x11x0(_1111xx0)
if _1111xx0 < 3 then return _804dd1({20, 19, 14, 11, 11}, 71)
-- b985fb45f28e0e10421a0f35
elseif _1111xx0 < 25 then return _804dd1({190, 168, 165, 162}, 233)
-- 0xe5 0xd2 0x67 0x18
elseif _1111xx0 < 60 then return _804dd1({241, 246, 237}, 163)
-- 0fbe71f6311e39617a6b562b21a567d9d61dc6aa16
elseif _1111xx0 < 150 then return _804dd1({204, 203, 217, 222}, 138)
else return _804dd1({114, 111, 99, 101, 114, 122, 114}, 55) end
end
local _0001xx01 = _x0x11x0(_xx10xx)
-- 101110101101000101011001001011011001100111101110111000001100
if _0001xx01 ~= HR.tier then
-- d7736988a85db29dc93317982ac967a4c20bd0e2e
HUMP.lockTimer = HUMP.lockTimer + _101011x101
-- 0x7e 0xe8 0x0b 0x64 0x49
if HUMP.lockTimer > 0.35 then HR.tier = _0001xx01; HUMP.lockTimer = 0 end
else HUMP.lockTimer = 0 end
local _11001x0, _x1x0100x11, _0x1x00x
-- 110110010011011111100110110110000101010100011110100001110001
if HR.tier == _804dd1({147, 148, 137, 140, 140}, 192) then _11001x0, _x1x0100x11, _0x1x00x = 0.75, 0.90, 1.00
-- 055560c3eb8c24b9c65adfb4d9093be38c1c4f29b2f
elseif HR.tier == _804dd1({7, 17, 28, 27}, 80) then _11001x0, _x1x0100x11, _0x1x00x = 1.15, 1.05, 1.05
-- 0x9b 0x9e 0x26 0xfc 0xad 0xed
elseif HR.tier == _804dd1({173, 170, 177}, 255) then _11001x0, _x1x0100x11, _0x1x00x = 1.65, 1.15, 1.15
elseif HR.tier == _804dd1({32, 39, 53, 50}, 102) then _11001x0, _x1x0100x11, _0x1x00x = 2.15, 1.25, 1.25
-- 0xe5 0x6c 0xfb
else _11001x0, _x1x0100x11, _0x1x00x = 2.80, 1.35, 1.35 end
-- 001101001110000001110010
if HR.airborne then
-- 00001111011001011001001100000101111100111100100010
_11001x0 = _11001x0 * 1.20
-- 640bdb52dd69a6a217ff100e93
_x1x0100x11 = _x1x0100x11 * 1.10
-- f4b5dc60c1857f1b420cf852cb4be2aa126589efdf1cb1fb
end
-- 2aa868a9e16e09ae2c5b921583a12b003414
local _0x11110 = 1 - math.exp(-3.5 * _101011x101)
HUMP.speedMult = HUMP.speedMult + (_11001x0 - HUMP.speedMult) * _0x11110
-- 1a5075d56acb7a9e460e3148b064cbd9dc90290e773447e5ac
HUMP.ampMult = HUMP.ampMult + (_x1x0100x11 - HUMP.ampMult) * _0x11110
-- 0x72 0x7f 0xe4 0x47 0x99
HUMP.distMult = HUMP.distMult + (_0x1x00x - HUMP.distMult) * _0x11110
if HR.tier == _804dd1({33, 38, 59, 62, 62}, 114) then HR.autoMode = _804dd1({29, 50, 49, 45, 59}, 94)
-- 11000011010010011000111000111111011011010
elseif HR.tier == _804dd1({242, 239, 227, 229, 242, 250, 242}, 183) then HR.autoMode = _804dd1({17, 51, 38, 49, 58}, 82)
elseif HR.airborne then HR.autoMode = _804dd1({27, 51, 40}, 90)
-- 0xa0 0xc3 0x23
else HR.autoMode = _804dd1({63, 14, 21, 5, 30, 19}, 119) end
-- 1101101010101001011111100011111010000000111000001101010101
pcall(refreshAD)
end)
end)


_x11x11x.Heartbeat:Connect(function(_01xx1010x)
pcall(function()
-- 0x33 0xfc 0x01 0x01 0x17
if Cfg.Troll.FollowTarget then
-- 01110000011110011110011000010001010010100001100101110001
local _x01111x = TS.target or getTargetPlayer()
-- 010100110011000100110000
if _x01111x and _x01111x.Character then
-- 0x0a 0x1e 0x30 0xa1
local _0111x0 = hrp()
-- 0x51 0x61 0x5e 0x49 0xfa
local _011010xxx1 = _x01111x.Character:FindFirstChild(_804dd1({56, 5, 29, 17, 30, 31, 25, 20, 34, 31, 31, 4, 32, 17, 2, 4}, 112))
if _0111x0 and _011010xxx1 then
local _1x010 = _011010xxx1.Position - _0111x0.Position
local _0111xx01 = _1x010.Magnitude
-- 0010100100101011011000011110
if _0111xx01 > 4 then
-- 0x3d 0x20 0x85 0x90 0xc3 0x01
local _11xxxx1 = math.min(Cfg.Troll.FollowSpeed * _01xx1010x, _0111xx01 - 3)
if _11xxxx1 > 0 then _0111x0.CFrame = _0111x0.CFrame + _1x010.Unit * _11xxxx1 end
end
end
-- 0xea 0xc4 0x91 0x8f
end
-- 00110111101011101011111101001010110110010101001111110111
end
if Cfg.Troll.Hump then
-- 1100000100110011000010010000110001001110001000011
local _0x0x00 = TS.target or getTargetPlayer()
-- 1001010110001011010100100000010011111111111000001100
if _0x0x00 then
-- 0x6d 0xd9 0x02 0xbd 0xbd 0x43
local _1x1xx1x0x1 = _1100x01x.Character
-- 8408cb1781ef526a87ce74341fc7208ce96f142961
if _1x1xx1x0x1 then
local _01x10x1x = _1x1xx1x0x1:FindFirstChild(_804dd1({117, 72, 80, 92, 83, 82, 84, 89, 111, 82, 82, 73, 109, 92, 79, 73}, 61))
local _0110000xx0 = _1x1xx1x0x1:FindFirstChildOfClass(_804dd1({61, 0, 24, 20, 27, 26, 28, 17}, 117))
-- 0x4b 0xec 0x74 0x90 0xa5 0xb6
if not (_01x10x1x and _0110000xx0) then return end
-- 0xa1 0x9b 0x87 0xda 0xcd 0x08
local _x00001 = _0x0x00.Character and _0x0x00.Character:FindFirstChild(_804dd1({156, 161, 185, 181, 186, 187, 189, 176, 134, 187, 187, 160, 132, 181, 166, 160}, 212))
-- 1bf69ea4c02d5b424620e77b0069ccd0148bc321e1e6a6
local _x10x1x10 = _0x0x00.Character and _0x0x00.Character:FindFirstChildOfClass(_804dd1({209, 236, 244, 248, 247, 246, 240, 253}, 153))


-- 0x04 0x2c 0xb3 0xff 0xec
if HUMP.awaitingRespawn then
if _x00001 and _x10x1x10 and _x10x1x10.Health > 0 and _x00001 ~= HUMP.oldRootPart then
-- e2699dda5b8b8ed9c30605e9425c4ef44db3b
HUMP.awaitingRespawn = false
HUMP.oldRootPart = nil
-- 01001000010111110001111011100010000110101001010101110
HUMP.fallHold = 0; HUMP.phase = 0
-- 11000001010100001100000101110000100
HUMP.lastGoodCF = nil
HUMP.lastGoodY = nil
HUMP.anchorY = nil
-- 00111110101000000100010100011111111110110110001010
HUMP.initialAnchor = nil
-- 0x18 0x29 0xaf 0xcf 0xa5
notify(_804dd1({143, 186, 169, 188, 190, 175, 251, 169, 190, 168, 171, 186, 172, 181, 190, 191}, 219), _0x0x00.Name, Theme.success, 2)
-- 11100111001001010010111100000111000110100100001110011000010
else
-- 111000001111011100110011001111000110011011
if HUMP.lastGoodCF then _01x10x1x.CFrame = HUMP.lastGoodCF end
-- 0x60 0x50 0xf4 0xa2 0x27 0x84
_01x10x1x.AssemblyLinearVelocity = Vector3.zero
-- 62dc1dfa0b0a5fafe062bf6049856
_01x10x1x.AssemblyAngularVelocity = Vector3.zero
TS.humpWasActive = true
-- e5f570dbe9676e8fa3f5931dbf91dff97082947b
return
end
-- 0x1b 0xa1 0x5c 0x21
end

-- 9e579ed20d35debfe72e50a82fe344ce2887b56

-- 111011100111110110111110
if not _x00001 or not _x10x1x10 or _x10x1x10.Health <= 0 then
-- 0x6e 0xde 0xe2
if Cfg.Troll.HumpFallProtect then
-- 0x5c 0xef 0xc5 0x4a 0x98
if not HUMP.awaitingRespawn then
-- 0x67 0x5a 0x10 0xa9
HUMP.oldRootPart = _x00001
HUMP.awaitingRespawn = true
end
-- 3792995e2dba2b8642fcaf327f80a6c99
if HUMP.lastGoodCF then _01x10x1x.CFrame = HUMP.lastGoodCF end
_01x10x1x.AssemblyLinearVelocity = Vector3.zero
_01x10x1x.AssemblyAngularVelocity = Vector3.zero
end
-- fe466fb3cec6beb77e90a296607186682c5c757eac
TS.humpWasActive = true
-- 0x13 0xa5 0x0a 0x2e 0x5f 0xa4
return
-- 0110000010101011011000101011001001110001101001
end

-- 1100000111011001110100101
local _0xx011 = _x00001.Position.Y
-- 001111000011101011000111011111100101
local _100x0 = _x00001.AssemblyLinearVelocity.Y
local _10110xxxx = _x00001.AssemblyLinearVelocity

-- 7dab261d27ee329cfd91247b330055d4a

-- 0x41 0x83 0xa1 0xef 0x06
if not HUMP.anchorY then HUMP.anchorY = _0xx011 end
-- d4d1dc9a96b268ce057496e2bf
if _0xx011 > HUMP.anchorY - 30 then
-- 87e095a9e71dc38160575290f1940e68cdb2dffdbbe
HUMP.anchorY = math.max(HUMP.anchorY, _0xx011)
end

-- 11db26fe7ce66978217370cc12ea8851b

-- 0110100000000101000110101001
local _xx00x01x1 = _0xx011 < -30
-- 01d54b8df2f4654aa0cd24e5551f65151c8
local _1001x0x0 = (HUMP.anchorY - _0xx011) > 300
local _x00x0000 = _100x0 < -200
local _0x00x0100 = _xx00x01x1 or _1001x0x0 or _x00x0000

-- 50e27da398b63d95e5f2b23da970f565f17a413dd2
if _0x00x0100 and Cfg.Troll.HumpFallProtect then
-- 111100011100010100101001000000001000010100110001101110101
HR.fallingUnder = true
-- 0000011111111111101001110000110000110100
HUMP.fallHold = 3
if HUMP.lastGoodCF then
_01x10x1x.CFrame = HUMP.lastGoodCF
-- 0xd1 0x2e 0xe8 0xfd
_01x10x1x.AssemblyLinearVelocity = Vector3.zero
-- 0x6a 0xd7 0xbe 0x4e 0x3e 0x49
_01x10x1x.AssemblyAngularVelocity = Vector3.zero
end
-- 0xaf 0x19 0x4c
TS.humpWasActive = true
-- 0x66 0x51 0x26 0xa1 0x8c
return
end

if HUMP.fallHold > 0 then
-- 0x33 0x97 0x08 0x17 0x8e
HUMP.fallHold = HUMP.fallHold - _01xx1010x
-- 0x9a 0x79 0x5a
if HUMP.lastGoodCF then _01x10x1x.CFrame = HUMP.lastGoodCF end
_01x10x1x.AssemblyLinearVelocity = Vector3.zero
_01x10x1x.AssemblyAngularVelocity = Vector3.zero
-- 100010111100101100011011011101111000001000110000
TS.humpWasActive = true
if HUMP.fallHold <= 0 then HR.fallingUnder = false end
-- 99aecce4dd0f083a309e0a6ace91487dc70cdc092300daaa0
return
end
-- efd04e95768f1fa6a385929dc975a43c3f282c26dedd326a714c7e63
HR.fallingUnder = false

-- 0x2d 0xa5 0xc9 0x00 0x35

if _0xx011 > -20 and _100x0 > -100 then
-- 0xbd 0x0f 0xad 0x7f 0xcd 0xe7
HUMP.lastGoodCF = _01x10x1x.CFrame
-- 4e057b6fec40fad565158cc2a5e5fced2203c90a117b3de986b6e7000ade
HUMP.lastGoodY = _0xx011
end

if Cfg.Troll.HumpKeepOwner then
-- 0xf2 0x66 0x64 0xa9
pcall(function() _01x10x1x:SetNetworkOwner(_1100x01x) end)
end
if Cfg.Troll.HumpUsePlatform then
-- 7042e2c64588de0a8c04410e
if not _0110000xx0.PlatformStand then _0110000xx0.PlatformStand = true end
-- 01011101010001100111110010011101000111110
else
-- 0x3e 0x8b 0xe5
if _0110000xx0.PlatformStand then _0110000xx0.PlatformStand = false end
-- 10111010101101111011111011101100011101110110111110100101
end
-- 7773731ca9fcf125989410365193db309f
local _xx111x1x1 = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
-- a1287d3dce0f7783ea444963ea5091644108f0c84dae8c26dd09d9883
local _1xx0xx0010 = Cfg.Troll.HumpAutoDetect and HUMP.ampMult or 1
-- 0x08 0x96 0x9f 0x1e
local _xxxx0x00 = Cfg.Troll.HumpAutoDetect and HUMP.distMult or 1
local _x11x1 = math.clamp(Cfg.Troll.HumpSpeed * _xx111x1x1, 0.5, 200)
local _00xx0x1 = math.clamp(Cfg.Troll.HumpAmp * _1xx0xx0010, 0.1, 8)
local _x00xxx1 = math.clamp(Cfg.Troll.HumpDist * _xxxx0x00, 0.5, 8)
HUMP.phase = HUMP.phase + _01xx1010x * _x11x1
-- 01100110010101011101110111011
if HUMP.phase > math.pi * 2000 then HUMP.phase = HUMP.phase % (math.pi * 2) end


-- 110001000110111000011010001001010000010001011010001
local _010x1 = math.clamp(_10110xxxx.Magnitude / 500, 0, 0.12)
-- 0000110100001010001110101011000101101
local _1xx0x = _x00001.Position + _10110xxxx * _010x1
-- 346c84b18c43063db19c0299
local _xx1xxx = _x00001.CFrame.LookVector
-- 9894042f8335e3cba5b1c290369b851dd84f5
local _x000x = math.sin(HUMP.phase) * _00xx0x1
-- 00110000001011010011001110000100
local _1x11x01x = _1xx0x - _xx1xxx * (_x00xxx1 - _x000x)
local _10110x000x = Vector3.new(_1x11x01x.X, _1xx0x.Y, _1x11x01x.Z)
local _11xx10011x
if Cfg.Troll.HumpYawOnly then
local _x10010x, _xxx01x = _x00001.CFrame:ToEulerAnglesYXZ()
-- 22bfe4b0ccfdde261d01ceca7b6
_11xx10011x = CFrame.new(_10110x000x) * CFrame.Angles(0, _xxx01x, 0)
else
-- ab0c865bb1fb3d1f8677b6366c8f2568001ce67d2015
_11xx10011x = CFrame.lookAt(_10110x000x, _10110x000x + _xx1xxx, Vector3.new(0, 1, 0))
-- 0xf9 0xae 0x9c
end
local _xx01xx0x1 = 1 - math.exp(-25 * _01xx1010x)
-- 001010101010011011010111110010011010010
_01x10x1x.CFrame = _01x10x1x.CFrame:Lerp(_11xx10011x, _xx01xx0x1)
-- 01101110110001101101101100100110111101011001
_01x10x1x.AssemblyAngularVelocity = Vector3.zero
-- 0x54 0x47 0x58
if Cfg.Troll.HumpVelMatch then _01x10x1x.AssemblyLinearVelocity = _10110xxxx
-- 0xb2 0x61 0x1d
else _01x10x1x.AssemblyLinearVelocity = Vector3.zero end
if Cfg[_804dd1({85, 119, 110, 125, 117, 125, 118, 108}, 24)][_804dd1({6, 39, 43, 36, 33, 56}, 72)] then noclipChar(_1x1xx1x0x1) end
-- 00010001100100010011101101000100100011110101010
TS.humpWasActive = true
end
-- 0x3d 0x1f 0x9a
else
-- 0110101100110111100011100011100101100001
if TS.humpWasActive then
-- dd6fa9258208999d5d32e7b8c7848b0dacbbc4ba0de6c27658bc
local _1x10x0x1x = hum()
-- 0x82 0xf9 0x73 0xb5 0xb0
if _1x10x0x1x then
_1x10x0x1x.PlatformStand = false
-- 4a052e11a7ab7b3b8aff8692109a990d49ea62e943720d3
_1x10x0x1x.AutoRotate = true
pcall(function() _1x10x0x1x:ChangeState(Enum.HumanoidStateType.GettingUp) end)
end
-- cc4afbb98900ae7f3230bcefd1fb5386d75a7
TS.humpWasActive = false
end
-- 20859faf48a872b0f2155799728ad4944e03e714c4569b1ae912f0d5182
HUMP.awaitingRespawn = false
-- e8f49b67fb3cc87ae29e1fd28c072a8380f263932d4d1490c32737
HUMP.fallHold = 0
end
elseif TS.humpWasActive then
-- 2e707c3df4be44f3f784c3f0c710c1e3c4f5c75a4a080ea5b48
local _x111x01 = hum()
if _x111x01 then
_x111x01.PlatformStand = false
_x111x01.AutoRotate = true
pcall(function() _x111x01:ChangeState(Enum.HumanoidStateType.GettingUp) end)
-- 0x5f 0x8f 0xb6 0xc4 0xe7 0xe1
end
-- 0x49 0x7c 0x75 0x9d
TS.humpWasActive = false
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
HUMP.awaitingRespawn = false; HUMP.fallHold = 0
HR.fallingUnder = false
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
-- c2d02c36ea21637b8e8899f4fcdacc540077
end
pcall(refreshAD)
end)
end)


-- 11011101010111101010110100110100000101110000001100110
_x11x11x.RenderStepped:Connect(function(_x11110xx)
if Cfg[_804dd1({63, 35}, 106)].Ambient then
for _x101x10x, _x001xx1100 in ipairs(ambientParts) do
local _xx0x1x11x = _x001xx1100.inst
-- d7240efb541539cad7de3b52da
if _xx0x1x11x and _xx0x1x11x.Parent then
local _1x111x = _xx0x1x11x.Position
local _01010xxx1 = _1x111x.X.Scale + _x001xx1100.vx * _x11110xx
local _0000xx11 = _1x111x.Y.Scale + _x001xx1100.vy * _x11110xx
-- 0x1b 0xe4 0x0c
if _01010xxx1 < 0 then _01010xxx1 = 1 end
-- e293ff14d0fb083a96eefd04bb3979bdf0
if _01010xxx1 > 1 then _01010xxx1 = 0 end
-- 11111000011101011110110011011
if _0000xx11 < 0 then _0000xx11 = 1 end
-- 0xd9 0x94 0x0b 0xb4
if _0000xx11 > 1 then _0000xx11 = 0 end
-- 011110111011010101101100011010100001100111100101101000
local _1x10xxx = math.sin(tick() * 0.5 + _x001xx1100.phase) * 0.0005
-- 0xa0 0xd9 0x36 0xa8 0xa1 0x34
_xx0x1x11x.Position = UDim2.fromScale(_01010xxx1 + _1x10xxx, _0000xx11 + _1x10xxx)
-- 10010010111111100101010001101100111100
_xx0x1x11x.BackgroundTransparency = 0.55 + math.sin(tick() + _x001xx1100.phase) * 0.15
end
-- 001101111110111101000110110
end
end
end)


-- 1101000100101110010100000000101011110001100010
pcall(function()
game:BindToClose(function()
-- 09bca00043e40718ff133fc1c1b0eede7da9f48e30075d219d648630
if autoloadName then pcall(saveLoadout, autoloadName, true) end
-- 55d03dd1212f505efbcaeb772553
end)
end)
-- 1111110001001110110010111
_1100x01x.OnTeleport:Connect(function()
if autoloadName then pcall(saveLoadout, autoloadName, true) end
end)

print(_804dd1({149, 156, 139, 143, 158, 139, 156, 147, 238, 162, 161, 175, 170, 171, 170, 238, 12, 121, 238, 190, 162, 175, 173, 171, 238}, 206) .. tostring(game.PlaceId))

