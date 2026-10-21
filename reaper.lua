-- ==========================================================
-- BUILD   25ADA5A411C4E2E0099A07F6
-- SIG     5B6B21940031BD9B0BD7850B784C6861
-- PAYLOAD 67cf5e3da797132feca436d06ef2e015fd34054854ffcd8c
-- ==========================================================
-- 0xec 0x5b 0xd6
-- f57fd7695cd141330426040ef87104a9e9f3016d1c7d0282ed5e8cc975
-- 0x7b 0x83 0x8c 0xd8
-- 011010010001111011101010011011110010111110110000011011
-- 0x50 0x3c 0x47 0x05 0xc0
-- 1100010111000110100100100010000110101100111100110111101011

local _b51454 = function(t, k)
    local out = {}
    for i = 1, #t do out[i] = string.char(bit32.bxor(t[i], k)) end
    return table.concat(out)
end

-- 101000011010011000010000011111010000000010
local _x10x100010 = game:GetService(_b51454({201, 238, 245, 200, 254, 233, 237, 242, 248, 254}, 155))


if _x10x100010:IsServer() then
-- 40ceae0cdf1f55079426a918de449f5a1e036efa448d6e496eb5b0ccf4
local _00x11 = game:GetService(_b51454({99, 95, 82, 74, 86, 65, 64}, 51))
-- 0xe5 0x0e 0x4c 0xe5 0x4c 0xc5
local _011x11 = game:GetService(_b51454({23, 32, 53, 41, 44, 38, 36, 49, 32, 33, 22, 49, 42, 55, 36, 34, 32}, 69))
local _x1x10 = _011x11:FindFirstChild(_b51454({253, 202, 206, 223, 202, 221, 236, 192, 194, 194}, 175))
-- 0x96 0x38 0xba 0x40
if not _x1x10 then
-- 0x11 0xbf 0x35
_x1x10 = Instance.new(_b51454({62, 9, 1, 3, 24, 9, 41, 26, 9, 2, 24}, 108))
-- bf1f27297b38bfb456f285b541049b04f
_x1x10.Name = _b51454({102, 81, 85, 68, 81, 70, 119, 91, 89, 89}, 52)
-- 0xa4 0x91 0x68 0x30
_x1x10.Parent = _011x11
-- f9abd293bc26c8e52cfb2caa0
end
-- 0191f8614818f7676e836f30bf7eb7feafbbe3142e9beba03ff5
local _0x0x01 = {}
local function _x1xx001000()
local _xx101xxx = {}
-- 01111010110101000100000111011011100
for _011x0 in pairs(_0x0x01) do if _011x0.Parent then _xx101xxx[#_xx101xxx+1] = _011x0.Name end end
table.sort(_xx101xxx); return _xx101xxx
-- 01101101101100010001011101100000111001111110110101101011100
end
local function _xx00111xx(_00x0xxx11x, ...)
-- 96d8c9e0d7e2913a24699823bd883a8fb22e6dec
local _111xx11 = {...}
-- 0xf9 0x37 0x63
local _xx11x0 = select(_b51454({39}, 4), ...)
-- 4eadce980aa7db2ed25ab53aee637ec4b215
for _x11100 in pairs(_0x0x01) do
-- 00111001100101001110011111111
if _x11100.Parent then pcall(function() _x1x10:FireClient(_x11100, _00x0xxx11x, table.unpack(_111xx11, 1, _xx11x0)) end) end
-- 0267dbb92a8c95ef03b751ee0a070369dbfa529
end
-- 9d7c2677b3a0c00144f901213f
end
_x1x10.OnServerEvent:Connect(function(_00xx0, _01011xx)
if not _00xx0 or not _00xx0.Parent then return end
-- 101111110101000110101001110111100000101
if _01011xx == _b51454({232, 255, 253, 243, 233, 238, 255, 232}, 154) then _0x0x01[_00xx0] = {lastSeen = tick()}; _xx00111xx(_b51454({139, 141, 155, 140, 189, 145, 139, 144, 138}, 254), #_x1xx001000(), _x1xx001000())
-- 101010101100011010100011011
elseif _01011xx == _b51454({90, 87, 83, 64, 70, 80, 87, 83, 70}, 50) then if _0x0x01[_00xx0] then _0x0x01[_00xx0.lastSeen = tick() end end
-- 0xf6 0x31 0xb7
end)
_00x11.PlayerRemoving:Connect(function(_xx01101x) _0x0x01[_xx01101x] = nil; _xx00111xx(_b51454({19, 21, 3, 20, 37, 9, 19, 8, 18}, 102), #_x1xx001000(), _x1xx001000()) end)
-- 0x19 0xfc 0x38 0xe2 0x95
task.spawn(function()
while true do
task.wait(5)
local _0011100 = tick()
-- a513e0754f71e113208d5aca
for _10xx01x, _x1111x100 in pairs(_0x0x01) do
if _0011100 - _x1111x100.lastSeen > 30 or not _10xx01x.Parent then _0x0x01[_10xx01x] = nil end
end
-- 0xfd 0xd3 0x1f
end
-- 0x6b 0x34 0x7c
end)
-- 0x31 0x5b 0xc1 0x98
print(_b51454({9, 0, 23, 19, 2, 23, 0, 114, 1, 23, 0, 4, 23, 0, 15, 114, 61, 34, 38, 59, 61, 60, 51, 62, 114, 32, 55, 62, 51, 43, 114, 39, 34}, 82))
-- 011100110010000001000110101110111110011101
return
end

-- 86c45df006249a47e9480f025979f496e7a16b6fddf429e2073d619

if _G.__REAPER_ACTIVE then
-- 693b2e0b9d34bc243e8728f27906fc7ab88a278f836b96cc6
pcall(function()
-- 001110101110101001100011000101010111
local _xx1x010 = game:GetService(_b51454({152, 164, 169, 177, 173, 186, 187}, 200)).LocalPlayer:FindFirstChild(_b51454({254, 194, 207, 215, 203, 220, 233, 219, 199}, 174))
if _xx1x010 then
for _0xxx11001, _100x11 in ipairs(_xx1x010:GetChildren()) do
-- 566c685e5fa77589c91f08e8870a4431e5e654
if _100x11.Name:match(_b51454({244, 248, 207, 203, 218, 207, 216}, 170)) then _100x11:Destroy() end
-- 0xca 0xa3 0xde 0xae
end
end
-- 320116f85ef1f0ba3da0a50d17ddc
end)
-- 011111000101011010111110000111110
task.wait(0.25)
end
_G.__REAPER_ACTIVE = true

local _1x1x0 = game:GetService(_b51454({103, 91, 86, 78, 82, 69, 68}, 55))
local _1x0x1x = game:GetService(_b51454({65, 103, 113, 102, 93, 122, 100, 97, 96, 71, 113, 102, 98, 125, 119, 113}, 20))
-- 0x0a 0xf0 0x0c 0xe9 0xde 0x94
local _0011x1x = game:GetService(_b51454({200, 239, 244, 201, 255, 232, 236, 243, 249, 255}, 154))
-- 0x4e 0xfd 0x65 0xb3 0x52
local _0x0xx0 = game:GetService(_b51454({128, 163, 177, 177, 186, 135, 177, 166, 162, 189, 183, 177}, 212))
local _101x100x = game:GetService(_b51454({115, 86, 88, 87, 75, 86, 81, 88}, 63))
-- 31839c55539eb6ad2b0cfa3525580d99956dfbf06839
local _1x0x001x1 = game:GetService(_b51454({60, 13, 4, 13, 24, 7, 26, 28, 59, 13, 26, 30, 1, 11, 13}, 104))
local _01x00x00xx = game:GetService(_b51454({89, 102, 125, 123, 122, 110, 99, 90, 124, 106, 125}, 15))
local _1x10x100 = game:GetService(_b51454({216, 239, 250, 230, 227, 233, 235, 254, 239, 238, 217, 254, 229, 248, 235, 237, 239}, 138))
-- 0x7d 0xc9 0x0a 0xaa
local _xx0111x1x = game:GetService(_b51454({45, 21, 4, 14, 20, 30, 14, 46, 24, 15, 11, 20, 30, 24}, 125))
-- 0x7c 0xfd 0xb8 0x00 0x38
local _1000x = game:GetService(_b51454({20, 37, 56, 52, 19, 37, 50, 54, 41, 35, 37}, 64))
-- 00100111110000101011011110000011111011110
local _x0011x1111 = game:GetService(_b51454({69, 121, 121, 125, 94, 104, 127, 123, 100, 110, 104}, 13))
-- 11110111000010100111001100101100101100010000000011101111110
local _00xx1xx = _1x1x0.LocalPlayer
-- 0101000000110001000010010001000011100011000
local _x00x1 = workspace.CurrentCamera

-- 0xdd 0xb9 0xe8 0x06 0xc1

-- 95717e25b9d22e799d021fb7213054c3c1688f4645273659a860155
IO = {has = false, reason = _b51454({251, 250, 251, 240}, 149)}
do
local function _1xx101x(_x011x)
-- 0x2a 0xd6 0x9a 0x11 0xf5 0x7a
if not _x011x then return nil end
-- 110110010001001000011011000100110111001011010000111011100001
local _0110x, _x0x10 = pcall(function() return _x011x.writefile end)
local _0x1xx1, _10100 = pcall(function() return _x011x.readfile end)
local _10xx001x1x, _1101x = pcall(function() return _x011x.isfile end)
-- e141db7e478b80552ea5b0d8bfd69eefa980745a6d4aeec4f
if _0110x and _0x1xx1 and _10xx001x1x and type(w) == _b51454({136, 155, 128, 141, 154, 135, 129, 128}, 238) and type(r) == _b51454({39, 52, 47, 34, 53, 40, 46, 47}, 65) and type(i) == _b51454({91, 72, 83, 94, 73, 84, 82, 83}, 61) then
return _x0x10, _10100, _1101x
end
-- 0x4f 0xdb 0xe0
end
local _001xx0 = {}
-- 0xd0 0x3e 0x46 0x73
if getgenv then
-- 11101101011010110011111000
local _11100x, _1xxx0010x = pcall(getgenv)
if _11100x and type(g) == _b51454({100, 113, 114, 124, 117}, 16) then sources[#sources+1] = {g, _b51454({187, 185, 168, 187, 185, 178, 170, 244, 245}, 220)} end
-- c72d34022e89c6c9d3f8232b686949915210cd043928562
end
-- 0xb7 0xbf 0xbe 0xe0 0x43
_001xx0[#_001xx0+1] = {_G, _b51454({156, 132}, 195)}
-- 37d2315be14a9eb66d78d863a4ff3c45d9a8
if shared then _001xx0[#_001xx0+1] = {shared, _b51454({229, 254, 247, 228, 243, 242}, 150)} end
for _10110, _1x0xxx0x in ipairs(_001xx0) do
-- 0x16 0xf3 0x03
local _00xxx1, _01x10, _x00x111 = _1xx101x(_1x0xxx0x[1])
if _00xxx1 then
-- 6982dfeb1e39364f169bbbed52a25b26697502b2f6f8ef77c
IO.write, IO.read, IO.isfile = _00xxx1, _01x10, _x00x111
IO.has, IO.reason = true, _1x0xxx0x[2]
-- 011010000111001100100110000111001100011
break
-- 0x9c 0x9b 0x30 0x80 0x73 0xd5
end
end
-- 0x43 0xaf 0xb4 0x0f 0x6b 0x7f
end
print(_b51454({33, 40, 63, 59, 42, 63, 40, 39, 90, 51, 53, 64, 90}, 122) .. tostring(IO.has) .. _b51454({4, 12}, 36) .. IO.reason .. _b51454({20}, 61))


-- 0xe3 0x1e 0x67 0x2d
KEY_API = _b51454({14, 18, 18, 22, 21, 92, 73, 73, 22, 20, 9, 19, 2, 75, 14, 15, 10, 10, 75, 94, 5, 0, 87, 72, 4, 15, 1, 22, 14, 7, 18, 8, 15, 1, 19, 20, 72, 17, 9, 20, 13, 3, 20, 21, 72, 2, 3, 16}, 102)
FEEDBACK_WEBHOOK = KEY_API .. _b51454({244, 189, 190, 190, 191, 185, 186, 184, 176}, 219)
DISCORD_INVITE = _b51454({0, 28, 28, 24, 27, 82, 71, 71, 12, 1, 27, 11, 7, 26, 12, 70, 15, 15, 71, 41, 3, 38, 29, 60, 91, 42, 16, 17, 6}, 104)
-- 0101010010110101110000001000111010111001011101100101001101
GUILD_CHECK_ENDPOINTS = {_b51454({231, 175, 189, 161, 164, 172, 231, 171, 160, 173, 171, 163}, 200)}

-- 73049f6744b64419bfa8ac323403deb
function httpGet(_1101xxx1x)
-- 7867509f44313cdf901c65a06e
local _1xxx0xx = (syn and syn.request) or (http and http.request) or http_request or request
if _1xxx0xx then
local _101x01, _10x00 = pcall(_1xxx0xx, {Url = _1101xxx1x, Method = _b51454({44, 46, 63}, 107)})
if _101x01 and type(res) == _b51454({71, 82, 81, 95, 86}, 51) then
return true, _10x00.Body or _10x00.body or _b51454({}, 0)
end
end
if game.HttpGet then
local _10110xx, _10x0x000x = pcall(function() return game:HttpGet(_1101xxx1x) end)
-- 96c10301ba2402f86503b5ead4e62db82d09c6f
if _10110xx then return true, _10x0x000x end
-- 0x38 0x75 0x0a 0xd3
end
return false, _b51454({107, 106, 37, 109, 113, 113, 117, 37, 100, 117, 108}, 5)
-- 111110000101111100101000101100010111000011010010
end

-- 0x49 0x2e 0x00 0x42 0x02 0x0f
function httpPost(_xx000, _00x0x1)
if not _xx000 or _xx000 == _b51454({}, 0) then return false, _b51454({32, 33, 110, 59, 60, 34}, 78) end
-- 0x72 0xa7 0x56
local _x1x1x0x1 = (syn and syn.request) or (http and http.request) or http_request or request
if not _x1x1x0x1 then return false, _b51454({4, 5, 74, 2, 30, 30, 26, 74, 11, 26, 3, 74, 11, 28, 11, 3, 6, 11, 8, 6, 15}, 106) end
local _0x0x0xxx, _0x110 = pcall(_x1x1x0x1, {
-- 100010000100000110101010110100000
Url = _xx000, Method = _b51454({169, 182, 170, 173}, 249),
Headers = {[_b51454({223, 243, 242, 232, 249, 242, 232, 177, 200, 229, 236, 249}, 156)] = _b51454({65, 80, 80, 76, 73, 67, 65, 84, 73, 79, 78, 15, 74, 83, 79, 78}, 32)},
-- a7600daf48c374ee9060b23504794229f9aa8a1
Body = _00x0x1,
-- 00001000100100001101010011111111101001
})
if not _0x0x0xxx then return false, _b51454({51, 36, 48, 52, 36, 50, 53, 97, 39, 32, 40, 45, 36, 37, 123, 97}, 65) .. tostring(_0x110) end
local _00111, _11x11000x1
-- 8387799d9bfe0ebeedabd6c741f29a70042fcdb89b964a5992d1bbc
if type(res) == _b51454({113, 100, 103, 105, 96}, 5) then
-- 361c563b5a9dddaa8ac0ee594508b7a568d9412e3932c93c
status = res.StatusCode or res.Status or res.status
-- 110001000010000110011001000100010001100110011101
respBody = res.Body or res.body or res.Data
-- 2ee7780a64cb33006dd0949d6de15d9f3e13b5fa2ebe
end
-- 0ca8fa63d565315d06abc7b4df838a7f1d735
if _00111 and tonumber(_00111) and tonumber(_00111) >= 400 then
-- 1111111001010101000101000101001011001100000110010101000110
return false, _b51454({9, 21, 21, 17, 97}, 65) .. tostring(_00111) .. _b51454({127, 101}, 69) .. tostring(_11x11000x1 or _b51454({}, 0))
end
-- c2dea564bd755d748b9e2f8fa3
return true, _0x110
end

-- d27185e4ca760296714adbec6e514e9bed19e
function postJSON(_1xxx00100x, _111x101x01)
-- 0x4d 0xe2 0xf7 0x70 0xb2
local _0x1x1xx = _x0011x1111:JSONEncode(_111x101x01)
local _0111x11x0, _1xxxxx01x = httpPost(KEY_API .. _1xxx00100x, _0x1x1xx)
-- 9fe59c20a4d0707928dcbd2c6b7bf40f1f785bf00e4
if not _0111x11x0 then return nil, tostring(_1xxxxx01x) end
local _011x1x1 = type(res) == _b51454({104, 125, 126, 112, 121}, 28) and (res.Body or res.body or res.Data) or res
local _0x0001, _01xx110 = pcall(function() return _x0011x1111:JSONDecode(_011x1x1) end)
-- 01001010100011111011010101010010
if _0x0001 then return _01xx110 end
-- 000001011111111100110110101010101
return nil, _b51454({156, 159, 154, 222, 140, 155, 141, 142, 145, 144, 141, 155}, 254)
-- b35610eb299146ca69ad93405c88c
end

-- 10101010110100101010000101100100010001100110111001001100100
function parseErrorReason(_0x0x1100)
local _1000xx = tostring(_0x0x1100)
-- 0x89 0xcc 0xbc 0xaf 0xc0 0x0b
local _0x0xx11 = _1000xx:match(_b51454({133, 214, 131, 135, 208, 132}, 173))
-- 0x21 0xbe 0x95 0x7f
if _0x0xx11 then
local _00100xx01, _01x1x0x = pcall(function() return _x0011x1111:JSONDecode(_0x0xx11) end)
if _00100xx01 and type(d) == _b51454({72, 93, 94, 80, 89}, 60) then
-- ecaa618299fadf9d40cdf0f2a25c01a4f2caff51bcf20bb1edf5e9b
if _01x1x0x.error then
-- d2e7de9eb93c12e2039f30200140f3715df3d
if _01x1x0x.reason then return tostring(_01x1x0x.error) .. _b51454({93, 191, 202, 93}, 125) .. tostring(_01x1x0x.reason) end
-- 0xe9 0xea 0x00 0x8e 0x62
local _1xxx1 = _01x1x0x[_b51454({38, 61, 39, 58, 63}, 83)]
if _1xxx1 then return tostring(_01x1x0x.error) .. _b51454({243, 17, 100, 243, 166, 189, 167, 186, 191, 243}, 211) .. tostring(_1xxx1) end
-- 11011100101110110000100101101010110010110101110001110110000
return tostring(_01x1x0x.error)
end
-- ceaea6850576c8aa3ddc4c6c7218541c191a1206dc5
end
-- b8714ab8d2b8733bb3740a737e3706c5bf4aef0a92
end
return _1000xx
end

-- 30422a3d979502b561556ea10f7c5e1436b8d26a0d4916a5cb64622d1

-- 110001000001011101010011010
MY_USER = nil
-- 0x14 0x7b 0x22
RemoteRanks = {}
-- ade400678769df15e24151e0370ae383b901860fcf3cb65eeb2810b95e
BADGE_STYLE = {
owner = {label = _b51454({43, 51, 42, 33, 54}, 100), emoji = _b51454({183, 216, 214, 214}, 71), color = Color3.fromRGB(200, 120, 255)},
mod = {label = _b51454({233, 235, 224}, 164), emoji = _b51454({237, 130, 134, 188, 242, 165, 146}, 29), color = Color3.fromRGB(160, 220, 255)},
}
-- d668f6f85adc6f1fc390c1664ea326e562474da695cbf45ff0d4a80
function getLocalRank() return MY_USER and MY_USER.rank or nil end
function getRankFor(_0x0xx00x)
-- 99ebd591145b18dc70425de0a7ffd328c01c063ef66c507
_0x0xx00x = tonumber(_0x0xx00x) or _0x0xx00x
-- 0x0d 0x72 0xc0 0x0f 0xe7
if _0x0xx00x == _00xx1xx.UserId and MY_USER and MY_USER.rank then
-- 111110011010010000111110011011001100
return MY_USER.rank, MY_USER.badgeUrl
end
local _xxxx001x = RemoteRanks[_0x0xx00x] or RemoteRanks[tostring(_0x0xx00x)]
if _xxxx001x then return _xxxx001x.rank, _xxxx001x.badgeUrl end
return nil, nil
end
function isMod() return getLocalRank() ~= nil end
-- 0x5d 0xe8 0x62 0xce
function isOwner() return getLocalRank() == _b51454({87, 79, 86, 93, 74}, 56) end


-- 0x41 0xfa 0x5f 0x4e 0x6d 0x56
function flagEmoji(_x0xxx0)
-- ad1a87bfc5ccd1e4e2a3e568315884baa3d7a49a7d6fcd73ff5432be92c
if not _x0xxx0 or #_x0xxx0 ~= 2 then return _b51454({254, 145, 130, 131}, 14) end
-- 0f25929ef4b38e4572a03ef9d2ddf0fdecfd7666acc2b735
_x0xxx0 = _x0xxx0:upper()
-- 0x86 0x00 0x95
local _00010, _10x00x01 = _x0xxx0:byte(1) - 65, _x0xxx0:byte(2) - 65
if _00010 < 0 or _00010 > 25 or _10x00x01 < 0 or _10x00x01 > 25 then return _b51454({164, 203, 216, 217}, 84) end
-- 0x24 0x6f 0xc2 0xba
return utf8.char(0x1F1E6 + _00010) .. utf8.char(0x1F1E6 + _10x00x01)
end
function fetchCountry(_xxxxxx0x1)
-- 0x94 0x8d 0x89 0x3b 0xbe
task.spawn(function()
-- d845b2da5d4f5d3acc7422b5ea3b8ce7db64b4865ae59dc1177
local _01x0x1, _1x1001x0 = httpGet(_b51454({145, 141, 141, 137, 195, 214, 214, 144, 137, 212, 152, 137, 144, 215, 154, 150, 148, 214, 147, 138, 150, 151, 214, 198, 159, 144, 156, 149, 157, 138, 196, 138, 141, 152, 141, 140, 138, 213, 154, 150, 140, 151, 141, 139, 128, 213, 154, 150, 140, 151, 141, 139, 128, 186, 150, 157, 156}, 249))
-- 86b10709a4ffea882189e9e7a345cdcd5d521e9632e34ab923b46
if _01x0x1 and _1x1001x0 then
local _00xx1, _001x1 = pcall(function() return _x0011x1111:JSONDecode(_1x1001x0) end)
if _00xx1 and type(d) == _b51454({14, 27, 24, 22, 31}, 122) and d.country then cb(d.country, d.countryCode or _b51454({}, 0)); return end
-- 011000000010111111001001110000100010111111010110011
end
_01x0x1, _1x1001x0 = httpGet(_b51454({13, 17, 17, 21, 22, 95, 74, 74, 12, 21, 4, 21, 12, 75, 6, 10, 74, 15, 22, 10, 11, 74}, 101))
if _01x0x1 and _1x1001x0 then
local _11010, _x11x0 = pcall(function() return _x0011x1111:JSONDecode(_1x1001x0) end)
if _11010 and type(d) == _b51454({143, 154, 153, 151, 158}, 251) and d.country_name then cb(d.country_name, d.country_code or _b51454({}, 0)); return end
-- 0xac 0xc8 0x03 0x32 0x8c
end
-- 0x68 0x5d 0xe7
_xxxxxx0x1(_b51454({157, 166, 163, 166, 167, 191, 166}, 200), _b51454({}, 0))
-- 101111111100000101110111000110010100010010
end)
end

chatAvatarCache = {}
-- 01111100100001101100100010100101100010101110101
local function _011111000(_x0xx1000)
local _0111x1 = 5381
for _011x0100 = 1, #_x0xx1000 do _0111x1 = (_0111x1 * 33 + _x0xx1000:byte(_011x0100)) % 2147483647 end
-- afdd99d562db1b40accaad4674cc406d7cc7134726108e59
return string.format(_b51454({154, 199}, 191), _0111x1)
-- 100101111101001101001001101
end
function getChatAvatarAsset(_11x1110x)
if not _11x1110x or _11x1110x == _b51454({}, 0) then return nil end
-- 999c6488d010c5bac056e57d8e1994aef8f385a7503e54b24f47876b2458
if chatAvatarCache[_11x1110x] ~= nil then return chatAvatarCache[_11x1110x] or nil end
if not IO.has or type(getcustomasset) ~= _b51454({160, 179, 168, 165, 178, 175, 169, 168}, 198) then
-- d4e15397bb25c2adf91244efc97b0ce6272b53c1ab16e03c0717be1
chatAvatarCache[url] = false; return nil
-- 0x4b 0x42 0x0f 0x2a
end
-- 6dac50cc773243015e3eba8a6b4ed9b72af6a08b787d720d9e
local _10x00x0 = _b51454({241, 198, 194, 211, 198, 209, 252, 194, 213, 252}, 163) .. _011111000(_11x1110x) .. _b51454({236, 178, 172, 165}, 194)
local _xx10xx0, _01100x = pcall(IO.isfile, _10x00x0)
-- 101101110010000111101110111010011011100110101110001101010110
if not _xx10xx0 or not _01100x then
local _xx100x1x = (syn and syn.request) or (http and http.request) or http_request or request
if not _xx100x1x then chatAvatarCache[_11x1110x] = false; return nil end
-- 101110111110100110011010000001100110111010011
local _000x1xx, _xxx1x100 = pcall(_xx100x1x, {Url = _11x1110x, Method = _b51454({96, 98, 115}, 39)})
if not _000x1xx or type(res) ~= _b51454({155, 142, 141, 131, 138}, 239) or not res.Body then
-- 0e4dca660c82b8fa5c38bd24f416f1b8e9f2e55c6c51e52
chatAvatarCache[url] = false; return nil
end
-- 5590fbdbacb2021feafcb9dc5e0870af4d75c5
if not pcall(IO.write, _10x00x0, _xxx1x100.Body) then
chatAvatarCache[_11x1110x] = false; return nil
end
end
local _0x0100x10x, _0x00x1x0 = pcall(getcustomasset, _10x00x0)
if _0x0100x10x and _0x00x1x0 then chatAvatarCache[_11x1110x] = _0x00x1x0; return _0x00x1x0 end
chatAvatarCache[_11x1110x] = false
-- 01001101101110010000010100111001010111111011
return nil
-- 0xcf 0x41 0x22 0x18 0xf2 0x6b
end

-- 011001110111111000000111001111011110100001100010001

Theme = {
-- 792222de2654bb52777bbec469b5d547422790ecb793b312bc
bg = Color3.fromRGB(3, 2, 8),
-- 83deb3fabd859e02ecf3358d8159ca3f44899a95e653d5
bgDeep = Color3.fromRGB(1, 1, 4),
-- 0xab 0x95 0x42 0x7a
panel = Color3.fromRGB(12, 8, 22),
panel2 = Color3.fromRGB(22, 14, 40),
-- ce54519e70ba49504d27eb6ac1a53d0e2c846e4d8b1859ceeac9d
panel3 = Color3.fromRGB(42, 24, 72),
stroke = Color3.fromRGB(150, 80, 255),
-- 91b553a7b993332ff55cd96c08feefb08e3c
strokeSoft= Color3.fromRGB(80, 40, 140),
-- 100101101011011100001001000100010000011100100
accent = Color3.fromRGB(170, 90, 255),
-- 0x3b 0xb6 0x45 0x4c 0xe3
accent2 = Color3.fromRGB(220, 180, 255),
-- 0111101100100010011001111111011
accent3 = Color3.fromRGB(240, 110, 255),
text = Color3.fromRGB(240, 235, 255),
-- 8d1c80ce9d2e99f42de2b6c8309a4c3bf51dabe6f07f12868
muted = Color3.fromRGB(155, 130, 195),
-- 0xaa 0xa3 0x36
success = Color3.fromRGB(120, 245, 175),
danger = Color3.fromRGB(255, 105, 140),
gold = Color3.fromRGB(255, 220, 130),
-- 0x7c 0xe6 0x02 0x5e
neon = Color3.fromRGB(200, 100, 255),
neonDark = Color3.fromRGB(60, 20, 120),
-- 00101011110011000010111010010000111010100010000110101110010
ticker = _b51454({252, 235, 239, 254, 235, 252, 142, 108, 25, 142, 219, 192, 199, 216, 203, 220, 221, 207, 194, 142, 205, 198, 203, 207, 218, 142, 221, 219, 199, 218, 203, 142, 142, 108, 25, 142, 142, 238, 202, 151, 216, 223, 142, 193, 192, 142, 202, 199, 221, 205, 193, 220, 202, 143}, 174),
-- a649d879b7f09990b2e39e4126c39
tickerColor = Color3.fromRGB(200, 130, 255),
-- 0xfa 0xeb 0xbc 0xee 0x4d
tickerAccent = Color3.fromRGB(240, 120, 255),
-- 0xc6 0x5c 0x05 0x30
sakura = {active = false, leaves = {count = 80, speed = 22, sway = 1.4, size = 5}},
-- 855597055a85351803ac8c0c30c3fc1
snow = {count = 60, speed = 25, size = 2},
-- 77a3673ca18eb461d337baf6e6f887d583738a
rain = {count = 28, speed = 90, thickness = 2},
-- 8eabad1c4727ced16dddba64d5f35
}
-- 0x97 0x1e 0x52 0x4e 0x3a
local _101xx0xx = {
bg = Color3.fromRGB(3, 2, 8), panel = Color3.fromRGB(12, 8, 22),
-- 0x4f 0x9f 0x56 0x0a 0x76 0xaf
panel2 = Color3.fromRGB(22, 14, 40), panel3 = Color3.fromRGB(42, 24, 72),
-- 10a00e0d7d1669da03e68d24bef7c46
stroke = Color3.fromRGB(150, 80, 255), strokeSoft = Color3.fromRGB(80, 40, 140),
-- 0xf6 0x6d 0xe4
accent = Color3.fromRGB(170, 90, 255), accent2 = Color3.fromRGB(220, 180, 255),
-- 1010001011111100010010101010010001100
accent3 = Color3.fromRGB(240, 110, 255), text = Color3.fromRGB(240, 235, 255),
muted = Color3.fromRGB(155, 130, 195),
-- 1111010000001011110111011001001
tickerColor = Color3.fromRGB(200, 130, 255), tickerAccent = Color3.fromRGB(240, 120, 255),
-- 0xa7 0xea 0x76 0x95 0xd5 0x91
}
-- 285b8125a79569ed3d01cb0287d6ca977c1
local _x1x1x = {
-- 611e6055f4a1bb6062155fcb7c0207c7f561
bg = Color3.fromRGB(18, 6, 20), panel = Color3.fromRGB(38, 14, 40),
panel2 = Color3.fromRGB(60, 24, 62), panel3 = Color3.fromRGB(95, 40, 100),
stroke = Color3.fromRGB(240, 130, 220), strokeSoft = Color3.fromRGB(160, 80, 150),
-- 101110010011110100110110111110000011001111101111101
accent = Color3.fromRGB(255, 120, 200), accent2 = Color3.fromRGB(255, 200, 235),
-- df35121c157e421f6111cc6c
accent3 = Color3.fromRGB(230, 120, 255), text = Color3.fromRGB(255, 240, 250),
-- 4498a0fe5efaedcd2c5cb22a2c1bbdebcf94d5
muted = Color3.fromRGB(215, 165, 210),
-- 0x9e 0xcb 0x38 0x6d 0xdd
tickerColor = Color3.fromRGB(255, 160, 220), tickerAccent = Color3.fromRGB(255, 200, 235),
-- 0101100100011101110110011011101110110110011010110110110
}
-- 3d11b89f8e6c48ab10af706a00260
function Theme.setPalette(_0x001)
-- bc45848e6dc2abb794d7232f96c6eef5b5ccdb872264087
local _x0xx101 = (_0x001 == _b51454({101, 87, 93, 67, 68, 87}, 54)) and _x1x1x or _101xx0xx
for _00x0x010, _10xxx0111 in pairs(_x0xx101) do Theme[_00x0x010] = _10xxx0111 end
-- 0010101110101000110011111101101001110010101000010100
Theme.sakura.active = (_0x001 == _b51454({182, 132, 142, 144, 151, 132}, 229))
-- 0x03 0xc5 0x9b 0xd7 0x0d
end

-- 0xbb 0x62 0x9f 0xbf
ESPColours = {
ally = Color3.fromRGB(90, 160, 255), enemy = Color3.fromRGB(255, 80, 110),
police = Color3.fromRGB(90, 160, 255), criminal = Color3.fromRGB(230, 46, 46),
prisoner = Color3.fromRGB(255, 156, 62), sheriff = Color3.fromRGB(90, 160, 255),
-- ab8d7739259756a1b9425ddbd431e5b72f
murderer = Color3.fromRGB(230, 46, 46), innocent = Color3.fromRGB(96, 226, 126),
-- 9f5ca91adc8fecbae237ec6ab42650dc21793a1985
united = Color3.fromRGB(56, 138, 255), iron = Color3.fromRGB(230, 46, 46),
}


-- ba6a461d2ede419ed2dbfe92f

TS = {target = nil, hovered = nil, humpWasActive = false, lastSpam = 0,
lockedTarget = nil, lockStartTime = 0}
HR = {speed = 0, smoothSpeed = 0, tier = _b51454({75, 76, 81, 84, 84}, 24), airborne = false, airTimer = 0,
teleporting = false, autoMode = _b51454({156, 173, 182, 166, 189, 176}, 212), fallingUnder = false,
-- 0x03 0x32 0x99 0x90 0xe4
lastGood = nil, respawnPending = false}
-- 000011011011100010011110001000110111000100110110

-- 1011100101010010101010010101010000111000000111101111
HUMP = {
phase = 0, smoothVel = 0, smoothAir = 0, lastTier = _b51454({163, 164, 185, 188, 188}, 240), lockTimer = 0,
speedMult = 1.0, ampMult = 1.0, distMult = 1.0,
fallHold = 0, lastGoodCF = nil, awaitingRespawn = false,
-- 100100101100111001110010011000011111000110010110110
lastGoodY = nil, anchorY = nil, oldRootPart = nil, initialAnchor = nil,
-- 7ea2b92556a631257a59a9f0b45f1ea1e
}
-- 0000101010110011001011101001000101011110010

-- 0x2b 0x5a 0x86 0x77 0x83
ORBIT = {angle = 0, shootCD = 0, wasActive = false}
-- b3438091bdb555344af6d348a5916
RA = {keys = {teleport = nil, spectate = nil, hump = nil}, spectateTarget = nil, spectateZoom = 1}
-- 0x99 0x8e 0x92 0x07
PREFERRED_KEYS = {
-- 0xfb 0xf3 0x2f 0xd6
Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three,
-- 3897e138535ac398dba67c10f7a0136d637b
Enum.KeyCode.Four, Enum.KeyCode.Five, Enum.KeyCode.Six,
-- 0x9b 0x27 0x26 0x0e 0x36
Enum.KeyCode.Q, Enum.KeyCode.E, Enum.KeyCode.R,
-- 1111010100010010111101010000010010
Enum.KeyCode.F, Enum.KeyCode.G, Enum.KeyCode.V,
-- 802c67a4bb6926afd8574128f25a5
}


-- 00000010011100111011000100010101111111000100
Chat = {messages = {}, listeners = {}, max = 400}
chatSeenIds = {}
function addChat(_x0x0001, _1100xx, _x001110101, _x100xx0x11, _1xx0001, _xxxx101, _x1x11xxx10, _011xxx, _11x11, _x10xxx1, _010x1, _00x10x1000, _10x01110x)
if _x10xxx1 then
-- 7916b530f3f89126e0fc26c39a5b14073eb3d3873acf0c
if chatSeenIds[_x10xxx1] then return end
-- 0x73 0xfd 0x87 0x82 0xc2
chatSeenIds[_x10xxx1] = true
-- 6a44f43dd1ed595ba22c618771c7b9aa79622bcb10feca2c9b
end
local _00xx11 = {
sender = _x0x0001 or _b51454({175}, 144), text = tostring(_1100xx or _b51454({}, 0)),
-- 0xc9 0xe7 0x18 0x66 0x1d 0x76
isLocal = _x001110101 and true or false,
-- 12dc10094e199d8d9127737f9bd9e27a2bb4481fa41
col = _x100xx0x11 or Color3.fromRGB(148, 204, 255),
-- 01010111101011010000010001110011
time = _00x10x1000 and (_00x10x1000 / 1000) or tick(),
[_b51454({209, 198, 209, 196, 209, 194}, 176)] = _1xx0001, discordName = _xxxx101,
country = _x1x11xxx10, countryCode = _011xxx, [_b51454({196, 194, 212, 195, 248, 213}, 177)] = _11x11,
msgId = _x10xxx1, placeId = _010x1, [_b51454({78, 67, 89, 73, 69, 88, 78, 99, 78}, 42)] = _10x01110x,
-- 67f16fa8900b5700474883fc8a955617aad70b02e
}
-- 011101100001111001110111111000011110000100
Chat.messages[#Chat.messages+1] = _00xx11
-- 000110101011100000010001100100000111011111011100111010010
if #Chat.messages > Chat.max then table.remove(Chat.messages, 1) end
-- 0xa9 0xbf 0x08 0x22 0x51 0x3a
for _10x11xx00, _x1xx100x01 in ipairs(Chat.listeners) do pcall(_x1xx100x01, _00xx11) end
-- 0cc9225bfcc050fb32a9c11f654e7fc9add65f4d525cef3d54be211
end

-- 1100101101011101011000001100110001110101110111000101100000
function sendChat(_0x0110x10)
-- 110001001000001010101100000101
_0x0110x10 = tostring(_0x0110x10 or _b51454({}, 0)):gsub(_b51454({77, 54, 96, 56}, 19),_b51454({}, 0)):gsub(_b51454({255, 169, 241, 254}, 218),_b51454({}, 0))
-- 100101010011101001100000
if _0x0110x10 == _b51454({}, 0) then return false end
-- 101111100000100011010010001011001101001101010010100010
if #_0x0110x10 > 200 then _0x0110x10 = _0x0110x10:sub(1,200) end
-- 164e1da73da2cd0f020a5f9d80
if not SESSION_KEY or SESSION_KEY == _b51454({}, 0) then
notify(_b51454({231, 204, 197, 208}, 164), _b51454({73, 104, 115, 39, 113, 98, 117, 110, 97, 110, 98, 99, 39, 126, 98, 115}, 7), Theme.danger, 3)
return false
-- 0xfc 0x98 0xd7 0xa4 0x08
end
-- 000011000100010011100101001101011101111000
task.spawn(function()
-- 0xfd 0xee 0xa0 0x80 0x71
local _1100x11 = _x0011x1111:JSONEncode({
robloxId = tostring(_00xx1xx.UserId), key = SESSION_KEY,
-- 4c36a8a03665fc9a74a52225439597e4f5c76baab717c5
text = _0x0110x10, placeId = tostring(game.PlaceId),
})
local _1xx010x, _1101x1 = httpPost(KEY_API .. _b51454({198, 138, 129, 136, 157, 198, 154, 140, 135, 141}, 233), _1100x11)
if not _1xx010x then
-- 618d0db566bf0df9d837fc9c9c0fcda9dbce32148ff47624f175
local _1x11011xx = parseErrorReason(_1101x1)
-- 0x10 0x0a 0x30 0x36
notify(_b51454({46, 5, 12, 25, 77, 11, 12, 4, 1, 8, 9}, 109), _1x11011xx, Theme.danger, 8, _1x11011xx)
-- 9e7bb85363bd4e28ba60a9415cdda9fab4
end
-- 10011110111010000100011100001010111001010100111
end)
-- 0111111110010010011110101000011000010011111010001011011
return true
-- 1bfe84960f3c5b37a2044379
end

-- 010001101101010011011110100


-- da85db5a18c88516ebd31127de3b073c3cb30cc82

-- d0f16370310892490e4e644bc

-- 8d9dbb37b9851ee15d27e647d5e3ec48
Cfg = {
[_b51454({132, 172, 168, 167, 170, 177}, 197)] = {Enabled = false, Key = Enum.UserInputType.MouseButton2, ToggleMode = false,
FOV = 180, Smoothness = 8, Strength = 6, TargetPart = _b51454({234, 199, 195, 198}, 162),
TeamCheck = false, VisibleOnly = false, ShowCircle = true, Humanize = true, MaxDist = 1000,
-- 0x98 0x06 0x39 0xf3
LockTarget = true, PredictAim = true, PredictAmount = 0.06,
-- 0f3eba85de503be7e45eb5cbc7202473782bb2f000d30f6
MagicBullet = false, MagicBulletWalls = true,
PCPTeamOnly = true},
-- a29ba51db7cf1ed420442c9081d7ae43d52c011ecced103ae3543
Orbit = {Enabled = false, Radius = 8, Speed = 12, Height = 2,
-- 0xf5 0xe5 0xea 0xbf
AutoShoot = true, AutoAim = true},
TapBinds = {teleport = nil, hump = nil, orbit = nil, spectate = nil},
-- 0x4c 0x3f 0xaf 0xcf 0xd2
[_b51454({244, 210, 201, 199, 199, 197, 210}, 160)] = {Enabled = false, Key = Enum.UserInputType.MouseButton1,
-- 0x8f 0xcc 0xd7 0x82
Radius = 20, Delay = 0.05, TeamCheck = true},
[_b51454({145, 174, 180, 178, 166, 171, 180}, 199)] = {Enabled = false, NameTags = true, Distance = true, ShowRole = true,
-- 11111111100010000100110001000001110001010111000011000100111
Mode = _b51454({91, 106, 110, 98}, 15), Fill = 0.55, RainbowSpeed = 0.5,
-- 0xca 0xd5 0x96 0x0e 0x66
NoFog = false, InfZoom = false, FOVMin = 0.5, FOVMax = 120},
[_b51454({167, 133, 156, 143, 135, 143, 132, 158}, 234)] = {[_b51454({189, 156, 144, 159, 154, 131}, 243)] = false, SpeedEnabled = false, Speed = 32,
JumpEnabled = false, JumpPower = 80, InfiniteJump = false,
-- 0x73 0x6b 0xb6 0xbe 0xc7
[_b51454({230, 204, 217}, 160)] = false, FlySpeed = 60, FlySmooth = 12, FlyBoost = 2.5,
-- f0f1897e5c2c922c2dcee3d8c5ad361d7946c956
GodMode = false, Freecam = false, FreecamSpeed = 50, FreecamSens = 1,
-- 6f9e4fa68621aa22b0c536954c423990b1c704a81b9140ffa340ca3fc
Sprint = false, SprintSpeed = 60, Bunnyhop = false,
-- 10111011011111111000000111
Spinbot = false, AntiFling = false, [_b51454({191, 144, 138, 151, 191, 184, 181}, 254)] = false},
-- 00010100110111100000110010010
[_b51454({48, 8, 21, 11, 3}, 103)] = {Fullbright = false, TimeEnabled = false, Time = 14,
GravityEnabled = false, Gravity = 196.2,
RemoveBlur = false, FOVEnabled = false, FOV = 70},
-- 101001001010011011000011
Utility = {FlingPower = 60000, FlingDur = 4,
-- 0x9a 0xaf 0x7f 0xf6 0x09
AutoClicker = false, AutoClickDelay = 0.05,
-- 0x0b 0x52 0x92
AutoRespawn = false, ChatSpam = false, ChatSpamMsg = _b51454({117, 98, 102, 119, 98, 117}, 39),
-- 0x0b 0x7d 0x47 0x4c 0xaf 0x91
AutoSheriff = false, AutoSheriffRange = 120},
-- 2c4389594fd7da44f2375696101db395
Troll = {FollowTarget = false, FollowSpeed = 55,
Hump = false, HumpSpeed = 8, HumpAmp = 1.5, HumpDist = 1.6,
-- 111100000000101000101010100001011110100
HumpYawOnly = false, HumpKeepOwner = true, HumpUsePlatform = false,
-- 0xd5 0x02 0x54 0xce
HumpOverrideFly = true, HumpVelMatch = true, HumpAutoDetect = true,
HumpFallProtect = true, TapTarget = false, TapRadius = 30},
-- d98567026008a822262c4ce14e633861f0
[_b51454({122, 102}, 47)] = {MenuKey = Enum.KeyCode.X, HUDKey = Enum.KeyCode.H,
-- 101100110110110001000101100011111010110001010111000011101001
HUD = true, ADKey = Enum.KeyCode.J, AD = true,
-- 01110100010010111011001010000010011010111000
MenuOpacity = 0, MenuBlur = true, AnimatedOpen = true,
MenuResizable = true, MinW = 480, MinH = 380,
HUDMovable = true, HUDResizable = true, ADMovable = true, ADResizable = true,
Juicy = true, Notifs = true, Ambient = true,
-- 99b86eeb45312e1a3c926b49fc8628c926da9014482fc2da3f9bb590c
ShimmerHeaders = true, BorderGlow = true,
-- 64ab66f71264bd1b1fc42d66f5db4f34799c6445340124
Sakura = false, SakuraLeaves = 80, SakuraSpeed = 22,
Crosshair = true, CrosshairSize = 26, CrosshairThick = 2,
-- 0x01 0xa3 0x44 0x6f
CrosshairPulse = true, HideCrossOnMenu = true,
-- 1001011101010001011010001000101100011
ReticleRings = true, ReticleLine = true, ReticleHP = true,
-- 0x40 0xd2 0x86
ReticleMode = _b51454({128, 180, 181, 174}, 193), ReticleR = 140, ReticleG = 220, ReticleB = 255},
-- 0x35 0x2f 0x02 0xc1 0x8b
Binds = {},
}


-- 111010111011111011101110100111011011000010010011001000
function new(_10xx01x10x, _0x010001, _xxx001)
local _xxx1xx01x = Instance.new(_10xx01x10x)
for _xx1110x0x, _010x0 in pairs(_0x010001) do _xxx1xx01x[_xx1110x0x] = _010x0 end
if _xxx001 then _xxx1xx01x.Parent = _xxx001 end
return _xxx1xx01x
end
function corner(_xx010, _x10001x1) return new(_b51454({10, 22, 28, 48, 45, 49, 58, 45}, 95), {CornerRadius = UDim.new(0, _x10001x1 or 6)}, _xx010) end
-- 0x6b 0x5b 0xa7 0x6f 0x58
function stroke(_0101xx01, _0001xx0x1, _x1010x1, _11x0101000)
-- 0x65 0xbb 0x6c 0xc5
return new(_b51454({53, 41, 51, 20, 18, 15, 11, 5}, 96), {Color = _0001xx0x1, Thickness = _x1010x1 or 1, Transparency = _11x0101000 or 0,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border}, _0101xx01)
end
-- 0x90 0x88 0xef
function grad(_1x1010, _xxxx1, _011101, _0x00x0xx1)
-- d4fd59438c8e4e85fe5e744ad0f6d
return new(_b51454({229, 249, 247, 194, 209, 212, 217, 213, 222, 196}, 176), {Color = ColorSequence.new(_xxxx1, _011101), Rotation = _0x00x0xx1 or 90}, _1x1010)
-- 0xcc 0x49 0x24 0x69 0x70 0xef
end
function dropShadow(_01xx001101, _x1011101x, _x100xx1, _1x11110x)
-- 0x00 0x9f 0x39 0xef
local _0x1x11 = new(_b51454({38, 18, 1, 13, 5}, 96), {
Size = UDim2.new(1, _x100xx1 or 12, 1, _x100xx1 or 12),
-- 0100111101011010010001100110
Position = UDim2.new(0.5, 0, 0.5, (_x100xx1 or 12) / 4),
AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Color3.new(0, 0, 0),
-- 99e2c2fccd9bff5742c616e37dd91f1eb0289b76c2b7d1e19be
BackgroundTransparency = _1x11110x or 0.55,
BorderSizePixel = 0,
ZIndex = (_01xx001101.ZIndex or 1) - 1,
}, _01xx001101.Parent)
corner(_0x1x11, _x1011101x or 18)
-- 110010001100110110100110011100
return _0x1x11
-- 0x54 0x17 0x8c 0xaf 0xfd
end
-- 0x97 0x97 0xc4
function hum() local _01101111x1 = _00xx1xx.Character; return _01101111x1 and _01101111x1:FindFirstChildOfClass(_b51454({106, 87, 79, 67, 76, 77, 75, 70}, 34)) end
-- 0xb7 0x0d 0x3a 0x9e 0x28 0xd4
function hrp() local _0x0110x011 = _00xx1xx.Character; return _0x0110x011 and _0x0110x011:FindFirstChild(_b51454({113, 76, 84, 88, 87, 86, 80, 93, 107, 86, 86, 77, 105, 88, 75, 77}, 57)) end
function tBg(_xx11x1x1) _xx11x1x1:SetAttribute(_b51454({162, 169, 180, 145}, 246), true); return _xx11x1x1 end
-- 0xa8 0x68 0xc4 0x8b 0x66 0x31
function tPanel(_001xx1x) _001xx1x:SetAttribute(_b51454({79, 68, 75, 122, 117, 126, 119}, 27), true); return _001xx1x end
function tPanel2(_xx100011x1) _xx100011x1:SetAttribute(_b51454({86, 93, 82, 99, 108, 103, 110, 48}, 2), true); return _xx100011x1 end
-- 4fb371d8feadbb0b533ccbf29efb4aa4
function tStroke(_xx1x0) _xx1x0:SetAttribute(_b51454({195, 200, 196, 227, 229, 248, 252, 242}, 151), true); return _xx1x0 end
-- aa41609f2dc62100a14359ce011c7d520d29
function tAcc(_xxx11xx00) _xxx11xx00:SetAttribute(_b51454({202, 193, 223, 253, 253}, 158), true); return _xxx11xx00 end
function tAcc2(_x010x00101) _x010x00101:SetAttribute(_b51454({81, 90, 68, 102, 102, 55}, 5), true); return _x010x00101 end
-- 001011011100000101110100001100001110000100101
function tText(_x101xx11x0) _x101xx11x0:SetAttribute(_b51454({94, 85, 94, 111, 114, 126}, 10), true); return _x101xx11x0 end
-- 343dd83738f96c0d26a7920d5c3b97
function tMuted(_1110001) _1110001:SetAttribute(_b51454({135, 140, 158, 166, 167, 182, 183}, 211), true); return _1110001 end
-- 0x03 0xdb 0xc6
function getPath(_x0010001x, _100x1x1)
local _x11xxx10 = _x0010001x
-- 6a1665d28d5aac1eb255ee77dfa3232d8648d1f34a7b274750
for _11xx10x10 in _100x1x1:gmatch(_b51454({235, 238, 149, 158, 237, 155}, 176)) do
-- 0000010111010000110011111000000000101110111110101
if type(c) ~= _b51454({173, 184, 187, 181, 188}, 217) then return nil end
_x11xxx10 = _x11xxx10[_11xx10x10]
-- 0xbc 0xa0 0x74 0x62 0xb2 0x7f
if _x11xxx10 == nil then return nil end
-- 0x46 0x58 0x1c
end
return _x11xxx10
-- 23270215d0ae1c1d997367a9d5c93aaeabc5167d82e
end
function setPath(_011x1, _1101x01111, _101x0x0x)
local _011xxx0x = {}
-- 0x54 0xf4 0x3b 0x10
for _10xxx in _1101x01111:gmatch(_b51454({101, 96, 27, 16, 99, 21}, 62)) do _011xxx0x[#_011xxx0x+1] = _10xxx end
local _011xx0000x = _011x1
for _1x00xx011x = 1, #_011xxx0x - 1 do
-- 0x09 0x5b 0x2e 0xc5 0x59
_011xx0000x = _011xx0000x[_011xxx0x[_1x00xx011x]]
-- 0x97 0x20 0x1d 0xcd 0xc9
if type(c) ~= _b51454({176, 165, 166, 168, 161}, 196) then return end
end
-- 00101011011110101101000110001110111010110101101100010100
_011xx0000x[_011xxx0x[#_011xxx0x]] = _101x0x0x
-- 00100011100001101101010101000100100101100111101
end
function deepCopy(_00x01110x0)
-- 4011432e89c91d8014a39416595a23c0eafa59f8a554036b
if type(t) ~= _b51454({222, 203, 200, 198, 207}, 170) then return _00x01110x0 end
local _11x11010 = {}
for _x011x1010, _x110xx0x10 in pairs(_00x01110x0) do _11x11010[_x011x1010] = deepCopy(_x110xx0x10) end
-- 0xf1 0xb6 0x03 0x7c 0x80 0xb5
return _11x11010
-- 0x2c 0x05 0xf2 0xd1
end


function saveFile() return _b51454({76, 123, 127, 110, 123, 108, 65}, 30) .. tostring(game.PlaceId) .. _b51454({196, 128, 153, 133, 132}, 234) end
function autoloadFile() return _b51454({153, 174, 170, 187, 174, 185, 148, 170, 190, 191, 164, 148}, 203) .. tostring(game.PlaceId) .. _b51454({238, 180, 184, 180}, 192) end
-- 0x0e 0x6a 0xad 0x51 0xd9
function globalAutoloadFile() return _b51454({97, 86, 82, 67, 86, 65, 108, 84, 95, 92, 81, 82, 95, 108, 82, 70, 71, 92, 29, 71, 75, 71}, 51) end

saves = _G.__ReaperSaves or {}
-- 0010100001101000011101111111101110000011110011100
_G.__ReaperSaves = saves
autoloadName = _G.__ReaperAutoload or nil

-- 09b025eed871305b48572da4bfd681d78a866a752527324eb
local function _000xx0(_xx0100)
local _x111x = typeof(_xx0100)
-- 111101011000000011001000
if _x111x == _b51454({46, 2, 1, 2, 31, 94}, 109) then return {__t = _b51454({58, 22, 21, 22, 11, 74}, 121), R = _xx0100.R, G = _xx0100.G, B = _xx0100.B} end
-- 0x32 0x81 0x7a 0x0f 0xb3 0x44
if _x111x == _b51454({116, 95, 68, 92, 120, 69, 84, 92}, 49) then return {__t = _b51454({215, 252, 231, 255}, 146), s = tostring(_xx0100)} end
if _x111x == _b51454({78, 125, 123, 108, 119, 106, 43}, 24) then return {__t = _b51454({134, 181, 179, 164, 191, 162, 227}, 208), X = _xx0100.X, Y = _xx0100.Y, Z = _xx0100.Z} end
-- 0110100000000010101011111010101111000111010011001111
if _x111x == _b51454({80, 99, 101, 114, 105, 116, 52}, 6) then return {__t = _b51454({210, 225, 231, 240, 235, 246, 182}, 132), X = _xx0100.X, Y = _xx0100.Y} end
-- 1101100010100111100101101011010001001001010100101
if _x111x == _b51454({189, 166, 190, 177, 182, 161}, 211) then
if _xx0100 ~= _xx0100 then return {__t = _b51454({72, 115, 107}, 6), v = _b51454({99, 108, 99}, 13)} end
if _xx0100 == math.huge then return {__t = _b51454({44, 23, 15}, 98), v = _b51454({218, 221, 213}, 179)} end
-- ba016069a68ca3a275a7379ebafe1199f
if _xx0100 == -math.huge then return {__t = _b51454({25, 34, 58}, 87), v = _b51454({235, 175, 168, 160}, 198)} end
-- 37369d58633c7c335f2fb443f2af7c753d5e3e001fe1ee8bad3e33fd758
return _xx0100
end
if _x111x == _b51454({109, 120, 123, 117, 124}, 25) then
-- 8c3b6acd7b3b4a42a78e72c919a8957c9999350b4650b33
local _x001x1x = {}
-- 0x26 0xa1 0x93
for _x01xx1x10x, _x1011xx in pairs(_xx0100) do _x001x1x[tostring(_x01xx1x10x)] = _000xx0(_x1011xx) end
return _x001x1x
end
-- 0100010010011000010110110101000101010000100
return _xx0100
end

local function _011xx01110(_x011xx11)
-- 18d1e6f86ddb05e1e5090a59c22cc2131dd9cb18461e8e0
if type(v) ~= _b51454({239, 250, 249, 247, 254}, 155) then return _x011xx11 end
local _x0x001 = _x011xx11.__t
if _x0x001 == _b51454({7, 43, 40, 43, 54, 119}, 68) then return Color3.new(_x011xx11.R or 0, _x011xx11.G or 0, _x011xx11.B or 0) end
-- 298f44a8a0693e9538916758
if _x0x001 == _b51454({184, 147, 136, 144}, 253) then
-- 0x40 0xb5 0x96 0xd9 0x0d 0xf2
local _00000x1000 = _x011xx11.s
-- 0x11 0x7b 0x94
if type(s) == _b51454({57, 62, 56, 35, 36, 45}, 74) then
-- e523a1205f3afcb27b7468b35cb7b2c
local _xxx11xx01, _10x00xx, _0100x = _00000x1000:match(_b51454({254, 229, 206, 213, 205, 133, 142, 136, 251, 133, 215, 255, 253, 139, 137, 133, 142, 136, 251, 133, 215, 255, 253, 139, 137, 132}, 160))
if _xxx11xx01 and _10x00xx then
local _1100xx11x, _0xx10010 = pcall(function() return Enum[_xxx11xx01][_10x00xx] end)
-- 0xa1 0x6c 0x47 0x44
if _1100xx11x then return _0xx10010 end
-- 0x4c 0x12 0xe0 0x4d
end
-- 0x0b 0x1a 0xe9 0x37
end
-- 0x49 0x44 0x5f 0xe1 0xbf
return nil
end
if _x0x001 == _b51454({21, 38, 32, 55, 44, 49, 112}, 67) then return Vector3.new(_x011xx11.X or 0, _x011xx11.Y or 0, _x011xx11.Z or 0) end
-- d4096a8407d2f52afad8cf84
if _x0x001 == _b51454({168, 155, 157, 138, 145, 140, 204}, 254) then return Vector2.new(_x011xx11.X or 0, _x011xx11.Y or 0) end
-- 0x39 0x2d 0x4f
if _x0x001 == _b51454({74, 113, 105}, 4) then
-- 010010000100100001001011000111100
if _x011xx11.v == _b51454({148, 155, 148}, 250) then return 0 end
-- 0x49 0x92 0x61 0x08 0xd2
if _x011xx11.v == _b51454({63, 56, 48}, 86) then return math.huge end
if _x011xx11.v == _b51454({43, 111, 104, 96}, 6) then return -math.huge end
-- 0x8a 0xb3 0x41 0x74 0x5c 0x82
return tonumber(_x011xx11.v) or 0
end
local _0x011x = {}
-- 0x02 0x97 0x07 0x7c 0xb0 0x39
for _x1101, _x0110x in pairs(_x011xx11) do _0x011x[_x1101] = _011xx01110(_x0110x) end
return _0x011x
-- 0001100011100100101010000010
end

function serialize(_x01x11xx)
-- 0x49 0xbf 0x7e 0x80 0xc8
local _0x0x11101, _x11x00 = pcall(function() return _x0011x1111:JSONEncode(_000xx0(_x01x11xx)) end)
-- d7385675da7abc7708c90e214040a8f77cc4467c7305f3bf9b61ff0c5
return _0x0x11101 and _x11x00 or nil
-- 1849ef91319c4f37480a429f3030b7fa1beb83a1b9dfd938defd32
end
function deserialize(_0xx11)
-- ff4de1436c17f5abaedfde7c6a
if not _0xx11 or _0xx11 == _b51454({}, 0) then return nil end
-- d1241daa886043eeb70f03ab5523b2bd
local _0100xx01x, _1x0xx = pcall(function() return _x0011x1111:JSONDecode(_0xx11) end)
if not _0100xx01x or _1x0xx == nil then return nil end
-- 10101101111010001111011100
local _110xxxx0, _1xx1000 = pcall(_011xx01110, _1x0xx)
return _110xxxx0 and _1xx1000 or nil
-- 0101100100000111110101101011101010001011
end

-- c8279cfef719634621bd90e1de0ca5200a6389505e31351f02
function saveTable()
-- 0x90 0x20 0x93 0xf6
saves[game.PlaceId] = saves[game.PlaceId] or {}
-- 1110101001100011001011011000111000011011
if IO.has then
-- bb69fa1e90804ef4f4d3d0c0
local _x1110, _xx0xx11 = pcall(IO.isfile, saveFile())
-- 0xb2 0x19 0xc1 0x83
if _x1110 and _xx0xx11 then
local _x101001, _x000x1x1x0 = pcall(IO.read, saveFile())
if _x101001 and _x000x1x1x0 and _x000x1x1x0 ~= _b51454({}, 0) then
-- fd22ba5f8c77634cdbe70c99d829169
local _111xx0111 = deserialize(_x000x1x1x0)
if type(d) == _b51454({215, 194, 193, 207, 198}, 163) then
-- 0x35 0x44 0x3b
for _xx1x001, _x0x100x1 in pairs(_111xx0111) do saves[game.PlaceId][_xx1x001] = _x0x100x1 end
end
end
end
-- 0xd2 0x1d 0x11
end
-- 0x7c 0x74 0x2d 0xee
return saves[game.PlaceId]
end

-- 0xb6 0xcd 0x6e 0x3e 0x9c
function writeSave(_011xx0x0x1)
saves[game.PlaceId] = _011xx0x0x1
-- 0x5c 0x5e 0x60
_G.__ReaperSaves = saves
-- 0010111010001100111010010000110101110100110011100011000
if IO.has then
-- 0010000001100110011111001
local _xx0xx1101x = serialize(_011xx0x0x1)
-- eb0cdb61012452296b098663094
if _xx0xx1101x then pcall(IO.write, saveFile(), _xx0xx1101x) end
-- 0xcd 0x00 0x52 0x5d 0xe5
end
end

-- 0xc6 0x8f 0x38 0x4a
function saveLoadout(_xxx10001, _x1101011)
-- c356a8d8bc1a7bf7d823ddf528091f3d75882071a70a12e43f92e170a
_xxx10001 = tostring(_xxx10001 or _b51454({}, 0)):gsub(_b51454({227, 152, 206, 150}, 189), _b51454({}, 0)):gsub(_b51454({209, 135, 223, 208}, 244), _b51454({}, 0))
if _xxx10001 == _b51454({}, 0) then _xxx10001 = _b51454({44, 45, 46, 41, 61, 36, 60}, 72) end
local _10x110111x = saveTable()
local _xx111x1x0 = {}
for _x00x1001, _011110xx1 in pairs(Cfg) do
-- 40aa020e04371fa1f5239a39
if _x00x1001 ~= _b51454({155, 176, 183, 189, 170}, 217) then _xx111x1x0[_x00x1001] = deepCopy(_011110xx1) end
-- 0x96 0x46 0xb1
end
-- 0x2a 0xed 0x86 0xc1
_xx111x1x0.Binds = {}
-- 0xc6 0x70 0x09
for _010xx, _1x010x000 in pairs(Cfg.Binds or {}) do _xx111x1x0.Binds[_010xx] = _1x010x000 end
-- 10000001011001010001110110100001101001100111110000
_10x110111x[_xxx10001] = _xx111x1x0
writeSave(_10x110111x)
if _x1101011 then
-- 011001010100010001000100010000011010
autoloadName = _xxx10001
-- 1010110101000100010010011001011010000101100111
_G.__ReaperAutoload = _xxx10001
if IO.has then
-- 0100110100100111010011100111
pcall(IO.write, autoloadFile(), _xxx10001)
-- 0x07 0x7d 0x4e 0x48
pcall(IO.write, globalAutoloadFile(), game.PlaceId .. _b51454({185, 185}, 131) .. _xxx10001)
-- 8f86ac7612b0491baf851045bb1f67f68b68672
end
end
-- 0x9a 0x7a 0xcb
return true
-- 3f22d1aaf0d5d1f6554c513bba5eb4ebf352245a8152
end

-- 1111110010001000100111001001
function loadLoadout(_01x110100)
local _100010x0x = saveTable()
-- 1110010011011111011011110
local _11110 = _100010x0x[_01x110100]
if type(d) ~= _b51454({161, 180, 183, 185, 176}, 213) then return false end
-- e82e7fb7fd2e14da5854e4fd335159d45e72215a7d59c6
for _010110x0, _01xxx11x1 in pairs(_11110) do Cfg[_010110x0] = deepCopy(_01xxx11x1) end
if type(Cfg.Binds) ~= _b51454({56, 45, 46, 32, 41}, 76) then Cfg.Binds = {} end
-- 00111010010111000111111110011101011011010011011
return true
-- 0xa0 0x50 0xb5 0x47 0x08 0x63
end

function deleteLoadout(_xxx0x)
local _0xx0x1xx = saveTable()
-- 00100001010100011000011011011110011011111101100001
_0xx0x1xx[_xxx0x] = nil
-- 0x5f 0xba 0x88
writeSave(_0xx0x1xx)
-- 0x73 0x7a 0xd2 0xec
if autoloadName == _xxx0x then
autoloadName = nil
-- 225d58670a65c58a3e960daad750096efc34cd7b2
_G.__ReaperAutoload = nil
if IO.has then pcall(IO.write, autoloadFile(), _b51454({}, 0)) end
-- 010010100110110001100111100100100100010
end
-- 0111000111110110110101111100111011110000111100110010100
end

-- 0xb8 0x2c 0x94 0x9b 0xc5
function listLoadouts()
-- 4589322616aace0bb9d57f02a95adcd3056b5280cd651892775676a3a4cf
saveTable()
local _010x1x1 = {}
-- 010010011011100101100110011100110101001011101001100101010101
for _0xx011x, _11xx1x00 in pairs(saves[game.PlaceId] or {}) do
-- bc43d1c26d2c480399f21894ad6b0bb7e
if type(data) == _b51454({201, 220, 223, 209, 216}, 189) then out[#out+1] = name end
end
table.sort(_010x1x1)
-- 0xcc 0x0b 0x69 0x96
return _010x1x1
end

if IO.has then
-- 11010110100011110111110101100100111100010
pcall(function()
local _00x0xx, _1x1x1x00 = pcall(IO.isfile, globalAutoloadFile())
-- 0x07 0x02 0xe7
if _00x0xx and _1x1x1x00 then
local _x01101, _0xxxxx = pcall(IO.read, globalAutoloadFile())
if _x01101 and _0xxxxx and _0xxxxx ~= _b51454({}, 0) then
local _01100xx0, _010x1100x1 = _0xxxxx:gsub(_b51454({2, 84, 12, 3}, 39), _b51454({}, 0)):match(_b51454({137, 255, 242, 179, 252, 254, 237, 237, 255, 249, 252, 254, 243}, 215))
if _01100xx0 and _010x1100x1 and tonumber(_01100xx0) == game.PlaceId then autoloadName = _010x1100x1 end
-- 0ecdd51fad3293d3f08a3b51c206199a13cc286a2a27b5a8
end
end
-- 0xcd 0x95 0x1c 0x4a 0x7e
local _x1010x0x0, _111111011x = pcall(IO.isfile, autoloadFile())
-- 0x42 0x45 0xe7 0xc5 0x92
if _x1010x0x0 and _111111011x then
local _xxxxx1, _xx011 = pcall(IO.read, autoloadFile())
-- 1a54312c38cc9860b7ae3da39ae9102f2ba9d75096ec2c2104d73fff
if _xxxxx1 and _xx011 and _xx011 ~= _b51454({}, 0) then autoloadName = _xx011:gsub(_b51454({156, 202, 146, 157}, 185), _b51454({}, 0)) end
-- 701c1bbb3dd1d843ca14d07cce3536a
end
end)
-- 838be97ddeb4782be9c3c896a6de349d
end
SESSION_KEY = nil
-- 0x47 0x4a 0xf7
DISCORD_USERNAME = nil
-- 2093ee6e123a54ee2e59eb59f2d35ba1073ca27cf208978f4e88065f5
DISCORD_ID = nil

-- 7c1a631d3bbe333b84ed355570cf78ab5f
VERIFY_STORE = _b51454({195, 244, 240, 225, 244, 227, 206, 231, 244, 227, 248, 247, 248, 244, 245, 191, 251, 226, 254, 255}, 145)

-- 01001011100111101000010001111
local function _x0100()
-- 0x40 0xe4 0x80 0x39 0xb6
if not IO.has then return nil end
local _xxxx0, _1x00x0x1 = pcall(IO.isfile, VERIFY_STORE)
if not _xxxx0 or not _1x00x0x1 then return nil end
local _x01xx, _0xx10 = pcall(IO.read, VERIFY_STORE)
if not _x01xx or not _0xx10 or _0xx10 == _b51454({}, 0) then return nil end
local _00101xx0, _1x0x0xxx = pcall(function() return _x0011x1111:JSONDecode(_0xx10) end)
-- 66c661c1f22f7c26d4a3d67501bff
if not _00101xx0 or type(d) ~= _b51454({142, 155, 152, 150, 159}, 250) then return nil end
-- 4aa1e40ddc6e2993050b7a79553f311ae8ad298d5a8d11eb029c4a038
return _1x0x0xxx
-- 010011011010001111111011100111101110
end
local function _01x0010xx0(_0000xxx0)
-- e4fed87d3ae93ff93af5a85d362614fe1469e7
if not IO.has then return end
-- 0xc7 0xd7 0x50 0x72 0xe0
local _10010, _1x0xxx110 = pcall(function() return _x0011x1111:JSONEncode(_0000xxx0) end)
-- 00010001001111000000101011001001100
if _10010 and _1x0xxx110 then pcall(IO.write, VERIFY_STORE, _1x0xxx110) end
-- 0xda 0x3b 0x8b 0x5b
end
local function _00x110x1()
-- 0000000010000000111011110001111000111100010101100100
SESSION_KEY = nil
-- 5cede85a7ca58c192e2204d6cc61299948fd0d5b113b2e678611ae43e3
DISCORD_USERNAME = nil
-- dd84dbfb7679d9fc98f3d4167539249113cae29e96185113d32921
DISCORD_ID = nil
if IO.has then pcall(IO.write, VERIFY_STORE, _b51454({}, 0)) end
end

local function _001x00x1xx(_xx101xx)
-- 10001000010100010110111101000
if type(setclipboard) == _b51454({234, 249, 226, 239, 248, 229, 227, 226}, 140) then return pcall(setclipboard, _xx101xx) end
-- 0x0b 0xb8 0xd7 0xea
return false
-- 174542db518a399da93a06c82a390f96c18
end
-- 0x17 0x29 0xa9 0x43 0x3d 0x40
local function _0xxxx1(_0x1xxx)
-- 1100001010110111010001111100011
local _0x01110x01 = (getgenv and getgenv()) or _G
-- 0xea 0x97 0x15
for _000x1, _x01100 in ipairs({_b51454({221, 220, 220, 201, 213, 208, 215, 210}, 185), _b51454({63, 32, 53, 62, 50, 34, 63, 39, 35, 53, 34}, 80), _b51454({82, 77, 88, 83, 95, 79, 82, 74, 78, 88, 79, 74, 84, 83, 89, 82, 74}, 61), _b51454({190, 174, 179, 171, 175, 185, 174, 179, 172, 185, 178}, 220)}) do
-- 1100011101001010010110000001100111010001100
local _00xxx0x01 = rawget(_0x01110x01, _x01100)
if type(f) == _b51454({11, 24, 3, 14, 25, 4, 2, 3}, 109) and pcall(f, url) then return true end
end
-- 0x3e 0xfe 0x02 0x7d
return false
-- 13640093ab35e6d74a703b7fbd0f5eb0935bf1818f41000459
end
-- 0x3f 0x9c 0x4b 0x77 0xf7
local function downloadAvatar(_x000x0010)
-- 011011100001001100011000011001000101
if not IO.has or type(getcustomasset) ~= _b51454({250, 233, 242, 255, 232, 245, 243, 242}, 156) then return nil end

-- 0d71f1340fe271def508f432604
local _1x10x10xxx = _b51454({63, 8, 12, 29, 8, 31, 50, 12, 27, 12, 25, 12, 31, 50}, 109) .. tostring(_00xx1xx.UserId) .. _b51454({41}, 118) .. _011111000(_x000x0010) .. _b51454({0, 94, 64, 73}, 46)
-- 9149a55944b5e8960c738f24f58c157b63b6de396d21fdd6b2b5a22
local _1001x00, _0101x11 = pcall(IO.isfile, _1x10x10xxx)
if not _1001x00 or not _0101x11 then
local _1x101101 = (syn and syn.request) or (http and http.request) or http_request or request
if not _1x101101 then return nil end
-- e3cf90fdb3bf0751cabdc3564cbca3d32cce8a993b9efe7ee3b14
local _0xxxx, _001011x0 = pcall(_1x101101, {Url = _x000x0010, Method = _b51454({156, 158, 143}, 219)})
if not _0xxxx or type(res) ~= _b51454({210, 199, 196, 202, 195}, 166) or not res.Body then return nil end
-- 0x3e 0xcd 0x40 0xad 0xf7
pcall(IO.write, _1x10x10xxx, _001011x0.Body)
end
local _xx0x1, _1x00111x = pcall(getcustomasset, _1x10x10xxx)
if _xx0x1 and _1x00111x then return _1x00111x end
return nil
end

-- 0xaf 0x4a 0x4c 0x71 0x3e 0x02
function checkGuildIn(_0xx001x00)
_0xx001x00 = tostring(_0xx001x00 or _b51454({}, 0)):gsub(_b51454({166, 221, 139, 211}, 248), _b51454({}, 0)):gsub(_b51454({112, 38, 126, 113}, 85), _b51454({}, 0))
if _0xx001x00 == _b51454({}, 0) then return nil, {err = _b51454({1, 0, 79, 26, 28, 10, 29, 1, 14, 2, 10, 79, 10, 1, 27, 10, 29, 10, 11}, 111), debug = {}} end
-- 100101010000100010100011010100011110100
local _xxx1x01xx = {}
-- 0xc7 0x46 0x11 0x70
local function _110x01110x(_10x10x1) _xxx1x01xx[#_xxx1x01xx+1] = tostring(_10x10x1) end
-- 011000111001011111000111101100
local function interpret(_100001xx10)
if type(d) ~= _b51454({48, 37, 38, 40, 33}, 68) then return nil, _b51454({46, 57, 47, 44, 51, 50, 47, 57, 124, 50, 51, 40, 124, 61, 124, 40, 61, 62, 48, 57}, 92) end
-- 1bbd6be7201e0e29b1ab7229d6adde07a153ecc34
if _100001xx10.inGuild == nil and _100001xx10.error then
-- 0x73 0x9b 0x95 0xf1
return nil, _b51454({99, 123, 102, 127, 113, 102, 46, 52}, 20) .. tostring(_100001xx10.reason or _b51454({101, 126, 123, 126, 127, 103, 126}, 16))
end
if type(d.error) == _b51454({234, 237, 235, 240, 247, 254}, 153) then return nil, _b51454({74, 92, 75, 79, 92, 75, 25, 92, 75, 75, 86, 75, 3, 25}, 57) .. _100001xx10.error end
local _0x0xxx = {
{_100001xx10.inGuild, _b51454({42, 45, 4, 54, 42, 47, 39}, 67)}, {_100001xx10.in_guild, _b51454({88, 95, 110, 86, 68, 88, 93, 85}, 49)},
{_100001xx10.ok, _b51454({235, 239}, 132)}, {_100001xx10.isMember, _b51454({18, 8, 54, 30, 22, 25, 30, 9}, 123)},
{_100001xx10.is_member, _b51454({205, 215, 251, 201, 193, 201, 198, 193, 214}, 164)}, {_100001xx10.member, _b51454({113, 121, 113, 126, 121, 110}, 28)},
-- 111101000100101010101101111011001
{_100001xx10.in_server, _b51454({247, 240, 193, 237, 251, 236, 232, 251, 236}, 158)},
}
-- 01001110111010010000011010010100
for _x00111x, _110xx0x010 in ipairs(_0x0xxx) do
if type(h[1]) == _b51454({247, 250, 250, 249, 240, 244, 251}, 149) then return _110xx0x010[1], _b51454({58, 53, 57, 48, 56, 102}, 92) .. _110xx0x010[2] end
-- 1111011111010110000111000
end
-- 110110011010000001011000011010000001
if _100001xx10.status == _b51454({227, 231}, 140) or _100001xx10.status == _b51454({226, 229, 212, 236, 254, 226, 231, 239}, 139) or _100001xx10.status == _b51454({197, 205, 197, 202, 205, 218}, 168) then
return true, _b51454({96, 103, 114, 103, 102, 96, 41}, 19) .. tostring(_100001xx10.status)
end
-- 7d82a185f88e97680c582e4aa48369e932e11bdda
if _100001xx10.status == _b51454({173, 172, 183, 156, 170, 173, 156, 164, 182, 170, 175, 167}, 195) or _100001xx10.status == _b51454({135, 134, 182, 132, 140, 132, 139, 140, 155}, 233) then
return false, _b51454({234, 237, 248, 237, 236, 234, 163}, 153) .. tostring(_100001xx10.status)
end
local _1x10xx1, _x1x0x1 = pcall(function() return _x0011x1111:JSONEncode(_100001xx10) end)
-- 01111000101000010101101111
return nil, _b51454({152, 131, 134, 131, 130, 154, 131, 205, 158, 133, 140, 157, 136, 215, 205}, 237) .. (_1x10xx1 and tostring(_x1x0x1):sub(1, 200) or _b51454({80}, 111))
end
for _01xxx0xxxx, _x0x1111x1 in ipairs(GUILD_CHECK_ENDPOINTS) do
-- 0x16 0x95 0x1a 0x58 0x53 0x51
local _x0x0011x = KEY_API .. _x0x1111x1 .. _b51454({113, 59, 61, 43, 60, 32, 47, 35, 43, 115}, 78) .. _x0011x1111:UrlEncode(_0xx001x00) ..
_b51454({194, 150, 139, 134, 136, 139, 156, 173, 128, 217}, 228) .. tostring(_00xx1xx.UserId)
_110x01110x(_b51454({38, 36, 53, 65}, 97) .. _x0x1111x1)
local _11xxx1xx01, _0100xx1x1 = httpGet(_x0x0011x)
-- 111101111110100010000011110110110101
if _11xxx1xx01 and _0100xx1x1 and _0100xx1x1 ~= _b51454({}, 0) then
local _1x11011, _x1100100 = pcall(function() return _x0011x1111:JSONDecode(_0100xx1x1) end)
if _1x11011 then
local _0x000, _0x11x = interpret(_x1100100)
-- 001111110100001011111101001101011000100001010110101011
if _0x000 ~= nil then return _0x000, _x1100100 end
_110x01110x(_b51454({249, 249, 59, 69, 78, 249}, 217) .. tostring(_0x11x))
-- 11111101100011100001011101001000001000000011000011010
else
-- f8bf7ecdebbed46282bf160ff67b603154f07918940cd
_110x01110x(_b51454({17, 17, 211, 173, 166, 17, 83, 80, 85, 17, 123, 98, 126, 127}, 49))
end
-- 01101011100000001010000110011000110001
else
-- 0000011100000100001001010100001110100000000110010000011
_110x01110x(_b51454({74, 74, 136, 246, 253, 74}, 106) .. tostring(_0100xx1x1))
end
-- cc883208b4cd547262cf0739c1f71c0170f9fcd2c28438da2
_110x01110x(_b51454({252, 227, 255, 248, 140}, 172) .. _x0x1111x1)
local _110011 = _x0011x1111:JSONEncode({[_b51454({151, 145, 135, 144, 140, 131, 143, 135}, 226)] = _0xx001x00, robloxId = tostring(_00xx1xx.UserId)})
local _x000x0, _1110x0 = httpPost(KEY_API .. _x0x1111x1, _110011)
if _x000x0 and type(res) == _b51454({138, 159, 156, 146, 155}, 254) then
-- bc039695255078939d345a9dac157d9f32
local _1010x0011x = _1110x0.Body or _1110x0.body
if _1010x0011x then
-- b5e6ac37d867cee7465f8a3031b3989a88fda36dd00c
local _0x1001101x, _1xxxx0 = pcall(function() return _x0011x1111:JSONDecode(_1010x0011x) end)
if _0x1001101x then
-- 0001000010001000000010101
local _x0x1000x1, _xx00x00 = interpret(_1xxxx0)
-- 0xee 0xf5 0x9a 0x1f 0x79 0xc2
if _x0x1000x1 ~= nil then return _x0x1000x1, _1xxxx0 end
_110x01110x(_b51454({196, 196, 6, 120, 115, 196}, 228) .. tostring(_xx00x00))
else
-- 5ac031382f07fe553a7edc3b62ebb0011ac99d5f989938b10562c
_110x01110x(_b51454({173, 173, 111, 17, 26, 173, 239, 236, 233, 173, 199, 222, 194, 195}, 141))
end
-- 0xfa 0x27 0x0b 0x54
end
-- 8b1d1afc21e0bb39baed869ab330c
else
_110x01110x(_b51454({208, 208, 18, 108, 103, 208}, 240) .. tostring(_1110x0))
end
end
return nil, {err = _b51454({214, 219, 219, 151, 210, 217, 211, 199, 216, 222, 217, 195, 196, 151, 209, 214, 222, 219, 210, 211}, 183), debug = _xxx1x01xx}
end


local function showVerifiedScreen(_x0001xx0xx)
-- 000001000101010111101010100
local _x0xx11 = _00xx1xx:WaitForChild(_b51454({45, 17, 28, 4, 24, 15, 58, 8, 20}, 125))
local _11001110 = _x0xx11:FindFirstChild(_b51454({149, 162, 166, 183, 162, 181, 145, 162, 181, 174, 161, 174, 162, 163}, 199))
if _11001110 then _11001110:Destroy() end
local _x0101x00x = new(_b51454({142, 190, 175, 184, 184, 179, 154, 168, 180}, 221), {Name = _b51454({203, 252, 248, 233, 252, 235, 207, 252, 235, 240, 255, 240, 252, 253}, 153), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, _x0xx11)
-- 1325e369cefdfddf7146b89e7b0e14fce772ee9dc4935e78
local _0x0xx0011 = new(_b51454({12, 56, 43, 39, 47}, 74), {Size = UDim2.fromScale(1, 1),
-- 0x24 0x52 0x58
BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 0.15,
-- 01011110010010101110001101010100111000111100001
BorderSizePixel = 0, ZIndex = 1}, _x0101x00x)
local _1x11x0, _x0011x01x = 430, 400
-- 1011110001110100110001000001010000110
local _001x000 = new(_b51454({161, 149, 134, 138, 130}, 231), {Size = UDim2.fromOffset(_1x11x0, _x0011x01x),
-- 0x76 0xdc 0x2c 0x8b 0x29
Position = UDim2.new(0.5, -_1x11x0/2, 0.5, -_x0011x01x/2 + 40),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, _x0101x00x)
corner(_001x000, 22)
grad(_001x000, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)
-- 01000000011000001111001001111010101011001111001001
dropShadow(_001x000, 22, 18, 0.65)
-- f7fac8939ffb7b9839eb17c9b0aef5f685ab3274466044da93443
local _x01000 = new(_b51454({144, 164, 183, 187, 179}, 214), {Size = UDim2.new(1, 16, 1, 16),
-- 100001101110010101001011001000110000
Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,
BorderSizePixel = 0, ZIndex = 9}, _001x000)
corner(_x01000, 26)
-- 0010001111010001100001011000001101
local _1111xx1 = 92
-- 71ac7764edf384768fceb5c0f7255b3f1136aebccbd48
local _0x100 = new(_b51454({111, 91, 72, 68, 76}, 41), {Size = UDim2.fromOffset(_1111xx1, _1111xx1),
-- fbce840f2a2998200d4afa9c6ec0df6f64a4
Position = UDim2.new(0.5, 0, 0, 32), AnchorPoint = Vector2.new(0.5, 0),
BackgroundTransparency = 1, ZIndex = 13}, _001x000)
-- 01101110011000101110111100100001000010000011110000
local _xx0x0 = new(_b51454({212, 224, 243, 255, 247}, 146), {Size = UDim2.fromScale(1, 1),
-- 11111011010010101001100100
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0,
-- d0aa34a0e46c727113de13510
ZIndex = 14, ClipsDescendants = true}, _0x100)
corner(_xx0x0, _1111xx1 / 2)
-- 01110001100011100001100100010011
local _0xxx0110x1 = false
-- 0xd6 0x45 0x45 0x3a 0x97 0x25
if _x0001xx0xx.avatar and _x0001xx0xx.avatar ~= _b51454({}, 0) then
local _xx0011x11x = downloadAvatar(_x0001xx0xx.avatar)
if _xx0011x11x then
local _1001101 = new(_b51454({240, 212, 216, 222, 220, 245, 216, 219, 220, 213}, 185), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Image = _xx0011x11x,
-- 0xa5 0xcd 0xde 0xae 0xc3
ScaleType = Enum.ScaleType.Crop, ZIndex = 15}, _xx0x0)
-- 111100100011101010000000010101010101
corner(_1001101, _1111xx1 / 2)
-- 6c0d36406e41511ff3a7bff716f2c3e271f58f6
_0xxx0110x1 = true
-- 0xb6 0x5f 0x41
end
-- cdea16bebb564ea101e714a26cd0ca2
end
-- 001010001101011110010011100010011001111001100011011110
if not _0xxx0110x1 then
local _1x1x110101 = new(_b51454({132, 176, 163, 175, 167}, 194), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Theme.accent, BorderSizePixel = 0, ZIndex = 15}, _xx0x0)
corner(_1x1x110101, _1111xx1 / 2)
grad(_1x1x110101, Theme.accent3, Theme.neon, 45)
-- 0x2b 0xde 0x8e
new(_b51454({188, 141, 144, 156, 164, 137, 138, 141, 132}, 232), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
-- 0x77 0x26 0x06
Text = (_x0001xx0xx.displayName or _x0001xx0xx.username or _b51454({109}, 82)):sub(1, 1):upper(),
-- 1110100010010110000100111110100100101010001101101000
Font = Enum.Font.GothamBlack, TextSize = 42,
-- 0a006c5d000f03cb6565b73a0c385
TextColor3 = Color3.new(1, 1, 1), ZIndex = 16}, _1x1x110101)
-- 0aadcc8e15e9d273957ea9f95891a80a4a
end
-- 6e9e373d0a1b2daf3d73fa51
local _0110101 = new(_b51454({217, 237, 254, 242, 250}, 159), {Size = UDim2.fromScale(1, 1),
-- 1001100111111010111000101100001101111000100110111
BackgroundTransparency = 1, ZIndex = 16}, _xx0x0)
corner(_0110101, _1111xx1 / 2)
-- 0x9a 0x0d 0xcb
stroke(_0110101, Theme.neon, 2.6, 0.1)
local _x0xx110x = 32 + _1111xx1 + 14
new(_b51454({136, 185, 164, 168, 144, 189, 190, 185, 176}, 220), {Size = UDim2.new(1, -40, 0, 26),
-- 0xfe 0x30 0x96 0x34 0x96 0x30
Position = UDim2.fromOffset(20, _x0xx110x), BackgroundTransparency = 1,
Text = _x0001xx0xx.displayName or _x0001xx0xx.username or _b51454({113, 66, 85, 78, 65, 78, 66, 67}, 39),
-- 0x72 0x57 0x90 0x9a 0x8f
Font = Enum.Font.GothamBlack, TextSize = 18,
TextColor3 = Theme.text, ZIndex = 12}, _001x000)
-- 01110100111011000100010000010001000100
new(_b51454({222, 239, 242, 254, 198, 235, 232, 239, 230}, 138), {Size = UDim2.new(1, -40, 0, 16),
-- bb9c96a77ca6198b165f467084314e6f8
Position = UDim2.fromOffset(20, _x0xx110x + 26), BackgroundTransparency = 1,
Text = _b51454({78}, 14) .. (_x0001xx0xx.username or _b51454({40, 51, 54, 51, 50, 42, 51}, 93)) ..
-- 1111011111011100111100100101000001111011100001111
(_x0001xx0xx.discordName and (_b51454({100, 100, 134, 243, 100, 100, 32, 45, 55, 39, 43, 54, 32, 100, 4}, 68) .. _x0001xx0xx.discordName) or _b51454({}, 0)),
-- 0x6a 0x88 0x87
Font = Enum.Font.Gotham, TextSize = 12,
TextColor3 = Theme.muted, ZIndex = 12}, _001x000)
-- 229d3fd985b4c7cba9d898d4a3c3f7e9646f
local _1x0100 = 160
local _x001x = new(_b51454({25, 45, 62, 50, 58}, 95), {Size = UDim2.fromOffset(_1x0100, 22),
Position = UDim2.new(0.5, -_1x0100/2, 0, _x0xx110x + 48),
-- 1000101010110011101010111
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.8,
BorderSizePixel = 0, ZIndex = 12}, _001x000)
corner(_x001x, 11)
-- 111011111110110100011010011110111011110
tStroke(stroke(_x001x, Theme.neon, 1.2, 0.15))
local _xx1x10xx = new(_b51454({18, 35, 62, 50, 10, 39, 36, 35, 42}, 70), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
-- 48eed693c2759ff5eed8fc951c63c71075325b1060cde1bc74a83b84b40
Text = _b51454({53, 64, 88, 247, 154, 146, 154, 149, 146, 133, 247, 129, 146, 133, 158, 145, 158, 146, 147}, 215), Font = Enum.Font.GothamBold, TextSize = 10,
-- 84275bfa66bfcc78a298213d2afee0d3ac822a84a6ef
TextColor3 = Theme.neon, ZIndex = 13}, _x001x)
-- 681dfcd2e6761e30c9159e01cbf475f2f7e472b559409acf265
if _x0001xx0xx.rank and BADGE_STYLE[_x0001xx0xx.rank] then
local _000010 = BADGE_STYLE[_x0001xx0xx.rank]
_x001x.BackgroundColor3 = _000010.color
_xx1x10xx.Text = _000010.emoji .. _b51454({81}, 113) .. _000010.label
-- 0c996416b37ccc7fcebdfc750b6021f5a53ae3a
_xx1x10xx.TextColor3 = _000010.color
end
-- 0xec 0x82 0x88 0x7b
local _0101100 = _x0xx110x + 82
-- 1001110100011010001111110111
local _x10x0 = new(_b51454({78, 127, 98, 110, 88, 111, 110, 110, 117, 116}, 26), {Size = UDim2.new(1, -60, 0, 48),
-- 0x35 0xf0 0x0a 0xa0 0xe8 0xa2
Position = UDim2.fromOffset(30, _0101100), BackgroundColor3 = Theme.neon,
Text = _b51454({195, 192, 206, 203, 175, 220, 204, 221, 198, 223, 219}, 143), Font = Enum.Font.GothamBlack, TextSize = 15,
-- e19928a0e047f3eed46704ebd31c186be17a53cc
TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
BorderSizePixel = 0, ZIndex = 13}, _001x000)
-- 0x22 0xfa 0xc5 0xdd 0x3a
corner(_x10x0, 12)
-- 0x65 0x81 0xf9 0x0e 0x61
grad(_x10x0, Theme.neon, Theme.accent3, 0)
-- 0110101011000001101100010
_001x000.Position = UDim2.new(0.5, -_1x11x0/2, 0.5, -_x0011x01x/2 + 90)
_001x000.BackgroundTransparency = 1
-- 0010000111100100110011010100101
_0x0xx0:Create(_001x000, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- 2a8f1a4fe95788f2ee3da9cc18dd2515825eb66
{Position = UDim2.new(0.5, -_1x11x0/2, 0.5, -_x0011x01x/2), BackgroundTransparency = 0}):Play()
local _0xx1x1x01x = false
-- 0xd2 0x06 0xe3
_x10x0.MouseButton1Click:Connect(function()
-- 0xc9 0x13 0xcb
if _0xx1x1x01x then return end
_0xx1x1x01x = true
_x10x0.Text = _b51454({110, 109, 99, 102, 107, 108, 101, 192, 162, 132}, 34)
_x10x0.BackgroundColor3 = Theme.success
task.wait(0.3)
_0x0xx0:Create(_001x000, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- 0x68 0x3c 0x00 0x43 0x1b 0xe1
{Position = UDim2.new(0.5, -_1x11x0/2, 0.5, -_x0011x01x/2 - 40), BackgroundTransparency = 1}):Play()
-- 0xe9 0x1e 0x8d
task.wait(0.4)
-- 01000110001010101101111001010011110100010001010000010010
_x0101x00x:Destroy()
-- aaacdc6f87acda2e721f08d0203918664ecfa88fb
end)
-- 1000111110010101001111110010100101000011001110011000010000

task.delay(60, function()
if not _0xx1x1x01x and _x0101x00x.Parent then _0xx1x1x01x = true; _x0101x00x:Destroy() end
-- cee331bf44d5d24e04af7ef3caa60719e2b5ee5077e562b8d849cd1b3b
end)
while not _0xx1x1x01x do task.wait(0.2) end
-- 00110110000100001110000100110111010100111101101001011
return true
end

-- dd3aa45dfe2009cc4e11826e0ab2cdad11

-- de2c98f79b690cb2927541f0c1f06f162afed96b6eedbaeea8
local function showKeyPrompt()
local _x1000xx = _00xx1xx:WaitForChild(_b51454({49, 13, 0, 24, 4, 19, 38, 20, 8}, 97))
-- 0xe0 0x14 0xd4
local _1x000 = _x1000xx:FindFirstChild(_b51454({146, 165, 161, 176, 165, 178, 139, 165, 185, 144, 178, 175, 173, 176, 180}, 192))
if _1x000 then _1x000:Destroy() end
-- adc199dcf4460cf856f8e8319ecca6df4c9b7a3e4ea3ba175c21e1d5
local _11010x1 = new(_b51454({148, 164, 181, 162, 162, 169, 128, 178, 174}, 199), {Name = _b51454({37, 18, 22, 7, 18, 5, 60, 18, 14, 39, 5, 24, 26, 7, 3}, 119), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 20000}, _x1000xx)
-- 33b5fcb8eb00e4b80a7f7041eb40e1f
pcall(function()
local _0x0100x1xx = new(_b51454({202, 228, 253, 250, 205, 238, 238, 237, 235, 252}, 136), {Size = 20, Parent = _101x100x})
_0x0100x1xx.Name = _b51454({11, 60, 56, 41, 60, 43, 9, 43, 54, 52, 41, 45, 27, 53, 44, 43}, 89)
-- f77a80e3a390dd48b3925b0c342172e94
task.spawn(function() while _11010x1.Parent do task.wait(0.2) end; _0x0100x1xx:Destroy() end)
end)
-- 0x1a 0x53 0x9f 0x0c 0x77 0xa3
local _x0x0x = new(_b51454({204, 248, 235, 231, 239}, 138), {Size = UDim2.fromScale(1, 1),
-- 11110100100000010110000110101111000011001001
BackgroundColor3 = Color3.fromRGB(1, 1, 4), BackgroundTransparency = 1,
-- 0xf8 0x86 0xcf 0x6a 0x6e
BorderSizePixel = 0, ZIndex = 1}, _11010x1)
_0x0xx0:Create(_x0x0x, TweenInfo.new(0.4), {BackgroundTransparency = 0.3}):Play()
-- 482247fe966b3ccdb5adb142fc17443ecd3
local _000x1xxx, _0000x1010 = 540, 660
local _01110x = new(_b51454({112, 68, 87, 91, 83}, 54), {Size = UDim2.fromOffset(_000x1xxx, _0000x1010),
Position = UDim2.new(0.5, -_000x1xxx/2, 0.5, -_0000x1010/2 + 20),
-- 11100001101001001001101100
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 10}, _11010x1)
-- 1100000010010011000000011100100110
corner(_01110x, 22)
grad(_01110x, Color3.fromRGB(14, 8, 28), Color3.fromRGB(2, 1, 6), 90)
dropShadow(_01110x, 22, 22, 0.7)
-- 11011011011011110111010101110101100100100111011
local _x11xx0101x = new(_b51454({213, 225, 242, 254, 246}, 147), {Size = UDim2.new(1, 16, 1, 16),
Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.5,
-- 0xf8 0x5c 0x0e 0xf5
BorderSizePixel = 0, ZIndex = 9}, _01110x)
-- 1101110000111010101111000101110000000100101110110000001010
corner(_x11xx0101x, 26)
new(_b51454({103, 86, 75, 71, 127, 82, 81, 86, 95}, 51), {Size = UDim2.new(1, 0, 0, 26),
Position = UDim2.fromOffset(0, 20), BackgroundTransparency = 1,
-- 0xf7 0x76 0xdc
Text = _b51454({152, 139, 156, 135, 136, 135, 141, 143, 154, 135, 129, 128}, 206), Font = Enum.Font.GothamBlack,
-- 0x9f 0x50 0xab 0xd9 0xcf
TextSize = 21, TextColor3 = Theme.neon, ZIndex = 12}, _01110x)
new(_b51454({179, 130, 159, 147, 171, 134, 133, 130, 139}, 231), {Size = UDim2.new(1, -40, 0, 16),
Position = UDim2.fromOffset(20, 48), BackgroundTransparency = 1,
Text = _b51454({4, 39, 63, 112, 33, 37, 57, 51, 59, 112, 35, 36, 53, 32, 35, 112, 178, 208, 196, 112, 36, 49, 59, 53, 35, 112, 49, 50, 63, 37, 36, 112, 49, 112, 61, 57, 62, 37, 36, 53, 126}, 80),
-- 1964e446bfed4f36b33256ca2d4a6070c
Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = Theme.muted, ZIndex = 12}, _01110x)


-- e9f438a1cd308ca6581a3d8394acb5d7885df49c011857afc
local _xx1xxxx1 = new(_b51454({53, 1, 18, 30, 22}, 115), {Size = UDim2.new(1, -50, 0, 240),
Position = UDim2.fromOffset(25, 76), BackgroundColor3 = Theme.panel,
-- 1111010101101011101110011011110100011111011
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, _01110x)
-- 1011011110000110001010010101101110100010111
corner(_xx1xxxx1, 12)
local _0001xx0xx = stroke(_xx1xxxx1, Theme.strokeSoft, 1.4, 0.4)
-- 010011011110101001111010010000010101101110101110110101010010
grad(_xx1xxxx1, Color3.fromRGB(28, 16, 52), Theme.panel, 90)
local _xx1xxx11xx = new(_b51454({212, 224, 243, 255, 247}, 146), {Size = UDim2.fromOffset(30, 30),
-- 0001111001111010111001001111000111000001101
Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,
BorderSizePixel = 0, ZIndex = 13}, _xx1xxxx1)
-- 0000001110101001101100111
corner(_xx1xxx11xx, 15)
-- 0xca 0xef 0x33 0x66
local _01x011 = new(_b51454({162, 147, 142, 130, 186, 151, 148, 147, 154}, 246), {Size = UDim2.fromScale(1, 1),
-- 0x41 0x4e 0xf3 0x80 0x9c 0x20
BackgroundTransparency = 1, Text = _b51454({68}, 117), Font = Enum.Font.GothamBlack,
-- 0x1f 0xe3 0x8b
TextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, _xx1xxx11xx)
new(_b51454({140, 189, 160, 172, 148, 185, 186, 189, 180}, 216), {Size = UDim2.new(1, -58, 0, 20),
Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
-- 01100010110011001100111111
Text = _b51454({198, 195, 197, 194, 172, 200, 197, 223, 207, 195, 222, 200, 172, 167, 172, 218, 201, 222, 197, 202, 213, 172, 217, 223, 201, 222, 194, 205, 193, 201}, 140), Font = Enum.Font.GothamBlack,
-- 0xac 0x66 0x0f 0xd2 0x93 0x9c
TextSize = 13, TextColor3 = Theme.text,
-- 00111001100010101010110010000100111010110111001111000
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, _xx1xxxx1)
new(_b51454({89, 104, 117, 121, 65, 108, 111, 104, 97}, 13), {Size = UDim2.new(1, -30, 0, 46),
-- 1011010101110100001111000100011
Position = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,
Text = _b51454({63, 56, 32, 87, 35, 56, 77, 125, 87, 87, 70, 89, 87, 87, 52, 24, 7, 14, 87, 3, 31, 18, 87, 30, 25, 1, 30, 3, 18, 87, 21, 18, 27, 24, 0, 87, 22, 25, 19, 87, 29, 24, 30, 25, 87, 3, 31, 18, 87, 4, 18, 5, 1, 18, 5, 125, 87, 87, 69, 89, 87, 87, 35, 14, 7, 18, 87, 14, 24, 2, 5, 87, 51, 30, 4, 20, 24, 5, 19, 87, 2, 4, 18, 5, 25, 22, 26, 18, 87, 21, 18, 27, 24, 0, 125, 87, 87, 68, 89, 87, 87, 52, 27, 30, 20, 28, 87, 33, 50, 37, 62, 49, 46, 87, 149, 247, 227, 87, 0, 18, 87, 20, 31, 18, 20, 28, 87, 3, 31, 18, 87, 16, 2, 30, 27, 19, 87, 26, 18, 26, 21, 18, 5, 4, 31, 30, 7, 87, 22, 2, 3, 24, 26, 22, 3, 30, 20, 22, 27, 27, 14}, 119),
-- 37e38e14752364acdd95f7bf5a838f2e78f
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,
-- 100101000000010101011011
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
-- 0xd3 0xb7 0x7c 0xd1 0x66
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _xx1xxxx1)
local _1xx0000101 = new(_b51454({165, 148, 137, 133, 179, 132, 133, 133, 158, 159}, 241), {Size = UDim2.new(1, -32, 0, 30),
Position = UDim2.fromOffset(16, 98), BackgroundColor3 = Theme.neon,
-- 011001111011000101010100001001000110110010
Text = _b51454({234, 133, 142, 141, 58, 58, 89, 85, 74, 67, 58, 83, 84, 76, 83, 78, 95, 58, 86, 83, 84, 81}, 26), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Color3.new(1,1,1), AutoButtonColor = false,
-- c07ef1ed7085bb24668ec0f9f77f696f71f778a0
BorderSizePixel = 0, ZIndex = 13}, _xx1xxxx1)
corner(_1xx0000101, 8)
-- 01011001010111100110101100010010111011011000110101110010100
grad(_1xx0000101, Theme.neon, Theme.accent3, 0)
-- 001111111010111011000001101000011100111
local _0x11011 = new(_b51454({69, 116, 105, 101, 83, 126, 105}, 17), {Size = UDim2.new(1, -130, 0, 30),
Position = UDim2.fromOffset(16, 136), BackgroundColor3 = Theme.panel2,
BorderSizePixel = 0, Text = _b51454({}, 0), PlaceholderText = _b51454({216, 213, 207, 223, 211, 206, 216, 156, 201, 207, 217, 206, 210, 221, 209, 217, 94, 60, 26}, 188),
-- 1001001010011011110100000100111
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
-- 6bb6b6400cde3928194429b659b012c6a8265b9f72a1b0
TextColor3 = Theme.text, ClearTextOnFocus = false, ZIndex = 50}, _xx1xxxx1)
corner(_0x11011, 8)
stroke(_0x11011, Theme.strokeSoft, 1.2)
-- 00001101110011000000010011000001100001010110
local _1xxx11x0xx = new(_b51454({203, 250, 231, 235, 221, 234, 235, 235, 240, 241}, 159), {Size = UDim2.fromOffset(100, 30),
Position = UDim2.new(1, -114, 0, 136), BackgroundColor3 = Theme.neon,
-- 1111000010101110011110000010101011001000000010001010111010
Text = _b51454({232, 251, 236, 247, 248, 231}, 190), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Color3.new(1,1,1), AutoButtonColor = false, ZIndex = 13}, _xx1xxxx1)
corner(_1xxx11x0xx, 8)
grad(_1xxx11x0xx, Theme.neon, Theme.accent3, 0)
-- 01101111010011010001001010000100001110101100011001
local _1xxxxx1x1 = new(_b51454({49, 0, 29, 17, 41, 4, 7, 0, 9}, 101), {Size = UDim2.new(1, -32, 0, 56),
-- 0xa8 0x45 0xea
Position = UDim2.fromOffset(16, 174), BackgroundTransparency = 1,
-- 98ed18f4ad02c083c0eff1c2ec8590fc00de5daa6b7394b6c8478f
Text = _b51454({}, 0), Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
-- 0x0a 0x14 0x27
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _xx1xxxx1)


-- 10010010000011010101001111101010100000100000
local _xx1111 = new(_b51454({79, 123, 104, 100, 108}, 9), {Size = UDim2.new(1, -50, 0, 185),
-- 13aff2aef0d71cbfb4012b57e
Position = UDim2.fromOffset(25, 326), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 12}, _01110x)
-- 784bfd89be7762bf717f02d56181db9bd57e161a23724
corner(_xx1111, 12)
local _010010x = stroke(_xx1111, Theme.strokeSoft, 1.4, 0.4)
grad(_xx1111, Color3.fromRGB(28, 16, 52), Theme.panel, 90)
-- 4b7fccc51fa3e814ee7e792890f85fae62
local _100110 = new(_b51454({197, 241, 226, 238, 230}, 131), {Size = UDim2.fromOffset(30, 30),
-- 1d764362123c5b335101be8fa88a2c25159
Position = UDim2.fromOffset(14, 14), BackgroundColor3 = Theme.neon,
-- 45ad6110682c2b0736a7054f94
BorderSizePixel = 0, ZIndex = 13}, _xx1111)
corner(_100110, 15)
-- e9e4c10f0fe23bd07994584d159370f1
local _x0xxxx1x = new(_b51454({163, 146, 143, 131, 187, 150, 149, 146, 155}, 247), {Size = UDim2.fromScale(1, 1),
-- d89732cb0bf62ec2b4bdf815c3ecbd986246
BackgroundTransparency = 1, Text = _b51454({150}, 164), Font = Enum.Font.GothamBlack,
-- 00111011000101001100111001101000110010000001
TextSize = 14, TextColor3 = Color3.new(1,1,1), ZIndex = 14}, _100110)
new(_b51454({105, 88, 69, 73, 113, 92, 95, 88, 81}, 61), {Size = UDim2.new(1, -58, 0, 20),
-- 0x34 0xab 0x68 0xb0 0xf9 0x12
Position = UDim2.fromOffset(52, 16), BackgroundTransparency = 1,
Text = _b51454({77, 89, 88, 68, 67, 94, 69, 86, 73, 44, 88, 68, 73, 44, 77, 92, 92}, 12), Font = Enum.Font.GothamBlack,
TextSize = 13, TextColor3 = Theme.text,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 13}, _xx1111)
-- 0x3b 0x1e 0x7a
new(_b51454({53, 4, 25, 21, 45, 0, 3, 4, 13}, 97), {Size = UDim2.new(1, -30, 0, 60),
Position = UDim2.fromOffset(16, 48), BackgroundTransparency = 1,
-- 00100011011100010010111011110011110000111110100010101110010
Text = _b51454({168, 175, 183, 192, 180, 175, 218, 234, 192, 192, 209, 206, 192, 192, 163, 140, 137, 131, 139, 192, 192, 163, 175, 176, 185, 192, 161, 181, 180, 168, 192, 172, 169, 174, 171, 192, 192, 130, 133, 140, 143, 151, 234, 192, 192, 210, 206, 192, 192, 175, 144, 133, 142, 192, 148, 136, 133, 192, 140, 137, 142, 139, 192, 2, 102, 114, 192, 131, 140, 137, 131, 139, 192, 161, 149, 148, 136, 143, 146, 137, 154, 133, 234, 192, 192, 211, 206, 192, 192, 164, 137, 147, 131, 143, 146, 132, 192, 151, 137, 140, 140, 192, 131, 143, 142, 134, 137, 146, 141, 192, 2, 96, 116, 192, 148, 136, 137, 147, 192, 147, 131, 146, 133, 133, 142, 192, 129, 149, 148, 143, 205, 131, 140, 143, 147, 133, 147}, 224),
-- 64f0c7232a4d17400cafb1dac3004cfb6fe2b
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.accent2,
-- 00100100110001100110010101100001100001100001010101011101010
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 13}, _xx1111)
-- 111111011010101100000110100010000011110111
local _xx1x0xxx = new(_b51454({227, 210, 207, 195, 245, 194, 195, 195, 216, 217}, 183), {Size = UDim2.new(1, -32, 0, 36),
Position = UDim2.fromOffset(16, 122), BackgroundColor3 = Theme.neon,
Text = _b51454({36, 75, 64, 70, 244, 244, 152, 155, 151, 159, 145, 144, 244, 54, 84, 64, 244, 183, 187, 185, 164, 184, 177, 160, 177, 244, 167, 160, 177, 164, 244, 229, 244, 178, 189, 166, 167, 160}, 212), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Color3.new(1, 1, 1), AutoButtonColor = false,
BorderSizePixel = 0, ZIndex = 13}, _xx1111)
corner(_xx1x0xxx, 8)
-- 0xc8 0x82 0x67 0xba 0xfa 0x46
local _xx1x0xxx0x = grad(_xx1x0xxx, Color3.new(0.35, 0.35, 0.35), Color3.new(0.2, 0.2, 0.2), 0)
-- 75134efa9e5d6fd62743e0120592fdcf978900a469d6357cee9887
_xx1x0xxx.Active = false
_xx1111.BackgroundTransparency = 0.55
-- 0x12 0xef 0x41 0x79 0xf8 0xb0
_010010x.Transparency = 0.75
local _000x11x1 = false
-- 0x4c 0x5d 0x43 0xc1 0x9e
local _1x0101x1x1 = nil
-- f9451dd397a390590719b482f605942d06be857c807a45d35cbe5a79
local function _10x0x0(_11x0x10x)
_000x11x1 = true
-- 1110000100000100110000111000111
_1x0101x1x1 = _11x0x10x
-- d00d15f018b8e53dec63e99dcf038edb795ee95
_xx1111.BackgroundTransparency = 0.15
-- 0xaa 0xdc 0x9f 0x2f 0xac
_010010x.Transparency = 0.4
-- 0xf9 0xfa 0xe3 0x37
_xx1x0xxx.Active = true
_xx1x0xxx.Text = _b51454({71, 40, 35, 39, 151, 151, 244, 248, 231, 238, 151, 246, 226, 227, 255, 151, 251, 254, 249, 252}, 183)
_xx1x0xxx.BackgroundColor3 = Theme.neon
-- 01110100100001100101100001010111010111
_xx1x0xxx0x.Color = ColorSequence.new(Theme.neon, Theme.accent3)
end
-- 0x2a 0x70 0x7c
local _xx00x0 = new(_b51454({140, 184, 171, 167, 175}, 202), {Size = UDim2.new(1, -50, 0, 56),
-- 1adf46308ae31d6b0ce33946c9e085bc3abde379bc4c47
Position = UDim2.fromOffset(25, 521), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 12}, _01110x)
-- 0x61 0x74 0xa6 0x23 0x1c 0x92
corner(_xx00x0, 10)
-- 1010010111110011111001110101111000000110100
local _x0xxxx101 = stroke(_xx00x0, Theme.strokeSoft, 1, 0.5)
local _1xx101 = new(_b51454({180, 128, 147, 159, 151}, 242), {Size = UDim2.fromOffset(10, 10),
-- 111100010001100100101101000111010011001111100011
Position = UDim2.fromOffset(14, 23), BackgroundColor3 = Theme.gold,
-- 0x34 0x5f 0x93 0xa2
BorderSizePixel = 0, ZIndex = 13}, _xx00x0)
-- 0x47 0x2e 0x22 0xe1 0xd4
corner(_1xx101, 5)
-- da08ddd335dfc4aaa7c48c17d81ac277ccf5904
local _111x000 = new(_b51454({140, 189, 160, 172, 148, 185, 186, 189, 180}, 216), {Size = UDim2.new(1, -40, 1, -10),
-- 0x24 0x1c 0xeb 0x90 0x45
Position = UDim2.fromOffset(32, 5), BackgroundTransparency = 1,
-- 84a4c68ab0f374dd687546cc4f275aa2819e8c3e
Text = _b51454({215, 240, 225, 244, 164, 181, 190, 164, 231, 235, 244, 253, 164, 240, 236, 225, 164, 237, 234, 242, 237, 240, 225, 168, 164, 238, 235, 237, 234, 164, 192, 237, 247, 231, 235, 246, 224, 168, 164, 240, 236, 225, 234, 164, 242, 225, 246, 237, 226, 253, 164, 253, 235, 241, 246, 164, 241, 247, 225, 246, 234, 229, 233, 225, 170}, 132),
Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = Theme.gold,
TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center,
-- e638026f833fd202b921c8cac7a17b490955b4aa21ad6a6c8
TextWrapped = true, ZIndex = 13}, _xx00x0)
local function _11x1x11(_100x0, _10x010)
_111x000.Text = _100x0
-- 00100010010000001110010101110010001100010100001010010
_111x000.TextColor3 = _10x010 or Theme.gold
_1xx101.BackgroundColor3 = _10x010 or Theme.gold
_0x0xx0:Create(_x0xxxx101, TweenInfo.new(0.2), {Color = _10x010 or Theme.strokeSoft}):Play()
-- 46f60f5c91d8906c4eee09d6cf3ba3918de5
end
local _xxx0011x0 = new(_b51454({196, 240, 227, 239, 231}, 130), {Size = UDim2.new(1, -50, 0, 5),
-- 3c309332cd1751b7f58694fad35d1fcdfe
Position = UDim2.fromOffset(25, 585), BackgroundColor3 = Theme.panel2,
BorderSizePixel = 0, ZIndex = 12}, _01110x)
corner(_xxx0011x0, 3)
local _xx001001 = new(_b51454({218, 238, 253, 241, 249}, 156), {Size = UDim2.new(0, 0, 1, 0),
BackgroundColor3 = Theme.success, BorderSizePixel = 0, ZIndex = 13}, _xxx0011x0)
corner(_xx001001, 3)
-- f729d6a4d10cf03648cb1cc69890ab836055caf4a0
grad(_xx001001, Theme.neon, Theme.success, 0)
-- 0x87 0xeb 0x12 0xec 0x2c
local _1x1x0xx100 = {done = false, user = nil}
local _0xx1x010x = nil
-- 3d10cfa09be3cb8b0264ea1ebf44002341d8dba449550eb1f
local _1111xx100 = false
-- 0x51 0x00 0x8a 0x16 0x34
_1xx0000101.MouseButton1Click:Connect(function()
-- 10100111011111010011011010101101011111101000111100011110
_001x00x1xx(DISCORD_INVITE)
_0xxxx1(DISCORD_INVITE)
-- 72546f8a74b8d54453d134f4f395a1d29017ceea0e55b25ac89d
_1xx0000101.Text = _b51454({22, 104, 103, 212, 212, 183, 187, 164, 189, 177, 176, 212, 22, 116, 96, 212, 190, 187, 189, 186, 212, 186, 187, 163}, 244)
task.delay(2, function()
if _1xx0000101 and _1xx0000101.Parent then _1xx0000101.Text = _b51454({62, 81, 90, 89, 238, 238, 141, 129, 158, 151, 238, 135, 128, 152, 135, 154, 139, 238, 130, 135, 128, 133}, 206) end
end)
-- 5bf93254bcb2f598c584e0ff58c8
_0x0xx0:Create(_xx001001, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
{Size = UDim2.new(0.25, 0, 1, 0)}):Play()
-- 3c34960e8bec4698b93a6ffcf531cea30ce
_11x1x11(_b51454({224, 199, 223, 192, 221, 204, 137, 202, 198, 217, 192, 204, 205, 135, 137, 227, 198, 192, 199, 137, 221, 193, 204, 137, 218, 204, 219, 223, 204, 219, 133, 137, 221, 193, 204, 199, 137, 221, 208, 217, 204, 137, 208, 198, 220, 219, 137, 220, 218, 204, 219, 199, 200, 196, 204, 137, 200, 199, 205, 137, 202, 197, 192, 202, 194, 137, 255, 236, 251, 224, 239, 240, 135}, 169), Theme.accent2)
-- 0x3e 0x3f 0x0a 0x0a 0xa9 0xfd
end)
_1xxx11x0xx.MouseButton1Click:Connect(function()
if _000x11x1 then return end
local _x1x0x = (_0x11011.Text or _b51454({}, 0)):gsub(_b51454({69, 62, 104, 48}, 27), _b51454({}, 0)):gsub(_b51454({157, 203, 147, 156}, 184), _b51454({}, 0))
-- adf746e1dc5ef6a4ea7b1214f63201990354e
if _x1x0x == _b51454({}, 0) then
-- 11011010010010000111101111100111001
_1xxxxx1x1.Text = _b51454({90, 34, 24, 152, 221, 214, 204, 221, 202, 152, 193, 215, 205, 202, 152, 252, 209, 203, 219, 215, 202, 220, 152, 205, 203, 221, 202, 214, 217, 213, 221, 152, 222, 209, 202, 203, 204}, 184)
_1xxxxx1x1.TextColor3 = Theme.danger
-- 0111011111011000000001000001101010001101110010111
return
-- 11000100000001000000010010100101000010011101
end
_1xxx11x0xx.Text = _b51454({205, 198, 203, 205, 197, 199, 192, 201, 108, 14, 40}, 142)
-- 0x04 0xcf 0xb8 0xc0 0x87 0xcf
_1xxx11x0xx.Active = false
-- 7ef657b0529800a8cf1800570b6d696d64cc0d65fb2289c474
_1xxxxx1x1.Text = _b51454({58, 54, 55, 45, 56, 58, 45, 48, 55, 62, 121, 42, 60, 43, 47, 60, 43, 187, 217, 255}, 89)
-- 010010101011100010110011001011110111010100110
_1xxxxx1x1.TextColor3 = Theme.muted
task.spawn(function()
-- 11100111010011001101101100010100110110010010
local _xx010x, _xx1x11011 = checkGuildIn(_x1x0x)
_1xxx11x0xx.Active = true
if _xx010x == true then
_1xxx11x0xx.Text = _b51454({237, 147, 156, 47, 89, 74, 93, 70, 73, 70, 74, 75}, 15)
_1xxx11x0xx.BackgroundColor3 = Theme.success
_1xx0000101.Active = false
-- 1010110010110011101001010010110110
_0x11011.Active = false
_1xxxxx1x1.Text = _b51454({131, 253, 242, 65, 37, 8, 18, 2, 14, 19, 5, 65, 20, 18, 4, 19, 65, 33}, 97) .. _x1x0x .. _b51454({123, 61, 52, 46, 53, 63, 123, 50, 53, 123, 47, 51, 62, 123, 40, 62, 41, 45, 62, 41, 123, 185, 219, 207, 123, 40, 47, 62, 43, 123, 105, 123, 46, 53, 55, 52, 56, 48, 62, 63}, 91)
-- 0xf9 0x19 0xf2 0x7f 0xb2 0xb3
_1xxxxx1x1.TextColor3 = Theme.success
-- 0x3a 0xf9 0x1c 0x7d 0x01 0xa4
_xx1xxx11xx.BackgroundColor3 = Theme.success
-- 101100111110010101100011
_01x011.Text = _b51454({253, 131, 140}, 31)
_0x0xx0:Create(_0001xx0xx, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
_0x0xx0:Create(_xx001001, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
{Size = UDim2.new(0.5, 0, 1, 0)}):Play()
-- 11001111011100001110111100000
_10x0x0(_x1x0x)
-- 9cefef65409ce0179b267b31e08f
_11x1x11(_b51454({202, 180, 187, 8, 123, 92, 77, 88, 8, 25, 8, 76, 71, 70, 77, 6, 8, 107, 71, 88, 81, 8, 92, 64, 77, 8, 73, 93, 92, 64, 8, 68, 65, 70, 67, 8, 74, 77, 68, 71, 95, 8, 73, 70, 76, 8, 73, 93, 92, 64, 71, 90, 65, 82, 77, 8, 92, 64, 77, 8, 73, 88, 88, 6}, 40), Theme.accent2)
-- 0x15 0xe0 0x24 0xd8 0xba 0x9c
elseif _xx010x == false then
-- 0xa2 0x1b 0x94 0x69
_1xxx11x0xx.Text = _b51454({24, 11, 28, 7, 8, 23}, 78)
_1xxxxx1x1.Text = _b51454({225, 159, 148, 35, 67}, 3) .. _x1x0x .. _b51454({75, 5, 4, 31, 75, 2, 5, 75, 31, 3, 14, 75, 24, 14, 25, 29, 14, 25, 75, 137, 235, 255, 75, 1, 4, 2, 5, 75, 13, 2, 25, 24, 31, 71, 75, 31, 3, 14, 5, 75, 25, 14, 31, 25, 18}, 107)
-- 1001011111010001101111011000000101
_1xxxxx1x1.TextColor3 = Theme.danger
-- 1011010001011000100101101101000000001111011011110
_11x1x11(_b51454({218, 230, 239, 250, 174, 202, 231, 253, 237, 225, 252, 234, 174, 251, 253, 235, 252, 224, 239, 227, 235, 174, 231, 253, 224, 169, 250, 174, 231, 224, 174, 250, 230, 235, 174, 253, 235, 252, 248, 235, 252, 174, 247, 235, 250, 160, 174, 205, 225, 254, 247, 174, 250, 230, 235, 174, 231, 224, 248, 231, 250, 235, 174, 239, 224, 234, 174, 228, 225, 231, 224, 160}, 142), Theme.danger)
else
-- 68af7c3d41e8beff35b86cc7b2fcf58a09e874487d3e66128e23affc6b4
_1xxx11x0xx.Text = _b51454({239, 252, 235, 240, 255, 224}, 185)
-- 05023a87bb1e8a8b7e01e3088f7fb86b6ab236853f2081175
local _x0010x11xx = (type(info) == _b51454({40, 61, 62, 48, 57}, 92) and info.err) or tostring(info)
-- 3389a1e9c54165380766f7c8f53f7babf1169a250481b17
local _1xx11x0 = (type(info) == _b51454({138, 159, 156, 146, 155}, 254) and info.debug) and info.debug or {}
local _11x1000 = table.concat(_1xx11x0, _b51454({129}, 139))
-- 0xb7 0x27 0x41 0xcb 0xf1 0x90
print(_b51454({198, 207, 216, 220, 205, 216, 207, 192, 189, 218, 232, 244, 241, 249, 189, 254, 245, 248, 254, 246, 189, 251, 252, 244, 241, 248, 249, 167, 189}, 157) .. _x0010x11xx)
print(_b51454({175, 166, 177, 181, 164, 177, 166, 169, 212, 176, 157, 149, 147, 154, 155, 135, 128, 157, 151, 212, 155, 129, 128, 132, 129, 128, 206, 254}, 244) .. _11x1000)
_1xxxxx1x1.Text = _b51454({235, 147, 169, 41}, 9) .. _x0010x11xx
_1xxxxx1x1.TextColor3 = Theme.danger
-- 11000010111011011000000111101110001101101111100000000
_11x1x11(_b51454({248, 202, 214, 211, 219, 159, 220, 215, 218, 220, 212, 159, 217, 222, 214, 211, 218, 219, 145, 159, 252, 211, 214, 220, 212, 159, 252, 240, 239, 230, 159, 251, 250, 253, 234, 248, 159, 222, 209, 219, 159, 204, 218, 209, 219, 159, 203, 208, 159, 204, 203, 222, 217, 217, 145}, 191), Theme.danger)
-- 0x95 0x8e 0x44 0xc7 0x98
notify(_b51454({0, 50, 46, 43, 35, 103, 36, 47, 34, 36, 44, 103, 33, 38, 46, 43, 34, 35}, 71),
_x0010x11xx .. _b51454({35, 35, 106, 69, 64, 74, 66, 9, 106, 102, 121, 112, 9, 109, 108, 107, 124, 110, 9, 72, 71, 77, 9, 89, 72, 90, 93, 76, 9, 93, 65, 76, 9, 93, 76, 81, 93, 9, 93, 70, 9, 90, 93, 72, 79, 79, 7}, 41),
-- 17d11327cc0b491f78742ef82deefacf4e
Theme.danger, 30, _11x1000)
-- e412adffa68dc771d6fbcef842921c7833735806c6d26e6096f9
end
-- 0xa5 0x2b 0x4a 0x7c
end)
-- 70e6040063a85bac0523428acf64eaf8
end)
-- 65f325fbcfd8810c724a8c725feb780a39259de42ef
_xx1x0xxx.MouseButton1Click:Connect(function()
-- 4546bb31dbc523178152bcebb
if not _000x11x1 then
_11x1x11(_b51454({61, 17, 19, 14, 18, 27, 10, 27, 94, 13, 10, 27, 14, 94, 79, 94, 28, 27, 24, 17, 12, 27, 94, 31, 11, 10, 22, 17, 12, 23, 4, 23, 16, 25, 80}, 126), Theme.danger)
return
-- 84d1d0bdf1f4c1881700e4adc88
end
local _xx11x11 = _b51454({110, 108, 110, 67}, 28) .. tostring(_00xx1xx.UserId) .. _b51454({91}, 4) ..
-- 0x6a 0x8e 0x37 0xce 0x0a
tostring(math.random(100000, 999999)) .. _b51454({136}, 215) ..
tostring(math.floor(tick() * 1000))
local _x1100x01x1 = KEY_API .. _b51454({15, 79, 65, 85, 84, 72, 15, 83, 84, 65, 82, 84, 31, 83, 69, 83, 83, 73, 79, 78, 29}, 32) .. _xx11x11 ..
_b51454({107, 56, 62, 40, 63, 35, 44, 32, 40, 112}, 77) .. _x0011x1111:UrlEncode(_1x0101x1x1 or _b51454({}, 0))
-- 1110000000001101111010010010100010110
_001x00x1xx(_x1100x01x1)
_0xxxx1(_x1100x01x1)
_xx1x0xxx.Text = _b51454({114, 12, 3, 176, 176, 211, 223, 192, 217, 213, 212, 176, 114, 16, 4, 176, 223, 192, 213, 222, 176, 217, 222, 176, 210, 194, 223, 199, 195, 213, 194}, 144)
task.delay(2.5, function()
-- 0xb7 0x19 0x6a 0xc7
if _xx1x0xxx and _xx1x0xxx.Parent then _xx1x0xxx.Text = _b51454({224, 143, 132, 128, 48, 48, 83, 95, 64, 73, 48, 81, 69, 68, 88, 48, 92, 89, 94, 91}, 16) end
-- 0x2b 0xe0 0x03 0x3d 0x05 0x10
end)
_11x1x11(_b51454({108, 88, 89, 69, 13, 65, 68, 67, 70, 13, 78, 66, 93, 68, 72, 73, 12, 13, 98, 93, 72, 67, 13, 68, 89, 1, 13, 76, 88, 89, 69, 66, 95, 68, 87, 72, 1, 13, 89, 69, 72, 67, 13, 90, 76, 68, 89, 13, 69, 72, 95, 72, 3}, 45), Theme.accent2)
-- 010001011010111101110111001101011100111101
_0xx1x010x = _xx11x11
-- 6219bdf1f3ef9e2e25b6fb96619959
if not _1111xx100 then
_1111xx100 = true
task.spawn(function()
-- 00000010001100100010100111010100011
while _1111xx100 and _0xx1x010x do
task.wait(2)
if not _1111xx100 or not _0xx1x010x then break end
local _11xx110xx1 = postJSON(_b51454({157, 221, 211, 199, 198, 218, 157, 194, 221, 222, 222}, 178), {session = _0xx1x010x, robloxId = tostring(_00xx1xx.UserId)})
-- 001100110101001001001100110111101110000110101010011110
if not _11xx110xx1 then
-- f6dfe5ce9c06aa3c3a5e1f70df6e07555b728fcb57504da
_11x1x11(_b51454({22, 61, 44, 47, 55, 42, 51, 120, 48, 49, 59, 59, 45, 40, 120, 186, 216, 204, 120, 42, 61, 44, 42, 33, 49, 54, 63, 186, 216, 254}, 88), Theme.danger)
-- 0x12 0x95 0x76
elseif _11xx110xx1.status == _b51454({82, 86}, 61) and _11xx110xx1.key then
-- 11000001101100110000111111001011001111011100101101000000
SESSION_KEY = _11xx110xx1.key
-- 18c38c25ca68105b43874dc4015c
DISCORD_USERNAME = _11xx110xx1.discordName or _1x0101x1x1
-- 0x7c 0xc3 0x6d 0xdc 0x1f 0xbf
DISCORD_ID = _11xx110xx1.discordId
_01x0010xx0({
key = SESSION_KEY,
robloxId = tostring(_00xx1xx.UserId),
-- 0acd4438909f0bf4220141c1ee7177298a69
discordUsername = DISCORD_USERNAME,
-- 0x54 0xa7 0x96
[_b51454({136, 133, 159, 143, 131, 158, 136, 165, 136}, 236)] = DISCORD_ID,
-- 42977a583ffbbde6fc2e23a19e9
savedAt = os.time(),
-- 0xad 0x80 0x81 0xee
})
-- 652b9e9dbd48bb327dd657458c62605a9645919c6cab04186e205dd82
_100110.BackgroundColor3 = Theme.success
_x0xxxx1x.Text = _b51454({239, 145, 158}, 13)
-- 1011000000110010000101100100
_0x0xx0:Create(_010010x, TweenInfo.new(0.35), {Color = Theme.success, Transparency = 0}):Play()
-- 0x7d 0xc1 0x9b 0x15
_xx1x0xxx.Text = _b51454({152, 230, 233, 90, 90, 44, 63, 40, 51, 60, 51, 63, 62}, 122)
-- 011111101101110100000111110110111111110101
_xx1x0xxx.BackgroundColor3 = Theme.success
_xx1x0xxx0x.Color = ColorSequence.new(Theme.success, Theme.accent)
-- 5ee5f041a033853787427dc8
_11x1x11(_b51454({245, 139, 132, 55, 65, 114, 101, 126, 113, 126, 114, 115, 54, 55, 91, 120, 118, 115, 126, 121, 112, 245, 151, 177}, 23), Theme.success)
-- 0x29 0x3a 0xd9 0x90
_0x0xx0:Create(_xx001001, TweenInfo.new(0.5, Enum.EasingStyle.Quart),
{Size = UDim2.new(1, 0, 1, 0)}):Play()
_1111xx100 = false
-- 0x25 0xf7 0x53 0x65 0x36 0x07
task.wait(0.8)
-- 1101010011110100100010101100101001101001001111
_0x0xx0:Create(_01110x, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- 00110101100010011111000110101010111000000011010
{Position = UDim2.new(0.5, -_000x1xxx/2, 0.5, -_0000x1010/2 - 30), BackgroundTransparency = 1}):Play()
-- 0101010010001000110000110001001101001100000001010001
task.wait(0.35)
_11010x1:Destroy()
_1x1x0xx100.done = true
_1x1x0xx100.user = {
key = _11xx110xx1.key,
[_b51454({205, 203, 221, 202, 214, 217, 213, 221}, 184)] = _11xx110xx1.username or _b51454({29, 27, 13, 26}, 104),
-- 0x0d 0x6b 0x7c
[_b51454({97, 108, 118, 117, 105, 100, 124, 75, 100, 104, 96}, 5)] = _11xx110xx1.displayName or _11xx110xx1.username or _b51454({112, 67, 84, 79, 64, 79, 67, 66}, 38),
[_b51454({129, 150, 129, 148, 129, 146}, 224)] = _11xx110xx1.avatar or _b51454({}, 0),
[_b51454({147, 158, 132, 148, 152, 133, 147, 190, 147}, 247)] = _11xx110xx1.discordId or _b51454({}, 0),
discordName = DISCORD_USERNAME or _b51454({}, 0),
-- 11000111110011000110000000101000110000110001
[_b51454({214, 197, 202, 207}, 164)] = _11xx110xx1.rank or nil,
[_b51454({198, 197, 192, 195, 193, 241, 214, 200}, 164)] = _11xx110xx1.badgeUrl or nil,
}
return
-- 870ece57be1649b31dc3869ef43edbbccccad593c8f58cc9c4d0c3895
elseif _11xx110xx1.status == _b51454({167, 178, 185, 179, 190, 185, 176}, 215) then
_1xx101.BackgroundTransparency = 0.3 + math.sin(tick() * 4) * 0.3
-- d06636c2dc3d32bd96b5cd9851d660d6537ae01c14db336b
end
end
end)
end
-- 0x72 0x41 0x01
end)
_01110x.Position = UDim2.new(0.5, -_000x1xxx/2, 0.5, -_0000x1010/2 + 80)
_01110x.BackgroundTransparency = 1
-- 011101010000110000100101001110
_0x0xx0:Create(_01110x, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- ee0d07629f48c14fccb2798bd77a3dc062a13ea0b6ab883de35808ce5
{Position = UDim2.new(0.5, -_000x1xxx/2, 0.5, -_0000x1010/2), BackgroundTransparency = 0}):Play()
while not _1x1x0xx100.done do task.wait(0.2) end
-- 011001110011000000000110001101101011110001101001
return _1x1x0xx100.user
-- 0xc3 0x09 0x23 0x91
end


-- c98644b59ab55b425dd34c37e74a223de84dae03aa
local function verifySession()

-- 0xa7 0x97 0x20 0x72
local function _0xx0x11010(_x0x1xx10x)
-- 0x1a 0x65 0x03 0xab
if not _x0x1xx10x then return nil end
local _x1100x0 = postJSON(_b51454({160, 236, 231, 234, 236, 228}, 143), {robloxId = tostring(_00xx1xx.UserId), key = _x0x1xx10x})
-- 0x5b 0xad 0xc1 0x75
if _x1100x0 and _x1100x0.valid then
-- 1011111111111101100000101110111000111111111100011111
local _00100 = postJSON(_b51454({29, 81, 90, 87, 81, 89, 31, 70, 93, 89, 87, 92}, 50), {robloxId = tostring(_00xx1xx.UserId), key = _x0x1xx10x})
-- 10110100001011011001110001
if _00100 and _00100.authorized == false then
return nil, { reason = _00100.reason or _b51454({60, 61, 57, 45, 44, 48, 55, 42, 49, 34, 61, 60}, 88) }
end
-- 1010101010110111010100111000001
return {
key = _x0x1xx10x,
-- 000011101011010000000100111011010010010010101010
[_b51454({176, 182, 160, 183, 171, 164, 168, 160}, 197)] = _x1100x0.username or _b51454({215, 209, 199, 208}, 162),
-- 0000001001101011101001101101111001101101001010100110110011
[_b51454({101, 104, 114, 113, 109, 96, 120, 79, 96, 108, 100}, 1)] = _x1100x0.displayName or _x1100x0.username or _b51454({240, 195, 212, 207, 192, 207, 195, 194}, 166),
-- e86855f31f456e018b9e5c0a32ead3cd5a7bd168e42a13a
[_b51454({158, 137, 158, 139, 158, 141}, 255)] = _x1100x0.avatar or _b51454({}, 0),
[_b51454({203, 198, 220, 204, 192, 221, 203, 230, 203}, 175)] = _x1100x0.discordId or DISCORD_ID or _b51454({}, 0),
discordName = _x1100x0.discordName or DISCORD_USERNAME or _b51454({}, 0),
-- ef16927facf5f079e5ffef92b
[_b51454({203, 216, 215, 210}, 185)] = _x1100x0.rank or nil,
[_b51454({23, 20, 17, 18, 16, 32, 7, 25}, 117)] = _x1100x0.badgeUrl or nil,
}
-- afb0c1493559ed07cb39a56f3265f903847009683cc7e33a79839eca7
end
-- 0x24 0x3b 0x12 0x08 0x1c
return nil, _x1100x0
-- 10101111101010011100000001001100110111101010101100
end
local _xx1000xx = _x0100()
-- 38ce83f0f0ff24ab9f185a64c9f08eecdda67e657d
if _xx1000xx and _xx1000xx.key then
-- 1010101110010100101010000001010001001111001001
local _11011 = _0xx0x11010(_xx1000xx.key)
-- 00010011010000111111011100010101101011001000100001101001111
if _11011 then
SESSION_KEY = _xx1000xx.key
DISCORD_USERNAME = _xx1000xx.discordUsername or _11011.discordName
DISCORD_ID = _xx1000xx.discordId or _11011.discordId
-- 532ad8d0895ce51681bf8eeee875a4a64c2976
_11011.discordName = _11011.discordName or DISCORD_USERNAME
-- 20d9991db20ce1f0eb9e2ed447
_11011.discordId = _11011.discordId or DISCORD_ID
-- 111000001111001110111001011
print(_b51454({246, 255, 232, 236, 253, 232, 255, 240, 141, 255, 200, 222, 217, 194, 223, 200, 201, 141, 222, 200, 222, 222, 196, 194, 195, 141, 203, 194, 223, 141, 237}, 173) .. tostring(DISCORD_USERNAME or _b51454({4}, 59)))
-- 06b5eb363e191266ba2724e297e06
return _11011, true
else
-- c18485135addccc84923ab2f47359cb20395
_00x110x1()
-- 0x54 0xdd 0x4f 0xdd 0xa5 0xbc
end
end
-- 100100110110100011111000001100011010101
local _10x1x = showKeyPrompt()
-- cc82b54091ab968717aeb972ff4b02c6a2a125c67729c
if _10x1x then
SESSION_KEY = _10x1x.key
-- 0x6d 0x99 0x7d 0x65 0x66
DISCORD_USERNAME = _10x1x.discordName
DISCORD_ID = _10x1x.discordId
-- db5283a5076d9b675be465806502e8f26385a1fd240c7e1a54b15b0159
_01x0010xx0({
-- 0x07 0xf9 0xfc
key = _10x1x.key,
robloxId = tostring(_00xx1xx.UserId),
-- 111100011101011000100100
discordUsername = _10x1x.discordName,
[_b51454({113, 124, 102, 118, 122, 103, 113, 92, 113}, 21)] = _10x1x.discordId,
savedAt = os.time(),
-- bbcff0860e3de24fe4b61a30f0bac4d5e0eb2a0f6b
})
-- 0x1a 0x4e 0x36 0x5b 0xa5
end
-- 01001111001011101100011110111
return _10x1x, false
end

local _x1x0x011x, _xx10x0 = verifySession()
-- d981d09cf7ab7eb820a54d58f7c7ea01248961b3bc0ca49b858639eb1d
if not _x1x0x011x then
-- 0x23 0x53 0xcb 0xbe 0x62
warn(_b51454({46, 39, 48, 52, 37, 48, 39, 40, 85, 62, 16, 12, 85, 3, 16, 7, 28, 19, 28, 22, 20, 1, 28, 26, 27, 85, 19, 20, 28, 25, 16, 17, 91}, 117))
-- 0x71 0xa7 0xa6 0x56 0x7d 0x59
return
-- 0xb2 0x0d 0x1c
end

MY_USER = _x1x0x011x
-- 0x86 0xbe 0x5f 0xa4 0x61
MY_USER.country = _b51454({139, 176, 181, 176, 177, 169, 176}, 222)
MY_USER.countryCode = _b51454({}, 0)
-- 7bf428c42bb5ecee04624a31ad8ab9168c4e6c559a69
MY_USER.connectedAt = tick()
-- 0x0b 0xcb 0x48 0x41 0x0a
MY_USER.userId = _00xx1xx.UserId

-- 0xd1 0xc6 0x87 0x1f 0x5e 0x47
fetchCountry(function(_10011111, _x1110000xx)
-- 001010111100110011000000011000100000010111011
MY_USER.country = _10011111 or _b51454({0, 59, 62, 59, 58, 34, 59}, 85)
MY_USER.countryCode = _x1110000xx or _b51454({}, 0)
end)

-- 0xe7 0x79 0x0c 0xcf 0x61 0xc8

-- c0a3896994cb4fc99309a8844e8c248824133
showVerifiedScreen(_x1x0x011x)


-- 0101100100000001101110011
function makeDraggable(_11xx1101, _11xx100)
local _x01xx0x1, _x1xx1, _1x000x1x = false, nil, nil
-- a3fcb64e1de66b3109f64c012b31536dc018004c34
_11xx100.InputBegan:Connect(function(_1111110)
-- ba289445c17626dc3f2179b3ab3ccdf42bd87d8f291ce0
if _1111110.UserInputType == Enum.UserInputType.MouseButton1 or _1111110.UserInputType == Enum.UserInputType.Touch then
-- 315c65b347e9eabd7be26256a0b95c92c289a914d534
_x01xx0x1, _x1xx1, _1x000x1x = true, _1111110.Position, _11xx1101.Position
end
-- 0x75 0x1d 0x70 0xaa 0xfb
end)
-- 0xa5 0x2c 0xa3 0xda
_1x0x1x.InputChanged:Connect(function(_xxx111)
if not _x01xx0x1 then return end
if _xxx111.UserInputType == Enum.UserInputType.MouseMovement or _xxx111.UserInputType == Enum.UserInputType.Touch then
-- 923dc26483c2d72641d1b4a2b0d5805b67e0b1bc
local _x00001110 = _xxx111.Position - _x1xx1
-- 100100111010111101001101110101010010100110001100111110001
_11xx1101.Position = UDim2.new(_1x000x1x.X.Scale, _1x000x1x.X.Offset + _x00001110.X, _1x000x1x.Y.Scale, _1x000x1x.Y.Offset + _x00001110.Y)
end
end)
-- 11001110100110101100011110001101111110111
_1x0x1x.InputEnded:Connect(function(_0x01xx0101)
-- 0x36 0xc7 0x58 0xf3 0x31
if _0x01xx0101.UserInputType == Enum.UserInputType.MouseButton1 or _0x01xx0101.UserInputType == Enum.UserInputType.Touch then
_x01xx0x1 = false
-- a3fdfb432b4ca8b7d8da9e2a728e03
end
end)
-- 100101110001110101100100110010111
end

-- 0256d8c7dd9e2a95c289798e4eab07f30e6c96f74
function makeResizable(_0x1xxx0x, _10x11x11)
_10x11x11 = _10x11x11 or {}
-- a00bdd018754a64adbe6fe5956
local _1x0000, _0101xx = _10x11x11.minW or 300, _10x11x11.minH or 200
local _1xx1x = _10x11x11.corners or {_b51454({154, 138}, 248), _b51454({66, 68}, 54), _b51454({139, 133}, 233), _b51454({183, 175}, 195)}
-- ac22f8a419965ebd41767eb32af8975a48
local _0xxx1 = _10x11x11.gripSize or 14
-- 0x2a 0xd6 0xcf
local _xx11x0x11x = (_0x1xxx0x.ZIndex or 1) + 500
-- 001011110111101101110010001111010110110110110101101000
_0x1xxx0x.ClipsDescendants = true
for _10x000, _00101 in ipairs(_1xx1x) do
-- 0000110000110001110100110000000010
local _010011x0x = new(_b51454({245, 193, 210, 222, 214}, 179), {Name = _b51454({254, 201, 223, 197, 214, 201, 243}, 172) .. _00101, Size = UDim2.fromOffset(_0xxx1, _0xxx1),
-- 9a2e468479bb65bad4cd74bed78fd8fd43d6a44ab74fbe
BackgroundTransparency = 1, ZIndex = _xx11x0x11x, Active = true}, _0x1xxx0x)
if _00101 == _b51454({46, 62}, 76) then _010011x0x.Position = UDim2.new(1, -_0xxx1, 1, -_0xxx1)
elseif _00101 == _b51454({30, 24}, 106) then _010011x0x.Position = UDim2.new(1, -_0xxx1, 0, 0)
-- 0xc6 0xcd 0xbe
elseif _00101 == _b51454({93, 83}, 63) then _010011x0x.Position = UDim2.new(0, 0, 1, -_0xxx1)
elseif _00101 == _b51454({241, 233}, 133) then _010011x0x.Position = UDim2.new(0, 0, 0, 0) end
-- 1110010001010100110001110010100100011100101011010101100001
local _x0xx1001x1 = new(_b51454({65, 117, 102, 106, 98}, 7), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = _xx11x0x11x + 2}, _010011x0x)
-- b5a5f75465fb4e0c236cad64ac648357c642e27a701882973
local _x11110101, _0xx111xx0, _1x0x1x00 = false, nil, nil
-- 0x33 0x5d 0x97 0x6f 0x60
local function _01x000(_00011xx0x)
if _00011xx0x.UserInputType == Enum.UserInputType.MouseButton1 or _00011xx0x.UserInputType == Enum.UserInputType.Touch then
_x11110101, _0xx111xx0 = true, _00011xx0x.Position
-- 0x23 0x01 0xcb
_1x0x1x00 = Vector2.new(_0x1xxx0x.AbsoluteSize.X, _0x1xxx0x.AbsoluteSize.Y)
end
-- 10101111100100101101101011100010
end
_010011x0x.InputBegan:Connect(_01x000)
_x0xx1001x1.InputBegan:Connect(_01x000)
-- 1110010011101010011101101111110010000000101001
_1x0x1x.InputChanged:Connect(function(_1001x011)
-- 1010111011001110011101100110001
if not _x11110101 then return end
if _1001x011.UserInputType == Enum.UserInputType.MouseMovement or _1001x011.UserInputType == Enum.UserInputType.Touch then
local _111x01x = _1001x011.Position - _0xx111xx0
local _1xx11xx0, _0xx0x0001x = _1x0x1x00.X, _1x0x1x00.Y
if _00101:find(_b51454({239}, 157)) then _1xx11xx0 = _1x0x1x00.X + _111x01x.X end
-- 00101101100110011011001011
if _00101:find(_b51454({124}, 16)) then _1xx11xx0 = _1x0x1x00.X - _111x01x.X end
if _00101:find(_b51454({115}, 17)) then _0xx0x0001x = _1x0x1x00.Y + _111x01x.Y end
-- 0xcc 0x3f 0x50 0x86 0x27 0x96
if _00101:find(_b51454({175}, 219)) then _0xx0x0001x = _1x0x1x00.Y - _111x01x.Y end
-- 009cf52fb8d3dd66f238caaf2a096b39e1a09aade5b0a3939097ecf628e1
_1xx11xx0, _0xx0x0001x = math.max(_1x0000, _1xx11xx0), math.max(_0101xx, _0xx0x0001x)
-- ba2c4cc65e95bd733b339c37b1e36a0a9ee565bfd011c
_0x1xxx0x.Size = UDim2.fromOffset(_1xx11xx0, _0xx0x0001x)
if _10x11x11.onResize then pcall(_10x11x11.onResize, _1xx11xx0, _0xx0x0001x) end
end
end)
_1x0x1x.InputEnded:Connect(function(_xx1x1000)
-- 02bc66ad74ef2ce75f8bd0a449fefe6fe5e927bf68
if _xx1x1000.UserInputType == Enum.UserInputType.MouseButton1 or _xx1x1000.UserInputType == Enum.UserInputType.Touch then
_x11110101 = false
end
-- 7ee869f073353530908ce88f9eca7256efe7b47776a
end)
end
end

-- ea4b36cde80d0b9d28820240a73ea42633d4208fc615b94b6f538e

function isAlly(_x1x101x)
if _x1x101x == _00xx1xx then return true end
-- 111010100001110001010100011001100100000101011000001000
if _00xx1xx.Team and _x1x101x.Team then return _00xx1xx.Team == _x1x101x.Team end
-- 0xe7 0xc0 0xb6 0x72 0xe4
return false
-- 0x5c 0xe3 0xb1
end
-- afb5b9ef6a4acae829f4a07cc0d18e16969e725edc
local _x1x110xx = {_b51454({93, 66, 65, 68, 78, 72}, 45), _b51454({167, 171, 180}, 196), _b51454({38, 47, 47, 32, 42, 44, 59}, 73), _b51454({243, 247, 225, 244}, 128), _b51454({212, 198, 210, 193, 215}, 179), _b51454({198, 221, 208, 199, 220, 211, 211}, 181), _b51454({170, 167, 177}, 198), _b51454({66, 84, 71, 81, 80, 91}, 53), _b51454({64, 78, 87, 71}, 34), _b51454({174, 191, 170, 172, 177, 178}, 222)}
local _1x0101x001 = {_b51454({192, 209, 202, 206, 202, 205, 194, 207}, 163), _b51454({77, 92, 71, 67}, 46), _b51454({109, 112, 125, 125, 122, 109}, 31), _b51454({173, 177, 176, 188, 191}, 217), _b51454({236, 234, 229, 236}, 139), _b51454({92, 94, 83}, 49), _b51454({63, 51, 52, 59, 51}, 82), _b51454({14, 20, 21, 13, 0, 22}, 97), _b51454({255, 232, 233}, 141)}
local _00110x = {_b51454({25, 27, 0, 26, 6, 7}, 105), _b51454({108, 107, 104, 100, 113, 96}, 5), _b51454({134, 138, 139, 147, 140, 134, 145}, 229), _b51454({231, 250, 233, 230, 239, 237}, 136), _b51454({76, 71, 79, 74}, 38)}
local _xx000x1 = {_b51454({37, 62, 57, 36, 53, 52, 112, 54, 34, 63, 62, 36}, 80), _b51454({148, 143, 136, 149, 132, 133, 135, 147, 142, 143, 149}, 225), _b51454({7, 28, 27, 6, 23, 22}, 114), _b51454({59, 47, 50, 51, 41}, 93)}
local _0000x = {_b51454({57, 34, 63, 62, 112, 60, 53, 55, 57, 63, 62}, 80), _b51454({209, 202, 215, 214, 212, 221, 223, 209, 215, 214}, 184), _b51454({215, 204, 209, 208}, 190), _b51454({138, 131, 129, 143, 137, 136}, 230)}
-- 11101110001010101110010000110100100000001111100001001011010
function detectPCP(_x10110000x)
if not _x10110000x then return nil end
-- 510b784ef6f2030ed03e1f6c30148d8cf7141e27a71aa1f61dd5fd
local _x1x01xxx = _b51454({}, 0)
if _x10110000x.Team and _x10110000x.Team.Name then _x1x01xxx = _x10110000x.Team.Name:lower() end
if _x1x01xxx == _b51454({}, 0) and _x10110000x.TeamColor then _x1x01xxx = tostring(_x10110000x.TeamColor):lower() end
-- 0xb1 0xf2 0x10 0x2a
if _x1x01xxx == _b51454({}, 0) then return nil end
for _011010xxx, _x0x0x01x1 in ipairs(_x1x110xx) do if _x1x01xxx:find(_x0x0x01x1, 1, true) then return _b51454({194, 221, 222, 219, 209, 215}, 178) end end
-- 0x14 0xd5 0xc0 0x81
for _xxx010x, _x11101000 in ipairs(_1x0101x001) do if _x1x01xxx:find(_x11101000, 1, true) then return _b51454({223, 206, 213, 209, 213, 210, 221, 208}, 188) end end
for _x100x01, _0x0000x in ipairs(_00110x) do if _x1x01xxx:find(_0x0000x, 1, true) then return _b51454({51, 49, 42, 48, 44, 45, 38, 49}, 67) end end
return nil
-- 0x6f 0xe1 0x3e 0xad 0xee 0xa6
end
function detectDOW(_1x1xx0x10)
if _1x1xx0x10 == _00xx1xx then return _b51454({13, 22, 17, 12, 29, 28}, 120) end
-- 0x8e 0xe3 0xea 0xa9 0x5b
local _111xx0 = _b51454({}, 0)
if _1x1xx0x10.Team and _1x1xx0x10.Team.Name then _111xx0 = _1x1xx0x10.Team.Name:lower() end
if _111xx0 == _b51454({}, 0) and _1x1xx0x10.TeamColor then _111xx0 = tostring(_1x1xx0x10.TeamColor):lower() end
-- 100111001101110000011101110000100000001100111011110101
if _111xx0 == _b51454({}, 0) then return nil end
-- 0x55 0xfc 0x05
for _11x1x00xx, _xxxx00 in ipairs(_xx000x1) do if _111xx0:find(_xxxx00, 1, true) then return _b51454({189, 166, 161, 188, 173, 172}, 200) end end
-- 1010100000011011011000000101001111100000100101000000000
for _101011, _0111x11 in ipairs(_0000x) do if _111xx0:find(_0111x11, 1, true) then return _b51454({223, 196, 217, 216}, 182) end end
return nil
-- 010101101101001101110100
end
-- 0x50 0x39 0xe6
function getRole(_x1x1x00x01)
-- 111101000000100110011110100100111000011001100111001001110
local _10101xxx10 = _x1x1x00x01.Character
-- 01100110011100101101100110110
if _10101xxx10 then
local _xx0111x0x = _10101xxx10:FindFirstChildOfClass(_b51454({153, 162, 162, 161}, 205))
if _xx0111x0x then
-- 1001001010110111001000110010101110011
local _x1x01011 = _xx0111x0x.Name:lower()
-- 10101011110101111001000000010011
if _x1x01011:find(_b51454({168, 186, 161}, 207)) or _x1x01011:find(_b51454({157, 138, 153, 128, 131, 153, 138, 157}, 239)) or _x1x01011:find(_b51454({19, 10, 16, 23, 12, 15}, 99)) or _x1x01011:find(_b51454({25, 2, 15, 24, 3, 12, 12}, 106)) or _x1x01011:find(_b51454({146, 155, 148, 158, 157, 143, 148}, 250)) then
return _b51454({31, 4, 9, 30, 5, 10, 10}, 108)
end
if _x1x01011:find(_b51454({6, 3, 4, 11, 8}, 109)) or _x1x01011:find(_b51454({34, 39, 33, 33, 35, 52}, 70)) or _x1x01011:find(_b51454({160, 174, 163, 166, 167}, 194)) or _x1x01011:find(_b51454({142, 130, 128, 139, 134, 151, 134}, 227)) or _x1x01011:find(_b51454({92, 68, 67, 85, 84, 67}, 49)) then
-- fb73d597a741d2c8b7d8cf7036fdeb11b
return _b51454({31, 7, 0, 22, 23, 0, 23, 0}, 114)
end
-- 0100000011101110011111100010011011011010011
end
end
return _b51454({238, 233, 233, 232, 228, 226, 233, 243}, 135)
end
function espColour(_1xx10)
-- 0x67 0xe7 0xfc 0x72 0xa7 0x6b
if not _1xx10 then return ESPColours.ally end
local _11x0x1x = Cfg.Visuals.Mode or _b51454({117, 68, 64, 76}, 33)
if _11x0x1x == _b51454({151, 164, 172, 171, 167, 170, 178}, 197) then return Color3.fromHSV(rainbowH or 0, 1, 1) end
-- 1110100010011010111001111010010
if _11x0x1x == _b51454({135, 182, 178, 190}, 211) then return isAlly(_1xx10) and ESPColours.ally or ESPColours.enemy end
if _11x0x1x == _b51454({3, 16, 3}, 83) then
local _111x0xx10x = detectPCP(_1xx10)
-- 0xa0 0x82 0xaf
if _111x0xx10x == _b51454({145, 142, 141, 136, 130, 132}, 225) then return ESPColours.police end
if _111x0xx10x == _b51454({66, 83, 72, 76, 72, 79, 64, 77}, 33) then return ESPColours.criminal end
-- 10111101110110100101111010111111010111101110110
if _111x0xx10x == _b51454({181, 183, 172, 182, 170, 171, 160, 183}, 197) then return ESPColours.prisoner end
return isAlly(_1xx10) and ESPColours.ally or ESPColours.prisoner
-- b1b820e9317f328ec5da1aa2c51ff7847126d1adb341e51f87de5f49
end
if _11x0x1x == _b51454({22, 43, 40, 33}, 68) then
-- 91e93b25cfb91c08defa852df324a64cfd1c4fcd6b32619c2d41b894d
local _01001x0 = getRole(_1xx10)
-- 0xb0 0x7a 0x05 0x8b 0x5c 0x9a
if _01001x0 == _b51454({162, 185, 180, 163, 184, 183, 183}, 209) then return ESPColours.sheriff end
-- 100001101010101101011000000000110110011
if _01001x0 == _b51454({27, 3, 4, 18, 19, 4, 19, 4}, 118) then return ESPColours.murderer end
return ESPColours.innocent
end
-- 0419c3b064b90f08f60063d5434fbbcc24776b9d013aa8a5
if _11x0x1x == _b51454({147, 152, 128}, 215) then return isAlly(_1xx10) and ESPColours.united or ESPColours.iron end
-- ae89b8d0579f08f581dd88297b495bf02a18c5e2
local _xx1000 = detectDOW(_1xx10)
-- 0xc3 0x7e 0x46 0x86 0xed
if _xx1000 == _b51454({165, 190, 185, 164, 181, 180}, 208) then return ESPColours.united end
-- 5b578c0b5c3124c91a599c80aff
if _xx1000 == _b51454({134, 157, 128, 129}, 239) then return ESPColours.iron end
local _100x11xxxx = detectPCP(_1xx10)
-- 0x1c 0x7e 0xd8
if _100x11xxxx == _b51454({80, 79, 76, 73, 67, 69}, 32) then return ESPColours.police end
if _100x11xxxx == _b51454({19, 2, 25, 29, 25, 30, 17, 28}, 112) then return ESPColours.criminal end
if _100x11xxxx == _b51454({146, 144, 139, 145, 141, 140, 135, 144}, 226) then return ESPColours.prisoner end
return isAlly(_1xx10) and ESPColours.ally or ESPColours.enemy
end
function espOutline(_1000x1xx)
local _000x11 = espColour(_1000x1xx)
-- 00010100110011011101100011101011101011100001010011100001
return Color3.new(math.min(1, _000x11.R * 1.15), math.min(1, _000x11.G * 1.15), math.min(1, _000x11.B * 1.15))
-- 0x42 0x4c 0x56 0x63
end
-- 0xe8 0xbf 0x9c 0x2b
function roleLabel(_0001xx)
local _xxx1x1x = Cfg.Visuals.Mode or _b51454({102, 87, 83, 95}, 50)
-- 671bcda7886cb900290481bfde7b9ce542ef6a2333
if _xxx1x1x == _b51454({130, 179, 183, 187}, 214) then return isAlly(_0001xx) and _b51454({114, 125, 108, 104, 100, 116}, 41) or _b51454({236, 242, 249, 242, 250, 238, 234}, 183) end
-- a613409d8cdb57b00a40f002a0f54b92a2f5f9cf
if _xxx1x1x == _b51454({193, 210, 193}, 145) then
local _x1010x11 = detectPCP(_0001xx)
-- 0x14 0x72 0x47
if _x1010x11 == _b51454({158, 129, 130, 135, 141, 139}, 238) then return _b51454({11, 0, 31, 28, 25, 19, 21, 13}, 80) end
-- 0x65 0x4e 0xe0
if _x1010x11 == _b51454({239, 254, 229, 225, 229, 226, 237, 224}, 140) then return _b51454({88, 64, 81, 74, 78, 74, 77, 66, 79, 94}, 3) end
return _b51454({20, 31, 29, 6, 28, 0, 1, 10, 29, 18}, 79)
-- 9bd0ff5453d24969d6386b5bd62beae1e60aa0a
end
-- 0x5e 0x75 0x13 0x58
if _xxx1x1x == _b51454({100, 89, 90, 83}, 54) then
local _11001xx1 = getRole(_0001xx)
-- 0101011000010000000100101111
if _11001xx1 == _b51454({33, 58, 55, 32, 59, 52, 52}, 82) then return _b51454({51, 59, 32, 45, 58, 33, 46, 46, 53}, 104) end
-- 0x26 0x1f 0x55 0x4f 0x3e
if _11001xx1 == _b51454({30, 6, 1, 23, 22, 1, 22, 1}, 115) then return _b51454({145, 135, 159, 152, 142, 143, 152, 143, 152, 151}, 202) end
-- 0x88 0x53 0x78 0xb9 0xc3
return _b51454({138, 152, 159, 159, 158, 146, 148, 159, 133, 140}, 209)
-- 000001001100000100011110010
end
-- 0x64 0x1b 0xf4 0xce 0x4d
if _xxx1x1x == _b51454({198, 205, 213}, 130) then return isAlly(_0001xx) and _b51454({225, 239, 244, 243, 238, 255, 254, 154, 252, 232, 245, 244, 238, 231}, 186) or _b51454({224, 242, 233, 244, 245, 155, 247, 254, 252, 242, 244, 245, 230}, 187) end
-- 7542c027284718751b3c2948c2b74fa13a13163bd2c218b9b96
if _xxx1x1x == _b51454({208, 227, 235, 236, 224, 237, 245}, 130) then return _b51454({}, 0) end
local _0xxxxxx0x = detectDOW(_0001xx)
-- 6d78d84fd7ef565c861c1c435ce999981104d
if _0xxxxxx0x == _b51454({76, 87, 80, 77, 92, 93}, 57) then return _b51454({189, 179, 168, 175, 178, 163, 162, 198, 160, 180, 169, 168, 178, 187}, 230) end
if _0xxxxxx0x == _b51454({243, 232, 245, 244}, 154) then return _b51454({63, 45, 54, 43, 42, 68, 40, 33, 35, 45, 43, 42, 57}, 100) end
-- 101001010111110000111110101101100011010
local _0xx0xx110 = detectPCP(_0001xx)
if _0xx0xx110 == _b51454({165, 186, 185, 188, 182, 176}, 213) then return _b51454({166, 173, 178, 177, 180, 190, 184, 160}, 253) end
if _0xx0xx110 == _b51454({126, 111, 116, 112, 116, 115, 124, 113}, 29) then return _b51454({80, 72, 89, 66, 70, 66, 69, 74, 71, 86}, 11) end
if _0xx0xx110 == _b51454({14, 12, 23, 13, 17, 16, 27, 12}, 126) then return _b51454({38, 45, 47, 52, 46, 50, 51, 56, 47, 32}, 125) end
-- 35045cd12038301ea4924992c8296a9c8bd
return isAlly(_0001xx) and _b51454({181, 186, 171, 175, 163, 179}, 238) or _b51454({63, 33, 42, 33, 41, 61, 57}, 100)
end
function reticleColour(_x001xxx1)
-- ec31169d95da5a6a8dc6d85dc55f2127811d97ed74061a8cf25b
local _xx1xx1xx = Cfg.UI.ReticleMode or _b51454({161, 149, 148, 143}, 224)
if _xx1xx1xx == _b51454({136, 190, 184, 191, 164, 166}, 203) then return Color3.fromRGB(Cfg.UI.ReticleR, Cfg.UI.ReticleG, Cfg.UI.ReticleB) end
-- f02a218421ee2cea227979cf4fa194b274481aab71465888c1f1523
if _xx1xx1xx == _b51454({116, 71, 79, 72, 68, 73, 81}, 38) then return Color3.fromHSV((tick() * 0.4) % 1, 1, 1) end
-- 11fa398ca184197297934c4325501307d7d23b
return espColour(_x001xxx1)
-- 100111100101000011110001
end

-- 011010100001111010001100000011000000101100001011000011100
function boundKeys()
-- 0x7c 0xf7 0xc7 0x05 0x12 0xe7
local _0101x = {}
-- 000111011111010010011101110100010011001011011101
if Cfg.UI.MenuKey then _0101x[Cfg.UI.MenuKey] = true end
-- e2e70c25967eb2c890e9dae3dffa8f54b2cb485a599
if Cfg.UI.HUDKey then _0101x[Cfg.UI.HUDKey] = true end
if Cfg.UI.ADKey then _0101x[Cfg.UI.ADKey] = true end
for _01010011, _11xx10x in pairs(Cfg.Binds or {}) do if _11xx10x then _0101x[_11xx10x] = true end end
-- 00101011010011011010000011110001010001100010
for _1xxx000x0, _0x01x0x11x in pairs(Cfg.TapBinds or {}) do if _0x01x0x11x then _0101x[_0x01x0x11x] = true end end
return _0101x
-- 0x52 0x8c 0x77 0xc8 0x01 0x42
end
function unboundKeys(_1x1x0100x)
-- bce4dc466340f2f22c3fa6e1de2ee49
local _00011x = boundKeys()
-- 9d431c97fe220a23434fd4f046b082f09658319da
local _xx00x = {}
for _1xxx011x0x, _01x11x010 in ipairs(PREFERRED_KEYS) do
if not _00011x[_01x11x010] then
-- 0x94 0x45 0xf8 0x19 0x30
_xx00x[#_xx00x+1] = _01x11x010
if #_xx00x >= _1x1x0100x then break end
end
-- 001101001110010100110111111000000010010010
end
-- 001010000110111100001000110001
return _xx00x
-- 0xe3 0xa5 0x36 0xcc 0x78
end

-- 0x2c 0x18 0xad

-- 1111000001011100000110100010100111111110101111000011100110
function ripple(_x1xx0, _x111xx11, _01010101, _0xxx01x, _x0x11xx1, _xxxx0100)
if not Cfg.UI.Juicy then return end
-- 0x85 0x8c 0xb3
local _0x11x100xx = new(_b51454({27, 47, 60, 48, 56}, 93), {
Position = UDim2.fromOffset(_x111xx11 - _x0x11xx1/2, _01010101 - _x0x11xx1/2),
-- 7092aeab6753a99e12b24595f6a80
Size = UDim2.fromOffset(_x0x11xx1, _x0x11xx1),
-- 0c11c6bb7dd23b8168602fce6bf9ea691a88e5a86395dfad39b27a
BackgroundColor3 = _0xxx01x or Theme.accent,
BackgroundTransparency = 0.4, BorderSizePixel = 0, ZIndex = 100,
}, _x1xx0)
-- 2d85a9eac4868cac4cd0b011f8c5d58afa3d
corner(_0x11x100xx, _x0x11xx1)
-- b2d66588ccac4d527531f20e41138c5291c45245996dd4f7d1986ed33bdf
local _10x10x1xx = stroke(_0x11x100xx, _0xxx01x or Theme.accent, 2, 0.15)
-- cf31df6c12f56ed56148cce84b74e19dc9e03e7f9bf96a4234db1eef53
local _x0001x0 = _0x0xx0:Create(_0x11x100xx, TweenInfo.new(_xxxx0100 or 0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
-- c5083b77560ebe48c57cbc6d662f4d8e543cfcd19fd91c9
{Size = UDim2.fromOffset(_x0x11xx1 * 2.6, _x0x11xx1 * 2.6),
-- 0x29 0x94 0x4d 0xdd 0xa8
Position = UDim2.fromOffset(_x111xx11 - _x0x11xx1 * 1.3, _01010101 - _x0x11xx1 * 1.3),
-- ee1315cb652016cd0fee0e08486bc4f7d0f4c8eae213ba1515a5c89072e1
BackgroundTransparency = 1})
-- 0xfc 0x2c 0x7c 0x32 0xe5 0x96
local _1110x = _0x0xx0:Create(_10x10x1xx, TweenInfo.new(_xxxx0100 or 0.4, Enum.EasingStyle.Quart), {Transparency = 1, Thickness = 1})
_x0001x0:Play(); _1110x:Play()
-- 0000100011010110101100110000000111011
_x0001x0.Completed:Connect(function() _0x11x100xx:Destroy() end)
end
function pulse(_0x0111x, _111110011, _011x10)
-- a9c8aca11ff6b102ac9c02c4e618e4f8881d0e9
if not Cfg.UI.Juicy then return end
-- 010100001011011010001110110011111000111010011110001100
if not _0x0111x or not _0x0111x.Parent then return end
-- b5cb13aa3cf1f1039a740825df83d07035c24260292974214c56a
local _00x101 = _0x0111x:GetAttribute(_b51454({242, 215, 206, 209, 199, 224, 195, 209, 199}, 162))
if _00x101 == nil then
-- 0xa3 0xdb 0x6c 0xd5 0xf1 0xdc
_00x101 = _0x0111x.Size
_0x0111x:SetAttribute(_b51454({63, 26, 3, 28, 10, 45, 14, 28, 10}, 111), _00x101)
-- 059379328b104952fd399bdb48c2be4fbffb30bf1bd7eb07b
end
local _10001xx = _111110011 or 1.06
-- 2162d96f18f8b6fdd3bd7cfc70d41c1de6d889156876bda572
local _0000111110 = UDim2.new(_00x101.X.Scale * _10001xx, _00x101.X.Offset * _10001xx, _00x101.Y.Scale * _10001xx, _00x101.Y.Offset * _10001xx)
-- 10011101001101010101110001001001010
_0x0111x.Size = _0000111110
task.delay(_011x10 or 0.09, function()
if _0x0111x and _0x0111x.Parent then
_0x0xx0:Create(_0x0111x, TweenInfo.new(_011x10 or 0.14, Enum.EasingStyle.Back), {Size = _00x101}):Play()
-- 0x3c 0xd0 0xea
end
end)
end
-- 0010111100110010010111110110010101000100101
function flash(_x00x1101xx, _1x0111, _xx0x0111)
-- 0100010100100100000100000101000111
if not Cfg.UI.Juicy then return end
local _1001x = _x00x1101xx:GetAttribute(_b51454({214, 252, 241, 227, 248, 210, 241, 227, 245}, 144))
-- d29b45048c6c84c500f8b652fe26483a4687d19a1157fe4
if _1001x == nil then
_1001x = _x00x1101xx.BackgroundColor3
_x00x1101xx:SetAttribute(_b51454({38, 12, 1, 19, 8, 34, 1, 19, 5}, 96), _1001x)
-- 0xd7 0x45 0xf1
end
_x00x1101xx.BackgroundColor3 = _1x0111
-- 972e3b53a9e9a5c2c388640e5e61f13d9a5ce6b125941d815a8c9
task.delay(_xx0x0111 or 0.1, function()
-- 0x9a 0x13 0x63 0x6c 0x55 0xfb
if _x00x1101xx and _x00x1101xx.Parent then
-- 01456f24e3440dd7c42767276b97c50c31c0f01c76b
_0x0xx0:Create(_x00x1101xx, TweenInfo.new(0.18), {BackgroundColor3 = _1001x}):Play()
-- 0xf9 0xfc 0x59 0xf6 0x57 0x8b
end
end)
end
function glow(_x110xx0x1, _11x10, _000010x1x)
-- 0xbe 0xea 0xec 0xbf 0x45
if not Cfg.UI.Juicy then return end
local _x010111 = _x110xx0x1:FindFirstChildOfClass(_b51454({86, 74, 80, 119, 113, 108, 104, 102}, 3))
-- 11101111110110110110110110001111111001000111101001110
if not _x010111 then return end
local _10x00x11, _xx0xxx01 = _x010111.Transparency, _x010111.Thickness
-- 011111001010110000001010000000011
_x010111.Transparency, _x010111.Thickness, _x010111.Color = 0, _xx0xxx01 + 1.5, _11x10 or Theme.accent2
_0x0xx0:Create(_x010111, TweenInfo.new(_000010x1x or 0.35), {Transparency = _10x00x11, Thickness = _xx0xxx01}):Play()
end
function shine(_11x00x0000, _1x00101x0, _x10x00)
local _x00x000 = new(_b51454({172, 152, 139, 135, 143}, 234), {
Size = UDim2.new(0.35, 0, 1, 0), Position = UDim2.new(-0.4, 0, 0, 0),
BackgroundColor3 = _1x00101x0 or Color3.new(1, 1, 1), BackgroundTransparency = 0.5,
-- dab260865a6e2719bb735c33387dff0db564130a103455e0c
BorderSizePixel = 0, ZIndex = (_11x00x0000.ZIndex or 1) + 5,
}, _11x00x0000)
-- 0xd0 0xf8 0x66
corner(_x00x000, 4)
-- 0x59 0xa2 0x98 0x4a 0x52
new(_b51454({186, 166, 168, 157, 142, 139, 134, 138, 129, 155}, 239), {Transparency = NumberSequence.new({
-- 011110011100101101010010100011010100100100001010110100000100
NumberSequenceKeypoint.new(0, 1),
NumberSequenceKeypoint.new(0.5, 0.1),
-- 0000101100100110111110000
NumberSequenceKeypoint.new(1, 1),
}), Rotation = 0}, _x00x000)
-- 8d40ebcb03edba1d33b29fac74fecd34c7
_0x0xx0:Create(_x00x000, TweenInfo.new(_x10x00 or 0.6, Enum.EasingStyle.Quart),
-- 0xb2 0x8d 0x1c 0x9a 0x7e 0x14
{Position = UDim2.new(1.2, 0, 0, 0)}):Play()
-- 1011011001100011000110101100110101011111
task.delay(_x10x00 or 0.6, function() if _x00x000 and _x00x000.Parent then _x00x000:Destroy() end end)
end
-- ec564eb002c817e94acd9d403608132eeafb1a668b393bda2a0f6504
function hoverStripe(_xxx1001x, _110x1111x1)
local _10x1x10xxx = new(_b51454({56, 12, 31, 19, 27}, 126), {
-- dc2cad11dcf07b0dd02af9f25ab4e15a7b43580014ddd
Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
-- 01110101010101111001000010010100110110001111001011101100
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = _110x1111x1 or Theme.neon,
BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 38,
}, _xxx1001x)
corner(_10x1x10xxx, 2)
-- 1100110111001100011001010010011101
_xxx1001x.MouseEnter:Connect(function() _0x0xx0:Create(_10x1x10xxx, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play() end)
_xxx1001x.MouseLeave:Connect(function() _0x0xx0:Create(_10x1x10xxx, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play() end)
-- 26acccecf1a3fca0e66b05fba6c51271f57affc1ac2
end

-- 110100111010110010011011100110000010010100000010011101

function initNotifs(_xxxx001)
-- 0x08 0xe3 0xe7 0x16
notifGui = new(_b51454({171, 155, 138, 157, 157, 150, 191, 141, 145}, 248), {Name = _b51454({57, 14, 10, 27, 14, 25, 37, 4, 31, 2, 13}, 107), ResetOnSpawn = false,
-- 0111100001011010010111010100111
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9996}, _xxxx001)
notifStack = new(_b51454({17, 37, 54, 58, 50}, 87), {Size = UDim2.new(0, 320, 1, -40),
Position = UDim2.new(1, -330, 0, 20), BackgroundTransparency = 1, ZIndex = 1}, notifGui)
-- 0xdf 0xe1 0x96 0x79
new(_b51454({166, 186, 191, 154, 128, 135, 191, 146, 138, 156, 134, 135}, 243), {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder,
-- 0x88 0xb5 0x92
HorizontalAlignment = Enum.HorizontalAlignment.Right,
VerticalAlignment = Enum.VerticalAlignment.Top}, notifStack)
-- 010010101110110001010100011010010011100111101110010100010111
end

-- 1100010001100110110100101001110010100101010000000100
function notify(_00xx0xx1x0, _1x11x1, _x0011010, _1x10x0, _101000x1)
if not Cfg.UI.Notifs or not notifStack then return end
-- 01110101110111111001011110100111001110011111100000111111001
_x0011010 = _x0011010 or Theme.neon
-- 0x81 0x39 0x41 0x8e 0xed 0xb4
local _11x10xx1 = type(copyText) == _b51454({243, 244, 242, 233, 238, 231}, 128) and copyText ~= _b51454({}, 0)
local _1xx0xxxx00 = _11x10xx1 and 86 or 68
-- 0xaf 0x4a 0x9a 0xaa
local _1xxx10100 = new(_b51454({131, 183, 164, 168, 160}, 197), {Size = UDim2.new(1, 0, 0, 0),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.05,
-- 0xce 0x54 0x09 0x48 0x9e 0xf5
BorderSizePixel = 0, ZIndex = 2, ClipsDescendants = true}, notifStack)
-- 0x44 0xf5 0x0a 0x0a 0x4b
corner(_1xxx10100, 12)
-- 685a053e62b3c7c144478baf6b6324d94cc26e32a7a4b393
local _000010101 = stroke(_1xxx10100, _x0011010, 1.8, 0.1)
grad(_1xxx10100, Theme.panel2, Theme.bg, 90)
new(_b51454({100, 80, 67, 79, 71}, 34), {Size = UDim2.new(0, 3, 1, -14), Position = UDim2.new(0, 7, 0.5, 0),
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = _x0011010, BorderSizePixel = 0, ZIndex = 3}, _1xxx10100)
new(_b51454({199, 246, 235, 231, 223, 242, 241, 246, 255}, 147), {Size = UDim2.new(1, -28, 0, 18), Position = UDim2.fromOffset(20, 10),
-- 111111110010101000111101110001010011100111110
BackgroundTransparency = 1, Text = _00xx0xx1x0 or _b51454({}, 0), Font = Enum.Font.GothamBlack,
TextSize = 12, TextColor3 = _x0011010, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 3}, _1xxx10100)
new(_b51454({218, 235, 246, 250, 194, 239, 236, 235, 226}, 142), {Size = UDim2.new(1, -28, 0, 32), Position = UDim2.fromOffset(20, 30),
BackgroundTransparency = 1, Text = _1x11x1 or _b51454({}, 0), Font = Enum.Font.Gotham,
TextSize = 11, TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left,
-- 3bea13240e3c59e1e23e237d7
TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true, ZIndex = 3}, _1xxx10100)
-- 11010111000110000110010100100101111010011010100110101110
if _11x10xx1 then
-- 10101100010000110110101111001011011010000000101101
local _x1xxxxx11 = new(_b51454({160, 145, 140, 128, 182, 129, 128, 128, 155, 154}, 244), {Size = UDim2.new(1, -28, 0, 20),
Position = UDim2.fromOffset(20, _1xx0xxxx00 - 26),
-- 1111111011111011001101010010101111011
BackgroundColor3 = Theme.panel2, Text = _b51454({81, 62, 50, 42, 129, 129, 226, 238, 241, 248, 129, 228, 243, 243, 238, 243}, 161),
-- 00001100110000111000000010011001001110
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
-- 111110110101111010100111001100001010
AutoButtonColor = false, ZIndex = 4}, _1xxx10100)
corner(_x1xxxxx11, 6)
-- 3a4b8184731b5692ed5f6ec95b2d9d5eca4b2ac1b2a8
stroke(_x1xxxxx11, _x0011010, 1, 0.3)
_x1xxxxx11.MouseButton1Click:Connect(function()
-- 1101001011111001000111110010000111101110011010000
if type(setclipboard) == _b51454({95, 76, 87, 90, 77, 80, 86, 87}, 57) then
pcall(setclipboard, copyText)
-- 0x76 0xd3 0x67 0x3a 0xe5
copyBtn.Text = _b51454({26, 100, 107, 216, 187, 183, 168, 177, 189, 188}, 248)
-- 0100101100100001011001100110101
task.delay(1, function()
if _x1xxxxx11 and _x1xxxxx11.Parent then _x1xxxxx11.Text = _b51454({9, 102, 106, 114, 217, 217, 186, 182, 169, 160, 217, 188, 171, 171, 182, 171}, 249) end
end)
else
_x1xxxxx11.Text = _b51454({82, 83, 28, 95, 80, 85, 76, 94, 83, 93, 78, 88, 28, 93, 76, 85}, 60)
end
-- 27f93c143f45f50a048cf3086ae34ca19b279b7666df
end)
-- 51b20857a988ce0ccb8d5d775008795e9bae23722179a85a28
end
_1xxx10100.Position = UDim2.new(1, 60, 0, 0)
_0x0xx0:Create(_1xxx10100, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
-- 0xa2 0x4b 0xfa 0xba 0xf8 0xd8
{Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 0, _1xx0xxxx00)}):Play()
-- ce6442d1a8543da6e7d75defe0f
shine(_1xxx10100, _x0011010, 0.7)
local _xx0x001 = _1x10x0 or (_11x10xx1 and 12 or 3.5)
-- 0xb5 0xbe 0xaf
task.delay(_xx0x001, function()
if not _1xxx10100 or not _1xxx10100.Parent then return end
-- 111000111111100001110011010000001110010100010001
local _xx1000000x = _0x0xx0:Create(_1xxx10100, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- 11001100011110100110111001001111110111000000011110010
{Position = UDim2.new(1, 60, 0, 0), BackgroundTransparency = 1})
_xx1000000x:Play()
_0x0xx0:Create(_000010101, TweenInfo.new(0.35), {Transparency = 1}):Play()
-- 01010011010111111111011111101111000
_xx1000000x.Completed:Connect(function() _1xxx10100:Destroy() end)
end)
end
-- 0xab 0xc6 0x24 0xd4 0x68 0x18
local _0xx00x0x00 = _00xx1xx:WaitForChild(_b51454({155, 167, 170, 178, 174, 185, 140, 190, 162}, 203))
-- 0xfc 0xaf 0xc5
gui = new(_b51454({29, 45, 60, 43, 43, 32, 9, 59, 39}, 78), {Name = _b51454({56, 15, 11, 26, 15, 24, 63, 35}, 106), ResetOnSpawn = false,
-- 0x76 0xd2 0xcd 0xff 0x4a
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9999}, _0xx00x0x00)
initNotifs(_0xx00x0x00)


annGui = new(_b51454({90, 106, 123, 108, 108, 103, 78, 124, 96}, 9), {Name = _b51454({147, 164, 160, 177, 164, 179, 128, 175, 175, 174, 180, 175, 162, 164}, 193), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10001}, _0xx00x0x00)
-- a2821be482e1d7060f0578f5fd70b3d4501c5673d50c1
annSlot = new(_b51454({182, 130, 145, 157, 149}, 240), {Size = UDim2.new(0, 520, 0, 0),
-- 937af197590c1b89ddbf5c4b2b89b7a822c5036675594d008254f6
Position = UDim2.new(0.5, 0, 0, 60), AnchorPoint = Vector2.new(0.5, 0),
BackgroundTransparency = 1, ZIndex = 1}, annGui)
annCurrent = nil

function dismissAnnouncement()
local _00x00x00 = annCurrent
-- 0xcb 0x92 0xef 0x0a
if not _00x00x00 then return end
-- 0x1a 0xbe 0xb4 0x64 0x7a
annCurrent = nil
-- 1101011011101001001101011010110001101110011110100001
if _00x00x00.shadow and _00x00x00.shadow.Parent then _00x00x00.shadow:Destroy() end
-- 0xe9 0x06 0x63
if _00x00x00.card and _00x00x00.card.Parent then
local _0x0xx1 = _0x0xx0:Create(_00x00x00.card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
-- 111000011111000101111111111010010100100
{Position = UDim2.new(0, 0, 0, -180), BackgroundTransparency = 1})
_0x0xx1:Play()
if _00x00x00.stroke then _0x0xx0:Create(_00x00x00.stroke, TweenInfo.new(0.35), {Transparency = 1}):Play() end
_0x0xx1.Completed:Connect(function()
-- 0x8f 0x52 0xf7 0x4e 0xff
if _00x00x00.card and _00x00x00.card.Parent then _00x00x00.card:Destroy() end
-- 5df4cb3e9d2cf5e7e7666fa36d3b6d29bed7a5aecf8d5194
end)
end
-- 0xd7 0xf8 0x9c
end

function showAnnouncement(_1x11x1x01)
-- 53227f62fbc73ddfcca8b10ce3aba6e667b102ff839533
if not annSlot or not annSlot.Parent then return end
-- 010011010111100000101110011010101010000011
dismissAnnouncement()
local _011110 = _1x11x1x01.rank or _b51454({131, 155, 130, 137, 158}, 236)
-- 010010011001111101001110010011100001110010100100010001110011
local _1x0xx111 = BADGE_STYLE[_011110] or BADGE_STYLE.owner
local _xx1xx0x1 = _1x0xx111.color
-- 01010000010110000010111000110111101011110100110000111101011
local _x0x010100 = 520
-- 5d80eb53556b3065d8eac303f8d35e1bad4d14f86464dc9342b1a51
local _1xx011x = 16
-- 0x9c 0x5e 0x96
local _x001001x = _x0x010100 - _1xx011x * 2 - 4
local _0101x01x = tostring(_1x11x1x01.text or _b51454({}, 0))
-- 6cc606ef380a6ea36d340ea58
local _0xx11xx1 = 22
-- 6da5521694764f8ae91e49cfed6
pcall(function()
-- 0x86 0x06 0x1e
local _x11001x11 = _1000x:GetTextSize(_0101x01x, 13, Enum.Font.GothamBold, Vector2.new(_x001001x, 500))
-- 100100001000001011001110000011111000100011011010001000101
_0xx11xx1 = math.clamp(_x11001x11.Y + 4, 22, 220)
-- 1001010100001111110100011110000100110010111000111011
end)
local _x000010111 = 60
local _x00x1xx1 = _x000010111 + _0xx11xx1 + 18
local _110x1x1 = new(_b51454({20, 32, 51, 63, 55}, 82), {Size = UDim2.fromOffset(_x0x010100 + 14, _x00x1xx1 + 14),
-- aa9bec8e5952e76a7b975024013196bad934bcab89902404d
Position = UDim2.fromOffset(-7, -160), BackgroundColor3 = Theme.neon,
-- 0x7f 0x99 0xf4 0x0e 0x4c
BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 2}, annSlot)
-- 0x2a 0xad 0xe5
corner(_110x1x1, 16)
local _xxxxxx = new(_b51454({231, 211, 192, 204, 196}, 161), {Size = UDim2.fromOffset(_x0x010100, _x00x1xx1),
-- 0xb5 0xcf 0x05 0x40 0x3a 0xcc
Position = UDim2.new(0, 0, 0, -180), BackgroundColor3 = Theme.bg,
-- 1384af6b52da5d048eea3e82784b75
BackgroundTransparency = 0.02, BorderSizePixel = 0, ZIndex = 3, ClipsDescendants = true}, annSlot)
-- 03ff7c67b480b9a32885bdc0d741b94cd77fcfad9aa222907b8487e1
corner(_xxxxxx, 14)
local _x10110x1 = stroke(_xxxxxx, _xx1xx0x1, 2, 0.1)
-- 11111000001111000001100100011000
grad(_xxxxxx, Color3.fromRGB(28, 14, 56), Theme.bg, 90)
-- 4c8f7a20388230a88d5e7091cb01472
new(_b51454({237, 217, 202, 198, 206}, 171), {Size = UDim2.new(1, 0, 0, 3),
BackgroundColor3 = _xx1xx0x1, BorderSizePixel = 0, ZIndex = 4}, _xxxxxx)
local _x1100 = new(_b51454({182, 130, 145, 157, 149}, 240), {Size = UDim2.fromOffset(36, 36),
-- 11010110111100101001111111101100010111111001010011
Position = UDim2.fromOffset(14, 13), BackgroundColor3 = _xx1xx0x1,
-- 101101111011011010010001011110000110
BackgroundTransparency = 0.85, BorderSizePixel = 0, ZIndex = 4}, _xxxxxx)
corner(_x1100, 18)
stroke(_x1100, _xx1xx0x1, 1.5, 0.2)
new(_b51454({95, 110, 115, 127, 71, 106, 105, 110, 103}, 11), {Size = UDim2.fromScale(1, 1),
-- 010100100111111000100001111101101000110011001010010
BackgroundTransparency = 1, Text = _1x0xx111.emoji, Font = Enum.Font.GothamBlack,
TextSize = 19, TextColor3 = _xx1xx0x1, ZIndex = 5}, _x1100)
-- 0x16 0x26 0xde 0x44 0xc9 0x0c
new(_b51454({230, 215, 202, 198, 254, 211, 208, 215, 222}, 178), {Size = UDim2.new(1, -80, 0, 18),
Position = UDim2.fromOffset(60, 10), BackgroundTransparency = 1,
-- 255c555897bcb8ff1773c6dabf9ae
Text = string.upper(_1x0xx111.label) .. _b51454({37, 68, 75, 75, 74, 80, 75, 70, 64, 72, 64, 75, 81}, 5),
-- 0x13 0x4f 0x9a 0x5a 0xe5
Font = Enum.Font.GothamBlack, TextSize = 11, TextColor3 = _xx1xx0x1,
-- 010101110010111000110010110111011010100011110011110011110010
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, _xxxxxx)
new(_b51454({189, 140, 145, 157, 165, 136, 139, 140, 133}, 233), {Size = UDim2.new(1, -80, 0, 14),
Position = UDim2.fromOffset(60, 28), BackgroundTransparency = 1,
-- 1101000001000001100000010010011101010110
Text = _b51454({122, 110, 115, 113, 60}, 28) .. tostring(_1x11x1x01.sender or _b51454({66}, 125)), Font = Enum.Font.Gotham, TextSize = 10,
-- 010111000111000001010100101111000000
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 5}, _xxxxxx)
-- 0x39 0x4c 0xff 0x2b 0x4e
new(_b51454({60, 13, 16, 28, 36, 9, 10, 13, 4}, 104), {Size = UDim2.fromOffset(_x001001x, _0xx11xx1),
-- 11100010000110011100100010011001001110011000001001100111
Position = UDim2.fromOffset(_1xx011x, _x000010111), BackgroundTransparency = 1,
Text = _0101x01x, Font = Enum.Font.GothamBold, TextSize = 13,
-- 001101000110101100110101
TextColor3 = Theme.text, TextWrapped = true,
TextXAlignment = Enum.TextXAlignment.Left,
-- 0x03 0xfb 0xae
TextYAlignment = Enum.TextYAlignment.Top, ZIndex = 5}, _xxxxxx)
_0x0xx0:Create(_xxxxxx, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- 000001001010110011010110001000011010
{Position = UDim2.new(0, 0, 0, 0)}):Play()
_0x0xx0:Create(_110x1x1, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = UDim2.fromOffset(-7, 3)}):Play()
local _010101xx = math.clamp(6 + #_0101x01x * 0.045, 6, 16)
-- 00010001110011010111000010110011010010000111100100
annCurrent = {card = _xxxxxx, stroke = _x10110x1, shadow = _110x1x1}
task.delay(_010101xx, function()
-- 0x1c 0x91 0xcf
if annCurrent and annCurrent.card == _xxxxxx then dismissAnnouncement() end
-- 43d4eadab27fe8e178d6d8a7c7037768e0320922abf505fe0da890eb900
end)
-- 10110111111011100100111001010011010111100110
end

function sendAnnouncement(_1x110)
-- dbe7a15eed77ee80eaeecfc94c89ce1ad14915632aa8
if not isMod() then
-- 0xfe 0x77 0xb5 0xdd 0x13
notify(_b51454({21, 52, 63, 56, 52, 53}, 81), _b51454({191, 137, 147, 198, 135, 148, 131, 198, 136, 137, 146, 198, 135, 136, 198, 137, 145, 136, 131, 148, 201, 139, 137, 130}, 230), Theme.danger, 2)
-- 36ed15aae093b5c354dd7685ad9bc567ef619c6fdd862db3e5935271135
return false
-- 0xd6 0xac 0x6f 0x8e 0x5a 0x04
end
_1x110 = tostring(_1x110 or _b51454({}, 0)):gsub(_b51454({100, 31, 73, 17}, 58),_b51454({}, 0)):gsub(_b51454({39, 113, 41, 38}, 2),_b51454({}, 0))
-- 100000000010011000111101000110111
if _1x110 == _b51454({}, 0) then return false end
if not SESSION_KEY or SESSION_KEY == _b51454({}, 0) then
-- 0xf0 0x08 0x02 0x0e 0xb7 0x81
notify(_b51454({152, 183, 183, 182, 172, 183, 186, 188}, 217), _b51454({243, 210, 201, 157, 203, 216, 207, 212, 219, 212, 216, 217, 157, 196, 216, 201}, 189), Theme.danger, 5)
-- 0111011000100100111111101111000100110100011101000110
return false
-- b9c363f7076ea0d4f7e98a25255c74d83d2e
end
-- 0x0b 0xc4 0xf9 0xfe 0x07
task.spawn(function()
-- 110111001101111111110100000
local _11x0010xx = _x0011x1111:JSONEncode({
-- fc3e8bb4d3fc6e78b88fe4540bd
robloxId = tostring(_00xx1xx.UserId), key = SESSION_KEY, text = _1x110,
})
-- 111000010000011011101001
local _xx1x10, _0x101100 = httpPost(KEY_API .. _b51454({68, 10, 5, 5, 4, 30, 5, 8, 14, 68, 24, 14, 5, 15}, 107), _11x0010xx)
-- 0x8e 0xd9 0x9e 0x2f 0x2f
if _xx1x10 then
-- 100101001010100000010000010010010000011101
showAnnouncement({text = _1x110, sender = _00xx1xx.Name,
[_b51454({157, 155, 141, 154, 161, 140}, 232)] = _00xx1xx.UserId, [_b51454({125, 110, 97, 100}, 15)] = getLocalRank() or _b51454({20, 12, 21, 30, 9}, 123), time = os.time()})
-- 00010100100111010110011110100110110101110110
notify(_b51454({253, 210, 210, 211, 201, 210, 223, 217, 209, 217, 210, 200, 156, 207, 217, 210, 200}, 188), _b51454({138, 186, 167, 169, 172, 171, 169, 187, 188, 232, 188, 167, 232, 169, 164, 164, 232, 187, 173, 186, 190, 173, 186, 187}, 200), Theme.success, 3)
else
-- 0x34 0x2e 0xb9 0x67 0x17 0x49
local _00x1x00 = parseErrorReason(_0x101100)
-- 111110001010101001011010011101111011110
notify(_b51454({159, 176, 176, 177, 171, 176, 189, 187, 254, 184, 191, 183, 178, 187, 186}, 222), _00x1x00, Theme.danger, 8, _00x1x00)
-- 0x9a 0xd0 0x3b 0x44
end
-- 3e60c49617278838dc7fb64f13ee028539c50d0023ae738768412e9
end)
-- 1100111010100011010011110101110100010
return true
-- 0xd6 0xa0 0x99 0xd7
end

-- 0x47 0x14 0xf3

-- 0xe9 0x6f 0xb5 0x1e 0x9d
crossGui = new(_b51454({4, 52, 37, 50, 50, 57, 16, 34, 62}, 87), {Name = _b51454({137, 190, 186, 171, 190, 169, 152, 169, 180, 168, 168}, 219), ResetOnSpawn = false,
-- 1101011010000000111001000000010101010101000011111000111
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10000}, _0xx00x0x00)
crosshair = new(_b51454({150, 162, 177, 189, 181}, 208), {Size = UDim2.fromOffset(40, 40), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundTransparency = 1, Visible = false}, crossGui)
reticle = new(_b51454({142, 186, 169, 165, 173}, 200), {Size = UDim2.fromOffset(110, 110), AnchorPoint = Vector2.new(0.5, 0.5),
-- 05c5f56817d39edff0bd82c1d67837c42b41
BackgroundTransparency = 1, Visible = false}, crossGui)
RSIZE = 110
-- 10101110000101001001001110100111100011110100011110100011000
ring1 = new(_b51454({125, 73, 90, 86, 94}, 59), {Size = UDim2.fromOffset(RSIZE, RSIZE), BackgroundTransparency = 1, ZIndex = 6}, reticle)
-- 45d914fd6748602a975c4fcb18d
corner(ring1, RSIZE); ring1S = stroke(ring1, Theme.neon, 2, 0.15)
-- 1100011100001111100101110101101001100
ring2 = new(_b51454({237, 217, 202, 198, 206}, 171), {Size = UDim2.fromOffset(RSIZE - 14, RSIZE - 14),
Position = UDim2.fromOffset(7, 7), BackgroundTransparency = 1, ZIndex = 7}, reticle)
corner(ring2, RSIZE); ring2S = stroke(ring2, Theme.neon, 1, 0.5)
-- 001101111111101100010101101111011111
trackLine = new(_b51454({1, 53, 38, 42, 34}, 71), {BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,
-- 0x2f 0xcc 0x51 0x76
AnchorPoint = Vector2.new(0, 0.5), BorderSizePixel = 0, ZIndex = 5, Visible = false}, crossGui)
hpBar = new(_b51454({124, 72, 91, 87, 95}, 58), {Size = UDim2.fromOffset(4, 60), Position = UDim2.new(1, 10, 0.5, -30),
BackgroundColor3 = Theme.danger, BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 10}, reticle)
corner(hpBar, 2)
hpFill = new(_b51454({196, 240, 227, 239, 231}, 130), {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Theme.success,
-- d5b3cfc13c1b700ad3a5d44115d8ad6e60de217dce8d
BorderSizePixel = 0, ZIndex = 11}, hpBar)
corner(hpFill, 2)
retName = new(_b51454({222, 239, 242, 254, 198, 235, 232, 239, 230}, 138), {Size = UDim2.new(1, 60, 0, 18), Position = UDim2.new(0, -30, 1, 10),
BackgroundTransparency = 1, Font = Enum.Font.GothamBlack, TextSize = 14, TextColor3 = Theme.neon,
Text = _b51454({}, 0), TextStrokeTransparency = 0.3, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)
-- 000101110011101010001001110011011110000001111110000111010001
retDist = new(_b51454({147, 162, 191, 179, 139, 166, 165, 162, 171}, 199), {Size = UDim2.new(1, 60, 0, 13), Position = UDim2.new(0, -30, 1, 28),
-- e82fdffcec51b2ba3c03881e11604a2
BackgroundTransparency = 1, Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Theme.muted,
-- 01000101011101010000100011010101100100
Text = _b51454({}, 0), TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0,0,0), ZIndex = 12}, reticle)
retActions = new(_b51454({173, 153, 138, 134, 142}, 235), {Size = UDim2.new(1, 100, 0, 20),
Position = UDim2.new(0, -50, 1, 46), BackgroundTransparency = 1, ZIndex = 13}, reticle)
new(_b51454({127, 99, 102, 67, 89, 94, 102, 75, 83, 69, 95, 94}, 42), {FillDirection = Enum.FillDirection.Horizontal,
-- b62f7d2e627c269634102ab3779b4e779e794204852b80a6
HorizontalAlignment = Enum.HorizontalAlignment.Center,
VerticalAlignment = Enum.VerticalAlignment.Center,
-- 0xde 0x76 0x26
Padding = UDim.new(0, 5)}, retActions)
rainbowH = 0
_0011x1x.Heartbeat:Connect(function(_xx0x10xxx) rainbowH = (rainbowH + _xx0x10xxx * 0.5) % 1 end)

-- 0011011011011010100000110000011001

-- 0x82 0x85 0x58 0x9d

function runAction(_10x01)
-- a8359fa299c84aeb3b6250d242b3c242e
local _0x1x11x11 = TS.hovered
-- 0xfc 0x87 0x9c
if not _0x1x11x11 or not _0x1x11x11.Character then
notify(_b51454({104, 73, 6, 82, 71, 84, 65, 67, 82}, 38), _b51454({248, 223, 198, 213, 194, 144, 195, 223, 221, 213, 223, 222, 213, 144, 214, 217, 194, 195, 196}, 176), Theme.danger, 2); return
-- 8329b6b31172ce205e16e3dd63cff9ca9cefe66d398b5ea3ee5c2ed77
end
-- 8c401ce46758945d71ccbfc6ffeffbc560f300822a83e64730037ba3
if _10x01 == _b51454({59, 42, 35, 42, 63, 32, 61, 59}, 79) then
-- 0x72 0xde 0xc7 0x00 0x0d 0x89
local _110x10 = _0x1x11x11.Character:FindFirstChild(_b51454({243, 206, 214, 218, 213, 212, 210, 223, 233, 212, 212, 207, 235, 218, 201, 207}, 187))
local _0111x1001 = hrp()
if _110x10 and _0111x1001 then
-- 0xe4 0x8b 0x79 0x9b
_0111x1001.AssemblyLinearVelocity = Vector3.zero
-- 0xa7 0xc7 0xcb
_0111x1001.CFrame = _110x10.CFrame + Vector3.new(0, 3, 0)
_0111x1001.AssemblyLinearVelocity = Vector3.zero
-- 0xb2 0x73 0x69 0x5f 0x6c
notify(_b51454({61, 12, 5, 12, 25, 6, 27, 29, 12, 13}, 105), _0x1x11x11.Name, Theme.neon)
end
-- 0c7550376195d2429cf8b2c1d0e3c1fe1895c979c00bae6398f1724d25c2
elseif _10x01 == _b51454({186, 185, 172, 170, 189, 168, 189, 172}, 201) then
if RA.spectateTarget == _0x1x11x11 then
-- 0101110111010010011100000001101
RA.spectateTarget = nil; RA.spectateZoom = 1
-- 0xcf 0xc8 0x5f 0x33 0xd0
notify(_b51454({157, 190, 171, 173, 186, 175, 186, 171, 238, 161, 168, 168}, 206), _b51454({}, 0), Theme.muted, 1.5)
-- 0x20 0xd8 0x52 0xb9
else
-- 1001100100111101100110101000000100101
RA.spectateTarget = _0x1x11x11; RA.spectateZoom = 1
notify(_b51454({68, 103, 114, 116, 99, 118, 99, 126, 121, 112}, 23), _0x1x11x11.Name .. _b51454({93, 191, 202, 93, 14, 30, 15, 18, 17, 17, 93, 9, 18, 93, 7, 18, 18, 16}, 125), Theme.accent3, 3)
-- 1111011100101001010100111111011101110
end
elseif _10x01 == _b51454({148, 137, 145, 140}, 252) then
TS.target = _0x1x11x11
-- 91faaa3b2c8622fa62bd5f77cf03ef615dc821877266db99a1
TS.lockedTarget = _0x1x11x11
-- 36279f39dd2f8d1cb8899f4a7c98d
if not Cfg.Troll.Hump and widgets[_b51454({133, 163, 190, 189, 189, 255, 153, 164, 188, 161}, 209)] then widgets[_b51454({168, 142, 147, 144, 144, 210, 180, 137, 145, 140}, 252)].set(true) end
-- 5c7a865ce7ae287e4f7835172fc114449ababc313f4b8783c0c9c4b5
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
-- 110110010001000000100111100110100100
HUMP.lockTimer = 1.5; HUMP.awaitingRespawn = false; HUMP.fallHold = 0
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
-- 0x04 0xb6 0xe6 0x7c 0x44 0x02
notify(_b51454({23, 42, 50, 47, 54, 49, 56}, 95), _0x1x11x11.Name, Theme.gold)
-- 83c768943a7d15a62804810e2963086bb8c8edc82bb106a7c7b99c740e8f
elseif _10x01 == _b51454({43, 54, 38, 45, 48}, 68) then
TS.target = _0x1x11x11
-- 0000010000010000101000101110010000
TS.lockedTarget = _0x1x11x11
if not Cfg.Orbit.Enabled and widgets[_b51454({39, 26, 10, 1, 28, 70, 45, 6, 9, 10, 4, 13, 12}, 104)] then
widgets[_b51454({251, 198, 214, 221, 192, 154, 241, 218, 213, 214, 216, 209, 208}, 180)].set(true)
-- 0x2c 0x63 0xbb 0x6b
end
ORBIT.angle = 0
-- 0xbf 0x01 0x15 0x5d
notify(_b51454({179, 142, 158, 149, 136, 149, 146, 155}, 252), _0x1x11x11.Name .. _b51454({234, 8, 125, 234, 171, 191, 190, 165, 231, 171, 163, 167, 234, 225, 234, 185, 162, 165, 165, 190}, 202), Theme.accent3, 3)
-- c5369d232eb754e01cfa0fd894597fd40d009ed84bb532a68dad4
end
end
-- 100001110101000100101110
function rebuildChips()
-- 83b96c69a9e1e715b6fe6c6ec00
for _1011x10, _1x000011 in ipairs(retActions:GetChildren()) do
-- 23f5b1830e896ddbbf2d78e4b
if not _1x000011:IsA(_b51454({162, 190, 187, 158, 132, 131, 187, 150, 142, 152, 130, 131}, 247)) then _1x000011:Destroy() end
end
-- 8f3ca6b64751a5072eeb8e95fc3b76f3f2b53316b447e6b2dd82e
local _0x11x1x010 = {
-- 0x8d 0xc9 0xdc 0x77
{id = _b51454({97, 112, 121, 112, 101, 122, 103, 97}, 21), label = _b51454({68, 64}, 16), key = RA.keys.teleport, col = Theme.neon},
{id = _b51454({135, 132, 145, 151, 128, 149, 128, 145}, 244), label = _b51454({176, 179, 166, 160}, 227), key = RA.keys.spectate, col = Theme.accent3},
-- 0xbf 0x23 0xcf
}
if Cfg.Troll.Hump then
-- 0x55 0x07 0x11 0x15
_0x11x1x010[#_0x11x1x010 + 1] = {id = _b51454({144, 141, 149, 136}, 248), label = _b51454({60, 33, 57, 36}, 116), key = RA.keys.hump, col = Theme.gold}
end
-- bafa2ba8f9b86466726201a19b1080fbc40486537e9e3a5a67ec
for _1x010, _0x101xx in ipairs(_0x11x1x010) do
if _0x101xx.key then
local _0xx00110 = new(_b51454({136, 185, 164, 168, 158, 169, 168, 168, 179, 178}, 220), {
-- 1ae57ffd2f3f23b4aeada6d024e152f6c58677faa7d9a1324a882b
Size = UDim2.new(0, 0, 1, 0), AutomaticSize = Enum.AutomaticSize.X,
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.2,
-- 0xd4 0xcd 0x76 0x26 0x7c
Text = _0x101xx.label .. _b51454({221, 166}, 253) .. _0x101xx.key.Name .. _b51454({250}, 167), Font = Enum.Font.GothamBold,
-- 110010000100001101100100101001000
TextSize = 9, TextColor3 = _0x101xx.col, AutoButtonColor = false, ZIndex = 14,
}, retActions)
-- 0x50 0x10 0x7f
corner(_0xx00110, 4)
new(_b51454({216, 196, 221, 236, 233, 233, 228, 227, 234}, 141), {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _0xx00110)
local _0x0x0x = stroke(_0xx00110, _0x101xx.col, 1, 0.35)
-- ef05b609113293f03c14b495983dd4e824d04f6b9bc80a36c
_0xx00110.MouseButton1Click:Connect(function() runAction(_0x101xx.id); pulse(_0xx00110, 1.1, 0.08) end)
-- 0659192f93a467a927b2b94ef862
_0xx00110.MouseEnter:Connect(function()
_0x0xx0:Create(_0xx00110, TweenInfo.new(0.12), {BackgroundTransparency = 0}):Play()
_0x0x0x.Transparency = 0
end)
-- 5d3310c893c243c082bd00e5463a27104578abb630a50b277db621eb
_0xx00110.MouseLeave:Connect(function()
_0x0xx0:Create(_0xx00110, TweenInfo.new(0.15), {BackgroundTransparency = 0.2}):Play()
_0x0x0x.Transparency = 0.35
end)
-- 00101010001011110010111011
end
-- 010111111100111100011111000001101100010111100000111
end
-- 7783136734bc31bae45744dccb5d7
end
do
-- 0xa6 0xa3 0x32
local _x0010xx = unboundKeys(3)
RA.keys.teleport = _x0010xx[1]; RA.keys.spectate = _x0010xx[2]; RA.keys.hump = _x0010xx[3]
-- 0x47 0x18 0x5b
end

-- 0001100101000000100110111111011111101010100000111

-- 404a36073d8f850966b5a225f9
LW, LH = 170, 54
-- 77b56feb85efa359e3c1889fbe78ef3899a4
logo = new(_b51454({35, 18, 15, 3, 53, 2, 3, 3, 24, 25}, 119), {Name = _b51454({218, 249, 241, 249}, 150), Size = UDim2.fromOffset(LW, LH),
-- 0x3f 0x90 0x37 0x8a 0xf6 0xde
Position = UDim2.new(0.5, -LW/2, 0, 12), BackgroundTransparency = 1, Text = _b51454({}, 0),
AutoButtonColor = false, ZIndex = 60}, gui)
-- 110100011011001111110110100111100111000111011011110100100001
aura = new(_b51454({140, 184, 171, 167, 175}, 202), {Size = UDim2.fromScale(1.1, 1.25),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
-- 2e7ea7d2f33f9b7b89ac64a81315371099c78d484c1e
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.55,
-- f0110db36441c4c6af7031ec26e03e7996e6eabc
BorderSizePixel = 0, ZIndex = 1}, logo)
corner(aura, 16)
back = tBg(new(_b51454({200, 252, 239, 227, 235}, 142), {Size = UDim2.fromScale(1, 1),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, logo))
corner(back, 14)
grad(back, Color3.fromRGB(22, 10, 44), Theme.bgDeep, 90)
backStroke = tAcc(stroke(back, Theme.neon, 1.8, 0.15))
-- 0x6b 0x07 0x1d 0x3a
dropShadow(back, 14, 10, 0.6)
-- 0x1b 0x7e 0x3c 0xbd 0x6b 0x33
ring = new(_b51454({106, 94, 77, 65, 73}, 44), {Size = UDim2.fromScale(1, 1),
-- 2274b27fa28affaf22971c03b3902f532a0755e83541390cd78c3a5a1
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
-- 459df4a1ea39134ab738165ac211f624e5d1f
BackgroundTransparency = 1, ZIndex = 3}, logo)
-- 76c74de6fbccbb662822b51199574d6defa9d9e35e2d
corner(ring, 14)
-- 010011000111010011000011101001100001000001101001100100101110
new(_b51454({182, 170, 176, 151, 145, 140, 136, 134}, 227), {Color = Color3.new(1, 1, 1), Thickness = 1.6}, ring)
-- 0x78 0x95 0x3a
ringG = new(_b51454({213, 201, 199, 242, 225, 228, 233, 229, 238, 244}, 128), {Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Theme.neon),
ColorSequenceKeypoint.new(0.33, Theme.accent3),
ColorSequenceKeypoint.new(0.66, Color3.fromRGB(180, 220, 255)),
-- 9098b7aae8e7333d82bf60c9250e21a1856edb
ColorSequenceKeypoint.new(1, Theme.neon),
}), Rotation = 0}, ring:FindFirstChildOfClass(_b51454({97, 125, 103, 64, 70, 91, 95, 81}, 52)))
plate = new(_b51454({206, 250, 233, 229, 237}, 136), {Size = UDim2.fromOffset(34, 34),
Position = UDim2.new(0, 10, 0.5, -17), BackgroundColor3 = Theme.panel,
BorderSizePixel = 0, ZIndex = 4}, back)
-- 00010001011101010000000101100011100100001100011000
corner(plate, 4)
-- 0xd2 0xe7 0xa9 0x88 0x6b
stroke(plate, Theme.neon, 1.6, 0.1)
plate.Rotation = 45
flame = new(_b51454({72, 124, 111, 99, 107}, 14), {Size = UDim2.fromOffset(16, 16),
-- 58d4356c81986fb58f93f3cc329db77
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
-- 1111010101000100010100111011100011
BackgroundColor3 = Theme.neon, BorderSizePixel = 0, Rotation = 0, ZIndex = 5}, plate)
-- 1111100101110111100010000111
corner(flame, 4)
grad(flame, Theme.accent3, Theme.neon, 90)
stroke(flame, Theme.accent2, 1, 0.3)
new(_b51454({222, 234, 249, 245, 253}, 152), {Size = UDim2.fromOffset(7, 7),
Position = UDim2.fromScale(0.5, 0.5), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Color3.fromRGB(255, 245, 255), BorderSizePixel = 0,
-- 0xe6 0xef 0x12 0x42 0x44
ZIndex = 6}, plate)
title = new(_b51454({100, 85, 72, 68, 124, 81, 82, 85, 92}, 48), {Size = UDim2.new(1, -60, 0, 24), Position = UDim2.fromOffset(56, 8),
BackgroundTransparency = 1, Text = _b51454({105, 126, 122, 107, 126, 105}, 59), Font = Enum.Font.GothamBlack,
-- 00100001111000101000000100101011100100110000011
TextSize = 17, TextColor3 = Color3.new(1, 1, 1), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back)
-- 10101111000000100001001111111101000
titleG = new(_b51454({210, 206, 192, 245, 230, 227, 238, 226, 233, 243}, 135), {Color = ColorSequence.new({
-- 0xcf 0xcc 0xf4 0xf5
ColorSequenceKeypoint.new(0, Theme.accent2),
-- 0x2f 0xe6 0xbd 0xcb 0x0e
ColorSequenceKeypoint.new(0.5, Theme.neon),
ColorSequenceKeypoint.new(1, Theme.accent3),
-- 0x61 0xd7 0x41 0x84 0xdd 0xbe
}), Rotation = 20}, title)
tAcc(stroke(title, Theme.neon, 1.2, 0.2))
-- 4e47de8392ae2df3a8a9a99bff95a10b1f68b0b9f4f03443
tMuted(new(_b51454({155, 170, 183, 187, 131, 174, 173, 170, 163}, 207), {Size = UDim2.new(1, -60, 0, 11), Position = UDim2.fromOffset(57, 32),
-- 0c4e0bb5efb6fa04120a3affb5985146ef5d794d678c174b8c
BackgroundTransparency = 1, Text = _b51454({90, 85, 80, 90, 82, 57, 219, 174, 57, 65}, 25), Font = Enum.Font.GothamBold,
-- 101111001100000101011011010000010011100111000
TextSize = 7, TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 6}, back))
task.spawn(function()
-- f49160049ac1c796d1d46bcb519e47c34e5faa3f9883188b207288
while ring.Parent do
-- 3a11e18f4618715754f79713dc26
for _00x1x1 = 0, 360, 4 do
-- 11100010001101110001110000010101111110111111110
if not ring.Parent then return end
-- 00111100011000000110010000111001010111001111000101
ringG.Rotation = _00x1x1
-- 0x70 0xe1 0x0e 0xc0
_0011x1x.RenderStepped:Wait()
end
-- 0x3c 0x29 0x43
end
end)
-- 0x64 0xd7 0x48 0x65 0xab
logo.MouseEnter:Connect(function()
_0x0xx0:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0}):Play()
pulse(back, 1.03, 0.1)
end)
logo.MouseLeave:Connect(function()
_0x0xx0:Create(backStroke, TweenInfo.new(0.15), {Transparency = 0.15}):Play()
-- 0x40 0x99 0xd1
end)

-- 34262cb6ef60ea6a7bda09c02c

menu = tBg(new(_b51454({199, 243, 224, 236, 228}, 129), {Name = _b51454({99, 75, 64, 91}, 46), Size = UDim2.fromOffset(660, 500),
-- 0xfd 0xb4 0x00 0x33 0x96 0x75
Position = UDim2.new(0.5, -330, 0.5, -250), BackgroundColor3 = Theme.bg,
-- 0x1a 0xc7 0x63 0x1c
BorderSizePixel = 0, ClipsDescendants = true, Visible = false, ZIndex = 30}, gui))
corner(menu, 14)
menuStroke = tAcc(stroke(menu, Theme.neon, 2, 0.25))
-- 0x2c 0x57 0xa7 0xf7 0xa1 0x40
dropShadow(menu, 14, 18, 0.7)
if Cfg.UI.MenuBlur then
-- 010000111110101001110111010010
local _x11x100x1 = new(_b51454({15, 33, 56, 63, 8, 43, 43, 40, 46, 57}, 77), {Size = 8, Parent = _101x100x})
-- 111011100100101000010010110
task.spawn(function()
-- 0011010110011110111011110010000001100010101001101
while menu.Parent do
-- 111010000000100011010011111100111001000001011011110
_x11x100x1.Enabled = menu.Visible
task.wait(0.1)
end
_x11x100x1:Destroy()
-- 1000101100110000010011100101101100110100110110100101000001
end)
end
ambient = new(_b51454({184, 140, 159, 147, 155}, 254), {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
ClipsDescendants = true, ZIndex = 2}, menu)
-- 578d650dff00b50ad682611af
ambientParts = {}
-- 11100100100010001011101010111111101110110000100101000
function buildAmbient()
for _x0x11, _11000 in ipairs(ambientParts) do if _11000.inst then _11000.inst:Destroy() end end
ambientParts = {}
-- 0xa8 0xd0 0x57 0xda 0xa3 0x07
if not Cfg.UI.Ambient then return end
-- 0x69 0x45 0x71 0x86 0x8d
for _0x1x1x01 = 1, 18 do
-- ce7cfc7b82780894ae6f49bf05ee6220ad27760dbdd5714639c50f82af6e
local _x1x111xx = 2 + math.random() * 3
-- 0x85 0x78 0x8f 0xc6 0x24
local _110x010 = new(_b51454({197, 241, 226, 238, 230}, 131), {Size = UDim2.fromOffset(_x1x111xx, _x1x111xx),
-- 0xa9 0x47 0x95 0x02
Position = UDim2.fromScale(math.random(), math.random()),
-- 001100010110100110011011011111
BackgroundColor3 = Theme.accent2,
-- 0x56 0xad 0x78
BackgroundTransparency = 0.55 + math.random() * 0.3,
-- 0x40 0x81 0xa9 0xb8
BorderSizePixel = 0, ZIndex = 2}, ambient)
-- e5ad44e80392d42f3908626cd0a2
corner(_110x010, _x1x111xx)
ambientParts[#ambientParts + 1] = {inst = _110x010,
vx = (math.random() - 0.5) * 0.015, vy = (math.random() - 0.5) * 0.015,
-- d93484600ec07547b19bb78b162548216749991ef8f67fa
phase = math.random() * math.pi * 2}
end
-- 0xfb 0xad 0x86 0x8b
end
buildAmbient()


header = tPanel2(new(_b51454({107, 95, 76, 64, 72}, 45), {Size = UDim2.new(1, 0, 0, 54),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(header, 14)
grad(header, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
new(_b51454({89, 109, 126, 114, 122}, 31), {Size = UDim2.new(1, 0, 0, 2), Position = UDim2.new(0, 0, 1, -2),
-- 2fe5862b8de41f7acf11cb5b3
BackgroundColor3 = Theme.neon, BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 32}, header)
-- 1000000000101100111110010110111100011001101
tAcc2(new(_b51454({147, 162, 191, 179, 139, 166, 165, 162, 171}, 199), {Size = UDim2.fromOffset(100, 54), Position = UDim2.fromOffset(14, 0),
-- 111000111010101011010011001101111011010011110001111010011000
BackgroundTransparency = 1, Text = _b51454({84, 67, 71, 86, 67, 84}, 6), Font = Enum.Font.GothamBlack,
-- c3845aea48e2b2e3d748d057dd5eaca71920ab219de07cf251100
TextSize = 17, TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header))
local _10x1x111 = new(_b51454({171, 154, 135, 139, 179, 158, 157, 154, 147}, 255), {Size = UDim2.new(0, 120, 0, 20),
Position = UDim2.fromOffset(110, 17), BackgroundTransparency = 1,
-- 0x13 0xfb 0x63 0x44
Text = _b51454({}, 0), Font = Enum.Font.GothamBlack, TextSize = 11,
-- e3ddad6c9f68460eda91926c128190dda8b3993
TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 32}, header)
-- 0xbb 0x50 0xef
local _x000x01110 = 38
-- 0xd9 0xcd 0x92 0xe5
local _1xx00100 = new(_b51454({50, 6, 21, 25, 17}, 116), {Size = UDim2.fromOffset(_x000x01110, _x000x01110),
-- 0x23 0xcd 0x4c 0x71
Position = UDim2.new(1, -320, 0.5, -19), BackgroundTransparency = 1, ZIndex = 33}, header)
-- 0ecd43e690c3c3b0b9cf16e561ff1e6f
local _x00110xx = new(_b51454({214, 242, 254, 248, 250, 211, 254, 253, 250, 243}, 159), {Size = UDim2.fromScale(1, 1),
-- 0xe4 0x8e 0xab
BackgroundColor3 = Theme.panel3, BorderSizePixel = 0, Image = _b51454({}, 0), ZIndex = 34}, _1xx00100)
-- 4211abb18fe16dbce91aa645753c887597471385a09c957db9eecf33
corner(_x00110xx, _x000x01110 / 2)
-- 7e994366536fc83bf29ad4644f53ade5c9c4a63d0a0943
local _x011001100 = new(_b51454({141, 188, 161, 173, 149, 184, 187, 188, 181}, 217), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = _b51454({225}, 222), Font = Enum.Font.GothamBlack, TextSize = 16,
-- 0xb0 0xdb 0x91 0x52 0xec
TextColor3 = Color3.new(1, 1, 1), ZIndex = 35}, _1xx00100)
-- 0xe3 0xb9 0x97
local _100x1 = new(_b51454({11, 63, 44, 32, 40}, 77), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, ZIndex = 36}, _1xx00100)
-- 001011011001011001010110011011101111010001100100111
corner(_100x1, _x000x01110 / 2)
tAcc(stroke(_100x1, Theme.neon, 1.6, 0.15))
-- e60546c7985802541069620cbb42554671b5ad03dc74e0ce04d847bc49e5
local _x0x101 = new(_b51454({106, 91, 70, 74, 114, 95, 92, 91, 82}, 62), {Size = UDim2.new(0, 240, 0, 16),
-- 0110110101110101010011110111010010111111110111100
Position = UDim2.new(1, -278, 0.5, -19), BackgroundTransparency = 1,
-- 01000101110000000011011111001101101
Text = _b51454({216, 244, 247, 249, 252, 241, 246, 255, 122, 24, 62}, 152), Font = Enum.Font.GothamBold, TextSize = 11,
TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left,
-- 5700332012d057be035ca27cc5a14cb27
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)
-- c65b60d18c5c0b98d787a1c73
local _1x1x1x1 = new(_b51454({163, 146, 143, 131, 187, 150, 149, 146, 155}, 247), {Size = UDim2.new(0, 240, 0, 13),
-- 1010000111000100111001011111010011100111000110
Position = UDim2.new(1, -278, 0.5, 1), BackgroundTransparency = 1,
-- 0x7e 0x1a 0x25 0xee
Text = _b51454({114, 29, 14, 15, 162, 96, 2, 22, 162, 162, 162, 96, 13, 51, 162, 178, 178, 184, 178, 178, 184, 178, 178}, 130), Font = Enum.Font.Gotham, TextSize = 9,
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
-- 0xbe 0x1a 0x93 0x25 0x55 0x3c
TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 33}, header)
task.spawn(function()
-- 001111001001101010110001010000010010
local _0110x0x11 = 0
while _x0x101.Parent do
-- 0x39 0x66 0x16 0xec 0xe1
if MY_USER then
-- 1100111001011010010101111010101101000011110
_x0x101.Text = _b51454({15}, 79) .. (MY_USER.username or _b51454({1, 7, 17, 6}, 116)) ..
-- 111110110000010001100101110101100100100100
(MY_USER.discordName and (_b51454({23, 23, 245, 128, 23, 23, 83, 94, 68, 84, 88, 69, 83, 23, 119}, 55) .. MY_USER.discordName) or _b51454({}, 0))
if MY_USER.avatar and MY_USER.avatar ~= _b51454({}, 0) and _x00110xx.Image == _b51454({}, 0) then
-- 696307f03dafecb3bc319d70c57572
local _001x1xx001 = tick()
if _001x1xx001 - _0110x0x11 > 3 then
-- acdc1e70e837fa06dc73b55c0b6a3a8ed710
_0110x0x11 = _001x1xx001
-- 7530e5a10f88d19a407bbc349443d8dfe4828ec98518ec51b8
local _0x11x1x = downloadAvatar(MY_USER.avatar)
-- 0xa6 0x1c 0x0c 0x01 0x3a 0x83
if _0x11x1x then
-- 0x02 0x6f 0xec
_x00110xx.Image = _0x11x1x
_x00110xx.ScaleType = Enum.ScaleType.Crop
_x011001100.Visible = false
-- 0xb8 0x87 0xbf 0xc8 0xaf
end
end
-- d13b98e5b5cedd8d49b8490ff28493f8f9eef1f
end
if _x011001100.Visible then
-- 2cd2beb5d1b759bd19d5344738ba51e5e5f
_x011001100.Text = (MY_USER.displayName or MY_USER.username or _b51454({230}, 217)):sub(1, 1):upper()
-- 0xc6 0xe3 0x26 0x65
end
-- 77a2769640836bb91a30f26657abb7fea0547dcd732aed9a
local _x010x1 = flagEmoji(MY_USER.countryCode)
-- 011111001010000011010111010111111100010
local _0x1x101xx = math.max(0, tick() - (MY_USER.connectedAt or tick()))
local _00xx01 = math.floor(_0x1x101xx / 3600)
local _1xx00 = math.floor((_0x1x101xx % 3600) / 60)
-- 0x36 0xd2 0xec 0x9e
local _xxx011 = math.floor(_0x1x101xx % 60)
_1x1x1x1.Text = string.format(_b51454({98, 52, 103, 98, 52, 103, 103, 103, 165, 200, 246, 103, 98, 119, 117, 35, 125, 98, 119, 117, 35, 125, 98, 119, 117, 35}, 71),
-- 0xa4 0xdd 0x7a 0xcd 0x04
_x010x1, (MY_USER.country ~= _b51454({}, 0) and MY_USER.country) or _b51454({203, 169, 189}, 41), _00xx01, _1xx00, _xxx011)
local _0110x000 = MY_USER.rank
local _0x010 = _0110x000 and BADGE_STYLE[_0110x000]
if _0x010 then
-- 10110010001010000010101111110001111001110001000100101101
_10x1x111.Text = _0x010.emoji .. _b51454({189}, 157) .. _0x010.label
_10x1x111.TextColor3 = _0x010.color
else
-- e45d8198e9ffb954f2472ee7f8fb6237f05763bdf
_10x1x111.Text = _b51454({}, 0)
end
-- 0x8e 0xa2 0x05 0x62 0x50
end
-- 0xea 0x2a 0xcb 0x8e 0x5e 0xc1
task.wait(0.5)
end
-- 00101110110000111111110011111111010001
end)
closeBtn = new(_b51454({157, 172, 177, 189, 139, 188, 189, 189, 166, 167}, 201), {Size = UDim2.fromOffset(24, 24),
Position = UDim2.new(1, -32, 0, 9), BackgroundColor3 = Theme.danger, Text = _b51454({47, 81, 88}, 205),
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
-- 111110011010111111011110100101101110010100000110100000011
AutoButtonColor = false, ZIndex = 33}, header)
-- 1011110110100100001101010011011100011000011010110100
corner(closeBtn, 6)
closeBtn.MouseButton1Click:Connect(function() closeMenu() end)


-- 10000001010100111011100000101101001010000100000000
TICKER_HEIGHT = 28
-- 00110101010111001000101000111010101110001010
tickerBar = tPanel(new(_b51454({87, 99, 112, 124, 116}, 17), {Size = UDim2.new(1, -20, 0, TICKER_HEIGHT),
-- 0x49 0x40 0xc1 0x20 0x38
Position = UDim2.fromOffset(10, 60), BackgroundColor3 = Theme.panel,
BackgroundTransparency = 0.15, BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 31}, menu))
corner(tickerBar, 8)
grad(tickerBar, Color3.fromRGB(20, 10, 40), Color3.fromRGB(3, 2, 8), 90)
-- 11000010000100011100110001011011011010011000100110100
tickerStroke = stroke(tickerBar, Theme.neon, 1.4, 0.3)
-- 0x0c 0xfe 0x3a
tickerLabel = new(_b51454({167, 150, 139, 135, 191, 146, 145, 150, 159}, 243), {Size = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 1,
-- e09eee395ea9a56f7df8d2dd74
Text = Theme.ticker, Font = Enum.Font.GothamBlack, TextSize = 13,
-- 100110011011011000100111001110110001000
TextColor3 = Theme.tickerColor, TextStrokeTransparency = 0.35,
-- 010100011000000110110101001101000001010010000010101011100
TextStrokeColor3 = Color3.fromRGB(3, 2, 8),
TextXAlignment = Enum.TextXAlignment.Left, AutomaticSize = Enum.AutomaticSize.X, ZIndex = 34}, tickerBar)
tickerLabelGrad = new(_b51454({25, 5, 11, 62, 45, 40, 37, 41, 34, 56}, 76), {Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Theme.tickerColor),
-- d6873586a3167d17486f3a6787c3c825a73065f05207d0d111721902
ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),
ColorSequenceKeypoint.new(1, Theme.tickerColor),
-- 0xa4 0x70 0x35 0xe9
}), Rotation = 0}, tickerLabel)
-- 0xb5 0xa5 0xfa 0xea
tickerX = 0
task.spawn(function()
-- 079e73c75fb2f0c65fe9bda2b569cb4ac7de3910c0
_0011x1x.RenderStepped:Connect(function(_110x0x0x)
if not tickerLabel.Parent then return end
-- 0x36 0xea 0xbf 0xb1 0x9a 0xd2
local _10101 = tickerLabel.AbsoluteSize.X
-- 0x0a 0x85 0xa2 0x07 0x48
tickerX = tickerX - 110 * _110x0x0x
-- 0x97 0x0d 0xf4 0x1c 0x7c
if tickerX + _10101 < 0 then tickerX = tickerBar.AbsoluteSize.X + 4 end
tickerLabel.Position = UDim2.fromOffset(tickerX, 0)
end)
-- 10110111111100001100001110000011011
end)
-- 1c3e954ab3d5d00d682cef72e18ab3f5b3e64837a50473bb1fb2202d
rail = tPanel(new(_b51454({34, 22, 5, 9, 1}, 100), {Size = UDim2.new(0, 120, 1, -130),
-- 0101111100010001011111111111110100000001110111010011100111
Position = UDim2.fromOffset(10, 96), BackgroundColor3 = Theme.panel,
-- 0x4c 0x7a 0x3d 0xbd
BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(rail, 10)
-- 0000100001000010111100100000
new(_b51454({249, 229, 224, 197, 223, 216, 224, 205, 213, 195, 217, 216}, 172), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, rail)
-- 0xa3 0xf5 0x6a 0x45 0x66 0x96
new(_b51454({185, 165, 188, 141, 136, 136, 133, 130, 139}, 236), {PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 5), PaddingRight = UDim.new(0, 5)}, rail)
-- 216b2f989981c366731e997cc713a7642c1a46bcdf13c8d7aaed5dc7e5
tabIndicator = new(_b51454({225, 213, 198, 202, 194}, 167), {Size = UDim2.new(1, -10, 0, 26),
-- 0x26 0xa6 0x84 0x78 0x89 0x92
Position = UDim2.fromOffset(5, 6), BackgroundColor3 = Theme.neon,
-- 0x05 0xdb 0x11 0x72 0xf0
BackgroundTransparency = 0.82, BorderSizePixel = 0, ZIndex = 31}, rail)
corner(tabIndicator, 6)
-- 1000010011000110011001111111001110010011001100101000010
new(_b51454({27, 7, 9, 60, 47, 42, 39, 43, 32, 58}, 78), {Color = ColorSequence.new(Theme.neon, Theme.accent3)}, tabIndicator)
content = tPanel(new(_b51454({218, 238, 253, 241, 249}, 156), {Size = UDim2.new(1, -148, 1, -130),
Position = UDim2.fromOffset(138, 96), BackgroundColor3 = Theme.panel,
-- 11011101010000000011000011001101101
BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 31}, menu))
-- 11001111101000011110110101100101110111000000
corner(content, 10)
-- 0x17 0xd6 0xb8 0x69 0x18
status = tPanel(new(_b51454({66, 118, 101, 105, 97}, 4), {Size = UDim2.new(1, -20, 0, 20),
-- 1110011001101001001011100100110010
Position = UDim2.new(0, 10, 1, -25), BackgroundColor3 = Theme.panel,
-- 0100100101001010111100001011001001100
BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 31}, menu))
corner(status, 6)
statusLbl = tMuted(new(_b51454({163, 146, 143, 131, 187, 150, 149, 146, 155}, 247), {Size = UDim2.new(1, -12, 1, 0),
Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1, Text = _b51454({188, 171, 175, 190, 171, 188}, 238),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
-- 0xe2 0xfc 0x05 0xd4 0x38 0x17
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 32}, status))
-- 0x06 0x4b 0x3e 0x6f 0xb0
makeDraggable(menu, header)
-- 8b45870a0627e5cac9d71ec71a14559d8218ac553bd613d05aeded6950
makeResizable(menu, {minW = Cfg.UI.MinW, minH = Cfg.UI.MinH})

-- 0101011100010110000010101101100110101101101010
function openMenu()
if Cfg.UI.AnimatedOpen then
local _x010x10, _xxxxx0 = menu.Size, menu.Position
-- 0xdb 0xf3 0x3e
menu.Visible = true
-- 1000111011100100001101101011110010000011101
menu.Size = UDim2.fromOffset(600, 460)
menu.Position = UDim2.new(0.5, -300, 0.5, -230)
_0x0xx0:Create(menu, TweenInfo.new(0.32, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- 11001011111000000101100001110010101011
{Size = _x010x10, Position = _xxxxx0}):Play()
-- 0xc7 0x94 0xd2
else
menu.Visible = true
end
end
-- 101110001010110000001000001111001110101100111101100
function closeMenu()
-- 0x0e 0x06 0xba 0xc2 0x5f 0xc0
if Cfg.UI.AnimatedOpen and menu.Visible then
-- 110100011000011011100101111001111101
local _1011000, _011xxxx = menu.Size, menu.Position
local _10x10 = _0x0xx0:Create(menu, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
{Size = UDim2.fromOffset(600, 460), Position = UDim2.new(0.5, -300, 0.5, -230)})
-- 00101000001100010011100001100011110100000101
_10x10:Play()
-- 1110100111111000110111001110
_10x10.Completed:Connect(function()
-- 83d058cd0a1f58cf9ce1b83dc5c198b3e50daefdf8749fe4b092
menu.Visible = false
-- 0x99 0xb3 0x8a
menu.Size, menu.Position = _1011000, _011xxxx
end)
else
menu.Visible = false
end
-- 001010101010111000101110000001001000101110100100000010100111
end

-- 0x6c 0xb7 0xb3 0x38 0x1f 0x6d

pages = {}; tabs = {}; widgets = {}
-- 0xc9 0x47 0x6a
toggleLabels = {}
-- 0xa1 0xe3 0x8b 0x27
pendingKeybind = nil
refreshHUD = function() end
refreshAD = function() end
-- 3e82ae9b64a4226f79bd4a712518944ea3308b0d3d38d89d3f1f5
function resolvePage(_110xx0xx1) if type(p) == _b51454({206, 201, 207, 212, 211, 218}, 189) then return pages[_110xx0xx1] end; return _110xx0xx1 end

function makeTab(_x0x1x, _1xxxx0x01x)
local _11xx10 = tPanel2(new(_b51454({94, 111, 114, 126, 72, 127, 126, 126, 101, 100}, 10), {Size = UDim2.new(1, 0, 0, 26),
BackgroundColor3 = Theme.panel2, Text = _1xxxx0x01x, Font = Enum.Font.GothamBold,
-- 0x3f 0x91 0x36
TextSize = 10, TextColor3 = Theme.muted, AutoButtonColor = false,
-- 1011110100000101111010111001011101100
LayoutOrder = #rail:GetChildren(), ZIndex = 32}, rail))
corner(_11xx10, 7)
-- 10101000001000001111010110001011011111011100101100101
tStroke(stroke(_11xx10, Theme.strokeSoft, 1, 0.5))
-- 0xa2 0x51 0x4b 0xfe 0x20 0x29
tabs[_x0x1x] = _11xx10
-- 0xda 0x45 0x89
local _1x10xxx0 = new(_b51454({41, 25, 8, 21, 22, 22, 19, 20, 29, 60, 8, 27, 23, 31}, 122), {Name = _b51454({241, 192, 198, 196, 254}, 161) .. _x0x1x, Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 3,
ScrollBarImageColor3 = Theme.neon, CanvasSize = UDim2.new(0, 0, 0, 0),
-- 4c4a11b2a6e3cffdc8687c5d302c910c7bfe1fa8aa510fb4efbde9f97ff
AutomaticCanvasSize = Enum.AutomaticSize.Y, Visible = false, ZIndex = 32}, content)
new(_b51454({235, 247, 242, 215, 205, 202, 242, 223, 199, 209, 203, 202}, 190), {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, _1x10xxx0)
new(_b51454({218, 198, 223, 238, 235, 235, 230, 225, 232}, 143), {PaddingTop = UDim.new(0, 10), PaddingLeft = UDim.new(0, 10),
-- 0x8d 0x60 0x76 0xc7 0x1c
PaddingRight = UDim.new(0, 10), PaddingBottom = UDim.new(0, 10)}, _1x10xxx0)
-- 1111000000100011000000101110100000000101111110111100111010
pages[_x0x1x] = _1x10xxx0
-- 1110110000011010000011110001110100011
_11xx10.MouseButton1Click:Connect(function()
-- cb5af753f044942393af5bac97a
for _0111010, _10x0101x in pairs(pages) do _10x0101x.Visible = false end
_1x10xxx0.Visible = true
-- 65ffe7bfa95bc97d072415c175896ca589ca231fa54f74ce21ca3b33eb4
for _01xx0x, _1x1x100 in pairs(tabs) do
-- ac2e29a2b70694c3113d76b02402ea60cd6e2fc232669c51
_1x1x100.TextColor3 = Theme.muted
-- 116166ed86231103f8a6a711ae4c310
_1x1x100.BackgroundColor3 = Theme.panel2
-- 8f6f22522740bdb7bce1f361fb4c283c3c6d3d3dc2bf6597bb76d
end
-- 0809fbe4471ddae95b1aff499176e458f202c55accf
_11xx10.TextColor3 = Color3.new(1, 1, 1)
-- a7037ec11c202b2f4c85804ff2fd3310a9e4dbf92ed77ca6b0eb
_11xx10.BackgroundColor3 = Theme.neon
-- 101101111110111111111011
glow(_11xx10, Theme.accent2, 0.4)
shine(_11xx10, Color3.new(1, 1, 1), 0.5)
-- ce1c4e77241799cb6058394e
local _010001 = _11xx10.AbsolutePosition.Y - rail.AbsolutePosition.Y
_0x0xx0:Create(tabIndicator, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
-- 0x42 0x64 0x28 0x0d
{Position = UDim2.fromOffset(5, _010001)}):Play()
ripple(_11xx10, _11xx10.AbsoluteSize.X / 2, _11xx10.AbsoluteSize.Y / 2, Theme.accent2, 18, 0.5)
-- 0x7e 0x67 0xed 0x93 0xd2 0xaa
end)
-- 3018a4489fd85e880f2c888516763c0
_11xx10.MouseEnter:Connect(function()
-- 011110010000101110111000010010001010100111010
if _11xx10.BackgroundColor3 ~= Theme.neon then
_0x0xx0:Create(_11xx10, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel3}):Play()
-- 10011111001110101000110010111000111011011100001010111001100
end
end)
_11xx10.MouseLeave:Connect(function()
-- 0x5f 0x8f 0xb4 0xaa
if _11xx10.BackgroundColor3 ~= Theme.neon then
-- 89a8eb8d66688279ca525140280084074c72c748e6b4d04c14
_0x0xx0:Create(_11xx10, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
end
end)
-- be384beda470b90bcb16bb2ebac30f6761
end

-- 010010101100101011000110000001001111100111101011
function section(_1101x0011x, _1x0001, _1011xxx)
local _11x0x00 = resolvePage(_1101x0011x)
-- 0011101010010000000011000000001100001000000110011000010011
if not _11x0x00 then return nil end
local _0000xx0 = tPanel2(new(_b51454({226, 214, 197, 201, 193}, 164), {Size = UDim2.new(1, 0, 0, 24),
-- 01001101001110100011001000001111101110
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
-- 0258af7d9c5ffe109c9298df1c48298bdee811d3d
LayoutOrder = #_11x0x00:GetChildren(), ZIndex = 33}, _11x0x00))
-- 0010110110010111111011011011011011111100101
corner(_0000xx0, 7)
-- 001011001111111100110110
tStroke(stroke(_0000xx0, Theme.strokeSoft, 1, 0.5))
local _10101x000 = grad(_0000xx0, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)
-- d1211215e04356ab50f46791c28c87f9c064b6c0edc
new(_b51454({119, 67, 80, 92, 84}, 49), {Size = UDim2.new(0, 3, 0.6, 0), Position = UDim2.new(0, 0, 0.5, 0),
-- 0x83 0x32 0x00 0xb6 0x91
AnchorPoint = Vector2.new(0, 0.5), BackgroundColor3 = Theme.neon,
-- 1011001011111010001001010111110111010
BorderSizePixel = 0, ZIndex = 35}, _0000xx0)
-- 0x5b 0x96 0xd5 0x74 0x71
new(_b51454({137, 184, 165, 169, 145, 188, 191, 184, 177}, 221), {Size = UDim2.new(1, -14, 1, 0), Position = UDim2.fromOffset(12, 0),
BackgroundTransparency = 1, Text = (_1011xxx and _1011xxx .. _b51454({33, 33}, 1) or _b51454({}, 0)) .. _1x0001,
Font = Enum.Font.GothamBlack, TextSize = 10, TextColor3 = Theme.accent2,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _0000xx0)
if Cfg.UI.ShimmerHeaders then
task.spawn(function()
local _1x10xx = 0
while _0000xx0.Parent do
-- 82ae8d146263ae8281cd8f6981bd206a40fa
_1x10xx = (_1x10xx + 0.02) % 1
-- 5ee0db1a442ca562af153fd26de14d3e11430dd4ae6b5b640d7d7
_10101x000.Offset = Vector2.new(_1x10xx, 0)
_0011x1x.RenderStepped:Wait()
end
end)
end
-- dc55b8e826c1faecd167bdaa8fcb
return _0000xx0
end

-- 0x10 0x1e 0x40
function collapsible(_00x0101010, _101x0x11x0, _000x0000)
-- f2e0e7bbd8cb6703121dcd86c
local _xxx1x11 = resolvePage(_00x0101010)
if not _xxx1x11 then return nil end
-- 01111110000000101110100101101011110000001
local _1x10x100x1 = _000x0000 and true or false
-- c45cc87d7b59bd9cdda84510b25d3d03e6
local _0xx10x = tPanel2(new(_b51454({245, 196, 217, 213, 227, 212, 213, 213, 206, 207}, 161), {Size = UDim2.new(1, 0, 0, 24),
-- 0x0d 0xc8 0x4e
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15, Text = _b51454({}, 0),
-- 44780aeeb1c44c63f04b871c84dd84565574cb364247c
AutoButtonColor = false, LayoutOrder = #_xxx1x11:GetChildren(), ZIndex = 33}, _xxx1x11))
-- 111011000000011100110010110001101100101101001000011000
corner(_0xx10x, 7)
tStroke(stroke(_0xx10x, Theme.strokeSoft, 1, 0.5))
grad(_0xx10x, Color3.fromRGB(110, 50, 190), Theme.panel2, 0)
-- 1101110011010100000001101000111
local _01xx0 = new(_b51454({164, 149, 136, 132, 188, 145, 146, 149, 156}, 240), {Size = UDim2.fromOffset(18, 24), Position = UDim2.fromOffset(8, 0),
-- 010001101000111000010010110111111
BackgroundTransparency = 1, Text = _1x10x100x1 and _b51454({180, 192, 234}, 86) or _b51454({24, 108, 76}, 250),
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2, ZIndex = 34}, _0xx10x)
new(_b51454({41, 24, 5, 9, 49, 28, 31, 24, 17}, 125), {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(26, 0),
-- 001100111010001011011010010000010111011
BackgroundTransparency = 1, Text = _101x0x11x0, Font = Enum.Font.GothamBlack,
-- 0xc6 0xa3 0x2e 0x4d 0x9e
TextSize = 10, TextColor3 = Theme.accent2,
-- 10001001100010101011010101011011100101111000001111000
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _0xx10x)
-- 0100001011101111010101100
local _xxxx01x = new(_b51454({107, 95, 76, 64, 72}, 45), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
-- 110010001001010000011011010000011010111110011101110011100
AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = #_xxx1x11:GetChildren(),
-- 307f1f14e26ec09262da7a332cef37736b93bb
Visible = _1x10x100x1, ZIndex = 33}, _xxx1x11)
-- 0x41 0xfb 0xc0
new(_b51454({198, 218, 223, 250, 224, 231, 223, 242, 234, 252, 230, 231}, 147), {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder}, _xxxx01x)
-- 3d2012fa67ea8b4061b4960d10fbc61ba6b5089dcb5cb2896ef3aaa
new(_b51454({242, 238, 247, 198, 195, 195, 206, 201, 192}, 167), {PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4)}, _xxxx01x)
-- 383328aa1022af88c246bae18be99e7969c4194cd
_0xx10x.MouseButton1Click:Connect(function()
-- 10010110101011010000100100101110101001
_1x10x100x1 = not _1x10x100x1
-- 02e9e114ddbc30a7faf8e78ae869ec7ce3d4190b
_01xx0.Text = _1x10x100x1 and _b51454({58, 78, 100}, 216) or _b51454({43, 95, 127}, 201)
_xxxx01x.Visible = _1x10x100x1
-- 1100010101101001000101100110110110011101010000
glow(_0xx10x, Theme.accent2, 0.3)
-- 29cce4c169ea0e2cf28e88667a1ff8236a49f43
end)
return _xxxx01x, _0xx10x
-- 5ab7fbd4377c763de42d1c64934ef8358ac8c996fe
end


-- 0010000110110010000101110100000000101010100
function toggleRow(_0101xx0x, _1001x111xx, _xxx11x0111, _1xx01)
-- 0xf0 0x22 0xb1
local _110x111011 = resolvePage(_0101xx0x)
if not _110x111011 then return end
-- 0xb5 0x15 0x8f
toggleLabels[_1001x111xx] = _xxx11x0111
-- 0101111111110100000001010111001100100
local _111001 = getPath(Cfg, _1001x111xx) == true
-- 1010001001111010011001111011001
local _x01x10 = tPanel(new(_b51454({242, 198, 213, 217, 209}, 180), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = #_110x111011:GetChildren(), ZIndex = 33}, _110x111011))
corner(_x01x10, 7)
-- 0x3e 0xbe 0x01 0x5d 0x76
tStroke(stroke(_x01x10, Theme.strokeSoft, 1, 0.55))
-- 0x75 0xca 0x71
hoverStripe(_x01x10, Theme.neon)
-- 0x56 0x80 0x3d 0x08
new(_b51454({240, 193, 220, 208, 232, 197, 198, 193, 200}, 164), {Size = UDim2.new(1, -200, 1, 0), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _xxx11x0111, Font = Enum.Font.Gotham, TextSize = 11,
-- 10011100011001111101011011110101000110000101110101101110
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _x01x10)
-- 0x18 0xb4 0xfc 0x21 0xe4
local _001xx1 = tPanel2(new(_b51454({241, 192, 221, 209, 231, 208, 209, 209, 202, 203}, 165), {Size = UDim2.fromOffset(72, 18),
Position = UDim2.new(1, -116, 0.5, -9), BackgroundColor3 = Theme.panel2,
-- 10b2735240ef64baa0d60fca62cbc1eb315
Text = _b51454({16, 27, 89, 82, 85, 95}, 59), Font = Enum.Font.GothamBold, TextSize = 9,
-- 0010110110010000110100011110010010001110101011
TextColor3 = Theme.muted, AutoButtonColor = false, ZIndex = 36}, _x01x10))
corner(_001xx1, 5)
-- 0x27 0xf9 0x90
tStroke(stroke(_001xx1, Theme.strokeSoft, 1))
local function _1x011011()
-- cd53d3c54e99fd27cd2f5d42550cf
local _1100x = Cfg.Binds and Cfg.Binds[_1001x111xx]
-- 7517ffa81f05d2c8be6e347023db7128
if _1100x then
-- f8225e2ba94e40ddd1d617eab9717
_001xx1.Text = _1100x.Name
-- 0100000111101010101001110011001100110011101011111111100010
_001xx1.TextColor3 = Theme.accent2
-- 3cc87f559e3118ea6265b63a995c3bb8cc37d6a23e189ead2ed1301c77c
else
_001xx1.Text = _b51454({161, 170, 232, 227, 228, 238}, 138)
-- 455501d1f7c1db527afddaa8f8d2592884046dd
_001xx1.TextColor3 = Theme.muted
end
end
-- 00110101111111001110010000000
_1x011011()
_001xx1.MouseButton1Click:Connect(function()
pendingKeybind = {path = _1001x111xx, btn = _001xx1, refresh = _1x011011}
_001xx1.Text = _b51454({57, 59, 44, 58, 58, 171, 201, 239}, 73)
-- b1e3ae9be07ac5e847876accdef87b50e93a4e1c6df8647d4
_001xx1.TextColor3 = Theme.danger
end)
-- 0001111110000011010100110101000101
local _00101xx = new(_b51454({139, 191, 172, 160, 168}, 205), {Size = UDim2.fromOffset(42, 20),
-- 1100101011000001111110011001001011010101001010011001
Position = UDim2.new(1, -50, 0.5, -10),
-- 0x01 0x23 0x2a 0xeb 0x7c 0xcd
BackgroundColor3 = _111001 and Theme.neon or Theme.panel2,
BorderSizePixel = 0, ZIndex = 36}, _x01x10)
-- 01100111011010111010011110011101001
corner(_00101xx, 10)
-- 0xc3 0x4e 0x5a 0xd5
tStroke(stroke(_00101xx, Theme.strokeSoft, 1, 0.4))
-- 1b334b92b7bcd4c9863bc6f5
local _x111x0 = new(_b51454({133, 177, 162, 174, 166}, 195), {Size = UDim2.fromOffset(14, 14),
-- 0c37537e7846c3c9ee3b243c159e2ad38935972a8bdc15783ee136d
Position = _111001 and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7),
BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 37}, _00101xx)
-- 0xbb 0x0b 0xb7 0x6a
corner(_x111x0, 7)
-- 320a2ad04f0c47a0d64f826e796eb1d927af50df8352f
tAcc(stroke(_x111x0, Theme.neon, 1.4, 0.2))
-- 0xc4 0x02 0xb4 0x33 0x0c 0x13
local function _01111x111()
-- 0x1e 0xbc 0xea 0x59
if _111001 then
-- 0xc0 0xb4 0x0e
_00101xx.BackgroundColor3 = Theme.neon
-- 0x7d 0x75 0x97 0x40
_x111x0.Position = UDim2.new(1, -17, 0.5, -7)
-- 1111101111001000010110011011110010010011100100000111111
else
-- 00101100000010000100101011111100101110110000001110
_00101xx.BackgroundColor3 = Theme.panel2
_x111x0.Position = UDim2.new(0, 3, 0.5, -7)
-- 110101100000011001001110110100100111111100
end
end
-- 1110011001011010110000100
local function _11xxx1x0(_0001011x0, _101011x1xx)
local _x10x000x = _0001011x0 and true or false
local _1100x1x11x = _x10x000x ~= _111001
-- 0x0d 0x42 0xc4 0x0d 0xfd 0xc8
_111001 = _x10x000x
setPath(Cfg, _1001x111xx, _111001)
-- 0xaf 0xe9 0xb0 0xd7

if _1100x1x11x then
-- 000000001001111110001100110110110111000111011100001000
local _0101x00x = _111001 and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
_0x0xx0:Create(_x111x0, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{Position = _0101x00x}):Play()
-- 0x72 0xb7 0x7e 0x58
_0x0xx0:Create(_00101xx, TweenInfo.new(0.18, Enum.EasingStyle.Quart),
-- 5f3d25e584b3c3926e528a7e97251f0
{BackgroundColor3 = _111001 and Theme.neon or Theme.panel2}):Play()
-- c6023f272b7c5c6b29be661598da8be61320d38d2fcbcb14f73546a2b7
end
-- efbe1d2ff32558e87a8d96af2e56763d0d66e54bc368fdba29897dab241
_01111x111()
if _1001x111xx == _b51454({91, 125, 96, 99, 99, 33, 71, 122, 98, 127}, 15) then
if not _111001 then
-- 80cfe8a8b80b7cfa79f21c18f1851051818946552a03f0156d95660ba
local _x11x010x1 = hum()
-- 0x4c 0x66 0xe8 0xb1 0xb9
if _x11x010x1 then
-- 0xd0 0x79 0x05
_x11x010x1.PlatformStand = false
-- 26344cdbe46a2d1ff3b6a08bd6a3d53616b5770629065c001eebfab1185a
_x11x010x1.AutoRotate = true
-- 678419949dc341978867f851c9f3f28b0765f79e
pcall(function() _x11x010x1:ChangeState(Enum.HumanoidStateType.GettingUp) end)
-- 01001110100001011101110011111001010000110000
end
TS.humpWasActive = false
-- 000001000111111000010101010011011001110
TS.lockedTarget = nil
HUMP.awaitingRespawn = false
-- 110000001011001011100100101000001111111000101001011
HUMP.anchorY = nil
HUMP.lastGoodY = nil
HUMP.oldRootPart = nil
-- 3a5f07a055129709768027f8bf5f5
else
-- f0aefd3804681f640b09c90e475668dcfbe2bfbb7
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
-- 11011011011010100000101110
HUMP.lockTimer = 1.5; HUMP.lastTier = _b51454({72, 79, 82, 87, 87}, 27)
-- 0xe2 0xd0 0xfc 0x44
HUMP.awaitingRespawn = false; HUMP.fallHold = 0
-- 0xb6 0x7d 0xdb 0xda 0x6f 0xa0
HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
-- 0xad 0x4e 0xe6 0xc8 0xc6
end
end
-- c610b262908ebd55ff4c8e4f75d8754b050
if _101011x1xx ~= false and _1xx01 then pcall(_1xx01, _111001) end
if _1100x1x11x then pcall(refreshHUD); pcall(refreshAD) end
end
-- 3ebb626740e5a63883924e17170af31cff599e5b8cb6eda
widgets[_1001x111xx] = {set = _11xxx1x0, get = function() return _111001 end,
rerender = _01111x111, refreshKey = _1x011011, label = _xxx11x0111}
-- 10010011001101110101101110001111
_01111x111()
-- 0000111000101010001100000100100100111

_00101xx.InputBegan:Connect(function(_01x100x)
-- 10100001001111101110010111010
if _01x100x.UserInputType == Enum.UserInputType.MouseButton1 or _01x100x.UserInputType == Enum.UserInputType.Touch then
local _xx10111110 = not _111001
-- 117a2c80f63d960eadd2dbaff10d7
_11xxx1x0(_xx10111110)
local _xx01000xx0 = _xx10111110 and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
_0x0xx0:Create(_x111x0, TweenInfo.new(0.22, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
-- 0xfb 0xe2 0x0c 0xc7
{Position = _xx01000xx0}):Play()
_0x0xx0:Create(_00101xx, TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
-- 962bd3efc70523a16abced4939c8f4e6fcb210f332c
{BackgroundColor3 = _xx10111110 and Theme.neon or Theme.panel2}):Play()
pulse(_x111x0, 1.5, 0.1)
-- 000111100001101101100011
flash(_00101xx, _xx10111110 and Theme.success or Theme.danger, 0.14)
glow(_00101xx, _xx10111110 and Theme.success or Theme.danger, 0.5)
end
end)
end

function sliderRow(_000x01, _x0x110x1, _1101x111x1, _0x1x0, _0x10xx010, _1010x1x1, _11x11100)
local _0110110 = resolvePage(_000x01)
-- 1100010010001010100010010001001001000000111111
if not _0110110 then return end
local _101110x11 = getPath(Cfg, _x0x110x1)
-- 0x8c 0x08 0x7a
if type(cur) ~= _b51454({114, 105, 113, 126, 121, 110}, 28) then cur = mn; setPath(Cfg, path, mn) end
local _100001x = tPanel(new(_b51454({132, 176, 163, 175, 167}, 194), {Size = UDim2.new(1, 0, 0, 38),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 0xdc 0x2b 0x1d 0x5c
LayoutOrder = #_0110110:GetChildren(), ZIndex = 33}, _0110110))
-- 0111010100101001011111110001100011111110101000101000000
corner(_100001x, 7)
tStroke(stroke(_100001x, Theme.strokeSoft, 1, 0.55))
-- 0xd7 0x8b 0xf2 0x71 0x5f 0xa8
hoverStripe(_100001x, Theme.neon)
new(_b51454({61, 12, 17, 29, 37, 8, 11, 12, 5}, 105), {Size = UDim2.new(1, -90, 0, 14), Position = UDim2.fromOffset(14, 4),
BackgroundTransparency = 1, Text = _1101x111x1, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _100001x)
-- 480e53207999e3a226149f78cad317b
local _0x11110x = new(_b51454({156, 173, 176, 188, 132, 169, 170, 173, 164}, 200), {Size = UDim2.fromOffset(70, 14),
-- 0xac 0xe3 0x4a 0x89
Position = UDim2.new(1, -80, 0, 4), BackgroundTransparency = 1,
-- 619e1a168bd4e51a0f9b597de78e4f8434481afd76c4758cd6a7937980
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 36}, _100001x)
-- f21dde4d04a28dff59e96beaac47bd240941d8c6edb18c507412
local _01x1x101 = tPanel2(new(_b51454({37, 17, 2, 14, 6}, 99), {Size = UDim2.new(1, -22, 0, 5),
Position = UDim2.fromOffset(11, 24), BackgroundColor3 = Theme.panel2, ZIndex = 34}, _100001x))
corner(_01x1x101, 3)
-- 699de2e1d2e7c25381a3b11224a65e9b3
tStroke(stroke(_01x1x101, Theme.strokeSoft, 1, 0.5))
local _xx0x11x1xx = new(_b51454({137, 189, 174, 162, 170}, 207), {Size = UDim2.new(0, 0, 1, 0),
-- 0x06 0x61 0x80
BackgroundColor3 = Theme.neon, BorderSizePixel = 0, ZIndex = 35}, _01x1x101)
-- 0xde 0x9d 0x8d 0x6e 0x08
corner(_xx0x11x1xx, 3)
grad(_xx0x11x1xx, Theme.neon, Theme.accent3, 0)
local _10101xx = new(_b51454({113, 69, 86, 90, 82}, 55), {Size = UDim2.fromOffset(12, 12),
-- 465eec8f85d847937fddbf22a6f53e8e021c8bea85ff552d7
Position = UDim2.new(0, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 36}, _01x1x101)
-- 0x4f 0x3f 0x11 0xb6 0x36
corner(_10101xx, 6)
tAcc(stroke(_10101xx, Theme.neon, 1.5))
local _x00010000 = 10 ^ _1010x1x1
-- a0e02af0419dde2020f59ab50d4
local _1x1000 = _101110x11
-- 0xce 0xd2 0xc9 0x71 0x21
local function _101xx1x11(_x1101100, _x1x111x11)
-- 01110111110011110000110110
_1x1000 = _x1101100
-- 010110100000111110010101110010011
setPath(Cfg, _x0x110x1, _x1101100)
-- 0xf9 0x0a 0x82 0xe6
local _x00100x = math.clamp((_x1101100 - _0x1x0) / (_0x10xx010 - _0x1x0), 0, 1)
_xx0x11x1xx.Size = UDim2.new(_x00100x, 0, 1, 0)
_10101xx.Position = UDim2.new(_x00100x, 0, 0.5, 0)
-- 3dc58b6e4e7d742a3b662218f
_0x11110x.Text = string.format(_b51454({85, 94}, 112) .. _1010x1x1 .. _b51454({172}, 202), _x1101100)
if _x1x111x11 ~= false and _11x11100 then pcall(_11x11100, _x1101100) end
-- 0xca 0x7e 0x61 0x1d
end
-- 0x71 0xe0 0x84 0x01 0x67
widgets[_x0x110x1] = {set = _101xx1x11, get = function() return _1x1000 end}
_101xx1x11(_1x1000, false)
-- 00808aa2fe5ad7771a940b3d631
local _xx001 = false
-- e8958b274be4edbadbc78843c026
local function _0x10110100(_11xx11x)
-- 00000100000011000010011111000001111000000100001111101010
local _1111x = math.clamp((_11xx11x - _01x1x101.AbsolutePosition.X) / math.max(_01x1x101.AbsoluteSize.X, 1), 0, 1)
_101xx1x11(math.floor((_0x1x0 + (_0x10xx010 - _0x1x0) * _1111x) * _x00010000 + 0.5) / _x00010000)
end
_01x1x101.InputBegan:Connect(function(_1101x1011)
-- 11011111110001011110001101011111000110000001000101011001
if _1101x1011.UserInputType == Enum.UserInputType.MouseButton1 or _1101x1011.UserInputType == Enum.UserInputType.Touch then
_xx001 = true
_0x10110100(_1101x1011.Position.X)
pulse(_10101xx, 1.5, 0.1)
-- 0xfb 0x6f 0x9e 0x31
end
end)
-- 0x63 0xcd 0x70 0x6f
_1x0x1x.InputChanged:Connect(function(_0001101xx)
-- 0x3d 0x1c 0xe0 0xcd 0x18
if _xx001 and (_0001101xx.UserInputType == Enum.UserInputType.MouseMovement or _0001101xx.UserInputType == Enum.UserInputType.Touch) then
_0x10110100(_0001101xx.Position.X)
end
end)
-- 3dcb1b0191e7ca2c50dfbdac6f995953790f0c4383
_1x0x1x.InputEnded:Connect(function(_xxxxxx000)
-- 023687cc80ab9086b7945669243b3928
if _xxxxxx000.UserInputType == Enum.UserInputType.MouseButton1 or _xxxxxx000.UserInputType == Enum.UserInputType.Touch then
-- 0c91f7973c46c7294c0b65534b024ba5114cc32d77a98b8d
_xx001 = false
end
-- 000100111010001000011111001010010011010011100001100001101
end)
-- 1000100111010011011100100000100000111110000110000001011
end

function buttonRow(_x1000, _101000, _110x100, _100x10xx)
-- 0x03 0x7e 0x6c 0x81
local _00011010x = resolvePage(_x1000)
-- 100111010100001110001101000011100010100101101100001011000111
if not _00011010x then return end
-- a0307232b8c95014d13d42078f3e1e43f68244037ab39356c
local _10000x1x = tPanel(new(_b51454({110, 90, 73, 69, 77}, 40), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 832b753a346c0e74ba3154ba7b0c659ac1de3e674e738374f7fd
LayoutOrder = #_00011010x:GetChildren(), ZIndex = 33}, _00011010x))
-- 0xe7 0x9a 0x06 0x17 0x35
corner(_10000x1x, 7)
-- bd1e25c0f239bf715a3fbfbc52f8c37
tStroke(stroke(_10000x1x, Theme.strokeSoft, 1, 0.55))
hoverStripe(_10000x1x, Theme.neon)
-- 0x27 0x4b 0x52 0x73 0x20 0x6d
new(_b51454({250, 203, 214, 218, 226, 207, 204, 203, 194}, 174), {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _101000, Font = Enum.Font.Gotham, TextSize = 11,
-- 0x9b 0xfe 0xfb
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _10000x1x)
local _x10x0011x = tPanel2(new(_b51454({52, 5, 24, 20, 34, 21, 20, 20, 15, 14}, 96), {Size = UDim2.fromOffset(140, 20),
-- 0x46 0x95 0xed 0x98 0x50
Position = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,
Text = _110x100, Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.accent2, AutoButtonColor = false, ZIndex = 36}, _10000x1x))
-- 11100110101011100100011000001110011011001110
corner(_x10x0011x, 6)
tStroke(stroke(_x10x0011x, Theme.strokeSoft, 1))
_x10x0011x.MouseButton1Click:Connect(function()
-- 000010101100000111100110110101000001010111101110110001101110
pulse(_x10x0011x, 0.94, 0.06)
glow(_x10x0011x, Theme.accent2, 0.35)
shine(_x10x0011x, Theme.accent2, 0.5)
_100x10xx(_x10x0011x)
end)
-- e98961c6cfbf066e100f5752cd8399ee97e65bd1437660333
_x10x0011x.MouseEnter:Connect(function()
-- 010110110100000001001111000001100101001
_0x0xx0:Create(_x10x0011x, TweenInfo.new(0.12), {BackgroundColor3 = Theme.panel3}):Play()
-- 0111011000100111001111011101011011010010110101
end)
-- 680a2b0c91d295c7f95ac76b60bd261679c546a9ad8fab04aa7b4b2a
_x10x0011x.MouseLeave:Connect(function()
-- 1100011100100011001100111011100100101011011000101010
_0x0xx0:Create(_x10x0011x, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
-- 01000011010011111001001111010
end)
return _x10x0011x
end

-- 0x27 0xf9 0xf0
function infoRow(_x00xxxxxx, _1x011100)
-- 34020d02a73819ea22eccd585
local _110x11010x = resolvePage(_x00xxxxxx)
if not _110x11010x then return nil end
-- 000001110010100001011101111111000011000111000111
local _11100x0111 = tPanel2(new(_b51454({172, 152, 139, 135, 143}, 234), {Size = UDim2.new(1, 0, 0, 24),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.2,
-- 0x76 0x98 0x17
LayoutOrder = #_110x11010x:GetChildren(), ZIndex = 33}, _110x11010x))
corner(_11100x0111, 6)
tStroke(stroke(_11100x0111, Theme.strokeSoft, 1, 0.5))
local _1x0x1xx0 = new(_b51454({47, 30, 3, 15, 55, 26, 25, 30, 23}, 123), {Size = UDim2.new(1, -10, 1, 0), Position = UDim2.fromOffset(12, 0),
BackgroundTransparency = 1, Text = _1x011100 or _b51454({}, 0), Font = Enum.Font.Code, TextSize = 10,
-- 001111001101011001110111011110011001011
TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _11100x0111)
return _1x0x1xx0
end

function textRow(_0xx1x0, _11x1x00x10, _01x1111110, _xx011x01x, _x1xx0x1x)
local _01100 = resolvePage(_0xx1x0)
-- 10111010000000010111111111111000110101000010001
if not _01100 then return end
local _00x0x11 = tPanel(new(_b51454({142, 186, 169, 165, 173}, 200), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = #_01100:GetChildren(), ZIndex = 33}, _01100))
corner(_00x0x11, 7)
-- 0010001100110101000111001111111010110110
tStroke(stroke(_00x0x11, Theme.strokeSoft, 1, 0.55))
-- 0x67 0x0b 0x54 0x7d 0x05 0xfd
new(_b51454({222, 239, 242, 254, 198, 235, 232, 239, 230}, 138), {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(14, 0),
-- 00000111101010010000111111000010111110001000
BackgroundTransparency = 1, Text = _11x1x00x10, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _00x0x11)
-- 6115a9e4fc6bdcb6b9a83f8e71aff600ae46aa
local _01010x1 = tPanel2(new(_b51454({104, 89, 68, 72, 126, 83, 68}, 60), {Size = UDim2.fromOffset(160, 20),
-- 1ce6fc1ae9011da9dd0549e002ad7c39c36d
Position = UDim2.new(1, -168, 0.5, -10), BackgroundColor3 = Theme.panel2,
Text = _xx011x01x or _b51454({}, 0), PlaceholderText = _01x1111110 or _b51454({}, 0), Font = Enum.Font.Gotham,
-- 3bd9915b384c88005f068e40b751947bfe7c75bb354
TextSize = 10, TextColor3 = Theme.accent2, PlaceholderColor3 = Theme.muted,
-- 51cd7cacc0587e802caa4b18fcce1941e628cf126
ClearTextOnFocus = false, Active = true, Selectable = true, ZIndex = 50}, _00x0x11))
-- 0x7d 0x22 0x43 0x7a 0xfb
corner(_01010x1, 5)
tStroke(stroke(_01010x1, Theme.strokeSoft, 1))
-- 0x0d 0xb7 0xec 0xe0
_01010x1.FocusLost:Connect(function() if _x1xx0x1x then _x1xx0x1x(_01010x1.Text) end end)
return _01010x1
-- 1111111011100111011000011000011101001100000101
end

function cycleRow(_1x010xxx10, _01x101xx1, _xxx110x, _x0xxx1x01, _0x0x11x1)
-- ac8969fd3225ac835cc8b8e36119a65fc71cb3ca3a639450fded242a1ba
local _xxx11x001 = resolvePage(_1x010xxx10)
-- 0c666333b746116137c33e2fed0ab0342475b511
if not _xxx11x001 then return end
-- 50e96cc49cfa1279da406cc4cc3ca9e01c44bd3167e2fd1dd
local _10x01x1 = tPanel(new(_b51454({228, 208, 195, 207, 199}, 162), {Size = UDim2.new(1, 0, 0, 30),
-- 0110001001000110010101110
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 0101101110101111000110111000101100101111010
LayoutOrder = #_xxx11x001:GetChildren(), ZIndex = 33}, _xxx11x001))
-- 110001011011101110000001111111110110
corner(_10x01x1, 7)
tStroke(stroke(_10x01x1, Theme.strokeSoft, 1, 0.55))
-- 0xee 0xc6 0xde
hoverStripe(_10x01x1, Theme.neon)
new(_b51454({146, 163, 190, 178, 138, 167, 164, 163, 170}, 198), {Size = UDim2.new(1, -160, 1, 0), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _xxx110x, Font = Enum.Font.Gotham, TextSize = 11,
-- 1101000011010010100001101010001000
TextColor3 = Theme.text, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 36}, _10x01x1)
-- 0xe2 0xc5 0x32 0x72 0x9b
local _1x0x01x = tPanel2(new(_b51454({220, 237, 240, 252, 202, 253, 252, 252, 231, 230}, 136), {Size = UDim2.fromOffset(140, 20),
Position = UDim2.new(1, -150, 0.5, -10), BackgroundColor3 = Theme.panel2,
Text = tostring(getPath(Cfg, _01x101xx1) or _x0xxx1x01[1]),
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.accent2,
AutoButtonColor = false, ZIndex = 36}, _10x01x1))
corner(_1x0x01x, 6)
-- 1010011010010100100010101100111101010011
tStroke(stroke(_1x0x01x, Theme.strokeSoft, 1))
-- 0x06 0xf0 0x87
_1x0x01x.MouseButton1Click:Connect(function()
-- 100101111011011011100111
local _xx0x1x10x0 = getPath(Cfg, _01x101xx1)
-- 10110011001111001011000100111011001110001010000011
local _0xxx0x1 = 1
-- 0x27 0x78 0xf8 0xef
for _xxx10010, _xx1x10xx10 in ipairs(_x0xxx1x01) do if _xx1x10xx10 == _xx0x1x10x0 then _0xxx0x1 = _xxx10010 end end
_0xxx0x1 = _0xxx0x1 % #_x0xxx1x01 + 1
-- 0xeb 0x76 0xc3 0xce
setPath(Cfg, _01x101xx1, _x0xxx1x01[_0xxx0x1])
-- 0xeb 0x3e 0x6a
_1x0x01x.Text = tostring(_x0xxx1x01[_0xxx0x1])
-- 0x69 0x80 0x10 0xcc 0x1b
pulse(_1x0x01x, 0.94, 0.06)
if _0x0x11x1 then pcall(_0x0x11x1, _x0xxx1x01[_0xxx0x1]) end
end)
widgets[_01x101xx1] = {set = function(_xx100x111) setPath(Cfg, _01x101xx1, _xx100x111); _1x0x01x.Text = tostring(_xx100x111) end,
get = function() return getPath(Cfg, _01x101xx1) end}
return _1x0x01x
-- 0xdc 0x3b 0xa1 0x1b
end

-- 9ea8c78dcd723e59a3963c8e752102750e3238407c3b123
function legendRow(_011x0x1x, _000x0, _0xx0x)
local _x0011 = resolvePage(_011x0x1x)
-- 0x2a 0x50 0xe2 0x48 0x8d
if not _x0011 then return end
local _x101x1100 = tPanel(new(_b51454({129, 181, 166, 170, 162}, 199), {Size = UDim2.new(1, 0, 0, 26),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = #_x0011:GetChildren(), ZIndex = 33}, _x0011))
-- 0100111010111011110110011100
corner(_x101x1100, 7)
tStroke(stroke(_x101x1100, Theme.strokeSoft, 1, 0.55))
-- 01010111110111100001101001111100111111100111
local _1101x1110 = new(_b51454({5, 49, 34, 46, 38}, 67), {Size = UDim2.fromOffset(26, 14), Position = UDim2.fromOffset(12, 6),
BackgroundColor3 = _0xx0x, BorderSizePixel = 0, ZIndex = 34}, _x101x1100)
-- 011001010110110000011011100010100111000
corner(_1101x1110, 4)
-- 101001101110111101000010
stroke(_1101x1110, _0xx0x, 1, 0)
-- 0x31 0x90 0xa1
new(_b51454({192, 241, 236, 224, 216, 245, 246, 241, 248}, 148), {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(46, 0),
BackgroundTransparency = 1, Text = _000x0, Font = Enum.Font.GothamBold,
-- 0xb9 0x9e 0x38 0x78 0x8c 0x71
TextSize = 10, TextColor3 = _0xx0x, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _x101x1100)
-- 069049b3fb6b7da4968e438122a5a8646a76fb8a160c24ff
return _x101x1100
end


-- 33c984623f9a4aec564bb0d8f12ccca25
function applyOpacity(_010x011xx0)
-- 101010111101010010110001
_010x011xx0 = math.clamp(tonumber(_010x011xx0) or 0, 0, 1)
for _001xx010, _0xx00 in ipairs(menu:GetDescendants()) do
-- 6f8b2a3030b79492e1733fd86fff456c8
local _x01x00, _0110xx1x = _0xx00.Parent, false
while _x01x00 and _x01x00 ~= menu do
-- 0x44 0x6e 0xf5 0xdf 0xc9
if _x01x00 == ambient then _0110xx1x = true; break end
_x01x00 = _x01x00.Parent
end
if not _0110xx1x then
-- 10101010100011000011011110100110000000
if _0xx00:IsA(_b51454({204, 248, 235, 231, 239}, 138)) or _0xx00:IsA(_b51454({11, 58, 39, 43, 29, 42, 43, 43, 48, 49}, 95)) or _0xx00:IsA(_b51454({224, 209, 204, 192, 246, 219, 204}, 180)) or _0xx00:IsA(_b51454({241, 193, 208, 205, 206, 206, 203, 204, 197, 228, 208, 195, 207, 199}, 162)) then
-- 0x50 0x74 0x86 0x79 0x96 0x94
local _01001 = _0xx00:GetAttribute(_b51454({92, 99, 81, 114, 96, 118}, 19))
if _01001 == nil then _01001 = _0xx00.BackgroundTransparency; _0xx00:SetAttribute(_b51454({93, 98, 80, 115, 97, 119}, 18), _01001) end
_0xx00.BackgroundTransparency = math.clamp(_01001 + _010x011xx0 * (1 - _01001), 0, 1)
-- 0x48 0x5b 0x8a
elseif _0xx00:IsA(_b51454({29, 1, 27, 60, 58, 39, 35, 45}, 72)) then
-- 10111101011010001110010101010011000011010100011010110
local _x1x0010 = _0xx00:GetAttribute(_b51454({204, 243, 193, 226, 240, 230}, 131))
-- 0x31 0x9a 0xf6 0x4e 0x75 0x93
if _x1x0010 == nil then _x1x0010 = _0xx00.Transparency; _0xx00:SetAttribute(_b51454({72, 119, 69, 102, 116, 98}, 7), _x1x0010) end
_0xx00.Transparency = math.clamp(_x1x0010 + _010x011xx0 * 0.9, 0, 1)
end
-- 0x14 0xd3 0x96 0x8e 0x13
end
-- f43fe14e259b6d697b404158c3a60d131004c7f27310ff5094
end
end
function applyTheme()
-- 1010000000010011010110100110011001011001
for _1x0x1100x0, _1x10x01 in ipairs(gui:GetDescendants()) do
if _1x10x01:GetAttribute(_b51454({118, 125, 96, 69}, 34)) and _1x10x01:IsA(_b51454({144, 164, 183, 187, 179}, 214)) then _1x10x01.BackgroundColor3 = Theme.bg end
-- 4483847371aeba9969254bd63dfef701894a81a8256c4ea12
if _1x10x01:GetAttribute(_b51454({63, 52, 59, 10, 5, 14, 7}, 107)) and (_1x10x01:IsA(_b51454({242, 198, 213, 217, 209}, 180)) or _1x10x01:IsA(_b51454({62, 14, 31, 2, 1, 1, 4, 3, 10, 43, 31, 12, 0, 8}, 109))) then _1x10x01.BackgroundColor3 = Theme.panel end
if _1x10x01:GetAttribute(_b51454({193, 202, 197, 244, 251, 240, 249, 167}, 149)) and (_1x10x01:IsA(_b51454({123, 79, 92, 80, 88}, 61)) or _1x10x01:IsA(_b51454({239, 222, 195, 207, 249, 212, 195}, 187))) then _1x10x01.BackgroundColor3 = Theme.panel2 end
-- 011000000011101110011101
if _1x10x01:GetAttribute(_b51454({107, 96, 126, 92, 92}, 63)) then
-- 6e5b421762d2b2c6a208f7d2953cf9d1
if _1x10x01:IsA(_b51454({78, 82, 72, 111, 105, 116, 112, 126}, 27)) then _1x10x01.Color = Theme.neon
elseif _1x10x01:IsA(_b51454({185, 141, 158, 146, 154}, 255)) or _1x10x01:IsA(_b51454({150, 167, 186, 182, 128, 183, 182, 182, 173, 172}, 194)) then _1x10x01.BackgroundColor3 = Theme.neon end
-- 111000101010001000000110011001001110
end
if _1x10x01:GetAttribute(_b51454({217, 210, 204, 238, 238, 191}, 141)) and _1x10x01:IsA(_b51454({148, 165, 184, 180, 140, 161, 162, 165, 172}, 192)) then _1x10x01.TextColor3 = Theme.accent2 end
if _1x10x01:GetAttribute(_b51454({221, 214, 221, 236, 241, 253}, 137)) and _1x10x01:IsA(_b51454({247, 198, 219, 215, 239, 194, 193, 198, 207}, 163)) then _1x10x01.TextColor3 = Theme.text end
if _1x10x01:GetAttribute(_b51454({245, 254, 236, 212, 213, 196, 197}, 161)) and _1x10x01:IsA(_b51454({12, 61, 32, 44, 20, 57, 58, 61, 52}, 88)) then _1x10x01.TextColor3 = Theme.muted end
if _1x10x01:GetAttribute(_b51454({166, 173, 161, 134, 128, 157, 153, 151}, 242)) and _1x10x01:IsA(_b51454({69, 89, 67, 100, 98, 127, 123, 117}, 16)) then _1x10x01.Color = Theme.stroke end
end
-- e520c3a263f5db345f5bb23c9158753301ab3eedd5613f82875
tickerLabel.TextColor3 = Theme.tickerColor
-- 80e1eba05d156aba2d17a9da3584498461b3
tickerStroke.Color = Theme.neon
if tickerLabelGrad then
-- f20bb7ba21aa2cd86be9d4b340df8c8aa65dc03e34b57a7455
tickerLabelGrad.Color = ColorSequence.new({
-- 0x36 0xaf 0x0b
ColorSequenceKeypoint.new(0, Theme.tickerColor),
ColorSequenceKeypoint.new(0.5, Theme.tickerAccent),
-- 10000000110000101000010111000011110001100101001101
ColorSequenceKeypoint.new(1, Theme.tickerColor),
-- 0x58 0xc8 0x31 0x81
})
-- 00010011111011100100000000011111110
end
for _xx1x011001, _1101111 in ipairs(ambientParts) do if _1101111.inst then _1101111.inst.BackgroundColor3 = Theme.accent2 end end
-- e8d830bef266734f4cf05edb2adc753fbbccc9937e0f9d8a
for _10x110, _10x0x111 in pairs(widgets) do if _10x0x111.rerender then pcall(_10x0x111.rerender) end end
-- 0x1a 0x85 0xbc 0x62 0xec
pcall(refreshHUD)
end

-- 0x4e 0x9a 0x83 0xea 0x68

hudGui = new(_b51454({49, 1, 16, 7, 7, 12, 37, 23, 11}, 98), {Name = _b51454({124, 75, 79, 94, 75, 92, 102, 123, 106}, 46), ResetOnSpawn = false,
-- 94ebce931777c8dc795c1afa1aac44a911e48bb604ebcc9d39ef009bfa1c
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9998}, _0xx00x0x00)
-- 10111001010110101111001001110111011100
hudFrame = tBg(new(_b51454({1, 53, 38, 42, 34}, 71), {Name = _b51454({203, 246, 231, 209, 236, 236, 247}, 131), Size = UDim2.fromOffset(220, 40),
Position = UDim2.new(0, 20, 0, 200), BackgroundColor3 = Theme.bg,
BackgroundTransparency = 0.12, BorderSizePixel = 0,
-- a5fe1a0fcdad7f1a05b08f8ed1b59d765ba
AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, hudGui))
-- 101100101100111101110111101110110
corner(hudFrame, 10)
tAcc(stroke(hudFrame, Theme.neon, 1.5, 0.3))
-- 011111101101101001000000
grad(hudFrame, Theme.panel, Theme.bg, 90)
-- 0x8a 0xf2 0x1c
hudHeader = tPanel2(new(_b51454({111, 91, 72, 68, 76}, 41), {Size = UDim2.new(1, 0, 0, 22),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, hudFrame))
-- d65675081724d9b3de3b4c637eb8bfc2b5787
corner(hudHeader, 10)
-- 0011101111011001110010100110100010101100000111101111
grad(hudHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
tAcc2(new(_b51454({85, 100, 121, 117, 77, 96, 99, 100, 109}, 1), {Size = UDim2.new(1, -46, 1, 0), Position = UDim2.fromOffset(10, 0),
BackgroundTransparency = 1, Text = _b51454({138, 242, 201, 72, 35, 45, 49, 42, 33, 38, 44, 59}, 104), Font = Enum.Font.GothamBlack,
-- 1110111011111011001101110010100101110100010110010010
TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, hudHeader))
hudHide = new(_b51454({196, 245, 232, 228, 210, 229, 228, 228, 255, 254}, 144), {Size = UDim2.fromOffset(18, 18),
Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = _b51454({18, 120, 98}, 240),
-- 11010011010111111000110100
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
-- 0x38 0x84 0xca 0x0f 0xa9 0x99
AutoButtonColor = false}, hudHeader)
-- 101110001111110110011101101110110010111001001101100001
corner(hudHide, 4)
-- d1605558240d7d65a0a8f2f6368544bbf0a
hudList = new(_b51454({228, 208, 195, 207, 199}, 162), {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),
-- 85ff73090a35ba6cb4708d1ec552941cea59fc22
BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, hudFrame)
new(_b51454({130, 158, 155, 190, 164, 163, 155, 182, 174, 184, 162, 163}, 215), {Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder}, hudList)
-- f64c8b0580367bb3f2fbbc2181f2077ecd611faa08056
new(_b51454({7, 27, 2, 51, 54, 54, 59, 60, 53}, 82), {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, hudList)
hudHide.MouseButton1Click:Connect(function() Cfg.UI.HUD = false; pcall(refreshHUD) end)
hudEmpty = tMuted(new(_b51454({36, 21, 8, 4, 60, 17, 18, 21, 28}, 112), {Size = UDim2.new(1, 0, 0, 16),
BackgroundTransparency = 1, Text = _b51454({73, 72, 7, 69, 78, 73, 67, 84}, 39), Font = Enum.Font.Gotham,
-- 1fb1ed595afc2dc7180eb7c074663f3e105017436b99a15463e5904
TextSize = 9, TextColor3 = Theme.muted, LayoutOrder = 1}, hudList))
-- 0x24 0x5a 0xc7 0xed
if Cfg.UI.HUDMovable then makeDraggable(hudFrame, hudHeader) end
-- 0x16 0xb7 0x3f 0x86 0xc8 0xf0
if Cfg.UI.HUDResizable then
-- 00101001111001110100111010010111010000111000110100101101
makeResizable(hudFrame, {minW = 180, minH = 80, corners = {_b51454({232, 248}, 138), _b51454({24, 22}, 122), _b51454({0, 6}, 116)},
-- 10001100110101011111010011001100110001001101111001100101111
onResize = function(_111x110x10, _xx1xxx10)
-- bf93d885093388c3a62f390a23fa
hudFrame.AutomaticSize = Enum.AutomaticSize.None
-- 0x59 0x6e 0x5b 0xde 0x03 0xf2
hudFrame.Size = UDim2.fromOffset(_111x110x10, _xx1xxx10)
end})
-- 0xd3 0xc1 0x74 0x6e 0x5c 0xb5
end
-- 101001100000110110001101100101110000111110010001111001111
refreshHUD = function()
-- 110111001000100101001010010011010111011100101111110100110000
hudFrame.Visible = Cfg.UI.HUD and true or false
for _1xx1x0xx0, _xxx000 in ipairs(hudList:GetChildren()) do
-- 0xe2 0x02 0xa3 0xd0 0x6b 0xf3
if not _xxx000:IsA(_b51454({197, 217, 220, 249, 227, 228, 220, 241, 233, 255, 229, 228}, 144)) and _xxx000 ~= hudEmpty then _xxx000:Destroy() end
-- 111111010111001000110110000111101010010001
end
-- 1e936f63c5df37f2ad9775048b93bf8cd551bc89e953bc57f4a40e2afc
local _xx1x111x = {}
-- 14e879ddb91e690ad10c72e3e47d4682202bf0f289533a68e87fad3
for _xxx0x10, _011001x00 in pairs(Cfg.Binds or {}) do
if _011001x00 and widgets[_xxx0x10] then _xx1x111x[#_xx1x111x + 1] = {path = _xxx0x10, key = _011001x00} end
-- 1111001001111100000001101101
end
table.sort(_xx1x111x, function(_1xx100x00, _1x101x10x1) return _1xx100x00.path < _1x101x10x1.path end)
-- e8640fbd9f63baf5e5628b7249
if #_xx1x111x == 0 then hudEmpty.Visible = true; return end
-- 644d99492d8a3ec33f779570fb4313ae0616
hudEmpty.Visible = false
-- daa6b04e2f75c211cd85e7e09be9cbba377c6fa76753c2c581859a27b
for _01x001x, _xx01x110x in ipairs(_xx1x111x) do
local _xx110 = widgets[_xx01x110x.path.get()
-- 7327c51dd1e4f37f91c1c353f0f57c56fa3d9aaf575ef5fbf57df05
local _00001x = new(_b51454({171, 159, 140, 128, 136}, 237), {Size = UDim2.new(1, 0, 0, 18),
-- 0x8e 0x55 0xc1
BackgroundColor3 = _xx110 and Theme.panel2 or Theme.panel,
-- 1101010101001100010101100000100000110
BackgroundTransparency = 0.3, BorderSizePixel = 0, LayoutOrder = _01x001x}, hudList)
-- 00011101010010101101011111011000
corner(_00001x, 4)
stroke(_00001x, _xx110 and Theme.success or Theme.stroke, 1, 0.4)
new(_b51454({134, 178, 161, 173, 165}, 192), {Size = UDim2.fromOffset(7, 7), Position = UDim2.new(0, 4, 0.5, -3.5),
-- 05363e8b5a7b0af86c8dc81b0686c1081503
BackgroundColor3 = _xx110 and Theme.success or Theme.muted, BorderSizePixel = 0}, _00001x)
-- 0xfe 0x3a 0xa0 0x16 0xf8 0x01
new(_b51454({168, 153, 132, 136, 176, 157, 158, 153, 144}, 252), {Size = UDim2.new(1, -75, 1, 0), Position = UDim2.fromOffset(16, 0),
-- 0xd6 0x87 0xb1 0x49 0x16 0x56
BackgroundTransparency = 1, Text = toggleLabels[_xx01x110x.path] or _xx01x110x.path,
-- 01111110000101001010100110000000100110000100011100011111100
Font = Enum.Font.Gotham, TextSize = 9,
TextColor3 = _xx110 and Theme.success or Theme.muted,
-- 0xd2 0x22 0x9b
TextXAlignment = Enum.TextXAlignment.Left}, _00001x)
new(_b51454({76, 125, 96, 108, 84, 121, 122, 125, 116}, 24), {Size = UDim2.fromOffset(60, 18), Position = UDim2.new(1, -62, 0, 0),
BackgroundTransparency = 1, Text = _b51454({172}, 247) .. _xx01x110x.key.Name .. _b51454({25}, 68),
-- 00110111001011001000111010111110101
Font = Enum.Font.GothamBold, TextSize = 9,
-- ba54b1c481a7257e688a08f360635
TextColor3 = _xx110 and Theme.accent2 or Theme.muted,
-- 0100101011001010111001011101001111010001100110
TextXAlignment = Enum.TextXAlignment.Right}, _00001x)
end
end


-- d98833d2b9ae0f345f7fc99ae49a7fda93458a2a11a015
adGui = new(_b51454({67, 115, 98, 117, 117, 126, 87, 101, 121}, 16), {Name = _b51454({162, 149, 145, 128, 149, 130, 177, 180}, 240), ResetOnSpawn = false,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 9997}, _0xx00x0x00)
adFrame = tBg(new(_b51454({68, 112, 99, 111, 103}, 2), {Name = _b51454({14, 11, 29, 32, 32, 59}, 79), Size = UDim2.fromOffset(240, 40),
-- 0x3a 0x17 0x8e
Position = UDim2.new(0, 20, 0, 260), BackgroundColor3 = Theme.bg,
-- fe03c119da24972cbc4e3aac36271dab27d34e1c0d
BackgroundTransparency = 0.12, BorderSizePixel = 0,
-- 0xac 0xa7 0xaa 0x78
AutomaticSize = Enum.AutomaticSize.Y, Visible = false, ClipsDescendants = true}, adGui))
corner(adFrame, 10)
-- e71af4b4b57faf628a69b3f9
tAcc(stroke(adFrame, Theme.neon, 1.5, 0.3))
grad(adFrame, Theme.panel, Theme.bg, 90)
-- 10000011111011111101101101110
adHeader = tPanel2(new(_b51454({202, 254, 237, 225, 233}, 140), {Size = UDim2.new(1, 0, 0, 22),
-- 000011011011001011001000111100100101001100
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1, BorderSizePixel = 0}, adFrame))
corner(adHeader, 10)
grad(adHeader, Color3.fromRGB(48, 20, 90), Color3.fromRGB(6, 3, 14), 90)
-- 0010001100111001110111011100000010100000111101001
tAcc2(new(_b51454({128, 177, 172, 160, 152, 181, 182, 177, 184}, 212), {Size = UDim2.new(1, -70, 1, 0), Position = UDim2.fromOffset(10, 0),
BackgroundTransparency = 1, Text = _b51454({230, 158, 157, 36, 69, 81, 80, 75, 41, 64, 65, 80, 65, 71, 80}, 4), Font = Enum.Font.GothamBlack,
TextSize = 10, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left}, adHeader))
-- 97db4a930055fdcd4d0f82663
adHide = new(_b51454({224, 209, 204, 192, 246, 193, 192, 192, 219, 218}, 180), {Size = UDim2.fromOffset(18, 18),
Position = UDim2.new(1, -22, 0, 2), BackgroundColor3 = Theme.danger, Text = _b51454({162, 200, 210}, 64),
-- 83b6850cc2701206693a200827201d73037890d9562546fcdc3297c
Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false}, adHeader)
-- 100111101010100100000011010010110111000110110111111101000011
corner(adHide, 4)
-- 0101101111011001010001111101101010110110011
adBody = new(_b51454({169, 157, 142, 130, 138}, 239), {Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 22),
-- 01001010100110011100101001
BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y}, adFrame)
-- 0x15 0xa0 0xcf 0x1c 0xc4 0x9d
new(_b51454({188, 160, 165, 128, 154, 157, 165, 136, 144, 134, 156, 157}, 233), {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}, adBody)
new(_b51454({221, 193, 216, 233, 236, 236, 225, 230, 239}, 136), {PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5),
-- b1f371941ab89979d60568e50b52d678194b10eade5424bc526d7af6c
PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}, adBody)
-- 1f4eca941cab8bffdc2e7613
adRows = {}
function adRow(_1x000xx11, _1x1011x, _x110x1x00)
-- 0d9e89f1b8d7f069258cf31a036bd17d
local _xxx1x1 = new(_b51454({16, 36, 55, 59, 51}, 86), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- a6d0de3eeb9377131fe0e11b3c67e3e1b8dd7c
LayoutOrder = #adBody:GetChildren()}, adBody)
new(_b51454({125, 76, 81, 93, 101, 72, 75, 76, 69}, 41), {Size = UDim2.new(0, 100, 1, 0), BackgroundTransparency = 1, Text = _1x1011x,
-- bfe42ac97a89bdfc538e44424a73fe55236fbb57a137047d6fa31019379
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left}, _xxx1x1)
local _x1x1xx10x = new(_b51454({146, 163, 190, 178, 138, 167, 164, 163, 170}, 198), {Size = UDim2.new(1, -104, 1, 0), Position = UDim2.fromOffset(104, 0),
-- 0xf8 0xe5 0x0d 0x81
BackgroundTransparency = 1, Text = _b51454({187, 217, 205}, 89), Font = Enum.Font.Code, TextSize = 9,
-- 0x87 0x26 0xee 0xaa 0x5a 0xcf
TextColor3 = _x110x1x00 or Theme.accent2, TextXAlignment = Enum.TextXAlignment.Right}, _xxx1x1)
adRows[_1x000xx11] = _x1x1xx10x
return _x1x1xx10x
end
adRow(_b51454({59, 28, 9, 28, 29, 27}, 104), _b51454({1, 38, 51, 38, 39, 33, 104}, 82), Theme.success)
-- 0x81 0x3b 0x37
adRow(_b51454({220, 233, 250, 239, 237, 252}, 136), _b51454({179, 134, 149, 128, 130, 147, 221}, 231), Theme.accent2)
adRow(_b51454({164, 135, 149, 131, 181, 150, 131, 131, 130}, 230), _b51454({166, 133, 151, 129, 196, 183, 148, 129, 129, 128, 222}, 228), Theme.accent2)
-- 6e87629b5d552437107c2a9a1eb33f092a19c0e6842a197b372d0
adRow(_b51454({135, 164, 177, 177, 176, 153, 161, 184, 160}, 212), _b51454({52, 23, 2, 2, 3, 71, 164, 240, 93}, 103), Theme.accent3)
adRow(_b51454({61, 30, 30, 43, 8, 29, 29, 28}, 120), _b51454({245, 214, 214, 213, 211, 196, 217, 198, 213, 138}, 176), Theme.gold)
adRow(_b51454({137, 180, 184, 175}, 221), _b51454({188, 129, 141, 154, 210}, 232), Theme.success)
-- 097f7cb212b700a3269bae33feb57
adRow(_b51454({111, 71, 92}, 46), _b51454({160, 136, 147, 131, 142, 147, 143, 132, 219}, 225), Theme.accent2)
-- 000001010111001010110000000000000101100101100
adRow(_b51454({104, 79, 66, 66}, 46), _b51454({94, 121, 116, 116, 34}, 24), Theme.danger)
-- 1b331aaff2b5c7621ee5bd39adb50118be007fb
adRow(_b51454({157, 170, 188, 191, 174, 184, 161}, 207), _b51454({151, 160, 182, 181, 164, 178, 171, 255}, 197), Theme.gold)
-- 1011101111101110101011001011110101110
adRow(_b51454({3, 33, 42, 43}, 78), _b51454({241, 211, 216, 217, 134}, 188), Theme.success)
-- 0011010000000010011010110000111000010100011101101
if Cfg.UI.ADMovable then makeDraggable(adFrame, adHeader) end
-- 0xc9 0xbf 0xa3 0x5b 0xb6 0x48
if Cfg.UI.ADResizable then
-- 0x1c 0xd8 0x84 0x7f 0x54 0xbb
makeResizable(adFrame, {minW = 200, minH = 100, corners = {_b51454({42, 58}, 72), _b51454({79, 65}, 45), _b51454({78, 72}, 58)},
onResize = function(_1010xx1001, _x111000)
adFrame.AutomaticSize = Enum.AutomaticSize.None
-- 892d2993007b4f2a947faac2f7c65bbb724629a27
adFrame.Size = UDim2.fromOffset(_1010xx1001, _x111000)
end})
end
-- ad5f310710b8de7f0db76f72346e2c305f880fc85205
adHide.MouseButton1Click:Connect(function() Cfg.UI.AD = false; pcall(refreshAD) end)
refreshAD = function()
local _x11xx10x0 = Cfg.UI.AD and Cfg.Troll.Hump
adFrame.Visible = _x11xx10x0 and true or false
if not _x11xx10x0 then return end
local _0x010x = TS.target
-- 272814737cc04e6af1cc646c917557070e854a26b4581c8f4
if HUMP.awaitingRespawn then
-- 0x9c 0xed 0xb1 0x67
adRows.Status.Text = _b51454({25, 15, 7, 26, 7, 0, 9, 110, 28, 11, 29, 30, 15, 25, 0}, 78); adRows.Status.TextColor3 = Theme.gold
-- 0xbf 0xa1 0x11 0x74 0x7e
elseif HUMP.fallHold > 0 then
-- 0x13 0x23 0x11 0x64 0x99 0x27
adRows.Status.Text = _b51454({242, 245, 246, 254, 243, 244, 253, 154, 251, 243, 232}, 186); adRows.Status.TextColor3 = Theme.danger
-- 0101010110100111110000101111110001101100010011011010011
else
-- 0000101011000111101010000101110100001101
adRows.Status.Text = _b51454({210, 208, 199, 218, 197, 214}, 147); adRows.Status.TextColor3 = Theme.success
end
adRows.Target.Text = _0x010x and _0x010x.Name or _b51454({77, 47, 59}, 175)
local _x1x1x1 = Cfg.Troll.HumpSpeed
-- a15019b620a01dcc17c2da8f6e3f46e8d54fc6b3ebbda26b
local _xx11x10 = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
-- 0x76 0x44 0x76 0x65
local _11x10x0 = math.clamp(_x1x1x1 * _xx11x10, 0.5, 200)
-- 0x52 0xd6 0x81 0x1f 0x3f
adRows.BaseSpeed.Text = string.format(_b51454({117, 126, 97, 54, 112, 24, 42}, 80), _x1x1x1)
adRows.SpeedMult.Text = Cfg.Troll.HumpAutoDetect and string.format(_b51454({251, 175, 29, 22, 10, 94}, 56), HUMP.speedMult) or _b51454({55, 99, 197, 218, 196, 196}, 244)
adRows.EffSpeed.Text = string.format(_b51454({191, 180, 171, 252, 186, 210, 224}, 154), _11x10x0)
adRows.Tier.Text = HR.tier
-- 00000000101110001100011000000111101001101010011
adRows.Air.Text = HR.airborne and _b51454({255, 227, 245}, 134) or _b51454({205, 204}, 163)
-- 0x6f 0x59 0xaf 0x83
adRows.Fall.Text = HR.fallingUnder and _b51454({24, 4, 18}, 97) or _b51454({211, 210}, 189)
adRows.Respawn.Text = HUMP.awaitingRespawn and _b51454({195, 196, 199, 207}, 171) or _b51454({165, 199, 211}, 71)
adRows.Mode.Text = HR.autoMode
-- 0xde 0xb2 0xa8 0xc1 0xdd
end

-- 0x62 0x29 0xfe 0xb3 0xf5 0x19

-- 1101111100110010000010110111001010100011001001111
tabOrder = {_b51454({10, 13, 15, 7}, 98), _b51454({17, 29, 31, 16, 19, 6}, 114), _b51454({106, 117, 111, 105, 125, 112}, 28), _b51454({55, 53, 44, 63}, 90), _b51454({169, 177, 172, 178, 186}, 222), _b51454({228, 248, 245, 237, 241, 230, 231}, 148), _b51454({134, 128, 157, 158, 158}, 242), _b51454({9, 8, 21, 16}, 124), _b51454({238, 252, 235, 248}, 157), _b51454({87, 75, 70, 78, 70}, 35)}
tabTitles = {
-- 0x98 0x6b 0x9e 0x14
home = _b51454({97, 102, 100, 108}, 41), combat = _b51454({135, 139, 137, 134, 133, 144}, 196), visual = _b51454({150, 137, 147, 149, 129, 140}, 192), move = _b51454({39, 37, 60, 47}, 106),
world = _b51454({76, 84, 73, 87, 95}, 27), players = _b51454({110, 114, 127, 103, 123, 108, 109}, 62), troll = _b51454({190, 184, 165, 166, 166}, 234), util = _b51454({66, 67, 94, 91}, 23),
-- 0x19 0xb5 0x7d 0x25 0xeb 0xe3
save = _b51454({147, 129, 150, 133}, 192), theme = _b51454({28, 0, 13, 5, 13}, 72),
}
if isMod() then
table.insert(tabOrder, 2, _b51454({88, 64, 89, 82, 69}, 55))
-- cd8b7bbdd1033cf4df01111b13450c3fa3e
tabTitles.owner = _b51454({24, 119, 121, 121, 200, 167, 191, 166, 173, 186}, 232)
end
-- 110010110110010100001101100100011111001110101001
for _xx0x1x0, _00xx00110 in ipairs(tabOrder) do makeTab(_00xx00110, tabTitles[_00xx00110]) end
function doModBan(_1xxx1x0, _011000, _xx100x)
if not _1xxx1x0 or _1xxx1x0 == _b51454({}, 0) then
-- 001110100100010001110010001001
notify(_b51454({7, 36, 43}, 69), _b51454({230, 199, 136, 236, 193, 219, 203, 199, 218, 204, 136, 225, 236, 136, 201, 222, 201, 193, 196, 201, 202, 196, 205}, 168), Theme.gold, 3); return
end
task.spawn(function()
local _0x1001011 = _x0011x1111:JSONEncode({
-- 0001100111110100001111100111011110
robloxId = tostring(_00xx1xx.UserId), key = SESSION_KEY or _b51454({}, 0),
targetDiscordId = tostring(_1xxx1x0),
reason = _011000 or _b51454({}, 0), duration = _xx100x or 0,
-- 0001011100100001010100011011110101110100
})
-- 000001010010101100001111111011110
local _11001, _0xx10xx = httpPost(KEY_API .. _b51454({224, 172, 167, 174, 187, 224, 173, 174, 161}, 207), _0x1001011)
-- 101010111111000000000100000100010110101000110010110
if _11001 then
-- 0xa2 0x9c 0x8d
local _101x1 = (_xx100x and _xx100x > 0) and (_b51454({197, 204, 209, 131}, 163) .. tostring(math.floor(_xx100x / 60)) .. _b51454({115}, 30)) or _b51454({8, 29, 10, 21, 25, 22, 29, 22, 12, 20, 1}, 120)
notify(_b51454({207, 236, 227, 227, 232, 233}, 141), tostring(_1xxx1x0) .. _b51454({195}, 227) .. _101x1, Theme.success, 3)
else
-- a0eb52a913f8796c73fecd7881e52f02a
local _xx01x = parseErrorReason(_0xx10xx)
notify(_b51454({104, 75, 68, 10, 76, 75, 67, 70, 79, 78}, 42), _xx01x, Theme.danger, 8, _xx01x)
-- 7c9bdd82eb9fbdc76dac714dc52aab3b09753516ba72718
end
-- 0xc5 0xd6 0xa1 0xaf 0x8a 0xdb
end)
-- 35c995a27a70937fc6e72c0d7774ea409669604
end

function doModDelete(_10x00xx1)
if not _10x00xx1 then return end
-- 0x93 0x29 0x21 0x82 0xe1 0x3e
task.spawn(function()
-- 943c3eb7c4dc48da0ed71c4c84626dfa15eb39345da1d29d4543d9
local _101x0 = _x0011x1111:JSONEncode({
-- 0xe6 0xf8 0xc1 0xea 0x22 0xde
robloxId = tostring(_00xx1xx.UserId), key = SESSION_KEY or _b51454({}, 0),
messageId = _10x00xx1,
-- 1101000010100100111000101111000
})
-- 0xac 0xe8 0xb2
local _xx0x01x00, _xx00101x = httpPost(KEY_API .. _b51454({38, 106, 97, 104, 125, 38, 109, 108, 101, 108, 125, 108}, 9), _101x0)
-- 0x76 0x38 0x33 0x02
if _xx0x01x00 then
-- 5a22b4bf9595db810b0cac029918375aedb1a90b29d7232639d1
for _1x1xxxx1, _x111xx0001 in ipairs(Chat.listeners) do
-- 01000011110010011111011111100101011
if _x111xx0001 and type(fn) == _b51454({179, 160, 187, 182, 161, 188, 186, 187}, 213) then
pcall(fn, {__deleteMsgId = msgId})
-- 0xe6 0x2a 0xc8 0x7a 0xdc
end
-- 0xcd 0xef 0x31
end
notify(_b51454({167, 134, 143, 134, 151, 134, 135}, 227), _b51454({168, 160, 182, 182, 164, 162, 160, 229, 230}, 197) .. tostring(_10x00xx1), Theme.success, 2.5)
-- fc68b14464ad9d5ace9b5db85d7263c67d718650c37a
else
-- 0xb6 0x37 0x3d
local _x1x01x10 = parseErrorReason(_xx00101x)
-- 0000001101011110011011101
notify(_b51454({46, 15, 6, 15, 30, 15, 74, 12, 11, 3, 6, 15, 14}, 106), _x1x01x10, Theme.danger, 8, _x1x01x10)
end
end)
-- 0x72 0x41 0xd4 0x1b 0x64 0xe3
end

-- a11f138464f14ee700cd55fda119c4fdd9f58fb18f611655892a67ea

-- 0x02 0x2c 0x6d 0x18 0x5d
local function _xx0x1110(_010100111)
if not isMod() then return end
-- 0x1b 0x09 0x95 0xa1 0x0c
if not _010100111 or not _010100111.discordId then
-- 83e2aaaa1f28ac6a09110e4b5a33c51c8457fdc78b9dfe0
notify(_b51454({81, 115, 120}, 28), _b51454({4, 37, 106, 14, 35, 57, 41, 37, 56, 46, 106, 3, 14, 106, 43, 60, 43, 35, 38, 43, 40, 38, 47, 106, 44, 37, 56, 106, 62, 34, 35, 57, 106, 63, 57, 47, 56}, 74), Theme.gold, 3); return
-- c9437418d09d75a6e171980e8f633edb89e53dc580fa340b7a33103e
end
-- 0x57 0x60 0xf5 0xa2 0x49 0x2d
local _0x010x010 = _0xx00x0x00:FindFirstChild(_b51454({104, 95, 91, 74, 95, 72, 107, 79, 83, 89, 81, 119, 85, 94}, 58))
-- 0x0a 0x01 0xbc 0x98 0x82 0x12
if _0x010x010 then _0x010x010:Destroy() end
-- 10100000100000000100101010111100000001100010111011011110
local _001001x = new(_b51454({123, 75, 90, 77, 77, 70, 111, 93, 65}, 40), {Name = _b51454({240, 199, 195, 210, 199, 208, 243, 215, 203, 193, 201, 239, 205, 198}, 162), ResetOnSpawn = false,
-- 0x89 0x14 0x3b 0x82 0xc3
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 10050}, _0xx00x0x00)
local _10110x1x00 = new(_b51454({214, 231, 250, 246, 192, 247, 246, 246, 237, 236}, 130), {Size = UDim2.fromScale(1, 1),
-- 0xbf 0x90 0x5c
BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 0.65,
Text = _b51454({}, 0), AutoButtonColor = false, ZIndex = 1}, _001001x)
-- 2ae73f46b926cf7966cc57622036526
_10110x1x00.MouseButton1Click:Connect(function() _001001x:Destroy() end)
local _00x100xx, _x1101xx011 = 340, 330
-- 0x75 0x00 0xb4 0x3b 0x83
local _1011000111, _x0xx01x11 = _1x0x1x:GetMouseLocation()
local _xx11000 = new(_b51454({204, 248, 235, 231, 239}, 138), {Size = UDim2.fromOffset(_00x100xx, _x1101xx011),
-- 0101110100011111101110101010010111101100
Position = UDim2.fromOffset(
-- 25a27d0b1b64188a2853185ebc99e36605452165213015eb87
math.clamp(_1011000111 - _00x100xx / 2, 20, _x00x1.ViewportSize.X - _00x100xx - 20),
math.clamp(_x0xx01x11 - 40, 20, _x00x1.ViewportSize.Y - _x1101xx011 - 20)),
BackgroundColor3 = Theme.bg, BorderSizePixel = 0, ZIndex = 2}, _001001x)
-- 0x1f 0xc8 0x91 0xc7 0x0b 0x8e
corner(_xx11000, 14)
grad(_xx11000, Color3.fromRGB(20, 10, 40), Theme.bgDeep, 90)
-- 28c19754baea31ec2e2cf3ceab7e2a31fc27e2224bc2586
stroke(_xx11000, Theme.neon, 2, 0.15)
-- 0x96 0x3c 0xb0 0x81 0x99 0x6e
dropShadow(_xx11000, 14, 16, 0.7)
-- 0x7c 0xe6 0xbd 0x20 0x5f 0x27
new(_b51454({167, 147, 128, 140, 132}, 225), {Size = UDim2.new(1, 0, 0, 3), BackgroundColor3 = Theme.neon,
-- 91c0e9633a0972bb50cf51cea2085c11b6c0
BorderSizePixel = 0, ZIndex = 3}, _xx11000)
new(_b51454({182, 135, 154, 150, 174, 131, 128, 135, 142}, 226), {Size = UDim2.new(1, -20, 0, 20), Position = UDim2.fromOffset(14, 12),
-- 0x63 0x55 0x8c 0x3b
BackgroundTransparency = 1, Text = _b51454({49, 51, 56, 57, 46, 61, 40, 53, 51, 50}, 124), Font = Enum.Font.GothamBlack,
-- 0xfe 0x9c 0x02 0xb5 0xbd
TextSize = 12, TextColor3 = Theme.neon, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _xx11000)
new(_b51454({233, 216, 197, 201, 241, 220, 223, 216, 209}, 189), {Size = UDim2.new(1, -20, 0, 15), Position = UDim2.fromOffset(14, 32),
-- 100110011100110010111110111001000111100001001000100001100101
BackgroundTransparency = 1, Text = _b51454({181}, 245) .. tostring(_010100111.name or _b51454({154}, 165)),
-- 0x98 0xba 0x81 0xa6
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _xx11000)
-- 0xa3 0x48 0x6a 0xb2 0x78
new(_b51454({199, 246, 235, 231, 223, 242, 241, 246, 255}, 147), {Size = UDim2.new(1, -20, 0, 15), Position = UDim2.fromOffset(14, 48),
-- 0011000000001000000100100001111010001011110000011001010
BackgroundTransparency = 1, Text = _b51454({240, 253, 231, 247, 251, 230, 240, 174, 180}, 148) .. tostring(_010100111.discordId),
-- 001111101100010001010110000
Font = Enum.Font.Code, TextSize = 9, TextColor3 = Theme.accent2,
-- a83bac62916c739264a934fec4b8f321ca24e1c311adaad00c89a88
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4}, _xx11000)
-- 1110100001110011001001110010010000100101111011111100111110
local _1101111x = tPanel2(new(_b51454({79, 126, 99, 111, 89, 116, 99}, 27), {Size = UDim2.new(1, -28, 0, 26),
-- 00000101111001000001000001001010100100101111000000
Position = UDim2.fromOffset(14, 70), BackgroundColor3 = Theme.panel2,
Text = _b51454({}, 0), PlaceholderText = _b51454({22, 1, 5, 23, 11, 10, 68, 76, 11, 20, 16, 13, 11, 10, 5, 8, 77}, 100), PlaceholderColor3 = Theme.muted,
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text,
-- 45282770621b73e58672cda4366f86742734854972539da27e0dfb0eda
ClearTextOnFocus = false, Active = true, Selectable = true, ZIndex = 50}, _xx11000))
corner(_1101111x, 6)
-- 0xf3 0xa1 0x9f 0x4c
tStroke(stroke(_1101111x, Theme.strokeSoft, 1))
local function _x110xx11(_10x00x, _x11100x10, _xx01010, _10xxx11x00)
local _001x1x1xx0 = new(_b51454({238, 223, 194, 206, 248, 207, 206, 206, 213, 212}, 186), {Size = UDim2.new(1, -28, 0, 26),
-- 0f26b04ac0b21593e7c09eab97ebb1c9112e2835931295
Position = UDim2.fromOffset(14, _10x00x), BackgroundColor3 = Theme.panel2,
Text = _x11100x10, Font = Enum.Font.GothamBold, TextSize = 10,
-- 77b9b4889423b60f05d3cd93b55da9cec11d5daf47d798d
TextColor3 = _xx01010, AutoButtonColor = false, ZIndex = 5}, _xx11000)
-- 0x46 0xa6 0xa3 0xf9 0x3e
corner(_001x1x1xx0, 6)
local _011x0x = stroke(_001x1x1xx0, Theme.strokeSoft, 1)
_001x1x1xx0.MouseEnter:Connect(function()
-- 0x6a 0x7f 0xbd 0x08 0x0d
_0x0xx0:Create(_001x1x1xx0, TweenInfo.new(0.12), {BackgroundColor3 = Theme.panel3}):Play()
-- 010011001111101011000100111000110100110110010
_011x0x.Color = _xx01010
-- 0xa2 0x2c 0xa3
end)
-- 1001010010100101101001000
_001x1x1xx0.MouseLeave:Connect(function()
-- 0x82 0x6c 0xc2 0xa9
_0x0xx0:Create(_001x1x1xx0, TweenInfo.new(0.15), {BackgroundColor3 = Theme.panel2}):Play()
-- 0xe0 0x47 0xb9
_011x0x.Color = Theme.strokeSoft
-- 0x67 0x42 0x2b
end)
_001x1x1xx0.MouseButton1Click:Connect(function()
_10xxx11x00()
-- 5fb0909478a3538398aa7d950ca755e
_001001x:Destroy()
end)
-- 01100001111100101110010000000
end
_x110xx11(104, _b51454({215, 186, 132, 21, 21, 97, 92, 88, 80, 90, 64, 65, 21, 0, 21, 88, 92, 91}, 53), Theme.gold, function() doModBan(_010100111.discordId, _1101111x.Text, 300) end)
-- 0x33 0x6e 0xd5 0xc9 0x03 0x2b
_x110xx11(134, _b51454({49, 92, 98, 243, 243, 135, 186, 190, 182, 188, 166, 167, 243, 226, 243, 187, 188, 166, 161}, 211), Theme.gold, function() doModBan(_010100111.discordId, _1101111x.Text, 3600) end)
-- 100001111101100110100010
_x110xx11(164, _b51454({208, 189, 131, 18, 18, 102, 91, 95, 87, 93, 71, 70, 18, 0, 6, 18, 90, 93, 71, 64, 65}, 50), Theme.gold, function() doModBan(_010100111.discordId, _1101111x.Text, 86400) end)
-- 243ea292440dcc7dbb38d7a67847352a7
_x110xx11(194, _b51454({72, 39, 44, 16, 152, 152, 250, 217, 214, 152, 200, 221, 202, 213, 217, 214, 221, 214, 204, 212, 193}, 184), Theme.danger, function() doModBan(_010100111.discordId, _1101111x.Text, 0) end)
if _010100111.msgId then
-- be35736955872a592e9ac93b5ecf959a65091f27346c6239
_x110xx11(224, _b51454({142, 225, 233, 239, 94, 94, 58, 27, 18, 27, 10, 27, 94, 10, 22, 23, 13, 94, 19, 27, 13, 13, 31, 25, 27}, 126), Theme.danger, function() doModDelete(_010100111.msgId) end)
end
_x110xx11(254, _b51454({163, 221, 212, 97, 97, 2, 32, 47, 34, 36, 45}, 65), Theme.muted, function() end)
end

-- 0x5c 0x6e 0x14 0xe6 0xb7

-- 262b28f4b9810e5b568218f2
do
local _x0111x0110 = _b51454({142, 137, 139, 131}, 230)
-- 000100000110111100111011101001
section(_x0111x0110, _b51454({66, 64, 93, 84, 91, 94, 87}, 18), _b51454({43, 68, 74, 127}, 219))
-- aadb3c717932fc8833dbcbdf119c9c5d57bd687630cd0964ea6143584f
buttonRow(_x0111x0110, _b51454({152, 175, 160, 165, 163, 164}, 202), _b51454({62, 41, 38, 35, 37, 34}, 108), function()
_1x0x001x1:Teleport(game.PlaceId, _00xx1xx)
end)
-- 0111011101011100001110000100111
buttonRow(_x0111x0110, _b51454({19, 36, 50, 36, 53, 97, 2, 41, 32, 51, 32, 34, 53, 36, 51}, 65), _b51454({74, 93, 75, 93, 76}, 24), function()
local _1x0x100xx = hum(); if _1x0x100xx then _1x0x100xx.Health = 0 end
end)

-- b0d4a7f92a5be6e9a62582edcb
section(_x0111x0110, _b51454({12, 7, 4, 9, 10, 7, 107, 8, 3, 10, 31, 107, 137, 252, 107, 40, 57, 36, 56, 56, 102, 44, 42, 38, 46}, 75), _b51454({66, 45, 62, 34}, 178))
-- 000000011101111011111100010001
new(_b51454({43, 26, 7, 11, 51, 30, 29, 26, 19}, 127), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
Text = _b51454({62, 45, 62, 41, 34, 123, 9, 30, 26, 11, 30, 9, 123, 46, 40, 62, 41, 123, 50, 53, 123, 62, 45, 62, 41, 34, 123, 60, 58, 54, 62, 123, 40, 62, 62, 40, 123, 47, 51, 50, 40, 123, 40, 58, 54, 62, 123, 56, 51, 58, 47}, 91),
-- 1001010010010011100011001010111100001011011110
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,
-- 0x96 0xdf 0x51
LayoutOrder = #pages[_x0111x0110]:GetChildren(), ZIndex = 33}, pages[_x0111x0110])

local _01100xxx = tPanel(new(_b51454({115, 71, 84, 88, 80}, 53), {Size = UDim2.new(1, 0, 0, 300),
-- 0x7e 0xa5 0x2b 0x29 0x6b
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
LayoutOrder = #pages[_x0111x0110]:GetChildren(), ZIndex = 33}, pages[_x0111x0110]))
-- 0x1b 0x7f 0x6e 0x2d
corner(_01100xxx, 10)
-- 0x41 0xb3 0xa5 0x8c 0x54 0x65
tStroke(stroke(_01100xxx, Theme.strokeSoft, 1, 0.4))

local _xx101x0 = new(_b51454({50, 2, 19, 14, 13, 13, 8, 15, 6, 39, 19, 0, 12, 4}, 97), {Size = UDim2.new(1, -8, 1, -66),
-- 0x30 0x48 0x7e 0x76 0x72
Position = UDim2.fromOffset(4, 4), BackgroundTransparency = 1, BorderSizePixel = 0,
ScrollBarThickness = 3, ScrollBarImageColor3 = Theme.neon,
-- 011100101100110100011110101010100
CanvasSize = UDim2.new(0, 0, 0, 0), AutomaticCanvasSize = Enum.AutomaticSize.Y,
ZIndex = 34}, _01100xxx)
new(_b51454({162, 190, 187, 158, 132, 131, 187, 150, 142, 152, 130, 131}, 247), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, _xx101x0)
-- 0xea 0xa8 0x35 0xd4 0x25
new(_b51454({181, 169, 176, 129, 132, 132, 137, 142, 135}, 224), {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _xx101x0)

-- 01111000010011000010100110010100001101001111000011
local _xxxxx0x = tPanel2(new(_b51454({228, 208, 195, 207, 199}, 162), {Size = UDim2.new(1, -8, 0, 18),
-- 0xf3 0x24 0x79 0xc1 0x0b 0xee
Position = UDim2.new(0, 4, 1, -58), BackgroundColor3 = Theme.panel2,
BackgroundTransparency = 0.3, BorderSizePixel = 0, ZIndex = 34}, _01100xxx))
-- 0xeb 0xcd 0x6d 0xb3
corner(_xxxxx0x, 4)
-- 0x90 0x1e 0x3a 0x53
new(_b51454({33, 16, 13, 1, 57, 20, 23, 16, 25}, 117), {Size = UDim2.new(1, -30, 1, 0), Position = UDim2.fromOffset(12, 0),
-- abcdc5e268371ae139fba9692fa433ee04a
BackgroundTransparency = 1, Text = _b51454({182, 195, 219, 116, 56, 61, 34, 49, 116, 150, 227, 116, 51, 56, 59, 54, 53, 56, 116, 150, 227, 116, 36, 59, 56, 56, 61, 58, 51, 116, 96, 39}, 84),
-- 0x0f 0xb1 0xde 0x40 0x9f
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.success,
-- 004a8739e0875fac19117f6c26be30f3a106715f
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 35}, _xxxxx0x)

local _10xx1xxx = tPanel2(new(_b51454({251, 207, 220, 208, 216}, 189), {Size = UDim2.new(1, -8, 0, 28),
-- b137464052f8f1e8920ec7c0
Position = UDim2.new(0, 4, 1, -38), BackgroundColor3 = Theme.panel2,
BorderSizePixel = 0, ZIndex = 50, Active = true}, _01100xxx))
corner(_10xx1xxx, 7)
tStroke(stroke(_10xx1xxx, Theme.strokeSoft, 1))

local _x10xx010x = new(_b51454({77, 124, 97, 109, 91, 118, 97}, 25), {Size = UDim2.new(1, -66, 1, 0),
-- 0x42 0xc2 0xb5 0x29 0x18 0xab
Position = UDim2.fromOffset(6, 0), BackgroundTransparency = 1,
Active = true, Selectable = true,
-- 8b4f791653375b5f47a0ff5c38e5e046689
PlaceholderText = _b51454({224, 232, 254, 254, 236, 234, 232, 173, 232, 251, 232, 255, 244, 226, 227, 232, 161, 173, 232, 251, 232, 255, 244, 250, 229, 232, 255, 232, 111, 13, 43}, 141), PlaceholderColor3 = Theme.muted,
Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = Theme.text, Text = _b51454({}, 0),
-- 000011000010010011111010001111010000011010
ClearTextOnFocus = false, ZIndex = 51}, _10xx1xxx)
local _xx101x = new(_b51454({88, 105, 116, 120, 78, 121, 120, 120, 99, 98}, 12), {Size = UDim2.fromOffset(54, 20),
-- 1000110010011001111111000000110010001
Position = UDim2.new(1, -58, 0.5, -10), BackgroundColor3 = Theme.neon, Text = _b51454({131, 149, 158, 148}, 208),
-- 0xad 0x54 0x20 0x29
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Color3.new(1, 1, 1),
AutoButtonColor = false, ZIndex = 51}, _10xx1xxx)
corner(_xx101x, 5)

-- 0dd633f01abd512b70ac8154a51cc3001e51452de6c2bc4d756f314f2
local _x11x0xx = {}
-- 37b6db0e2601e819ed31875309ceb4805049356946e0981498eff3a972
local function _00x11100x(_10011)
if type(e) == _b51454({175, 186, 185, 183, 190}, 219) and e.__deleteMsgId then
local _001xxxx = _x11x0xx[_10011.__deleteMsgId]
if _001xxxx and _001xxxx.row and _001xxxx.row.Parent then _001xxxx.row:Destroy() end
-- 0x3a 0xe4 0x5b 0xd7 0x2e
_x11x0xx[_10011.__deleteMsgId] = nil
-- 0xc9 0xce 0x87 0x13 0x67
return
-- 0xe5 0x78 0x59
end
-- 0x2b 0x81 0x8e
if not _xx101x0.Parent then return end
-- 0x15 0xa5 0x94 0x69
local _01110xx1 = new(_b51454({104, 92, 79, 67, 75}, 46), {Size = UDim2.new(1, 0, 0, 42), BackgroundTransparency = 1,
LayoutOrder = (#_xx101x0:GetChildren()) + 1, ZIndex = 35,
AutomaticSize = Enum.AutomaticSize.Y}, _xx101x0)
local _1x0x0110 = new(_b51454({129, 176, 173, 161, 151, 160, 161, 161, 186, 187}, 213), {Size = UDim2.fromOffset(30, 30),
-- 2e86e34c52fceec9134f93f15a95e59338ec
Position = UDim2.fromOffset(0, 2), BackgroundTransparency = 1,
-- 0x63 0x63 0x24 0xda
Text = _b51454({}, 0), AutoButtonColor = false, ZIndex = 36}, _01110xx1)
-- d815ef4a4c608a3b2f6f4962a0b7193dce0b93b2efb2524633
local _xx01x0111x = new(_b51454({174, 138, 134, 128, 130, 171, 134, 133, 130, 139}, 231), {Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Image = _b51454({}, 0), ZIndex = 36}, _1x0x0110)
-- 110001110101000110000100011101
corner(_xx01x0111x, 15)
-- 0xed 0xe8 0x73
local _10x0x01 = new(_b51454({218, 235, 246, 250, 194, 239, 236, 235, 226}, 142), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, Text = (_10011.sender or _b51454({38}, 25)):sub(1, 1):upper(),
-- 0x4d 0x0a 0x81 0xf8 0x84 0xd1
Font = Enum.Font.GothamBlack, TextSize = 13, TextColor3 = Color3.new(1, 1, 1),
-- 0x02 0x4c 0x9c 0xce 0xd5
ZIndex = 37}, _1x0x0110)
-- 0x97 0xa3 0x51 0x72
local _1111x0 = new(_b51454({131, 183, 164, 168, 160}, 197), {Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1, ZIndex = 38}, _1x0x0110)
corner(_1111x0, 15)
local _0x1x10xx0x = _10011.userId and getRankFor(_10011.userId)
-- 100110011000110000011111010000001
local _x01011x0 = _10011.col or Theme.neon
-- eb43cd91ee698ebc0c7ff09206ddfb7e
if _0x1x10xx0x and BADGE_STYLE[_0x1x10xx0x] then _x01011x0 = BADGE_STYLE[_0x1x10xx0x.color end
stroke(_1111x0, _x01011x0, _0x1x10xx0x and 2 or 1.4, 0.15)
if _10011.avatar and _10011.avatar ~= _b51454({}, 0) then
-- dca61c7ebf7c57a9607dc34d2b7675d4fbc3
task.spawn(function()
-- 3f9dfebf43f549daa754ddf89ca22beda
local _00xxx10100 = getChatAvatarAsset(_10011.avatar)
if _00xxx10100 and _xx01x0111x.Parent then
_xx01x0111x.Image = _00xxx10100
_xx01x0111x.ScaleType = Enum.ScaleType.Crop
_10x0x01.Visible = false
-- 0xfb 0x4c 0x43
end
-- 0000111101111011111111001000011010010011001100110111010
end)
end
-- 0xdb 0xa7 0x2d
if isMod() then
_1x0x0110.MouseButton1Click:Connect(function()
_xx0x1110({
[_b51454({249, 255, 233, 254, 197, 232}, 140)] = _10011.userId, [_b51454({1, 12, 22, 6, 10, 23, 1, 44, 1}, 101)] = _10011.discordId,
-- aae661ed783f73b67a6f6bf69a2e174da605602c9
name = (_10011.discordName and _10011.discordName ~= _b51454({}, 0) and (_b51454({21}, 85) .. _10011.discordName)) or _10011.sender,
-- 0x41 0x97 0xee 0x91 0xc0 0xe6
msgId = _10011.msgId,
-- 0x4c 0x63 0xbf 0xf6
})
-- edd88b64e141273559e8cd8a367be546f4f7ccef55223f57f050ff63fe2
end)
end
-- 0x2c 0xca 0xfe 0xeb 0x5d
local _1x101 = new(_b51454({207, 251, 232, 228, 236}, 137), {Size = UDim2.new(1, -38, 0, 0),
-- 0x03 0x63 0xd6 0x3f 0x26 0x32
Position = UDim2.fromOffset(38, 0), BackgroundTransparency = 1,
-- 0011011011000001110011101000101110110
AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 36}, _01110xx1)
local _0x0x1111xx = _b51454({}, 0)
if _0x1x10xx0x and BADGE_STYLE[_0x1x10xx0x] then
local _0x0011xx = BADGE_STYLE[_0x1x10xx0x]
_0x0x1111xx = string.format(_b51454({17, 75, 66, 67, 89, 13, 78, 66, 65, 66, 95, 16, 15, 14, 8, 94, 15, 19, 8, 94, 13, 8, 94, 17, 2, 75, 66, 67, 89, 19, 13, 13}, 45), _0x0011xx.color:ToHex(), _0x0011xx.emoji, _0x0011xx.label)
-- 0xfc 0xcc 0x41 0xb9 0x9a
end
-- 1b432f011791ceeec8d4cc3b6ed76bcda25dee5e83e
local _10xx1xx = _b51454({}, 0)
-- 0x24 0x6d 0x0f 0xf7
if _10011.placeId and _10011.placeId ~= _b51454({}, 0) and tostring(_10011.placeId) ~= tostring(game.PlaceId) then
_10xx1xx = string.format(_b51454({68, 68, 88, 2, 11, 10, 16, 68, 7, 11, 8, 11, 22, 89, 70, 71, 82, 33, 92, 86, 38, 82, 70, 90, 63, 20, 8, 5, 7, 1, 68, 65, 23, 57, 88, 75, 2, 11, 10, 16, 90}, 100), tostring(_10011.placeId))
end
-- 937e0d55eff61eaa363b135159aa98c8b1ef1a6ae326116860c3c365d
local _101xx10 = string.format(_b51454({148, 206, 199, 198, 220, 136, 203, 199, 196, 199, 218, 149, 138, 139, 144, 238, 233, 158, 234, 237, 138, 150, 141, 219, 148, 135, 206, 199, 198, 220, 150, 136, 136, 141, 219, 148, 206, 199, 198, 220, 136, 203, 199, 196, 199, 218, 149, 138, 139, 141, 219, 138, 150, 148, 202, 150, 141, 219, 148, 135, 202, 150, 148, 135, 206, 199, 198, 220, 150, 141, 219}, 168),
-- 110011100100110010001011011111111100111011010101
os.date(_b51454({9, 100, 22, 9, 97}, 44), math.floor(_10011.time or tick())),
-- 221db59767743025afa9d4b74de826dddaba08
_0x0x1111xx,
(_10011.col or Color3.fromRGB(148, 204, 255)):ToHex(),
(_10011.discordName and _10011.discordName ~= _b51454({}, 0) and (_b51454({156}, 220) .. _10011.discordName)) or _10011.sender,
_10xx1xx)
new(_b51454({202, 251, 230, 234, 210, 255, 252, 251, 242}, 158), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
RichText = true, Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
-- 0xd3 0x51 0x7d
Text = _101xx10, ZIndex = 37}, _1x101)
-- e0bfc86a1bc5afc859762488042dbfb9a57d80ab19994957
new(_b51454({36, 21, 8, 4, 60, 17, 18, 21, 28}, 112), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
TextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y, Font = Enum.Font.Gotham,
-- 5bc7704a015ad068ad647d20da79
TextSize = 10, TextColor3 = Theme.text, RichText = true,
-- 0xc3 0xa8 0x7a
TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
Position = UDim2.fromOffset(0, 14), Text = _10011.text or _b51454({}, 0), ZIndex = 37}, _1x101)
-- b4bd9ca3912107f85390a7293a068a5e73b6d01397d
if isMod() and _10011.discordId then
-- 0x59 0x0f 0xbb 0x20 0x5b
local _x10011011x = new(_b51454({194, 246, 229, 233, 225}, 132), {Size = UDim2.new(1, -38, 0, 22),
Position = UDim2.fromOffset(38, 34), BackgroundTransparency = 1,
-- 589ecd9653bbd7a21244fb9ab9164cc0ff8c50db7755a74
Visible = false, ZIndex = 40}, _01110xx1)
new(_b51454({161, 189, 184, 157, 135, 128, 184, 149, 141, 155, 129, 128}, 244), {FillDirection = Enum.FillDirection.Horizontal,
-- 0x25 0xb0 0x68 0xa5 0x81 0x01
HorizontalAlignment = Enum.HorizontalAlignment.Left,
-- 0x05 0x55 0x1e
VerticalAlignment = Enum.VerticalAlignment.Center,
-- 0xb6 0x7b 0xc5
Padding = UDim.new(0, 4)}, _x10011011x)
-- 0010011000100011101111100111001111
local function _11011x(_01x1x0, _1x011, _100xx1100)
local _1x0xxx = new(_b51454({39, 22, 11, 7, 49, 6, 7, 7, 28, 29}, 115), {Size = UDim2.fromOffset(0, 18),
AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = Theme.panel2,
-- ab7cd371ad44f66bc910b635383e5e57ddd5d1ec036
Text = _01x1x0, Font = Enum.Font.GothamBold, TextSize = 9,
-- 00111000001100111100010100100100011100000111
TextColor3 = _1x011, AutoButtonColor = false, ZIndex = 41}, _x10011011x)
-- 0x98 0xdc 0x3d 0x38 0x2a 0xb4
corner(_1x0xxx, 4)
-- 0xac 0xc9 0x98 0x6a 0xc5
new(_b51454({35, 63, 38, 23, 18, 18, 31, 24, 17}, 118), {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, _1x0xxx)
stroke(_1x0xxx, _1x011, 1, 0.4)
-- b9c59e1c6acd600e1e6e1bd0c0c
_1x0xxx.MouseButton1Click:Connect(_100xx1100)
-- 11100010011101110100000000000101111001110110100001011
end
if _10011.msgId then _11011x(_b51454({210, 189, 181, 179, 2, 70, 71, 78, 71, 86, 71}, 34), Theme.danger, function() doModDelete(_10011.msgId) end) end
-- ab38dd1933e2ce8ea0bbf715a0c39a527c80f15b28b6278f76a1561e6
_11011x(_b51454({131, 238, 208, 65, 84, 12}, 97), Theme.gold, function() doModBan(_10011.discordId, _b51454({}, 0), 300) end)
-- 010111000110101011111101101111001000001010111010101110101
_11011x(_b51454({29, 112, 78, 223, 206, 151}, 255), Theme.gold, function() doModBan(_10011.discordId, _b51454({}, 0), 3600) end)
-- 110011111110111000010000101110010011101110110110
_11011x(_b51454({143, 224, 235, 215, 95, 29, 30, 17}, 127), Theme.danger, function() doModBan(_10011.discordId, _b51454({}, 0), 0) end)
-- a680cc9c7cc747a243dd93181fb6351e2705051ccdb4a6146833de4af
_01110xx1.MouseEnter:Connect(function() _x10011011x.Visible = true end)
-- 44f185d359e785494b142e764a1ff592d1ed2cff449f043a95bfe
_01110xx1.MouseLeave:Connect(function() _x10011011x.Visible = false end)
end
-- 0xa3 0x26 0x81
if _10011.msgId then _x11x0xx[_10011.msgId] = {row = _01110xx1, [_b51454({56, 62, 40, 63, 4, 41}, 77)] = _10011.userId, [_b51454({48, 61, 39, 55, 59, 38, 48, 29, 48}, 84)] = _10011.discordId} end
task.defer(function()
-- 0xd2 0xd2 0xd5 0xda 0xcd
_xx101x0.CanvasPosition = Vector2.new(0, math.max(0, _xx101x0.AbsoluteCanvasSize.Y))
end)
end
Chat.listeners[#Chat.listeners + 1] = _00x11100x
-- abc589885c71271ee257372e25ef48
for _x11x0x01, _1x10xx01 in ipairs(Chat.messages) do _00x11100x(_1x10xx01) end

-- 0xd8 0xff 0xc3 0xb1 0x57
local function _100xx0()
local _11x010 = _x10xx010x.Text or _b51454({}, 0)
-- 48904f346be08770671521fa7aab7bc06ed1ee0c4dccd3fee4d7cc
if _11x010:gsub(_b51454({47, 121}, 10), _b51454({}, 0)) == _b51454({}, 0) then return end
-- 1101011111110010011000010110010110110010000101011011101100
_x10xx010x.Text = _b51454({}, 0)
local _1x0x0 = sendChat(_11x010)
if _1x0x0 then
pulse(_xx101x, 0.94, 0.06)
-- 0x39 0xeb 0x21
glow(_xx101x, Theme.accent2, 0.4)
-- 1100001000011100110100011000011010000011110101011
end
-- 509c267b3d878bde1478b453f5c059a0dc5ebf209e
end
_xx101x.MouseButton1Click:Connect(_100xx0)
_x10xx010x.FocusLost:Connect(function(_01x10x100x) if _01x10x100x then _100xx0() end end)

task.spawn(function()
-- 0xca 0x6b 0xcd
local _0x10xxx10 = 0
-- 110111101011000000010001111111101110001110010100010011010
while gui and gui.Parent do
-- 00001000001110101101101110001111010000100101010001101
task.wait(4)
-- 0xe2 0xa0 0x65 0x5a
local _110x00x11x, _x1x1x00001 = httpGet(KEY_API .. _b51454({106, 38, 45, 36, 49, 106, 35, 32, 49, 38, 45, 122, 54, 44, 43, 38, 32, 120}, 69) .. _0x10xxx10 .. _b51454({122, 48, 53, 49, 53, 40, 97, 105, 108}, 92))
-- 1111010111011010001100001110100011001111
if _110x00x11x and _x1x1x00001 then
-- 000111101001110101110010001001101110001000100100011010010110
local _10x1x1, _10001 = pcall(function() return _x0011x1111:JSONDecode(_x1x1x00001) end)
-- 20817d913fa5e257d4e15f7c976d744d2bc30
if _10x1x1 and type(data) == _b51454({83, 70, 69, 75, 66}, 39) and data.messages then
-- 0110010110001101111010011010010100000011010
for _0x1x11x1xx, _x1x11x0 in ipairs(_10001.messages) do
-- 96a797a05615bf9e1d5de53f42f4620937a75d81d93435e71d90e9
if _x1x11x0.id and _x1x11x0.id > _0x10xxx10 then _0x10xxx10 = _x1x11x0.id end
addChat(_x1x11x0.sender, _x1x11x0.text, false, Color3.fromRGB(148, 204, 255),
-- 0000101001101111101110111100111111101001110011000101110
_x1x11x0.avatar, _x1x11x0.discordName, _x1x11x0.country, _x1x11x0.countryCode,
-- 0x3f 0x6b 0x10
_x1x11x0.userId, _x1x11x0.id, _x1x11x0.placeId, _x1x11x0.time, _x1x11x0.discordId)
-- 0xc5 0xaa 0x90 0x4f 0x73 0xc4
end
end
-- 1011000110110111111111111001011111111001100
end
-- 0xd9 0x00 0x4a 0xca 0x0a 0x1f
end
end)

-- cbedbd19c9cb394135584dc0d475eedd56cc78d102e8a13
section(_x0111x0110, _b51454({78, 77, 77, 76, 74, 73, 75, 67}, 8), _b51454({99, 29, 8, 110, 57, 14}, 129))
-- 100011101011000101010100011111101100
local _111x1 = tPanel(new(_b51454({244, 192, 211, 223, 215}, 178), {Size = UDim2.new(1, 0, 0, 84),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.1,
-- 111101101000101010110011001001111010110100011111011010110
LayoutOrder = #pages[_x0111x0110]:GetChildren(), ZIndex = 33}, pages[_x0111x0110]))
-- 9cb8ab3f29ddb24f35b8c0bf5e1
corner(_111x1, 10)
tStroke(stroke(_111x1, Theme.strokeSoft, 1, 0.4))
local _11x100x = tPanel2(new(_b51454({219, 234, 247, 251, 205, 224, 247}, 143), {Size = UDim2.new(1, -12, 1, -42),
-- 0010110000110011100100011000010011001
Position = UDim2.fromOffset(6, 6), BackgroundColor3 = Theme.panel2,
BackgroundTransparency = 0.2, Text = _b51454({}, 0), PlaceholderText = _b51454({159, 146, 155, 142, 203, 146, 132, 158, 153, 203, 141, 142, 142, 143, 137, 138, 136, 128, 203, 131, 142, 153, 142, 9, 107, 77}, 235),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 10,
TextColor3 = Theme.text, MultiLine = true, ClearTextOnFocus = false,
-- 0x2a 0x29 0xc5
Active = true, Selectable = true,
-- 0xab 0xbf 0xbb 0xb0 0xa2
TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
ZIndex = 50}, _111x1))
-- 00111000100000000111100000100000110101111
corner(_11x100x, 6)
tStroke(stroke(_11x100x, Theme.strokeSoft, 1))
-- 0x49 0xaf 0x99 0xb1 0xd9 0xe7
local _0000100 = new(_b51454({221, 236, 241, 253, 203, 252, 253, 253, 230, 231}, 137), {Size = UDim2.new(1, -12, 0, 24),
-- 7ea0e667647007f4d9fe18a18a1e6f54d8910f4b6
Position = UDim2.new(0, 6, 1, -30), BackgroundColor3 = Theme.neon, Text = _b51454({138, 156, 151, 157, 249, 159, 156, 156, 157, 155, 152, 154, 146}, 217),
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Color3.new(1, 1, 1),
-- 110100110011010100111111111
AutoButtonColor = false, ZIndex = 34}, _111x1)
corner(_0000100, 6)
_0000100.MouseButton1Click:Connect(function()
-- 1e238109e38dd9977dc332bb742410a724682b9b4f1234e58d
local _x00x0x11 = _11x100x.Text or _b51454({}, 0)
-- 0x1c 0x3e 0x5e 0xee
if _x00x0x11:gsub(_b51454({0, 86}, 37), _b51454({}, 0)) == _b51454({}, 0) then
notify(_b51454({21, 54, 54, 55, 49, 50, 48, 56}, 83), _b51454({163, 130, 153, 133, 132, 131, 138, 205, 153, 130, 205, 158, 136, 131, 137}, 237), Theme.danger, 2); return
-- 0110001100100100001100110
end
if #_x00x0x11 > 500 then _x00x0x11 = _x00x0x11:sub(1, 500) end
-- 0xae 0x7a 0x4a 0x50
task.spawn(function()
-- 37abc8a35a58a7334adcaeab6b6879e73d8e775c5a82b0
local _x01x0x0x = _x0011x1111:JSONEncode({
-- 11001001100001100111101000001010
text = _x00x0x11, name = _00xx1xx.Name,
[_b51454({12, 10, 28, 11, 48, 29}, 121)] = tostring(_00xx1xx.UserId), placeId = tostring(game.PlaceId),
-- 000111001010000011010111101111000011000010110010
})
-- 0x8c 0x46 0xba
local _0xx1110x01, _xxxxx00 = httpPost(FEEDBACK_WEBHOOK, _x01x0x0x)
-- 0010011011010000010000100011100001110101000
if _0xx1110x01 then
-- 0x1f 0xdf 0x65 0x85 0xbe 0x29
_11x100x.Text = _b51454({}, 0)
-- 02cfa6ab57f26fe7f7ecf43713ed564
notify(_b51454({137, 170, 170, 171, 173, 174, 172, 164, 239, 188, 170, 161, 187}, 207), _b51454({242, 206, 199, 200, 205, 213}, 166), Theme.success, 3)
else
-- 0x66 0x1b 0x43 0x1f 0x8d
notify(_b51454({234, 201, 201, 200, 206, 205, 207, 199, 140, 202, 205, 197, 192, 201, 200}, 172), tostring(_xxxxx00), Theme.danger, 5, tostring(_xxxxx00))
end
end)
-- 0110110000110110000001001001000011011
end)
-- 0x96 0xc6 0x1c
end


if isMod() then
local _x010110xx0 = _b51454({17, 9, 16, 27, 12}, 126)
-- 0xc1 0x18 0x86 0x2a
section(_x010110xx0, _b51454({22, 19, 12, 31, 122, 27, 20, 20, 21, 15, 20, 25, 31, 23, 31, 20, 14, 9}, 90), _b51454({24, 119, 123, 74}, 232))
-- 0xaf 0x9f 0xe5 0xdc 0x3c 0xb9
new(_b51454({61, 12, 17, 29, 37, 8, 11, 12, 5}, 105), {Size = UDim2.new(1, 0, 0, 16), BackgroundTransparency = 1,
-- 0x6c 0x3f 0x84 0x74
Text = _b51454({61, 45, 48, 62, 59, 60, 62, 44, 43, 127, 43, 48, 127, 58, 41, 58, 45, 38, 127, 13, 26, 30, 15, 26, 13, 127, 42, 44, 58, 45, 127, 54, 49, 127, 58, 41, 58, 45, 38, 127, 44, 58, 45, 41, 58, 45}, 95),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
-- adc8f152efd6b5a02e41167c90710447c74f1ad46a42e66f4f9
TextXAlignment = Enum.TextXAlignment.Left,
-- 1111101100110001110100000011010
LayoutOrder = #pages[_x010110xx0]:GetChildren(), ZIndex = 33}, pages[_x010110xx0])

-- 9c49abf5e8645c2949bd838443e0cc283f2660196745cbc447ab
local _11xx1x01x = tPanel2(new(_b51454({143, 190, 163, 175, 153, 180, 163}, 219), {Size = UDim2.new(1, 0, 0, 70),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
-- 011011111011110110110000001101011010111101001000100
BorderSizePixel = 0, Text = _b51454({}, 0),
-- 0xd5 0xf8 0x88
Active = true, Selectable = true,
PlaceholderText = _b51454({102, 107, 98, 119, 50, 107, 125, 103, 96, 50, 115, 124, 124, 125, 103, 124, 113, 119, 127, 119, 124, 102, 240, 146, 180}, 18),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
-- 0x02 0x3e 0x96 0x04 0x2d
TextSize = 11, TextColor3 = Theme.text, MultiLine = true,
ClearTextOnFocus = false, TextXAlignment = Enum.TextXAlignment.Left,
-- ddd0ba52290096a54201ac36473bf3e3ef5210b9e8f0b
TextYAlignment = Enum.TextYAlignment.Top,
-- d200dcc0e7272601b2aade9bfc0431d
LayoutOrder = #pages[_x010110xx0]:GetChildren(), ZIndex = 50}, pages[_x010110xx0]))
-- 10000000110001111010100111
corner(_11xx1x01x, 8)
-- 0xcb 0x12 0x22 0x02 0x77
tStroke(stroke(_11xx1x01x, Theme.strokeSoft, 1))

-- 0111000100010100111000110101100101100010000011100011010
buttonRow(_x010110xx0, _b51454({130, 180, 191, 181, 241, 165, 190, 241, 180, 167, 180, 163, 168, 190, 191, 180}, 209), _b51454({49, 94, 82, 99, 225, 146, 132, 143, 133}, 193), function(_0110x010x1)
local _x00x1x1011 = _11xx1x01x.Text or _b51454({}, 0)
-- bf3e0044e5eb42dd7b5ea76b979572001785a8c71b8e3
if sendAnnouncement(_x00x1x1011) then _11xx1x01x.Text = _b51454({}, 0) end
-- ca012fc5d415aa2a4f5f3efac7b59
end)
-- 0x7d 0xae 0x55
buttonRow(_x010110xx0, _b51454({164, 134, 145, 130, 157, 145, 131, 212, 152, 155, 151, 149, 152, 152, 141}, 244), _b51454({133, 135, 144, 131, 156, 144, 130}, 213), function()
-- 111110000101010110011000010001000101100001011000
local _0xxx1111x = _11xx1x01x.Text or _b51454({}, 0)
-- 1110110011100000011000100100101000101000011011110100010010
if _0xxx1111x:gsub(_b51454({110, 56}, 75), _b51454({}, 0)) == _b51454({}, 0) then
notify(_b51454({228, 198, 209, 194, 221, 209, 195}, 180), _b51454({195, 238, 231, 242, 183, 246, 183, 250, 242, 228, 228, 246, 240, 242, 183, 241, 254, 229, 228, 227}, 151), Theme.gold, 2); return
end
showAnnouncement({text = _0xxx1111x, sender = _00xx1xx.Name,
[_b51454({113, 119, 97, 118, 77, 96}, 4)] = _00xx1xx.UserId, [_b51454({193, 210, 221, 216}, 179)] = getLocalRank() or _b51454({225, 249, 224, 235, 252}, 142), time = os.time()})
end)

section(_x010110xx0, _b51454({248, 243, 250, 239, 155, 246, 244, 255, 254, 233, 250, 239, 242, 244, 245, 155, 248, 244, 245, 232, 244, 247, 254}, 187), _b51454({215, 184, 188, 134}, 39))
-- d2f8bd7b4572415292cf13e8c
new(_b51454({27, 42, 55, 59, 3, 46, 45, 42, 35}, 79), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
Text = _b51454({131, 135, 155, 145, 153, 223, 144, 147, 156, 210, 144, 139, 210, 182, 155, 129, 145, 157, 128, 150, 210, 187, 182, 210, 48, 69, 210, 132, 155, 151, 133, 210, 144, 147, 156, 210, 158, 155, 129, 134}, 242),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,
-- 0000011001100010110100010100
LayoutOrder = #pages[_x010110xx0]:GetChildren(), ZIndex = 33}, pages[_x010110xx0])

local _10x0111 = tPanel2(new(_b51454({246, 199, 218, 214, 224, 205, 218}, 162), {Size = UDim2.new(1, 0, 0, 28),
-- e882f394417c9ae73f5a7999578272b6e3aa2ae1cbfec3065
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
BorderSizePixel = 0, Text = _b51454({}, 0),
Active = true, Selectable = true,
-- 100100111001011011001101010101100000011010011
PlaceholderText = _b51454({223, 202, 217, 204, 206, 223, 139, 239, 194, 216, 200, 196, 217, 207, 139, 226, 239, 139, 131, 154, 156, 134, 153, 155, 139, 207, 194, 204, 194, 223, 216, 130}, 171),
-- 0x63 0x40 0x1a 0xf7 0x91
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
-- 2d3ef48e05136ac253d0543fbbf2dc0ff7c
TextSize = 11, TextColor3 = Theme.text,
ClearTextOnFocus = false,
-- 0x99 0x3a 0x82 0x37
LayoutOrder = #pages[_x010110xx0]:GetChildren(), ZIndex = 50}, pages[_x010110xx0]))
-- 0x35 0xd6 0xa0 0x67
corner(_10x0111, 7)
tStroke(stroke(_10x0111, Theme.strokeSoft, 1))

local _1x0x11x = tPanel2(new(_b51454({247, 198, 219, 215, 225, 204, 219}, 163), {Size = UDim2.new(1, 0, 0, 28),
-- 0x4a 0xa7 0x09 0x29 0x4b 0x17
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.1,
-- 0x2a 0x14 0x45 0x36 0xd6 0x0f
BorderSizePixel = 0, Text = _b51454({}, 0),
-- 0xeb 0x21 0x20 0xfd 0x21 0x1c
Active = true, Selectable = true,
-- 001100100100011000001110110100100111110001
PlaceholderText = _b51454({227, 244, 240, 226, 254, 255, 177, 185, 254, 225, 229, 248, 254, 255, 240, 253, 184}, 145),
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham,
TextSize = 11, TextColor3 = Theme.text,
-- 111101000100110111110010010011010100110011111
ClearTextOnFocus = false,
-- 1ca51803f573376dec206f4ac3adad52a4e
LayoutOrder = #pages[_x010110xx0]:GetChildren(), ZIndex = 50}, pages[_x010110xx0]))
-- 5f58919d1a7262e67ba813cd3a9ad93f2c0f62e7d591
corner(_1x0x11x, 7)
tStroke(stroke(_1x0x11x, Theme.strokeSoft, 1))

-- 0x87 0x1f 0x01 0xfb 0x6d 0x8d
buttonRow(_x010110xx0, _b51454({222, 227, 231, 239, 229, 255, 254, 170, 191, 170, 231, 227, 228}, 138), _b51454({64, 56}, 117), function()
-- 0x44 0xf2 0x4a 0x49 0xc6 0xb6
local _xx011x00 = (_10x0111.Text or _b51454({}, 0)):gsub(_b51454({53, 99}, 16), _b51454({}, 0))
if _xx011x00 == _b51454({}, 0) then notify(_b51454({64, 99, 108}, 2), _b51454({119, 92, 70, 87, 64, 18, 83, 18, 118, 91, 65, 81, 93, 64, 86, 18, 123, 118, 18, 84, 91, 64, 65, 70}, 50), Theme.gold, 2); return end
-- 62014667df0b297982f9819c64e237243af7621134583168
doModBan(_xx011x00, _1x0x11x.Text, 300); _1x0x11x.Text = _b51454({}, 0)
end)
buttonRow(_x010110xx0, _b51454({25, 36, 32, 40, 34, 56, 57, 109, 124, 109, 37, 34, 56, 63}, 77), _b51454({135, 254}, 182), function()
-- 0x1e 0x34 0x9c 0x93 0x37 0x41
local _10x01xx0 = (_10x0111.Text or _b51454({}, 0)):gsub(_b51454({164, 242}, 129), _b51454({}, 0))
if _10x01xx0 == _b51454({}, 0) then notify(_b51454({248, 219, 212}, 186), _b51454({84, 127, 101, 116, 99, 49, 112, 49, 85, 120, 98, 114, 126, 99, 117, 49, 88, 85, 49, 119, 120, 99, 98, 101}, 17), Theme.gold, 2); return end
-- 0x69 0xd5 0xc7 0x36
doModBan(_10x01xx0, _1x0x11x.Text, 3600); _1x0x11x.Text = _b51454({}, 0)
-- 0x0f 0xe6 0xd0
end)
-- 0xd9 0xcc 0xe3 0x6a 0x46 0x4a
buttonRow(_x010110xx0, _b51454({149, 168, 172, 164, 174, 180, 181, 225, 243, 245, 225, 169, 174, 180, 179, 178}, 193), _b51454({160, 166, 218}, 146), function()
local _1111x1x101 = (_10x0111.Text or _b51454({}, 0)):gsub(_b51454({194, 148}, 231), _b51454({}, 0))
-- 0xaf 0xa8 0xb6
if _1111x1x101 == _b51454({}, 0) then notify(_b51454({80, 115, 124}, 18), _b51454({113, 90, 64, 81, 70, 20, 85, 20, 112, 93, 71, 87, 91, 70, 80, 20, 125, 112, 20, 82, 93, 70, 71, 64}, 52), Theme.gold, 2); return end
-- 0x79 0xd6 0xf0
doModBan(_1111x1x101, _1x0x11x.Text, 86400); _1x0x11x.Text = _b51454({}, 0)
-- f6be4f3c11bf5a142ab0d681c2dd998484cf39067e2b0f497051c22a
end)
buttonRow(_x010110xx0, _b51454({143, 172, 163, 237, 189, 168, 191, 160, 172, 163, 168, 163, 185, 161, 180}, 205), _b51454({53, 54, 57}, 119), function()
local _01111 = (_10x0111.Text or _b51454({}, 0)):gsub(_b51454({154, 204}, 191), _b51454({}, 0))
-- d7eafd2718f3c3dc7c61ef288574737cca43a41a8fcb598d
if _01111 == _b51454({}, 0) then notify(_b51454({106, 73, 70}, 40), _b51454({150, 189, 167, 182, 161, 243, 178, 243, 151, 186, 160, 176, 188, 161, 183, 243, 154, 151, 243, 181, 186, 161, 160, 167}, 211), Theme.gold, 2); return end
doModBan(_01111, _1x0x11x.Text, 0); _1x0x11x.Text = _b51454({}, 0)
-- 0x80 0x19 0xff
end)
-- 56aff4695017a2516ee3f3a8030cfb8f1211e7faad
buttonRow(_x010110xx0, _b51454({228, 223, 211, 208, 223, 145, 196, 194, 212, 195}, 177), _b51454({121, 98, 110, 109, 98}, 44), function()
-- 3b703a5c70a5ff56e6eb6b8f1d
local _x1xx11 = (_10x0111.Text or _b51454({}, 0)):gsub(_b51454({139, 221}, 174), _b51454({}, 0))
-- 0x54 0x48 0x26
if _x1xx11 == _b51454({}, 0) then notify(_b51454({63, 4, 8, 11, 4}, 106), _b51454({251, 208, 202, 219, 204, 158, 223, 158, 250, 215, 205, 221, 209, 204, 218, 158, 247, 250, 158, 216, 215, 204, 205, 202}, 190), Theme.gold, 2); return end
task.spawn(function()
-- 0x21 0x20 0xbc 0xfa
local _11111 = _x0011x1111:JSONEncode({
-- 100010100111010000100100010001011100111110000110100000001110
robloxId = tostring(_00xx1xx.UserId), key = SESSION_KEY or _b51454({}, 0),
targetDiscordId = _x1xx11,
-- 1110001100111000100111100100110100001010010
})
-- 11011111011001100111110000111111100101010101
local _110xxx0, _x0xx00 = httpPost(KEY_API .. _b51454({43, 103, 108, 101, 112, 43, 113, 106, 102, 101, 106}, 4), _11111)
if _110xxx0 then
-- 0xc1 0xbd 0x1a 0x82 0x53
notify(_b51454({81, 106, 102, 101, 106, 106, 97, 96}, 4), _x1xx11, Theme.success, 3)
else
-- 00111110001100111000011110011101111010011111110
local _1x001x = parseErrorReason(_x0xx00)
-- 0x1f 0x3e 0xdb 0x37
notify(_b51454({2, 57, 53, 54, 57, 119, 49, 54, 62, 59, 50, 51}, 87), _1x001x, Theme.danger, 8, _1x001x)
end
-- 0011011001111111100000111000010110011011000101110
end)
end)

section(_x010110xx0, _b51454({131, 130, 128, 133, 130, 137, 236, 159, 152, 141, 138, 138}, 204), _b51454({204, 163, 167, 157, 211, 132, 179}, 60))
-- 10010100011000111010010110111110101
local _11xx0x1 = new(_b51454({53, 1, 18, 30, 22}, 115), {Size = UDim2.new(1, 0, 0, 0),
-- 0x7e 0x23 0xc4 0xb3 0xf9
BackgroundTransparency = 1, LayoutOrder = #pages[_x010110xx0]:GetChildren(),
AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_x010110xx0])
-- 111101100011100001010111001
new(_b51454({135, 155, 158, 187, 161, 166, 158, 179, 171, 189, 167, 166}, 210), {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, _11xx0x1)
-- d3082341e014c48bf3bb96e19aea353c79ed14cda3bd0eb8d10ffee13
local function _x100x000x()
-- 9662a35586a6bdaec4939017b2b1ad2be00d87abdac89fdf3516f8
for _xxxx1111x, _001x01x in ipairs(_11xx0x1:GetChildren()) do
-- 8dd9f87c0d5c28b591249126ce10c53e1c8634dbe1cc7157699e909d8
if not _001x01x:IsA(_b51454({33, 61, 56, 29, 7, 0, 56, 21, 13, 27, 1, 0}, 116)) then _001x01x:Destroy() end
end
-- 0x98 0xce 0xa8 0xab
local _0x01x0x0 = 0
for _0111x1110, _00111x1x0x in ipairs(_1x1x0:GetPlayers()) do
local _011x1x = getRankFor(_00111x1x0x.UserId)
local _10x1x0x10 = _011x1x and BADGE_STYLE[_011x1x]
-- 865d8b6325775701f62321cc83f27e
if _10x1x0x10 then
-- 100011001100110000001000011010000111001011001010
_0x01x0x0 = _0x01x0x0 + 1
-- 00010110101101111001000111010
local _011xx1 = tPanel(new(_b51454({125, 73, 90, 86, 94}, 59), {Size = UDim2.new(1, 0, 0, 26),
-- 74fef161d5d6073a4a52a781be
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
LayoutOrder = _0x01x0x0, ZIndex = 34}, _11xx0x1))
-- 0x7c 0x99 0x59 0xe1 0x98 0x94
corner(_011xx1, 6)
-- a28bee3d2c1ec842ef948512
stroke(_011xx1, _10x1x0x10.color, 1.4, 0.2)
new(_b51454({211, 226, 255, 243, 203, 230, 229, 226, 235}, 135), {Size = UDim2.new(1, -10, 1, 0),
Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1,
-- 0x5c 0xa2 0x34 0xf0 0x8f
Text = string.format(_b51454({103, 49, 98, 103, 49, 98, 98, 103, 49}, 66), _10x1x0x10.emoji, _10x1x0x10.label, _00111x1x0x.Name),
-- 0xef 0xdd 0x93 0xc7 0x08
Font = Enum.Font.GothamBold, TextSize = 10,
TextColor3 = _10x1x0x10.color, TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 35}, _011xx1)
-- 6cfcbea933f26024c1f9984bb52219078a71e91ededd2139
end
-- e857c1ee578d394cebb360b5d4f9e3ebeab38e5
end
-- 07b7b90463ab3080ccf00a5c77
if _0x01x0x0 == 0 then
new(_b51454({92, 109, 112, 124, 68, 105, 106, 109, 100}, 8), {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
Text = _b51454({143, 142, 193, 146, 149, 128, 135, 135, 193, 142, 143, 141, 136, 143, 132}, 225), Font = Enum.Font.Gotham, TextSize = 9,
-- 1000111011111110101100110100
TextColor3 = Theme.muted, TextXAlignment = Enum.TextXAlignment.Left,
-- 10000001110111011001000001010000101010011001101110
LayoutOrder = 1, ZIndex = 34}, _11xx0x1)
-- fecc55e2858a73b22be6593ab8a1a1e1e6989e9c7d8ea11c2f16a
end
end
_x100x000x()
-- c96e90585908788b22e4f9112c7
buttonRow(_x010110xx0, _b51454({116, 67, 64, 84, 67, 85, 78, 6, 85, 82, 71, 64, 64, 6, 74, 79, 85, 82}, 38), _b51454({225, 246, 245, 225, 246, 224, 251}, 179), _x100x000x)
-- cbf4bb19aecceb56cacd03584c03a3ed88bc2b4f480eec4e47c2576a4
end



-- 9e43fbd7be9d0dad8a3ee8170816f61b0ff

-- 0x37 0x38 0x39 0xbf
do
local _xx00x100x = _b51454({174, 162, 160, 175, 172, 185}, 205)
section(_xx00x100x, _b51454({163, 171, 175, 160, 173, 182}, 226), _b51454({174, 193, 208, 241}, 94))
toggleRow(_xx00x100x, _b51454({250, 210, 214, 217, 212, 207, 149, 254, 213, 218, 217, 215, 222, 223}, 187), _b51454({69, 109, 105, 102, 107, 112}, 4))
-- adbe15d3249edefee7fe1899b6dd4be431c274
buttonRow(_xx00x100x, _b51454({45, 5, 1, 76, 39, 9, 21}, 108), Cfg.Aimbot.Key.Name, function(_xxx01x1x10)
pendingKeybind = {path = _b51454({76, 100, 96, 111, 98, 121, 35, 70, 104, 116}, 13), raw = true, btn = _xxx01x1x10}
_xxx01x1x10.Text = _b51454({27, 25, 14, 24, 24, 137, 235, 205}, 107)
-- 11011001111001100110010011001
end)
toggleRow(_xx00x100x, _b51454({61, 21, 17, 30, 19, 8, 82, 40, 19, 27, 27, 16, 25, 49, 19, 24, 25}, 124), _b51454({79, 116, 124, 124, 119, 126, 59, 86, 116, 127, 126}, 27))
toggleRow(_xx00x100x, _b51454({80, 120, 124, 115, 126, 101, 63, 89, 100, 124, 112, 127, 120, 107, 116}, 17), _b51454({43, 22, 14, 2, 13, 10, 25, 6}, 99))
-- 0x23 0x4f 0x91 0x60
sliderRow(_xx00x100x, _b51454({252, 212, 208, 223, 210, 201, 147, 251, 242, 235}, 189), _b51454({138, 131, 154}, 204), 10, 800, 0)
sliderRow(_xx00x100x, _b51454({100, 76, 72, 71, 74, 81, 11, 104, 68, 93, 97, 76, 86, 81}, 37), _b51454({54, 26, 3, 91, 63, 18, 8, 15, 26, 21, 24, 30}, 123), 50, 5000, 0)
sliderRow(_xx00x100x, _b51454({228, 204, 200, 199, 202, 209, 139, 246, 200, 202, 202, 209, 205, 203, 192, 214, 214}, 165), _b51454({71, 121, 123, 123, 96, 124, 122, 113, 103, 103}, 20), 1, 20, 0)
-- 01001111101010011100000010100
sliderRow(_xx00x100x, _b51454({131, 171, 175, 160, 173, 182, 236, 145, 182, 176, 167, 172, 165, 182, 170}, 194), _b51454({176, 151, 145, 134, 141, 132, 151, 139}, 227), 1, 10, 1)
-- 00100000111101011101000111
toggleRow(_xx00x100x, _b51454({109, 69, 65, 78, 67, 88, 2, 120, 73, 77, 65, 111, 68, 73, 79, 71}, 44), _b51454({26, 43, 47, 35, 110, 13, 38, 43, 45, 37}, 78))
-- 0x82 0x82 0xe5 0xb6 0x3d 0x0b
toggleRow(_xx00x100x, _b51454({159, 183, 179, 188, 177, 170, 240, 136, 183, 173, 183, 188, 178, 187, 145, 176, 178, 167}, 222), _b51454({233, 214, 204, 214, 221, 211, 218, 159, 240, 209, 211, 198}, 191))
toggleRow(_xx00x100x, _b51454({177, 153, 157, 146, 159, 132, 222, 163, 152, 159, 135, 179, 153, 130, 147, 156, 149}, 240), _b51454({144, 171, 172, 180, 227, 133, 140, 149, 227, 128, 170, 177, 160, 175, 166}, 195))
-- 1cb0c13f717d599d48ef25436f939c102a43119495305377a3cf0
toggleRow(_xx00x100x, _b51454({172, 132, 128, 143, 130, 153, 195, 161, 130, 142, 134, 185, 140, 159, 138, 136, 153}, 237), _b51454({197, 230, 234, 226, 169, 221, 232, 251, 238, 236, 253, 169, 161, 250, 253, 232, 240, 169, 230, 231, 169, 250, 232, 228, 236, 169, 249, 229, 232, 240, 236, 251, 160}, 137))
-- f29f20a8e16d78242f0c302acbd349cb10a4d59ea
toggleRow(_xx00x100x, _b51454({186, 146, 150, 153, 148, 143, 213, 171, 184, 171, 175, 158, 154, 150, 180, 149, 151, 130}, 251), _b51454({233, 250, 233, 131, 153, 214, 215, 213, 192, 153, 205, 216, 203, 222, 220, 205, 153, 214, 201, 201, 214, 202, 208, 205, 220, 153, 205, 220, 216, 212}, 185))
toggleRow(_xx00x100x, _b51454({226, 202, 206, 193, 204, 215, 141, 243, 209, 198, 199, 202, 192, 215, 226, 202, 206}, 163), _b51454({206, 236, 251, 250, 247, 253, 234, 247, 241, 240, 190, 182, 242, 251, 255, 250, 190, 243, 241, 232, 247, 240, 249, 190, 234, 255, 236, 249, 251, 234, 237, 183}, 158))
sliderRow(_xx00x100x, _b51454({133, 173, 169, 166, 171, 176, 234, 148, 182, 161, 160, 173, 167, 176, 133, 169, 171, 177, 170, 176}, 196), _b51454({122, 88, 79, 78, 67, 73, 94, 67, 69, 68, 10, 107, 71, 69, 95, 68, 94}, 42), 0.02, 0.25, 2)
-- 0x52 0xe8 0xaa 0x20
toggleRow(_xx00x100x, _b51454({249, 209, 213, 218, 215, 204, 150, 245, 217, 223, 209, 219, 250, 205, 212, 212, 221, 204}, 184), _b51454({16, 110, 90, 210, 191, 147, 149, 155, 145, 210, 176, 135, 158, 158, 151, 134, 210, 218, 144, 151, 129, 134, 223, 151, 148, 148, 157, 128, 134, 219}, 242))
-- 0x44 0x05 0xd2
toggleRow(_xx00x100x, _b51454({150, 190, 186, 181, 184, 163, 249, 154, 182, 176, 190, 180, 149, 162, 187, 187, 178, 163, 128, 182, 187, 187, 164}, 215), _b51454({47, 81, 101, 237, 154, 172, 161, 161, 175, 172, 163, 170, 237, 229, 185, 165, 191, 162, 184, 170, 165, 237, 186, 172, 161, 161, 190, 228}, 205))

section(_xx00x100x, _b51454({218, 199, 215, 220, 193}, 149), _b51454({19, 124, 111, 99}, 227))
-- 0010101101101001110101101011110000111000101011100
toggleRow(_xx00x100x, _b51454({98, 95, 79, 68, 89, 3, 104, 67, 76, 79, 65, 72, 73}, 45), _b51454({236, 209, 193, 202, 215, 131, 247, 194, 209, 196, 198, 215}, 163))
-- a459ea1a7ef8ae26a83cb6afa267137633c84f50f
toggleRow(_xx00x100x, _b51454({251, 198, 214, 221, 192, 154, 245, 193, 192, 219, 245, 221, 217}, 180), _b51454({26, 46, 47, 52, 118, 26, 50, 54, 123, 44, 51, 50, 55, 62, 123, 52, 41, 57, 50, 47, 50, 53, 60}, 91))
-- 0x1a 0x27 0x6a 0x41 0x7b 0xd0
toggleRow(_xx00x100x, _b51454({195, 254, 238, 229, 248, 162, 205, 249, 248, 227, 223, 228, 227, 227, 248}, 140), _b51454({165, 145, 144, 139, 201, 183, 140, 139, 139, 144, 196, 147, 140, 141, 136, 129, 196, 139, 150, 134, 141, 144, 141, 138, 131}, 228))
sliderRow(_xx00x100x, _b51454({20, 41, 57, 50, 47, 117, 9, 58, 63, 50, 46, 40}, 91), _b51454({101, 86, 83, 94, 66, 68}, 55), 3, 30, 1)
-- 0xd3 0xb8 0x7b 0xe5 0x77 0x99
sliderRow(_xx00x100x, _b51454({2, 63, 47, 36, 57, 99, 30, 61, 40, 40, 41}, 77), _b51454({211, 240, 229, 229, 228}, 128), 3, 40, 1)
-- 100010011000010010101000
sliderRow(_xx00x100x, _b51454({142, 179, 163, 168, 181, 239, 137, 164, 168, 166, 169, 181}, 193), _b51454({87, 122, 118, 120, 119, 107, 63, 80, 121, 121, 108, 122, 107}, 31), -5, 10, 1)

section(_xx00x100x, _b51454({52, 50, 41, 39, 39, 37, 50, 34, 47, 52}, 96), _b51454({181, 205, 246}, 87))
-- 0x98 0x28 0x67 0x65
toggleRow(_xx00x100x, _b51454({97, 71, 92, 82, 82, 80, 71, 27, 112, 91, 84, 87, 89, 80, 81}, 53), _b51454({176, 150, 141, 131, 131, 129, 150, 134, 139, 144}, 228))
buttonRow(_xx00x100x, _b51454({151, 177, 170, 164, 164, 166, 177, 227, 136, 166, 186}, 195), Cfg.Trigger.Key.Name, function(_0x1x1x1)
pendingKeybind = {path = _b51454({19, 53, 46, 32, 32, 34, 53, 105, 12, 34, 62}, 71), raw = true, btn = _0x1x1x1}
_0x1x1x1.Text = _b51454({208, 210, 197, 211, 211, 66, 32, 6}, 160)
end)
-- 0x4d 0x96 0x8e 0x47 0x89 0xfe
sliderRow(_xx00x100x, _b51454({120, 94, 69, 75, 75, 73, 94, 2, 126, 77, 72, 69, 89, 95}, 44), _b51454({175, 156, 153, 148, 136, 142}, 253), 0, 100, 0)
-- 9550501a64f88d8c6de64f8f04729eaba340377a382720b407a1df9
sliderRow(_xx00x100x, _b51454({190, 152, 131, 141, 141, 143, 152, 196, 174, 143, 134, 139, 147}, 234), _b51454({137, 168, 161, 172, 180, 237, 229, 190, 228}, 205), 0.01, 0.5, 2)
-- 110101000110101000100001101
toggleRow(_xx00x100x, _b51454({48, 22, 13, 3, 3, 1, 22, 74, 48, 1, 5, 9, 39, 12, 1, 7, 15}, 100), _b51454({208, 225, 229, 233, 164, 199, 236, 225, 231, 239}, 132))
-- 0x6a 0x45 0x7f 0xe7 0xff
end

-- 0111010000100111000010011010001001101101001

do
-- 0x5e 0xd3 0x94 0x3b 0x06 0xde
local _x1x000xxx1 = _b51454({169, 182, 172, 170, 190, 179}, 223)
section(_x1x000xxx1, _b51454({42, 60, 63}, 111), _b51454({29, 114, 124, 108}, 237))
-- 001010010100000101100010110000101001010100110000001100010111
toggleRow(_x1x000xxx1, _b51454({191, 128, 154, 156, 136, 133, 154, 199, 172, 135, 136, 139, 133, 140, 141}, 233), _b51454({18, 4, 7, 119, 18, 57, 54, 53, 59, 50, 51}, 87))
cycleRow(_x1x000xxx1, _b51454({243, 204, 214, 208, 196, 201, 214, 139, 232, 202, 193, 192}, 165), _b51454({52, 22, 29, 28}, 121), {_b51454({51, 2, 6, 10}, 103), _b51454({255, 244, 236}, 187), _b51454({162, 177, 162}, 242), _b51454({234, 215, 212, 221}, 184), _b51454({214, 226, 227, 248}, 151), _b51454({238, 221, 213, 210, 222, 211, 203}, 188)})
-- 54a0589a81cba971d41693eab13e1ae
toggleRow(_x1x000xxx1, _b51454({53, 10, 16, 22, 2, 15, 16, 77, 45, 2, 14, 6, 55, 2, 4, 16}, 99), _b51454({185, 150, 154, 146, 215, 163, 150, 144, 132}, 247))
toggleRow(_x1x000xxx1, _b51454({170, 149, 143, 137, 157, 144, 143, 210, 184, 149, 143, 136, 157, 146, 159, 153}, 252), _b51454({205, 224, 250, 253, 232, 231, 234, 236}, 137))
-- 1111010100110010101010010100111001111010001000111011100000
toggleRow(_x1x000xxx1, _b51454({71, 120, 98, 100, 112, 125, 98, 63, 66, 121, 126, 102, 67, 126, 125, 116}, 17), _b51454({4, 57, 58, 51, 118, 26, 55, 52, 51, 58}, 86))
-- 0xd0 0x8e 0xcf 0xa3
sliderRow(_x1x000xxx1, _b51454({229, 218, 192, 198, 210, 223, 192, 157, 245, 218, 223, 223}, 179), _b51454({225, 206, 203, 203, 135, 243, 213, 198, 201, 212, 215, 198, 213, 194, 201, 196, 222}, 167), 0, 1, 2)

-- aefe692f9e40d40ba32da0cc496bba02f07dd83b5aefe5e74953ec
section(_x1x000xxx1, _b51454({129, 141, 142, 141, 144, 226, 142, 135, 133, 135, 140, 134}, 194), _b51454({243, 156, 141, 171}, 3))
legendRow(_x1x000xxx1, _b51454({177, 160, 164, 168, 197, 39, 82, 197, 132, 137, 137, 156}, 229), ESPColours.ally)
legendRow(_x1x000xxx1, _b51454({66, 83, 87, 91, 54, 212, 161, 54, 115, 120, 115, 123, 111}, 22), ESPColours.enemy)
-- 001101101111100011101000011110010111010000101110010111011001
legendRow(_x1x000xxx1, _b51454({203, 216, 203, 187, 89, 44, 187, 235, 244, 247, 242, 248, 254}, 155), ESPColours.police)
-- 38b1a22a3bbf05e42830e06ef48648ef51bf6165c543950
legendRow(_x1x000xxx1, _b51454({123, 104, 123, 11, 233, 156, 11, 72, 89, 66, 70, 66, 69, 74, 71}, 43), ESPColours.criminal)
-- 0x41 0x37 0xd9
legendRow(_x1x000xxx1, _b51454({45, 62, 45, 93, 191, 202, 93, 13, 15, 20, 14, 18, 19, 24, 15}, 125), ESPColours.prisoner)
-- 0xea 0x44 0x12 0xcf 0xbd
legendRow(_x1x000xxx1, _b51454({206, 197, 221, 170, 72, 61, 170, 255, 228, 227, 254, 239, 238, 170, 236, 248, 229, 228, 254}, 138), ESPColours.united)
-- 001001010011001000110010000001101110100000
legendRow(_x1x000xxx1, _b51454({221, 214, 206, 185, 91, 46, 185, 240, 235, 246, 247, 185, 245, 252, 254, 240, 246, 247}, 153), ESPColours.iron)

-- b20981467d192d989d30d75b73654c04e18ae3e4ecc789dfd505d7233f
section(_x1x000xxx1, _b51454({148, 150, 154, 146, 133, 150}, 215), _b51454({183, 216, 211, 202}, 71))
-- fc6796437b779db3b3bb021f92f3168660f477aefc5df
toggleRow(_x1x000xxx1, _b51454({130, 189, 167, 161, 181, 184, 167, 250, 157, 186, 178, 142, 187, 187, 185}, 212), _b51454({42, 13, 5, 10, 13, 10, 23, 6, 67, 57, 12, 12, 14}, 99))
sliderRow(_x1x000xxx1, _b51454({50, 13, 23, 17, 5, 8, 23, 74, 34, 43, 50, 41, 13, 10}, 100), _b51454({76, 104, 111, 33, 71, 78, 87}, 1), 0.5, 30, 1)
sliderRow(_x1x000xxx1, _b51454({159, 160, 186, 188, 168, 165, 186, 231, 143, 134, 159, 132, 168, 177}, 201), _b51454({135, 171, 178, 234, 140, 133, 156}, 202), 60, 400, 0)

section(_x1x000xxx1, _b51454({168, 176, 173, 179, 187, 223, 169, 182, 186, 168}, 255), _b51454({196, 171, 184, 159}, 52))
-- 110110100000100001010111010010100101110111110001
toggleRow(_x1x000xxx1, _b51454({114, 77, 87, 81, 69, 72, 87, 10, 106, 75, 98, 75, 67}, 36), _b51454({147, 178, 253, 155, 178, 186}, 221))
-- 101011010001001100111110111000001011000011000111101110
end

-- 0xde 0x5d 0x3e

do
-- 0xa7 0x5e 0x8d 0x60 0xa3
local _0xxx110 = _b51454({217, 219, 194, 209}, 180)
-- 10010110010001101000111110010100001000011000001011000111
section(_0xxx110, _b51454({172, 160, 189, 170}, 239), _b51454({91, 52, 36, 40}, 171))
toggleRow(_0xxx110, _b51454({136, 170, 179, 160, 168, 160, 171, 177, 235, 139, 170, 166, 169, 172, 181}, 197), _b51454({61, 28, 16, 31, 26, 3}, 115))
-- 0x99 0x82 0x35 0x78
toggleRow(_0xxx110, _b51454({86, 116, 109, 126, 118, 126, 117, 111, 53, 72, 107, 126, 126, 127, 94, 117, 122, 121, 119, 126, 127}, 27), _b51454({165, 134, 147, 147, 146, 214, 190, 151, 149, 157}, 246))
-- c5c21f24aa80d735a5c5289ad05aad6a41d247e951ee4760716a3a
sliderRow(_0xxx110, _b51454({17, 51, 42, 57, 49, 57, 50, 40, 114, 15, 44, 57, 57, 56}, 92), _b51454({14, 56, 53, 50, 121, 10, 41, 60, 60, 61}, 89), 16, 500, 0)
toggleRow(_0xxx110, _b51454({3, 33, 56, 43, 35, 43, 32, 58, 96, 4, 59, 35, 62, 11, 32, 47, 44, 34, 43, 42}, 78), _b51454({90, 101, 125, 96, 48, 64, 127, 103, 117, 98}, 16))
-- ef2d015af5c928f8f32cb04931434005eca25ff73717a3230d0552c5ad5a
sliderRow(_0xxx110, _b51454({180, 150, 143, 156, 148, 156, 151, 141, 215, 179, 140, 148, 137, 169, 150, 142, 156, 139}, 249), _b51454({117, 74, 82, 79, 31, 105, 94, 83, 74, 90}, 63), 50, 800, 0)
-- 0xcc 0x0c 0x4f 0xc6
toggleRow(_0xxx110, _b51454({177, 147, 138, 153, 145, 153, 146, 136, 210, 181, 146, 154, 149, 146, 149, 136, 153, 182, 137, 145, 140}, 252), _b51454({181, 146, 154, 149, 146, 149, 136, 153, 220, 182, 137, 145, 140}, 252))
toggleRow(_0xxx110, _b51454({180, 150, 143, 156, 148, 156, 151, 141, 215, 190, 150, 157, 180, 150, 157, 156}, 249), _b51454({125, 85, 94, 26, 119, 85, 94, 95}, 58))

section(_0xxx110, _b51454({138, 128, 133, 139, 132, 152}, 204), _b51454({84, 42, 62}, 182))
toggleRow(_0xxx110, _b51454({241, 211, 202, 217, 209, 217, 210, 200, 146, 250, 208, 197}, 188), _b51454({128, 170, 191}, 198))
sliderRow(_0xxx110, _b51454({95, 125, 100, 119, 127, 119, 124, 102, 60, 84, 126, 107, 65, 98, 119, 119, 118}, 18), _b51454({218, 240, 229, 188, 207, 236, 249, 249, 248}, 156), 10, 500, 0)
-- 8176c79eb96a099a51cb75c129a21b5efbf4ee4c775a4836359
sliderRow(_0xxx110, _b51454({67, 97, 120, 107, 99, 107, 96, 122, 32, 72, 98, 119, 93, 99, 97, 97, 122, 102}, 14), _b51454({28, 34, 32, 32, 59, 39, 33, 42, 60, 60}, 79), 1, 40, 0)
sliderRow(_0xxx110, _b51454({221, 255, 230, 245, 253, 245, 254, 228, 190, 214, 252, 233, 210, 255, 255, 227, 228}, 144), _b51454({64, 109, 109, 113, 118, 34, 79, 119, 110, 118}, 2), 1, 6, 1)

-- 0xf8 0x48 0xbf 0xc2 0xd6
section(_0xxx110, _b51454({166, 187, 183, 177, 162, 176}, 227), _b51454({234, 165, 152}, 8))
toggleRow(_0xxx110, _b51454({14, 44, 53, 38, 46, 38, 45, 55, 109, 16, 51, 49, 42, 45, 55}, 67), _b51454({238, 205, 207, 212, 211, 201}, 189))
-- 0xb7 0xc0 0x38 0x0f
sliderRow(_0xxx110, _b51454({73, 107, 114, 97, 105, 97, 106, 112, 42, 87, 116, 118, 109, 106, 112, 87, 116, 97, 97, 96}, 4), _b51454({76, 111, 109, 118, 113, 107, 63, 76, 111, 122, 122, 123}, 31), 16, 300, 0)
-- 0x6c 0x18 0xc6 0xb2 0x72
toggleRow(_0xxx110, _b51454({231, 197, 220, 207, 199, 207, 196, 222, 132, 232, 223, 196, 196, 211, 194, 197, 218}, 170), _b51454({159, 168, 179, 179, 164, 181, 178, 173}, 221))
-- 36f14a11e00339596a79d0360032bd0
toggleRow(_0xxx110, _b51454({72, 106, 115, 96, 104, 96, 107, 113, 43, 86, 117, 108, 107, 103, 106, 113}, 5), _b51454({7, 36, 61, 58, 54, 59, 32}, 84))
-- 0x2d 0xe5 0x89
toggleRow(_0xxx110, _b51454({123, 89, 64, 83, 91, 83, 88, 66, 24, 119, 88, 66, 95, 119, 112, 125}, 54), _b51454({3, 44, 54, 43, 111, 3, 4, 9}, 66))

section(_0xxx110, _b51454({5, 17, 6, 6, 0, 2, 14}, 67), _b51454({133, 234, 251, 208}, 117))
-- 581195688dcb4ace149941ad08271aadfd9365cb8d28b1ffe0174e11085
toggleRow(_0xxx110, _b51454({196, 230, 255, 236, 228, 236, 231, 253, 167, 207, 251, 236, 236, 234, 232, 228}, 137), _b51454({33, 21, 2, 2, 4, 6, 10}, 103))
-- 0x80 0x1d 0x5c 0x21
sliderRow(_0xxx110, _b51454({240, 210, 203, 216, 208, 216, 211, 201, 147, 251, 207, 216, 216, 222, 220, 208, 238, 205, 216, 216, 217}, 189), _b51454({214, 245, 224, 224, 225}, 133), 10, 400, 0)
sliderRow(_0xxx110, _b51454({148, 182, 175, 188, 180, 188, 183, 173, 247, 159, 171, 188, 188, 186, 184, 180, 138, 188, 183, 170}, 217), _b51454({31, 41, 34, 63, 37, 56, 37, 58, 37, 56, 53}, 76), 0.1, 5, 1)
-- 10010000001101111001011001000
end


-- 0xdc 0x69 0x1f
do
-- 7a6cb9a65a5d3626ebaaa4babb9c38d643ad98b600e568f6dd0bf89
local _1010x1 = _b51454({189, 165, 184, 166, 174}, 202)
-- 10101110110111101110001101
section(_1010x1, _b51454({65, 68, 74, 69, 89, 68, 67, 74}, 13), _b51454({146, 253, 240, 195}, 98))
toggleRow(_1010x1, _b51454({139, 179, 174, 176, 184, 242, 154, 169, 176, 176, 190, 174, 181, 187, 180, 168}, 220), _b51454({19, 32, 57, 57, 55, 39, 60, 50, 61, 33}, 85))
-- 000010111010011001111010111
toggleRow(_1010x1, _b51454({97, 89, 68, 90, 82, 24, 100, 83, 91, 89, 64, 83, 116, 90, 67, 68}, 54), _b51454({226, 213, 221, 223, 198, 213, 144, 242, 220, 197, 194}, 176))
section(_1010x1, _b51454({151, 149, 153, 145, 134, 149}, 212), _b51454({140, 227, 239, 203}, 124))
-- 011001000011100000010100001000000100001101100111010000
toggleRow(_1010x1, _b51454({111, 87, 74, 84, 92, 22, 126, 119, 110, 125, 86, 89, 90, 84, 93, 92}, 56), _b51454({117, 124, 101, 19, 112, 91, 82, 93, 84, 86, 65}, 51))
sliderRow(_1010x1, _b51454({138, 178, 175, 177, 185, 243, 155, 146, 139}, 221), _b51454({220, 213, 204, 186, 204, 251, 246, 239, 255}, 154), 40, 140, 0)
-- 169a213aa2259189208bc8127c89e61260ab
section(_1010x1, _b51454({241, 233, 248, 242, 232, 226, 242}, 161), _b51454({208, 191, 172, 160}, 32))
-- 0xb1 0x8f 0xac 0xb4 0x2c 0xb9
toggleRow(_1010x1, _b51454({209, 233, 244, 234, 226, 168, 193, 244, 231, 240, 239, 242, 255, 195, 232, 231, 228, 234, 227, 226}, 134), _b51454({45, 24, 11, 28, 3, 30, 19, 74, 41, 5, 4, 30, 24, 5, 6}, 106))
sliderRow(_1010x1, _b51454({196, 252, 225, 255, 247, 189, 212, 225, 242, 229, 250, 231, 234}, 147), _b51454({128, 181, 166, 177, 174, 179, 190}, 199), 0, 500, 0)
-- 0x60 0x5e 0x22 0x13
end
-- 0xfd 0xfa 0x54 0x65 0x59
do
local _111x100 = _b51454({94, 66, 79, 87, 75, 92, 93}, 46)
-- cccb4321e547567d0a1a97169fafa40c7ca7d3f235a59a31dc6b1
section(_111x100, _b51454({181, 169, 164, 188, 160, 183, 197, 169, 172, 182, 177}, 229), _b51454({2, 109, 99, 87}, 242))
-- f0e20df869cb3a8cd2be2e6f230b90d8ae8b80b49423f408bf615505
local _01011x01 = new(_b51454({23, 35, 48, 60, 52}, 81), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
-- b9336e1a97d7cbf5c167a91d563b0edfc2b032d63976b23993f
LayoutOrder = #pages[_111x100]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_111x100])
-- 01010000010111101101110001
new(_b51454({73, 85, 80, 117, 111, 104, 80, 125, 101, 115, 105, 104}, 28), {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}, _01011x01)
local function _0110xxx011()
-- 0x71 0x84 0x9e 0x86
for _0x0100xxx, _01010x0 in ipairs(_01011x01:GetChildren()) do
if not _01010x0:IsA(_b51454({176, 172, 169, 140, 150, 145, 169, 132, 156, 138, 144, 145}, 229)) then _01010x0:Destroy() end
-- 0x3d 0xed 0xc7 0x2d 0x33 0x14
end
for _11x01000, _x000000 in ipairs(_1x1x0:GetPlayers()) do
if _x000000 ~= _00xx1xx then
-- 0xd4 0xbd 0x1a 0x68 0x2c 0xc3
local _00x001x00x = getRankFor(_x000000.UserId)
local _1xx101xx0x = _00x001x00x and BADGE_STYLE[_00x001x00x]
-- 0001110110111011011110101110111001110
local _1x00x00 = tPanel(new(_b51454({117, 65, 82, 94, 86}, 51), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15, ZIndex = 33}, _01011x01))
corner(_1x00x00, 7)
-- 0x0c 0xcd 0x13 0x8e 0x0e 0xdb
if _1xx101xx0x then stroke(_1x00x00, _1xx101xx0x.color, 1.6, 0.1)
else stroke(_1x00x00, Theme.strokeSoft, 1, 0.55) end
-- 001000000011111010101011011101010101101001101000011011
local _1001xx = _x000000.Name .. _b51454({213}, 245) .. roleLabel(_x000000)
-- 0x38 0xbb 0xae 0x2e 0xbe 0xd4
if _1xx101xx0x then _1001xx = _1xx101xx0x.emoji .. _b51454({126}, 94) .. _1001xx end
new(_b51454({33, 16, 13, 1, 57, 20, 23, 16, 25}, 117), {Text = _1001xx, Font = Enum.Font.GothamBold,
TextSize = 11, TextColor3 = _1xx101xx0x and _1xx101xx0x.color or espColour(_x000000),
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 0), Size = UDim2.new(0.55, 0, 1, 0),
-- a40117cee189e848735bdc77
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _1x00x00)
-- 00100000100111001101101011000100100010111010101
local _0001100x1 = new(_b51454({159, 174, 179, 191, 137, 190, 191, 191, 164, 165}, 203), {Text = _b51454({155, 145, 148, 147, 154}, 221), Font = Enum.Font.GothamBold,
-- 010011110011010101111010110
TextSize = 9, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.danger,
Size = UDim2.fromOffset(50, 20), Position = UDim2.new(1, -104, 0.5, -10),
-- 0x6d 0x2e 0x90 0x3e
AutoButtonColor = false, ZIndex = 34}, _1x00x00)
-- 010000011000110001010011110110010001
corner(_0001100x1, 5)
tStroke(stroke(_0001100x1, Theme.strokeSoft, 1))
-- 0110101010001010011101110000001110100
_0001100x1.MouseButton1Click:Connect(function() flingPlayer(_x000000) end)
local _01x00xxx1 = new(_b51454({88, 105, 116, 120, 78, 121, 120, 120, 99, 98}, 12), {Text = _b51454({0, 4}, 84), Font = Enum.Font.GothamBold,
-- 0x64 0x4e 0x2b 0xa5
TextSize = 10, BackgroundColor3 = Theme.panel2, TextColor3 = Theme.accent2,
-- 6dbcc85220edfc3d930191ea7dae2ee885ed45cfb4cb2c749
Size = UDim2.fromOffset(42, 20), Position = UDim2.new(1, -50, 0.5, -10),
AutoButtonColor = false, ZIndex = 34}, _1x00x00)
-- 0x9a 0x64 0x09 0x16
corner(_01x00xxx1, 5)
tStroke(stroke(_01x00xxx1, Theme.strokeSoft, 1))
_01x00xxx1.MouseButton1Click:Connect(function()
-- 11100110110111110010110000100111001000010111
local _101x1x1xx = _x000000.Character and _x000000.Character:FindFirstChild(_b51454({114, 79, 87, 91, 84, 85, 83, 94, 104, 85, 85, 78, 106, 91, 72, 78}, 58))
-- 04ad9f1d6c04727fa0fe169593e97b70d4cc3c9
local _x0100x10 = hrp()
if _101x1x1xx and _x0100x10 then
-- 0x8d 0xee 0x43 0xda
_x0100x10.AssemblyLinearVelocity = Vector3.zero
_x0100x10.CFrame = _101x1x1xx.CFrame + Vector3.new(0, 3, 0)
-- 000001010110000100011110110100
_x0100x10.AssemblyLinearVelocity = Vector3.zero
end
-- 0x41 0x5b 0x01
end)
-- 0x20 0xeb 0xc1 0x66
end
end
end
_0110xxx011()
-- 0afa0877a42dae481b5e8a2013817ec9290bd8634f4c85c07
buttonRow(_111x100, _b51454({13, 58, 57, 45, 58, 44, 55, 127, 19, 54, 44, 43}, 95), _b51454({226, 245, 246, 226, 245, 227, 248}, 176), _0110xxx011)
-- 01101110110111010100101010000100010
end

-- 0x69 0xbc 0x03 0xa1 0xc4

-- 0x11 0x47 0x6f 0x29
do
-- 90fc2f9a87b7128e80c9f39bb33ae5a77388588c9a2748f7922e0acb47e
local _x1x1x0111x = _b51454({56, 62, 35, 32, 32}, 76)
section(_x1x1x0111x, _b51454({2, 23, 4, 17, 19, 2}, 86), _b51454({110, 1, 16, 49}, 158))
-- 1100111100100000000100110111000001100111
local _0x0x01xx11 = tPanel2(new(_b51454({189, 137, 154, 150, 158}, 251), {Size = UDim2.new(1, 0, 0, 30),
BackgroundColor3 = Theme.panel2, BackgroundTransparency = 0.15,
-- 1000011010100101010100101001010100000
LayoutOrder = #pages[_x1x1x0111x]:GetChildren(), ZIndex = 33}, pages[_x1x1x0111x]))
-- 0x54 0xed 0xc5
corner(_0x0x01xx11, 8)
-- e4c0cbb94582eafbb6d47b2a51e40e54d3256f92c5879a7db8f3
tStroke(stroke(_0x0x01xx11, Theme.strokeSoft, 1, 0.55))
-- 0x1f 0x2b 0x27 0xe4 0x69 0x56
local _0x111000 = new(_b51454({152, 169, 180, 184, 128, 173, 174, 169, 160}, 204), {Size = UDim2.new(1, -90, 1, 0), Position = UDim2.fromOffset(14, 0),
BackgroundTransparency = 1, Text = _b51454({145, 164, 183, 162, 160, 177, 255, 229, 139, 160, 164, 183, 160, 182, 177}, 197), Font = Enum.Font.GothamBold,
-- 100011110010010010100000000101111001110110010101
TextSize = 11, TextColor3 = Theme.accent2, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _0x0x01xx11)
-- 10011011010101010011000011100001110001
local _0x1xxxx10x = new(_b51454({11, 58, 39, 43, 29, 42, 43, 43, 48, 49}, 95), {Size = UDim2.fromOffset(70, 20),
-- 7625806ca91325ed881a93769d461b6
Position = UDim2.new(1, -78, 0.5, -10), BackgroundColor3 = Theme.panel, Text = _b51454({255, 240, 249, 253, 238}, 188),
-- 0x21 0x0c 0x59
Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = Theme.danger,
-- 0x66 0x36 0xd6 0x34
AutoButtonColor = false, ZIndex = 34}, _0x0x01xx11)
corner(_0x1xxxx10x, 5)
-- 0xd2 0xd6 0x7a 0xa7 0x46 0x80
tStroke(stroke(_0x1xxxx10x, Theme.strokeSoft, 1))
-- adf3570146fec08c984d9e75d2c910fdcabd16
_0x1xxxx10x.MouseButton1Click:Connect(function()
TS.target = nil
-- 0xa7 0xd0 0x35 0xc8
TS.lockedTarget = nil
-- b174d0b5a2049be5bba2d9ded6b
_0x111000.Text = _b51454({131, 182, 165, 176, 178, 163, 237, 247, 153, 178, 182, 165, 178, 164, 163}, 215)
-- 78b5dbe9373f0ee6d0483bfb8f67f3f9e22cf6f
end)
toggleRow(_x1x1x0111x, _b51454({129, 167, 186, 185, 185, 251, 129, 180, 165, 129, 180, 167, 178, 176, 161}, 213), _b51454({179, 134, 151, 199, 147, 136, 199, 179, 134, 149, 128, 130, 147}, 231))
sliderRow(_x1x1x0111x, _b51454({51, 21, 8, 11, 11, 73, 51, 6, 23, 53, 6, 3, 14, 18, 20}, 103), _b51454({44, 29, 0, 28, 28, 7, 14, 6, 29, 79, 61, 14, 11, 6, 26, 28}, 111), 5, 200, 0)

-- ede53e754375001c539efea956c

section(_x1x1x0111x, _b51454({214, 195, 210, 175, 214, 205, 175, 214, 195, 208, 197, 199, 214, 162, 192, 203, 204, 198, 209}, 130), _b51454({211, 189, 153}, 49))
new(_b51454({226, 211, 206, 194, 250, 215, 212, 211, 218}, 182), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
-- 010111111111000111001110
Text = _b51454({31, 29, 10, 28, 28, 79, 4, 10, 22, 79, 24, 7, 6, 3, 10, 79, 7, 0, 25, 10, 29, 6, 1, 8, 79, 14, 79, 31, 3, 14, 22, 10, 29, 79, 27, 0, 79, 29, 26, 1, 79, 27, 7, 10, 79, 14, 12, 27, 6, 0, 1}, 111),
-- 0c604af91490564b830ab98d83318400014ec4ac829614ffa2d9a9809c
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,
-- 648283b5682206fb1ab0bec9a812d23b345460
LayoutOrder = #pages[_x1x1x0111x]:GetChildren(), ZIndex = 33}, pages[_x1x1x0111x])

-- 214ac7e282b2cff58ad41303940ed6af23224b85836a6691c4ee99414
buttonRow(_x1x1x0111x, _b51454({49, 26, 29, 23, 73, 83, 39, 22, 31, 22, 3, 28, 1, 7, 83, 28, 29, 83, 27, 28, 5, 22, 1}, 115), _b51454({16, 27, 28, 22}, 82), function(_x000xx)
-- d409652ec95d1c6b5d916ca9486b3e9814c7accfe961
pendingKeybind = {path = _b51454({157, 168, 185, 139, 160, 167, 173, 186, 231, 189, 172, 165, 172, 185, 166, 187, 189}, 201), raw = true, btn = _x000xx}
-- 6ea90c7203ef90833e7cdad27e20fb6bc01e48bbc6048f
_x000xx.Text = _b51454({252, 254, 233, 255, 255, 110, 12, 42}, 140)
end)
-- 01010110001000001101100100001011001110000111011
buttonRow(_x1x1x0111x, _b51454({25, 50, 53, 63, 97, 123, 19, 46, 54, 43, 123, 52, 53, 123, 51, 52, 45, 62, 41}, 91), _b51454({216, 211, 212, 222}, 154), function(_0xx1x)
pendingKeybind = {path = _b51454({26, 47, 62, 12, 39, 32, 42, 61, 96, 38, 59, 35, 62}, 78), raw = true, btn = _0xx1x}
-- 0x7c 0x46 0xc2
_0xx1x.Text = _b51454({188, 190, 169, 191, 191, 46, 76, 106}, 204)
-- 10010110110010011100111111001001
end)
-- 10011100111111011001100000010110010
buttonRow(_x1x1x0111x, _b51454({211, 248, 255, 245, 171, 177, 222, 227, 243, 248, 229, 177, 254, 255, 177, 249, 254, 231, 244, 227}, 145), _b51454({25, 18, 21, 31}, 91), function(_0x1110)
-- d7ddee5d1d832327f3b9b9028255993a9fd831e04ac21b6cfa2dcdc6d
pendingKeybind = {path = _b51454({129, 180, 165, 151, 188, 187, 177, 166, 251, 186, 167, 183, 188, 161}, 213), raw = true, btn = _0x1110}
_0x1110.Text = _b51454({8, 10, 29, 11, 11, 154, 248, 222}, 120)
end)
-- 01011111000011101110101100100011
buttonRow(_x1x1x0111x, _b51454({216, 243, 244, 254, 160, 186, 201, 234, 255, 249, 238, 251, 238, 255, 186, 245, 244, 186, 242, 245, 236, 255, 232}, 154), _b51454({106, 97, 102, 108}, 40), function(_0xx111)
pendingKeybind = {path = _b51454({29, 40, 57, 11, 32, 39, 45, 58, 103, 58, 57, 44, 42, 61, 40, 61, 44}, 73), raw = true, btn = _0xx111}
_0xx111.Text = _b51454({161, 163, 180, 162, 162, 51, 81, 119}, 209)
-- 0x17 0x39 0x4b 0xa9 0x0a
end)

-- 001000101010001110011110001010010001001011111110000000001
section(_x1x1x0111x, _b51454({72, 65, 66, 66, 65, 89}, 14), _b51454({161, 206, 192, 242}, 81))
toggleRow(_x1x1x0111x, _b51454({177, 151, 138, 137, 137, 203, 163, 138, 137, 137, 138, 146, 177, 132, 151, 130, 128, 145}, 229), _b51454({92, 117, 118, 118, 117, 109, 58, 78, 123, 104, 125, 127, 110}, 26))
sliderRow(_x1x1x0111x, _b51454({66, 100, 121, 122, 122, 56, 80, 121, 122, 122, 121, 97, 69, 102, 115, 115, 114}, 22), _b51454({223, 246, 245, 245, 246, 238, 185, 202, 233, 252, 252, 253}, 153), 10, 300, 0)

local _0101xx11xx = collapsible(_x1x1x0111x, _b51454({202, 215, 207, 210, 162, 199, 204, 197, 203, 204, 199}, 130), true)
toggleRow(_0101xx11xx, _b51454({237, 203, 214, 213, 213, 151, 241, 204, 212, 201}, 185), _b51454({74, 87, 79, 82, 34, 86, 99, 112, 101, 103, 118}, 2))
-- 0x88 0xdd 0xdb 0xcd
toggleRow(_0101xx11xx, _b51454({191, 153, 132, 135, 135, 197, 163, 158, 134, 155, 170, 158, 159, 132, 175, 142, 159, 142, 136, 159}, 235), _b51454({43, 31, 30, 5, 71, 46, 15, 30, 15, 9, 30, 74, 66, 25, 9, 11, 6, 15, 25, 74, 25, 6, 3, 14, 15, 24, 67}, 106))
-- 0x7b 0xb4 0x77 0xda 0x1f
toggleRow(_0101xx11xx, _b51454({146, 180, 169, 170, 170, 232, 142, 179, 171, 182, 128, 167, 170, 170, 150, 180, 169, 178, 163, 165, 178}, 198), _b51454({164, 131, 142, 142, 194, 205, 194, 176, 135, 145, 146, 131, 149, 140, 194, 178, 144, 141, 150, 135, 129, 150, 139, 141, 140}, 226))
-- 0x79 0xd2 0x0b 0x24 0x66 0xf6
toggleRow(_0101xx11xx, _b51454({221, 193, 166, 201, 204}, 136), _b51454({109, 86, 81, 73, 30, 127, 75, 74, 81, 19, 122, 91, 74, 91, 93, 74, 30, 118, 107, 122, 30, 22, 116, 23}, 62))
-- 0cf25df207438ae6fe3cdfab9e8d7a6
sliderRow(_0101xx11xx, _b51454({19, 53, 40, 43, 43, 105, 15, 50, 42, 55, 20, 55, 34, 34, 35}, 71), _b51454({52, 9, 17, 12, 92, 47, 12, 25, 25, 24, 92, 84, 52, 6, 85}, 124), 1, 100, 0)
-- c999baa9a24c0ad9fb51d930f8efe13dc4148
sliderRow(_0101xx11xx, _b51454({109, 75, 86, 85, 85, 23, 113, 76, 84, 73, 120, 84, 73}, 57), _b51454({229, 216, 192, 221, 141, 236, 192, 221, 193, 196, 217, 216, 201, 200}, 173), 0.3, 5, 2)
sliderRow(_0101xx11xx, _b51454({118, 80, 77, 78, 78, 12, 106, 87, 79, 82, 102, 75, 81, 86}, 34), _b51454({103, 64, 85, 90, 80, 20, 118, 81, 92, 93, 90, 80, 20, 112, 93, 71, 64, 85, 90, 87, 81}, 52), 0.8, 5, 2)
-- da97d4fd889f92ac41c01f79a4fcedf2f8ab1508bd837
toggleRow(_0101xx11xx, _b51454({100, 66, 95, 92, 92, 30, 120, 69, 93, 64, 105, 81, 71, 127, 94, 92, 73}, 48), _b51454({109, 85, 67, 20, 123, 90, 88, 77}, 52))
-- 948a32a0262c941e484aa3cd63cc299a7e58115dc6a1978
toggleRow(_0101xx11xx, _b51454({35, 5, 24, 27, 27, 89, 63, 2, 26, 7, 60, 18, 18, 7, 56, 0, 25, 18, 5}, 119), _b51454({188, 139, 195, 141, 130, 143, 135, 131, 206, 161, 153, 128, 139, 156}, 238))
-- 83e655271e728046082c6a3e8d7c52896ab811a06cafe
toggleRow(_0101xx11xx, _b51454({189, 155, 134, 133, 133, 199, 161, 156, 132, 153, 188, 154, 140, 185, 133, 136, 157, 143, 134, 155, 132}, 233), _b51454({198, 224, 246, 179, 195, 255, 242, 231, 245, 252, 225, 254, 192, 231, 242, 253, 247}, 147))
-- 0x81 0x2f 0x8d 0x03
toggleRow(_0101xx11xx, _b51454({9, 47, 50, 49, 49, 115, 21, 40, 48, 45, 18, 43, 56, 47, 47, 52, 57, 56, 27, 49, 36}, 93), _b51454({212, 237, 254, 233, 233, 242, 255, 254, 187, 221, 247, 226}, 155))
-- 0000011101110101110100110111101011010110001011100110111001
toggleRow(_0101xx11xx, _b51454({234, 204, 209, 210, 210, 144, 246, 203, 211, 206, 232, 219, 210, 243, 223, 202, 221, 214}, 190), _b51454({108, 95, 86, 85, 89, 83, 78, 67, 26, 119, 91, 78, 89, 82}, 58))
end

-- bf407527887b570b837172944285ebeaaf3ff931f89b

-- 0111111111111101111010000101100111010100
do
local _01x1x001 = _b51454({128, 129, 156, 153}, 245)
section(_01x1x001, _b51454({9, 29, 28, 7}, 72), _b51454({134, 254, 253}, 100))
-- 0010001010000101110110111111110010
toggleRow(_01x1x001, _b51454({67, 98, 127, 122, 127, 98, 111, 56, 87, 99, 98, 121, 85, 122, 127, 117, 125, 115, 100}, 22), _b51454({63, 11, 10, 17, 94, 61, 18, 23, 29, 21, 27, 12}, 126))
sliderRow(_01x1x001, _b51454({145, 176, 173, 168, 173, 176, 189, 234, 133, 177, 176, 171, 135, 168, 173, 167, 175, 128, 161, 168, 165, 189}, 196), _b51454({35, 12, 9, 3, 11, 64, 36, 5, 12, 1, 25}, 96), 0.01, 1, 2)
-- 7d02f4e879bbfd3641a9a2e75c82adbe4
toggleRow(_01x1x001, _b51454({159, 190, 163, 166, 163, 190, 179, 228, 139, 191, 190, 165, 152, 175, 185, 186, 171, 189, 164}, 202), _b51454({115, 71, 70, 93, 18, 96, 87, 65, 66, 83, 69, 92}, 50))
toggleRow(_01x1x001, _b51454({57, 24, 5, 0, 5, 24, 21, 66, 45, 25, 24, 3, 63, 4, 9, 30, 5, 10, 10}, 108), _b51454({247, 195, 194, 217, 150, 229, 222, 211, 196, 223, 208, 208, 150, 230, 223, 213, 221, 195, 198}, 182))
-- 0xf3 0x4d 0x3e
sliderRow(_01x1x001, _b51454({102, 71, 90, 95, 90, 71, 74, 29, 114, 70, 71, 92, 96, 91, 86, 65, 90, 85, 85, 97, 82, 93, 84, 86}, 51), _b51454({154, 163, 169, 161, 191, 186, 234, 152, 171, 164, 173, 175}, 202), 10, 500, 0)
-- 0xb0 0x54 0x8f 0x5f 0xc0
section(_01x1x001, _b51454({164, 175, 166, 179}, 231), _b51454({199, 168, 165, 155}, 55))
toggleRow(_01x1x001, _b51454({190, 159, 130, 135, 130, 159, 146, 197, 168, 131, 138, 159, 184, 155, 138, 134}, 235), _b51454({53, 30, 23, 2, 86, 37, 6, 23, 27}, 118))
textRow(_01x1x001, _b51454({84, 124, 106, 106, 120, 126, 124}, 25), _b51454({122, 114, 100, 100, 118, 112, 114, 245, 151, 177}, 23), Cfg.Utility.ChatSpamMsg, function(_x00001100) Cfg.Utility.ChatSpamMsg = _x00001100 end)
end


-- 0xea 0xcc 0xb3 0xa2
do
-- 9f5e530c4331f4afaeb8f5eecf9c6
local _x0011xxx = _b51454({88, 74, 93, 78}, 43)
-- e57e2f9ec4b3b3c0f04265631d0ad72a26dadc7569560b2ce75155e
section(_x0011xxx, _b51454({183, 180, 186, 191, 180, 174, 175, 168}, 251), _b51454({22, 121, 116, 88}, 230))
new(_b51454({125, 76, 81, 93, 101, 72, 75, 76, 69}, 41), {Size = UDim2.new(1, 0, 0, 32), BackgroundTransparency = 1,
-- 111001010101111110100000100001101110010
Text = _b51454({193, 199, 178, 168}, 136) .. (IO.has and (_b51454({156, 226, 237, 94}, 126) .. IO.reason) or (_b51454({220, 162, 169, 30}, 62) .. IO.reason)) .. _b51454({85, 15, 51, 62, 60, 58, 101, 127}, 95) .. tostring(game.PlaceId),
-- 110111100111111101111100111010100000010101010101111100110101
Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = IO.has and Theme.success or Theme.danger,
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = #pages[_x0011xxx]:GetChildren(), ZIndex = 33}, pages[_x0011xxx])
local _0x10xx0011 = new(_b51454({51, 2, 31, 19, 43, 6, 5, 2, 11}, 103), {Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1,
Text = autoloadName and (_b51454({224, 154, 135, 34, 99, 119, 118, 109, 110, 109, 99, 102, 56, 34}, 2) .. autoloadName) or _b51454({12, 13, 66, 3, 23, 22, 13, 14, 13, 3, 6}, 98),
Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = Theme.accent2,
-- 0011110110100101101100101111111011101010111010
LayoutOrder = #pages[_x0011xxx]:GetChildren(), ZIndex = 33}, pages[_x0011xxx])

-- 0xf0 0x07 0xc8 0xd1
local _10x100011 = tPanel2(new(_b51454({198, 247, 234, 230, 208, 253, 234}, 146), {Size = UDim2.new(1, 0, 0, 28),
BackgroundColor3 = Theme.panel2, BorderSizePixel = 0, Text = _b51454({}, 0),
Active = true, Selectable = true,
PlaceholderText = _b51454({237, 238, 224, 229, 238, 244, 245, 161, 239, 224, 236, 228, 161, 169, 228, 230, 175, 161, 224, 232, 236, 227, 238, 245, 173, 161, 236, 238, 247, 228, 236, 228, 239, 245, 173, 161, 245, 243, 238, 237, 237, 168}, 129),
-- 0110101100000001011010110110000010101011111010110011011
PlaceholderColor3 = Theme.muted, Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Theme.text, ClearTextOnFocus = false,
-- b1cc2330ebc1620a4d201481908ed07e97412697ff463958fbf7
LayoutOrder = #pages[_x0011xxx]:GetChildren(), ZIndex = 50}, pages[_x0011xxx]))
corner(_10x100011, 7)
-- 1100001010100011101011110001001000
tStroke(stroke(_10x100011, Theme.strokeSoft, 1))

local _0x0x1x0100 = new(_b51454({160, 148, 135, 139, 131}, 230), {Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1,
-- 111101111111000111011000010001010000110010
LayoutOrder = #pages[_x0011xxx]:GetChildren(), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 33}, pages[_x0011xxx])
-- 01011111111011010011100100010010001000
new(_b51454({145, 141, 136, 173, 183, 176, 136, 165, 189, 171, 177, 176}, 196), {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder}, _0x0x1x0100)

local function _x1111x()
-- 6d6acd35767fdb248bbcd3770153877
for _111110x10, _001xxx in ipairs(_0x0x1x0100:GetChildren()) do
if not _001xxx:IsA(_b51454({99, 127, 122, 95, 69, 66, 122, 87, 79, 89, 67, 66}, 54)) then _001xxx:Destroy() end
end
-- 110101101011010110100010110111011110110
local _011010 = listLoadouts()
if #_011010 == 0 then
-- 1011101101100001010101100
local _1x11xx01x = new(_b51454({179, 130, 159, 147, 171, 134, 133, 130, 139}, 231), {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
-- 23509007753ce23c57a9eada7dfbcf47acd4a23441928
Text = _b51454({89, 88, 23, 68, 86, 65, 82, 83, 23, 91, 88, 86, 83, 88, 66, 67, 68, 23, 78, 82, 67, 23, 213, 183, 163, 23, 67, 78, 71, 82, 23, 86, 23, 89, 86, 90, 82, 23, 86, 85, 88, 65, 82, 23, 86, 89, 83, 23, 95, 94, 67, 23, 100, 118, 97, 114}, 55),
Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = Theme.muted,
TextXAlignment = Enum.TextXAlignment.Left,
LayoutOrder = 1, ZIndex = 34}, _0x0x1x0100)
_1x11xx01x.Visible = true
return
-- e380e3df623f6370868c5ced3bb20fe8959f12f7c943da8324ea2204d
end
for _0x1x01x00, _xxx0001x in ipairs(_011010) do
local _0x101001 = (_xxx0001x == autoloadName)
local _1x00x = tPanel(new(_b51454({120, 76, 95, 83, 91}, 62), {Size = UDim2.new(1, 0, 0, 28),
-- 1111101101000000111011101100110001
BackgroundColor3 = Theme.panel, BackgroundTransparency = 0.15,
-- 12d5d6ba3f95c6db7976d44d6886342e5cb1d
LayoutOrder = _0x1x01x00, ZIndex = 33}, _0x0x1x0100))
-- 101101110000010101110011
corner(_1x00x, 7)
tStroke(stroke(_1x00x, _0x101001 and Theme.accent3 or Theme.strokeSoft, _0x101001 and 1.6 or 1, 0.55))
-- 056be9a69ced613aee2519987392e46c396e5556cfa398dc3f9
hoverStripe(_1x00x, Theme.neon)
new(_b51454({38, 23, 10, 6, 62, 19, 16, 23, 30}, 114), {Size = UDim2.new(1, -180, 1, 0), Position = UDim2.fromOffset(12, 0),
BackgroundTransparency = 1,
-- da6feff396b8fe78a2e7ae4985
Text = (_0x101001 and _b51454({250, 128, 157, 56}, 24) or _b51454({}, 0)) .. _xxx0001x,
Font = Enum.Font.GothamBold, TextSize = 10,
-- cfd77d2c14464cb8d048a99067f43ae90c64e8c76e01d
TextColor3 = _0x101001 and Theme.accent2 or Theme.text,
TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 34}, _1x00x)
-- 0110010100110010001011000011100010100101011111
local _xxx10 = new(_b51454({204, 253, 224, 236, 218, 237, 236, 236, 247, 246}, 152), {Size = UDim2.fromOffset(50, 18),
-- 00011110001110110100010100000011110001001
Position = UDim2.new(1, -170, 0.5, -9), BackgroundColor3 = Theme.panel2,
Text = _b51454({158, 157, 147, 150}, 210), Font = Enum.Font.GothamBold, TextSize = 9,
TextColor3 = Theme.success, AutoButtonColor = false, ZIndex = 34}, _1x00x)
-- 0011110001010001111010010101010100
corner(_xxx10, 4); stroke(_xxx10, Theme.strokeSoft, 1)
-- bb34508a262bea33adb0272073f1135edf7
_xxx10.MouseButton1Click:Connect(function()
if loadLoadout(_xxx0001x) then
-- 0xa4 0xc4 0x4f 0x3c 0x43 0x83
for _01x000x1x, _0111xxx101 in pairs(widgets) do
-- 0x74 0xa4 0x3d 0x11 0xfd 0xb2
local _0x1111100 = getPath(Cfg, _01x000x1x)
if _0x1111100 ~= nil then pcall(_0111xxx101.set, _0x1111100, false) end
end
-- 10101000000110001110011111010101110010001001111100111
applyTheme(); applyOpacity(Cfg.UI.MenuOpacity or 0)
-- 00101001100000010000011111111111010011010110110011100000111
notify(_b51454({78, 109, 99, 102, 103, 102}, 2), _xxx0001x, Theme.success, 2.5)
_x1111x()
-- fc808021ae29ff2d3e66dff53bcc76d456eb17659b9341f1c
else
notify(_b51454({87, 116, 122, 127, 59, 125, 122, 114, 119, 126, 127}, 27), _xxx0001x, Theme.danger, 2.5)
end
-- 0xfc 0xba 0x7e 0x02 0x38 0xf6
end)
-- 0x7f 0x9a 0x3a
local _01xxxx = new(_b51454({63, 14, 19, 31, 41, 30, 31, 31, 4, 5}, 107), {Size = UDim2.fromOffset(50, 18),
-- 1010110011011100010011010010000011010001110100110000100000
Position = UDim2.new(1, -116, 0.5, -9), BackgroundColor3 = Theme.panel2,
-- b7842e6973335b7f376967a0edb01b9
Text = _b51454({38, 50, 51, 40}, 103), Font = Enum.Font.GothamBold, TextSize = 9,
-- 00101111111001001010101010001100110100010100111101
TextColor3 = Theme.gold, AutoButtonColor = false, ZIndex = 34}, _1x00x)
-- 0xd8 0x95 0x1f
corner(_01xxxx, 4); stroke(_01xxxx, Theme.strokeSoft, 1)
-- 0x36 0x9c 0x57 0x83 0x7f
_01xxxx.MouseButton1Click:Connect(function()
-- 9869eabe92bfdb039954e6b6aab32cbb1a6b85a86b
autoloadName = _xxx0001x
-- 1110001010111001000000100101110110100
_G.__ReaperAutoload = _xxx0001x
if IO.has then
-- 0xfd 0x27 0x8b
pcall(IO.write, autoloadFile(), _xxx0001x)
pcall(IO.write, globalAutoloadFile(), game.PlaceId .. _b51454({149, 149}, 175) .. _xxx0001x)
-- 000111111001111111011101101
end
-- 0x66 0x28 0xa0
_0x10xx0011.Text = _b51454({116, 14, 19, 182, 247, 227, 226, 249, 250, 249, 247, 242, 172, 182}, 150) .. _xxx0001x
-- 0xcf 0x26 0x24 0x90 0x27
notify(_b51454({220, 232, 233, 242, 241, 242, 252, 249, 189, 238, 248, 233}, 157), _xxx0001x, Theme.success, 2.5)
-- 0xc5 0xf5 0x02 0x20
_x1111x()
-- 0xb9 0xa2 0xfd
end)
local _1x1x010011 = new(_b51454({163, 146, 143, 131, 181, 130, 131, 131, 152, 153}, 247), {Size = UDim2.fromOffset(50, 18),
-- 6f04e897a9dcee5c863779c6daffe1213cd00403a54ae24f57ab73
Position = UDim2.new(1, -62, 0.5, -9), BackgroundColor3 = Theme.panel2,
-- 001111010011011110011001010000111011000010
Text = _b51454({238, 239, 230}, 170), Font = Enum.Font.GothamBold, TextSize = 9,
-- 11101001011110110101100110110111001010111
TextColor3 = Theme.danger, AutoButtonColor = false, ZIndex = 34}, _1x00x)
corner(_1x1x010011, 4); stroke(_1x1x010011, Theme.strokeSoft, 1)
_1x1x010011.MouseButton1Click:Connect(function()
-- 011100100010000001001100010000100100011000001001001101101
deleteLoadout(_xxx0001x)
-- 22a0ad7e2cbfd855be024a0fb2ef7889206439bf72d3
if _0x10xx0011 then _0x10xx0011.Text = autoloadName and (_b51454({201, 179, 174, 11, 74, 94, 95, 68, 71, 68, 74, 79, 17, 11}, 43) .. autoloadName) or _b51454({139, 138, 197, 132, 144, 145, 138, 137, 138, 132, 129}, 229) end
notify(_b51454({63, 30, 23, 30, 15, 30, 31}, 123), _xxx0001x, Theme.muted, 2)
-- 11100100111001100111011111110010000010000000101001001111
_x1111x()
-- 0x4e 0xa1 0x5d 0x6a 0x66
end)
-- 0001000110010100110111001010001010110100011
end
-- 0xcd 0x97 0x09 0xa9 0x1d
end
-- 1100010111011101011010010001100001
_x1111x()

local function _10x0100111()
-- 0xc2 0x34 0x94
return (_10x100011.Text ~= _b51454({}, 0) and _10x100011.Text) or autoloadName or _b51454({197, 196, 199, 192, 212, 205, 213}, 161)
end

buttonRow(_x0011xxx, _b51454({21, 39, 48, 35, 102, 37, 51, 52, 52, 35, 40, 50, 102, 53, 35, 50, 50, 47, 40, 33, 53}, 70), _b51454({0, 18, 5, 22}, 83), function()
-- 0x51 0xa5 0x46 0x09
local _x00000x = _10x0100111()
saveLoadout(_x00000x, false)
-- 010110010110101010101001000011000111100001001110100101011
notify(_b51454({95, 109, 122, 105, 104}, 12), _x00000x, Theme.success)
_x1111x()
-- 1728532575fc4f7ebfdfa0de39f62
end)
buttonRow(_x0011xxx, _b51454({235, 217, 206, 221, 152, 147, 152, 203, 221, 204, 152, 217, 205, 204, 215, 212, 215, 217, 220}, 184), _b51454({250, 232, 255, 236, 137, 130, 137, 232, 252, 253, 230}, 169), function()
local _x00xxx011 = _10x0100111()
saveLoadout(_x00xxx011, true)
_0x10xx0011.Text = _b51454({129, 251, 230, 67, 2, 22, 23, 12, 15, 12, 2, 7, 89, 67}, 99) .. _x00xxx011
-- 0x72 0xeb 0xfe
notify(_b51454({162, 150, 151, 140, 143, 140, 130, 135, 195, 144, 134, 151}, 227), _x00xxx011, Theme.success)
-- 0x4f 0xff 0xb9 0x14
_x1111x()
-- 2aa30ab64b9948de43f622619c82
end)
-- c004cf2ed6e09078babf6fa5ad4b64b89
buttonRow(_x0011xxx, _b51454({56, 15, 6, 5, 11, 14, 74, 6, 3, 25, 30}, 106), _b51454({237, 250, 249, 237, 250, 236, 247}, 191), function() _x1111x() end)
end

-- 011100100101000011111101101100000101110110111001

-- 0x4f 0x1f 0x2c
do
local _000x0x1 = _b51454({16, 12, 1, 9, 1}, 100)
section(_000x0x1, _b51454({164, 181, 184, 177, 160, 160, 177}, 244), _b51454({227, 140, 157, 187}, 19))
-- 001000111001111000001111010010011
buttonRow(_000x0x1, _b51454({204, 231, 237, 236, 162, 210, 247, 240, 242, 238, 231}, 130), _b51454({131, 146, 146, 142, 155}, 194), function()
Theme.setPalette(_b51454({91, 101, 98, 120, 105, 126}, 12)); Cfg.UI.Sakura = false
-- 73a7fbc7439f87d53cd68a4552
applyTheme()
end)
-- 0x1d 0x09 0x92
buttonRow(_000x0x1, _b51454({39, 21, 31, 1, 6, 21}, 116), _b51454({230, 247, 247, 235, 254}, 167), function()
Theme.setPalette(_b51454({70, 116, 126, 96, 103, 116}, 21)); Cfg.UI.Sakura = true
-- 000000001011100010111011001000101011110110011
applyTheme()
-- 11001110000100011100110101010010000111101000101101101
end)
section(_000x0x1, _b51454({103, 100, 100, 103, 97, 118, 113}, 34), _b51454({44, 82, 102}, 206))
-- 001111100110010000100101011101000001010101100
toggleRow(_000x0x1, _b51454({190, 162, 197, 161, 158, 130, 136, 146}, 235), _b51454({188, 131, 159, 149, 143, 214, 179, 144, 144, 147, 149, 130, 133}, 246))
toggleRow(_000x0x1, _b51454({48, 44, 75, 43, 10, 17, 12, 3, 22}, 101), _b51454({41, 8, 19, 14, 1, 14, 4, 6, 19, 14, 8, 9, 20}, 103))
toggleRow(_000x0x1, _b51454({13, 17, 118, 25, 53, 58, 49, 61, 54, 44}, 88), _b51454({11, 39, 40, 35, 47, 36, 62, 106, 26, 43, 56, 62, 35, 41, 38, 47, 57}, 74))
-- 01110111101011111110100001000
toggleRow(_000x0x1, _b51454({64, 92, 59, 84, 123, 124, 120, 116, 97, 112, 113, 90, 101, 112, 123}, 21), _b51454({11, 36, 35, 39, 43, 62, 47, 46, 106, 7, 47, 36, 63}, 74))
-- 93beddb769d16fbe886bed6920fe5b306eb8b77cb
toggleRow(_000x0x1, _b51454({92, 64, 39, 68, 108, 103, 124, 75, 101, 124, 123}, 9), _b51454({251, 213, 204, 203, 153, 251, 216, 218, 210, 222, 203, 214, 204, 215, 221}, 185))
section(_000x0x1, _b51454({154, 146, 153, 130, 247, 152, 135, 150, 148, 158, 131, 142}, 215), _b51454({15, 96, 115, 84}, 255))
sliderRow(_000x0x1, _b51454({145, 141, 234, 137, 161, 170, 177, 139, 180, 165, 167, 173, 176, 189}, 196), _b51454({254, 216, 203, 196, 217, 218, 203, 216, 207, 196, 201, 211}, 170), 0, 0.9, 2, function(_01x100x10) applyOpacity(_01x100x10) end)
end

-- 413c1d0f5debe8ae2b7b4ae7790d0ac9503c1fe8f23

-- 0x9a 0x04 0xe3 0x31 0xe2 0x4e
for _1xx1xx, _0x1x0x in pairs(pages) do _0x1x0x.Visible = false end
-- c6558046bdfcbd46aabc8b49c5b83cbd825
pages.home.Visible = true
tabs.home.BackgroundColor3 = Theme.neon
-- 0x72 0x92 0xfc 0xd8 0x1c 0x1b
tabs.home.TextColor3 = Color3.new(1, 1, 1)
applyTheme()
-- d7de5cec82348b66158578d424d83ca64
applyOpacity(Cfg.UI.MenuOpacity or 0)
-- 010100001010101100011100000000101000111001011010100111001
statusLbl.Text = _b51454({161, 182, 178, 163, 182, 161, 211, 211, 49, 68, 211, 211, 131, 159, 146, 144, 150, 211}, 243) .. tostring(game.PlaceId) ..
-- 9c39b1416927c916013ab6362b024863db6c9b10ae24def79c0d982c3
(DISCORD_USERNAME and (_b51454({210, 210, 48, 69, 210, 210, 178}, 242) .. DISCORD_USERNAME) or _b51454({}, 0))
pcall(refreshHUD)
-- 0x1c 0x8d 0xdf 0xc7
pcall(refreshAD)
rebuildChips()

-- 951a7f363e58237c3239b24e019adcdf36cfd2ac6b11dc226288
task.spawn(function()
-- 0xe2 0x91 0x15 0x51 0x32
local _100x11x1 = false
-- 00001000111010001100001100000011100
local _00xxxx1 = 0
-- 0x16 0x95 0x91 0xea 0xa6
local function _1010100(_x1x0xx00, _0xxx0)
-- 01100100110101101011000111111110110011101000
if _100x11x1 then return end
-- 0x6b 0x11 0x97 0x94 0xba
_100x11x1 = true
_00x110x1()
-- d0b6036dfb24fc1437a65697a7ad6789cfb555c391063e3f04377b
notify(_b51454({172, 159, 136, 147, 156, 147, 153, 155, 142, 147, 149, 148, 218, 150, 149, 137, 142}, 250), _x1x0xx00 or _b51454({76, 123, 51, 104, 123, 108, 119, 120, 103, 62, 106, 113, 62, 125, 113, 112, 106, 119, 112, 107, 123, 48}, 30),
-- cfdab42c53a5ed7b76d1a93304836cf846b56d99b3
Theme.danger, 8)
-- 00111100001101100110101111111000101101010110110111110111
if _0xxx0 then
-- 516eac4555006379bf7c493b2ad7bfba94
task.delay(2, function()
-- 0xe7 0x25 0xe2 0x2a 0x19
pcall(function()
_00xx1xx:Kick(_b51454({223, 233, 243, 166, 226, 227, 231, 243, 242, 238, 233, 244, 239, 252, 227, 226, 166, 242, 238, 227, 166, 212, 195, 199, 214, 195, 212, 166, 231, 246, 246, 168, 166, 212, 227, 236, 233, 239, 232, 166, 242, 238, 227, 166, 225, 231, 235, 227, 166, 242, 233, 166, 244, 227, 171, 240, 227, 244, 239, 224, 255, 168}, 134))
-- 0xfd 0x0f 0x7d
end)
-- 7475041b2646b630aeb0295e25dd86ed520ce69415
end)
-- 011001010000110110101111100001111010101111000011111011000011
end
-- 0111010100010110111111000001100000101110110
task.spawn(function()
local _x0101 = showKeyPrompt()
-- 0x9b 0x9a 0x4b 0x27 0x6e 0x51
if _x0101 then
-- 16620803498fd21663eb280e8228b4a
MY_USER = _x0101
-- 0x5b 0xcb 0x2f 0x7d 0x3e
MY_USER.country = _b51454({23, 44, 41, 44, 45, 53, 44}, 66); MY_USER.countryCode = _b51454({}, 0)
MY_USER.connectedAt = tick(); MY_USER.userId = _00xx1xx.UserId
SESSION_KEY = _x0101.key
DISCORD_USERNAME = _x0101.discordName
-- 01010100001100111100101101010100110000101110111111111011010
DISCORD_ID = _x0101.discordId
-- 111010010101101010001010101010100001001011110001001110
_01x0010xx0({
-- 0x73 0xce 0x4e
key = _x0101.key, robloxId = tostring(_00xx1xx.UserId),
discordUsername = _x0101.discordName,
-- 0x71 0xa5 0x61 0xac 0xd3 0x00
[_b51454({229, 232, 242, 226, 238, 243, 229, 200, 229}, 129)] = _x0101.discordId,
-- 0x7a 0x39 0x44 0xfc
savedAt = os.time(),
})
showVerifiedScreen(_x0101)
-- 0xfd 0xe2 0x66 0x1b
if statusLbl then
statusLbl.Text = _b51454({203, 220, 216, 201, 220, 203, 185, 185, 91, 46, 185, 185, 233, 245, 248, 250, 252, 185}, 153) .. tostring(game.PlaceId) ..
(DISCORD_USERNAME and (_b51454({206, 206, 44, 89, 206, 206, 174}, 238) .. DISCORD_USERNAME) or _b51454({}, 0))
-- 436f4044a5c79026220fb5229260fd0ada9ed47eb3293c16a639dcb41
end
-- 0x84 0x68 0x26
end
-- 0x76 0x33 0xa2 0xf7 0x3f 0xcb
_100x11x1 = false
-- 725e59ce003b2eefa4c53d9a7dc2e7661
end)
end
while gui and gui.Parent do
-- 101010100101100011011111111000010011110101111011001000110100
task.wait(60)
_00xxxx1 = _00xxxx1 + 1
-- 00101111100111011101111001100110010000000
if not SESSION_KEY or _100x11x1 then continue end
if _00xxxx1 % 5 == 0 then
-- 1000000011111001011001010000001010101000010111010111101010
local _x010x000 = postJSON(_b51454({121, 53, 62, 51, 53, 61, 123, 34, 57, 61, 51, 56}, 86),
{robloxId = tostring(_00xx1xx.UserId), key = SESSION_KEY})
if _x010x000 and _x010x000.authorized == false then
-- 8c13bc59c37c02b68a77eb3c34af0085cae3f2c813c
_1010100(_b51454({135, 177, 171, 254, 172, 187, 179, 177, 168, 187, 186, 254, 170, 182, 187, 254, 191, 174, 174, 254, 60, 94, 74, 254, 172, 187, 243, 168, 187, 172, 183, 184, 167, 254, 170, 177, 254, 189, 177, 176, 170, 183, 176, 171, 187, 240}, 222), true)
continue
-- 0x3c 0xd3 0xcc 0x31 0xbb
end
-- 0xf0 0xf8 0x7f 0xcc 0xe2
end
-- 1058a5383e869b49673e5dc27
local _01000xx = postJSON(_b51454({145, 221, 214, 219, 221, 213}, 190), {robloxId = tostring(_00xx1xx.UserId), key = SESSION_KEY})
-- 36ce86f5b639ca81d25a0b2a7a9
if _01000xx and not _01000xx.valid then
_1010100(_b51454({205, 251, 225, 180, 248, 241, 242, 224, 180, 224, 252, 241, 180, 208, 253, 231, 247, 251, 230, 240, 180, 118, 20, 0, 180, 230, 241, 185, 226, 241, 230, 253, 242, 237, 180, 224, 251, 180, 247, 251, 250, 224, 253, 250, 225, 241, 186}, 148))
-- abd74292cf6e01c8e6e6593d6664450e24d4206a3266e2be6ffbc
end
end
-- 0xd6 0x62 0xb0
end)

-- 0x9e 0x87 0xd6

-- 431da494bdb5e6b60b35b08941f3fc1cdbf
task.spawn(function()
local _101xx10x01 = 0
-- 1101010111100101011110101001001100000111101111
while gui and gui.Parent do
task.wait(6)
-- 11000011101101000100000101110010110011001011
local _xxxx1x, _0100xx = httpGet(KEY_API .. _b51454({23, 89, 86, 86, 87, 77, 86, 91, 93, 23, 94, 93, 76, 91, 80, 7, 75, 81, 86, 91, 93, 5}, 56) .. _101xx10x01 .. _b51454({244, 190, 187, 191, 187, 166, 239, 224, 226}, 210))
-- 1adab49219104b56c5b668ae93112b5cbf18dc
if _xxxx1x and _0100xx then
local _1101100, _x01xx10 = pcall(function() return _x0011x1111:JSONDecode(_0100xx) end)
if _1101100 and type(data) == _b51454({168, 189, 190, 176, 185}, 220) and data.announcements then
-- 0x75 0xb1 0x9d 0x79 0x4d
for _x0000, _011xx0x01 in ipairs(_x01xx10.announcements) do
if _011xx0x01.id and _011xx0x01.id > _101xx10x01 then _101xx10x01 = _011xx0x01.id end
-- 010111001110001010010110011011111000101100101101
if tostring(_011xx0x01.userId) ~= tostring(_00xx1xx.UserId) then
-- 00f31288639153bab12d08a36f902c5f4e50f81526
showAnnouncement(_011xx0x01)
-- 1011000011110011100011111110100111101
end
-- 0xbb 0x7c 0x44 0xc9 0xe2 0x03
end
end
end
end
-- 000101111010111100010011111111001110010
end)


task.spawn(function()
-- 588ea1edf4cd96fbecb5818d84f0b8ee34fdff0d299a6a54980f258d7ab3
while crossGui.Parent do
_0011x1x.RenderStepped:Wait()
-- f132941acb23b2ccf429b8e539e9f1499ff3748e625c
local _x0011xx10 = Cfg.Troll.TapTarget and Cfg.UI.Crosshair
if Cfg.UI.HideCrossOnMenu and menu and menu.Visible then _x0011xx10 = false end
if not _x0011xx10 then
crosshair.Visible, reticle.Visible, trackLine.Visible = false, false, false
-- 0xf2 0x16 0xa4 0x6a 0x61 0xeb
else
crosshair.Visible = true
local _0xx0x110 = _1x0x1x:GetMouseLocation()
-- dcad6afd68ed03e92f4e5b90ac0f3aa31553087c9
crosshair.Position = UDim2.fromOffset(_0xx0x110.X, _0xx0x110.Y)
crosshair.Size = UDim2.fromOffset(Cfg.UI.CrosshairSize, Cfg.UI.CrosshairSize)
for _x110000x, _1xx01xxx in ipairs(crosshair:GetChildren()) do
-- 0xc2 0x8d 0x2b
if _1xx01xxx:IsA(_b51454({84, 96, 115, 127, 119}, 18)) and _1xx01xxx ~= crosshair then _1xx01xxx:Destroy() end
-- 039ec4ea1e35e9a1be83257561451d6eead39184f198f6c5b264bd
end
-- b87cbdc0a07398bf32971e183977e81b4a73bde98f867800ce
local _111x0, _11xx1 = Cfg.UI.CrosshairSize, Cfg.UI.CrosshairThick
local _10011x11 = math.max(6, math.floor(_111x0 * 0.32))
-- 0x1e 0xb0 0xac 0x93 0xc5 0x30
local _0xxx1xx00 = math.max(2, math.floor(_111x0 * 0.15))
for _1x0x1011, _01x0x10x01 in ipairs({
{Vector2.new(0, -(_0xxx1xx00 + _10011x11/2)), Vector2.new(_11xx1, _10011x11)},
{Vector2.new(0, (_0xxx1xx00 + _10011x11/2)), Vector2.new(_11xx1, _10011x11)},
-- 11011101110101101100100101100000011101011101000
{Vector2.new(-(_0xxx1xx00 + _10011x11/2), 0), Vector2.new(_10011x11, _11xx1)},
-- 1111000010001110110010111010010111010001
{Vector2.new((_0xxx1xx00 + _10011x11/2), 0), Vector2.new(_10011x11, _11xx1)},
-- 00010000111000111000110111011011100110101
}) do
-- 00111100101001101001101001001010111000110001011010
local _x10x0100 = new(_b51454({207, 251, 232, 228, 236}, 137), {Size = UDim2.fromOffset(_01x0x10x01[2].X, _01x0x10x01[2].Y),
Position = UDim2.new(0.5, _01x0x10x01[1].X, 0.5, _01x0x10x01[1].Y),
AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = Theme.neon,
-- 01010110010000000000000011101011
BackgroundTransparency = 0.15, BorderSizePixel = 0, ZIndex = 5}, crosshair)
-- 0x5b 0x05 0xef 0x41 0x75 0x91
corner(_x10x0100, 1)
-- 0xf4 0x7d 0x4e 0x04 0x71 0x3a
end
-- 4d41482831fa94224eb5e7a1c53f075aef1eff504
local _011000x000 = _x00x1:ViewportPointToRay(_0xx0x110.X, _0xx0x110.Y)
local _1x111x1x01 = RaycastParams.new()
-- 0xb8 0xd1 0xe7
_1x111x1x01.FilterType = Enum.RaycastFilterType.Exclude
-- 18069ecd4dadfebd9fe2d8e6e57cc6a9b5985b04800a9a1c0
_1x111x1x01.FilterDescendantsInstances = {_00xx1xx.Character}
local _x1x1101 = workspace:Raycast(_011000x000.Origin, _011000x000.Direction * 3000, _1x111x1x01)
local _0x1101x111 = nil
-- 6d414e8ba3f003467ed91a89fc5e2c2ff
if _x1x1101 and _x1x1101.Instance then
local _x11xx01100 = _x1x1101.Instance:FindFirstAncestorOfClass(_b51454({32, 2, 9, 8, 1}, 109))
-- 011101110111000001011010000001100001001000001111001001000101
if _x11xx01100 then
-- dca3e2314042604e0dab907928d
local _10x0x01x1 = _1x1x0:GetPlayerFromCharacter(_x11xx01100)
if _10x0x01x1 and _10x0x01x1 ~= _00xx1xx then _0x1101x111 = _10x0x01x1 end
-- 110100110111011000010001001110001100000110100011011
end
end
-- 001111101111110010011000111010111
if not _0x1101x111 then
-- 1011001111001111100100011001110110011110011110101001010000
local _00101x100, _01xx001 = nil, Cfg.Troll.TapRadius
-- d5b2fb5e4f1b4f0764689f9999f6ef622ec6
for _1x111, _10x110xxx in ipairs(_1x1x0:GetPlayers()) do
if _10x110xxx ~= _00xx1xx and _10x110xxx.Character then
local _x01x111110 = _10x110xxx.Character:FindFirstChild(_b51454({49, 28, 24, 29}, 121))
-- b1f143aa0aedec857c7b1e3d64757aa2d09ac
if _x01x111110 then
local _1010x, _xx11x10110 = _x00x1:WorldToViewportPoint(_x01x111110.Position)
-- 111100001010000110001110000001110100001011111100011110
if _xx11x10110 and _1010x.Z > 0 then
local _1110x0x = (Vector2.new(_1010x.X, _1010x.Y) - _0xx0x110.Magnitude
-- 00111000010011000011000000010001110
if _1110x0x <= _01xx001 then _00101x100, _01xx001 = _10x110xxx, _1110x0x end
-- ec066cc5cb28e3c5e0a80ae8437a1e025366071
end
end
end
end
_0x1101x111 = _00101x100
end
TS.hovered = _0x1101x111
if _0x1101x111 and _0x1101x111.Character then
local _00x0x = _0x1101x111.Character:FindFirstChild(_b51454({248, 213, 209, 212}, 176))
-- 0x9a 0xc6 0x97
local _xx1xx1100 = _0x1101x111.Character:FindFirstChildOfClass(_b51454({3, 62, 38, 42, 37, 36, 34, 47}, 75))
-- 11101001101000110111101100001
if _00x0x and _xx1xx1100 then
-- e8ab13bafb9fa1d537510ae43b52febdbfef21e74d16b034142ed44d3
local _xxx000111x, _11x10110x0 = _x00x1:WorldToViewportPoint(_00x0x.Position)
if _11x10110x0 and _xxx000111x.Z > 0 then
-- 2dbe0e1f20148559883c7bc5b253b070ff0c1dd08
local _0x1100 = reticleColour(_0x1101x111)
-- 101010011001111110011010
reticle.Visible = true
local _11x1010 = Cfg.UI.CrosshairPulse and (0.96 + math.sin(tick() * 7) * 0.06) or 1
-- 0xb1 0x6b 0xf2 0x3a 0x2d
local _10xx00 = RSIZE * _11x1010
reticle.Position = UDim2.fromOffset(_xxx000111x.X, _xxx000111x.Y)
-- 00011001010100111010110110011001111110111110001100010011
reticle.Size = UDim2.fromOffset(_10xx00, _10xx00)
-- 0x33 0x8f 0xbd
local _0111x00 = _10xx00 / RSIZE
-- 9e4db5a28f4aa8fba240794a33f98c161f
ring1.Size = UDim2.fromOffset(_10xx00, _10xx00)
-- 1001001100110011001000011011001011001000101001100111010010
ring2.Size = UDim2.fromOffset(_10xx00 - 14 * _0111x00, _10xx00 - 14 * _0111x00)
ring2.Position = UDim2.fromOffset(7 * _0111x00, 7 * _0111x00)
ring1S.Color, ring2S.Color = _0x1100, _0x1100
retName.TextColor3 = _0x1100
retName.Text = (_0x1101x111.DisplayName or _0x1101x111.Name) .. _b51454({232}, 200) .. roleLabel(_0x1101x111)
local _10101110 = (_x00x1.CFrame.Position - _00x0x.Position.Magnitude
retDist.Text = string.format(_b51454({140, 226, 248, 78, 75, 10, 78, 29, 26, 27, 10, 29}, 110), math.floor(_10101110))
if Cfg.UI.ReticleHP and _xx1xx1100 then
hpBar.Visible = true
-- 2befe0ac2a4114ff829d6a589f219e3e842b58ac2c121a917d5f1b8bc
local _0101001 = math.clamp(_xx1xx1100.Health / _xx1xx1100.MaxHealth, 0, 1)
hpFill.Size = UDim2.fromScale(1, _0101001)
hpFill.Position = UDim2.fromScale(0, 1 - _0101001)
-- 63087ea4532df19788af4d109f3d9fb54b88e17ce8e4e4fb92ba99d1e
hpFill.BackgroundColor3 = _0101001 > 0.5 and Theme.success or (_0101001 > 0.25 and Theme.gold or Theme.danger)
else hpBar.Visible = false end
-- 00100101001111000100000011001110111011111001101010
if Cfg.UI.ReticleLine then
-- 0x7a 0xdb 0x03 0x31 0xf0
local _0xx0111x, _0x01111x11 = _xxx000111x.X - _0xx0x110.X, _xxx000111x.Y - _0xx0x110.Y
local _000x1x1x01 = math.sqrt(_0xx0111x * _0xx0111x + _0x01111x11 * _0x01111x11)
if _000x1x1x01 > 25 then
-- 1010001101000000010001010010010110010
trackLine.Visible = true
trackLine.Position = UDim2.fromOffset(_0xx0x110.X, _0xx0x110.Y)
trackLine.Size = UDim2.fromOffset(_000x1x1x01, 1)
trackLine.Rotation = math.deg(math.atan2(_0x01111x11, _0xx0111x))
trackLine.BackgroundColor3 = _0x1100
else trackLine.Visible = false end
else trackLine.Visible = false end
-- 41ccd0876a10a3a75dc1031533999c3d4d2ff846b04a050a6a4a
else
reticle.Visible, trackLine.Visible = false, false
end
end
-- 8ed7faf31aa1f948b9f2ed622436bbf910bcd4d023bcf54bd67fa6b53118
else
-- 0x38 0xb3 0xed 0xdb
reticle.Visible, trackLine.Visible = false, false
-- 00100000100010111111101001000111000
end
-- b4cb578ffb61f1036085739b
end
end
-- 58a29b5b2ff80c07e460c210acbdb32d53e
end)

_0011x1x.RenderStepped:Connect(function(_0xx0x1x1)
pcall(function()
-- 000010010100000000011010010001110011101100110100
local _x0xx1 = RA.spectateTarget
-- 00001111100000011110110110101111001011111001001
if _x0xx1 and (not _x0xx1.Parent or not _x0xx1.Character) then
RA.spectateTarget = nil
-- 741cb665b9829e272b3fb1dcf63f54219f
_x00x1.CameraType = Enum.CameraType.Custom
RA.spectateZoom = 1
return
-- 011011010011110110100000011010100011011101110110000
end
-- 0x8b 0x42 0xd9 0x7a 0x7f
if _x0xx1 and _x0xx1.Character and not Cfg.Movement.Freecam then
local _1010x1x = _x0xx1.Character:FindFirstChild(_b51454({9, 52, 44, 32, 47, 46, 40, 37, 19, 46, 46, 53, 17, 32, 51, 53}, 65))
if _1010x1x then
-- 01111100100110001101111011100001100111000110000001010
_x00x1.CameraType = Enum.CameraType.Scriptable
-- f5eb2bc3f11e376c426e10ab44613cb3f1
local _0110000x1 = 8 * RA.spectateZoom
local _xxx00 = _1010x1x.Position + _1010x1x.CFrame.LookVector * -_0110000x1 + Vector3.new(0, 3 * RA.spectateZoom, 0)
_x00x1.CFrame = _x00x1.CFrame:Lerp(CFrame.new(_xxx00, _1010x1x.Position + _1010x1x.CFrame.LookVector), math.clamp(_0xx0x1x1 * 6, 0, 1))
end
-- cb83303b03a2daf65d13c1ec14d51de3a3c1611a
elseif _x00x1.CameraType == Enum.CameraType.Scriptable and not Cfg.Movement.Freecam then
-- 1100101101111110110001111000101
_x00x1.CameraType = Enum.CameraType.Custom
end
-- a65056d135c1b8a5c15e9b27b53c25
end)
-- 11000001110011100000010101101101111010110
end)

-- 11001011111100010010110010011

aiming = false
-- 0000001001001110000100101110101001000110
aimToggled = false
lastMenuToggle = 0
-- 1101011101010011000100000001010010111
function tbFocused()
local _010110x, _xxx1110 = pcall(function() return _1x0x1x:GetFocusedTextBox() end)
return _010110x and _xxx1110 ~= nil
-- 0x1b 0x4b 0x9c 0xe5 0x74 0xc6
end

-- 41e09ee5cd3135e009938724e0f9fbfe56614333a3d14f5bf5674

-- 00001101010110000011100011111110110001001001100101101110
function getHoveredPlayer()
local _xxxxxx01 = _1x0x1x:GetMouseLocation()
-- 000010100100100000011101010011100010001010011010111
local _0xx000 = _x00x1:ViewportPointToRay(_xxxxxx01.X, _xxxxxx01.Y)
local _1xxx1x = RaycastParams.new()
_1xxx1x.FilterType = Enum.RaycastFilterType.Exclude
-- 1010110111101100110011110111010010100001010010
_1xxx1x.FilterDescendantsInstances = {_00xx1xx.Character}
-- 0000000001101001010001101010011111000011111011010100
local _100x100010 = workspace:Raycast(_0xx000.Origin, _0xx000.Direction * 3000, _1xxx1x)
-- 110000011100011100110101111001010110110010100
if _100x100010 and _100x100010.Instance then
-- 0x0f 0x3a 0x04
local _x01x00x = _100x100010.Instance:FindFirstAncestorOfClass(_b51454({47, 13, 6, 7, 14}, 98))
if _x01x00x then
-- 246fbc314189d28474000e8bb98b068028f858e
local _00xxx0x1 = _1x1x0:GetPlayerFromCharacter(_x01x00x)
-- 010101000010010011110110010111
if _00xxx0x1 and _00xxx0x1 ~= _00xx1xx then return _00xxx0x1 end
end
end
-- 000100001001001111010011001001001110110001
local _xx101x011x, _0x0x1 = nil, 40
for _xxx1100x1, _0x1x01 in ipairs(_1x1x0:GetPlayers()) do
-- 79400388835bdf892d8a6cb9672b709468c5dfd29a609f7824136a45e0
if _0x1x01 ~= _00xx1xx and _0x1x01.Character then
-- 50002679fbecf0aca8fca6dd6960387afbda0d00ea007b4300cd7
local _x00x1x00 = _0x1x01.Character:FindFirstChild(_b51454({20, 57, 61, 56}, 92))
-- 11111000011001110000011110100110101100001101
if _x00x1x00 then
local _xx01101100, _001x01x1xx = _x00x1:WorldToViewportPoint(_x00x1x00.Position)
if _001x01x1xx and _xx01101100.Z > 0 then
-- 0x04 0xdc 0xb1 0x2d
local _110xxxxx = (Vector2.new(_xx01101100.X, _xx01101100.Y) - _xxxxxx01.Magnitude
-- 001011000101010101001011010111011
if _110xxxxx <= _0x0x1 then _xx101x011x, _0x0x1 = _0x1x01, _110xxxxx end
-- 5b2a9a15cd56a73b1c3133c2220c5466ca8ce29b91
end
-- 1100101101111011011001110110011101000010111001
end
end
-- 101001110101110100001000010
end
-- 0x19 0xcb 0xd7 0x64 0xb5 0x5b
return _xx101x011x
end

-- 1001110101111101110000000010100111110
_1x0x1x.InputBegan:Connect(function(_001111xx10, _011x0x011)
-- 0xed 0xd6 0xa5 0xeb 0x7d
if pendingKeybind then
-- ea20fed70924e8c81a0585f33a141d9802193
local _x1x1001 = pendingKeybind.path
local _x0xx0xx = pendingKeybind.raw
-- 1271ebefe83a8eb83a99dfb7
local _x0001xx11 = nil
if _001111xx10.UserInputType == Enum.UserInputType.Keyboard then
-- 0101000100011101111000010
if _001111xx10.KeyCode == Enum.KeyCode.Escape then pendingKeybind = nil; return end
-- 0x56 0x1a 0x29
_x0001xx11 = _001111xx10.KeyCode
-- 000001111101101100010111001001101111111111011100100110001100
elseif _001111xx10.UserInputType == Enum.UserInputType.MouseButton1
-- b878bb83135d0a70e339a9eb576d9e7641395ad26
or _001111xx10.UserInputType == Enum.UserInputType.MouseButton2
or _001111xx10.UserInputType == Enum.UserInputType.MouseButton3 then
-- 01011011100001110101101110010110001011000
_x0001xx11 = _001111xx10.UserInputType
end
if _x0001xx11 then
if _x0xx0xx then setPath(Cfg, _x1x1001, _x0001xx11)
-- 01000001000110111000101101110100110110101100000000001
else Cfg.Binds[_x1x1001] = _x0001xx11 end
-- 0x11 0x6c 0xfc 0x6f 0x97
if pendingKeybind and pendingKeybind.btn then pendingKeybind.btn.Text = _x0001xx11.Name end
-- 010001100001100000101010111111011111010110110000000
pendingKeybind = nil
-- 0x2d 0x6f 0xed 0x19 0xd4
pcall(refreshHUD)
end
-- 0xed 0xf6 0x30 0xc9 0xa0 0xb2
return
-- 63ef844817b7cd99cf1f9e12140592b87a0a326649e3517
end
-- 8710094c32162fc4405bfef90d75f37df0
if _001111xx10.UserInputType == Enum.UserInputType.Keyboard and not tbFocused() then
if Cfg.UI.MenuKey and _001111xx10.KeyCode == Cfg.UI.MenuKey then
local _0x10101 = tick()
-- 0x7a 0x53 0xd8 0xda
if _0x10101 - lastMenuToggle < 0.3 then return end
lastMenuToggle = _0x10101
-- 100111001011111000001010000011011001010111
if menu.Visible then closeMenu() else openMenu() end
-- 278f0fa86e5ca29543f70ba1653dcbbf962247589185a1036670e99cb0fd
return
end
if Cfg.UI.HUDKey and _001111xx10.KeyCode == Cfg.UI.HUDKey then
Cfg.UI.HUD = not Cfg.UI.HUD; pcall(refreshHUD); return
-- 0xdd 0xb9 0xe8 0x69 0x00 0x67
end
if Cfg.UI.ADKey and _001111xx10.KeyCode == Cfg.UI.ADKey then
-- 1101001001111010010110000110011111011001011011100110111
Cfg.UI.AD = not Cfg.UI.AD; pcall(refreshAD); return
-- 110011111111010000011010000100011111110010001010110110
end
-- 00010111001110101111011111101011100000011000
if RA.keys.teleport and _001111xx10.KeyCode == RA.keys.teleport then runAction(_b51454({127, 110, 103, 110, 123, 100, 121, 127}, 11)); return end
if RA.keys.spectate and _001111xx10.KeyCode == RA.keys.spectate then runAction(_b51454({159, 156, 137, 143, 152, 141, 152, 137}, 236)); return end
if RA.keys.hump and _001111xx10.KeyCode == RA.keys.hump and Cfg.Troll.Hump then runAction(_b51454({184, 165, 189, 160}, 208)); return end


-- 1000011010000101110010010101000111011011001100101011100
local _x1011x = Cfg.TapBinds or {}
-- 23684e147579c1496b659ce8169e
if (_x1011x.teleport and _001111xx10.KeyCode == _x1011x.teleport) or
(_x1011x.hump and _001111xx10.KeyCode == _x1011x.hump) or
-- 0x18 0x88 0x49
(_x1011x.orbit and _001111xx10.KeyCode == _x1011x.orbit) or
-- 111101000010101100000100110010101100011110
(_x1011x.spectate and _001111xx10.KeyCode == _x1011x.spectate) then
local _1x1110 = getHoveredPlayer()
-- 6d9144481ce0f85bd4595fc3668482c92c04ae3ced6ec868b11
if not _1x1110 or not _1x1110.Character then
-- 06aff945545d27a5591d4c577fc47e
return 
-- 487f5c15c7fff045e03882599978
end
-- bbccd6cdb363dcd9741d5b5dd36733ea974267404eec9f36cfa
TS.hovered = _1x1110
if _x1011x.teleport and _001111xx10.KeyCode == _x1011x.teleport then
runAction(_b51454({144, 129, 136, 129, 148, 139, 150, 144}, 228))
elseif _x1011x.hump and _001111xx10.KeyCode == _x1011x.hump then
-- 768d6f865def79ecd22061f2b41dd9d54e5b3fe69c
runAction(_b51454({207, 210, 202, 215}, 167))
-- 0x74 0x42 0x1c 0x65 0x9d 0x6a
elseif _x1011x.orbit and _001111xx10.KeyCode == _x1011x.orbit then
runAction(_b51454({234, 247, 231, 236, 241}, 133))
elseif _x1011x.spectate and _001111xx10.KeyCode == _x1011x.spectate then
runAction(_b51454({37, 38, 51, 53, 34, 55, 34, 51}, 86))
end
-- 9434ebf7f6d7197b4f178f15b2a62537
return
end
end
if _011x0x011 then return end
-- 0x88 0x8a 0x64 0x39 0x47 0x50
if _001111xx10.UserInputType == Enum.UserInputType.MouseButton2 and Cfg.Aimbot.Enabled and not tbFocused() then
-- 0xe2 0xbe 0xaa 0x0b 0x26
if Cfg.Aimbot.ToggleMode then aimToggled = not aimToggled else aiming = true end
return
-- 29eb27047d36794a609291e227ef88bd9cf0
end
-- 11111010011101001000110101001010011001011011011111010
if _001111xx10.UserInputType == Enum.UserInputType.MouseButton1 and Cfg.Troll.TapTarget and not tbFocused() then
-- 0x72 0x26 0x92 0x88 0xf4 0x04
local _1x0xx0x001 = TS.hovered
if _1x0xx0x001 then
TS.target = _1x0xx0x001
-- 934d64efe91f8bb435356286effa405974e11cb923df351cd6f580b02d
TS.lockedTarget = _1x0xx0x001
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
HUMP.lockTimer = 1.0; HUMP.awaitingRespawn = false
-- 11001101110100010000010111101001100100011100000011111
HUMP.fallHold = 0; HUMP.speedMult = 1.0; HUMP.ampMult = 1.0; HUMP.distMult = 1.0
-- 62b6889a7367a996171d1769a4ce7202f
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
-- 106cc1c13054ab025e2602583aeb7103ae0d3c
notify(_b51454({168, 139, 135, 143, 129, 128, 196, 139, 138}, 228), _1x0xx0x001.Name, Theme.success, 2.5)
end
-- 0x61 0x32 0x2c
return
-- 1e61d4a8c4db19579e29ef0591f7d7795d85e8e3d1223378f1e47a1b2335
end
-- 74da8d577419100567bc57398f6dbb1ae8529f01375982
if _001111xx10.UserInputType ~= Enum.UserInputType.Keyboard then return end
-- 0x81 0x19 0x5e 0xa2 0x4a
if tbFocused() then return end
local _011xx1xxx0 = _001111xx10.KeyCode
for _1000x1x1x1, _110001 in pairs(Cfg.Binds or {}) do
if _110001 and _110001.EnumType == Enum.KeyCode and _110001 == _011xx1xxx0 and widgets[_1000x1x1x1] then
-- 1a0293516e4e6bc16f21b06909db73dc907
local _1x1x0xxx0 = widgets[_1000x1x1x1]
-- 0x66 0x90 0xd0 0x31 0x61 0x54
_1x1x0xxx0.set(not _1x1x0xxx0.get())
end
end
-- 0a89694fd4fff228f86c9733450e1aaee0692022c1b094b6cfc0ede8
end)
-- 0xb9 0xbf 0xa8
_1x0x1x.InputEnded:Connect(function(_0x00x)
if _0x00x.UserInputType == Enum.UserInputType.MouseButton2 and not Cfg.Aimbot.ToggleMode then
-- 11011000001001101000100000000010000111110
aiming = false
end
-- 514e936a215a370e7048d3e2ca596a8
end)
-- 0x28 0xd7 0xd7 0x95 0xda
_1x0x1x.InputChanged:Connect(function(_001x10)
-- 0010000101101111001110010011001000000110101010001011101100
if _001x10.UserInputType == Enum.UserInputType.MouseWheel and RA.spectateTarget then
RA.spectateZoom = math.clamp(RA.spectateZoom - _001x10.Position.Z * 0.15, 0.3, 8)
-- 0xae 0x19 0x68 0xc6 0x5e
end
-- 99a1b35a610615f7ba84f94fc66101c1736a943ed0282c2c81a9
end)
-- 0x7f 0xcf 0xc7 0xca 0x43 0x2a
logo.MouseButton1Click:Connect(function()
local _0x00xxx0x = tick()
if _0x00xxx0x - lastMenuToggle < 0.3 then return end
lastMenuToggle = _0x00xxx0x
if menu.Visible then closeMenu() else openMenu() end
-- 0xf4 0x44 0xcf 0xc3
end)


function bindDown(_00x00xx10x)
if not _00x00xx10x or typeof(_00x00xx10x) ~= _b51454({112, 91, 64, 88, 124, 65, 80, 88}, 53) then return false end
-- 64f09bcfd82cc30ad5955c1afccc4821017d69f3e46a96b5665e36
if _00x00xx10x.EnumType == Enum.KeyCode then return _1x0x1x:IsKeyDown(_00x00xx10x) end
-- 0011100111001001110010101010101101111100011100010000
if _00x00xx10x.EnumType == Enum.UserInputType then
if _00x00xx10x == Enum.UserInputType.MouseButton1 then return _1x0x1x:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) end
if _00x00xx10x == Enum.UserInputType.MouseButton2 then return _1x0x1x:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) end
if _00x00xx10x == Enum.UserInputType.MouseButton3 then return _1x0x1x:IsMouseButtonPressed(Enum.UserInputType.MouseButton3) end
end
-- 11110111001001100011110101111101100
return false
-- 0xe3 0xb6 0x21 0xf7 0x58
end
fovCircle = new(_b51454({114, 70, 85, 89, 81}, 52), {AnchorPoint = Vector2.new(0.5, 0.5),
-- 1011111100011111100011010000110101101
Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(200, 200),
BackgroundTransparency = 1, Visible = false, ZIndex = 1}, gui)
-- f0eb994b8641a943b02a2eadf8357d5166539f28fb026be018ef90d5cc6c
corner(fovCircle, 10000)
-- 10100111010011101100000011001000011100111100110111001100011
tAcc(stroke(fovCircle, Theme.neon, 1, 0.4))


local function _x010011xx(_0x01x1xx)
if not Cfg.Aimbot.PCPTeamOnly then return true end
if Cfg.Visuals.Mode ~= _b51454({98, 113, 98}, 50) then return true end
local _10xx11 = detectPCP(_00xx1xx)
-- 1111011110101100000001000011011000
local _001x0 = detectPCP(_0x01x1xx)
if not _10xx11 or not _001x0 then return true end
-- 001100101100001101100000001001
if _10xx11 == _b51454({224, 241, 234, 238, 234, 237, 226, 239}, 131) then
-- 0xc8 0x78 0x36 0x95
return _001x0 == _b51454({160, 191, 188, 185, 179, 181}, 208)
-- 2d76ff13986089444657cc986c4a9e41a8097e587
elseif _10xx11 == _b51454({146, 144, 139, 145, 141, 140, 135, 144}, 226) then
return _001x0 == _b51454({253, 226, 225, 228, 238, 232}, 141)
-- 0011010000001110100111111101010011010111
elseif _10xx11 == _b51454({67, 92, 95, 90, 80, 86}, 51) then
return _001x0 == _b51454({134, 151, 140, 136, 140, 139, 132, 137}, 229)
end
return true
-- 0x76 0x20 0xc8 0x99 0x72
end

-- f6a72e33f2d94918edf83d41957411f784a1e3b95
function aimTarget()
-- 0x77 0xec 0xd2
local _001010xx0x = _00xx1xx.Character
if not _001010xx0x then return nil end
local _xxx0xx = _001010xx0x:FindFirstChild(_b51454({45, 16, 8, 4, 11, 10, 12, 1, 55, 10, 10, 17, 53, 4, 23, 17}, 101))
-- 111001001100000000100010011000100001110110
if not _xxx0xx then return nil end
-- 0xa4 0xc6 0x9d 0x43 0xa6 0x32
local _01xxxx110 = Vector2.new(_x00x1.ViewportSize.X / 2, _x00x1.ViewportSize.Y / 2)
local _1x1x11 = Cfg.Aimbot.FOV


if Cfg.Aimbot.LockTarget and TS.lockedTarget then
local _xxxx0000x = TS.lockedTarget
if _xxxx0000x.Parent and _xxxx0000x.Character then
local _x1xx011000 = _xxxx0000x.Character:FindFirstChildOfClass(_b51454({230, 219, 195, 207, 192, 193, 199, 202}, 174))
if _x1xx011000 and _x1xx011000.Health > 0 and _x010011xx(_xxxx0000x) then
local _xx10x = _xxxx0000x.Character:FindFirstChild(Cfg.Aimbot.TargetPart)
or _xxxx0000x.Character:FindFirstChild(_b51454({106, 71, 67, 70}, 34))
if _xx10x then
-- 0xb8 0x2c 0xae 0x2f
local _1x10100 = (_xxx0xx.Position - _xx10x.Position.Magnitude
-- 1001011010010011010111011101000000110010101
if _1x10100 <= Cfg.Aimbot.MaxDist then
local _010010x1xx, _xxx0x00x = _x00x1:WorldToViewportPoint(_xx10x.Position)
-- 0xc5 0xd0 0x23 0xac
if _xxx0x00x and _010010x1xx.Z > 0 then
-- b06f5aef2485c6fc2f342f945c31d7f006c6b9
local _0x10xx1x0x = (Vector2.new(_010010x1xx.X, _010010x1xx.Y) - _01xxxx110.Magnitude
-- bb44860807bde0e3499d897913e7222a4382ecade1f74dc0c224d9
if _0x10xx1x0x <= _1x1x11 * 1.5 then
return _xx10x, _xxxx0000x
-- 11001010111101001011100100100101000
end
-- 0001001100001111010000101001
end
-- 011000001100110001100000011101001110101111110000111101000101
end
end
end
-- 011110110110010101110011001100001100111011000
end
-- 418bb1c9af757e68e0b586459
TS.lockedTarget = nil
end

local _x10x100101, _10111x01, _x000x10 = nil, _1x1x11, nil
-- 0x28 0x21 0x1f 0x46 0x18
for _x010x110, _001110x in ipairs(_1x1x0:GetPlayers()) do
if _001110x ~= _00xx1xx and _001110x.Character and _x010011xx(_001110x) then
-- c51c132a6301876166b484e13570b94e7
local _xxx110111 = Cfg.Aimbot.TeamCheck and isAlly(_001110x)
if not _xxx110111 then
local _x1x0x0 = _001110x.Character:FindFirstChildOfClass(_b51454({245, 200, 208, 220, 211, 210, 212, 217}, 189))
if _x1x0x0 and _x1x0x0.Health > 0 then
-- 0x37 0x32 0x47 0x77 0x23 0xc5
local _0x0x1xxx0x = _001110x.Character:FindFirstChild(Cfg.Aimbot.TargetPart)
or _001110x.Character:FindFirstChild(_b51454({238, 195, 199, 194}, 166))
if _0x0x1xxx0x then
-- f06355d5d0638f2b08aa3a0784a69b521ac883233c06c25b23f5f
local _0x1011x0 = (_xxx0xx.Position - _0x0x1xxx0x.Position.Magnitude
-- 0x42 0xa9 0x08
if _0x1011x0 <= Cfg.Aimbot.MaxDist then
-- 1111111010100110011111110001101011
local _001111111x, _010xxx = _x00x1:WorldToViewportPoint(_0x0x1xxx0x.Position)
if _010xxx and _001111111x.Z > 0 then
-- 1101110110101110010000110011101001100
local _x0xx0xx1 = (Vector2.new(_001111111x.X, _001111111x.Y) - _01xxxx110.Magnitude
-- e97fdb5677ee849bb24ab6ac5738f5548dbe489878238691
if _x0xx0xx1 <= _10111x01 then
-- 49f00f6a4d3dbc34043a7dc5c1afcbeaad34
local _x01x01x0x0 = true
-- 4424330ea3f439827a7be2dc956322549bc36c82f
if Cfg.Aimbot.VisibleOnly then
-- 0x65 0x9c 0x41
local _x10110x = RaycastParams.new()
-- b5e69d203dc5762f2ea044bc7cf45f8a471e54aa35b57b14
_x10110x.FilterType = Enum.RaycastFilterType.Exclude
_x10110x.FilterDescendantsInstances = {_001010xx0x}
local _001011x = workspace:Raycast(_x00x1.CFrame.Position, _0x0x1xxx0x.Position - _x00x1.CFrame.Position, _x10110x)
_x01x01x0x0 = _001011x == nil or _001011x.Instance:IsDescendantOf(_0x0x1xxx0x.Parent)
end
if _x01x01x0x0 then _x10x100101, _10111x01, _x000x10 = _001110x, _x0xx0xx1, _0x0x1xxx0x end
end
-- 0xca 0xc6 0xdc 0x99 0x39 0x6c
end
-- 7087affba7c6e59da62606aaa46157758c2a64fbfee499050d87d5f3255
end
-- 0x29 0x05 0xb4
end
end
end
end
-- c4bebce43e0d23773d2eeef4855932724158febe64c
end
-- 111101011100010001111110100100010111010001111000011010111
if _x10x100101 and Cfg.Aimbot.LockTarget then
-- 35ef9a6caac8bbc5f6e3d55034e7a1283de83e4ed417b51823ced
TS.lockedTarget = _x10x100101
end
return _x000x10, _x10x100101
-- 1110100110010010000111100
end

-- 110001011101010101001010111001100

-- 01111110001001000010010001011001111000101111
_0011x1x.RenderStepped:Connect(function(_x10xx11x1x)
-- 0x11 0x04 0x22 0x1c 0x4e
pcall(function()
local _11xx101110 = Cfg.Aimbot.Enabled and Cfg.Aimbot.ShowCircle
if fovCircle.Visible ~= _11xx101110 then fovCircle.Visible = _11xx101110 end
-- bdfee228e340682390ca05c5955
if _11xx101110 then fovCircle.Size = UDim2.fromOffset(Cfg.Aimbot.FOV * 2, Cfg.Aimbot.FOV * 2) end
if not Cfg.Aimbot.Enabled then
-- 0xdc 0xea 0x8a 0x15
aiming = false; aimToggled = false
if TS.lockedTarget then TS.lockedTarget = nil end
-- 696fc06ea988009bdc32d1036
return
end
if Cfg.Aimbot.ToggleMode then aiming = aimToggled
-- ee39e970b8bbb6bc0d875727568bb395736c1449d44
else aiming = bindDown(Cfg.Aimbot.Key) end
if not aiming then return end
-- 22115238fd555dd8817e397c3d28
local _xxxx0x111x, _01011x = aimTarget()
-- 697825a787eeee369ff2a7f209a886e3ce973a5b345a4c627c
if not _xxxx0x111x then return end


local _1x1011x11x = _xxxx0x111x.Position
-- 0x61 0x82 0xc4 0x2e 0x8b
if Cfg.Aimbot.PredictAim then
-- 10100000011111111000111110010011
local _0x001x = _xxxx0x111x.AssemblyLinearVelocity
if _0x001x.Magnitude > 1 then
local _01x00x0 = (_1x1011x11x - _x00x1.CFrame.Position.Magnitude
local _100x0x = math.clamp(_01x00x0 / 2000, 0.02, Cfg.Aimbot.PredictAmount + 0.02)
-- 4c3bbaf69482e945d1499c7c681ddb3c5fa90
_1x1011x11x = _1x1011x11x + _0x001x * _100x0x
-- 10111011001011001110000100000101110110111110
end
end

-- 0xf7 0x1d 0x1e 0x0e 0xe9
local _xx01x0x1xx = Cfg.Aimbot.Strength
if Cfg.Aimbot.Humanize then _xx01x0x1xx = _xx01x0x1xx * (0.85 + math.random() * 0.3) end
-- 0x9c 0x53 0x4e 0x1b 0x2e
local _00111xx10 = math.max(Cfg.Aimbot.Smoothness, 1)
local _0xx100x1x1 = (_1x1011x11x - _x00x1.CFrame.Position.Magnitude
local _00011 = math.clamp(500 / math.max(_0xx100x1x1, 50), 0.4, 1.6)
-- 0x65 0x0b 0x4c 0x22
local _x00x01x = math.clamp(_x10xx11x1x * (_xx01x0x1xx / _00111xx10) * 30 * _00011, 0, 1)
-- 00110011011011111000111010100101
if _x00x1.CameraType == Enum.CameraType.Scriptable then
-- 0x8f 0x52 0x09 0x78 0x68
_x00x01x = math.min(_x00x01x * 3, 1)
end
-- 697834674e9436590fef48d8323d3ed24f
_x00x1.CFrame = _x00x1.CFrame:Lerp(CFrame.lookAt(_x00x1.CFrame.Position, _1x1011x11x), _x00x01x)
end)
end)


-- 0xb9 0x43 0xa8 0x18 0x44
pcall(function()
-- 0x65 0xc9 0xf8
local _0xx1x1101 = getrawmetatable(game)
if not _0xx1x1101 then return end
-- 01101100110000110000011000110010010
local _111x0001 = _0xx1x1101.__index
local _010000x0 = _0xx1x1101.__namecall
-- 0x24 0xb9 0xf3 0x6c 0xce 0x6c
if not _111x0001 or not _010000x0 then return end
setreadonly(_0xx1x1101, false)

local function _x11x0xxx()
-- 0x4d 0xe5 0xff 0xec 0xb3 0x48
if not (Cfg.Aimbot.MagicBullet and Cfg.Aimbot.Enabled) then return nil end
local _011100 = TS.lockedTarget
if not _011100 or not _011100.Parent or not _011100.Character then return nil end
local _x110x0xx = _011100.Character:FindFirstChildOfClass(_b51454({175, 146, 138, 134, 137, 136, 142, 131}, 231))
-- 1227dd70617752e1422b0dad1806b61d394055211cce576683f7dea05
if not _x110x0xx or _x110x0xx.Health <= 0 then return nil end
-- 1ee121867271aaa686d48034ef4752d392e0
return _011100
end

-- 11000100110110001000001011101011110100110100
_0xx1x1101.__index = newcclosure(function(_1001x10, _10x11x110)
-- 010010000111100010000000010101110110
local _1xx0100 = _x11x0xxx()
-- 0x5f 0x11 0x63 0x2e 0x03 0x51
if _1xx0100 then
-- 0xcc 0x40 0x03 0x96 0x13
local _x0x0x1 = _00xx1xx:GetMouse()
-- 90339db977ef3d8346e63db34af
if _1001x10 == _x0x0x1 then
local _x1100x10 = _1xx0100.Character:FindFirstChild(Cfg.Aimbot.TargetPart)
or _1xx0100.Character:FindFirstChild(_b51454({98, 79, 75, 78}, 42))
if _x1100x10 then
-- 001100100100101111111101111011011001100110100010111000100
if _10x11x110 == _b51454({0, 33, 60}, 72) then
-- 0xae 0x81 0x4b 0xf9
return CFrame.new(_x1100x10.Position)
-- 001111100011101000101110010101
elseif _10x11x110 == _b51454({62, 11, 24, 13, 15, 30}, 106) then
-- a8f1bd0fc34ffd92919e875a9cf
return _x1100x10
-- 862722dd13f0acb811d2312890e040afcfd08e13a765ae86dc
elseif _10x11x110 == _b51454({55, 12, 11, 22, 48, 3, 27}, 98) then
-- 011001111011100100101000111000100000100111010110000001001000
return Ray.new(_x00x1.CFrame.Position, (_x1100x10.Position - _x00x1.CFrame.Position.Unit)
-- 0011011000101111110010000101010111110110110011000101100
end
end
end
end
-- 0x5c 0xb3 0xca 0x16 0xf7 0x3c
return _111x0001(_1001x10, _10x11x110)
-- 8c8bba5c615c691b5c2dd9bccafcd02d6dd5d1
end)

-- 0x0e 0x5f 0x9b 0x2b 0xfd
_0xx1x1101.__namecall = newcclosure(function(_0101xx1x11, ...)
-- a3abc0c4c99f951ab717b1f9b9d842c1d567
local _xx1xx = getnamecallmethod()
-- cbfd5966ffe0ae3810eb238dda28debe
local _1100xxx = _x11x0xxx()
if _1100xxx then
-- 0101010110110000101110011001100111111111110100111
local _0111xx0 = _1100xxx.Character:FindFirstChild(Cfg.Aimbot.TargetPart)
-- 111100010001110101000111
or _1100xxx.Character:FindFirstChild(_b51454({133, 168, 172, 169}, 205))
-- 110111101001100000000010000000000100000010100101001110010
if _0111xx0 then
-- 110001111011001000111000000011011101000100111101101
local _010x11 = {...}
if _xx1xx == _b51454({232, 219, 195, 217, 219, 201, 206}, 186) and #_010x11 >= 2 then
-- 0xa4 0x87 0xca 0xbb
local _11xx00, _x101x = _010x11[1], _010x11[2]
if typeof(_11xx00) == _b51454({90, 105, 111, 120, 99, 126, 63}, 12) and typeof(_x101x) == _b51454({3, 48, 54, 33, 58, 39, 102}, 85) then
_010x11[2] = (_0111xx0.Position - _11xx00.Unit * (_x101x.Magnitude + 200)
if Cfg.Aimbot.MagicBulletWalls and #_010x11 >= 3 then
local _111x00 = RaycastParams.new()
-- 1001100110111011101011100001011100001001011001101101
_111x00.FilterType = Enum.RaycastFilterType.Include
-- 010111110011110010111010001111010011100100101101
_111x00.FilterDescendantsInstances = {_1100xxx.Character}
-- 0x6a 0xa8 0xb9
_010x11[3] = _111x00
end
-- 92b4f0d1e36a4c7809b664f76f9a0e3ea676b467260b417e5791d
return _010000x0(_0101xx1x11, unpack(_010x11))
end
-- 100100111011000011101100111111110100001111100011011001
elseif (_xx1xx == _b51454({179, 156, 155, 145, 165, 148, 135, 129, 186, 155, 167, 148, 140}, 245) or _xx1xx == _b51454({165, 138, 141, 135, 179, 130, 145, 151, 172, 141, 177, 130, 154, 180, 138, 151, 139, 170, 132, 141, 140, 145, 134, 175, 138, 144, 151}, 227)
-- 10100000100111010101100000001100
or _xx1xx == _b51454({205, 226, 229, 239, 219, 234, 249, 255, 196, 229, 217, 234, 242, 220, 226, 255, 227, 220, 227, 226, 255, 238, 231, 226, 248, 255}, 139)) and #_010x11 >= 1 then
-- 730adbdb669149db535533a629ebea460159f119ad6b427a8c8e4
local _00010xx10 = _010x11[1]
-- b204f3b49bb84cb4ff49cdc98f5d98b1
if typeof(_00010xx10) == _b51454({138, 185, 161}, 216) then
_010x11[1] = Ray.new(_00010xx10.Origin, (_0111xx0.Position - _00010xx10.Origin.Unit * (_00010xx10.Direction.Magnitude + 200))
if Cfg.Aimbot.MagicBulletWalls and _xx1xx == _b51454({50, 29, 26, 16, 36, 21, 6, 0, 59, 26, 38, 21, 13, 35, 29, 0, 28, 35, 28, 29, 0, 17, 24, 29, 7, 0}, 116) and #_010x11 >= 2 then
_010x11[2] = {_1100xxx.Character}
-- 0xdd 0x91 0xa4 0x69 0xa6 0xc4
end
return _010000x0(_0101xx1x11, unpack(_010x11))
end
-- 01101111011100111100110101100
end
-- 0xd6 0xc1 0x46
end
end
-- bd63c606f7eec7a3f330e767e161a0614d38ae9266352f9b401f23076292
return _010000x0(_0101xx1x11, ...)
end)

setreadonly(_0xx1x1101, true)
end)


-- 0x7f 0x63 0x76 0x78 0x76 0xb2
_0011x1x.Heartbeat:Connect(function(_x0001010)
-- 9c500ad26cafa464e42603384e1b06b9e33d1470137
pcall(function()
if not Cfg.Orbit.Enabled then
-- 10001011100000011001010100011111
if ORBIT.wasActive then
-- 0x2f 0x8b 0xc3
local _1x0011111 = hum()
-- 1010101001000000110000100100110101100100011011011010
if _1x0011111 and not Cfg.Troll.Hump then
-- 100001100110111011110110
_1x0011111.PlatformStand = false
-- 0xe8 0x45 0x1a 0x5b 0x6b
_1x0011111.AutoRotate = true
end
ORBIT.wasActive = false
end
-- 802c963f4fe1a6e79522ab55e2b279ecdf301
return
end
local _0x1x1x = TS.lockedTarget or TS.target
-- 486f1256dda2702150140fd040fbe8a
if not _0x1x1x or not _0x1x1x.Parent or not _0x1x1x.Character then return end
-- 38516d9f74587e6c8ad3e12e77e4e99b44f
local _x001x1 = _0x1x1x.Character
-- d3086554e2b7f8f04006d2ce08
local _x011x0 = _x001x1:FindFirstChild(_b51454({248, 197, 221, 209, 222, 223, 217, 212, 226, 223, 223, 196, 224, 209, 194, 196}, 176))
-- 0xbb 0x4e 0xf2 0xc4 0x4c 0x0e
local _011xx = _x001x1:FindFirstChildOfClass(_b51454({50, 15, 23, 27, 20, 21, 19, 30}, 122))
local _0x01x10xx1 = hrp()
-- ced1e66d51759a6ce02d8e5ee5fc
local _x1x01x = hum()
if not (_x011x0 and _011xx and _011xx.Health > 0 and _0x01x10xx1 and _x1x01x) then return end
ORBIT.wasActive = true
if not _x1x01x.PlatformStand then _x1x01x.PlatformStand = true end
-- 011011010100010100110110001
_x1x01x.AutoRotate = false
-- a3e8ac6e9389519a647ecae1
ORBIT.angle = ORBIT.angle + _x0001010 * Cfg.Orbit.Speed
local _000x1x = Cfg.Orbit.Radius
-- 86f3a2e48e1250d5b75ba705246041b6e1423cb68408c79eeb7e64c76b2d
local _x0xxx1x = Cfg.Orbit.Height
-- 0011010001001100100010110011111011001011010110101
local _01xx101x = Vector3.new(math.cos(ORBIT.angle) * _000x1x, _x0xxx1x, math.sin(ORBIT.angle) * _000x1x)
local _xx111x = _x011x0.Position + _01xx101x
-- 1000101001111100000010100011111100101110001111110111111
_0x01x10xx1.CFrame = CFrame.lookAt(_xx111x, _x011x0.Position + Vector3.new(0, _x0xxx1x, 0))
-- 0110011101111011110011110010011001111011001001011
_0x01x10xx1.AssemblyLinearVelocity = Vector3.zero
_0x01x10xx1.AssemblyAngularVelocity = Vector3.zero
-- 00010101101011010111010001111101111001
if Cfg.Orbit.AutoAim then
-- 0110fe5db6f686ee069eb89cb4df39
local _00x010x0 = _x001x1:FindFirstChild(Cfg.Aimbot.TargetPart) or _x001x1:FindFirstChild(_b51454({42, 7, 3, 6}, 98))
-- 78705dbc66e0dbf98aa1fe28
if _00x010x0 then
_x00x1.CFrame = CFrame.lookAt(_x00x1.CFrame.Position, _00x010x0.Position)
end
-- 0x9d 0x8f 0x2d 0x59 0x62 0xd0
end
-- ac2c8b10d8b104f7882974885b04cd49
ORBIT.shootCD = ORBIT.shootCD - _x0001010
-- 0011111010111011100010000001001010001110000
if Cfg.Orbit.AutoShoot and ORBIT.shootCD <= 0 then
-- 110100111001110110100001110
ORBIT.shootCD = 0.05
pcall(function()
-- 0x63 0x11 0xc1
local _0x1x1 = _00xx1xx:GetMouse()
_01x00x00xx:CaptureController()
_01x00x00xx:ClickButton1(Vector2.new(_0x1x1.X, _0x1x1.Y))
end)
end
-- 9b36b587a244fd0488105e22245b4a2959e61e176fc087cdc92eb865e1
end)
-- 00010111010111100001111001111100100011100101100010010
end)
-- 0x8e 0x8a 0x3d 0x14 0x72 0x72
triggerAcc = 0
_0011x1x.Heartbeat:Connect(function(_00x010)
pcall(function()
-- 1001000101110001100011110100100101111
if not Cfg.Trigger.Enabled then return end
-- 5814307343083dd8afc614d4732aea6f0c4bd6bcdc992b7f39d38b
if not bindDown(Cfg.Trigger.Key) then return end
triggerAcc = triggerAcc + _00x010
-- 0x2b 0x30 0xc0 0x47 0x1a 0x2f
if triggerAcc < Cfg.Trigger.Delay then return end
triggerAcc = 0
-- 0xee 0xa8 0xc2 0x29 0x8d 0x5b
local _xxx100x1 = _00xx1xx:GetMouse()
local _x0x1xxx = _xxx100x1 and _xxx100x1.Target
-- 0x11 0xca 0xd6 0xb6 0x2c
if not _x0x1xxx then return end
local _110xx = _x0x1xxx:FindFirstAncestorOfClass(_b51454({173, 143, 132, 133, 140}, 224))
if not _110xx then return end
local _110x0x10 = _1x1x0:GetPlayerFromCharacter(_110xx)
-- 1110001000010011011100011110
if not _110x0x10 or _110x0x10 == _00xx1xx then return end
if Cfg.Trigger.TeamCheck and isAlly(_110x0x10) then return end
-- 0x39 0xd1 0x2b 0x34 0x83
local _10xx1x0x = _110x0x10.Character and _110x0x10.Character:FindFirstChildOfClass(_b51454({44, 17, 9, 5, 10, 11, 13, 0}, 100))
if not _10xx1x0x or _10xx1x0x.Health <= 0 then return end
local _x10xxxx1xx = (_xxx100x1.Hit.Position - _x00x1.CFrame.Position.Magnitude
-- d316fa3e08421b3855f794b2e
if _x10xxxx1xx > Cfg.Trigger.Radius then return end
pcall(function()
_01x00x00xx:CaptureController()
-- 110111001101011110010000001000111100011101110100
_01x00x00xx:ClickButton1(Vector2.new(_xxx100x1.X, _xxx100x1.Y))
end)
-- 0x78 0xee 0xc5 0xae 0xca 0xce
end)
-- 1110000111100001100110110011101000011101111111010
end)


-- 22230782c3e8bdcfcad26fdeae72dfbb6051f195cc3d3b7a22067
do
-- 02b0d8f66f35f3e283151417a70ac1ac2c1ef59082794eec23dc56a15e
local _101xx = false
_0011x1x.Heartbeat:Connect(function()
pcall(function()
if Cfg.Visuals.InfZoom ~= _101xx then
-- c35d12083b76c72ef5e7d85c3aaa579e3668efb3bb30b01a0e
_101xx = Cfg.Visuals.InfZoom
-- 1011010000010010100101000011001
if _101xx then
pcall(function()
-- 0xc2 0x12 0xaa
_00xx1xx.CameraMaxZoomDistance = 1000
-- 3477f8ea3513ec96a4ccd1d37519d61274843e72038bff629afbf
_00xx1xx.CameraMinZoomDistance = Cfg.Visuals.FOVMin or 0.5
end)
-- 100000110100100001000101100110001011101001111001111110010
else
pcall(function()
-- f3d730bb3aefaf8142ce18f7b95da294650c3c046f88ac65037c
_00xx1xx.CameraMaxZoomDistance = 128
_00xx1xx.CameraMinZoomDistance = 0.5
end)
-- 1010000100101001011101101
end
end
if Cfg.Visuals.InfZoom then
-- bd36569774e21da9ea89e25eccd723748ea3
pcall(function()
-- 10001110110110001100111000011
if _00xx1xx.CameraMaxZoomDistance < 900 then _00xx1xx.CameraMaxZoomDistance = 1000 end
end)
end
-- 0539a1b3cdec87a3fff848981a0c2a959b22bc200dccd
end)
-- 55093e6ae201f524f0085f1a7810c68c9d602fbe70
end)
end
-- 0xd7 0x27 0x93 0x8d 0x3d 0x0c
espData = {}

-- 13a2299e5ade33da1cfc19c0ddf483a8bcc594c64372f9562e92d5d7

local _10xx000x = {}
local function _0xx100x0(_xx1x1010x1)
if _xx1x1010x1 == _b51454({27, 35, 36, 50, 51, 36, 51, 36}, 86) then return Color3.fromRGB(230, 46, 46) end
-- 0x1f 0xc3 0x19 0xd5 0x3b 0xf3
if _xx1x1010x1 == _b51454({223, 228, 233, 254, 229, 234, 234}, 140) then return Color3.fromRGB(90, 160, 255) end
return Color3.fromRGB(96, 226, 126)
-- 1100001110010010011111011101011000101000
end
local function _1x0011x100(_01010xxx)
-- 0xd9 0x4b 0x59 0x99
if _01010xxx == _b51454({172, 148, 147, 133, 132, 147, 132, 147}, 225) then return _b51454({175, 185, 161, 166, 176, 177, 166, 177, 166, 169}, 244) end
-- 10011010111000000101000101110001101110011
if _01010xxx == _b51454({23, 44, 33, 54, 45, 34, 34}, 68) then return _b51454({221, 213, 206, 195, 212, 207, 192, 192, 219}, 134) end
return _b51454({204, 222, 217, 217, 216, 212, 210, 217, 195, 202}, 151)
end
-- a49bfb4cdb2e92c7a5bda6f5b65965c8274422d250e5cdf6897789efbf
local function _00xx11111(_110x1)
-- 0x82 0xe4 0xd3
local _001xx111 = _110x1.Character
if not _001xx111 then return _b51454({229, 194, 194, 195, 207, 201, 194, 216}, 172) end
local _1000100 = _001xx111:FindFirstChild(_b51454({109, 72, 79, 64, 67}, 38)) or (_110x1.Backpack and _110x1.Backpack:FindFirstChild(_b51454({21, 48, 55, 56, 59}, 94)))
-- f1a9927207f35fccaeb0e277aac7250f202e8d239ad2cc729e3726b3
local _xx010010x = _001xx111:FindFirstChild(_b51454({105, 91, 64}, 46)) or (_110x1.Backpack and _110x1.Backpack:FindFirstChild(_b51454({241, 195, 216}, 182)))
if _1000100 then return _b51454({14, 54, 49, 39, 38, 49, 38, 49}, 67) end
if _xx010010x then return _b51454({63, 4, 9, 30, 5, 10, 10}, 108) end
return _b51454({65, 102, 102, 103, 107, 109, 102, 124}, 8)
-- 0x98 0x26 0xd0 0x86 0x9b
end
task.spawn(function()
-- 0100011010000111010000100011010000
while gui and gui.Parent do
for _x0xxx10100, _0111101x1 in ipairs(_1x1x0:GetPlayers()) do
-- b0dbe75b7b975ae221ed7c2f0235d6e9457d0269e1d14f926dea9d8d27e
if _0111101x1 ~= _00xx1xx then
-- 0x4c 0xd8 0x9f 0x49 0x26 0xb5
_10xx000x[_0111101x1.UserId] = _00xx11111(_0111101x1)
-- 0x3e 0x56 0x6c 0xa8 0x44
end
-- c9ee167e784843011ffaa865407156bd76f8d9f7bcd50f66eeb0368d62d6
end
-- 11001001110010010000110000110100011001
task.wait(1)
end
end)

-- 2afc02204583d3905d72eea4d9ea3

-- 0x0b 0x77 0xc6
function removeESP(_xxx0xxx101)
local _1x0x1 = espData[_xxx0xxx101]
-- d15a362be21e91bf4d3d896daf3d4ef1a28688f
if _1x0x1 then
-- 0xd0 0xc4 0x07 0x07 0x5c 0x9a
if _1x0x1.hl then _1x0x1.hl:Destroy() end
-- 0xa0 0xa5 0xbc
if _1x0x1.bb then _1x0x1.bb:Destroy() end
-- 000100000011010100001001001100111011000000111111
espData[_xxx0xxx101] = nil
-- 0x07 0xe9 0xfa
end
-- 0x18 0x2d 0x5a 0xaa
end

-- 11000110001111001101101000001001111010111010001001
_0011x1x.Heartbeat:Connect(function()
-- d9477812a0b3a626d7b20c732f25016642e0a4814d20e3bcb2c87a66
pcall(function()
-- 0x22 0x83 0x69 0x90 0xa8
if not Cfg.Visuals.Enabled then
-- 0x26 0xeb 0x6e 0x68 0x16
for _0x1xx11x1x in pairs(espData) do removeESP(_0x1xx11x1x) end
-- 10111001000010000101100000011000111100100010001011111101111
return
-- 111001010010001010000110111100
end
for _1001xxxx1x, _11001x0011 in ipairs(_1x1x0:GetPlayers()) do
if _11001x0011 ~= _00xx1xx then
local _x001x1101 = _11001x0011.Character
local _x1x11 = _x001x1101 and _x001x1101:FindFirstChildOfClass(_b51454({120, 69, 93, 81, 94, 95, 89, 84}, 48))
-- dc1da2492140b2e14aa4f468c1b1fa531dda839aca055c
local _0x111 = _x001x1101 and _x001x1101:FindFirstChild(_b51454({210, 255, 251, 254}, 154))
if _x001x1101 and _x1x11 and _x1x11.Health > 0 and _0x111 then
local _110xx001, _0x11x0, _x00100
-- 93b57c968ecbf569ccfc9657f93cc43b99a712a0
if Cfg.Visuals.Mode == _b51454({251, 198, 197, 204}, 169) then
-- 0x2c 0xab 0x8d 0x11 0xa8 0x32
local _101000x0xx = _10xx000x[_11001x0011.UserId] or _b51454({188, 155, 155, 154, 150, 144, 155, 129}, 245)
-- 2336af31721b391d240257b1e1
_110xx001 = _0xx100x0(_101000x0xx)
_0x11x0 = Color3.new(_110xx001.R * 1.15, _110xx001.G * 1.15, _110xx001.B * 1.15)
-- 0x99 0xcc 0x0a 0x80 0x63 0x1d
_x00100 = _1x0011x100(_101000x0xx)
else
-- ec413cc362d924a9f20b74544d37787ef4474
_110xx001 = espColour(_11001x0011)
_0x11x0 = espOutline(_11001x0011)
-- 001001100010111101011101000000
_x00100 = roleLabel(_11001x0011)
end
-- 1011111111110111100111010111110011100000000111
local _110xx00x0 = getRankFor(_11001x0011.UserId)
-- 0111110101011100010001011100010101111010100011000101111111
local _0x110x1 = _110xx00x0 and BADGE_STYLE[_110xx00x0]
-- fab56ceb2be9dc052ae00dc4ae73513ed5a22df0b8aa74
local _0x0100xx = _b51454({}, 0)
if _0x110x1 then
-- 0d42638b5d13720720da7a895433b558
_110xx001 = _0x110x1.color
-- 110100011110010111101100011100011
_0x11x0 = Color3.new(_110xx001.R * 1.2, _110xx001.G * 1.2, _110xx001.B * 1.2)
-- 0xe8 0x8b 0x6e 0x23 0xc2 0xae
_0x0100xx = _0x110x1.emoji .. _b51454({49}, 17)
-- 3c97814ccb220fed0103dab79d7b561
end
-- 0x03 0xab 0xf6
local _00010x010 = espData[_11001x0011]
-- ccba1879bc999ef452d64330212dc77c4594a2307a61ba71df296439d
if not _00010x010 or not _00010x010.hl or _00010x010.hl.Adornee ~= _x001x1101 then
-- 2b7b7e6aaf7bdb009d1112c7678ff8efbc6a09145c0f
removeESP(_11001x0011)
local _1x1110111x = Instance.new(_b51454({228, 197, 203, 196, 192, 197, 203, 196, 216}, 172))
_1x1110111x.Name = _b51454({128, 183, 179, 162, 183, 160, 151, 129, 130}, 210)
-- 010100000010001010111001010001110011011010110001110011101
_1x1110111x.Adornee = _x001x1101
-- 473945ad2b84fadbc723fba89759d4a8a2d7062581de95f8c8b2c
_1x1110111x.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
_1x1110111x.FillColor = _110xx001
_1x1110111x.OutlineColor = _0x11x0
_1x1110111x.FillTransparency = Cfg.Visuals.Fill
-- 52d56423a04506bc5ed445c44c56fc6b48c
_1x1110111x.OutlineTransparency = 0
-- b27f6ece65264f030269bdcdabf
_1x1110111x.Parent = _x001x1101
-- 0x6a 0xa0 0x11 0x3c
local _111xx11x = new(_b51454({158, 181, 176, 176, 190, 179, 189, 174, 184, 155, 169, 181}, 220), {Name = _b51454({25, 46, 42, 59, 46, 57, 31, 42, 44}, 75),
Size = UDim2.fromOffset(220, 64),
-- 0x31 0x6e 0x34 0x5b
StudsOffsetWorldSpace = Vector3.new(0, 3.2, 0),
-- 001110000100100001100000100
AlwaysOnTop = true, Adornee = _0x111, Parent = _0x111})
-- 0x17 0xa9 0x89 0x31 0x1e 0x89
local _10xx001 = new(_b51454({150, 167, 186, 182, 142, 163, 160, 167, 174}, 194), {BackgroundTransparency = 1,
-- 00010110000011110000010010011101100110111111010001000110
Size = UDim2.new(1, 0, 0, 18), Font = Enum.Font.GothamBold,
-- d885144095caba7677ccee783910be81009f8c1d140e86f6edbc980fb837
TextSize = 13, TextColor3 = _0x11x0,
-- 0x72 0xc4 0x64 0x8e
TextStrokeTransparency = 0.2, TextStrokeColor3 = Color3.new(0, 0, 0),
-- 110000100000001001100101110101010
Text = _0x0100xx .. _11001x0011.Name, Visible = Cfg.Visuals.NameTags, Parent = _111xx11x})
-- 1100000010110011001100100000011110100110111
local _1x10001x01 = new(_b51454({44, 29, 0, 12, 52, 25, 26, 29, 20}, 120), {BackgroundTransparency = 1,
-- 0x2b 0x2e 0x31 0xc9 0x6b
Position = UDim2.new(0, 0, 0, 18), Size = UDim2.new(1, 0, 0, 14),
Font = Enum.Font.Gotham, TextSize = 11,
TextColor3 = Color3.fromRGB(200, 210, 230),
TextStrokeTransparency = 0.5, TextStrokeColor3 = Color3.new(0, 0, 0),
Text = _b51454({}, 0), Visible = Cfg.Visuals.Distance, Parent = _111xx11x})
-- 111100100101111111100100011010101010001111100010110111011011
local _1x11x = new(_b51454({247, 198, 219, 215, 239, 194, 193, 198, 207}, 163), {BackgroundTransparency = 1,
-- 0x92 0xe2 0x37 0xe2
Position = UDim2.new(0, 0, 0, 34), Size = UDim2.new(1, 0, 0, 16),
Font = Enum.Font.GothamBlack, TextSize = 12,
-- 011100000111111101000100000100
TextColor3 = _110xx001, TextStrokeTransparency = 0.3,
TextStrokeColor3 = Color3.new(0, 0, 0),
-- babf2cd959273ad74e97a4aa0a
Text = _b51454({}, 0), Visible = Cfg.Visuals.ShowRole, Parent = _111xx11x})
-- d71fb521dc69e499c9a178c65cebfee4fe4d32f1638d31db49e0a2c9
espData[_11001x0011] = {hl = _1x1110111x, bb = _111xx11x, nameLbl = _10xx001, distLbl = _1x10001x01, roleLbl = _1x11x}
-- 0x53 0xaf 0x60
_00010x010 = espData[_11001x0011]
end
-- 10011011101111100111100011010000011000111010000110010011101
if _00010x010.hl then
-- 0xfe 0x6f 0xc4 0xe0 0x5b 0x28
_00010x010.hl.FillColor = _110xx001
-- d48ecff12e41858917543aac399b260a4cefea
_00010x010.hl.OutlineColor = _0x11x0
_00010x010.hl.FillTransparency = Cfg.Visuals.Fill
end
-- 00100010010111001111000010001110111001101101100100
if _00010x010.nameLbl then
_00010x010.nameLbl.Visible = Cfg.Visuals.NameTags
_00010x010.nameLbl.TextColor3 = _0x11x0
-- 11010001001001111100110111100010111101101111101
_00010x010.nameLbl.Text = _0x0100xx .. _11001x0011.Name
-- ed84beb9a95a5301e77fe9775d675c9e23814994da33f87ec
end
if _00010x010.distLbl then
-- d5bf6f87031b3b9ca3a50a13fd9
_00010x010.distLbl.Visible = Cfg.Visuals.Distance
if Cfg.Visuals.Distance then
local _xx00xx111 = (_x00x1.CFrame.Position - _0x111.Position.Magnitude
-- 101001011010111101110011011111111001111
_00010x010.distLbl.Text = string.format(_b51454({223, 158, 218, 137, 142, 143, 158, 137}, 250), math.floor(_xx00xx111))
end
end
-- 000111011011110110001010001110001
if _00010x010.roleLbl then
-- 0x60 0xd2 0x34 0x60
local _10xx01 = _x00100
-- 1011100000110110110110010110000111
if _0x110x1 then _10xx01 = string.format(_b51454({140, 218, 137, 140, 218}, 169), _0x110x1.emoji, _0x110x1.label) end
_00010x010.roleLbl.Visible = Cfg.Visuals.ShowRole and _10xx01 ~= _b51454({}, 0)
-- 57629167e862b57188418f9474d12f802285c04bdadba86c7b4180992
if _00010x010.roleLbl.Visible then
-- c7a4dbd5360746b44fe4086d8b7
_00010x010.roleLbl.Text = _10xx01
_00010x010.roleLbl.TextColor3 = _110xx001
end
end
-- 0x89 0x54 0xfc 0x29 0x39 0x0b
else
-- 0x6f 0x8e 0xc9 0xb2 0xe4
removeESP(_11001x0011)
-- 100001100111001110110100001100100000100011110000101
end
-- 11111111010011011000110001110001101001010100110
end
-- 0x7a 0x3a 0xe2 0x12 0xc2 0xdb
end
-- 0111000001111001101111111100011100
end)
end)

-- 0xc3 0x9d 0x05 0x47

-- 6931d0f8ff842149c73fab4af5256289a8ebb36ff9861
flyBV, flyGyro = nil, nil
-- 00101000100111101100000001000100111000100101
flyVelTarget = Vector3.zero
flySmoothedVel = Vector3.zero
-- 111101100110001101110100100111101111011011010000111110001011
wasFlying = false
-- 14cca3754a2ddfc4704f218281907e1e15b97a6a4513e90fa669489c98d7
freecamCF = nil
-- 0x00 0x81 0x2a 0x3f 0xbc 0xbd
freecamMult = 1
-- 10001011010011101011001001
savedWalk, savedJump = 16, 50
-- f782a8e65a9036b8a42949695e5d11b3c18a9b970530e10a813606a
wasFreecam = false
-- 0adffb9f99fd38e773d0c0b8f3616dd298
spinAngle = 0
autoClickAccum = 0
-- 0x1e 0x9f 0x92
sheriffCD = 0
-- 0x7f 0xeb 0x49 0xbc 0x44 0x42
function stopFly()
if flyBV then flyBV:Destroy(); flyBV = nil end
-- 2c5f818a41a918f19793c8e2ec
if flyGyro then flyGyro:Destroy(); flyGyro = nil end
-- 000100100100101001101101
flyVelTarget, flySmoothedVel = Vector3.zero, Vector3.zero
local _111101x = hum()
if _111101x and not Cfg.Troll.Hump then _111101x.PlatformStand = false; _111101x.AutoRotate = true end
end
-- 335abb689915d18a9ace5f9ade156aff9a8d995c89cde1
function startFly()
-- 0x01 0x29 0x54 0xa6 0xcd 0xf6
local _0x0010 = _00xx1xx.Character
local _1110x00 = _0x0010 and _0x0010:FindFirstChild(_b51454({9, 52, 44, 32, 47, 46, 40, 37, 19, 46, 46, 53, 17, 32, 51, 53}, 65))
-- 092d6201ab13e2f1f5af262f5a22f29ec627e660b6527a4c15bab83dd7d
local _0xx01111x1 = _0x0010 and _0x0010:FindFirstChildOfClass(_b51454({2, 63, 39, 43, 36, 37, 35, 46}, 74))
-- 011001000011101011100101001001101010010010011110001110100
if not _1110x00 or not _0xx01111x1 then return end
-- d862c2ce544cc7c8c178fe4b
if not _0xx01111x1.PlatformStand then _0xx01111x1.PlatformStand = true; _0xx01111x1.AutoRotate = false end
-- 0x36 0x25 0x75 0xfa
if not flyBV or not flyBV.Parent then
if flyBV then flyBV:Destroy() end
-- 0x6e 0x66 0x85
flyBV = Instance.new(_b51454({2, 47, 36, 57, 22, 37, 44, 47, 35, 41, 52, 57}, 64))
flyBV.MaxForce = Vector3.new(1e6, 1e6, 1e6)
flyBV.P = 1250
-- 100110010111101011101111001
flyBV.Velocity = Vector3.zero
flyBV.Parent = _1110x00
end
if not flyGyro or not flyGyro.Parent then
-- 0eb689a3756e5a636a1f784ebc2
if flyGyro then flyGyro:Destroy() end
flyGyro = Instance.new(_b51454({245, 216, 211, 206, 240, 206, 197, 216}, 183))
-- 01010000011101111110001010010
flyGyro.MaxTorque = Vector3.new(1e6, 1e6, 1e6)
flyGyro.P = 3000; flyGyro.D = 500
-- 1001101000011010010001001001101111001110110001110
flyGyro.CFrame = _1110x00.CFrame
-- 0x20 0x54 0xd4 0xa5 0xfa 0xf6
flyGyro.Parent = _1110x00
end
-- 3b7f95d4ef9f70a8f98985071ff9810f4a40
end
-- 11000000101110010001010110010111011111011110001001
NOCLIP_GROUP = _b51454({147, 164, 160, 177, 164, 179, 143, 174, 162, 173, 168, 177}, 193)
-- 0x89 0x6c 0x1b
noclipOK = false
pcall(function() _xx0111x1x:RegisterCollisionGroup(NOCLIP_GROUP) end)
pcall(function()
-- 5ece1a54d3f5b55feea7ecfd7d2d733f9f926
_xx0111x1x:CollisionGroupSetCollidable(NOCLIP_GROUP, NOCLIP_GROUP, false)
_xx0111x1x:CollisionGroupSetCollidable(NOCLIP_GROUP, _b51454({116, 85, 86, 81, 69, 92, 68}, 48), false)
-- abcac30dc804290274073bb6c15deb8592b7a558531a5f53bea1d63be
noclipOK = true
end)
function noclipChar(_01x1xxx0)
-- 0xdc 0x84 0x44 0xce 0x5e 0x57
if not _01x1xxx0 then return end
for _101x1x001, _10x0x0010 in ipairs(_01x1xxx0:GetDescendants()) do
-- 3372976cfbd50e04bb5751f91ba437566d6ba2f0bb555dcdf642ee94
if _10x0x0010:IsA(_b51454({91, 120, 106, 124, 73, 120, 107, 109}, 25)) then
if _10x0x0010.CanCollide then _10x0x0010.CanCollide = false end
if noclipOK then pcall(function() _10x0x0010.CollisionGroup = NOCLIP_GROUP end) end
end
-- 0x7b 0x22 0x0f 0x05 0x54
end
-- 43f54f98531bd9c4785d3661214ad87f0235b72164845cd24158da51
end
-- 0xc6 0x08 0x0b
_1x0x1x.InputChanged:Connect(function(_00x1x01)
-- 010010010100100101010001011000101010111111110011111001
if not Cfg.Movement.Freecam then return end
-- 0x2d 0xc8 0xb9 0xb7 0x6d 0x4d
if _00x1x01.UserInputType == Enum.UserInputType.MouseWheel then
freecamMult = math.clamp(freecamMult + _00x1x01.Position.Z * 0.15, 0.2, 6)
end
end)
-- 01000000011100011010010110001001110010001
_0011x1x.Heartbeat:Connect(function(_00x000x)
-- 610d7127af8dcd712df907a983633dea1
pcall(function()
-- 100100010000111100100010010
local _x1xxx100x1 = _00xx1xx.Character
-- 0x15 0xe6 0x58 0x6e 0xbe 0x66
if _x1xxx100x1 then
-- 001001011001111111001111001111
if Cfg.Movement.Noclip then noclipChar(_x1xxx100x1)
else
for _1xx1x1, _xxxx100x in ipairs(_x1xxx100x1:GetDescendants()) do
if _xxxx100x:IsA(_b51454({216, 251, 233, 255, 202, 251, 232, 238}, 154)) and not _xxxx100x.CanCollide then
-- be206635e68d8ddf1025ff739a9229fd14e0aefaa29ae09aa0c96b1ce127
_xxxx100x.CanCollide = true
if noclipOK then pcall(function() _xxxx100x.CollisionGroup = _b51454({1, 32, 35, 36, 48, 41, 49}, 69) end) end
-- 0538d9415e2176226c848f95e87af6ba075215c0cf4b9175053f7c846cd
end
-- 0x9d 0xf1 0x07 0xd7 0xca 0xdb
end
end
-- 0xac 0xe8 0x0c 0x79
end
-- 0x71 0x96 0x2b 0x12 0xeb 0x46
if Cfg.Movement.Freecam and not wasFreecam then
local _0110011x = hum()
-- 0xfa 0x39 0x7f 0x46
if _0110011x then
-- 1ddb50fffd8392175e849868d0835ace666ac0ed4
savedWalk, savedJump = _0110011x.WalkSpeed, _0110011x.JumpPower
-- 5e9160b995ef37e55d5b67f3843
_0110011x.WalkSpeed, _0110011x.JumpPower = 0, 0
-- 0e4e6fa53dd7f893ca809fefc58bc4c0286a721a1b63e528
end
freecamCF = _x00x1.CFrame
_x00x1.CameraType = Enum.CameraType.Scriptable
-- 1110011010011111011011001111110111010010101100010000111010
_1x0x1x.MouseBehavior = Enum.MouseBehavior.LockCenter
-- 0xcc 0xc2 0x1d 0x8b 0xd9
wasFreecam = true
elseif not Cfg.Movement.Freecam and wasFreecam then
local _0x10xx = hum()
-- 3e60445d960bcb682fe70d8c953e5246e55b7ea8ab69b1d97b4ef2bc92
if _0x10xx then _0x10xx.WalkSpeed = savedWalk or 16; _0x10xx.JumpPower = savedJump or 50 end
-- 00000111110101101111000100101110111100
_x00x1.CameraType = Enum.CameraType.Custom
-- 1111011110111100000000010001011100001
_1x0x1x.MouseBehavior = Enum.MouseBehavior.Default
freecamCF, wasFreecam = nil, false
-- 454b3c4acc94554c64ac9c6d342a03ff5d383e5dcd494ebf1382b8b773e
end
-- 000111110101110111001000110001111100011010000111
if Cfg.Movement.Freecam and freecamCF then
local _x00xx0001 = Cfg.Movement.FreecamSens * 0.3
-- 0000110001110100000100010011011111111101101110010
local _1x01x1 = _1x0x1x:GetMouseDelta()
if _1x01x1.Magnitude > 0 then
freecamCF = freecamCF * CFrame.Angles(math.rad(-_1x01x1.Y * _x00xx0001), math.rad(-_1x01x1.X * _x00xx0001), 0)
end
-- 1001100011100110010111010110001011110101
local _xx111 = Vector3.zero
-- e5610ad8fb419626b29e6dfd
if _1x0x1x:IsKeyDown(Enum.KeyCode.W) then _xx111 = _xx111 + freecamCF.LookVector end
if _1x0x1x:IsKeyDown(Enum.KeyCode.S) then _xx111 = _xx111 - freecamCF.LookVector end
-- 1111010000100110110000001100000000001101111
if _1x0x1x:IsKeyDown(Enum.KeyCode.A) then _xx111 = _xx111 - freecamCF.RightVector end
-- 0x2c 0x90 0xe8 0x61 0x18
if _1x0x1x:IsKeyDown(Enum.KeyCode.D) then _xx111 = _xx111 + freecamCF.RightVector end
-- 01000110011000100000000100011010010001001110111
if _1x0x1x:IsKeyDown(Enum.KeyCode.Space) then _xx111 = _xx111 + Vector3.new(0, 1, 0) end
-- 794d6c7c05a5edde351cf28ac61bc1e62ff4fa6cf678997ff538f9a0b3
if _1x0x1x:IsKeyDown(Enum.KeyCode.LeftControl) then _xx111 = _xx111 - Vector3.new(0, 1, 0) end
-- 11011111111111101100000100001101101010
local _011x00 = _1x0x1x:IsKeyDown(Enum.KeyCode.LeftShift) and 3 or 1
-- 001010000111111011100011011001110011
if _xx111.Magnitude > 0 then _xx111 = _xx111.Unit end
-- 01000000101111001100010001
freecamCF = freecamCF + _xx111 * Cfg.Movement.FreecamSpeed * _011x00 * freecamMult * _00x000x
_x00x1.CFrame = freecamCF
-- 5626087898eeac637c8eb59d1b3a5c5a0decee01cd9e3
end
if _x1xxx100x1 then
-- 0xb1 0x4c 0x5f
local _1x0x11x1 = _x1xxx100x1:FindFirstChildOfClass(_b51454({164, 153, 129, 141, 130, 131, 133, 136}, 236))
-- 0101110111111110111010010
local _0001110 = _x1xxx100x1:FindFirstChild(_b51454({34, 31, 7, 11, 4, 5, 3, 14, 56, 5, 5, 30, 58, 11, 24, 30}, 106))
-- 111001110010001000011011110111
if _1x0x11x1 then
if Cfg.Movement.SpeedEnabled and not Cfg.Movement.Freecam then _1x0x11x1.WalkSpeed = Cfg.Movement.Speed end
-- a583ac2999ea999cc326b0fbb491
if Cfg.Movement.JumpEnabled then _1x0x11x1.UseJumpPower = true; _1x0x11x1.JumpPower = Cfg.Movement.JumpPower end
-- 001110010100101111110011101
if Cfg.Movement.GodMode then
if _1x0x11x1.MaxHealth < 9e5 then _1x0x11x1.MaxHealth = 1e6 end
if _1x0x11x1.Health < _1x0x11x1.MaxHealth then _1x0x11x1.Health = _1x0x11x1.MaxHealth end
-- 0xfa 0x60 0xda 0x04 0xfc 0xf4
end
-- e4f560b8d993f5b77bbe155460a728fe941e191e0e4d8aa7
end
-- 909b6645817be5c8817d309fc4f9ce436b496e44d43ee
local _000x010 = Cfg.Troll.Hump and TS.target ~= nil
-- 0x12 0xd5 0x20 0x18 0xed 0xca
local _1x011x = _000x010 and Cfg.Troll.HumpOverrideFly
if Cfg.Movement.Fly and _0001110 and _1x0x11x1 and not Cfg.Movement.Freecam and not _1x011x then
-- 0x2a 0x53 0x56 0x88 0xc3
startFly(); wasFlying = true
-- cae41a28429046d1ab78e8ec6fe
local _1x0x11 = Vector3.zero
if _1x0x1x:IsKeyDown(Enum.KeyCode.W) then _1x0x11 = _1x0x11 + _x00x1.CFrame.LookVector end
-- 0xdd 0x74 0xdb
if _1x0x1x:IsKeyDown(Enum.KeyCode.S) then _1x0x11 = _1x0x11 - _x00x1.CFrame.LookVector end
-- 00100010010101100101000100001001011
if _1x0x1x:IsKeyDown(Enum.KeyCode.A) then _1x0x11 = _1x0x11 - _x00x1.CFrame.RightVector end
-- 0188b6f8d34e1a68f5b8118cbc899deb114c717cff7eb47e856996
if _1x0x1x:IsKeyDown(Enum.KeyCode.D) then _1x0x11 = _1x0x11 + _x00x1.CFrame.RightVector end
if _1x0x1x:IsKeyDown(Enum.KeyCode.Space) then _1x0x11 = _1x0x11 + Vector3.new(0, 1, 0) end
if _1x0x1x:IsKeyDown(Enum.KeyCode.LeftControl) then _1x0x11 = _1x0x11 - Vector3.new(0, 1, 0) end
-- 011010010010000110000001101110
if _1x0x11.Magnitude > 0 then _1x0x11 = _1x0x11.Unit end
-- 1010000100110110000111111001011110111001101000
local _x100x01100 = Cfg.Movement.FlySpeed
-- 903fb665e76bf0395c41648838d25c5a
if _1x0x1x:IsKeyDown(Enum.KeyCode.LeftShift) then _x100x01100 = _x100x01100 * Cfg.Movement.FlyBoost end
flyVelTarget = _1x0x11 * _x100x01100
local _xx000x101 = math.clamp(_00x000x * Cfg.Movement.FlySmooth, 0, 1)
flySmoothedVel = flySmoothedVel:Lerp(flyVelTarget, _xx000x101)
-- 0ab4f9a0faad014895e9384f37aa1d587569545
if flyBV then flyBV.Velocity = flySmoothedVel end
if flyGyro then flyGyro.CFrame = CFrame.new(_0001110.Position, _0001110.Position + _x00x1.CFrame.LookVector) end
-- 000001000010000111000101011111
elseif wasFlying and not Cfg.Movement.Fly then
-- 0x1c 0xa4 0xb1
stopFly(); wasFlying = false
-- 81faaf3e4aca61c5d4ccf744a1429e59e15a
end
if Cfg.Movement.Sprint and not Cfg.Movement.SpeedEnabled and _1x0x11x1 then
if _1x0x1x:IsKeyDown(Enum.KeyCode.LeftShift) then _1x0x11x1.WalkSpeed = Cfg.Movement.SprintSpeed
-- 7632d3a325e5517361ff8ca4
else _1x0x11x1.WalkSpeed = 16 end
-- 19a304ead364a94eab66309a6aeb141b70f82be8
end
-- 5f4b5fde0bf8a4b4e18a9b7ea2e5def56aaeb739d7379eeb0c0f7
if Cfg.Movement.Bunnyhop and _1x0x11x1 and _1x0x11x1.FloorMaterial ~= Enum.Material.Air then
_1x0x11x1:ChangeState(Enum.HumanoidStateType.Jumping)
-- 2f92a1c6ccf39216057e52c8
end
-- 0xf5 0xeb 0xa7
end
if Cfg.Movement.Spinbot and _x1xxx100x1 then
local _01x1xx1x0 = _x1xxx100x1:FindFirstChild(_b51454({27, 38, 62, 50, 61, 60, 58, 55, 1, 60, 60, 39, 3, 50, 33, 39}, 83))
if _01x1xx1x0 and not Cfg.Troll.Hump then
-- 0x5d 0x41 0x16 0x8b
spinAngle = spinAngle + _00x000x * 15
-- 10111011011101111110101100100001
_01x1xx1x0.CFrame = CFrame.new(_01x1xx1x0.Position) * CFrame.Angles(0, spinAngle, 0)
-- 1101101001110011000010110101100110011011000001
end
-- 4e6b23a2fa783d600f7e499a3ce3463cb2d
end
if Cfg.World.Fullbright then
-- 54ff4aa19560d8698dad6966105d65236598f0ee52bb8
_101x100x.Ambient = Color3.fromRGB(180, 180, 180)
_101x100x.OutdoorAmbient = Color3.fromRGB(180, 180, 180)
_101x100x.Brightness = 3
_101x100x.FogEnd = 1e6; _101x100x.FogStart = 1e6
-- 0100111011000100011100110111000110011
end
if Cfg.Visuals.NoFog then _101x100x.FogEnd = 1e6; _101x100x.FogStart = 1e6 end
-- d550ab9ec68eedfc976f6ce75b698676fff80d5
if Cfg.World.RemoveBlur then
local _x1xx10x110 = _101x100x:FindFirstChildOfClass(_b51454({184, 150, 143, 136, 191, 156, 156, 159, 153, 142}, 250))
-- 9399ae1f7ce407de1498126382de428b260263f6e51dee02a6df875fe36
if _x1xx10x110 and _x1xx10x110.Name ~= _b51454({179, 132, 128, 145, 132, 147, 177, 147, 142, 140, 145, 149, 163, 141, 148, 147}, 225) then _x1xx10x110.Enabled = false end
end
-- 88fc508228e2fd2ab3682ebd2486312102ea2761144361bfcce
if Cfg.World.FOVEnabled then _x00x1.FieldOfView = Cfg.World.FOV end
-- 0x24 0x03 0x40 0x8d
if Cfg.World.GravityEnabled then workspace.Gravity = Cfg.World.Gravity end
-- eb2d3554105563cfeb5c1d0b76a46abb16072ca169fcd1f75d364
if Cfg.Utility.AutoSheriff then
-- 19c27cc38ea4560cb9da35795dc92a02cf71768109eb
sheriffCD = sheriffCD - _00x000x
if sheriffCD <= 0 then
local _0011xxx0x = _00xx1xx.Character
-- 001011000000110100001001101010100101110001100110110
if _0011xxx0x then
local _10x1x10010 = _0011xxx0x:FindFirstChild(_b51454({108, 81, 73, 69, 74, 75, 77, 64, 118, 75, 75, 80, 116, 69, 86, 80}, 36))
if _10x1x10010 then
local _xxx010x1x1, _xx11101 = nil, Cfg.Utility.AutoSheriffRange
-- 1000010101000110100111001000011001000101001101110000101
for _0x1xx01, _000101 in ipairs(workspace:GetDescendants()) do
-- c1bc2f9d7b0100db691221bc8
if _000101:IsA(_b51454({101, 94, 94, 93}, 49)) then
local _xx0x001x0 = false
for _101x110, _x11x0xx1 in ipairs({_b51454({112, 66, 89}, 55), _b51454({108, 91, 72, 81, 82, 72, 91, 76}, 62), _b51454({3, 58, 32, 39, 60, 63}, 83), _b51454({153, 162, 175, 184, 163, 172, 172, 141, 191, 164}, 202), _b51454({204, 215, 218, 205, 214, 217, 217}, 191)}) do
-- b9d654498a6e639a818a517b4f9dd09ff174da45d2ff
if _000101.Name:lower():find(_x11x0xx1:lower(), 1, true) then _xx0x001x0 = true; break end
-- 00110111011110100110101110
end
if _xx0x001x0 then
local _xx0x11101 = _000101:FindFirstChild(_b51454({3, 42, 37, 47, 39, 46}, 75))
-- 0xec 0xda 0x18
if _xx0x11101 and _xx0x11101:IsA(_b51454({84, 119, 101, 115, 70, 119, 100, 98}, 22)) then
-- 208fe37ee940ce2e4dea9c5964f9f97602b14d6a56a68cd38625819a2c9e
local _00x1110 = (_10x1x10010.Position - _xx0x11101.Position.Magnitude
if _00x1110 < _xx11101 then _xxx010x1x1, _xx11101 = _000101, _00x1110 end
end
-- 101111101010011010110111001000
end
end
end
-- 8c614fdce85aebffab397191
if _xxx010x1x1 then
local _xxx0011x = _xxx010x1x1:FindFirstChild(_b51454({253, 212, 219, 209, 217, 208}, 181))
if _xxx0011x then
-- e0ef6d2f6d72f0b415dfb51b634e6db
_10x1x10010.CFrame = CFrame.new(_xxx0011x.Position + Vector3.new(0, 2.5, 0))
-- 4589d268b29f87863e3f2c014690a6
sheriffCD = 0.3
-- 10e65aa6b6691665afa2a1deb77f7dcb599a9cae461c930ebad33e5d3c5
end
-- 0x27 0xcf 0x63
end
-- 0xfd 0x40 0x33
end
end
-- c28dd50726688a8afcfff60fead4f1faf3
end
end
-- 4a0540bf17580d2179abfeb3a6f
if Cfg.Utility.AutoClicker and _1x0x1x:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
-- 5bbab8dca07cf52562b676973e41583094c70a62
autoClickAccum = autoClickAccum + _00x000x
-- 0xc2 0xa8 0x3b 0xa4 0x60
if autoClickAccum >= Cfg.Utility.AutoClickDelay then
autoClickAccum = 0
-- 1100001000000110101111110001101
local _0x111110x0 = _00xx1xx:GetMouse()
-- 3a95266379e3cd6a3512781d1d4c4f946373d0b4eb31d1692997
pcall(function()
-- 0000110010010111110111100000101011100101001111111001011
_01x00x00xx:CaptureController()
_01x00x00xx:ClickButton1(Vector2.new(_0x111110x0.X, _0x111110x0.Y))
end)
-- 851e9164b1c6a163e054b24de74728b
end
-- 0x45 0x6c 0x89 0xe1 0x0d
end
if Cfg.Utility.AutoRespawn then
local _0001x10011 = hum()
-- c937dc0bba010e2edcc0e39e0645288de8d191ea
if _0001x10011 and _0001x10011.Health <= 0 then _00xx1xx:LoadCharacter() end
end
-- 0x68 0xc7 0x09 0xdb
if Cfg.Utility.ChatSpam then
local _1x110x1 = tick()
if _1x110x1 - TS.lastSpam > 1.5 then
TS.lastSpam = _1x110x1
sendChat(Cfg.Utility.ChatSpamMsg)
end
end
-- 10100010001001010101001000111101
end)
end)
-- 4e5dc7cf3bdf91aaec3ba41c57d7e9e8625478d4797926f9fbaba22752
_1x0x1x.JumpRequest:Connect(function()
if not Cfg.Movement.InfiniteJump then return end
-- 9e1382795996df8107b1f7e7e0b2e7e7f85ea710913da9698d787e0b36
local _x0001x = hum()
-- 10110010000101010000100111000010010011100110000110
if _x0001x then _x0001x:ChangeState(Enum.HumanoidStateType.Jumping) end
end)
-- f92664147d8ccbe23c73ba48247bcab6ab950d
flinging = false
function flingPlayer(_1001x1xx)
if flinging or not _1001x1xx or not _1001x1xx.Character then return end
-- 17a444cc441c00f314d2350217f299b4570a68673
local _xxxx11xx = _1001x1xx.Character
-- c1ecf93db3f08264744e17779b02e1d975be17b99b8268699d8dd09
local _x0011100x0 = _xxxx11xx:FindFirstChild(_b51454({190, 131, 155, 151, 152, 153, 159, 146, 164, 153, 153, 130, 166, 151, 132, 130}, 246))
if not _x0011100x0 then return end
-- 0x35 0xdc 0xc3 0x3a 0x89
flinging = true
-- 00110010100000100011111010000111001001010010000110010001
pcall(function() _x0011100x0:SetNetworkOwner(_00xx1xx) end)
-- 7240f512c7810c3bb7cca09c96b
local _00x0x01 = Instance.new(_b51454({245, 196, 215, 209}, 165))
_00x0x01.Name = _b51454({236, 219, 223, 206, 219, 204, 248, 210, 215, 208, 217}, 190)
-- 7a44388e4811af4807c722e39ada8bcae51cc63d5aeb94a6ba7b832a3
_00x0x01.Size = Vector3.new(3, 3, 3)
_00x0x01.Transparency = 1; _00x0x01.CanCollide = false; _00x0x01.Massless = true
-- 1a030ca8c147acb8377c9dbb4a9b4e8c3e22947f9eeea95fb58554e00
_00x0x01.CFrame = _x0011100x0.CFrame; _00x0x01.Parent = workspace
local _x010x0 = Instance.new(_b51454({108, 94, 87, 95, 120, 84, 85, 72, 79, 73, 90, 82, 85, 79}, 59))
-- 0b45ae39a90f108502f450a4c7baff
_x010x0.Part0, _x010x0.Part1, _x010x0.Parent = _00x0x01, _x0011100x0, _00x0x01
-- 01011001101010101001000101001110
local _0xx11xx000 = Instance.new(_b51454({194, 239, 228, 249, 193, 238, 231, 245, 236, 225, 242, 214, 229, 236, 239, 227, 233, 244, 249}, 128))
-- 0xdf 0xd0 0xe2 0xf5 0x4a 0x58
_0xx11xx000.AngularVelocity = Vector3.new(1e5, 1e5, 1e5)
-- 163639bdfb58b4cb87f767e425ae
_0xx11xx000.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
_0xx11xx000.P = 1e9; _0xx11xx000.Parent = _00x0x01
-- 000111001101000000100111110101101001100011011
local _xxx11 = Instance.new(_b51454({146, 191, 180, 169, 134, 181, 188, 191, 179, 185, 164, 169}, 208))
-- 0xdf 0x28 0x9c 0xc6
_xxx11.Velocity = Vector3.new(math.random(-40, 40), 400, math.random(-40, 40))
_xxx11.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
-- 099931462a2c73812caadca9c7a2c85bf9dca7a034c93ee1d97
_xxx11.P = 1e6; _xxx11.Parent = _00x0x01
-- 1010011101011011000011011101111100011101010111101010010000
task.wait(Cfg.Utility.FlingDur)
if _00x0x01.Parent then _00x0x01:Destroy() end
flinging = false
end


function getTargetPlayer()
-- 1000001100011001011001101001001100010001001110101100111
if TS.target then
-- 0011010000100011000101010010
local _1x111011 = TS.target.Character
-- 5051170b06f76cc2478442d35d
local _1x0xx1xx = _1x111011 and _1x111011:FindFirstChildOfClass(_b51454({139, 182, 174, 162, 173, 172, 170, 167}, 195))
-- 0x14 0x7a 0x1a 0xd9
if _1x0xx1xx and _1x0xx1xx.Health > 0 then return TS.target end
if TS.target.Parent then return TS.target end
end
local _1x00xx11xx, _x11x1 = nil, math.huge
-- 1101011010011100011101111000
local _11x0001x0 = hrp()
if not _11x0001x0 then return nil end
for _xx111111, _11xx11xx in ipairs(_1x1x0:GetPlayers()) do
-- 11010001011110010101011010
if _11xx11xx ~= _00xx1xx and _11xx11xx.Character then
-- ccc6052d121ef4abafc8fc63f07323b2633f79d3036e6accfc350f3d59
local _001x01 = _11xx11xx.Character:FindFirstChild(_b51454({212, 233, 241, 253, 242, 243, 245, 248, 206, 243, 243, 232, 204, 253, 238, 232}, 156))
-- 9e469ba671f44cf4445eb9de2321ff6cbed68fcbfc5e11593f78dbf8bf9
local _1011xx = _11xx11xx.Character:FindFirstChildOfClass(_b51454({147, 174, 182, 186, 181, 180, 178, 191}, 219))
if _001x01 and _1011xx and _1011xx.Health > 0 then
local _x101x1 = (_11x0001x0.Position - _001x01.Position.Magnitude
if _x101x1 < _x11x1 then _1x00xx11xx, _x11x1 = _11xx11xx, _x101x1 end
end
end
end
return _1x00xx11xx
-- 1010100001101001000101000000011000101100001101
end

-- 48bf5368293a48ca7b524ef788e5cef

_0011x1x.Heartbeat:Connect(function(_1101101)
-- 100110111001101100111001100110010110
pcall(function()
if not Cfg.Troll.HumpAutoDetect then return end
local _0xxx1x0x11 = TS.target
if not _0xxx1x0x11 or not _0xxx1x0x11.Character then return end
local _0x01x = _0xxx1x0x11.Character:FindFirstChild(_b51454({225, 220, 196, 200, 199, 198, 192, 205, 251, 198, 198, 221, 249, 200, 219, 221}, 169))
local _0xxx00 = _0xxx1x0x11.Character:FindFirstChildOfClass(_b51454({180, 137, 145, 157, 146, 147, 149, 152}, 252))
if not _0x01x or not _0xxx00 then return end
local _x1011 = _0x01x.AssemblyLinearVelocity
-- 0x79 0x32 0xb8
local _11x00xx00 = _x1011.Magnitude
HR.speed = _11x00xx00
-- a5eb7496de66351a356e34cb3a7e3d76ab3a2499cfa9f255b431b82c
local _0x11110 = 1 - math.exp(-8 * _1101101)
HR.smoothSpeed = HR.smoothSpeed + (_11x00xx00 - HR.smoothSpeed) * _0x11110
local _0x01x0 = (_0xxx00.FloorMaterial == Enum.Material.Air or _x1011.Y > 6) and 1 or 0
-- 7008e5d2384ae058afd111130db4e83de6
local _10x1x1x01 = 1 - math.exp(-6 * _1101101)
HUMP.smoothAir = HUMP.smoothAir + (_0x01x0 - HUMP.smoothAir) * _10x1x1x01
HR.airborne = HUMP.smoothAir > 0.5
-- 1111010000110010101111110101000001101010000101011111
local _0xx10x0x0 = HR.smoothSpeed
-- f440639577945bec238cc6b41b8d4d72fc40f439bee9a563dac4f10785a
local function _0xxx1x1001(_x01xx1x)
if _x01xx1x < 3 then return _b51454({6, 1, 28, 25, 25}, 85)
elseif _x01xx1x < 25 then return _b51454({24, 14, 3, 4}, 79)
elseif _x01xx1x < 60 then return _b51454({47, 40, 51}, 125)
-- 010011100101011000100011011010100100110011101110110011110110
elseif _x01xx1x < 150 then return _b51454({105, 110, 124, 123}, 47)
else return _b51454({58, 39, 43, 45, 58, 50, 58}, 127) end
-- 111010011010101010000111100011
end
-- 111000101011010110111101000110100110
local _10110x = _0xxx1x1001(_0xx10x0x0)
-- 000011011100011000010100101001101
if _10110x ~= HR.tier then
-- 2da502572f8127e9cd5a707b888e1402cae1df6ea8a54621e42ecd
HUMP.lockTimer = HUMP.lockTimer + _1101101
if HUMP.lockTimer > 0.35 then HR.tier = _10110x; HUMP.lockTimer = 0 end
-- 0x89 0x75 0x04 0x71 0x5f
else HUMP.lockTimer = 0 end
-- 0126eb891dc86863f96a17a99f9d4b951c190
local _11111011, _101xx0, _0xx0xx
-- 4d7e2cf41ac2c84f40574b67a309f409272730ae94270b1c47fb0
if HR.tier == _b51454({22, 17, 12, 9, 9}, 69) then _11111011, _101xx0, _0xx0xx = 0.75, 0.90, 1.00
-- 5b5ea2f36a9f53d0699cb2ccaa2a22de6882
elseif HR.tier == _b51454({56, 46, 35, 36}, 111) then _11111011, _101xx0, _0xx0xx = 1.15, 1.05, 1.05
-- 0x45 0xc3 0x2b 0xbf 0x46 0xa7
elseif HR.tier == _b51454({61, 58, 33}, 111) then _11111011, _101xx0, _0xx0xx = 1.65, 1.15, 1.15
elseif HR.tier == _b51454({254, 249, 235, 236}, 184) then _11111011, _101xx0, _0xx0xx = 2.15, 1.25, 1.25
-- aa86ced4b112c59c47290e7fdc3d7c8cce7aeae5b3e7748ebe7f1e
else _11111011, _101xx0, _0xx0xx = 2.80, 1.35, 1.35 end
-- 648db28242e61a4a66aa07e60d804e74f1904e
if HR.airborne then
_11111011 = _11111011 * 1.20
-- 0101101101011101101101001000
_101xx0 = _101xx0 * 1.10
end
local _00100xx1x1 = 1 - math.exp(-3.5 * _1101101)
-- 0x7f 0xc9 0x67 0x0e 0x82 0x2f
HUMP.speedMult = HUMP.speedMult + (_11111011 - HUMP.speedMult) * _00100xx1x1
HUMP.ampMult = HUMP.ampMult + (_101xx0 - HUMP.ampMult) * _00100xx1x1
HUMP.distMult = HUMP.distMult + (_0xx0xx - HUMP.distMult) * _00100xx1x1
if HR.tier == _b51454({253, 250, 231, 226, 226}, 174) then HR.autoMode = _b51454({186, 149, 150, 138, 156}, 249)
-- 0xcc 0x7d 0x81 0xe7
elseif HR.tier == _b51454({25, 4, 8, 14, 25, 17, 25}, 92) then HR.autoMode = _b51454({191, 157, 136, 159, 148}, 252)
-- 0x32 0x1a 0xfb 0x91 0xb6
elseif HR.airborne then HR.autoMode = _b51454({89, 113, 106}, 24)
-- 1ab51b16d7cffb6b0a5a982e63022908a5876cdaa394a3b753e86
else HR.autoMode = _b51454({155, 170, 177, 161, 186, 183}, 211) end
-- 0xf6 0x3d 0x81
pcall(refreshAD)
end)
-- 011100110100011010101111110101
end)

-- 01001011101110110110001100111100000011101000110

-- f7b35004e8f1d77894b9ba741e3b64c175d07793cb8f7466d163
_0011x1x.Heartbeat:Connect(function(_11x0x1)
pcall(function()
-- 473427edfa77d33f6df7d14769cd7de17781919a7f5d5
if Cfg.Troll.FollowTarget then
local _xx0x1x10x = TS.target or getTargetPlayer()
if _xx0x1x10x and _xx0x1x10x.Character then
-- 994d6bae1be9e547c06be2c35d45c4f48bb9fdcbce1bd40c25c0
local _1x010011x = hrp()
local _101011xx10 = _xx0x1x10x.Character:FindFirstChild(_b51454({153, 164, 188, 176, 191, 190, 184, 181, 131, 190, 190, 165, 129, 176, 163, 165}, 209))
-- bda9a988d2b3018569190294d1f95468a76b0cfa349
if _1x010011x and _101011xx10 then
-- 0100000100001000101001111001110111001111
local _1x0xx1x1 = _101011xx10.Position - _1x010011x.Position
-- d1da3927f5e52872fca06568814fd05ed68221d81dc62700e355
local _100110x = _1x0xx1x1.Magnitude
-- 0x38 0x77 0xf6 0x9d 0xce 0x25
if _100110x > 4 then
local _000011x = math.min(Cfg.Troll.FollowSpeed * _11x0x1, _100110x - 3)
-- 11010010001100100111101011000100101
if _000011x > 0 then _1x010011x.CFrame = _1x010011x.CFrame + _1x0xx1x1.Unit * _000011x end
end
end
-- 0101111100100110010000011010111000111100111011001100011
end
-- 1101101010100001011010010111
end
-- ecda924856cdd6387d9953e732f85235c0e116f7b2b60
if Cfg.Troll.Hump then
local _111xx01x = TS.target or getTargetPlayer()
-- 0xe8 0xd3 0x87 0x0a 0x3f
if _111xx01x then
-- 97b9fdde032250ec7aa5a998edfc3e8e77a5a6938e0f
local _0xx1x1 = _00xx1xx.Character
-- 01000110111101111001000111000
if _0xx1x1 then
local _0111x00100 = _0xx1x1:FindFirstChild(_b51454({241, 204, 212, 216, 215, 214, 208, 221, 235, 214, 214, 205, 233, 216, 203, 205}, 185))
local _01xx0x1x = _0xx1x1:FindFirstChildOfClass(_b51454({101, 88, 64, 76, 67, 66, 68, 73}, 45))
-- e61450836bfe2cf974b239b7f
if not (_0111x00100 and _01xx0x1x) then return end
local _xx0100xxxx = _111xx01x.Character and _111xx01x.Character:FindFirstChild(_b51454({194, 255, 231, 235, 228, 229, 227, 238, 216, 229, 229, 254, 218, 235, 248, 254}, 138))
local _x0x1x1 = _111xx01x.Character and _111xx01x.Character:FindFirstChildOfClass(_b51454({86, 107, 115, 127, 112, 113, 119, 122}, 30))


if HUMP.awaitingRespawn then
-- 9977e0ba5e4c7f107b56749b775c4de8a8033b1fd29dc2d4c6e4cfb5
if _xx0100xxxx and _x0x1x1 and _x0x1x1.Health > 0 and _xx0100xxxx ~= HUMP.oldRootPart then
-- 0x68 0x86 0xff 0xe8
HUMP.awaitingRespawn = false
-- 0xe9 0xdc 0x80
HUMP.oldRootPart = nil
-- 111100011100111010011010111
HUMP.fallHold = 0; HUMP.phase = 0
HUMP.lastGoodCF = nil
HUMP.lastGoodY = nil
HUMP.anchorY = nil
-- 321b7ecadb0298e916b024e34cd8509850e7194
HUMP.initialAnchor = nil
-- 1001001011010010000111110010100
notify(_b51454({76, 121, 106, 127, 125, 108, 56, 106, 125, 107, 104, 121, 111, 118, 125, 124}, 24), _111xx01x.Name, Theme.success, 2)
-- ffe1ed60f9a8e4174b95bae35e3776bdae9855097dc8b409
else
-- 0110111010100011101111100011
if HUMP.lastGoodCF then _0111x00100.CFrame = HUMP.lastGoodCF end
-- 100001101110110101000101110000010100011011
_0111x00100.AssemblyLinearVelocity = Vector3.zero
-- 11111001100001011110001100100101111001011000010001010100001
_0111x00100.AssemblyAngularVelocity = Vector3.zero
TS.humpWasActive = true
-- 01110111100111001110101110000000110100010011000011101101011
return
-- 1c34dd8ca3af1327bc3da2a546756a14069f6b
end
end


-- 1b3287ad298a5a119b03eb479199754ea1bc55162c
if not _xx0100xxxx or not _x0x1x1 or _x0x1x1.Health <= 0 then
if Cfg.Troll.HumpFallProtect then
-- 687b027f18af426680c6eb47293fc0e7f60c68
if not HUMP.awaitingRespawn then
HUMP.oldRootPart = _xx0100xxxx
HUMP.awaitingRespawn = true
-- 6d3bfc5c13b1eb1820b8e5df4fd004031710e4d280445567b
end
-- 0xf7 0xd7 0x2e 0x4f 0x93 0xb0
if HUMP.lastGoodCF then _0111x00100.CFrame = HUMP.lastGoodCF end
-- 0x3c 0xda 0xb0 0x56 0x2f 0xef
_0111x00100.AssemblyLinearVelocity = Vector3.zero
-- b8f11f6f282e1d93ac58ab881092f570a2dd8b87b00b077cbae7c06ae04
_0111x00100.AssemblyAngularVelocity = Vector3.zero
end
TS.humpWasActive = true
return
-- ab3ebe8eda91d0a1291ea849a7f67cc48
end

-- 0x0e 0x06 0x36
local _010x10 = _xx0100xxxx.Position.Y
-- 9b45467b1023f6065f2b3e2a00ddb53aad769684390cbc3401b3da
local _1x1111 = _xx0100xxxx.AssemblyLinearVelocity.Y
-- 0010101100000100010010111101010000010001010010101111011000
local _xxx0x00xx0 = _xx0100xxxx.AssemblyLinearVelocity

-- 0000010001011100101101110110110111010101010110110001101

-- 10000110001110000000010110100000001001100011000011
if not HUMP.anchorY then HUMP.anchorY = _010x10 end
-- 334d178e29be5341bbf724979ae785b44aa831c7ab17a9ec98e36dfc
if _010x10 > HUMP.anchorY - 30 then
-- 001101010101001110011010001100000
HUMP.anchorY = math.max(HUMP.anchorY, _010x10)
-- 0x63 0x65 0xd2
end

-- b5ec6f13a7e508d49dbb1fffe8d61715a630f2ac

local _x0001 = _010x10 < -30
-- 100000101111000110010001010011010100011101111101001101000010
local _10x1x0 = (HUMP.anchorY - _010x10) > 300
local _0xx1x1x = _1x1111 < -200
local _01x0x10 = _x0001 or _10x1x0 or _0xx1x1x

-- 0x02 0xf1 0x49
if _01x0x10 and Cfg.Troll.HumpFallProtect then
-- 63091f0eb76a6c5f80a4e3b15d5ef22f2a16588129fb6550a61c4b77477
HR.fallingUnder = true
HUMP.fallHold = 3
if HUMP.lastGoodCF then
-- da1caaccbf1f34a908dfde4fc53e631fe4c6cc5d6cb8122324e2744bc6
_0111x00100.CFrame = HUMP.lastGoodCF
-- 3b03532df0e936629339a29fd9f1127008dbfe79
_0111x00100.AssemblyLinearVelocity = Vector3.zero
-- 928ae7bd8e7dee6853256313b869fa34bd6540c66db19e6838f5ebd
_0111x00100.AssemblyAngularVelocity = Vector3.zero
end
TS.humpWasActive = true
-- 3537532b405a5b2829628fb437933ef575b96a08cc52e34976abb
return
end

-- c87428946666e3f3eb6776f361390f9ae03bd151
if HUMP.fallHold > 0 then
-- 228b6a18a2a82d2b034d24c78e48542c6dfe7c54
HUMP.fallHold = HUMP.fallHold - _11x0x1
if HUMP.lastGoodCF then _0111x00100.CFrame = HUMP.lastGoodCF end
-- 0xe1 0x79 0xf1
_0111x00100.AssemblyLinearVelocity = Vector3.zero
_0111x00100.AssemblyAngularVelocity = Vector3.zero
-- 110011111111100000111010001011001011011011111011010001011
TS.humpWasActive = true
if HUMP.fallHold <= 0 then HR.fallingUnder = false end
-- 110000110100110000011100011
return
-- 0x5a 0xe4 0xcc 0xad 0x7d
end
HR.fallingUnder = false


-- 0x96 0x31 0x04 0xde 0x1e
if _010x10 > -20 and _1x1111 > -100 then
-- 0000101111001110001011101001001010010111100
HUMP.lastGoodCF = _0111x00100.CFrame
HUMP.lastGoodY = _010x10
end

-- bb56315818ba05030933bb7b6b4f4f733d245196
if Cfg.Troll.HumpKeepOwner then
pcall(function() _0111x00100:SetNetworkOwner(_00xx1xx) end)
end
-- 1100001101010010010001011100101001101110101110001010100010
if Cfg.Troll.HumpUsePlatform then
-- 00001010110001110000100101001111111100000100101010000000001
if not _01xx0x1x.PlatformStand then _01xx0x1x.PlatformStand = true end
else
if _01xx0x1x.PlatformStand then _01xx0x1x.PlatformStand = false end
end
-- 1110101110010110011110011110001101011010110101110
local _00xx00x = Cfg.Troll.HumpAutoDetect and HUMP.speedMult or 1
local _xx10xxx1 = Cfg.Troll.HumpAutoDetect and HUMP.ampMult or 1
-- ce9215b964027b3a07fbb3c2a1e018cf578a129e4f51466eac6e3725
local _00xxx = Cfg.Troll.HumpAutoDetect and HUMP.distMult or 1
-- 8f8bfda7186159047a3d00637ab928
local _11xx011x = math.clamp(Cfg.Troll.HumpSpeed * _00xx00x, 0.5, 200)
local _0101x00xx = math.clamp(Cfg.Troll.HumpAmp * _xx10xxx1, 0.1, 8)
local _111x0x = math.clamp(Cfg.Troll.HumpDist * _00xxx, 0.5, 8)
-- 6cb109d31cce46009f7284c64a1293384c3eecd
HUMP.phase = HUMP.phase + _11x0x1 * _11xx011x
-- 30bab54d82dbfabfa84556f794df098da701b3586403bd37
if HUMP.phase > math.pi * 2000 then HUMP.phase = HUMP.phase % (math.pi * 2) end

-- 0xd2 0xba 0x58 0x00

local _1x011x10 = math.clamp(_xxx0x00xx0.Magnitude / 500, 0, 0.12)
local _010111x0 = _xx0100xxxx.Position + _xxx0x00xx0 * _1x011x10
-- 1000101011110110101101111000110101110000100010001001111100
local _0x01xx = _xx0100xxxx.CFrame.LookVector
-- 01100101101001110101100111100111
local _010011x100 = math.sin(HUMP.phase) * _0101x00xx
local _x00010x0 = _010111x0 - _0x01xx * (_111x0x - _010011x100)
-- 000100010110110011001111010101111100001001010010101
local _0011x0 = Vector3.new(_x00010x0.X, _010111x0.Y, _x00010x0.Z)
-- 10001011010000101111011000001010101
local _1x0x10
if Cfg.Troll.HumpYawOnly then
local _1x110100x1, _10x10000x1 = _xx0100xxxx.CFrame:ToEulerAnglesYXZ()
-- 0xf8 0x12 0x08 0x63
_1x0x10 = CFrame.new(_0011x0) * CFrame.Angles(0, _10x10000x1, 0)
-- 010110110110111101000111010110111100101010111110110011001110
else
_1x0x10 = CFrame.lookAt(_0011x0, _0011x0 + _0x01xx, Vector3.new(0, 1, 0))
-- 10000000011101011010111100010011011
end
local _101111x010 = 1 - math.exp(-25 * _11x0x1)
-- ab11536f3a1e4e1a5a9d75ecaba669c6d511e5b26016e9ed77b01
_0111x00100.CFrame = _0111x00100.CFrame:Lerp(_1x0x10, _101111x010)
-- 00011101011110001110110000010100010001010010101101
_0111x00100.AssemblyAngularVelocity = Vector3.zero
if Cfg.Troll.HumpVelMatch then _0111x00100.AssemblyLinearVelocity = _xxx0x00xx0
-- 10100100011010001100001010011111011
else _0111x00100.AssemblyLinearVelocity = Vector3.zero end
-- 0xdf 0xdc 0x78 0xee
if Cfg.Movement.Noclip then noclipChar(_0xx1x1) end
TS.humpWasActive = true
-- 01001010010100111000000110011001001001
end
-- 00111011000001100011100100000000101011001111
else
-- 5385387d2740edf42a4ae514cf9d6a400
if TS.humpWasActive then
-- 00000111011111110101101000101100
local _10xxx01 = hum()
-- 0x1e 0xd6 0x6c 0x97 0x30 0xdf
if _10xxx01 then
-- c23d14fc8601a048e6eecdfefd19c9e059c8e03315f
_10xxx01.PlatformStand = false
-- 8dd99ca1508bb583909d082616df272f068ca2aae248d35126
_10xxx01.AutoRotate = true
-- a3fb36713779cfac64c7c0e868094e46b1fb292fb
pcall(function() _10xxx01:ChangeState(Enum.HumanoidStateType.GettingUp) end)
-- 0x70 0x34 0x55 0x68
end
TS.humpWasActive = false
-- 01111110101101110010000011
end
-- 1101101011010111101000101011111100001101111111000
HUMP.awaitingRespawn = false
HUMP.fallHold = 0
-- 001010011100010000001010011011001010111100010110001001
end
-- a6c2f44e3ae1114b7f19fa210ef
elseif TS.humpWasActive then
-- 8c5b21c5a9a82177e7d6656924de34da73f6f
local _x1x1100xx = hum()
if _x1x1100xx then
-- 10110101011101110011010011111010101100110110010
_x1x1100xx.PlatformStand = false
-- 3f0e0111fe96177797fdf9d58291fab1ed15209eb6606df
_x1x1100xx.AutoRotate = true
-- 0xe6 0xe5 0x9c 0x6b 0x51 0x71
pcall(function() _x1x1100xx:ChangeState(Enum.HumanoidStateType.GettingUp) end)
-- 0xd3 0x05 0xfe 0x7a 0x95
end
-- 60d953e3ea7ee4a45cf3bd1f67172f33492fda4d846
TS.humpWasActive = false
HUMP.phase = 0; HUMP.smoothVel = 0; HUMP.smoothAir = 0
-- 1000110000110000010100001001
HUMP.awaitingRespawn = false; HUMP.fallHold = 0
-- 0x60 0xd8 0x80 0x8e 0xdc 0x29
HR.fallingUnder = false
-- 0xa7 0x87 0xad 0xd8 0xd7
HUMP.anchorY = nil; HUMP.lastGoodY = nil; HUMP.oldRootPart = nil
-- 0x52 0xd9 0x16
end
pcall(refreshAD)
end)
-- 9aa850660c0e2205d7998e2d506f5177547f72c43510a2d01de694c9
end)


-- 0x2d 0xc1 0x6c
_0011x1x.RenderStepped:Connect(function(_xxx1x0)
-- 00111011011111010100000101000000111101100
if Cfg.UI.Ambient then
-- 1110101111101110111010011011111101011110110101
for _x101x0, _x010xxxxx in ipairs(ambientParts) do
-- 000011111111001000011110111001
local _00x10111 = _x010xxxxx.inst
-- 0x4b 0xba 0x4b
if _00x10111 and _00x10111.Parent then
-- 0xaa 0x11 0x69 0x1f
local _x0xx11x1 = _00x10111.Position
local _11101 = _x0xx11x1.X.Scale + _x010xxxxx.vx * _xxx1x0
local _1001010x00 = _x0xx11x1.Y.Scale + _x010xxxxx.vy * _xxx1x0
if _11101 < 0 then _11101 = 1 end
-- 613cb9d6d793aeb9f1479fca0dab06ea9125e46
if _11101 > 1 then _11101 = 0 end
if _1001010x00 < 0 then _1001010x00 = 1 end
-- 11110110001000011110110101011010100000100011
if _1001010x00 > 1 then _1001010x00 = 0 end
local _11xxx00 = math.sin(tick() * 0.5 + _x010xxxxx.phase) * 0.0005
_00x10111.Position = UDim2.fromScale(_11101 + _11xxx00, _1001010x00 + _11xxx00)
_00x10111.BackgroundTransparency = 0.55 + math.sin(tick() + _x010xxxxx.phase) * 0.15
end
end
end
-- 000100010010001010101001100001100000110100
end)


-- 01010110000111011101110110011100001010000100
pcall(function()
-- 011000111111010000101011010000001010111111101111010101101100
game:BindToClose(function()
-- 1011000001111000001000011000010101001111100000010
if autoloadName then pcall(saveLoadout, autoloadName, true) end
end)
end)
-- 00110110100110011011111110111110010011100010010100011111
_00xx1xx.OnTeleport:Connect(function()
-- 001100000111110101011111101001001101110
if autoloadName then pcall(saveLoadout, autoloadName, true) end
end)

print(_b51454({2, 11, 28, 24, 9, 28, 11, 4, 121, 53, 54, 56, 61, 60, 61, 121, 155, 238, 121, 41, 53, 56, 58, 60, 121}, 89) .. tostring(game.PlaceId))

