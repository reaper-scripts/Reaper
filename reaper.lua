-- ==========================================================
-- BUILD   A1FE4B0F390AFF6264D0CE7A
-- SIG     099E132111C79477BA2A29016762D2CD
-- PAYLOAD a713cc8a4b531ffbe1734bec36276c1f3c9d0d16e4a2b286
-- ==========================================================
-- 00111110101111110110110010011110100011110000001110
-- 1010000000101000000101010010000111010000101000010001011100
-- 0x8e 0x11 0x9f 0x77 0xa3
-- 1010000100000110001000001110001010001100
-- 0x8b 0xe8 0x75
-- 10000011111000111100000100001001111011100

local _045899 = string.char

local_42ed6c77=game:GetService(_045899(82, 117, 110, 83, 101, 114, 118, 105, 99, 101))

-- 1d0a455d2d4a00addb847962f1ed722edb2a49ee89adfc5f78e3

-- 0111011000101100001001010001100110101
if_42ed6c77:IsServer()then
-- 110101000010101010101010011010101000111110101110111001000
local_a378167a=game:GetService(_045899(80, 108, 97, 121, 101, 114, 115))
-- e8513e58d7f31b5b8811ff7f144e25fb1f08c9b2295c706
local_8ca9b=game:GetService(_045899(82, 101, 112, 108, 105, 99, 97, 116, 101, 100, 83, 116, 111, 114, 97, 103, 101))
-- 0x36 0x2f 0x6c 0x48 0xc1 0xab
local_d8e03f24c=_8ca9b:FindFirstChild(_045899(82, 101, 97, 112, 101, 114, 67, 111, 109, 109))
-- 0x44 0x2e 0xd1 0xa3 0x05 0x90
ifnot_d8e03f24cthen
-- 0x55 0x73 0x0f 0x27 0xf1 0x97
_d8e03f24c=Instance.new(_045899(82, 101, 109, 111, 116, 101, 69, 118, 101, 110, 116))
-- 83ffe79e0b5a8d9aa9b95a87df8839a40abc3dba50d
_d8e03f24c.Name=_045899(82, 101, 97, 112, 101, 114, 67, 111, 109, 109)
-- 20e12b5d20ac54b101c37baf6c1b41
_d8e03f24c.Parent=_8ca9b
-- fbfa860a014567149351835590c9ef27e0d956086958b58
end
-- 0x4f 0x8d 0x34 0xaf 0x74 0x27
local_afc0bd27e={}
-- 1e0d704fdb1290d1d6aca1adea87e7b
localfunctionlist()
-- 0x24 0xc1 0x16 0xcb 0xae 0x00
local_7cbed2a6={}
-- 188bda7cbb54c0332650e451b402a11cb7e4c480022aae
for_08531ec7inpairs(_afc0bd27e)doif_08531ec7.Parentthen_7cbed2a6[#_7cbed2a6+1]=_08531ec7.Nameendend
-- 11000110011010001011010000101
table.sort(_7cbed2a6);return_7cbed2a6
end
-- 0x7f 0xc9 0x3c 0x9d 0x87
localfunctionbcast(ch,...)
-- 0x48 0xa1 0x34 0x9c 0x57 0xfc
local_aafd3={...}
local_1534f89db=select(_045899(35),...)
-- 0101000001100010111110001011000101011001110
for_e2b1590inpairs(users)do
if_e2b1590.Parentthenpcall(function()remote:FireClient(_e2b1590,ch,table.unpack(_aafd3,1,_1534f89db))end)end
-- 0xc8 0x8c 0x4e 0x21 0x03 0x70
end
end
-- 0xd6 0x60 0xe5 0xb7 0xc2 0xdd
remote.OnServerEvent:Connect(function(_5e5412d,_11b94)
-- 917f0e5412e8c81339a12ace70c8e276b2d54b565742607e723aad90f0a5
ifnot_5e5412dornot_5e5412d.Parentthenreturnend
if_11b94==_045899(114, 101, 103, 105, 115, 116, 101, 114)thenusers[_5e5412d]={lastSeen=tick()};bcast(_045899(117, 115, 101, 114, 67, 111, 117, 110, 116),#list(),list())
-- 0x2d 0x65 0xf1 0x1a 0xae 0x10
elseif_11b94==_045899(104, 101, 97, 114, 116, 98, 101, 97, 116)thenifusers[_5e5412d]thenusers[_5e5412d].lastSeen=tick()endend
-- 0x6b 0x8f 0x60
end)
Players.PlayerRemoving:Connect(function(_94e64)users[_94e64]=nil;bcast(_045899(117, 115, 101, 114, 67, 111, 117, 110, 116),#list(),list())end)
-- 0x0b 0x16 0xc6 0x5c 0xb4
task.spawn(function()
-- 0x2e 0x0f 0x98 0xf4 0xf9
whiletruedo
task.wait(5)
local_a3ab6047=tick()
-- 6745dfabc23415d62fc1ba675e81a21d3748e0a8e08cc0c91f9d0c
for_23bf3fa95,_99cfb8inpairs(users)do
-- 01001111010100000100000011000110101101100
if_a3ab6047-_99cfb8.lastSeen>30ornot_23bf3fa95.Parentthenusers[_23bf3fa95]=nilend
end
end
end)
-- 9468bc0c1f7b59988ec8f46fad4340c5e2a0a10457d0d838d61193a906b
print(_045899(91, 82, 69, 65, 80, 69, 82, 32, 83, 69, 82, 86, 69, 82, 93, 32, 111, 112, 116, 105, 111, 110, 97, 108, 32, 114, 101, 108, 97, 121, 32, 117, 112))
-- 1010011001100010001101101110010010001010111011
return
end


-- 101100010101001100010110111111000000111100100011110101
if_G.__REAPER_ACTIVEthen
pcall(function()
local_a7ce7e=game:GetService(_045899(80, 108, 97, 121, 101, 114, 115)).LocalPlayer:FindFirstChild(_045899(80, 108, 97, 121, 101, 114, 71, 117, 105))
if_a7ce7ethen
-- 0xa1 0x8b 0xd6
for_3912e2,_4338einipairs(_a7ce7e:GetChildren())do
-- 1010100010001110100101101011
if_4338e.Name:match(_045899(94, 82, 101, 97, 112, 101, 114))then_4338e:Destroy()end
end
-- 0x63 0x6f 0x9d 0x74
end
end)
task.wait(0.25)
-- 6f9f5d7678ebc8dbb3fc693bf6ef60d234e89a
end
_G.__REAPER_ACTIVE=true

-- 1010001100010010111010100000110
local_12573772d=game:GetService(_045899(80, 108, 97, 121, 101, 114, 115))
-- 0x7f 0xf1 0x4e 0xfc
local_907005=game:GetService(_045899(85, 115, 101, 114, 73, 110, 112, 117, 116, 83, 101, 114, 118, 105, 99, 101))
local_5eb6274d0=game:GetService(_045899(82, 117, 110, 83, 101, 114, 118, 105, 99, 101))
-- 0xab 0xe8 0x44 0x67
local_bbffc50c=game:GetService(_045899(84, 119, 101, 101, 110, 83, 101, 114, 118, 105, 99, 101))
local_63459d6=game:GetService(_045899(76, 105, 103, 104, 116, 105, 110, 103))
local_1d60594f=game:GetService(_045899(84, 101, 108, 101, 112, 111, 114, 116, 83, 101, 114, 118, 105, 99, 101))
-- 0xdf 0xab 0xff 0xdd 0xef 0x73
local_15f30f58=game:GetService(_045899(86, 105, 114, 116, 117, 97, 108, 85, 115, 101, 114))
-- e7f55ec43aaa1d22dcb4c67ab7fcbd2d6ea331d0dd0
local_920cc2e=game:GetService(_045899(82, 101, 112, 108, 105, 99, 97, 116, 101, 100, 83, 116, 111, 114, 97, 103, 101))
local_03dc40c=game:GetService(_045899(80, 104, 121, 115, 105, 99, 115, 83, 101, 114, 118, 105, 99, 101))
-- 001100101010110011100111011111100
local_55c54b=game:GetService(_045899(84, 101, 120, 116, 83, 101, 114, 118, 105, 99, 101))
-- edc653b40f1dcf3274ec0c2b2c289d55694ada841fa32ab62842
local_60a733cf=game:GetService(_045899(72, 116, 116, 112, 83, 101, 114, 118, 105, 99, 101))
-- 1101100101101000011001101111000110110010011001000000001111
local_7b4ffe4=_12573772d.LocalPlayer
local_4cad80=workspace.CurrentCamera

-- e626f72a8a72d52524c4352b47e

IO={has=false,reason=_045899(110, 111, 110, 101)}
do
-- 0x94 0xff 0x1d 0x96
localfunctioncheck(env)
-- 149eaaf57d0633c55c45ef8b5
ifnotenvthenreturnnilend
-- 1011101000111111111000011011100101100110001011111011110
local_e0d5bad,_60e7687=pcall(function()returnenv.writefileend)
local_9890c4b,_f4bd6=pcall(function()returnenv.readfileend)
local_77b3f,_e8ccb06=pcall(function()returnenv.isfileend)
-- 1000000011110001001000000011
if_e0d5badand_9890c4band_77b3fandtype(w)==_045899(102, 117, 110, 99, 116, 105, 111, 110)andtype(r)==_045899(102, 117, 110, 99, 116, 105, 111, 110)andtype(i)==_045899(102, 117, 110, 99, 116, 105, 111, 110)then
return_60e7687,_f4bd6,_e8ccb06
-- 01001001100010111011001010000111000001000111
end
-- 01111101100000010001110011000010
end
-- 11001001011110011110010100
local_ef706aa9f={}
ifgetgenvthen
local_a4470544e,_6f6322019=pcall(getgenv)
if_a4470544eandtype(g)==_045899(116, 97, 98, 108, 101)thensources[#sources+1]={g,_045899(103, 101, 116, 103, 101, 110, 118, 40, 41)}end
-- 87ba5d5e1c02f447702e72e411006f91de663
end
_ef706aa9f[#_ef706aa9f+1]={_G,_045899(95, 71)}
ifsharedthen_ef706aa9f[#_ef706aa9f+1]={shared,_045899(115, 104, 97, 114, 101, 100)}end
-- 01111101011010101100100010010010111000
for_7da35c29,_82b02ainipairs(_ef706aa9f)do
local_513db6,_a8e67b,_84391d=check(_82b02a[1])
-- 0x4f 0xe4 0xe1 0x95 0xe7
if_513db6then
-- 0x9a 0xd8 0xdc
IO.write,IO.read,IO.isfile=_513db6,_a8e67b,_84391d
-- 000110000000111101100100101011
IO.has,IO.reason=true,_82b02a[2]
-- 001010011100000000100111110111101001111000110001100100110010
break
-- 0x09 0x71 0x98
end
-- 0xa8 0x70 0x95 0xf2 0x67 0x66
end
-- d38962e941e2c526795dd41312c5bd0ab46937b22a1e1b36786688ef2
end
-- 10111110111100111011000110100010000001101111010011111000
print(_045899(91, 82, 69, 65, 80, 69, 82, 93, 32, 73, 79, 58, 32)..tostring(IO.has).._045899(32, 40)..IO.reason.._045899(41))


KEY_API=_045899(104, 116, 116, 112, 115, 58, 47, 47, 112, 114, 111, 117, 100, 45, 104, 105, 108, 108, 45, 56, 99, 102, 49, 46, 98, 105, 103, 112, 104, 97, 116, 110, 105, 103, 117, 114, 46, 119, 111, 114, 107, 101, 114, 115, 46, 100, 101, 118)
-- cf4aa5cc5e4a19a9148061e0
FEEDBACK_WEBHOOK=KEY_API.._045899(47, 102, 101, 101, 100, 98, 97, 99, 107)
-- 001110100101001101111101100010011010010000
DISCORD_INVITE=_045899(104, 116, 116, 112, 115, 58, 47, 47, 100, 105, 115, 99, 111, 114, 100, 46, 103, 103, 47, 65, 107, 78, 117, 84, 51, 66, 120, 121, 110)
-- 0xc9 0xfa 0x8b 0xf4
GUILD_CHECK_ENDPOINTS={_045899(47, 103, 117, 105, 108, 100, 47, 99, 104, 101, 99, 107)}

functionhttpGet(_db7ec7b)
-- 0x4c 0xfb 0xa1 0x0c
local_9fde7d=(synandsyn.request)or(httpandhttp.request)orhttp_requestorrequest
-- d25aa9bbd2dc52ac93c12de35ac290a0b5c0aa02a8865bd7067f3e1d542
if_9fde7dthen
local_c2767,_0b054d6a7=pcall(_9fde7d,{Url=_db7ec7b,Method=_045899(71, 69, 84)})
-- 0x0f 0x2b 0x85 0xe1 0xc5
if_c2767andtype(res)==_045899(116, 97, 98, 108, 101)then
-- d4a40b2818f1c08366d95f98fb0c9b56d21f295408735484eca7ceceb
returntrue,_0b054d6a7.Bodyor_0b054d6a7.bodyor_045899()
-- 0xf6 0x9d 0xe0 0x4b
end
-- 01110111001001110000110011110001
end
-- 011011110000011010111011000111
ifgame.HttpGetthen
local_e8cf06f1,_c55f7=pcall(function()returngame:HttpGet(_db7ec7b)end)
-- 406b6b8d1413c48335396012f0915280cffca2b51da4e5e8051bf
if_e8cf06f1thenreturntrue,_c55f7end
end
returnfalse,_045899(110, 111, 32, 104, 116, 116, 112, 32, 97, 112, 105)
end

-- 0x59 0x7c 0x15 0x42
functionhttpPost(_9a7825,_951b7a47c)
ifnot_9a7825or_9a7825==_045899()thenreturnfalse,_045899(110, 111, 32, 117, 114, 108)end
-- 0101110000000010000110011010101100100100000
local_893c14fe=(synandsyn.request)or(httpandhttp.request)orhttp_requestorrequest
ifnot_893c14fethenreturnfalse,_045899(110, 111, 32, 104, 116, 116, 112, 32, 97, 112, 105, 32, 97, 118, 97, 105, 108, 97, 98, 108, 101)end
-- d76ef962899bae55cb968a6bee6813d61480dbc67a5ea6717ff4b5e55ae
local_141c4d9,_0298654b=pcall(_893c14fe,{
-- 6f2bcea8ffc76edc9f76bcee727b821f44c58abf
Url=_9a7825,Method=_045899(80, 79, 83, 84),
Headers={[_045899(67, 111, 110, 116, 101, 110, 116, 45, 84, 121, 112, 101)]=_045899(97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110)},
-- 0x8a 0xa1 0x5c 0x27
Body=_951b7a47c,
})
-- 1111110000001101000111000101011101010
ifnot_141c4d9thenreturnfalse,_045899(114, 101, 113, 117, 101, 115, 116, 32, 102, 97, 105, 108, 101, 100, 58, 32)..tostring(_0298654b)end
local_d6ce0,_1c7b5
-- 10100100100111111001011100110111110101011001100010
iftype(res)==_045899(116, 97, 98, 108, 101)then
status=res.StatusCodeorres.Statusorres.status
-- 0xbd 0xaf 0x03 0xc9
respBody=res.Bodyorres.bodyorres.Data
-- 0xdf 0x13 0x04
end
if_d6ce0andtonumber(_d6ce0)andtonumber(_d6ce0)>=400then
returnfalse,_045899(72, 84, 84, 80, 32)..tostring(_d6ce0).._045899(58, 32)..tostring(_1c7b5or_045899())
-- 0x1c 0xd7 0xf6 0xe1 0xe3 0x95
end
returntrue,_0298654b
-- 0101001001010111000101100101110101110110010010011
end

functionpostJSON(_6e164,_418d4c)
-- deb6832f114700c0a1cc9636d4c
local_7b7b7=_60a733cf:JSONEncode(_418d4c)
local_85518f,_816e548=httpPost(KEY_API.._6e164,_7b7b7)
-- 74a4e5710c5aa05af5d49550f648504
ifnot_85518fthenreturnnil,tostring(_816e548)end
-- 0x38 0x45 0xb3 0xdb 0xe2 0x3c
local_6bac16cce=type(res)==_045899(116, 97, 98, 108, 101)and(res.Bodyorres.bodyorres.Data)orres
local_ed31e,_84ba875cd=pcall(function()return_60a733cf:JSONDecode(_6bac16cce)end)
-- 0x4b 0x15 0x5b 0xb2 0x9e 0x6c
if_ed31ethenreturn_84ba875cdend
returnnil,_045899(98, 97, 100, 32, 114, 101, 115, 112, 111, 110, 115, 101)
-- 0x54 0xe5 0x3e 0x34
end

-- 0x87 0x85 0x5f 0x9e
functionparseErrorReason(_9203eed)
local_a0c0006f=tostring(_9203eed)
-- 011101100101111111110000111000101010000010
local_600d10a=_a0c0006f:match(_045899(40, 123, 46, 42, 125, 41))
-- 0x50 0x4d 0x37 0x4b 0x57 0x64
if_600d10athen
local_a1d604b8,_4dba216f1=pcall(function()return_60a733cf:JSONDecode(_600d10a)end)
-- 0xb4 0xc9 0x1c 0x2e 0x7a 0xed
if_a1d604b8andtype(d)==_045899(116, 97, 98, 108, 101)then
if_4dba216f1.errorthen
if_4dba216f1.reasonthenreturntostring(_4dba216f1.error).._045899(32, 194, 183, 32)..tostring(_4dba216f1.reason)end
-- 111011010010100101010001001111001010010111101011100101
local_ddeb4=_4dba216f1[_045899(117, 110, 116, 105, 108)]
-- 0xbc 0x38 0xc4 0x5f 0x3d 0x5f
if_ddeb4thenreturntostring(_4dba216f1.error).._045899(32, 194, 183, 32, 117, 110, 116, 105, 108, 32)..tostring(_ddeb4)end
-- 111010100100100111011000
returntostring(_4dba216f1.error)
-- 00111100001111111000000100011000110000111010011100111
end
end
-- 0xd8 0x9c 0xb4 0x52 0xab
end
return_a0c0006f
end


-- 0x3c 0xfa 0x54
MY_USER=nil
RemoteRanks={}
BADGE_STYLE={
-- 0x2b 0x61 0xa5 0x60 0x51
owner={label=_045899(79, 87, 78, 69, 82),emoji=_045899(240, 159, 145, 145),color=Color3.fromRGB(200,120,255)},
-- a6c9ac3a6e2e79674a209e8c4e5cec4a54b5
mod={label=_045899(77, 79, 68),emoji=_045899(240, 159, 155, 161, 239, 184, 143),color=Color3.fromRGB(160,220,255)},
-- 1101110001100011110000000001011011100101
}
functiongetLocalRank()returnMY_USERandMY_USER.rankornilend
-- 11001001100101011110111001001011111101000110
functiongetRankFor(_f5582db50)
_f5582db50=tonumber(_f5582db50)or_f5582db50
-- 1001101000110001101011011111101100000110000
if_f5582db50==_7b4ffe4.UserIdandMY_USERandMY_USER.rankthen
-- 0101001011110101101011000100011001
returnMY_USER.rank,MY_USER.badgeUrl
end
-- 1100010001100000011110001001110
local_7baaed218=RemoteRanks[_f5582db50]orRemoteRanks[tostring(_f5582db50)]
-- 0xf0 0x1a 0xef 0xa5
if_7baaed218thenreturn_7baaed218.rank,_7baaed218.badgeUrlend
returnnil,nil
-- 31d709548a9f1d920d8578a71c1ff5c676bd05755f2a0fc3186cd3af1c3f
end
functionisMod()returngetLocalRank()~=nilend
functionisOwner()returngetLocalRank()==_045899(111, 119, 110, 101, 114)end

-- c7c306d1f16da9bd11480fe8516949187b24a2c964e9263e9

functionflagEmoji(_768df91)
-- 3caf85ca38e7695cd23782b7d8455bec066ea233ef3eed
ifnot_768df91or#_768df91~=2thenreturn_045899(240, 159, 140, 141)end
-- 011101001000011010010110000011110010
_768df91=_768df91:upper()
local_c6fbeea,_dfde99=_768df91:byte(1)-65,_768df91:byte(2)-65
-- db1c7db09c178ad46d06e2bca059bde89a7b263cef0efee25b7f065ee
if_c6fbeea<0or_c6fbeea>25or_dfde99<0or_dfde99>25thenreturn_045899(240, 159, 140, 141)end
returnutf8.char(0x1F1E6+_c6fbeea)..utf8.char(0x1F1E6+_dfde99)
-- 010011101110010101100001011101000101
end
functionfetchCountry(_77e48)
-- 27ded3de90836f734fdeeae69280ea1f76dd2c2fe5cd21f1a76b3
task.spawn(function()
-- 0x41 0xb6 0xfb 0xc8 0x97 0x41
local_152b1139,_4c37a940=httpGet(_045899(104, 116, 116, 112, 58, 47, 47, 105, 112, 45, 97, 112, 105, 46, 99, 111, 109, 47, 106, 115, 111, 110, 47, 63, 102, 105, 101, 108, 100, 115, 61, 115, 116, 97, 116, 117, 115, 44, 99, 111, 117, 110, 116, 114, 121, 44, 99, 111, 117, 110, 116, 114, 121, 67, 111, 100, 101))
if_152b1139and_4c37a940then
-- 111110000111101011010000
local_e5ab7d,_8bf81aa=pcall(function()return_60a733cf:JSONDecode(_4c37a940)end)
if_e5ab7dandtype(d)==_045899(116, 97, 98, 108, 101)andd.countrythencb(d.country,d.countryCodeor_045899());returnend
-- f1b5524623ecd0a2b0ef0089890cb557b1bc936a7029f612f484f49e
end
_152b1139,_4c37a940=httpGet(_045899(104, 116, 116, 112, 115, 58, 47, 47, 105, 112, 97, 112, 105, 46, 99, 111, 47, 106, 115, 111, 110, 47))
if_152b1139and_4c37a940then
local_48631,_57d95c=pcall(function()return_60a733cf:JSONDecode(_4c37a940)end)
-- 010111011111100010100011010101011000
if_48631andtype(d)==_045899(116, 97, 98, 108, 101)andd.country_namethencb(d.country_name,d.country_codeor_045899());returnend
-- 100010101001101001111101000111011001000010111
end
_77e48(_045899(85, 110, 107, 110, 111, 119, 110),_045899())
end)
-- 0xbf 0x24 0xcb
end

-- 01010100000001001011110011001000111101
chatAvatarCache={}
localfunctionstrHash(s)
-- 5622bd51e6350be24207d92cbb0fa76950cf5693dfa8437a51c4f90
local_3f141=5381
for_08ffe=1,#sdo_3f141=(_3f141*33+s:byte(_08ffe))%2147483647end
-- 664bd48cffdae8606e06281821dec6852c
returnstring.format(_045899(37, 120),_3f141)
-- 10010001001111011101100010100111101
end
-- 0x05 0x01 0xf2 0x50 0x8f
functiongetChatAvatarAsset(_0101776)
-- 010010101111010000100000001001010000001100001100010111
ifnot_0101776or_0101776==_045899()thenreturnnilend
ifchatAvatarCache[_0101776]~=nilthenreturnchatAvatarCache[_0101776]ornilend
-- b6c55d4a2863ce6291fd41f17c15a6f7edf20f6f88697
ifnotIO.hasortype(getcustomasset)~=_045899(102, 117, 110, 99, 116, 105, 111, 110)then
chatAvatarCache[url]=false;returnnil
end
-- 9096da0391b1192ec9e861806
local_9b1c2e=_045899(82, 101, 97, 112, 101, 114, 95, 97, 118, 95)..strHash(_0101776).._045899(46, 112, 110, 103)
-- d2c2141fdf56c90d2aa3e41eec9a520cae92496fcd43ae76cc28
local_b6203,_c8eb3de1=pcall(IO.isfile,_9b1c2e)
-- 0x4f 0x7e 0x30
ifnot_b6203ornot_c8eb3de1then
-- 5043bf6f540407225771c58c3e4c8a46ee
local_b9f9e397=(synandsyn.request)or(httpandhttp.request)orhttp_requestorrequest
ifnot_b9f9e397thenchatAvatarCache[_0101776]=false;returnnilend
-- 0x6b 0x01 0x7c
local_d5c5c1,_558e7=pcall(_b9f9e397,{Url=_0101776,Method=_045899(71, 69, 84)})
-- c0a296526f11387cfcdf67796ded6ecff5de3326ebbda2666bd37be
ifnot_d5c5c1ortype(res)~=_045899(116, 97, 98, 108, 101)ornotres.Bodythen
-- 0001000011110001101111000010100
chatAvatarCache[url]=false;returnnil
-- 35ad07ddbe6733086c6eef194a693d6c3035620b4bb2f5c854f4bc80e9
end
-- 0x5b 0x49 0xbf 0x68 0x8c 0x57
ifnotpcall(IO.write,_9b1c2e,_558e7.Body)then
-- 0x78 0x24 0x1f 0x5e 0xc4
chatAvatarCache[_0101776]=false;returnnil
end
end
local_c704ad,_b2ca8d5=pcall(getcustomasset,_9b1c2e)
if_c704adand_b2ca8d5thenchatAvatarCache[_0101776]=_b2ca8d5;return_b2ca8d5end
-- 1001111001101110001111000010001110011
chatAvatarCache[_0101776]=false
-- 0x9a 0x41 0x11 0x51 0xd4
returnnil
-- 0xf9 0x16 0xe8 0xb3
end


Theme={
bg=Color3.fromRGB(3,2,8),
bgDeep=Color3.fromRGB(1,1,4),
-- 100010110001000100110001001110
panel=Color3.fromRGB(12,8,22),
-- 0xe2 0x4b 0x5f 0x41
panel2=Color3.fromRGB(22,14,40),
panel3=Color3.fromRGB(42,24,72),
-- 00000101001011011000111101
stroke=Color3.fromRGB(150,80,255),
-- 0x25 0x8a 0x2e 0x46
strokeSoft=Color3.fromRGB(80,40,140),
-- 0xab 0x45 0x86 0x16 0xc3
accent=Color3.fromRGB(170,90,255),
-- 1111110000100010111101110101011
accent2=Color3.fromRGB(220,180,255),
accent3=Color3.fromRGB(240,110,255),
text=Color3.fromRGB(240,235,255),
-- 0x87 0x57 0x2c 0x5c
muted=Color3.fromRGB(155,130,195),
-- e47073d4ed707d1733c7fc92fcd9d
success=Color3.fromRGB(120,245,175),
-- 0x93 0x4f 0x13 0xa6 0x76
danger=Color3.fromRGB(255,105,140),
gold=Color3.fromRGB(255,220,130),
-- 628e97e7733c80d64be076d697d
neon=Color3.fromRGB(200,100,255),
neonDark=Color3.fromRGB(60,20,120),
-- 093770ec192d5c54b92face96ec5f9399ce277d578cce06f6dfef1e5
ticker=_045899(82, 69, 65, 80, 69, 82, 32, 194, 183, 32, 117, 110, 105, 118, 101, 114, 115, 97, 108, 32, 99, 104, 101, 97, 116, 32, 115, 117, 105, 116, 101, 32, 32, 194, 183, 32, 32, 64, 100, 57, 118, 113, 32, 111, 110, 32, 100, 105, 115, 99, 111, 114, 100, 33),
-- 11111000000110111000011010111001001000000010001101110111
tickerColor=Color3.fromRGB(200,130,255),
tickerAccent=Color3.fromRGB(240,120,255),
-- 010000101001000001000010010011110010
sakura={active=false,leaves={count=80,speed=22,sway=1.4,size=5}},
snow={count=60,speed=25,size=2},
rain={count=28,speed=90,thickness=2},
}
-- 0x36 0x27 0x3f 0xcf 0x5f
local_1cf11ab={
bg=Color3.fromRGB(3,2,8),panel=Color3.fromRGB(12,8,22),
-- d3cd98281bf40ea4fa22545f9e54d598c
panel2=Color3.fromRGB(22,14,40),panel3=Color3.fromRGB(42,24,72),
stroke=Color3.fromRGB(150,80,255),strokeSoft=Color3.fromRGB(80,40,140),
accent=Color3.fromRGB(170,90,255),accent2=Color3.fromRGB(220,180,255),
accent3=Color3.fromRGB(240,110,255),text=Color3.fromRGB(240,235,255),
-- 0x41 0x99 0x98
muted=Color3.fromRGB(155,130,195),
tickerColor=Color3.fromRGB(200,130,255),tickerAccent=Color3.fromRGB(240,120,255),
-- 528ca7156f36eb1c888e92a3932f1a780
}
local_1a8cd0274={
-- acb6d3c3650ac2a44b2f826fdedef
bg=Color3.fromRGB(18,6,20),panel=Color3.fromRGB(38,14,40),
-- 1000111100000010001011100000101111000101
panel2=Color3.fromRGB(60,24,62),panel3=Color3.fromRGB(95,40,100),
-- 0x14 0x30 0xf2 0x25 0x23 0x6d
stroke=Color3.fromRGB(240,130,220),strokeSoft=Color3.fromRGB(160,80,150),
-- 12f8c67fc57f2c787141c8cc93233f1c07
accent=Color3.fromRGB(255,120,200),accent2=Color3.fromRGB(255,200,235),
-- 0xaa 0xe2 0xd2 0x33 0x07
accent3=Color3.fromRGB(230,120,255),text=Color3.fromRGB(255,240,250),
-- 0xc0 0xf5 0x93 0x71 0xce
muted=Color3.fromRGB(215,165,210),
-- d2dd38172046e5b5dda179d2a8932dc50
tickerColor=Color3.fromRGB(255,160,220),tickerAccent=Color3.fromRGB(255,200,235),
-- 10011001101101011011010101111101011011100011011110110000
}
functionTheme.setPalette(_cbc59d5e)
-- 0xfc 0xb9 0x96 0x9e 0xac
local_1c99b0=(_cbc59d5e==_045899(83, 97, 107, 117, 114, 97))and_1a8cd0274or_1cf11ab
for_75d8edf0,_f3928inpairs(_1c99b0)doTheme[_75d8edf0]=_f3928end
-- 0x3c 0xff 0x93
Theme.sakura.active=(_cbc59d5e==_045899(83, 97, 107, 117, 114, 97))
end

-- 0x2d 0x4b 0xf1 0x18 0x26
ESPColours={
ally=Color3.fromRGB(90,160,255),enemy=Color3.fromRGB(255,80,110),
-- 0x01 0xc2 0xc8 0x98
police=Color3.fromRGB(90,160,255),criminal=Color3.fromRGB(230,46,46),
-- 11100011000010010010101011101100010101
prisoner=Color3.fromRGB(255,156,62),sheriff=Color3.fromRGB(90,160,255),
-- 0x2b 0xa3 0x85
murderer=Color3.fromRGB(230,46,46),innocent=Color3.fromRGB(96,226,126),
-- 321cdca63cdd2a9d8481c9b3972c9c710ce786e658e0401854
united=Color3.fromRGB(56,138,255),iron=Color3.fromRGB(230,46,46),
-- 224f9a797b3d31d2afb185ffea5066f550bd
}


-- 111011011010100111110110110100000001
TS={target=nil,hovered=nil,humpWasActive=false,lastSpam=0}
HR={speed=0,smoothSpeed=0,tier=_045899(83, 84, 73, 76, 76),airborne=false,airTimer=0,
-- 0x5e 0x97 0xff
teleporting=false,autoMode=_045899(72, 121, 98, 114, 105, 100),fallingUnder=false,
-- 0x57 0x4f 0xd1 0xbb 0xdd
lastGood=nil,respawnPending=false}
HUMP={
-- 0xfe 0x45 0x6f 0xd9 0x0c
phase=0,smoothVel=0,smoothAir=0,lastTier=_045899(83, 84, 73, 76, 76),lockTimer=0,
-- 0x43 0x3b 0x97
speedMult=1.0,ampMult=1.0,distMult=1.0,
fallHold=0,lastGoodCF=nil,awaitingRespawn=false,
-- 011100000010011110111100111110000111010010100001101
}
-- 0x58 0x7d 0xf4 0xe8
RA={keys={teleport=nil,spectate=nil,hump=nil},spectateTarget=nil,spectateZoom=1}
PREFERRED_KEYS={
Enum.KeyCode.One,Enum.KeyCode.Two,Enum.KeyCode.Three,
-- 8986630b5302ac82b336e3f331c3d25a22c84f7743
Enum.KeyCode.Four,Enum.KeyCode.Five,Enum.KeyCode.Six,
-- 101110101010101011110011011101101101100100
Enum.KeyCode.Q,Enum.KeyCode.E,Enum.KeyCode.R,
Enum.KeyCode.F,Enum.KeyCode.G,Enum.KeyCode.V,
}

-- 0x28 0xb1 0x04

-- 0xbc 0x0c 0x9b
Chat={messages={},listeners={},max=400}
-- 0110011010110010011000000111101000101011001011110101000101
chatSeenIds={}
-- 010100010001010000010011000101011011100110
functionaddChat(_8ec721,_f42f0,_f028f,_0e416,_0bf2384e,_9c53f3,_8279f9,_19fc210e,_d9ba01,_1df90,_88c44e171,_b813cddb1,_fe2a9fa)
if_1df90then
ifchatSeenIds[_1df90]thenreturnend
chatSeenIds[_1df90]=true
end
local_a51ddc={
-- 9dd8485a2517ee780a3939a38b828
sender=_8ec721or_045899(63),text=tostring(_f42f0or_045899()),
-- 10101000011000011001011111100000010010001100
isLocal=_f028fandtrueorfalse,
-- 00000100010011001101101100111110
col=_0e416orColor3.fromRGB(148,204,255),
-- 00111011100100001011010110011011110000111000001000
time=_b813cddb1and(_b813cddb1/1000)ortick(),
avatar=_0bf2384e,discordName=_9c53f3,
-- 35933926366a1dad8514865bb0421549d3240be8c9297d031e99
country=_8279f9,countryCode=_19fc210e,userId=_d9ba01,
msgId=_1df90,placeId=_88c44e171,discordId=_fe2a9fa,
}
-- 0x03 0xb9 0xac 0x3d
Chat.messages[#Chat.messages+1]=_a51ddc
-- 0x8f 0x90 0x7a
if#Chat.messages>Chat.maxthentable.remove(Chat.messages,1)end
-- afd0728b1d874f81c2dcdb344bebe5291b35df967bf8f920568245
for_d33ae,_13106018inipairs(Chat.listeners)dopcall(_13106018,_a51ddc)end
end

-- 0x8b 0x70 0x61 0x95
functionsendChat(_704227a)
_704227a=tostring(_704227aor_045899()):gsub(_045899(94, 37, 115, 43),_045899()):gsub(_045899(37, 115, 43, 36),_045899())
-- 0x1c 0x43 0x82 0x2c 0x46
if_704227a==_045899()thenreturnfalseend
-- 178417f9a21960057989121daf5a2dd08a87823a586aace1
if#_704227a>200then_704227a=_704227a:sub(1,200)end
-- f6b10076e6089c199a08f254b899ad69615aab972e
ifnotSESSION_KEYorSESSION_KEY==_045899()then
notify(_045899(67, 104, 97, 116),_045899(78, 111, 116, 32, 118, 101, 114, 105, 102, 105, 101, 100, 32, 121, 101, 116),Theme.danger,3)
-- 40e364c56f64cf67a0fc2f2aa4b
returnfalse
end
-- 0x63 0xff 0x99 0xde
task.spawn(function()
-- 71d5085f246f50910f33d5dfdec1365346acc757
local_9c346455=_60a733cf:JSONEncode({
-- 1111000110001001101000001001011000000010100000011001000
robloxId=tostring(_7b4ffe4.UserId),key=SESSION_KEY,
-- 0x04 0xa2 0x21 0xda 0x34
text=_704227a,placeId=tostring(game.PlaceId),
-- 0101001001011100100001100100010110011
})
-- 01001110010010011101011010100000100111100110111111
local_41395a4f0,_9b533755=httpPost(KEY_API.._045899(47, 99, 104, 97, 116, 47, 115, 101, 110, 100),_9c346455)
ifnot_41395a4f0then
-- 0xe5 0x10 0xf4 0x54
local_07c98e4c3=parseErrorReason(_9b533755)
notify(_045899(67, 104, 97, 116, 32, 102, 97, 105, 108, 101, 100),_07c98e4c3,Theme.danger,8,_07c98e4c3)
-- 0x20 0xfe 0x6a 0x7c 0xe1 0xc9
end
-- 00000001100111100010011001000111011011101001
end)
returntrue
end

-- 10111001000010000101111000000111011110000010001000111110101

-- 00101010101101000111100010010000
Cfg={
Aimbot={Enabled=false,Key=Enum.UserInputType.MouseButton2,ToggleMode=false,
FOV=180,Smoothness=8,Strength=6,TargetPart=_045899(72, 101, 97, 100),
TeamCheck=false,VisibleOnly=false,ShowCircle=true,Humanize=true,MaxDist=1000},
-- 10101100110000011101110110010010111001010000100110101100101
Trigger={Enabled=false,Key=Enum.UserInputType.MouseButton1,
-- 0x18 0xb0 0x04
Radius=20,Delay=0.05,TeamCheck=true},
-- 96aa0d08629051e2363260218ab4eeb72385b1e6
Visuals={Enabled=false,NameTags=true,Distance=true,ShowRole=true,
-- 0xfe 0x9e 0xa6 0x19 0xc3
Mode=_045899(84, 101, 97, 109),Fill=0.55,RainbowSpeed=0.5,
NoFog=false,InfZoom=false,FOVMin=0.5,FOVMax=120},
-- 100011000101001011111011111100000
Movement={Noclip=false,SpeedEnabled=false,Speed=32,
JumpEnabled=false,JumpPower=80,InfiniteJump=false,
-- 2044b5fbfa5a01e03227fa3613fbaf8
Fly=false,FlySpeed=60,FlySmooth=12,FlyBoost=2.5,
-- 085feb746944be5e75446db7dc651f
GodMode=false,Freecam=false,FreecamSpeed=50,FreecamSens=1,
-- 0xc9 0xf6 0xb5
Sprint=false,SprintSpeed=60,Bunnyhop=false,
-- 00010110100101000000011010011
Spinbot=false,AntiFling=false,AntiAFK=false},
World={Fullbright=false,TimeEnabled=false,Time=14,
-- 6f9688a6ba6badaa58acb729d553ad36ac1d93
GravityEnabled=false,Gravity=196.2,
-- 2943f18a4c9c43922a6b4a3c96aecd37dc4d1898cb2933681e1
RemoveBlur=false,FOVEnabled=false,FOV=70},
-- 0x85 0x78 0x20
Utility={FlingPower=60000,FlingDur=4,
-- 0xb0 0x1b 0xfd
AutoClicker=false,AutoClickDelay=0.05,
AutoRespawn=false,ChatSpam=false,ChatSpamMsg=_045899(82, 69, 65, 80, 69, 82),
AutoSheriff=false,AutoSheriffRange=120},
Troll={FollowTarget=false,FollowSpeed=55,
Hump=false,HumpSpeed=8,HumpAmp=1.5,HumpDist=1.6,
HumpYawOnly=false,HumpKeepOwner=true,HumpUsePlatform=false,
-- 0x66 0x95 0x10 0xc8 0x83
HumpOverrideFly=true,HumpVelMatch=true,HumpAutoDetect=true,
HumpFallProtect=true,TapTarget=false,TapRadius=30},
-- 27a1a848f51dacbf7f34fa40726384e322ff7a
UI={MenuKey=Enum.KeyCode.X,HUDKey=Enum.KeyCode.H,
HUD=true,ADKey=Enum.KeyCode.J,AD=true,
-- 8878b0d613295e34f3024fd045
MenuOpacity=0,MenuBlur=true,AnimatedOpen=true,
MenuResizable=true,MinW=480,MinH=380,
HUDMovable=true,HUDResizable=true,ADMovable=true,ADResizable=true,
Juicy=true,Notifs=true,Ambient=true,
ShimmerHeaders=true,BorderGlow=true,
-- 698517e66fb1f0f02ece48fb104b74dc8833fc02e05318
Sakura=false,SakuraLeaves=80,SakuraSpeed=22,
-- c78b2e52316ab38fb54f4abcf81eeb4b0d032312e8bea92
Crosshair=true,CrosshairSize=26,CrosshairThick=2,
-- e2a2e0d82a667a5ff503f79b55ad99b64f33ac24433a3e8133
CrosshairPulse=true,HideCrossOnMenu=true,
-- d31569250d470656a65f22ea468016f74f97da1a30d
ReticleRings=true,ReticleLine=true,ReticleHP=true,
-- 76d6e192de7325a01a07ec07
ReticleMode=_045899(65, 117, 116, 111),ReticleR=140,ReticleG=220,ReticleB=255},
-- 0x39 0xd9 0xd1
Binds={},
}


functionnew(_757ea,_1ca888,_42140ba)
local_1ace9854=Instance.new(_757ea)
for_6d6da4aa,_e0880dinpairs(_1ca888)do_1ace9854[_6d6da4aa]=_e0880dend
if_42140bathen_1ace9854.Parent=_42140baend
return_1ace9854
-- 0011010010100001110000101100001101
end
functioncorner(_7a6599a,_81ee9b)returnnew(_045899(85, 73, 67, 111, 114, 110, 101, 114),{CornerRadius=UDim.new(0,_81ee9bor6)},_7a6599a)end
functionstroke(_f4610a,_0e99496,_26cbb90f,_3cf55ac3)
-- 0x41 0xbe 0x09 0x1b 0xa6
returnnew(_045899(85, 73, 83, 116, 114, 111, 107, 101),{Color=_0e99496,Thickness=_26cbb90for1,Transparency=_3cf55ac3or0,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border},_f4610a)
-- 011010100110101111111100110001010100011000101
end
-- 111011110101100010110111101100001010011011101110010011000101
functiongrad(_bc3dcca4,_13cc6,_b61a3bb,_fac81)
-- a1df08ac301947c17dd9883684aeccd72bce8c18a97fcab21f2
returnnew(_045899(85, 73, 71, 114, 97, 100, 105, 101, 110, 116),{Color=ColorSequence.new(_13cc6,_b61a3bb),Rotation=_fac81or90},_bc3dcca4)
end
functiondropShadow(_92b37598b,_84f25,_e0cf58ae0,_3d6587c1)
-- 5235207e0ec312f79f8eccdd19dea7a4758cf57bc5506a
local_4f886a=new(_045899(70, 114, 97, 109, 101),{
Size=UDim2.new(1,_e0cf58ae0or12,1,_e0cf58ae0or12),
-- 0x81 0xed 0xf7
Position=UDim2.new(0.5,0,0.5,(_e0cf58ae0or12)/4),
-- 1011111001110011100001101011001000000000010011110100010011
AnchorPoint=Vector2.new(0.5,0.5),
-- cf68e84f3ce748a0c01a87d3ae996f90e59530225ee
BackgroundColor3=Color3.new(0,0,0),
-- 010111000001100001000111101000101110
BackgroundTransparency=_3d6587c1or0.55,
-- 0xd0 0x1a 0xef
BorderSizePixel=0,
-- 011001110101000000100000110111111001010111000110100
ZIndex=(_92b37598b.ZIndexor1)-1,
-- 82abd3d945dbebcb767446df9d939d33aacc347e0f1f
},_92b37598b.Parent)
-- 0101001011000001010000001010
corner(_4f886a,_84f25or18)
return_4f886a
-- 0x80 0x90 0xb8
end
-- 1001100001110111101000001010010000010111011110010010
functionhum()local_87c47d1=_7b4ffe4.Character;return_87c47d1and_87c47d1:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))end
functionhrp()local_18e511=_7b4ffe4.Character;return_18e511and_18e511:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))end
functiontBg(_520af4)_520af4:SetAttribute(_045899(84, 95, 66, 103),true);return_520af4end
functiontPanel(_d432751cd)_d432751cd:SetAttribute(_045899(84, 95, 80, 97, 110, 101, 108),true);return_d432751cdend
-- 0x21 0x5a 0x62
functiontPanel2(_2f7a854)_2f7a854:SetAttribute(_045899(84, 95, 80, 97, 110, 101, 108, 50),true);return_2f7a854end
-- c986bc617d04ebbce0d7bf534fe9f6eba79
functiontStroke(_1e59fa)_1e59fa:SetAttribute(_045899(84, 95, 83, 116, 114, 111, 107, 101),true);return_1e59faend
-- 48952918982130778d371955af0794f7523d6910b0f4ce80bba
functiontAcc(_68db6f7)_68db6f7:SetAttribute(_045899(84, 95, 65, 99, 99),true);return_68db6f7end
functiontAcc2(_8eda57cc5)_8eda57cc5:SetAttribute(_045899(84, 95, 65, 99, 99, 50),true);return_8eda57cc5end
-- 0xfb 0x83 0xfe
functiontText(_6bc681)_6bc681:SetAttribute(_045899(84, 95, 84, 101, 120, 116),true);return_6bc681end
functiontMuted(_d5d9fa)_d5d9fa:SetAttribute(_045899(84, 95, 77, 117, 116, 101, 100),true);return_d5d9faend
functiongetPath(_ec72cf74b,_f78aa17b)
local_d6f15a4=_ec72cf74b
-- 4eefcb882ac0654c3e5dfff6fcbb16149724b74c439dac843
for_e5dbce1in_f78aa17b:gmatch(_045899(91, 94, 37, 46, 93, 43))do
iftype(c)~=_045899(116, 97, 98, 108, 101)thenreturnnilend
_d6f15a4=_d6f15a4[_e5dbce1]
if_d6f15a4==nilthenreturnnilend
-- 12ad460fefa1f2a5806fa2c7dce0345a25c9
end
return_d6f15a4
-- 1010010110011001001011001111111111011100011
end
functionsetPath(_abf1c,_f719c9,_bb5a595c)
local_d53952={}
for_ecb56d3in_f719c9:gmatch(_045899(91, 94, 37, 46, 93, 43))do_d53952[#_d53952+1]=_ecb56d3end
local_f2216=_abf1c
-- 65dfd19ed05e07678fc1cfcc3312470df31
for_631e9=1,#_d53952-1do
_f2216=_f2216[_d53952[_631e9]]
-- 0x60 0xc4 0x71 0x99 0xba
iftype(c)~=_045899(116, 97, 98, 108, 101)thenreturnend
end
-- 1111110100101000111101001110001
_f2216[_d53952[#_d53952]]=_bb5a595c
-- 000101000101100110000011101100110
end
-- 01011010111010010100100010001001000111110
functiondeepCopy(_17388653)
-- 0x8d 0x2b 0x9a 0xc9 0xd2 0x21
iftype(t)~=_045899(116, 97, 98, 108, 101)thenreturn_17388653end
local_c13232={}
-- 8092e0b2ca746eb06301e05d17d628acb34a28af9cc
for_36d9840e,_23f9ea39einpairs(_17388653)do_c13232[_36d9840e]=deepCopy(_23f9ea39e)end
-- 1011110100001001001000111010001
return_c13232
end

-- 27593cabbcce8ce322873b0a44b63a594b3d1

-- 001100010111010010010101111100100000011110011101101
functionsaveFile()return_045899(82, 101, 97, 112, 101, 114, 95)..tostring(game.PlaceId).._045899(46, 106, 115, 111, 110)end
functionautoloadFile()return_045899(82, 101, 97, 112, 101, 114, 95, 97, 117, 116, 111, 95)..tostring(game.PlaceId).._045899(46, 116, 120, 116)end
-- 0x57 0x09 0xf0 0x9c
functionglobalAutoloadFile()return_045899(82, 101, 97, 112, 101, 114, 95, 103, 108, 111, 98, 97, 108, 95, 97, 117, 116, 111, 46, 116, 120, 116)end

-- 010011000011111111111111011100100001010010010111001000101110
saves=_G.__ReaperSavesor{}
_G.__ReaperSaves=saves
autoloadName=_G.__ReaperAutoloadornil

-- 5ac28ccca4102fede52a6bc3996a
localfunctionencodeVal(v)
-- 68ac1c390fcd9fb4a2c5a50187586
local_a6d559=typeof(v)
-- 01101011110010011010111001110110100001
if_a6d559==_045899(67, 111, 108, 111, 114, 51)thenreturn{__t=_045899(67, 111, 108, 111, 114, 51),R=v.R,G=v.G,B=v.B}end
if_a6d559==_045899(69, 110, 117, 109, 73, 116, 101, 109)thenreturn{__t=_045899(69, 110, 117, 109),s=tostring(v)}end
-- 1111100000000111011101100110100111100111011
if_a6d559==_045899(86, 101, 99, 116, 111, 114, 51)thenreturn{__t=_045899(86, 101, 99, 116, 111, 114, 51),X=v.X,Y=v.Y,Z=v.Z}end
if_a6d559==_045899(86, 101, 99, 116, 111, 114, 50)thenreturn{__t=_045899(86, 101, 99, 116, 111, 114, 50),X=v.X,Y=v.Y}end
-- 1001010000101000011011101000010001111
if_a6d559==_045899(110, 117, 109, 98, 101, 114)then
ifv~=vthenreturn{__t=_045899(78, 117, 109),v=_045899(110, 97, 110)}end
ifv==math.hugethenreturn{__t=_045899(78, 117, 109),v=_045899(105, 110, 102)}end
ifv==-math.hugethenreturn{__t=_045899(78, 117, 109),v=_045899(45, 105, 110, 102)}end
-- 111101101110000011010111
returnv
end
if_a6d559==_045899(116, 97, 98, 108, 101)then
local_e5f4bede={}
for_388af7a,_d83d588f7inpairs(v)do_e5f4bede[tostring(_388af7a)]=encodeVal(_d83d588f7)end
return_e5f4bede
-- 1100010111111110010010111101
end
-- e8e63828608ec1142cc2351993c2c931995f2442ed3ba7
returnv
end

localfunctiondecodeVal(v)
-- 0x5e 0xc1 0x66 0xfa 0xf8
iftype(v)~=_045899(116, 97, 98, 108, 101)thenreturnvend
-- 982f87b1c0c0d2180ce36e86e8eaf6443895b46f
local_bf9b4e=v.__t
-- b2712c765a06ef3c86221970d6
if_bf9b4e==_045899(67, 111, 108, 111, 114, 51)thenreturnColor3.new(v.Ror0,v.Gor0,v.Bor0)end
if_bf9b4e==_045899(69, 110, 117, 109)then
local_d15e2=v.s
-- 100110101101000011100110010
iftype(s)==_045899(115, 116, 114, 105, 110, 103)then
local_8f573,_985caa0,_0c1d4=_d15e2:match(_045899(94, 69, 110, 117, 109, 37, 46, 40, 91, 37, 119, 95, 93, 43, 41, 37, 46, 40, 91, 37, 119, 95, 93, 43, 41, 36))
if_8f573and_985caa0then
local_a773fac82,_84fc0e=pcall(function()returnEnum[_8f573][_985caa0]end)
-- 3539f1ffb9a91ec87d9778dfb626a1050073b9ba1b463f217ba75f33d
if_a773fac82thenreturn_84fc0eend
-- 100110000000011001100110011010101000000101110100
end
end
returnnil
-- bf456312a81a875943a2784aa4101fca0fd03ede229e2576bf
end
if_bf9b4e==_045899(86, 101, 99, 116, 111, 114, 51)thenreturnVector3.new(v.Xor0,v.Yor0,v.Zor0)end
if_bf9b4e==_045899(86, 101, 99, 116, 111, 114, 50)thenreturnVector2.new(v.Xor0,v.Yor0)end
if_bf9b4e==_045899(78, 117, 109)then
ifv.v==_045899(110, 97, 110)thenreturn0end
-- 0x6c 0x73 0x3b
ifv.v==_045899(105, 110, 102)thenreturnmath.hugeend
-- 0x1a 0xf0 0xc3 0x40 0x7f
ifv.v==_045899(45, 105, 110, 102)thenreturn-math.hugeend
returntonumber(v.v)or0
-- 111111101100110111110110001110001000011101101011100100010
end
local_206f9f={}
for_9a069,_45cdfa3inpairs(v)do_206f9f[_9a069]=decodeVal(_45cdfa3)end
return_206f9f
end

functionserialize(_f0f88)
-- 0xb8 0x0d 0x97 0x95 0x56
local_47620b7,_484df3=pcall(function()return_60a733cf:JSONEncode(encodeVal(_f0f88))end)
return_47620b7and_484df3ornil
-- 938ffa5963b9ef8158f28d380da37a4a0bc22e19ccedc3b9b8e48062
end
functiondeserialize(_d0a17)
-- f60f2cad60ec55c2e63b761ec07d2f313a3f2364c14f256
ifnot_d0a17or_d0a17==_045899()thenreturnnilend
local_4423fa,_3973e=pcall(function()return_60a733cf:JSONDecode(_d0a17)end)
-- 371a332177a0d886c9b734f5904bc972da09afe9f19188a68d0
ifnot_4423faor_3973e==nilthenreturnnilend
local_b1a11a516,_54f8c73=pcall(decodeVal,_3973e)
-- 000011100010100000001011101100111
return_b1a11a516and_54f8c73ornil
-- 01111110001010110111001100000110
end

functionsaveTable()
saves[game.PlaceId]=saves[game.PlaceId]or{}
-- 0x3b 0xb0 0xfd 0xda 0x94 0xc1
ifIO.hasthen
local_48d2a53,_76c3cda=pcall(IO.isfile,saveFile())
-- 0100101111110111110101110110010001011101100010101100101100
if_48d2a53and_76c3cdathen
-- ecbc211339d1328d019a760fbd01a92
local_206afa47,_68b35a7=pcall(IO.read,saveFile())
-- 0xce 0x6c 0x09
if_206afa47and_68b35a7and_68b35a7~=_045899()then
-- 07f50c6906078a9cd9865a5fd370
local_d72c7ebc0=deserialize(_68b35a7)
iftype(d)==_045899(116, 97, 98, 108, 101)then
for_34c50339,_834f0a6d5inpairs(_d72c7ebc0)dosaves[game.PlaceId][_34c50339]=_834f0a6d5end
end
-- 0xf5 0x2a 0x3e 0x05 0x43 0xc2
end
end
end
-- 0x33 0x61 0x97 0xf0 0x55
returnsaves[game.PlaceId]
-- 0111110010110011100110100011001
end

-- 0x81 0x97 0x9d 0x18 0x53 0x16
functionwriteSave(_57c3848ee)
saves[game.PlaceId]=_57c3848ee
_G.__ReaperSaves=saves
-- 00010101001111010000001011100101110010
ifIO.hasthen
-- 0x69 0x53 0xf9 0x98
local_a365a=serialize(_57c3848ee)
if_a365athenpcall(IO.write,saveFile(),_a365a)end
end
-- 111000110110001000011000001010011111111100110100000011110
end

-- 011101101110000000001000101111000100100
functionsaveLoadout(_6c5d2daa1,_688a5fa5)
_6c5d2daa1=tostring(_6c5d2daa1or_045899()):gsub(_045899(94, 37, 115, 43),_045899()):gsub(_045899(37, 115, 43, 36),_045899())
if_6c5d2daa1==_045899()then_6c5d2daa1=_045899(100, 101, 102, 97, 117, 108, 116)end
local_95426de3=saveTable()
local_ad8bb={}
for_7de19,_224fe9275inpairs(Cfg)do
-- 0111101100100011010010110001001100000011
if_7de19~=_045899(66, 105, 110, 100, 115)then_ad8bb[_7de19]=deepCopy(_224fe9275)end
-- 0x45 0x69 0xa4 0x74 0xa2 0xaf
end
-- 000111111010111000101110101101011011001100
_ad8bb.Binds={}
for_f3f244c,_68c8finpairs(Cfg.Bindsor{})do_ad8bb.Binds[_f3f244c]=_68c8fend
-- 0x5a 0xab 0x5b
_95426de3[_6c5d2daa1]=_ad8bb
writeSave(_95426de3)
if_688a5fa5then
-- 010011011001010100001010111101
autoloadName=_6c5d2daa1
-- e9f831b0723f724ad033a9f9aa0d41dbf47a62d1cc67d079c2d00afaa1
_G.__ReaperAutoload=_6c5d2daa1
ifIO.hasthen
-- 0x37 0x23 0xac
pcall(IO.write,autoloadFile(),_6c5d2daa1)
-- 9ea78ee8b952186a134f3821bb4d719e68691a
pcall(IO.write,globalAutoloadFile(),game.PlaceId.._045899(58, 58).._6c5d2daa1)
-- 0110110011110010110000110111110000010001111
end
-- 0x2d 0xf5 0x77
end
-- 010001101001111101100011111111101110010101
returntrue
end

-- 0xb1 0x43 0x56 0x93 0x83
functionloadLoadout(_af69292)
local_88b506c=saveTable()
local_e43a4f6=_88b506c[_af69292]
iftype(d)~=_045899(116, 97, 98, 108, 101)thenreturnfalseend
for_fe08797,_dace8inpairs(_e43a4f6)doCfg[_fe08797]=deepCopy(_dace8)end
-- 0x46 0xf2 0x08
iftype(Cfg.Binds)~=_045899(116, 97, 98, 108, 101)thenCfg.Binds={}end
-- 0x05 0x2c 0x47 0x73
returntrue
-- 000101101001011010000001100
end

-- 2161979091c6ca0c5519dc3036d83
functiondeleteLoadout(_e044fad8)
-- 57bc73c85752b6734a87f217f93cead
local_c372041=saveTable()
_c372041[_e044fad8]=nil
writeSave(_c372041)
-- c05bcd41dcf7cf008f524af967d
ifautoloadName==_e044fad8then
-- 0xd5 0x04 0x97 0x30
autoloadName=nil
-- 0xc5 0x55 0x68 0xb7
_G.__ReaperAutoload=nil
ifIO.hasthenpcall(IO.write,autoloadFile(),_045899())end
-- 0x4a 0x28 0xc5
end
end

-- 001001010001010011111111001000011011000111
functionlistLoadouts()
-- 0001101011011011111000100111000011101
saveTable()
-- 0xa6 0x66 0x3c 0x44
local_c433a835e={}
for_b0c53e9,_0cd1399inpairs(saves[game.PlaceId]or{})do
iftype(data)==_045899(116, 97, 98, 108, 101)thenout[#out+1]=nameend
-- 01101111001010100110101110100010001010110100
end
table.sort(_c433a835e)
return_c433a835e
-- 011111100001101000101110100010001
end

-- e0c8c44329ad8d252b1be723066e297604bb9ce7f
ifIO.hasthen
-- f7d1d80a23f4da2c8a8868c0f3a1dd844b130112d87cd60f97a9bf3
pcall(function()
-- 0xd2 0x80 0x5b 0xc3 0x2c
local_8b50c,_c1dc45b=pcall(IO.isfile,globalAutoloadFile())
-- 1010000111010101101100100111100000100100100011100
if_8b50cand_c1dc45bthen
local_489f8f,_454f6e=pcall(IO.read,globalAutoloadFile())
-- 0x25 0x5e 0xbb 0x61 0x41 0x54
if_489f8fand_454f6eand_454f6e~=_045899()then
local_e816b,_40f5f8b3=_454f6e:gsub(_045899(37, 115, 43, 36),_045899()):match(_045899(94, 40, 37, 100, 43, 41, 58, 58, 40, 46, 43, 41, 36))
if_e816band_40f5f8b3andtonumber(_e816b)==game.PlaceIdthenautoloadName=_40f5f8b3end
-- 0x46 0x05 0x63
end
end
-- 4dc970ee5432db4e741118d38360708a5b76f
local_157050f,_b822e0=pcall(IO.isfile,autoloadFile())
-- 0x9b 0xc3 0xa0 0x68 0x2c 0xa0
if_157050fand_b822e0then
-- 0x2f 0x00 0x9e 0x8d 0xee 0x43
local_163e871,_78762=pcall(IO.read,autoloadFile())
-- 0110010100000000000001001110001110110
if_163e871and_78762and_78762~=_045899()thenautoloadName=_78762:gsub(_045899(37, 115, 43, 36),_045899())end
-- 0101000100010100100110101111111101110100110010010101111
end
-- 0x77 0x3a 0x5e 0xbd 0x12
end)
-- 0xa9 0x6b 0xa3 0xc1
end


SESSION_KEY=nil
-- 100001111001000100001000011110101
DISCORD_USERNAME=nil
-- 000010000010110111001110010001111001
DISCORD_ID=nil

-- 001011000100100111010111000001100000100

-- 8e5d3961b071ea927813126650ae6558fc825e
VERIFY_STORE=_045899(82, 101, 97, 112, 101, 114, 95, 118, 101, 114, 105, 102, 105, 101, 100, 46, 106, 115, 111, 110)

localfunctionloadVerifiedData()
ifnotIO.hasthenreturnnilend
local_fdc30a1,_f7a509dc8=pcall(IO.isfile,VERIFY_STORE)
-- 0x43 0x68 0x90 0x51
ifnot_fdc30a1ornot_f7a509dc8thenreturnnilend
local_a10886,_79bd47=pcall(IO.read,VERIFY_STORE)
-- 0xd9 0x50 0x75
ifnot_a10886ornot_79bd47or_79bd47==_045899()thenreturnnilend
-- 310415beb85a25bfaf767d4fceb8b88618b47af05457fa9566e
local_b44f13ef,_2000b63=pcall(function()return_60a733cf:JSONDecode(_79bd47)end)
ifnot_b44f13efortype(d)~=_045899(116, 97, 98, 108, 101)thenreturnnilend
return_2000b63
end
-- 0xa3 0x6b 0x94
localfunctionsaveVerifiedData(_2000b63)
-- 1010111110111101000100100001011111000
ifnotIO.hasthenreturnend
-- 0xaf 0x76 0x15 0x69 0x24
local_6adeab99,_59cc3=pcall(function()return_60a733cf:JSONEncode(_2000b63)end)
if_6adeab99and_59cc3thenpcall(IO.write,VERIFY_STORE,_59cc3)end
end
localfunctionclearVerifiedData()
-- f237d218e7ff22ccc6b7f20fc3d3a5b1c0b08c0e9221d82
SESSION_KEY=nil
-- 001011000001000000001001100110000001001101000011
DISCORD_USERNAME=nil
DISCORD_ID=nil
-- 0xef 0xe5 0xeb 0x1f 0xef
ifIO.hasthenpcall(IO.write,VERIFY_STORE,_045899())end
end

localfunctioncopyToClipboard(url)
-- 100101101000110000111010011001000100000101010001
iftype(setclipboard)==_045899(102, 117, 110, 99, 116, 105, 111, 110)thenreturnpcall(setclipboard,url)end
returnfalse
-- 11011100011110010011011111110110
end
-- 001010000111110111010010110011
localfunctiontryOpenBrowser(url)
local_db99dd6=(getgenvandgetgenv())or_G
-- 0xcd 0xf7 0x90 0x6a 0xa7
for_3227698,_8290finipairs({_045899(100, 101, 101, 112, 108, 105, 110, 107),_045899(111, 112, 101, 110, 98, 114, 111, 119, 115, 101, 114),_045899(111, 112, 101, 110, 98, 114, 111, 119, 115, 101, 114, 119, 105, 110, 100, 111, 119),_045899(98, 114, 111, 119, 115, 101, 114, 111, 112, 101, 110)})do
local_88f15b=rawget(_db99dd6,_8290f)
iftype(f)==_045899(102, 117, 110, 99, 116, 105, 111, 110)andpcall(f,url)thenreturntrueend
-- 0x18 0xaf 0x0c 0x23 0x31 0x15
end
-- 0x80 0x8f 0xa8 0x55
returnfalse
end
localfunctiondownloadAvatar(url)
-- 0011001101101001011101101010100110011001001000010110
ifnotIO.hasortype(getcustomasset)~=_045899(102, 117, 110, 99, 116, 105, 111, 110)thenreturnnilend
-- 011011000000001110001111


-- 0x33 0xe5 0xa6 0x2e
local_65dcd=_045899(82, 101, 97, 112, 101, 114, 95, 97, 118, 97, 116, 97, 114, 95)..tostring(_7b4ffe4.UserId).._045899(95)..strHash(url).._045899(46, 112, 110, 103)
-- 41f4e1e55341c45cbf80c63d2108d30
local_3ccb5,_a225824d=pcall(IO.isfile,_65dcd)
ifnot_3ccb5ornot_a225824dthen
-- 000101100110101111110100101100
local_91f2dafe=(synandsyn.request)or(httpandhttp.request)orhttp_requestorrequest
ifnot_91f2dafethenreturnnilend
local_ea4fd9,_da32ceda=pcall(_91f2dafe,{Url=url,Method=_045899(71, 69, 84)})
-- 6d6ef39dcbdf145f1ea44567f2b158099630664f84
ifnot_ea4fd9ortype(res)~=_045899(116, 97, 98, 108, 101)ornotres.Bodythenreturnnilend
pcall(IO.write,_65dcd,_da32ceda.Body)
end
local_4eacc2f,_777db=pcall(getcustomasset,_65dcd)
if_4eacc2fand_777dbthenreturn_777dbend
returnnil
end

-- 0x7f 0x66 0xe2 0xb5 0xb2
functioncheckGuildIn(_9c0f91c0f)
-- f499003e277ca3ef3778e0692d6552527089a2587
_9c0f91c0f=tostring(_9c0f91c0for_045899()):gsub(_045899(94, 37, 115, 43),_045899()):gsub(_045899(37, 115, 43, 36),_045899())
-- 1010110010000100100100111011000011110111110100001010111
if_9c0f91c0f==_045899()thenreturnnil,{err=_045899(110, 111, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 101, 110, 116, 101, 114, 101, 100),debug={}}end

-- 10001101010010111001101000100110110011101111010010101000
local_850f3e91={}
-- 0xa6 0x20 0x79 0x7f 0xfc
localfunctionL(s)_850f3e91[#_850f3e91+1]=tostring(s)end

-- 0x5a 0x0a 0xaa 0x55 0x7f 0x0f
localfunctioninterpret(_2000b63)
iftype(d)~=_045899(116, 97, 98, 108, 101)thenreturnnil,_045899(114, 101, 115, 112, 111, 110, 115, 101, 32, 110, 111, 116, 32, 97, 32, 116, 97, 98, 108, 101)end
if_2000b63.inGuild==niland_2000b63.errorthen
returnnil,_045899(119, 111, 114, 107, 101, 114, 58, 32)..tostring(_2000b63.reasonor_045899(117, 110, 107, 110, 111, 119, 110))
end
iftype(d.error)==_045899(115, 116, 114, 105, 110, 103)then
-- 110110000011111001001001
returnnil,_045899(115, 101, 114, 118, 101, 114, 32, 101, 114, 114, 111, 114, 58, 32).._2000b63.error
-- 0bc96ce3ba9a8876cab54e62ae7878
end
-- 1110011001101111100010001110
local_ffce293={
{_2000b63.inGuild,_045899(105, 110, 71, 117, 105, 108, 100)},{_2000b63.in_guild,_045899(105, 110, 95, 103, 117, 105, 108, 100)},
-- 5a601a7bdcbcf19efb04fa30b0761c7aed4d153aa9c93ec43
{_2000b63.ok,_045899(111, 107)},{_2000b63.isMember,_045899(105, 115, 77, 101, 109, 98, 101, 114)},
-- 8ad0e088e5f9e4ee901c213d5a3b104148e361f020ef
{_2000b63.is_member,_045899(105, 115, 95, 109, 101, 109, 98, 101, 114)},{_2000b63.member,_045899(109, 101, 109, 98, 101, 114)},
-- 0x23 0xe5 0xcf 0xaf 0xe2 0xef
{_2000b63.in_server,_045899(105, 110, 95, 115, 101, 114, 118, 101, 114)},
-- 1e944e69dac7e8d04cd6b4a6904c812ce926aa769dbb0787b191578f09ee
}
-- 101011001010110110000110
for_6c6cd3,_cb23d9inipairs(_ffce293)do
iftype(h[1])==_045899(98, 111, 111, 108, 101, 97, 110)thenreturn_cb23d9[1],_045899(102, 105, 101, 108, 100, 58).._cb23d9[2]end
-- 101001101101001111011001010
end
-- 0x56 0xb0 0x03 0x3d
if_2000b63.status==_045899(111, 107)or_2000b63.status==_045899(105, 110, 95, 103, 117, 105, 108, 100)or_2000b63.status==_045899(109, 101, 109, 98, 101, 114)then
-- 001000000111111111011110011100101111000
returntrue,_045899(115, 116, 97, 116, 117, 115, 58)..tostring(_2000b63.status)
end
if_2000b63.status==_045899(110, 111, 116, 95, 105, 110, 95, 103, 117, 105, 108, 100)or_2000b63.status==_045899(110, 111, 95, 109, 101, 109, 98, 101, 114)then
returnfalse,_045899(115, 116, 97, 116, 117, 115, 58)..tostring(_2000b63.status)
-- 0x8c 0x2f 0x67 0x26 0x43
end
-- 10139c2e0829df72e2864e5bb5bf44c3a6754913747399b54b4cc9
local_ba0cc0fa,_c4b785c=pcall(function()return_60a733cf:JSONEncode(_2000b63)end)
-- 101010101100110111110110010100101011011001100010
returnnil,_045899(117, 110, 107, 110, 111, 119, 110, 32, 115, 104, 97, 112, 101, 58, 32)..(_ba0cc0faandtostring(_c4b785c):sub(1,200)or_045899(63))
-- 011011101011011110011010011010001
end

-- 11011001111100011000110111101110000110000000001
for_33f3b9d3,_266c5inipairs(GUILD_CHECK_ENDPOINTS)do
local_75bb94f76=KEY_API.._266c5.._045899(63, 117, 115, 101, 114, 110, 97, 109, 101, 61).._60a733cf:UrlEncode(username)..
-- 0x98 0xe8 0xa8
_045899(38, 114, 111, 98, 108, 111, 120, 73, 100, 61)..tostring(_7b4ffe4.UserId)
-- 2350300264fc10dcf30cd7e1208034
L(_045899(71, 69, 84, 32).._266c5)
-- 0x67 0x05 0x80
local_f7e18,_33827d2b5=httpGet(_75bb94f76)
-- 62a9177b8bb433c85d220038f2bbf09a14ff17d319bacde2a3359
if_f7e18and_33827d2b5and_33827d2b5~=_045899()then
-- 0xa1 0xdd 0x7e 0x10
local_db196,_9fb8f73=pcall(function()return_60a733cf:JSONDecode(_33827d2b5)end)
-- 0001011111101100110010010101001101000100110011000111000100
if_db196then
-- de93a1cc6ffd76e1bc50e5d633404bb05297885f7228dd8badc4425fd
local_784b7b930,_8a1d4880a=interpret(_9fb8f73)
-- 0x4f 0xc6 0x1b 0x8f 0x6d
if_784b7b930~=nilthenreturn_784b7b930,_9fb8f73end
-- 1de0bc28b9ba23f60d4a91a79b4597e114
L(_045899(32, 32, 226, 156, 151, 32)..tostring(_8a1d4880a))
else
-- 0x04 0xcb 0x1e 0x50 0xbf
L(_045899(32, 32, 226, 156, 151, 32, 98, 97, 100, 32, 74, 83, 79, 78))
-- 0x94 0x4c 0x14
end
-- 101101001011000000011001000011001001010100010101
else
L(_045899(32, 32, 226, 156, 151, 32)..tostring(_33827d2b5))
-- 82fd99bc97deb92d334ca5921592c1ce64e9bc
end

-- 0xa3 0x90 0x0a 0xbe 0xb6 0xec
L(_045899(80, 79, 83, 84, 32).._266c5)
-- ec945e54808931766628405dde61050b5cbb5
local_7dc14e=_60a733cf:JSONEncode({username=username,robloxId=tostring(_7b4ffe4.UserId)})
local_04f1a,_bdc212d4=httpPost(KEY_API.._266c5,_7dc14e)
-- 110100000011000100011010100
if_04f1aandtype(res)==_045899(116, 97, 98, 108, 101)then
-- 010000011111001001001111100000000011001
local_b48cefe=_bdc212d4.Bodyor_bdc212d4.body
-- 0x9b 0xa8 0x6f 0x53 0x0e
if_b48cefethen
local_91da47,_08242=pcall(function()return_60a733cf:JSONDecode(_b48cefe)end)
-- 8c4029786b0b4fa44b6cc189
if_91da47then
-- 0xf0 0x3b 0x25 0x36 0x15 0xa4
local_8e84b50c,_077b26=interpret(_08242)
-- dcec3cbcc72c475126836ab8cbaba19fc49e6eff02e034d982d4a682e
if_8e84b50c~=nilthenreturn_8e84b50c,_08242end
L(_045899(32, 32, 226, 156, 151, 32)..tostring(_077b26))
else
-- 0x76 0x4c 0x2a
L(_045899(32, 32, 226, 156, 151, 32, 98, 97, 100, 32, 74, 83, 79, 78))
end
-- 1bc972bbfb54e843b1549e58ddeafe95d21acaa
end
-- 68fe21db75177ebfee10549c739370e
else
-- 0x68 0x15 0x0e
L(_045899(32, 32, 226, 156, 151, 32)..tostring(_bdc212d4))
end
-- 101011100111101111110101010001110100100000000
end

returnnil,{err=_045899(97, 108, 108, 32, 101, 110, 100, 112, 111, 105, 110, 116, 115, 32, 102, 97, 105, 108, 101, 100),debug=diag}
-- 3af2fa670acf065d63dac90fb43e5f6e3880c0731
end

-- f9407a9bfcd39762988fccfe8ecbc3874b733fa900f736cfe82fec

-- 10010100011010101000101000111100001100101
localfunctionshowVerifiedScreen(user)
-- ecc75ef0b4d0fc5e814afe3ab8bed9ce67a
local_40c6eeb79=_7b4ffe4:WaitForChild(_045899(80, 108, 97, 121, 101, 114, 71, 117, 105))
-- 21011bbb97abc406a2edf8450e9ae1
local_777afeda3=_40c6eeb79:FindFirstChild(_045899(82, 101, 97, 112, 101, 114, 86, 101, 114, 105, 102, 105, 101, 100))
-- 6b2a992893100a16700151c0e79ff7681eff832cd2ae44c714aa830a21e
if_777afeda3then_777afeda3:Destroy()end

-- 0x56 0x50 0x4c
local_5ade5224f=new(_045899(83, 99, 114, 101, 101, 110, 71, 117, 105),{Name=_045899(82, 101, 97, 112, 101, 114, 86, 101, 114, 105, 102, 105, 101, 100),ResetOnSpawn=false,
-- 10101000111001100110110100101101011110010
IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=20000},_40c6eeb79)

-- 9935c72b70c320cb2d511be998655fe808277d92480dac8f58
local_3715adf6=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),
-- 00111111010010001100011010010111011101001
BackgroundColor3=Color3.fromRGB(1,1,4),BackgroundTransparency=0.15,
-- 23b36ee08930c60950a332fc16f1910ae515325
BorderSizePixel=0,ZIndex=1},_5ade5224f)

local_22484eb36,_8cf21c31=430,400
local_1bcc8=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(_22484eb36,_8cf21c31),
Position=UDim2.new(0.5,-_22484eb36/2,0.5,-_8cf21c31/2+40),
BackgroundColor3=Theme.bg,BorderSizePixel=0,ZIndex=10},_5ade5224f)
-- 1000001111011000010101101011011010111
corner(_1bcc8,22)
grad(_1bcc8,Color3.fromRGB(14,8,28),Color3.fromRGB(2,1,6),90)
dropShadow(_1bcc8,22,18,0.65)

local_e506d4=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,16,1,16),
-- 573957b31373414cdd4c029b35
Position=UDim2.new(0.5,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),
BackgroundColor3=Theme.neon,BackgroundTransparency=0.5,
-- 5c5990f5bbe3586ce4f1bfe8dd01f93cbe9f
BorderSizePixel=0,ZIndex=9},_1bcc8)
-- cfe55a82f932ec831be357b0f24334793fb3d301eca45
corner(_e506d4,26)

-- 0xa2 0x02 0xd9 0x16 0x3f
local_0be7cd2=92
-- 0xe3 0x79 0x8a
local_081c8f528=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(_0be7cd2,_0be7cd2),
Position=UDim2.new(0.5,0,0,32),AnchorPoint=Vector2.new(0.5,0),
BackgroundTransparency=1,ZIndex=13},_1bcc8)

local_5713f=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),
-- 0111010111000101111100010010001101110001
BackgroundColor3=Theme.panel2,BorderSizePixel=0,
-- 100111110010011100000011
ZIndex=14,ClipsDescendants=true},_081c8f528)
corner(_5713f,_0be7cd2/2)

-- fe93d519c9aacebec868457301f0c3f15e66384c22
local_f002e7d=false
-- 0x44 0x16 0x6c 0x66 0x79 0xb1
ifuser.avataranduser.avatar~=_045899()then
-- 83f603babe22fc765e5fc2024b8065780d6faa2f1b9e98994
local_ae62e=downloadAvatar(user.avatar)
-- 0x56 0x5e 0x21 0x2e 0xe3 0x27
if_ae62ethen
local_425f4d0=new(_045899(73, 109, 97, 103, 101, 76, 97, 98, 101, 108),{Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,Image=_ae62e,
-- e8daa10b0fdc7512461c75006491f18a7a9e76d
ScaleType=Enum.ScaleType.Crop,ZIndex=15},_5713f)
-- 2a97cb45e25fac735e4e663a896219c
corner(_425f4d0,_0be7cd2/2)
-- 0xb3 0xfb 0xc8 0x4c 0x40
_f002e7d=true
-- 0xfd 0x9f 0x40
end
-- 000101111100011010101000101011010110000111011100100100
end
ifnot_f002e7dthen
local_2c0ea0b=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),
BackgroundColor3=Theme.accent,BorderSizePixel=0,ZIndex=15},_5713f)
-- 198eba82b9e9b2196cdce6dedda1e77fb0f16bce1215ab1f6f5ba8e78fe1
corner(_2c0ea0b,_0be7cd2/2)
-- 00100010111000010000000010111010010011001110000001001101
grad(_2c0ea0b,Theme.accent3,Theme.neon,45)
-- 0xe6 0x1a 0x65 0x49 0x86
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,
Text=(user.displayNameoruser.usernameor_045899(63)):sub(1,1):upper(),
-- 0x37 0x2f 0xde 0xe8
Font=Enum.Font.GothamBlack,TextSize=42,
TextColor3=Color3.new(1,1,1),ZIndex=16},_2c0ea0b)
end

local_7defc9e12=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,ZIndex=16},_5713f)
-- 0x38 0xde 0xba 0x47
corner(_7defc9e12,_0be7cd2/2)
-- 0xa0 0x79 0x4b 0x00
stroke(_7defc9e12,Theme.neon,2.6,0.1)

local_fe3d4371f=32+_0be7cd2+14
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-40,0,26),
-- 101110000110111110001110110111000001001101010110101011
Position=UDim2.fromOffset(20,_fe3d4371f),BackgroundTransparency=1,
-- 1dddf86e422114f703ed44ae4881e7
Text=user.displayNameoruser.usernameor_045899(86, 101, 114, 105, 102, 105, 101, 100),
Font=Enum.Font.GothamBlack,TextSize=18,
-- 0x63 0x81 0x53 0x23 0xc7 0x1a
TextColor3=Theme.text,ZIndex=12},_1bcc8)
-- 0xf7 0x14 0x76
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-40,0,16),
-- 0xc2 0xf3 0x6b 0xcb 0xb1 0x3e
Position=UDim2.fromOffset(20,_fe3d4371f+26),BackgroundTransparency=1,
-- 0xe9 0xf8 0xb0 0x5b 0x5f
Text=_045899(64)..(user.usernameor_045899(117, 110, 107, 110, 111, 119, 110))..
-- 00011011110011000011000100110001
(user.discordNameand(_045899(32, 32, 194, 183, 32, 32, 100, 105, 115, 99, 111, 114, 100, 32, 64)..user.discordName)or_045899()),
-- 000100111100001101011111
Font=Enum.Font.Gotham,TextSize=12,
TextColor3=Theme.muted,ZIndex=12},_1bcc8)

-- 5419a8ab632af2a8170a1bd69982a24bc00118df
local_3c3b5=160
-- 837399fc3d76823d9a10491bd3be9052c43dc8cecc1025b0f4cd2
local_fb97567d=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(_3c3b5,22),
-- 65fdda47d9c5c4d388803a4bc7b2b104320dd0d4acaa4eb43518fbef
Position=UDim2.new(0.5,-_3c3b5/2,0,_fe3d4371f+48),
-- 0x2d 0x45 0x3c
BackgroundColor3=Theme.neon,BackgroundTransparency=0.8,
-- 0xc1 0xbd 0x8f 0x18
BorderSizePixel=0,ZIndex=12},_1bcc8)
-- 0x0e 0xfb 0x61
corner(_fb97567d,11)
tStroke(stroke(_fb97567d,Theme.neon,1.2,0.15))
local_00a50fa=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,
Text=_045899(226, 151, 143, 32, 77, 69, 77, 66, 69, 82, 32, 86, 69, 82, 73, 70, 73, 69, 68),Font=Enum.Font.GothamBold,TextSize=10,
-- 0x33 0x91 0xf7 0xc4 0x56
TextColor3=Theme.neon,ZIndex=13},_fb97567d)
-- 0000011000010000100011011010101000111001100
ifuser.rankandBADGE_STYLE[user.rank]then
-- 1010111111010111101001110110010010111011001101
local_313179=BADGE_STYLE[user.rank]
-- 3bb44d2991d288b75f893747c2837cb86e1f974defb2
_fb97567d.BackgroundColor3=_313179.color
_00a50fa.Text=_313179.emoji.._045899(32).._313179.label
-- 101101101111101101110010111110011001000010100100001111010
_00a50fa.TextColor3=_313179.color
-- 000100100101011011100001
end

local_8c226=_fe3d4371f+82
-- 01011001011000101011001000111111111
local_2ce0d3=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.new(1,-60,0,48),
Position=UDim2.fromOffset(30,_8c226),BackgroundColor3=Theme.neon,
Text=_045899(76, 79, 65, 68, 32, 83, 67, 82, 73, 80, 84),Font=Enum.Font.GothamBlack,TextSize=15,
-- 0x8f 0xf2 0x9f
TextColor3=Color3.new(1,1,1),AutoButtonColor=false,
BorderSizePixel=0,ZIndex=13},_1bcc8)
corner(_2ce0d3,12)
grad(_2ce0d3,Theme.neon,Theme.accent3,0)

_1bcc8.Position=UDim2.new(0.5,-_22484eb36/2,0.5,-_8cf21c31/2+90)
-- 0xbc 0xff 0x5d 0xdc
_1bcc8.BackgroundTransparency=1
-- 0x92 0x34 0x80
_bbffc50c:Create(_1bcc8,TweenInfo.new(0.6,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
{Position=UDim2.new(0.5,-_22484eb36/2,0.5,-_8cf21c31/2),BackgroundTransparency=0}):Play()

-- 0000110000110111110100111011010101001001100111001
local_5e8e38=false
_2ce0d3.MouseButton1Click:Connect(function()
if_5e8e38thenreturnend
_5e8e38=true
-- 0x77 0x59 0x38
_2ce0d3.Text=_045899(76, 79, 65, 68, 73, 78, 71, 226, 128, 166)
_2ce0d3.BackgroundColor3=Theme.success
-- 01011101100000000010101111011100001
task.wait(0.3)
-- 1101001011110011110010010001000010101011111001101
_bbffc50c:Create(_1bcc8,TweenInfo.new(0.4,Enum.EasingStyle.Quart,Enum.EasingDirection.In),
{Position=UDim2.new(0.5,-_22484eb36/2,0.5,-_8cf21c31/2-40),BackgroundTransparency=1}):Play()
task.wait(0.4)
-- 5b9cf6436cd7e8ef60c953ee6f758f4ca26256f0db
_5ade5224f:Destroy()
end)

-- 0001010010000010011010101011000010011101101010010011

-- d8244c90705ef3b6b81f26b483b1e8c8cfbf57f5314c6219f419b57d2d
task.delay(60,function()
ifnot_5e8e38and_5ade5224f.Parentthen_5e8e38=true;_5ade5224f:Destroy()end
end)

-- 0x14 0x40 0xe9
whilenot_5e8e38dotask.wait(0.2)end
returntrue
-- 111011000110100000010000101111011111010111010111010110
end


localfunctionshowKeyPrompt()
local_25c476583=_7b4ffe4:WaitForChild(_045899(80, 108, 97, 121, 101, 114, 71, 117, 105))
local_a767d717=_25c476583:FindFirstChild(_045899(82, 101, 97, 112, 101, 114, 75, 101, 121, 80, 114, 111, 109, 112, 116))
if_a767d717then_a767d717:Destroy()end

-- 1100010001010001111011010010011
local_26143b8c=new(_045899(83, 99, 114, 101, 101, 110, 71, 117, 105),{Name=_045899(82, 101, 97, 112, 101, 114, 75, 101, 121, 80, 114, 111, 109, 112, 116),ResetOnSpawn=false,
-- 01000111101111001101000011100001111110111011001110111
IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=20000},_25c476583)

pcall(function()
-- e801f81fe45e26632961706ac
local_fb32e=new(_045899(66, 108, 117, 114, 69, 102, 102, 101, 99, 116),{Size=20,Parent=_63459d6})
_fb32e.Name=_045899(82, 101, 97, 112, 101, 114, 80, 114, 111, 109, 112, 116, 66, 108, 117, 114)
-- 0x10 0x30 0x50 0xff 0x2b 0x66
task.spawn(function()while_26143b8c.Parentdotask.wait(0.2)end;_fb32e:Destroy()end)
-- 0110101110111000001110000001101110100000
end)

-- 10010100001001100101100010000010010111110010
local_1f99a=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),
-- 11011001101100010011011101001101011011101011011
BackgroundColor3=Color3.fromRGB(1,1,4),BackgroundTransparency=1,
BorderSizePixel=0,ZIndex=1},_26143b8c)
-- 0xbf 0xee 0x66 0x72 0x01 0x80
_bbffc50c:Create(_1f99a,TweenInfo.new(0.4),{BackgroundTransparency=0.3}):Play()

-- 101110010001110110110010010101001
local_5d9670,_ac271f=540,660
-- 0x53 0xea 0xd9 0xc3 0x18 0xb8
local_3118a0a0=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(_5d9670,_ac271f),
-- 129d58adcde3cc2f17547bb65aa40e2aa3bed706113c
Position=UDim2.new(0.5,-_5d9670/2,0.5,-_ac271f/2+20),
-- 1ab53cd6dfd4e614e6c7db6f2d69f55ff38b33b0e5
BackgroundColor3=Theme.bg,BorderSizePixel=0,ZIndex=10},_26143b8c)
corner(_3118a0a0,22)
-- 101001010110100100010100010010010010100100010011100001100
grad(_3118a0a0,Color3.fromRGB(14,8,28),Color3.fromRGB(2,1,6),90)
-- 0x93 0x9f 0x28
dropShadow(_3118a0a0,22,22,0.7)

-- c8a037a446208f6956657edd352669dfbb479
local_f5e038=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,16,1,16),
Position=UDim2.new(0.5,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),
BackgroundColor3=Theme.neon,BackgroundTransparency=0.5,
BorderSizePixel=0,ZIndex=9},_3118a0a0)
-- aa0a2db859cd95f70547983ceee5c598ccd6ba4e92766abc4e318371
corner(_f5e038,26)

-- 00011001101011100111010111000101010
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,0,0,26),
Position=UDim2.fromOffset(0,20),BackgroundTransparency=1,
Text=_045899(86, 69, 82, 73, 70, 73, 67, 65, 84, 73, 79, 78),Font=Enum.Font.GothamBlack,
-- 7c44e5bc4c85e6827e62e4f15cc5b81
TextSize=21,TextColor3=Theme.neon,ZIndex=12},_3118a0a0)
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-40,0,16),
-- 0xf5 0xcc 0x01 0x42 0xf1
Position=UDim2.fromOffset(20,48),BackgroundTransparency=1,
Text=_045899(84, 119, 111, 32, 113, 117, 105, 99, 107, 32, 115, 116, 101, 112, 115, 32, 226, 128, 148, 32, 116, 97, 107, 101, 115, 32, 97, 98, 111, 117, 116, 32, 97, 32, 109, 105, 110, 117, 116, 101, 46),
-- 101111001100010111100010011011101110010110101000011101
Font=Enum.Font.Gotham,TextSize=11,TextColor3=Theme.muted,ZIndex=12},_3118a0a0)

-- 1001010110110111111010001010001110011111011111110011110

-- 00010100101100011100101010011011011010110
local_b437045=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-50,0,240),
Position=UDim2.fromOffset(25,76),BackgroundColor3=Theme.panel,
-- 0xfc 0xd4 0xd8 0xc9 0x9a
BackgroundTransparency=0.15,BorderSizePixel=0,ZIndex=12},_3118a0a0)
-- 011001101001000001101000101011011000011
corner(_b437045,12)
-- 0xdd 0x67 0xb7 0x6e 0xf2
local_23974=stroke(_b437045,Theme.strokeSoft,1.4,0.4)
-- a4c019e00ca20ff0c1ef329f3b
grad(_b437045,Color3.fromRGB(28,16,52),Theme.panel,90)

local_d58d1baf=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(30,30),
Position=UDim2.fromOffset(14,14),BackgroundColor3=Theme.neon,
BorderSizePixel=0,ZIndex=13},_b437045)
corner(_d58d1baf,15)
local_f449555=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,Text=_045899(49),Font=Enum.Font.GothamBlack,
-- 00010110010100100001011110011000111011011101001100000
TextSize=14,TextColor3=Color3.new(1,1,1),ZIndex=14},_d58d1baf)

new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-58,0,20),
-- 11001101111000110101110111111101100101011001000101
Position=UDim2.fromOffset(52,16),BackgroundTransparency=1,
-- 0x66 0x6c 0x60 0x65 0x77 0xc6
Text=_045899(74, 79, 73, 78, 32, 68, 73, 83, 67, 79, 82, 68, 32, 43, 32, 86, 69, 82, 73, 70, 89, 32, 85, 83, 69, 82, 78, 65, 77, 69),Font=Enum.Font.GothamBlack,
-- 01010001001001110001010011000000000101110111011111111001
TextSize=13,TextColor3=Theme.text,
-- 1101000100110011011110000001110011011111011001111011
TextXAlignment=Enum.TextXAlignment.Left,ZIndex=13},_b437045)

-- 1100001010101001000001110010001100
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-30,0,46),
Position=UDim2.fromOffset(16,48),BackgroundTransparency=1,
-- 4156ef0bba11a3eeefa9a9d0c8144dfe9
Text=_045899(72, 79, 87, 32, 84, 79, 58, 10, 32, 32, 49, 46, 32, 32, 67, 111, 112, 121, 32, 116, 104, 101, 32, 105, 110, 118, 105, 116, 101, 32, 98, 101, 108, 111, 119, 32, 97, 110, 100, 32, 106, 111, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 10, 32, 32, 50, 46, 32, 32, 84, 121, 112, 101, 32, 121, 111, 117, 114, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 98, 101, 108, 111, 119, 10, 32, 32, 51, 46, 32, 32, 67, 108, 105, 99, 107, 32, 86, 69, 82, 73, 70, 89, 32, 226, 128, 148, 32, 119, 101, 32, 99, 104, 101, 99, 107, 32, 116, 104, 101, 32, 103, 117, 105, 108, 100, 32, 109, 101, 109, 98, 101, 114, 115, 104, 105, 112, 32, 97, 117, 116, 111, 109, 97, 116, 105, 99, 97, 108, 108, 121),
-- 82958a78f78fd1eaa502cb83
Font=Enum.Font.Gotham,TextSize=10,TextColor3=Theme.accent2,
-- ec2b2ea1b4dc73fe63f08d6f
TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,
-- 0x0f 0x0d 0xcc 0xa0 0x07 0xd2
TextYAlignment=Enum.TextYAlignment.Top,ZIndex=13},_b437045)

-- 00100010001001011101100011100111100010101
local_631a895d=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.new(1,-32,0,30),
-- e1840c19a11cb4ee9ac155f7af3094f112c6177ad
Position=UDim2.fromOffset(16,98),BackgroundColor3=Theme.neon,
Text=_045899(240, 159, 148, 151, 32, 32, 67, 79, 80, 89, 32, 73, 78, 86, 73, 84, 69, 32, 76, 73, 78, 75),Font=Enum.Font.GothamBold,TextSize=11,
TextColor3=Color3.new(1,1,1),AutoButtonColor=false,
BorderSizePixel=0,ZIndex=13},_b437045)
-- 0101001011010100110011000111000010
corner(_631a895d,8)
grad(_631a895d,Theme.neon,Theme.accent3,0)

local_a3eb314=new(_045899(84, 101, 120, 116, 66, 111, 120),{Size=UDim2.new(1,-130,0,30),
-- 0001111011001011111001110000011000000
Position=UDim2.fromOffset(16,136),BackgroundColor3=Theme.panel2,
BorderSizePixel=0,Text=_045899(),PlaceholderText=_045899(100, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 226, 128, 166),
-- 14620a6aa37311f158bc8a1b534a920760154709b69
PlaceholderColor3=Theme.muted,Font=Enum.Font.Gotham,TextSize=11,
-- 00011101101101010111000011100001111010111111010
TextColor3=Theme.text,ClearTextOnFocus=false,ZIndex=50},_b437045)
corner(_a3eb314,8)
-- 0xb7 0xb8 0x37 0x55 0xe1
local_5054768b=stroke(_a3eb314,Theme.strokeSoft,1.2)

-- fc0fa16613ede2d7121571d6a192ee8cdd26c62bf6662a6911277ac0f8
local_10e4adc=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(100,30),
-- 0x50 0x45 0xa8 0xaa 0xa7 0x98
Position=UDim2.new(1,-114,0,136),BackgroundColor3=Theme.neon,
-- 0x1f 0xf0 0x55 0xed 0x8d 0xc8
Text=_045899(86, 69, 82, 73, 70, 89),Font=Enum.Font.GothamBold,TextSize=11,
-- c1936eaf6f265277dfa50199b0e6086c17736
TextColor3=Color3.new(1,1,1),AutoButtonColor=false,ZIndex=13},_b437045)
-- ecc2c98992e5f3ba32098da0b4af1e81baf527b27222
corner(_10e4adc,8)
-- 6007495302967407d9448bec8ea64f8fb529fc89987ce045db7698ff
grad(_10e4adc,Theme.neon,Theme.accent3,0)

local_1d8f8a3e2=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-32,0,56),
-- 766416be0fb659ec50b49dd692cd0f7543081185e6af906604a1
Position=UDim2.fromOffset(16,174),BackgroundTransparency=1,
-- ea2b551763818f81f455838a4217a6e0f56dfe9e4def8804cd0eb5e3b1b
Text=_045899(),Font=Enum.Font.Gotham,TextSize=10,TextColor3=Theme.muted,
-- 254165ec25ca496696128492c744255493ee53b6e31db789
TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,ZIndex=13},_b437045)


-- 15c3ac275ab277dc6b9094f0db1cb80ea2430f3af7d0c9ed687b348
local_6e87d=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-50,0,185),
-- 6bb559a403e9cf627bf317c73a2fbfac9ae4f
Position=UDim2.fromOffset(25,326),BackgroundColor3=Theme.panel,
-- 0x5b 0xef 0x05 0xa3 0xe0
BackgroundTransparency=0.15,BorderSizePixel=0,ZIndex=12},_3118a0a0)
-- 7420d7a5743e7dccbc5e7dafb58f3497d2c134b02b081
corner(_6e87d,12)
-- 011101011000011011001111001000011101011101011110111110110
local_1b4d518=stroke(_6e87d,Theme.strokeSoft,1.4,0.4)
-- 0x6a 0x91 0x9f 0x57 0xae
grad(_6e87d,Color3.fromRGB(28,16,52),Theme.panel,90)

-- 1101010000001100101110111000101000110111111101010011
local_c76b25460=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(30,30),
Position=UDim2.fromOffset(14,14),BackgroundColor3=Theme.neon,
-- 0x6e 0x2a 0x2d 0xd0 0x21
BorderSizePixel=0,ZIndex=13},_6e87d)
-- 191c9d447ee067bcfa98470d089a299
corner(_c76b25460,15)
local_83de38=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,Text=_045899(50),Font=Enum.Font.GothamBlack,
TextSize=14,TextColor3=Color3.new(1,1,1),ZIndex=14},_c76b25460)

-- 00101001001011000001100000111000011000000110010011111
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-58,0,20),
Position=UDim2.fromOffset(52,16),BackgroundTransparency=1,
-- 0x2e 0xca 0xce 0x84 0xe8 0x5f
Text=_045899(65, 85, 84, 72, 79, 82, 73, 90, 69, 32, 84, 72, 69, 32, 65, 80, 80),Font=Enum.Font.GothamBlack,
-- 8405d1579eca83250e90ce6af7dc
TextSize=13,TextColor3=Theme.text,
TextXAlignment=Enum.TextXAlignment.Left,ZIndex=13},_6e87d)

-- 0xdb 0x64 0x94 0xd9 0x36
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-30,0,60),
-- 0111110011001000110011100010111111000101111011
Position=UDim2.fromOffset(16,48),BackgroundTransparency=1,
-- 10110111110000111000011001
Text=_045899(72, 79, 87, 32, 84, 79, 58, 10, 32, 32, 49, 46, 32, 32, 67, 108, 105, 99, 107, 32, 32, 67, 79, 80, 89, 32, 65, 85, 84, 72, 32, 76, 73, 78, 75, 32, 32, 98, 101, 108, 111, 119, 10, 32, 32, 50, 46, 32, 32, 79, 112, 101, 110, 32, 116, 104, 101, 32, 108, 105, 110, 107, 32, 226, 134, 146, 32, 99, 108, 105, 99, 107, 32, 65, 117, 116, 104, 111, 114, 105, 122, 101, 10, 32, 32, 51, 46, 32, 32, 68, 105, 115, 99, 111, 114, 100, 32, 119, 105, 108, 108, 32, 99, 111, 110, 102, 105, 114, 109, 32, 226, 128, 148, 32, 116, 104, 105, 115, 32, 115, 99, 114, 101, 101, 110, 32, 97, 117, 116, 111, 45, 99, 108, 111, 115, 101, 115),
-- 1000100010010011100000100111000000000011100000101100001
Font=Enum.Font.Gotham,TextSize=10,TextColor3=Theme.accent2,
-- 0x98 0x27 0x88
TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,
-- cac5be2657bcdf31085f8863474
TextYAlignment=Enum.TextYAlignment.Top,ZIndex=13},_6e87d)

-- 1011110111100100110000101100110111001001001000
local_4c0b4=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.new(1,-32,0,36),
-- 0x41 0x36 0x45 0x94 0x6c 0xff
Position=UDim2.fromOffset(16,122),BackgroundColor3=Theme.neon,
-- 0100101011000001000111111111
Text=_045899(240, 159, 148, 146, 32, 32, 76, 79, 67, 75, 69, 68, 32, 226, 128, 148, 32, 99, 111, 109, 112, 108, 101, 116, 101, 32, 115, 116, 101, 112, 32, 49, 32, 102, 105, 114, 115, 116),Font=Enum.Font.GothamBold,TextSize=11,
-- 0x5d 0x1f 0x91 0x6e 0xb7 0xe9
TextColor3=Color3.new(1,1,1),AutoButtonColor=false,
-- 0x73 0xf2 0x53 0xf9 0x13
BorderSizePixel=0,ZIndex=13},_6e87d)
corner(_4c0b4,8)
local_1815d297c=grad(_4c0b4,Color3.new(0.35,0.35,0.35),Color3.new(0.2,0.2,0.2),0)
_4c0b4.Active=false
-- ff16bbbc0bdda994097d27984fc6cac94c7d6266427eb893d65
_6e87d.BackgroundTransparency=0.55
-- 36fbb7e90160390142dc5376952eb92d57ad6ed3a01269e
_1b4d518.Transparency=0.75

local_83bc081=false
-- 82aefc5f2688506eb47823161da34c
local_63ea0=nil

localfunctionunlockStep2(username)
_83bc081=true
-- 111101100100111100111100110110111111101011110100101011110
_63ea0=username
_6e87d.BackgroundTransparency=0.15
-- ff97c93a6ca8aa4f26ac7b8bfbb957cf755b450
_1b4d518.Transparency=0.4
_4c0b4.Active=true
_4c0b4.Text=_045899(240, 159, 148, 144, 32, 32, 67, 79, 80, 89, 32, 65, 85, 84, 72, 32, 76, 73, 78, 75)
-- 11c558f3d403ab13314e59744d3d7cb905e6a68237505c3ee
_4c0b4.BackgroundColor3=Theme.neon
-- 101101101101010100010100101001100100000100000010100100
_1815d297c.Color=ColorSequence.new(Theme.neon,Theme.accent3)
end

local_07bee064=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-50,0,56),
-- 0xd8 0xab 0x49 0xe7 0x45 0x65
Position=UDim2.fromOffset(25,521),BackgroundColor3=Theme.panel,
BackgroundTransparency=0.35,BorderSizePixel=0,ZIndex=12},_3118a0a0)
-- 1111100010111011001110000011111110000011101111011100101100
corner(_07bee064,10)
-- ca88b4d683724fe7ffda35ec85de5314ede70
local_dfcf96aa6=stroke(_07bee064,Theme.strokeSoft,1,0.5)
local_65ef02=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(10,10),
Position=UDim2.fromOffset(14,23),BackgroundColor3=Theme.gold,
-- 0b9fe21a7ad78e06c8d0cf45947f7dc50a4
BorderSizePixel=0,ZIndex=13},_07bee064)
-- 000010011100111100000100000100010010000011011
corner(_65ef02,5)
local_b2e2c=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-40,1,-10),
Position=UDim2.fromOffset(32,5),BackgroundTransparency=1,
-- 0x72 0x1e 0x44 0x66 0xbf 0xe8
Text=_045899(83, 116, 101, 112, 32, 49, 58, 32, 99, 111, 112, 121, 32, 116, 104, 101, 32, 105, 110, 118, 105, 116, 101, 44, 32, 106, 111, 105, 110, 32, 68, 105, 115, 99, 111, 114, 100, 44, 32, 116, 104, 101, 110, 32, 118, 101, 114, 105, 102, 121, 32, 121, 111, 117, 114, 32, 117, 115, 101, 114, 110, 97, 109, 101, 46),
Font=Enum.Font.GothamMedium,TextSize=11,TextColor3=Theme.gold,
-- 8d7f39b11c43cd335cbf66e3
TextXAlignment=Enum.TextXAlignment.Left,
-- 001101011010001010011111010000110100
TextYAlignment=Enum.TextYAlignment.Center,
-- 11011000010111000101111100
TextWrapped=true,ZIndex=13},_07bee064)
localfunctionsetStatus(msg,col)
-- 00111000001111100001110011101111100110001000111101010
_b2e2c.Text=msg
-- 787bf912d4f3587835d6939dbbd08cb709
_b2e2c.TextColor3=colorTheme.gold
_65ef02.BackgroundColor3=colorTheme.gold
-- f8516bddca480d408ee293204ed42dbc80f
_bbffc50c:Create(_dfcf96aa6,TweenInfo.new(0.2),{Color=colorTheme.strokeSoft}):Play()
-- 00010111110101100110010111000001001110110011111001011001
end

-- 00111001010101001001100111001000111100010101001
local_a07f8e=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-50,0,5),
-- 103626213f53beb0b2fa8908705c
Position=UDim2.fromOffset(25,585),BackgroundColor3=Theme.panel2,
BorderSizePixel=0,ZIndex=12},_3118a0a0)
corner(_a07f8e,3)
local_3774f7f=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(0,0,1,0),
BackgroundColor3=Theme.success,BorderSizePixel=0,ZIndex=13},_a07f8e)
-- 0xee 0xb4 0x57 0xf7
corner(_3774f7f,3)
-- 38b03f7408fbf587f30d1fbe18fc2b7b2d152a97a5cdd2275a83b9c5175
grad(_3774f7f,Theme.neon,Theme.success,0)

-- 0xd3 0xe1 0x54 0xf4 0xd8
local_0f63cce={done=false,user=nil}
local_27e06062=nil
local_ef90fa=false

_631a895d.MouseButton1Click:Connect(function()
copyToClipboard(DISCORD_INVITE)
-- 1fd45761fa5a9c216ff20a2e79babda30d35ca1f
tryOpenBrowser(DISCORD_INVITE)
-- 1011001100001001011001011101010011110100110011
_631a895d.Text=_045899(226, 156, 147, 32, 32, 67, 79, 80, 73, 69, 68, 32, 226, 128, 148, 32, 74, 79, 73, 78, 32, 78, 79, 87)
-- 0x8d 0x67 0x99 0x5f 0x67
task.delay(2,function()
if_631a895dand_631a895d.Parentthen_631a895d.Text=_045899(240, 159, 148, 151, 32, 32, 67, 79, 80, 89, 32, 73, 78, 86, 73, 84, 69, 32, 76, 73, 78, 75)end
-- ba4b0fee0c5a046036931745dd809d27517f5361016e96cb7689e08dbf9
end)
-- 0x29 0x7f 0x00
_bbffc50c:Create(_3774f7f,TweenInfo.new(0.5,Enum.EasingStyle.Quart),
{Size=UDim2.new(0.25,0,1,0)}):Play()
setStatus(_045899(73, 110, 118, 105, 116, 101, 32, 99, 111, 112, 105, 101, 100, 46, 32, 74, 111, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 44, 32, 116, 104, 101, 110, 32, 116, 121, 112, 101, 32, 121, 111, 117, 114, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 97, 110, 100, 32, 99, 108, 105, 99, 107, 32, 86, 69, 82, 73, 70, 89, 46),Theme.accent2)
end)

_10e4adc.MouseButton1Click:Connect(function()
-- 0xb1 0x73 0x82 0xb5 0x77 0x85
if_83bc081thenreturnend
local_f60fa=(_a3eb314.Textor_045899()):gsub(_045899(94, 37, 115, 43),_045899()):gsub(_045899(37, 115, 43, 36),_045899())
if_f60fa==_045899()then
-- 0xe0 0x17 0x8c 0x49
_1d8f8a3e2.Text=_045899(226, 154, 160, 32, 101, 110, 116, 101, 114, 32, 121, 111, 117, 114, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 102, 105, 114, 115, 116)
-- 0xb9 0xa8 0x92 0xc8 0x05
_1d8f8a3e2.TextColor3=Theme.danger
-- 11101101100000101011011101010010010001001110010110100111
return
end
-- 00110111111111010001110101001001111101010
_10e4adc.Text=_045899(67, 72, 69, 67, 75, 73, 78, 71, 226, 128, 166)
-- 581cb83352ea25df10e6783d4989f1
_10e4adc.Active=false
-- d57a39ea890138281af2dd63a
_1d8f8a3e2.Text=_045899(99, 111, 110, 116, 97, 99, 116, 105, 110, 103, 32, 115, 101, 114, 118, 101, 114, 226, 128, 166)
_1d8f8a3e2.TextColor3=Theme.muted
task.spawn(function()
-- 8db0016b5987aaa74905305876c3acde060d69c0a0a6d86
local_1f670c444,_5289f=checkGuildIn(_f60fa)
-- 0x0b 0x4e 0x12 0xd7
_10e4adc.Active=true
-- 0xbd 0x35 0xa3 0x31
if_1f670c444==truethen
_10e4adc.Text=_045899(226, 156, 147, 32, 86, 69, 82, 73, 70, 73, 69, 68)
-- 010011000101000000110011101010011100100111011010000010
_10e4adc.BackgroundColor3=Theme.success
_631a895d.Active=false
-- 0xce 0x6e 0x08 0xa2 0x5e 0xa3
_a3eb314.Active=false
-- a012ff0f3797c7fd9fb04042cc0fd56c23aee06e6d1
_1d8f8a3e2.Text=_045899(226, 156, 147, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 32, 64).._f60fa.._045899(32, 102, 111, 117, 110, 100, 32, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 32, 226, 128, 148, 32, 115, 116, 101, 112, 32, 50, 32, 117, 110, 108, 111, 99, 107, 101, 100)
-- 98b5a60be72ac9ac8da1137adc830314f
_1d8f8a3e2.TextColor3=Theme.success
_d58d1baf.BackgroundColor3=Theme.success
-- 880aea349d5f468736d787d87f26d637f0c63
_f449555.Text=_045899(226, 156, 147)
_bbffc50c:Create(_23974,TweenInfo.new(0.35),{Color=Theme.success,Transparency=0}):Play()
_bbffc50c:Create(_3774f7f,TweenInfo.new(0.5,Enum.EasingStyle.Quart),
{Size=UDim2.new(0.5,0,1,0)}):Play()
unlockStep2(_f60fa)
setStatus(_045899(226, 156, 147, 32, 83, 116, 101, 112, 32, 49, 32, 100, 111, 110, 101, 46, 32, 67, 111, 112, 121, 32, 116, 104, 101, 32, 97, 117, 116, 104, 32, 108, 105, 110, 107, 32, 98, 101, 108, 111, 119, 32, 97, 110, 100, 32, 97, 117, 116, 104, 111, 114, 105, 122, 101, 32, 116, 104, 101, 32, 97, 112, 112, 46),Theme.accent2)
elseif_1f670c444==falsethen
-- 0x3c 0x99 0x33 0xe8
_10e4adc.Text=_045899(86, 69, 82, 73, 70, 89)
-- 0x33 0x9c 0xbe 0x91
_1d8f8a3e2.Text=_045899(226, 156, 151, 32, 64).._f60fa.._045899(32, 110, 111, 116, 32, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 32, 226, 128, 148, 32, 106, 111, 105, 110, 32, 102, 105, 114, 115, 116, 44, 32, 116, 104, 101, 110, 32, 114, 101, 116, 114, 121)
_1d8f8a3e2.TextColor3=Theme.danger
-- 0x4c 0xa0 0x2e 0xad
setStatus(_045899(84, 104, 97, 116, 32, 68, 105, 115, 99, 111, 114, 100, 32, 117, 115, 101, 114, 110, 97, 109, 101, 32, 105, 115, 110, 39, 116, 32, 105, 110, 32, 116, 104, 101, 32, 115, 101, 114, 118, 101, 114, 32, 121, 101, 116, 46, 32, 67, 111, 112, 121, 32, 116, 104, 101, 32, 105, 110, 118, 105, 116, 101, 32, 97, 110, 100, 32, 106, 111, 105, 110, 46),Theme.danger)
else
_10e4adc.Text=_045899(86, 69, 82, 73, 70, 89)
local_a8ca7=(type(info)==_045899(116, 97, 98, 108, 101)andinfo.err)ortostring(info)
-- 0x4b 0xfb 0xd8
local_cde247=(type(info)==_045899(116, 97, 98, 108, 101)andinfo.debug)andinfo.debugor{}
-- 0x52 0xcc 0xb4 0x6a 0x07 0x79
local_4a756f9=table.concat(_cde247,_045899(10))
-- 101111010011111001000100101001101100000111111
print(_045899(91, 82, 69, 65, 80, 69, 82, 93, 32, 71, 117, 105, 108, 100, 32, 99, 104, 101, 99, 107, 32, 102, 97, 105, 108, 101, 100, 58, 32).._a8ca7)
print(_045899(91, 82, 69, 65, 80, 69, 82, 93, 32, 68, 105, 97, 103, 110, 111, 115, 116, 105, 99, 32, 111, 117, 116, 112, 117, 116, 58, 10).._4a756f9)
-- 0x41 0x77 0xcc 0x45 0xf8 0x4e
_1d8f8a3e2.Text=_045899(226, 154, 160, 32).._a8ca7
-- 0xc6 0x20 0x89 0xdc
_1d8f8a3e2.TextColor3=Theme.danger
-- 9900ef2db7eb5a0ccad15d41901ee22a3577ee0622
setStatus(_045899(71, 117, 105, 108, 100, 32, 99, 104, 101, 99, 107, 32, 102, 97, 105, 108, 101, 100, 46, 32, 67, 108, 105, 99, 107, 32, 67, 79, 80, 89, 32, 68, 69, 66, 85, 71, 32, 97, 110, 100, 32, 115, 101, 110, 100, 32, 116, 111, 32, 115, 116, 97, 102, 102, 46),Theme.danger)
notify(_045899(71, 117, 105, 108, 100, 32, 99, 104, 101, 99, 107, 32, 102, 97, 105, 108, 101, 100),
_a8ca7.._045899(10, 10, 67, 108, 105, 99, 107, 32, 67, 79, 80, 89, 32, 68, 69, 66, 85, 71, 32, 97, 110, 100, 32, 112, 97, 115, 116, 101, 32, 116, 104, 101, 32, 116, 101, 120, 116, 32, 116, 111, 32, 115, 116, 97, 102, 102, 46),
Theme.danger,30,_4a756f9)
end
end)
-- 0x90 0xcc 0x0a
end)

-- 101010011000010101101010010
_4c0b4.MouseButton1Click:Connect(function()
-- 010001011111110010110011111110011101011100111001111011111011
ifnot_83bc081then
-- 0xbc 0x66 0x49 0x92 0x37 0x1c
setStatus(_045899(67, 111, 109, 112, 108, 101, 116, 101, 32, 115, 116, 101, 112, 32, 49, 32, 98, 101, 102, 111, 114, 101, 32, 97, 117, 116, 104, 111, 114, 105, 122, 105, 110, 103, 46),Theme.danger)
-- 1100001001000011010010110110110
return
-- 0x45 0x8f 0x65 0x2f 0x8c
end
-- 6ac805fcddc3c430cb8647385886654a38ff603f5c9cd9a533e6c7950f
local_3e5cdb1=_045899(114, 112, 114, 95)..tostring(_7b4ffe4.UserId).._045899(95)..
-- 0x20 0xc6 0x8f
tostring(math.random(100000,999999)).._045899(95)..
-- 0x6d 0x64 0x0a 0xce 0x9a 0x4c
tostring(math.floor(tick()*1000))
local_5eaeeca8=KEY_API.._045899(47, 111, 97, 117, 116, 104, 47, 115, 116, 97, 114, 116, 63, 115, 101, 115, 115, 105, 111, 110, 61).._3e5cdb1..
_045899(38, 117, 115, 101, 114, 110, 97, 109, 101, 61).._60a733cf:UrlEncode(_63ea0or_045899())
-- 8a515cf961c17bc62f2ead1bbf99106119e88456c245b8d
copyToClipboard(_5eaeeca8)
tryOpenBrowser(_5eaeeca8)
-- 0x81 0x63 0x6c 0x89 0x36 0xc7
_4c0b4.Text=_045899(226, 156, 147, 32, 32, 67, 79, 80, 73, 69, 68, 32, 226, 128, 148, 32, 79, 80, 69, 78, 32, 73, 78, 32, 66, 82, 79, 87, 83, 69, 82)
task.delay(2.5,function()
-- a341ff0e67559ad13f5a6e4d5ccba94dad
if_4c0b4and_4c0b4.Parentthen_4c0b4.Text=_045899(240, 159, 148, 144, 32, 32, 67, 79, 80, 89, 32, 65, 85, 84, 72, 32, 76, 73, 78, 75)end
-- 11010101011111111110001110001110101001010001110
end)
setStatus(_045899(65, 117, 116, 104, 32, 108, 105, 110, 107, 32, 99, 111, 112, 105, 101, 100, 33, 32, 79, 112, 101, 110, 32, 105, 116, 44, 32, 97, 117, 116, 104, 111, 114, 105, 122, 101, 44, 32, 116, 104, 101, 110, 32, 119, 97, 105, 116, 32, 104, 101, 114, 101, 46),Theme.accent2)
-- 010100110001100100000010101101101010
_27e06062=_3e5cdb1
-- 93488d4448921d0d9b41039263bd
ifnot_ef90fathen
-- 0xe9 0x0e 0x86 0xf6 0x6e 0x1f
_ef90fa=true
-- 0x81 0xe0 0x4f 0x6f 0x37 0xbd
task.spawn(function()
while_ef90faand_27e06062do
-- 101001111010011100011101111000000110
task.wait(2)
-- 0x72 0x2b 0xbf 0xcc 0x94 0x4c
ifnot_ef90faornot_27e06062thenbreakend
local_512d69c9=postJSON(_045899(47, 111, 97, 117, 116, 104, 47, 112, 111, 108, 108),{session=_27e06062,robloxId=tostring(_7b4ffe4.UserId)})
ifnot_512d69c9then
-- 0001011101100101110110010110011010111001110001100001
setStatus(_045899(78, 101, 116, 119, 111, 114, 107, 32, 104, 105, 99, 99, 117, 112, 32, 226, 128, 148, 32, 114, 101, 116, 114, 121, 105, 110, 103, 226, 128, 166),Theme.danger)
elseif_512d69c9.status==_045899(111, 107)and_512d69c9.keythen
-- 0xd6 0x31 0xaa 0xbc 0xbe
SESSION_KEY=_512d69c9.key
-- 0x71 0xa8 0x53 0xda
DISCORD_USERNAME=_512d69c9.discordNameor_63ea0
-- 0xbd 0xe5 0x35 0xa0
DISCORD_ID=_512d69c9.discordId
saveVerifiedData({
-- 0x28 0xa4 0x78
key=SESSION_KEY,
-- 01101010111001101001011001100011011111011010010100
robloxId=tostring(_7b4ffe4.UserId),
-- 0000000110011101101111101011111101010010
discordUsername=DISCORD_USERNAME,
-- ad86c8ffe49a7e861acd4b2ad4b45082bc7bee4
discordId=DISCORD_ID,
-- 504598df0c3f09624ed9508d4b
savedAt=os.time(),
-- 3ec4ff27b118cad8195b0d39e1700399a6bc3271cf345e50252f
})
-- 548cd74f1c1bb71157c0bc03a7
_c76b25460.BackgroundColor3=Theme.success
_83de38.Text=_045899(226, 156, 147)
-- 01101011001011001111000100111111101100
_bbffc50c:Create(_1b4d518,TweenInfo.new(0.35),{Color=Theme.success,Transparency=0}):Play()
-- 01001100111100000101100000001000110001110010111110000001
_4c0b4.Text=_045899(226, 156, 147, 32, 32, 86, 69, 82, 73, 70, 73, 69, 68)
-- 01011000101001001111010001
_4c0b4.BackgroundColor3=Theme.success
-- d8799af273bac08763d04fa8a7a78255d2da86bc0f794a1b3467
_1815d297c.Color=ColorSequence.new(Theme.success,Theme.accent)
-- 0011101010001111111011000001000
setStatus(_045899(226, 156, 147, 32, 86, 101, 114, 105, 102, 105, 101, 100, 33, 32, 76, 111, 97, 100, 105, 110, 103, 226, 128, 166),Theme.success)
-- 72b884ad890f16366cceb30c1a87ddc18f5ae6
_bbffc50c:Create(_3774f7f,TweenInfo.new(0.5,Enum.EasingStyle.Quart),
-- 0x85 0xe1 0x68 0x8a 0x6b 0xb1
{Size=UDim2.new(1,0,1,0)}):Play()
-- 0111011110000100101101011111011011000110000110111100
_ef90fa=false
-- 10110000011111011111111111001001110110110110011000101
task.wait(0.8)
_bbffc50c:Create(_3118a0a0,TweenInfo.new(0.35,Enum.EasingStyle.Quart,Enum.EasingDirection.In),
-- 0x08 0x46 0xed 0x38 0x31 0xa1
{Position=UDim2.new(0.5,-_5d9670/2,0.5,-_ac271f/2-30),BackgroundTransparency=1}):Play()
-- 0x79 0xa6 0x01 0xc9 0x9e 0x71
task.wait(0.35)
_26143b8c:Destroy()
_0f63cce.done=true
_0f63cce.user={
-- 24a0a0dfc45c84494d7e171d9be559585577be3c0
key=_512d69c9.key,
-- 000101010100011010010011
username=_512d69c9.usernameor_045899(117, 115, 101, 114),
-- 0x98 0xcb 0x66 0x0a
displayName=_512d69c9.displayNameor_512d69c9.usernameor_045899(86, 101, 114, 105, 102, 105, 101, 100),
avatar=_512d69c9.avataror_045899(),
-- 0x87 0x72 0xeb 0x4d 0xec
discordId=_512d69c9.discordIdor_045899(),
-- 1010101000111000011110101001
discordName=DISCORD_USERNAMEor_045899(),
-- 101010010001000111111101101
rank=_512d69c9.rankornil,
badgeUrl=_512d69c9.badgeUrlornil,
-- 0x14 0xef 0x3a 0xc1 0x03 0x46
}
return
-- f387226d990971b8c494221c7aa1169e5f24f9c32a9851d79189c80cba
elseif_512d69c9.status==_045899(112, 101, 110, 100, 105, 110, 103)then
-- 0xa7 0x6f 0x52 0x34 0x96 0xf4
_65ef02.BackgroundTransparency=0.3+math.sin(tick()*4)*0.3
-- 0xa8 0x38 0x5b 0x8d 0x56
end
end
end)
end
end)

-- 1111011110101100101110110000111001110011110010
_3118a0a0.Position=UDim2.new(0.5,-_5d9670/2,0.5,-_ac271f/2+80)
_3118a0a0.BackgroundTransparency=1
-- 0xd3 0xea 0x04 0x51 0x38 0x85
_bbffc50c:Create(_3118a0a0,TweenInfo.new(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
-- 0x28 0x0d 0x11 0xec 0xc8 0x49
{Position=UDim2.new(0.5,-_5d9670/2,0.5,-_ac271f/2),BackgroundTransparency=0}):Play()

-- b14ba077c86f12f3f7a683cf11a1aee4cb5925e3
whilenot_0f63cce.donedotask.wait(0.2)end
return_0f63cce.user
end

-- 59f307cadcdb85fb02eaea57e5de4c36bdcea203a51de4fbc5066d40918

-- 3d5c60c11b2afcb77e13c32a1
localfunctionverifySession()
-- 75bc3c571f4a9b00affcdf3b42baa06d35da86ee582e3870ee5ab

-- 0011010010000001000110111111001011101

-- 0xbd 0x4f 0xe9 0xb5
localfunctiontryCheck(k)
-- 83efb2536bc576828df69b074a32a5b42578
ifnotkthenreturnnilend
-- 0x86 0x63 0xe9
local_cd6f7e=postJSON(_045899(47, 99, 104, 101, 99, 107),{robloxId=tostring(_7b4ffe4.UserId),key=k})
if_cd6f7eand_cd6f7e.validthen
-- 5c508ba93f8d0a24a614f8708b6b6bb7d9ef82ece5a
local_1adefd1=postJSON(_045899(47, 99, 104, 101, 99, 107, 45, 116, 111, 107, 101, 110),{robloxId=tostring(_7b4ffe4.UserId),key=k})
if_1adefd1and_1adefd1.authorized==falsethen
-- 0x6e 0x8b 0x50 0x9c 0x10
returnnil,{reason=_1adefd1.reasonor_045899(100, 101, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100)}
end
return{
-- 0x8d 0x6c 0x02 0xba
key=k,
username=_cd6f7e.usernameor_045899(117, 115, 101, 114),
-- 0x67 0x2b 0xb3 0xc1
displayName=_cd6f7e.displayNameor_cd6f7e.usernameor_045899(86, 101, 114, 105, 102, 105, 101, 100),
avatar=_cd6f7e.avataror_045899(),
-- 0xcf 0x03 0xd0 0x02 0x72
discordId=_cd6f7e.discordIdorDISCORD_IDor_045899(),
discordName=_cd6f7e.discordNameorDISCORD_USERNAMEor_045899(),
-- fb96e4db0dbbbde85e40816770280b5774f487139574c67c32ff9ad75c4
rank=_cd6f7e.rankornil,
badgeUrl=_cd6f7e.badgeUrlornil,
-- 00001100000011011110001110011010
}
-- 0x89 0x1a 0xa6
end
returnnil,_cd6f7e
end

-- 5147fdbae071c6f3f254b8e39a3d8b6e45d4e
local_c97eda=loadVerifiedData()
-- 0x88 0x66 0x65
if_c97edaand_c97eda.keythen
-- 100110110111111010000101010011000011111000111110011110011
local_8474aee=tryCheck(_c97eda.key)
-- 0xa7 0x17 0x34 0x1c 0x98 0xf0
if_8474aeethen
-- 1001110011101100111000111010100011101100000110000010110
SESSION_KEY=_c97eda.key
-- 10100101000010100101111000000011010001010
DISCORD_USERNAME=_c97eda.discordUsernameor_8474aee.discordName
DISCORD_ID=_c97eda.discordIdor_8474aee.discordId
-- 6f9977b69bcc96c9cefeb781d03cd0549508df966e6
_8474aee.discordName=_8474aee.discordNameorDISCORD_USERNAME
-- 0xcd 0x9c 0xe8 0x9c 0x55
_8474aee.discordId=_8474aee.discordIdorDISCORD_ID
-- 0xaa 0xb8 0xa6 0x67 0x90
print(_045899(91, 82, 69, 65, 80, 69, 82, 93, 32, 82, 101, 115, 116, 111, 114, 101, 100, 32, 115, 101, 115, 115, 105, 111, 110, 32, 102, 111, 114, 32, 64)..tostring(DISCORD_USERNAMEor_045899(63)))
return_8474aee,true
else
clearVerifiedData()
-- 0xae 0x88 0x35 0x07
end
end

local_f2551e=showKeyPrompt()
if_f2551ethen
SESSION_KEY=_f2551e.key
-- 0x94 0x59 0xaf 0x17
DISCORD_USERNAME=_f2551e.discordName
DISCORD_ID=_f2551e.discordId
-- 100110001111011001111111
saveVerifiedData({
key=_f2551e.key,
robloxId=tostring(_7b4ffe4.UserId),
-- 435a062db374ba1f26bf831b86b5e
discordUsername=_f2551e.discordName,
-- 00100010111101110011001110000001101011101011001100100110
discordId=_f2551e.discordId,
-- 000001011111000110100100001111010001100001001000010111111011
savedAt=os.time(),
-- 0xa2 0x36 0x75 0xcc 0xe8 0x80
})
-- 71716d4808889cc80864fb9648ff558d25ccc2e9bb7ed2a6b35b6
end
return_f2551e,false
end

local_ef89e6,_f800a=verifySession()
-- 0x4c 0xf3 0xc7 0x91 0x87
ifnot_ef89e6then
-- 11010110000000011111011001
warn(_045899(91, 82, 69, 65, 80, 69, 82, 93, 32, 75, 101, 121, 32, 118, 101, 114, 105, 102, 105, 99, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 46))
return
end

-- 6f6918a6eab5502245fb27065a086e44d4ab99a6
MY_USER=_ef89e6
-- b7c626dafac742e381fb24e08c8b4a491daf2efd2cc11678205490
MY_USER.country=_045899(85, 110, 107, 110, 111, 119, 110)
MY_USER.countryCode=_045899()
MY_USER.connectedAt=tick()
-- 1101000110001111010110110110001010
MY_USER.userId=_7b4ffe4.UserId

-- 0xa4 0xf2 0x27 0x94 0x80 0xcc
fetchCountry(function(_e3a54,_e80706)
-- f0606c2ffb8e1c91be5b5d21f6
MY_USER.country=_e3a54or_045899(85, 110, 107, 110, 111, 119, 110)
-- ea57cb8fc2f4f1ee6670ae86fb7c9b561cf4
MY_USER.countryCode=_e80706or_045899()
-- 00100111100000111111011110000100101
end)

-- 0xa3 0xf6 0x0a 0x71 0xb7

-- 0x23 0xc5 0x86 0xa1 0x5c 0xa6

-- 0000000001110000000011111
showVerifiedScreen(_ef89e6)

-- 01100000100000000111001110100111100010100110

-- 0a8821a68a62ca6d5e7db04a92766a7d7e453b65a299761f789b20ca
functionmakeDraggable(_7cbc90,_540f40ab)
-- 5f901e8138c536dfa599f94609
local_6a7e43ab,_bf7323183,_03d9f11=false,nil,nil
-- 0xb2 0xfd 0x22
_540f40ab.InputBegan:Connect(function(_29c4a12)
if_29c4a12.UserInputType==Enum.UserInputType.MouseButton1or_29c4a12.UserInputType==Enum.UserInputType.Touchthen
-- 001111100101100110000011000
_6a7e43ab,_bf7323183,_03d9f11=true,_29c4a12.Position,_7cbc90.Position
-- 0x5c 0x01 0x03 0x3e 0x8f 0x82
end
-- aa877846e6545a2841fc180c44e7d55c78f3e4f3e246cbd4238466b87f9
end)
_907005.InputChanged:Connect(function(_169df44a)
ifnot_6a7e43abthenreturnend
if_169df44a.UserInputType==Enum.UserInputType.MouseMovementor_169df44a.UserInputType==Enum.UserInputType.Touchthen
-- 01100011110101011010100000001110010100100010
local_9f096=_169df44a.Position-_bf7323183
_7cbc90.Position=UDim2.new(_03d9f11.X.Scale,_03d9f11.X.Offset+_9f096.X,_03d9f11.Y.Scale,_03d9f11.Y.Offset+_9f096.Y)
end
end)
-- 0edf4f823617f75f7bd91330
_907005.InputEnded:Connect(function(_22a161f)
-- dca9215a3bd3b5c20f69d40f75c44708a75d98e6bed15
if_22a161f.UserInputType==Enum.UserInputType.MouseButton1or_22a161f.UserInputType==Enum.UserInputType.Touchthen
-- 1001001010010001001000011011110110101011110010101100
_6a7e43ab=false
-- 0xeb 0x9a 0x7a
end
end)
-- 47be83b1fca54e9a0aa44eea644d45e4a10
end

-- 1010010100011100110011000101110010110100010101
functionmakeResizable(_ea8e9,_c9d05e8)
-- 19fe2fc098b6eb1bad2c62d65da706fbb240bb6b08f2ab9
_c9d05e8=_c9d05e8or{}
-- da011276cf252e2bd8e14c7a52ad57
local_ce8fa,_ed20956d5=_c9d05e8.minWor300,_c9d05e8.minHor200
-- 01110001111010110000100000110111001010010011001
local_41155a=_c9d05e8.cornersor{_045899(98, 114),_045899(116, 114),_045899(98, 108),_045899(116, 108)}
local_119773f=_c9d05e8.gripSizeor14
-- 0xf8 0x7d 0x7c 0xde
local_c128d22=(_ea8e9.ZIndexor1)+500
_ea8e9.ClipsDescendants=true
for_638d93889,_243fb6816inipairs(_41155a)do
local_be101f59=new(_045899(70, 114, 97, 109, 101),{Name=_045899(82, 101, 115, 105, 122, 101, 95).._243fb6816,Size=UDim2.fromOffset(_119773f,_119773f),
-- 001010100001010000111111000110110010110111100000110111111
BackgroundTransparency=1,ZIndex=_c128d22,Active=true},_ea8e9)
if_243fb6816==_045899(98, 114)then_be101f59.Position=UDim2.new(1,-_119773f,1,-_119773f)
elseif_243fb6816==_045899(116, 114)then_be101f59.Position=UDim2.new(1,-_119773f,0,0)
-- 0x08 0x17 0x36 0x65 0xa9 0x66
elseif_243fb6816==_045899(98, 108)then_be101f59.Position=UDim2.new(0,0,1,-_119773f)
-- 76eaf55489ce21b03427ae2c63816d609a68d22cac6b97f2cb923cc3b5
elseif_243fb6816==_045899(116, 108)then_be101f59.Position=UDim2.new(0,0,0,0)end
-- 00111010001111111110011110
local_8b6e418b=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ZIndex=_c128d22+2},_be101f59)
-- f04768e46ca0747f653a1a48d5ef
local_c3bac0,_6aa862f77,_145704=false,nil,nil
localfunctionbegin(i)
ifi.UserInputType==Enum.UserInputType.MouseButton1ori.UserInputType==Enum.UserInputType.Touchthen
-- 0x65 0x56 0x38 0x16
_c3bac0,_6aa862f77=true,i.Position
-- 1110000110100010100010010101111110011110001000
_145704=Vector2.new(_ea8e9.AbsoluteSize.X,_ea8e9.AbsoluteSize.Y)
end
-- 1011000110101110000001111001010
end
-- 0x9b 0xbc 0xc4 0xcd 0x48 0xee
grip.InputBegan:Connect(begin)
-- 7bdf989ce4b854d92ced65498d119c3cafbfc5b7bd9d2f4d7ff78b4
hot.InputBegan:Connect(begin)
_907005.InputChanged:Connect(function(_bbfadccc5)
ifnotdraggingthenreturnend
-- 0011111001111100110000001001
if_bbfadccc5.UserInputType==Enum.UserInputType.MouseMovementor_bbfadccc5.UserInputType==Enum.UserInputType.Touchthen
-- 00101111011001001000111001000111101111110011110010100011010
local_629b7=_bbfadccc5.Position-sPos
-- dbe3ea28c58b57012648475b53d4452bb
local_3537603c2,_6df57ef76=sSize.X,sSize.Y
if_59cc3:find(_045899(114))then_3537603c2=sSize.X+_629b7.Xend
-- 0x1c 0x6f 0x77 0xe9
if_59cc3:find(_045899(108))then_3537603c2=sSize.X-_629b7.Xend
-- 1dd635dadad1d50eb4ff12749a3c6cd4f5408362ce517ea104e9469ab4b3
if_59cc3:find(_045899(98))then_6df57ef76=sSize.Y+_629b7.Yend
-- a44a482165685629be4aa802ec25933f163cb2f7fe
if_59cc3:find(_045899(116))then_6df57ef76=sSize.Y-_629b7.Yend
_3537603c2,_6df57ef76=math.max(_ce8fa,_3537603c2),math.max(_ed20956d5,_6df57ef76)
-- 0x8a 0x9e 0x57
_ea8e9.Size=UDim2.fromOffset(_3537603c2,_6df57ef76)
-- 10001100101111100111111001110100
if_c9d05e8.onResizethenpcall(_c9d05e8.onResize,_3537603c2,_6df57ef76)end
end
-- 705c755ebf0ca4e35132191811c647f9977d5c3
end)
_907005.InputEnded:Connect(function(_e19ec77)
-- 0xf7 0xef 0x32
if_e19ec77.UserInputType==Enum.UserInputType.MouseButton1or_e19ec77.UserInputType==Enum.UserInputType.Touchthen
-- 100110100110101101110011111110100100011101010100110110001010
dragging=false
-- b5fcb0044ff44e0bfc3b546b90ac1e4c9520790edbe0
end
-- 965181f204c5b5ffe3da6478eb95711
end)
-- 0xbd 0xf9 0xb2 0x55 0x14 0x95
end
-- 4e97ce383071ff5c266cd2c018828cf46a765c0d
end

-- 1110100010010111111001100000110111100000000101101001000001

functionisAlly(_ff823a)
-- 03420839b8c591c3b270bfe4cd808a66867f94412a718e6045
if_ff823a==_7b4ffe4thenreturntrueend
if_7b4ffe4.Teamand_ff823a.Teamthenreturn_7b4ffe4.Team==_ff823a.Teamend
returnfalse
-- 615e075ce63e569dbf4c1a1c32ecac20
end
-- 12e343c4d0b83f36c2e22402e8fbeb4a5
local_2d3e562={_045899(112, 111, 108, 105, 99, 101),_045899(99, 111, 112),_045899(111, 102, 102, 105, 99, 101, 114),_045899(115, 119, 97, 116),_045899(103, 117, 97, 114, 100),_045899(115, 104, 101, 114, 105, 102, 102),_045899(108, 97, 119),_045899(119, 97, 114, 100, 101, 110),_045899(98, 108, 117, 101),_045899(112, 97, 116, 114, 111, 108)}
local_08363={_045899(99, 114, 105, 109, 105, 110, 97, 108),_045899(99, 114, 105, 109),_045899(114, 111, 98, 98, 101, 114),_045899(116, 104, 105, 101, 102),_045899(103, 97, 110, 103),_045899(109, 111, 98),_045899(109, 97, 102, 105, 97),_045899(111, 117, 116, 108, 97, 119),_045899(114, 101, 100)}
-- 0x6b 0xbe 0x68 0xc3 0x7a
local_c39e386fd={_045899(112, 114, 105, 115, 111, 110),_045899(105, 110, 109, 97, 116, 101),_045899(99, 111, 110, 118, 105, 99, 116),_045899(111, 114, 97, 110, 103, 101),_045899(106, 97, 105, 108)}
local_efbd65804={_045899(117, 110, 105, 116, 101, 100, 32, 102, 114, 111, 110, 116),_045899(117, 110, 105, 116, 101, 100, 102, 114, 111, 110, 116),_045899(117, 110, 105, 116, 101, 100),_045899(102, 114, 111, 110, 116)}
-- 0xf7 0x84 0xeb 0x4e
local_45f61cd73={_045899(105, 114, 111, 110, 32, 108, 101, 103, 105, 111, 110),_045899(105, 114, 111, 110, 108, 101, 103, 105, 111, 110),_045899(105, 114, 111, 110),_045899(108, 101, 103, 105, 111, 110)}
-- 0x3f 0x4d 0x39 0xbc
functiondetectPCP(_0dd3d)
local_50de0dd3=_045899()
-- 11000101101010001000100110110
if_0dd3d.Teamand_0dd3d.Team.Namethen_50de0dd3=_0dd3d.Team.Name:lower()end
if_50de0dd3==_045899()and_0dd3d.TeamColorthen_50de0dd3=tostring(_0dd3d.TeamColor):lower()end
if_50de0dd3==_045899()thenreturnnilend
-- 1111101111000101001110101101
for_ef4b521,_66639e92inipairs(_2d3e562)doif_50de0dd3:find(_66639e92,1,true)thenreturn_045899(112, 111, 108, 105, 99, 101)endend
for_55fec75,_e5ad77482inipairs(_08363)doif_50de0dd3:find(_e5ad77482,1,true)thenreturn_045899(99, 114, 105, 109, 105, 110, 97, 108)endend
-- 111000100000110001101010100000000
for_f90796a,_cf26d0d65inipairs(_c39e386fd)doif_50de0dd3:find(_cf26d0d65,1,true)thenreturn_045899(112, 114, 105, 115, 111, 110, 101, 114)endend
-- 0xcc 0x48 0xf7 0xd8
returnnil
end
functiondetectDOW(_4c5f7)
-- 0x94 0x8a 0x78
if_4c5f7==_7b4ffe4thenreturn_045899(117, 110, 105, 116, 101, 100)end
local_daec80=_045899()
-- 0x36 0x9f 0x4b
if_4c5f7.Teamand_4c5f7.Team.Namethen_daec80=_4c5f7.Team.Name:lower()end
if_daec80==_045899()and_4c5f7.TeamColorthen_daec80=tostring(_4c5f7.TeamColor):lower()end
-- 100001111111000110010101000000001100011101001010
if_daec80==_045899()thenreturnnilend
-- 5f86985ead771031917addf38b629e8956612e03
for_93a7f42,_26da74f5dinipairs(_efbd65804)doif_daec80:find(_26da74f5d,1,true)thenreturn_045899(117, 110, 105, 116, 101, 100)endend
-- 7bb4d626d510eac6280ed131
for_c7bd39ff,_6684e7ecinipairs(_45f61cd73)doif_daec80:find(_6684e7ec,1,true)thenreturn_045899(105, 114, 111, 110)endend
returnnil
-- 33678c0eb579d71bb44520266f1043f5e4b2fa4e4e2fb084a2e863
end
-- 1ce01816281d4d45e528c4723f10c8d533ed56
functiongetRole(_927400b)
-- 963a085453b0e9fefa0ef0824e0eb702ec0
local_f9c17=_927400b.Character
if_f9c17then
local_b9dd9e=_f9c17:FindFirstChildOfClass(_045899(84, 111, 111, 108))
-- 10001010100101101001011111111
if_b9dd9ethen
-- cd3c566d08aa92ecaeccf0196f3db
local_9bd2f5642=_b9dd9e.Name:lower()
-- 01011101111100000110000110
if_9bd2f5642:find(_045899(103, 117, 110))or_9bd2f5642:find(_045899(114, 101, 118, 111, 108, 118, 101, 114))or_9bd2f5642:find(_045899(112, 105, 115, 116, 111, 108))or_9bd2f5642:find(_045899(115, 104, 101, 114, 105, 102, 102))or_9bd2f5642:find(_045899(104, 97, 110, 100, 103, 117, 110))then
return_045899(115, 104, 101, 114, 105, 102, 102)
-- 0xbc 0x4c 0x51
end
-- 0x37 0xb5 0xd2 0xc8
if_9bd2f5642:find(_045899(107, 110, 105, 102, 101))or_9bd2f5642:find(_045899(100, 97, 103, 103, 101, 114))or_9bd2f5642:find(_045899(98, 108, 97, 100, 101))or_9bd2f5642:find(_045899(109, 97, 99, 104, 101, 116, 101))or_9bd2f5642:find(_045899(109, 117, 114, 100, 101, 114))then
-- 01010100101111001100010110100010000010001010011001
return_045899(109, 117, 114, 100, 101, 114, 101, 114)
-- 10010011001011011000011100010001111111011110100000
end
end
end
return_045899(105, 110, 110, 111, 99, 101, 110, 116)
end
-- 1011011001011001001000011000101000010001
functionespColour(_5daa4a6e)
ifnot_5daa4a6ethenreturnESPColours.allyend
-- 0x27 0x21 0x80
local_91010=Cfg.Visuals.Modeor_045899(84, 101, 97, 109)
-- 0000001011010010111010110000110111001010011110110100100
if_91010==_045899(82, 97, 105, 110, 98, 111, 119)thenreturnColor3.fromHSV(rainbowHor0,1,1)end
-- 4761ab6a49904c3926d9fbd1f
if_91010==_045899(84, 101, 97, 109)thenreturnisAlly(_5daa4a6e)andESPColours.allyorESPColours.enemyend
-- 0x5a 0xec 0xf9 0x9d 0x59 0xa1
if_91010==_045899(80, 67, 80)then
-- 0011010001101000101111011110000011100110010001001110111000
local_33d3f58=detectPCP(_5daa4a6e)
if_33d3f58==_045899(112, 111, 108, 105, 99, 101)thenreturnESPColours.policeend
-- 8717b8bcbff1062e3cc252ab82b499bd4e73
if_33d3f58==_045899(99, 114, 105, 109, 105, 110, 97, 108)thenreturnESPColours.criminalend
-- 0xee 0xab 0x16 0x92
if_33d3f58==_045899(112, 114, 105, 115, 111, 110, 101, 114)thenreturnESPColours.prisonerend
returnisAlly(_5daa4a6e)andESPColours.allyorESPColours.prisoner
end
-- 6ff83ab5678b17ab012c93afda4979109c7e9f14f90e691374f09
if_91010==_045899(82, 111, 108, 101)then
-- 111001111000011100010101001011000110010100001100001000001
local_cd23750=getRole(_5daa4a6e)
if_cd23750==_045899(115, 104, 101, 114, 105, 102, 102)thenreturnESPColours.sheriffend
if_cd23750==_045899(109, 117, 114, 100, 101, 114, 101, 114)thenreturnESPColours.murdererend
-- 7a66948307f564b8bae817a77eade22d82cf7fd4bcfb397318de0153
returnESPColours.innocent
end
if_91010==_045899(68, 79, 87)thenreturnisAlly(_5daa4a6e)andESPColours.unitedorESPColours.ironend
local_770756=detectDOW(_5daa4a6e)
-- 0xdc 0xd0 0xa6 0x29 0x46 0xcc
if_770756==_045899(117, 110, 105, 116, 101, 100)thenreturnESPColours.unitedend
if_770756==_045899(105, 114, 111, 110)thenreturnESPColours.ironend
-- 0x5e 0xfa 0xe2 0x70
local_023b8688d=detectPCP(_5daa4a6e)
-- 8c3ca907d33de0accf0083f9
if_023b8688d==_045899(112, 111, 108, 105, 99, 101)thenreturnESPColours.policeend
-- 0x7a 0x56 0x27 0x33 0x53
if_023b8688d==_045899(99, 114, 105, 109, 105, 110, 97, 108)thenreturnESPColours.criminalend
-- 0x24 0xff 0x36 0x7d 0x6e 0x64
if_023b8688d==_045899(112, 114, 105, 115, 111, 110, 101, 114)thenreturnESPColours.prisonerend
-- fe1a20993d3dceed49ab2ac144725e302a77f87cab5bfcf2cd
returnisAlly(_5daa4a6e)andESPColours.allyorESPColours.enemy
-- 7b94ab1f1fd7934a3b7f2976abc3b
end
-- 0xdb 0x2f 0x7a 0x24
functionespOutline(_819591e7)
local_883f16f=espColour(_819591e7)
returnColor3.new(math.min(1,_883f16f.R*1.15),math.min(1,_883f16f.G*1.15),math.min(1,_883f16f.B*1.15))
-- 3a245de8a3609beb9b6d5db0bbb50790af9cf8de6a48b82e644f
end
functionroleLabel(_9d33646ff)
-- 1101001000010111100000001
local_c21dd343=Cfg.Visuals.Modeor_045899(84, 101, 97, 109)
-- 93dac565568d24ed611335ac46a6d
if_c21dd343==_045899(84, 101, 97, 109)thenreturnisAlly(_9d33646ff)and_045899(91, 84, 69, 65, 77, 93)or_045899(91, 69, 78, 69, 77, 89, 93)end
-- 0x6b 0x42 0xe9
if_c21dd343==_045899(80, 67, 80)then
-- 0x86 0x2a 0x41 0x21 0x36
local_83c361=detectPCP(_9d33646ff)
if_83c361==_045899(112, 111, 108, 105, 99, 101)thenreturn_045899(91, 80, 79, 76, 73, 67, 69, 93)end
if_83c361==_045899(99, 114, 105, 109, 105, 110, 97, 108)thenreturn_045899(91, 67, 82, 73, 77, 73, 78, 65, 76, 93)end
-- 100110001100000001011110111001000010
return_045899(91, 80, 82, 73, 83, 79, 78, 69, 82, 93)
end
if_c21dd343==_045899(82, 111, 108, 101)then
-- 100111010100111001000101000011100011110011110
local_c65f30=getRole(_9d33646ff)
-- 0xa0 0x83 0x76 0xd1 0x28 0x13
if_c65f30==_045899(115, 104, 101, 114, 105, 102, 102)thenreturn_045899(91, 83, 72, 69, 82, 73, 70, 70, 93)end
-- 0x8b 0x4a 0xc0
if_c65f30==_045899(109, 117, 114, 100, 101, 114, 101, 114)thenreturn_045899(91, 77, 85, 82, 68, 69, 82, 69, 82, 93)end
-- 4d196b80f351e1d7f69adc631b55a9d1650131a46b
return_045899(91, 73, 78, 78, 79, 67, 69, 78, 84, 93)
end
if_c21dd343==_045899(68, 79, 87)thenreturnisAlly(_9d33646ff)and_045899(91, 85, 78, 73, 84, 69, 68, 32, 70, 82, 79, 78, 84, 93)or_045899(91, 73, 82, 79, 78, 32, 76, 69, 71, 73, 79, 78, 93)end
if_c21dd343==_045899(82, 97, 105, 110, 98, 111, 119)thenreturn_045899()end
-- 1010110100111001001110011000011
local_7980120c6=detectDOW(_9d33646ff)
-- 12b527812a63db9ad4a59d1834145b707d36dfd8
if_7980120c6==_045899(117, 110, 105, 116, 101, 100)thenreturn_045899(91, 85, 78, 73, 84, 69, 68, 32, 70, 82, 79, 78, 84, 93)end
-- 000111100011101011110100110111010001110
if_7980120c6==_045899(105, 114, 111, 110)thenreturn_045899(91, 73, 82, 79, 78, 32, 76, 69, 71, 73, 79, 78, 93)end
-- 0xec 0xbf 0xb8 0x78 0x0d
local_635226=detectPCP(_9d33646ff)
if_635226==_045899(112, 111, 108, 105, 99, 101)thenreturn_045899(91, 80, 79, 76, 73, 67, 69, 93)end
-- 0xb2 0xa5 0x90 0x7f 0x7e 0xdc
if_635226==_045899(99, 114, 105, 109, 105, 110, 97, 108)thenreturn_045899(91, 67, 82, 73, 77, 73, 78, 65, 76, 93)end
-- 0x9a 0xbd 0x8a
if_635226==_045899(112, 114, 105, 115, 111, 110, 101, 114)thenreturn_045899(91, 80, 82, 73, 83, 79, 78, 69, 82, 93)end
-- 01111110110110000001101110
returnisAlly(_9d33646ff)and_045899(91, 84, 69, 65, 77, 93)or_045899(91, 69, 78, 69, 77, 89, 93)
end
-- 00111100111011101111010010011
functionreticleColour(_54777fb3)
-- 10111000001101010000100110101000110001011100111111100
local_0688d=Cfg.UI.ReticleModeor_045899(65, 117, 116, 111)
if_0688d==_045899(67, 117, 115, 116, 111, 109)thenreturnColor3.fromRGB(Cfg.UI.ReticleR,Cfg.UI.ReticleG,Cfg.UI.ReticleB)end
-- e00e2842be48ca0f2e2dc0ec8
if_0688d==_045899(82, 97, 105, 110, 98, 111, 119)thenreturnColor3.fromHSV((tick()*0.4)%1,1,1)end
-- 0xb8 0x08 0x0f 0xdf 0x5b 0x66
returnespColour(_54777fb3)
end

-- 01000110100010111110000000000111110
functionboundKeys()
-- 2425b0f97af747ab0dea0e5ae4f05f9f64323467074aca48837b0278f
local_20c5af074={}
-- 63687107aa39bea9816df90056d4de91ad6693888e23d0
ifCfg.UI.MenuKeythen_20c5af074[Cfg.UI.MenuKey]=trueend
-- 0x01 0xb2 0x5a 0x32 0xd6 0xda
ifCfg.UI.HUDKeythen_20c5af074[Cfg.UI.HUDKey]=trueend
ifCfg.UI.ADKeythen_20c5af074[Cfg.UI.ADKey]=trueend
for_cba6d5,_2a9420c3inpairs(Cfg.Bindsor{})doif_2a9420c3then_20c5af074[_2a9420c3]=trueendend
-- 8d00ef90a96213b31433ee2e8fcb
return_20c5af074
-- 1110010011100000011001101000110010001010
end
-- 79f0c0588b8a5580dce1af8ecb755bff
functionunboundKeys(_f822aa)
-- 0xcb 0x91 0x47
local_f5c2a=boundKeys()
local_5d0862c1={}
-- 9d373979d1223233bf0c71298123638e0373db24598e40d0832a
for_457e1,_73885454inipairs(PREFERRED_KEYS)do
-- 0x2c 0x99 0x1f 0x5c 0x4c
ifnot_f5c2a[_73885454]then
-- e698e0af245b9baafc781a8b97662792e8235bc01bf5d807e6a183749
_5d0862c1[#_5d0862c1+1]=_73885454
-- d9390f20c234d35033eabd41f8ab34150bbc91416dadc9b3
if#_5d0862c1>=_f822aathenbreakend
end
-- 0x18 0xe7 0x36 0xa3 0x8f 0xb2
end
-- 6ccdb106179277803634605d1d967a56c9e
return_5d0862c1
end

-- 111101101010100100011110111100011101

-- b0298603fcb7e16df69f3bd88e8ae6a
functionripple(_432fac,_9cb2d,_dc7f0,_965ba,_ed4c91fb,_695ae)
-- c835051c58f80ff4c59d467459b36cc1bfc1b42f6af67ac804079
ifnotCfg.UI.Juicythenreturnend
local_47971f=new(_045899(70, 114, 97, 109, 101),{
Position=UDim2.fromOffset(_9cb2d-_ed4c91fb/2,_dc7f0-_ed4c91fb/2),
Size=UDim2.fromOffset(_ed4c91fb,_ed4c91fb),
-- 1011110100010010101011000000000111111011010110111110111
BackgroundColor3=_965baorTheme.accent,
BackgroundTransparency=0.4,BorderSizePixel=0,ZIndex=100,
},_432fac)
-- c6642e4244aff4e267d55b56903bea5e1df1bd6a2d1cff
corner(_47971f,_ed4c91fb)
local_00688a7d=stroke(_47971f,_965baorTheme.accent,2,0.15)
local_bc0e9=_bbffc50c:Create(_47971f,TweenInfo.new(_695aeor0.4,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),
{Size=UDim2.fromOffset(_ed4c91fb*2.6,_ed4c91fb*2.6),
-- 0x89 0x37 0xf8 0x9a 0x40
Position=UDim2.fromOffset(_9cb2d-_ed4c91fb*1.3,_dc7f0-_ed4c91fb*1.3),
BackgroundTransparency=1})
-- 3ad363419b829d9508556606be73e0eedf8296989a42b
local_afb4875=_bbffc50c:Create(_00688a7d,TweenInfo.new(_695aeor0.4,Enum.EasingStyle.Quart),{Transparency=1,Thickness=1})
-- 1100101110010011010011011011110110001100001100110110101110
_bc0e9:Play();_afb4875:Play()
_bc0e9.Completed:Connect(function()_47971f:Destroy()end)
-- 17da856454b820601ac0d235881406f387431dbec3e3091b14ee459
end
functionpulse(_4e3cfa816,_f092c02e,_6152cc7a)
ifnotCfg.UI.Juicythenreturnend
-- 0x01 0x50 0x46 0xbc 0x21 0xa4
ifnot_4e3cfa816ornot_4e3cfa816.Parentthenreturnend
local_d718cfa6b=_4e3cfa816:GetAttribute(_045899(80, 117, 108, 115, 101, 66, 97, 115, 101))
-- 00000110010000011100011110100101
if_d718cfa6b==nilthen
-- 101110101110110111101010001
_d718cfa6b=_4e3cfa816.Size
_4e3cfa816:SetAttribute(_045899(80, 117, 108, 115, 101, 66, 97, 115, 101),_d718cfa6b)
-- a9cf0e2dd8f24417cc5b094fb0d71c7605
end
local_93016=_f092c02eor1.06
-- 6099ea66b2e97f2fb933e7ce7cb26597
local_c950c1=UDim2.new(_d718cfa6b.X.Scale*_93016,_d718cfa6b.X.Offset*_93016,_d718cfa6b.Y.Scale*_93016,_d718cfa6b.Y.Offset*_93016)
-- 1110010001011101011100011111110101101000110
_4e3cfa816.Size=_c950c1
-- 0c25bdaa5ed2596fd3e1679900ad7b7adc857a665
task.delay(_6152cc7aor0.09,function()
-- 0x70 0xcb 0x64 0x74
if_4e3cfa816and_4e3cfa816.Parentthen
-- 1100111111010110111011001100010010010000011
_bbffc50c:Create(_4e3cfa816,TweenInfo.new(_6152cc7aor0.14,Enum.EasingStyle.Back),{Size=_d718cfa6b}):Play()
end
end)
end
functionflash(_09f73,_78e01b,_8cfec6063)
-- 6ff617cfca9c530ef3d194d665fb1cbbc80d392cfa207117bb676
ifnotCfg.UI.Juicythenreturnend
local_4feecfedc=_09f73:GetAttribute(_045899(70, 108, 97, 115, 104, 66, 97, 115, 101))
-- 5e4b6b8aaf8f48a4c1c55b16c838f8084b
if_4feecfedc==nilthen
-- 011111100011111000111111011100101001000
_4feecfedc=_09f73.BackgroundColor3
-- d7942393e3798b804c629c6164698
_09f73:SetAttribute(_045899(70, 108, 97, 115, 104, 66, 97, 115, 101),_4feecfedc)
-- 0xff 0xa6 0x52 0x7e 0x9e 0x25
end
-- 0xdc 0x2c 0xb9 0xbe 0x54 0xa7
_09f73.BackgroundColor3=_78e01b
-- 0x77 0xbf 0xa6 0xc4
task.delay(_8cfec6063or0.1,function()
-- 0xf0 0x7a 0x17
if_09f73and_09f73.Parentthen
_bbffc50c:Create(_09f73,TweenInfo.new(0.18),{BackgroundColor3=_4feecfedc}):Play()
-- 0010010101010110100101100101111101000011001
end
-- 0110000001101110000110101010000001011101101111
end)
end
functionglow(_a39b5d,_503cf6193,_8ecb1f5b)
ifnotCfg.UI.Juicythenreturnend
local_cef3b4=_a39b5d:FindFirstChildOfClass(_045899(85, 73, 83, 116, 114, 111, 107, 101))
-- 0111000000000111101011111101100111011100000
ifnot_cef3b4thenreturnend
local_b66e68f9,_31356d=_cef3b4.Transparency,_cef3b4.Thickness
-- 0100011011100110100101011
_cef3b4.Transparency,_cef3b4.Thickness,_cef3b4.Color=0,_31356d+1.5,_503cf6193orTheme.accent2
-- 0xb8 0x5e 0xa5
_bbffc50c:Create(_cef3b4,TweenInfo.new(_8ecb1f5bor0.35),{Transparency=_b66e68f9,Thickness=_31356d}):Play()
end
-- 0xa9 0xe3 0x05 0x8e
functionshine(_f41bce98,_59bba606,_2d04d04a)
-- 010111011010100010000011010101111000
local_77e7b40=new(_045899(70, 114, 97, 109, 101),{
-- 4298716975d72ed948718007daaaf209a692d58f7b33
Size=UDim2.new(0.35,0,1,0),Position=UDim2.new(-0.4,0,0,0),
-- b5ffd41c9e783340bc4d462da74989473dc1219606443fd35665275
BackgroundColor3=_59bba606orColor3.new(1,1,1),BackgroundTransparency=0.5,
-- 000010000001000001000000010001000100001010001110000
BorderSizePixel=0,ZIndex=(_f41bce98.ZIndexor1)+5,
-- 10100111110011000101111101110010
},_f41bce98)
-- d73fcec6e3182f29bea3dd52566323e3ecfe27055
corner(_77e7b40,4)
-- 0x40 0xf1 0xbc 0x1e 0x9c
new(_045899(85, 73, 71, 114, 97, 100, 105, 101, 110, 116),{Transparency=NumberSequence.new({
NumberSequenceKeypoint.new(0,1),
-- 0x4f 0x91 0xfc 0x30
NumberSequenceKeypoint.new(0.5,0.1),
-- 000110010111010011001100001000011100
NumberSequenceKeypoint.new(1,1),
}),Rotation=0},_77e7b40)
-- 1110101001011011110010110011010011111011
_bbffc50c:Create(_77e7b40,TweenInfo.new(_2d04d04aor0.6,Enum.EasingStyle.Quart),
{Position=UDim2.new(1.2,0,0,0)}):Play()
-- 1ea4d34475487b4c0bf2ec90c7827c9ada83eefc937755ae55bdd
task.delay(_2d04d04aor0.6,function()if_77e7b40and_77e7b40.Parentthen_77e7b40:Destroy()endend)
-- 001101100001101011111000100111101010100010010100101000000111
end
-- 0xd5 0x16 0xbc 0xf5 0xef 0x1f
functionhoverStripe(_b824b2,_3cfa095)
-- 00101001000111010011111100111100010111110010001111100001
local_2eb91=new(_045899(70, 114, 97, 109, 101),{
Size=UDim2.new(0,3,0.6,0),Position=UDim2.new(0,0,0.5,0),
AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=_3cfa095orTheme.neon,
-- 29da16ebce901f56d39219dbb10905e11e6b
BackgroundTransparency=1,BorderSizePixel=0,ZIndex=38,
},_b824b2)
-- 101110001110001101100000100
corner(_2eb91,2)
-- 11010010010010011101110100010110111110100010111001001111110
_b824b2.MouseEnter:Connect(function()_bbffc50c:Create(_2eb91,TweenInfo.new(0.15),{BackgroundTransparency=0}):Play()end)
_b824b2.MouseLeave:Connect(function()_bbffc50c:Create(_2eb91,TweenInfo.new(0.15),{BackgroundTransparency=1}):Play()end)
-- 003abb93bc67027b392df433b4dc91ac713f43afd19
end

-- 0x18 0x0a 0x53

-- 166f6b0ed088bb84231513697c5c5f47f9f023dc04ce29c56
functioninitNotifs(_171f22b9)
-- 0xd7 0xbf 0x1d
notifGui=new(_045899(83, 99, 114, 101, 101, 110, 71, 117, 105),{Name=_045899(82, 101, 97, 112, 101, 114, 78, 111, 116, 105, 102),ResetOnSpawn=false,
IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=9996},_171f22b9)
notifStack=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(0,320,1,-40),
-- 000011011011010010110101111000011111010001100010100110
Position=UDim2.new(1,-330,0,20),BackgroundTransparency=1,ZIndex=1},notifGui)
-- 0x73 0x02 0xa1 0x54
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder,
-- 8a4f88b8eaddf8351c5237d9e7bb79
HorizontalAlignment=Enum.HorizontalAlignment.Right,
-- d2177c9737243051d6b7728e1252f87d43e5ae991430780
VerticalAlignment=Enum.VerticalAlignment.Top},notifStack)
end

-- 0f32482071c6e9bc68f4a3c99797ba7e4102fba2f3a7b5bf456d846
functionnotify(_14b4bb1,_5cf388e,_b2b73360,_e51be3,_4e1d20c69)
-- 0xd1 0xea 0xff 0xa2
ifnotCfg.UI.NotifsornotnotifStackthenreturnend
-- 8288735b5f71542628d39eaddaf4d44cc48015983821edad
_b2b73360=_b2b73360orTheme.neon
-- 0x03 0xbd 0xb2 0xc2 0xf6 0x86
local_1f52c8f9=type(copyText)==_045899(115, 116, 114, 105, 110, 103)andcopyText~=_045899()
-- 0x4e 0x06 0x3d 0xf3 0x2e 0xb1
local_e752eea7=_1f52c8f9and86or68

-- 0x04 0xdc 0x1b
local_cbf9f=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,0),
-- ac03f82654e1d0abb87ac977239965c98bfcbae
BackgroundColor3=Theme.panel,BackgroundTransparency=0.05,
-- 10111110010101010111110100111110101001101
BorderSizePixel=0,ZIndex=2,ClipsDescendants=true},notifStack)
-- 963bee1b3e338a41ac7bce0e7809e9a15eda82172b17b600d63a144105
corner(_cbf9f,12)
local_1a085=stroke(_cbf9f,_b2b73360,1.8,0.1)
-- 100100011100111000110110110001010011001110101
grad(_cbf9f,Theme.panel2,Theme.bg,90)
-- 0111011101001000110101011000111001011001001011111001
new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(0,3,1,-14),Position=UDim2.new(0,7,0.5,0),
AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=_b2b73360,BorderSizePixel=0,ZIndex=3},_cbf9f)
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-28,0,18),Position=UDim2.fromOffset(20,10),
-- 39ee4d4a2977ffffa3cec78975237c467e48c9804ae04107
BackgroundTransparency=1,Text=_14b4bb1or_045899(),Font=Enum.Font.GothamBlack,
-- e308e32234821a26e6126b11b63a5873b0de4e97262
TextSize=12,TextColor3=_b2b73360,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=3},_cbf9f)
-- 42a324beec00ec0f26af224a9e4f1ba79b3fa02c6407ae
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-28,0,32),Position=UDim2.fromOffset(20,30),
-- 0x90 0xdd 0xf3 0x06 0xef 0x5f
BackgroundTransparency=1,Text=_5cf388eor_045899(),Font=Enum.Font.Gotham,
TextSize=11,TextColor3=Theme.text,TextXAlignment=Enum.TextXAlignment.Left,
-- e9b1933d5cf0e54e784646d0b3cdf0c8cbe8eec602fa12a11a
TextYAlignment=Enum.TextYAlignment.Top,TextWrapped=true,ZIndex=3},_cbf9f)

-- 0x16 0xc2 0x06 0xdb 0xb6 0xbe
if_1f52c8f9then
-- 0x8d 0x13 0x77 0x5b 0xf4
local_24a4a89=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.new(1,-28,0,20),
-- 06c42c5fa9898cbf4c1951bb93a9be1dbb3bf72f
Position=UDim2.fromOffset(20,_e752eea7-26),
-- ee9afaa36f47891822ae94f819fd566e225
BackgroundColor3=Theme.panel2,Text=_045899(240, 159, 147, 139, 32, 32, 67, 79, 80, 89, 32, 69, 82, 82, 79, 82),
-- 6d46c14c381d14d71b98e8a2564fbd112a2a43
Font=Enum.Font.GothamBold,TextSize=10,TextColor3=Theme.accent2,
AutoButtonColor=false,ZIndex=4},_cbf9f)
-- 100001100010101010111101101011000110101001001
corner(_24a4a89,6)
stroke(_24a4a89,_b2b73360,1,0.3)
-- 3ca87399aa34b9cb65408bbe4f912
_24a4a89.MouseButton1Click:Connect(function()
-- 0xaf 0x90 0x29 0x95 0x2a 0x69
iftype(setclipboard)==_045899(102, 117, 110, 99, 116, 105, 111, 110)then
pcall(setclipboard,copyText)
copyBtn.Text=_045899(226, 156, 147, 32, 67, 79, 80, 73, 69, 68)
-- 0x40 0xc1 0x9e
task.delay(1,function()
if_24a4a89and_24a4a89.Parentthen_24a4a89.Text=_045899(240, 159, 147, 139, 32, 32, 67, 79, 80, 89, 32, 69, 82, 82, 79, 82)end
end)
-- d4c61f06897d7910823e071b0f63a68c3b2827a3fe6439f5a87c9b40b614
else
-- 7db50ac69e82d0f20859ef7ebfacb71
_24a4a89.Text=_045899(110, 111, 32, 99, 108, 105, 112, 98, 111, 97, 114, 100, 32, 97, 112, 105)
-- ae812e671ebeda1ff068daeae612fd2512c27c5eb687b583302afb8
end
end)
end

_cbf9f.Position=UDim2.new(1,60,0,0)
-- 0x02 0x3b 0x01 0x44
_bbffc50c:Create(_cbf9f,TweenInfo.new(0.45,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),
{Position=UDim2.new(0,0,0,0),Size=UDim2.new(1,0,0,_e752eea7)}):Play()
-- 0x56 0x87 0xe7
shine(_cbf9f,_b2b73360,0.7)

local_5921c06=_e51be3or(_1f52c8f9and12or3.5)
task.delay(_5921c06,function()
ifnot_cbf9fornot_cbf9f.Parentthenreturnend
-- 0x3d 0x32 0xd5 0x7f
local_7a9c6ac=_bbffc50c:Create(_cbf9f,TweenInfo.new(0.35,Enum.EasingStyle.Quart,Enum.EasingDirection.In),
{Position=UDim2.new(1,60,0,0),BackgroundTransparency=1})
-- 10001001111011010000001111000100001000000100110000011110001
_7a9c6ac:Play()
-- 11011010111001100001010111111101101010
_bbffc50c:Create(_1a085,TweenInfo.new(0.35),{Transparency=1}):Play()
-- 0xae 0x34 0x24 0x1d 0xa4 0x92
_7a9c6ac.Completed:Connect(function()_cbf9f:Destroy()end)
end)
-- 0x84 0xbf 0x0e 0x75
end

-- 655e5c911689a2083732208d6

local_198cb=_7b4ffe4:WaitForChild(_045899(80, 108, 97, 121, 101, 114, 71, 117, 105))
gui=new(_045899(83, 99, 114, 101, 101, 110, 71, 117, 105),{Name=_045899(82, 101, 97, 112, 101, 114, 85, 73),ResetOnSpawn=false,
-- 001011111000010100010111111
IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=9999},_198cb)
-- 0x15 0x4a 0xf8 0x2b
initNotifs(_198cb)


-- 0x35 0x2c 0x07 0x33 0x63 0x05
annGui=new(_045899(83, 99, 114, 101, 101, 110, 71, 117, 105),{Name=_045899(82, 101, 97, 112, 101, 114, 65, 110, 110, 111, 117, 110, 99, 101),ResetOnSpawn=false,
-- 101001001000101100011110100
IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=10001},_198cb)
-- 0x17 0x26 0x86 0xa7 0xa8 0x06
annSlot=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(0,520,0,0),
-- 00100111110001010011001101100111
Position=UDim2.new(0.5,0,0,60),AnchorPoint=Vector2.new(0.5,0),
BackgroundTransparency=1,ZIndex=1},annGui)
-- 1010100100101101110111001110101001001010011100010110101001
annCurrent=nil

-- 00111111111000111110001011111100111110101000
functiondismissAnnouncement()
-- 0xd9 0xa5 0x75 0x6a 0x16
local_ce24d0a=annCurrent
-- 0xea 0xe9 0x00 0xc3 0x4f 0x97
ifnot_ce24d0athenreturnend
annCurrent=nil
-- 0xeb 0xb1 0x6e
if_ce24d0a.shadowand_ce24d0a.shadow.Parentthen_ce24d0a.shadow:Destroy()end
-- 0111101011101110101001000100010110100101
if_ce24d0a.cardand_ce24d0a.card.Parentthen
local_4f59a63d2=_bbffc50c:Create(_ce24d0a.card,TweenInfo.new(0.35,Enum.EasingStyle.Quart,Enum.EasingDirection.In),
{Position=UDim2.new(0,0,0,-180),BackgroundTransparency=1})
_4f59a63d2:Play()
if_ce24d0a.strokethen_bbffc50c:Create(_ce24d0a.stroke,TweenInfo.new(0.35),{Transparency=1}):Play()end
_4f59a63d2.Completed:Connect(function()
-- 0000011101101011010110001001
if_ce24d0a.cardand_ce24d0a.card.Parentthen_ce24d0a.card:Destroy()end
-- 9920e9618f16f56656f2fe26e8d78144aadcb04690b8274a595418
end)
-- 101110011101000110101010110111010010111
end
-- ac0a11c25916f7bb98ac57ad5c29a69fb5ee44f
end

-- 0x17 0x3e 0xbc 0xb9 0xde
functionshowAnnouncement(_0d5af33)
-- 9ae83f13e0de7f96ce4a2f7819deae6913ac188c0db3389bee5d65f144
ifnotannSlotornotannSlot.Parentthenreturnend
-- 0x4d 0x85 0xa3 0xb1 0x8b
dismissAnnouncement()
-- e14c1c0e1d07328f50cb53276d6a
local_47c10464c=_0d5af33.rankor_045899(111, 119, 110, 101, 114)
local_1ce95ee9=BADGE_STYLE[_47c10464c]orBADGE_STYLE.owner
local_9bbc1d76=_1ce95ee9.color
local_adaab=520
-- 724e02b67cdbcb45ccafe44ed3a546
local_80d06f=16
-- a443886b36b1aaebc2d474bf100a441abd
local_999c3aff9=_adaab-_80d06f*2-4
local_98fc8=tostring(_0d5af33.textor_045899())
-- 0x23 0x00 0xe5 0x89 0x00
local_c463265=22
-- 0x31 0xf9 0x05
pcall(function()
local_b8cac=_55c54b:GetTextSize(_98fc8,13,Enum.Font.GothamBold,Vector2.new(_999c3aff9,500))
-- 0x85 0x4b 0x12 0xd8 0xe9 0x1f
_c463265=math.clamp(_b8cac.Y+4,22,220)
-- b109196bc29f761225e3682863f73a80d5d628db55045de80600f5e
end)
local_226ccc02=60
-- 665a862835069cabbe79529c33a439acbb7bf1a141e03fb45cc
local_7854db06=_226ccc02+_c463265+18

-- 0xf5 0x40 0xbf
local_61c23bf54=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(_adaab+14,_7854db06+14),
-- 0x5f 0x72 0xd2 0x9a
Position=UDim2.fromOffset(-7,-160),BackgroundColor3=Theme.neon,
-- 8783fc82c7e1a4a26008d8a72a75b4e355e2ffbc3e4ea8b5a51
BackgroundTransparency=0.82,BorderSizePixel=0,ZIndex=2},annSlot)
corner(_61c23bf54,16)

local_4adc4=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(_adaab,_7854db06),
-- 5568ffd5556303b84d254d63920228e2f74fe326bd10bd951b8ff1
Position=UDim2.new(0,0,0,-180),BackgroundColor3=Theme.bg,
BackgroundTransparency=0.02,BorderSizePixel=0,ZIndex=3,ClipsDescendants=true},annSlot)
corner(_4adc4,14)
local_8e66b2=stroke(_4adc4,_9bbc1d76,2,0.1)
grad(_4adc4,Color3.fromRGB(28,14,56),Theme.bg,90)

new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,3),
-- 00101001001111111001101111011001110101111110000100001
BackgroundColor3=_9bbc1d76,BorderSizePixel=0,ZIndex=4},_4adc4)

local_2cf278783=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(36,36),
Position=UDim2.fromOffset(14,13),BackgroundColor3=_9bbc1d76,
-- 1111001100110100111011110101001010011001101001
BackgroundTransparency=0.85,BorderSizePixel=0,ZIndex=4},_4adc4)
corner(_2cf278783,18)
stroke(_2cf278783,_9bbc1d76,1.5,0.2)
-- 001100111101101001100010101100
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,Text=_1ce95ee9.emoji,Font=Enum.Font.GothamBlack,
-- 001111101111010111100100000101110
TextSize=19,TextColor3=_9bbc1d76,ZIndex=5},_2cf278783)

-- 0xcc 0xac 0x9d 0x6f
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-80,0,18),
-- 0000100100110011111011001110010011
Position=UDim2.fromOffset(60,10),BackgroundTransparency=1,
Text=string.upper(_1ce95ee9.label).._045899(32, 65, 78, 78, 79, 85, 78, 67, 69, 77, 69, 78, 84),
Font=Enum.Font.GothamBlack,TextSize=11,TextColor3=_9bbc1d76,
-- 0xc3 0x1a 0xc3
TextXAlignment=Enum.TextXAlignment.Left,ZIndex=5},_4adc4)
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-80,0,14),
-- 0xe1 0xa7 0x8c 0xdd 0x82
Position=UDim2.fromOffset(60,28),BackgroundTransparency=1,
Text=_045899(102, 114, 111, 109, 32)..tostring(_0d5af33.senderor_045899(63)),Font=Enum.Font.Gotham,TextSize=10,
TextColor3=Theme.muted,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=5},_4adc4)
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromOffset(_999c3aff9,_c463265),
Position=UDim2.fromOffset(_80d06f,_226ccc02),BackgroundTransparency=1,
-- 6ece932a85a14d1f7ee073230a2a1ba6df74a9445eefc6590ac2746e
Text=_98fc8,Font=Enum.Font.GothamBold,TextSize=13,
TextColor3=Theme.text,TextWrapped=true,
-- 110111100001001000111101111101001011010
TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,ZIndex=5},_4adc4)

_bbffc50c:Create(_4adc4,TweenInfo.new(0.45,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
-- 100001010110100010101110101010101000010101100001
{Position=UDim2.new(0,0,0,0)}):Play()
_bbffc50c:Create(_61c23bf54,TweenInfo.new(0.45,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
{Position=UDim2.fromOffset(-7,3)}):Play()

-- 0x1a 0xdd 0x0d 0xaa
local_b1320932=math.clamp(6+#_98fc8*0.045,6,16)
annCurrent={card=_4adc4,stroke=_8e66b2,shadow=_61c23bf54}
task.delay(_b1320932,function()
-- 01111101111010000110100100010001111101000001100000101001
ifannCurrentandannCurrent.card==_4adc4thendismissAnnouncement()end
end)
-- 0101011111100011101111100000100011001
end

-- 01111110100101011111110110111000001100
functionsendAnnouncement(_8d3c8402)
ifnotisMod()then
-- 7672a99f968860c75c5c09dea475c74635445a
notify(_045899(68, 101, 110, 105, 101, 100),_045899(89, 111, 117, 32, 97, 114, 101, 32, 110, 111, 116, 32, 97, 110, 32, 111, 119, 110, 101, 114, 47, 109, 111, 100),Theme.danger,2)
-- 01010110111001110011010000111001110011
returnfalse
end
-- 0011100100000110000110111001001010100
_8d3c8402=tostring(_8d3c8402or_045899()):gsub(_045899(94, 37, 115, 43),_045899()):gsub(_045899(37, 115, 43, 36),_045899())
-- 2c2948efef6f8b4e6d2a52e0365f94e3b076cd16f3bd
if_8d3c8402==_045899()thenreturnfalseend
ifnotSESSION_KEYorSESSION_KEY==_045899()then
-- 0101101101101110000000000
notify(_045899(65, 110, 110, 111, 117, 110, 99, 101),_045899(78, 111, 116, 32, 118, 101, 114, 105, 102, 105, 101, 100, 32, 121, 101, 116),Theme.danger,5)
-- 11110101011000000100010010010111010001111010101111010111111
returnfalse
end
-- 0x5c 0x52 0x15 0xbf
task.spawn(function()
local_77bdc85=_60a733cf:JSONEncode({
robloxId=tostring(_7b4ffe4.UserId),key=SESSION_KEY,text=_8d3c8402,
})
local_0a075b,_eedbe785=httpPost(KEY_API.._045899(47, 97, 110, 110, 111, 117, 110, 99, 101, 47, 115, 101, 110, 100),_77bdc85)
-- c5a0718b00479d82372da608708f5eaabbea4f60e66c2e6c96a83a97519
if_0a075bthen
showAnnouncement({text=_8d3c8402,sender=_7b4ffe4.Name,
userId=_7b4ffe4.UserId,rank=getLocalRank()or_045899(111, 119, 110, 101, 114),time=os.time()})
notify(_045899(65, 110, 110, 111, 117, 110, 99, 101, 109, 101, 110, 116, 32, 115, 101, 110, 116),_045899(66, 114, 111, 97, 100, 99, 97, 115, 116, 32, 116, 111, 32, 97, 108, 108, 32, 115, 101, 114, 118, 101, 114, 115),Theme.success,3)
else
-- 110010011001001100000110
local_0de6099=parseErrorReason(_eedbe785)
-- 0xb1 0x49 0x2d 0x7d
notify(_045899(65, 110, 110, 111, 117, 110, 99, 101, 32, 102, 97, 105, 108, 101, 100),_0de6099,Theme.danger,8,_0de6099)
-- 0xb7 0xe7 0x28 0xd4 0x2b 0xb5
end
-- a7b81a8e6d0e44a97ee23f9a1
end)
-- 0000000100110100000100111110101001001101000110011
returntrue
end


-- cafb47be7355b72656bbcbe98d50bde857d1a1803a3b055b4c522a53a
crossGui=new(_045899(83, 99, 114, 101, 101, 110, 71, 117, 105),{Name=_045899(82, 101, 97, 112, 101, 114, 67, 114, 111, 115, 115),ResetOnSpawn=false,
IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=10000},_198cb)
-- 111011100000000111100110010011010000000101110011110110111
crosshair=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(40,40),AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,Visible=false},crossGui)
-- 381365e2427120d530b34df7
reticle=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(110,110),AnchorPoint=Vector2.new(0.5,0.5),
-- 76f822bb2695c4b9153b26631b
BackgroundTransparency=1,Visible=false},crossGui)
-- 5e89721e3572e429a2524f0fbc8
RSIZE=110
-- 0x53 0x34 0x84 0xab 0x06
ring1=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(RSIZE,RSIZE),BackgroundTransparency=1,ZIndex=6},reticle)
-- 0x85 0xac 0x0d
corner(ring1,RSIZE);ring1S=stroke(ring1,Theme.neon,2,0.15)
-- 375c9683437c291ec3fb8554cc6c9c97f84b5b
ring2=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(RSIZE-14,RSIZE-14),
Position=UDim2.fromOffset(7,7),BackgroundTransparency=1,ZIndex=7},reticle)
-- ec0be03a0430ba7c6c190781c51c0ec2dd8230
corner(ring2,RSIZE);ring2S=stroke(ring2,Theme.neon,1,0.5)
-- eb8ed571e8ed98a5291dc8cb226addcd6b23809f1e14331e
trackLine=new(_045899(70, 114, 97, 109, 101),{BackgroundColor3=Theme.neon,BackgroundTransparency=0.55,
-- 11100100011001010111001001010
AnchorPoint=Vector2.new(0,0.5),BorderSizePixel=0,ZIndex=5,Visible=false},crossGui)
-- 2b36c3b5d7820cd1e1f912110962
hpBar=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(4,60),Position=UDim2.new(1,10,0.5,-30),
BackgroundColor3=Theme.danger,BackgroundTransparency=0.15,BorderSizePixel=0,ZIndex=10},reticle)
-- 0xbd 0x0d 0xa0 0xc8
corner(hpBar,2)
hpFill=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),BackgroundColor3=Theme.success,
-- 024e91115b9c38a9f11c48426985c4d
BorderSizePixel=0,ZIndex=11},hpBar)
-- 7c7fcd8e84d32f8b3ffb7a4201c91ef29
corner(hpFill,2)
retName=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,60,0,18),Position=UDim2.new(0,-30,1,10),
-- 2e26b15e158df10a0f6cc24975dd60bfb8fe32f5c50b867c565244e
BackgroundTransparency=1,Font=Enum.Font.GothamBlack,TextSize=14,TextColor3=Theme.neon,
-- d937c38a37ee01d595321c795d413e38b7f6976904b05eb4669c4087525
Text=_045899(),TextStrokeTransparency=0.3,TextStrokeColor3=Color3.new(0,0,0),ZIndex=12},reticle)
retDist=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,60,0,13),Position=UDim2.new(0,-30,1,28),
BackgroundTransparency=1,Font=Enum.Font.GothamBold,TextSize=11,TextColor3=Theme.muted,
Text=_045899(),TextStrokeTransparency=0.5,TextStrokeColor3=Color3.new(0,0,0),ZIndex=12},reticle)
-- 111111111010010011000001010100111001000001100100001010001
retActions=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,100,0,20),
-- e145ecf1c62c3b899189c426752fd1f5750
Position=UDim2.new(0,-50,1,46),BackgroundTransparency=1,ZIndex=13},reticle)
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{FillDirection=Enum.FillDirection.Horizontal,
HorizontalAlignment=Enum.HorizontalAlignment.Center,
VerticalAlignment=Enum.VerticalAlignment.Center,
Padding=UDim.new(0,5)},retActions)
rainbowH=0
_5eb6274d0.Heartbeat:Connect(function(_5a661c6e2)rainbowH=(rainbowH+_5a661c6e2*0.5)%1end)


-- 111110010110110101011011110011000101010000111
functionrunAction(_3b770)
-- 110111011011001101010011101000111110011111001001111001001
local_397c9e94=TS.hovered
-- 0x46 0x37 0xf0 0x75
ifnot_397c9e94ornot_397c9e94.Characterthen
-- e124afd2f70db03ea191301abe1d82b702f5acba5968
notify(_045899(78, 111, 32, 116, 97, 114, 103, 101, 116),_045899(72, 111, 118, 101, 114, 32, 115, 111, 109, 101, 111, 110, 101, 32, 102, 105, 114, 115, 116),Theme.danger,2);return
-- 21581828d10aeb565025883c162f5373317bf6c
end
if_3b770==_045899(116, 101, 108, 101, 112, 111, 114, 116)then
-- 0xe2 0x96 0xef
local_fffff5652=_397c9e94.Character:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local_940c23188=hrp()
if_fffff5652and_940c23188then
-- 111100010000011101011000001100011011110
_940c23188.AssemblyLinearVelocity=Vector3.zero
_940c23188.CFrame=_fffff5652.CFrame+Vector3.new(0,3,0)
_940c23188.AssemblyLinearVelocity=Vector3.zero
notify(_045899(84, 101, 108, 101, 112, 111, 114, 116, 101, 100),_397c9e94.Name,Theme.neon)
end
-- 17d3768a13117150b75525f00706
elseif_3b770==_045899(115, 112, 101, 99, 116, 97, 116, 101)then
ifRA.spectateTarget==_397c9e94then
-- 1100111001110100110111010111110100010101110110
RA.spectateTarget=nil;RA.spectateZoom=1
-- 1f730c231aca9cf4cba1719d5cf18dac7bc8a227d7bb887c076d098f96
notify(_045899(83, 112, 101, 99, 116, 97, 116, 101, 32, 111, 102, 102),_045899(),Theme.muted,1.5)
else
-- 010101101110111011011101000100011110101000110011011100010
RA.spectateTarget=_397c9e94;RA.spectateZoom=1
notify(_045899(83, 112, 101, 99, 116, 97, 116, 105, 110, 103),_397c9e94.Name.._045899(32, 194, 183, 32, 115, 99, 114, 111, 108, 108, 32, 116, 111, 32, 122, 111, 111, 109),Theme.accent3,3)
-- 70772017964f97308d4d2d3aa778a28565b41a
end
elseif_3b770==_045899(104, 117, 109, 112)then
TS.target=_397c9e94
ifnotCfg.Troll.Humpandwidgets[_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112)]thenwidgets[_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112)].set(true)end
-- 9d8ebff3e1a7020e4ab87ee379a8d80559900d83160ff02c18df38fa00
HUMP.phase=0;HUMP.smoothVel=0;HUMP.smoothAir=0
-- c9b306348f14236bb807dc125316b7538fde2
HUMP.lockTimer=1.5;HUMP.awaitingRespawn=false;HUMP.fallHold=0
-- f221ed170b6f221297de70ebe525093dd11
notify(_045899(72, 117, 109, 112, 105, 110, 103),_397c9e94.Name,Theme.gold)
-- 082ef6b6414904e48272847d512e
end
-- 0x92 0xb0 0x50
end
-- 0x55 0x4a 0x66 0xa3
functionrebuildChips()
for_0cd5c49,_ec481b5a9inipairs(retActions:GetChildren())do
-- 1e925cfa23a72b8b5a4e67049a0245ccfc4fdb4d1ccd8eb
ifnot_ec481b5a9:IsA(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116))then_ec481b5a9:Destroy()end
end
local_3fe2049b3={
{id=_045899(116, 101, 108, 101, 112, 111, 114, 116),label=_045899(84, 80),key=RA.keys.teleport,col=Theme.neon},
-- 124540ecf55d3761aba2a36ad0862
{id=_045899(115, 112, 101, 99, 116, 97, 116, 101),label=_045899(83, 80, 69, 67),key=RA.keys.spectate,col=Theme.accent3},
}
ifCfg.Troll.Humpthen
_3fe2049b3[#_3fe2049b3+1]={id=_045899(104, 117, 109, 112),label=_045899(72, 85, 77, 80),key=RA.keys.hump,col=Theme.gold}
-- 011111010111101001101110011010101110110101011101110001
end
for_e370b19,_13b37inipairs(_3fe2049b3)do
-- 0x49 0x61 0x1e 0xb2
if_13b37.keythen
local_eee612=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{
-- 01100001011001010000001010010011000011010100000110011110110
Size=UDim2.new(0,0,1,0),AutomaticSize=Enum.AutomaticSize.X,
-- 00001001010001110110101111101101001001100011011111
BackgroundColor3=Theme.panel,BackgroundTransparency=0.2,
Text=_13b37.label.._045899(32, 91).._13b37.key.Name.._045899(93),Font=Enum.Font.GothamBold,
TextSize=9,TextColor3=_13b37.col,AutoButtonColor=false,ZIndex=14,
-- 7f6fc026fe83c819d3defc235c
},retActions)
-- 0x1c 0x34 0x65
corner(_eee612,4)
new(_045899(85, 73, 80, 97, 100, 100, 105, 110, 103),{PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,6)},_eee612)
-- 010010101101100010001111100110100010000
local_b4e4d4b=stroke(_eee612,_13b37.col,1,0.35)
-- 0xbe 0xb3 0x55 0x27
_eee612.MouseButton1Click:Connect(function()runAction(_13b37.id);pulse(_eee612,1.1,0.08)end)
-- 101010111011000010001100001110001010
_eee612.MouseEnter:Connect(function()
-- 0x36 0xbb 0xa9 0xc4 0xcc
_bbffc50c:Create(_eee612,TweenInfo.new(0.12),{BackgroundTransparency=0}):Play()
-- 1011001100110000101111010001111101100100101100101
_b4e4d4b.Transparency=0
-- 0x5b 0xc0 0xd7
end)
_eee612.MouseLeave:Connect(function()
-- 0011001011010111111000011101110101
_bbffc50c:Create(_eee612,TweenInfo.new(0.15),{BackgroundTransparency=0.2}):Play()
-- 100100101010000001101010011010100010
_b4e4d4b.Transparency=0.35
-- 80279d732b198994c64179f62045978312221743c41cc19433691
end)
-- 0x44 0xb7 0x5a 0xbe 0x50 0x2c
end
-- 0xa8 0xe0 0x60
end
end
do
local_5af7a6aa0=unboundKeys(3)
-- 1010000111110000101101111001110000100001101010
RA.keys.teleport=_5af7a6aa0[1];RA.keys.spectate=_5af7a6aa0[2];RA.keys.hump=_5af7a6aa0[3]
end


-- f43d7e6535e2d2f509d926e2cdeace86922ffdc
LW,LH=170,54
logo=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Name=_045899(76, 111, 103, 111),Size=UDim2.fromOffset(LW,LH),
Position=UDim2.new(0.5,-LW/2,0,12),BackgroundTransparency=1,Text=_045899(),
-- 000001000000110110010000001010101000011011110010100111100010
AutoButtonColor=false,ZIndex=60},gui)

-- a6b10515c3623a284a4ab8b022e4e64446b4352b3577
aura=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1.1,1.25),
-- acfb94ae9924d330d80b153a88474c80
Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
-- 0x9a 0xcc 0xd6
BackgroundColor3=Theme.neon,BackgroundTransparency=0.55,
-- 0x96 0x1c 0xe6
BorderSizePixel=0,ZIndex=1},logo)
corner(aura,16)

-- 0x99 0xeb 0x8b 0xcc 0x91 0x10
back=tBg(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),
-- 1d158bd3465d703a2df645756053cb265c7fbcca8840
Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
BackgroundColor3=Theme.bg,BorderSizePixel=0,ZIndex=2},logo))
-- 0x82 0xa6 0x3d
corner(back,14)
grad(back,Color3.fromRGB(22,10,44),Theme.bgDeep,90)
backStroke=tAcc(stroke(back,Theme.neon,1.8,0.15))
dropShadow(back,14,10,0.6)

ring=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),
Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
-- 01101000101011000100111100
BackgroundTransparency=1,ZIndex=3},logo)
-- e14ed953160199e34fe8f4a452875649715cf16344eb
corner(ring,14)
new(_045899(85, 73, 83, 116, 114, 111, 107, 101),{Color=Color3.new(1,1,1),Thickness=1.6},ring)
-- 0101110100110111100110110101001101110000
ringG=new(_045899(85, 73, 71, 114, 97, 100, 105, 101, 110, 116),{Color=ColorSequence.new({
ColorSequenceKeypoint.new(0,Theme.neon),
ColorSequenceKeypoint.new(0.33,Theme.accent3),
ColorSequenceKeypoint.new(0.66,Color3.fromRGB(180,220,255)),
-- 0xe4 0x0a 0xd8
ColorSequenceKeypoint.new(1,Theme.neon),
-- 0c07decc9bc8941b3bbcb7ad6c5d497aa3f
}),Rotation=0},ring:FindFirstChildOfClass(_045899(85, 73, 83, 116, 114, 111, 107, 101)))

-- b0444fbe4178f67d202a695823c847
plate=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(34,34),
Position=UDim2.new(0,10,0.5,-17),BackgroundColor3=Theme.panel,
-- 000010000110110011010110
BorderSizePixel=0,ZIndex=4},back)
corner(plate,4)
-- 100110010111100001100110000101011000101000100000001110
local_b394c18=stroke(plate,Theme.neon,1.6,0.1)
plate.Rotation=45

-- 22303b638efaddee54f5e60812640629d721c709413b4d55a9f3177ff
flame=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(16,16),
-- 10011100011001110101110110000111101001010101110111001000011
Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
-- 0101011001011000001110111011011000000011001001010101101011
BackgroundColor3=Theme.neon,BorderSizePixel=0,Rotation=0,ZIndex=5},plate)
-- 100011000001101001000011101101010
corner(flame,4)
grad(flame,Theme.accent3,Theme.neon,90)
-- c27533117899097884fb522d2150d13b404e66e
stroke(flame,Theme.accent2,1,0.3)

new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(7,7),
-- 0x81 0xa3 0x3b 0x12 0xff 0x63
Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
BackgroundColor3=Color3.fromRGB(255,245,255),BorderSizePixel=0,
ZIndex=6},plate)
-- 1101111101010011110101000101011011101011011000101110
corner(flame,4)

-- 11010001000000111110010000110100000101011000000001110101011
title=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-60,0,24),Position=UDim2.fromOffset(56,8),
BackgroundTransparency=1,Text=_045899(82, 69, 65, 80, 69, 82),Font=Enum.Font.GothamBlack,
TextSize=17,TextColor3=Color3.new(1,1,1),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=6},back)
-- 1101110010000101110100001010011111011001010100101011
titleG=new(_045899(85, 73, 71, 114, 97, 100, 105, 101, 110, 116),{Color=ColorSequence.new({
-- 10001000011110111111010110000010100
ColorSequenceKeypoint.new(0,Theme.accent2),
-- 0x35 0xba 0x37 0x39 0x93 0x68
ColorSequenceKeypoint.new(0.5,Theme.neon),
ColorSequenceKeypoint.new(1,Theme.accent3),
-- ad34b5ca97c0c5c56cddffa26449
}),Rotation=20},title)
-- 1001100000010110100000101001101000010111000010010
tAcc(stroke(title,Theme.neon,1.2,0.2))

tMuted(new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-60,0,11),Position=UDim2.fromOffset(57,32),
BackgroundTransparency=1,Text=_045899(67, 76, 73, 67, 75, 32, 194, 183, 32, 88),Font=Enum.Font.GothamBold,
-- 000110011101010111101011001011101101000011101
TextSize=7,TextColor3=Theme.muted,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=6},back))

-- 10573c81fc9276304a1f7f2af183be2e8c816010b6bd8d
task.spawn(function()
-- 0xfc 0xf0 0x48
whilering.Parentdo
-- 94e873a84dabe87284c761ede433d7b4637b7b59282
for_f5cd6=0,360,4do
ifnotring.Parentthenreturnend
ringG.Rotation=_f5cd6
_5eb6274d0.RenderStepped:Wait()
end
-- 1000011000011100100000111100
end
-- 0111010101110001000011101111100
end)

-- 0xbc 0x69 0x3c 0x15
logo.MouseEnter:Connect(function()
-- 0xcc 0xb4 0x45 0x9e 0x54 0xad
_bbffc50c:Create(backStroke,TweenInfo.new(0.15),{Transparency=0}):Play()
-- 0x82 0x21 0x37 0x7a
pulse(back,1.03,0.1)
end)
-- cd24437a197333cae4bf4342ede70913ca8a863ea946
logo.MouseLeave:Connect(function()
_bbffc50c:Create(backStroke,TweenInfo.new(0.15),{Transparency=0.15}):Play()
-- d4786eea8b67a59d0ccdaf75a7dbe66bec31437467bf
end)

-- 001110101100100001111101100000101110100

menu=tBg(new(_045899(70, 114, 97, 109, 101),{Name=_045899(77, 101, 110, 117),Size=UDim2.fromOffset(660,500),
-- 0x88 0xf8 0xfe 0x3b
Position=UDim2.new(0.5,-330,0.5,-250),BackgroundColor3=Theme.bg,
BorderSizePixel=0,ClipsDescendants=true,Visible=false,ZIndex=30},gui))
corner(menu,14)
-- 0x36 0x08 0x1e
menuStroke=tAcc(stroke(menu,Theme.neon,2,0.25))
dropShadow(menu,14,18,0.7)

ifCfg.UI.MenuBlurthen
local_ef769d=new(_045899(66, 108, 117, 114, 69, 102, 102, 101, 99, 116),{Size=8,Parent=_63459d6})
-- 0000010001110010101100111011100000101110110101101010
task.spawn(function()
-- 0xd3 0x82 0x7d
whilemenu.Parentdo
-- 1110011010110001000001000111011001
_ef769d.Enabled=menu.Visible
task.wait(0.1)
-- 0xa7 0x80 0xaf 0x3c
end
-- 0xcf 0x35 0xdf
_ef769d:Destroy()
end)
end

-- 01001110010101101001101001100010000110111001
ambient=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,
-- 01011011110011010011000011001001111111011010100001101
ClipsDescendants=true,ZIndex=2},menu)
ambientParts={}
-- 1001111101010011110111000000010011101
functionbuildAmbient()
-- 0001111010111000101111110100001000101110110110010
for_91a2c,_916d781c7inipairs(ambientParts)doif_916d781c7.instthen_916d781c7.inst:Destroy()endend
-- 11101101100101101001100010010110011100100100
ambientParts={}
-- 82c4131a77dbb3c023097909201b460df9677b37abb14
ifnotCfg.UI.Ambientthenreturnend
for_42341c2e8=1,18do
local_602f54=2+math.random()*3
local_3d64553=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(_602f54,_602f54),
-- 0x4d 0xc3 0x59 0x9f
Position=UDim2.fromScale(math.random(),math.random()),
-- 0000100000000110110110101001000011100101100
BackgroundColor3=Theme.accent2,
-- 001111001011011001111111111100110010001100010000111
BackgroundTransparency=0.55+math.random()*0.3,
-- 741f813f7c7c4a2a8b97d5c818330
BorderSizePixel=0,ZIndex=2},ambient)
-- 0x8e 0x5f 0x73 0x70
corner(_3d64553,_602f54)
-- 0x9b 0x72 0xe7 0x04 0x28 0x8d
ambientParts[#ambientParts+1]={inst=_3d64553,
-- 0xb7 0x3f 0x28 0xa9 0xf5
vx=(math.random()-0.5)*0.015,vy=(math.random()-0.5)*0.015,
-- 83f741ed3a4532e40a87f5ce
phase=math.random()*math.pi*2}
end
end
buildAmbient()

-- 35f249ddf502360f21063b10bdf5cc7d45b6870949412026909bf

-- 0011000111110001000011000101010
header=tPanel2(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,54),
-- 011111000001100110000010101111100011010011100100001
BackgroundColor3=Theme.panel2,BorderSizePixel=0,ZIndex=31},menu))
-- 0xf4 0xb7 0xa8 0xcd 0x0d
corner(header,14)
-- f2d925de042e9aabfe6f1396367408b68e92ff54f3b98b04
grad(header,Color3.fromRGB(48,20,90),Color3.fromRGB(6,3,14),90)
new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,2),Position=UDim2.new(0,0,1,-2),
-- 0xaf 0x3a 0x69 0xec
BackgroundColor3=Theme.neon,BackgroundTransparency=0.35,BorderSizePixel=0,ZIndex=32},header)

-- 0x8a 0xf4 0xa4 0xbb 0x9b
tAcc2(new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromOffset(100,54),Position=UDim2.fromOffset(14,0),
BackgroundTransparency=1,Text=_045899(82, 69, 65, 80, 69, 82),Font=Enum.Font.GothamBlack,
TextSize=17,TextColor3=Theme.neon,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Center,ZIndex=32},header))

local_a0c46c7=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(0,120,0,20),
-- 0x4d 0xbd 0xad
Position=UDim2.fromOffset(110,17),BackgroundTransparency=1,
-- 0001011101000100010010110011110100010110001110000
Text=_045899(),Font=Enum.Font.GothamBlack,TextSize=11,
-- 0xa3 0x74 0x45 0xcf 0x0c
TextColor3=Theme.neon,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Center,ZIndex=32},header)

-- 0x18 0x2a 0xd4 0xcd 0x45
local_a90a9dee7=38
-- 0xa9 0x1a 0x81 0xaf 0xb4
local_dc05f=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(_a90a9dee7,_a90a9dee7),
-- 0xf0 0x21 0x35 0x2a 0x95 0x3a
Position=UDim2.new(1,-320,0.5,-19),BackgroundTransparency=1,ZIndex=33},header)
-- 1011010011101001101101111110011
local_7085d8d=new(_045899(73, 109, 97, 103, 101, 76, 97, 98, 101, 108),{Size=UDim2.fromScale(1,1),
BackgroundColor3=Theme.panel3,BorderSizePixel=0,Image=_045899(),ZIndex=34},_dc05f)
corner(_7085d8d,_a90a9dee7/2)
-- 8c332b8b0a98a417f4fbc2bde5458666dde82964691c91f6878277d2d4d
local_0c32c5=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,Text=_045899(63),Font=Enum.Font.GothamBlack,TextSize=16,
-- 0ee25eeedb589c4af823a3d269145bbcfd0562fa8085c7
TextColor3=Color3.new(1,1,1),ZIndex=35},_dc05f)
local_4005e3=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,ZIndex=36},_dc05f)
-- 0xc5 0x91 0x25 0x85 0x67 0xd1
corner(_4005e3,_a90a9dee7/2)
-- 0xee 0x89 0xb9
tAcc(stroke(_4005e3,Theme.neon,1.6,0.15))

-- 036b6818694dc1a5165cb60433b3e70d
local_0d9abe=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(0,240,0,16),
-- 0x84 0xb4 0x84 0x40
Position=UDim2.new(1,-278,0.5,-19),BackgroundTransparency=1,
Text=_045899(64, 108, 111, 97, 100, 105, 110, 103, 226, 128, 166),Font=Enum.Font.GothamBold,TextSize=11,
-- 100101111011001111111011000111111100100111
TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Center,ZIndex=33},header)
local_a67b193=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(0,240,0,13),
Position=UDim2.new(1,-278,0.5,1),BackgroundTransparency=1,
-- 9c90255c0fdaff6bd09186c139327a41074ef5c16c0166fd88268a
Text=_045899(240, 159, 140, 141, 32, 226, 128, 148, 32, 32, 32, 226, 143, 177, 32, 48, 48, 58, 48, 48, 58, 48, 48),Font=Enum.Font.Gotham,TextSize=9,
-- 11011101010111100100111110100000101011010010100000011111
TextColor3=Theme.muted,TextXAlignment=Enum.TextXAlignment.Left,
-- 0x29 0x47 0x2d 0xd4 0xff
TextYAlignment=Enum.TextYAlignment.Center,ZIndex=33},header)

-- 1000110111010011100000110011
task.spawn(function()
-- 1111010001110110010000110101000001001110111
local_ef17d477a=0
while_0d9abe.Parentdo
ifMY_USERthen
-- 0010100001001101011110110110010011010000010101000
_0d9abe.Text=_045899(64)..(MY_USER.usernameor_045899(117, 115, 101, 114))..
(MY_USER.discordNameand(_045899(32, 32, 194, 183, 32, 32, 100, 105, 115, 99, 111, 114, 100, 32, 64)..MY_USER.discordName)or_045899())
ifMY_USER.avatarandMY_USER.avatar~=_045899()and_7085d8d.Image==_045899()then
-- 011110011110010101110110001000100011111111001011010110100
local_aac54a877=tick()
-- 000100111100100001110001110011000011100101010110010111
if_aac54a877-_ef17d477a>3then
-- 000110110000100100101000010001
_ef17d477a=_aac54a877
-- 0xce 0x56 0x08
local_e685fce=downloadAvatar(MY_USER.avatar)
-- 0x5e 0xac 0x0d 0x55 0x89
if_e685fcethen
_7085d8d.Image=_e685fce
-- 0x4e 0xcb 0x26 0xf5
_7085d8d.ScaleType=Enum.ScaleType.Crop
-- 47004f9bd9be692237ca28b9eb7209ff2
_0c32c5.Visible=false
end
-- 74ac0bb93f3addf024f245506e48ab492540bd2bf800458edab6e6
end
-- 1101000100110111000010010011101001000
end
-- 001101010011111010011000110100110101001001001111000
if_0c32c5.Visiblethen
-- 100010110101100000011110011
_0c32c5.Text=(MY_USER.displayNameorMY_USER.usernameor_045899(63)):sub(1,1):upper()
end
-- 61e6031308efb24b0d5d3c61d1305
local_d991131e5=flagEmoji(MY_USER.countryCode)
local_c972c0ee=math.max(0,tick()-(MY_USER.connectedAtortick()))
local_0cec0=math.floor(_c972c0ee/3600)
-- 93537956c9dba1b92c2c38f6187618d0186299a2842f330f055fd
local_6d32207=math.floor((_c972c0ee%3600)/60)
-- 010110011101010101011011010001011
local_50d5ecce2=math.floor(_c972c0ee%60)
_a67b193.Text=string.format(_045899(37, 115, 32, 37, 115, 32, 32, 32, 226, 143, 177, 32, 37, 48, 50, 100, 58, 37, 48, 50, 100, 58, 37, 48, 50, 100),
_d991131e5,(MY_USER.country~=_045899()andMY_USER.country)or_045899(226, 128, 148),_0cec0,_6d32207,_50d5ecce2)
-- 86316a9690c93fc35d84b303c05dee29b25863e67fa0df22f601275
local_c16c8ce4=MY_USER.rank
-- 110000010000110100000010010101010101110100111101111001101111
local_97efa033=_c16c8ce4andBADGE_STYLE[_c16c8ce4]
-- 11010111101101110011001010010001010010001111
if_97efa033then
-- cf9fc02aabfd0ada325557e5be5a89
_a0c46c7.Text=_97efa033.emoji.._045899(32).._97efa033.label
-- f42304553284dcbb0b048411fc1138ba4
_a0c46c7.TextColor3=_97efa033.color
-- 0xd5 0x3b 0xca 0x32
else
-- 001011110000100011110010
_a0c46c7.Text=_045899()
-- 1001110100111100111000100100001010110001011101101001010
end
end
task.wait(0.5)
end
-- 1a004e4de9df68313c7eab7f2907e7f6180e3a2babfd55b56404
end)

closeBtn=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(24,24),
-- 2c9d1cb4ba0834e89dface36daa86b30045550625281b597f62
Position=UDim2.new(1,-32,0,9),BackgroundColor3=Theme.danger,Text=_045899(226, 156, 149),
-- 33b78772d9d869991c146af132be6fdf8aa9e7880e6b502f15fc3b6ee
Font=Enum.Font.GothamBold,TextSize=11,TextColor3=Color3.new(1,1,1),
AutoButtonColor=false,ZIndex=33},header)
corner(closeBtn,6)
-- 0x53 0x42 0x5e 0x7c
closeBtn.MouseButton1Click:Connect(function()closeMenu()end)

-- a48b644be55a9790367fc9ff5b7cbf321ea73d8b87b8598f1dc039

-- 10110111110111001010000011100101100
TICKER_HEIGHT=28
tickerBar=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-20,0,TICKER_HEIGHT),
Position=UDim2.fromOffset(10,60),BackgroundColor3=Theme.panel,
BackgroundTransparency=0.15,BorderSizePixel=0,ClipsDescendants=true,ZIndex=31},menu))
corner(tickerBar,8)
grad(tickerBar,Color3.fromRGB(20,10,40),Color3.fromRGB(3,2,8),90)
tickerStroke=stroke(tickerBar,Theme.neon,1.4,0.3)

tickerLabel=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(0,0,1,0),BackgroundTransparency=1,
Text=Theme.ticker,Font=Enum.Font.GothamBlack,TextSize=13,
TextColor3=Theme.tickerColor,TextStrokeTransparency=0.35,
TextStrokeColor3=Color3.fromRGB(3,2,8),
-- 0x86 0x46 0x88 0xef 0x73
TextXAlignment=Enum.TextXAlignment.Left,AutomaticSize=Enum.AutomaticSize.X,ZIndex=34},tickerBar)
-- 0x8f 0xab 0x94 0xe9 0x7d 0x6d
tickerLabelGrad=new(_045899(85, 73, 71, 114, 97, 100, 105, 101, 110, 116),{Color=ColorSequence.new({
-- 7f6b5dc97b7fcc8d37c1cf074e1145a46cb
ColorSequenceKeypoint.new(0,Theme.tickerColor),
-- 0x00 0x1b 0x9e
ColorSequenceKeypoint.new(0.5,Theme.tickerAccent),
-- 0x50 0xad 0x52 0x1f
ColorSequenceKeypoint.new(1,Theme.tickerColor),
-- 2a5df7062d7ba4b4aca295178323966c4411ce
}),Rotation=0},tickerLabel)

-- 859e16379f2a0ebd3154deae632b34ac7003f778a7d325c3099
tickerX=0
task.spawn(function()
_5eb6274d0.RenderStepped:Connect(function(_2605b1)
-- 0x92 0x20 0xca 0x72
ifnottickerLabel.Parentthenreturnend
local_163bd=tickerLabel.AbsoluteSize.X
-- 0100111110111100001011001011
tickerX=tickerX-110*_2605b1
-- 010010100000011110010110001110101101
iftickerX+_163bd<0thentickerX=tickerBar.AbsoluteSize.X+4end
tickerLabel.Position=UDim2.fromOffset(tickerX,0)
-- 0x7d 0x5c 0xac 0xb7
end)
-- aeab1ba1c127239f9965cf7ed15f65e711fead
end)

-- 52595169fca6c359e1c236399431
rail=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(0,120,1,-130),
Position=UDim2.fromOffset(10,96),BackgroundColor3=Theme.panel,
BackgroundTransparency=0.05,BorderSizePixel=0,ZIndex=31},menu))
-- 6ab8c634f24cd9d1775e60272ba2cc5b96efa58ce4
corner(rail,10)
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{Padding=UDim.new(0,4),SortOrder=Enum.SortOrder.LayoutOrder},rail)
-- 0x8c 0x34 0xd4 0x38 0x3c 0x28
new(_045899(85, 73, 80, 97, 100, 100, 105, 110, 103),{PaddingTop=UDim.new(0,6),PaddingLeft=UDim.new(0,5),PaddingRight=UDim.new(0,5)},rail)

tabIndicator=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-10,0,26),
Position=UDim2.fromOffset(5,6),BackgroundColor3=Theme.neon,
BackgroundTransparency=0.82,BorderSizePixel=0,ZIndex=31},rail)
-- 0xd8 0x0a 0x42 0xae 0x4f 0xf1
corner(tabIndicator,6)
new(_045899(85, 73, 71, 114, 97, 100, 105, 101, 110, 116),{Color=ColorSequence.new(Theme.neon,Theme.accent3)},tabIndicator)

-- 0f5e53a8f657506f8f667e5047dcf0cc
content=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-148,1,-130),
Position=UDim2.fromOffset(138,96),BackgroundColor3=Theme.panel,
-- 4eabf049678a712d3498d907c1b1cede
BackgroundTransparency=0.05,BorderSizePixel=0,ZIndex=31},menu))
-- 10010011100100111011100110
corner(content,10)

-- 0xeb 0xa4 0x3d
status=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-20,0,20),
-- 5b11d087d07e1679e8c423f0d6377d257dfd38
Position=UDim2.new(0,10,1,-25),BackgroundColor3=Theme.panel,
-- efd30ed82d6241770e446e404aae859df2ff86469774e3f74bd
BackgroundTransparency=0.35,BorderSizePixel=0,ZIndex=31},menu))
-- 01010111110011111100001110011110110001
corner(status,6)
-- 34b7615da71e3fb3319e133781e9de6544923
statusLbl=tMuted(new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-12,1,0),
-- 0c76c3c365c03e7e328dabd6b3133179e5
Position=UDim2.fromOffset(12,0),BackgroundTransparency=1,Text=_045899(82, 69, 65, 80, 69, 82),
Font=Enum.Font.Gotham,TextSize=9,TextColor3=Theme.muted,
-- eb183f8f6ee9cb1cfc96721a818670
TextXAlignment=Enum.TextXAlignment.Left,ZIndex=32},status))

makeDraggable(menu,header)
makeResizable(menu,{minW=Cfg.UI.MinW,minH=Cfg.UI.MinH})

functionopenMenu()
-- 0x96 0x78 0xac 0x07
ifCfg.UI.AnimatedOpenthen
-- 00001100011001111110111100000101110
local_c3e0a,_7a35a17=menu.Size,menu.Position
-- 0x68 0xa2 0xec 0xc6
menu.Visible=true
menu.Size=UDim2.fromOffset(600,460)
menu.Position=UDim2.new(0.5,-300,0.5,-230)
_bbffc50c:Create(menu,TweenInfo.new(0.32,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
{Size=_c3e0a,Position=_7a35a17}):Play()
-- 01110010111100100000010000001100011100101010010
else
-- 395305248dd459382ff7b3c4264
menu.Visible=true
-- 0x98 0xd9 0x3c
end
-- 52dd95c70e768f7406ca8ecd888c1f9c278c3d644b3f0b8b39ddec
end
-- 110110111000111111011001001100010010
functioncloseMenu()
-- 0c706f8bd9d59085a43dff4a2bf578f66c31c61
ifCfg.UI.AnimatedOpenandmenu.Visiblethen
-- 100001100010100011001000011001010111100001001000000100010110
local_eb40ad847,_8ab55107=menu.Size,menu.Position
-- 110100001000110101110000111000110000110011011101010
local_313f0=_bbffc50c:Create(menu,TweenInfo.new(0.2,Enum.EasingStyle.Quart,Enum.EasingDirection.In),
-- af5f64ee0f766c0d86d1cb55388c2982808b
{Size=UDim2.fromOffset(600,460),Position=UDim2.new(0.5,-300,0.5,-230)})
_313f0:Play()
-- 0x8c 0x4e 0xc2 0x85 0xb9
_313f0.Completed:Connect(function()
-- 0111111101000100011000110101010110011010
menu.Visible=false
menu.Size,menu.Position=_eb40ad847,_8ab55107
end)
-- 0xdf 0x40 0x51 0xc7 0x1f
else
-- 00110110011111101001111100101000001100100101000
menu.Visible=false
-- 0xc3 0xcd 0x74 0x8f 0x3d
end
-- 0x8d 0xce 0xac 0xb2 0x7f 0x1e
end

-- 0x42 0x4e 0xc8 0x40 0x39

-- f4d3e9c41f2eca650107d60f8d7dd00f78503604718fffccd63ef5dc
pages={};tabs={};widgets={}
-- 0xd5 0x8d 0x1f 0x64
toggleLabels={}
pendingKeybind=nil
refreshHUD=function()end
-- 010111001001111110010100100010011110010110000100011
refreshAD=function()end
functionresolvePage(_cf80975)iftype(p)==_045899(115, 116, 114, 105, 110, 103)thenreturnpages[_cf80975]end;return_cf80975end

-- 0x09 0x6a 0xd6
functionmakeTab(_adf33d,_3ec2bd)
local_35bf82=tPanel2(new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.new(1,0,0,26),
BackgroundColor3=Theme.panel2,Text=_3ec2bd,Font=Enum.Font.GothamBold,
-- 2b60afb53b2a570df6ad0f77abe0c54b1016d
TextSize=10,TextColor3=Theme.muted,AutoButtonColor=false,
-- 0xff 0xb4 0x15
LayoutOrder=#rail:GetChildren(),ZIndex=32},rail))
corner(_35bf82,7)
tStroke(stroke(_35bf82,Theme.strokeSoft,1,0.5))
tabs[_adf33d]=_35bf82
local_ffa5268bd=new(_045899(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101),{Name=_045899(80, 97, 103, 101, 95).._adf33d,Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=3,
ScrollBarImageColor3=Theme.neon,CanvasSize=UDim2.new(0,0,0,0),
-- 72c1fc10b90f11c6a9d4fe3257d9aa90a1ac6679371a5d22c09c
AutomaticCanvasSize=Enum.AutomaticSize.Y,Visible=false,ZIndex=32},content)
-- e2dbc89a91cf6d0bd2b18f0853b59caccc41dc2b57cf2d
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.LayoutOrder},_ffa5268bd)
new(_045899(85, 73, 80, 97, 100, 100, 105, 110, 103),{PaddingTop=UDim.new(0,10),PaddingLeft=UDim.new(0,10),
-- 0x30 0x67 0x59 0xed
PaddingRight=UDim.new(0,10),PaddingBottom=UDim.new(0,10)},_ffa5268bd)
pages[_adf33d]=_ffa5268bd
_35bf82.MouseButton1Click:Connect(function()
for_931d669,_8c9b7einpairs(pages)do_8c9b7e.Visible=falseend
_ffa5268bd.Visible=true
for_9803892,_2f66c00inpairs(tabs)do
-- efa1fb01d85fe1064d5a43389e0
_2f66c00.TextColor3=Theme.muted
_2f66c00.BackgroundColor3=Theme.panel2
-- 0x17 0x9f 0x0e 0x6c 0xe2
end
-- 0354a57878d780257ec0645c2d0cb63c5296f81a6e5767d52286a9af0466
_35bf82.TextColor3=Color3.new(1,1,1)
-- 0101111110111111100000010111
_35bf82.BackgroundColor3=Theme.neon
-- f62fbb81f2a1dd8feb9356a7d2720a52383d54e3ff28e9
glow(_35bf82,Theme.accent2,0.4)
-- 0001111111011001001111000001
shine(_35bf82,Color3.new(1,1,1),0.5)
-- ab597b52a6b23f85859676d8
local_48d7fc=_35bf82.AbsolutePosition.Y-rail.AbsolutePosition.Y
_bbffc50c:Create(tabIndicator,TweenInfo.new(0.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),
-- 10101110101100100101110011111110111011
{Position=UDim2.fromOffset(5,_48d7fc)}):Play()
-- 92c3cf7636a6fefcfff57eb9b8be02a0ef78cefde0a72
ripple(_35bf82,_35bf82.AbsoluteSize.X/2,_35bf82.AbsoluteSize.Y/2,Theme.accent2,18,0.5)
end)
_35bf82.MouseEnter:Connect(function()
-- 36b51596a7b919befd89b3698cca8407671
if_35bf82.BackgroundColor3~=Theme.neonthen
_bbffc50c:Create(_35bf82,TweenInfo.new(0.15),{BackgroundColor3=Theme.panel3}):Play()
end
end)
-- 11001010100010101001101000111111101001001111100111001
_35bf82.MouseLeave:Connect(function()
-- f4e1f3206f07b09033f48932fe
if_35bf82.BackgroundColor3~=Theme.neonthen
_bbffc50c:Create(_35bf82,TweenInfo.new(0.15),{BackgroundColor3=Theme.panel2}):Play()
-- 2c3d4051886e080b9c1481b4ca166156d27aca48b2284dbe3d39
end
-- 0xec 0x80 0x2c 0x4f 0x9b
end)
-- 0x5c 0x2f 0xaa 0xd6 0xcf
end

-- d82f7bc737ea521704127b5b734ce82b85a1eed86fb94f99e8923
functionsection(_0d2817,_2e92b,_3cd4f88e0)
local_0a76ea=resolvePage(_0d2817)
-- 0x66 0x54 0xb7
ifnot_0a76eathenreturnnilend
-- 0x1d 0x4e 0xf3 0x01
local_ae67a55=tPanel2(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,24),
-- 11fda8d69a28b2fcd63a3c2851
BackgroundColor3=Theme.panel2,BackgroundTransparency=0.15,
LayoutOrder=#_0a76ea:GetChildren(),ZIndex=33},_0a76ea))
-- 4aedf04e49a50bb703343252d96b5bfd5463
corner(_ae67a55,7)
-- 46f9c0b46412280fb42ef81aebbaaa0d339f4cc38a66d47adc9f2
tStroke(stroke(_ae67a55,Theme.strokeSoft,1,0.5))
local_9af2d=grad(_ae67a55,Color3.fromRGB(110,50,190),Theme.panel2,0)
new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(0,3,0.6,0),Position=UDim2.new(0,0,0.5,0),
AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=Theme.neon,
-- 6f453a5f7a1a2e1f2b4bf7c2d25c83f8b4b218222cb6f03a0e8709ed67
BorderSizePixel=0,ZIndex=35},_ae67a55)
-- 0x01 0x2e 0xab 0x0b 0x34 0xe1
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-14,1,0),Position=UDim2.fromOffset(12,0),
BackgroundTransparency=1,Text=(_3cd4f88e0and_3cd4f88e0.._045899(32, 32)or_045899()).._2e92b,
Font=Enum.Font.GothamBlack,TextSize=10,TextColor3=Theme.accent2,
TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},_ae67a55)
ifCfg.UI.ShimmerHeadersthen
task.spawn(function()
-- 0xa5 0x06 0xfd 0x46 0xce 0xeb
local_51d28b2=0
-- 1108082c849ab57319abf4b276657d006bdf2883cc3841ba32eea876
while_ae67a55.Parentdo
-- f0eb9c29415a448b3d784a399c8ba9c683dbc26d521026def
_51d28b2=(_51d28b2+0.02)%1
-- 0x13 0x59 0x7d 0x41 0x1e
_9af2d.Offset=Vector2.new(_51d28b2,0)
_5eb6274d0.RenderStepped:Wait()
-- 011000010100001010111001100010000001001001011110111
end
-- c45603f0e2dc26275b6af21e97d450046961d09f180a43
end)
end
return_ae67a55
end

functioncollapsible(_8e841f89,_fef8543,_a4620e)
local_e3357a=resolvePage(_8e841f89)
ifnot_e3357athenreturnnilend
-- 0x2e 0x30 0xef
local_48a88ce2=_a4620eandtrueorfalse
local_ab6caa=tPanel2(new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.new(1,0,0,24),
-- 000000100001110000110011101000111000110000111010010000101001
BackgroundColor3=Theme.panel2,BackgroundTransparency=0.15,Text=_045899(),
-- d812e512b0ad7aec31df14aef633e0e
AutoButtonColor=false,LayoutOrder=#_e3357a:GetChildren(),ZIndex=33},_e3357a))
corner(_ab6caa,7)
tStroke(stroke(_ab6caa,Theme.strokeSoft,1,0.5))
-- 237b6a0cefbf849a026c76c51b9dd6b
grad(_ab6caa,Color3.fromRGB(110,50,190),Theme.panel2,0)
local_38e5887b=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromOffset(18,24),Position=UDim2.fromOffset(8,0),
BackgroundTransparency=1,Text=_48a88ce2and_045899(226, 150, 188)or_045899(226, 150, 182),
-- 7227d5fed17ac247fc632d8b25c9b62c2c06a30bf9f3602bff2e1d7
Font=Enum.Font.GothamBold,TextSize=10,TextColor3=Theme.accent2,ZIndex=34},_ab6caa)
-- 0100110101101111100111110
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-30,1,0),Position=UDim2.fromOffset(26,0),
BackgroundTransparency=1,Text=_fef8543,Font=Enum.Font.GothamBlack,
-- 111010110101011010001000011110100100001010011101011110100010
TextSize=10,TextColor3=Theme.accent2,
TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},_ab6caa)
-- 0xe9 0x6b 0xff 0xcc
local_b3a521e=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,
-- ea00c103c88a51a81cfb68f69624cacdf28670
AutomaticSize=Enum.AutomaticSize.Y,LayoutOrder=#_e3357a:GetChildren(),
Visible=_48a88ce2,ZIndex=33},_e3357a)
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.LayoutOrder},_b3a521e)
-- dd24ba1390bdd488bdca54e42a
new(_045899(85, 73, 80, 97, 100, 100, 105, 110, 103),{PaddingLeft=UDim.new(0,4),PaddingRight=UDim.new(0,4)},_b3a521e)
-- 101110101100100101000001000110111
_ab6caa.MouseButton1Click:Connect(function()
_48a88ce2=not_48a88ce2
-- 000110110000111110001011010111111011000
_38e5887b.Text=_48a88ce2and_045899(226, 150, 188)or_045899(226, 150, 182)
_b3a521e.Visible=_48a88ce2
glow(_ab6caa,Theme.accent2,0.3)
-- f5cd973e6786f47ee304af4bb6ae56664947e258e5d5b3a
end)
-- 0x2b 0xb2 0x42
return_b3a521e,_ab6caa
-- 962815306aed4257645a0457600dec78bcab86069ea49d0f6749c62
end

-- 0x83 0x6a 0xae 0x1e 0x93 0x7f
functiontoggleRow(_39b023,_a88973580,_6ad9ee2,_65e77eb)
-- 0x96 0xd8 0x58 0xee 0x8e
local_17e99fccb=resolvePage(_39b023)
-- 111010100100100000000101001100010000001111100011101
ifnot_17e99fccbthenreturnend
-- 00010111011001000000100101
toggleLabels[_a88973580]=_6ad9ee2
-- 0x2a 0x58 0xba
local_1c51564=getPath(Cfg,_a88973580)==true
local_d1ed2=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,30),
-- 0x04 0x15 0x69 0x67
BackgroundColor3=Theme.panel,BackgroundTransparency=0.15,
LayoutOrder=#_17e99fccb:GetChildren(),ZIndex=33},_17e99fccb))
-- 0bd596597ba776f4ba17c32bfb4087f2d
corner(_d1ed2,7)
-- 979b669b59c4ff33d939e8098c7c6dedba4a47f7847bfd45663cc
tStroke(stroke(_d1ed2,Theme.strokeSoft,1,0.55))
hoverStripe(_d1ed2,Theme.neon)
-- bd5708cad40b71da5ddd5950b6f4
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-200,1,0),Position=UDim2.fromOffset(14,0),
BackgroundTransparency=1,Text=_6ad9ee2,Font=Enum.Font.Gotham,TextSize=11,
TextColor3=Theme.text,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=36},_d1ed2)
-- 0001110100111001100111100100010111000001010111111
local_aa4907=tPanel2(new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(72,18),
Position=UDim2.new(1,-116,0.5,-9),BackgroundColor3=Theme.panel2,
Text=_045899(43, 32, 98, 105, 110, 100),Font=Enum.Font.GothamBold,TextSize=9,
-- 082cfa6aae43cec0ec86a2579518de64eac6337d4b878a
TextColor3=Theme.muted,AutoButtonColor=false,ZIndex=36},_d1ed2))
-- ef479a97d1145ce951bbff555a4d4f5ce2627fde1169bb7bb09b0241
corner(_aa4907,5)
tStroke(stroke(_aa4907,Theme.strokeSoft,1))
-- 0x00 0x82 0x5e
localfunctionrefreshKey()
local_3377f2c75=Cfg.BindsandCfg.Binds[_a88973580]
-- 0000110110100001000101110110110001111
if_3377f2c75then
_aa4907.Text=_3377f2c75.Name
-- 111101101010011001100100101000110010000100011010010
_aa4907.TextColor3=Theme.accent2
else
_aa4907.Text=_045899(43, 32, 98, 105, 110, 100)
_aa4907.TextColor3=Theme.muted
end
-- 0x4c 0xd3 0x59 0xff
end
refreshKey()
keyBtn.MouseButton1Click:Connect(function()
pendingKeybind={path=path,btn=keyBtn,refresh=refreshKey}
keyBtn.Text=_045899(112, 114, 101, 115, 115, 226, 128, 166)
-- 633fe869381b9b1fff7667532
keyBtn.TextColor3=Theme.danger
-- 04e1b4688b6d7f71a550a478
end)
local_0d35cdeb5=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(42,20),
-- 0x1e 0xf4 0x7d 0x68 0x19
Position=UDim2.new(1,-50,0.5,-10),
-- 66f56d2a4215d2210bfd3729a6b63916f68fac59
BackgroundColor3=stateandTheme.neonorTheme.panel2,
-- 00110111010000100011011000011010101000100011111011
BorderSizePixel=0,ZIndex=36},row)
corner(_0d35cdeb5,10)
-- 0x34 0x1b 0xa0
tStroke(stroke(_0d35cdeb5,Theme.strokeSoft,1,0.4))
local_03de1=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(14,14),
Position=stateandUDim2.new(1,-17,0.5,-7)orUDim2.new(0,3,0.5,-7),
BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0,ZIndex=37},_0d35cdeb5)
corner(_03de1,7)
-- 0x43 0x88 0x61 0xe6 0x17
tAcc(stroke(_03de1,Theme.neon,1.4,0.2))
localfunctionrender()
ifstatethen
_0d35cdeb5.BackgroundColor3=Theme.neon
_03de1.Position=UDim2.new(1,-17,0.5,-7)
-- 0x4d 0x31 0x07
else
-- e1abe7ab41d1bcc9351d0f43c4c542b4ab40a709bd6f3624e947e6b4
_0d35cdeb5.BackgroundColor3=Theme.panel2
_03de1.Position=UDim2.new(0,3,0.5,-7)
end
end
-- 0xd2 0xcd 0x02 0x8f
localfunctionset(v,fire)
-- 0110001001001010110010011111100001001011
local_6e4a2c24=vandtrueorfalse
-- 0011001011010110010010111110111000
local_88c015=_6e4a2c24~=state
-- 0x04 0x1d 0x98
state=_6e4a2c24
setPath(Cfg,path,state)
-- aa6b19dbec053dcfeceeff63214c33
render()
ifpath==_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112)then
ifnotstatethen
local_2a6af30=hum()
-- 0010011000010110001111011010011111110010101110010010101
if_2a6af30then
-- 11010000000011100000000101010011
_2a6af30.PlatformStand=false
_2a6af30.AutoRotate=true
-- 0x8d 0x0f 0x53 0xd4 0x9b
pcall(function()_2a6af30:ChangeState(Enum.HumanoidStateType.GettingUp)end)
-- c778922752a4b18a8a29bd885ee90205c748ff82
end
-- 0x7d 0x8c 0xf7
TS.humpWasActive=false
else
HUMP.phase=0;HUMP.smoothVel=0;HUMP.smoothAir=0
-- 0x75 0x90 0xe2 0x18 0x70 0xd1
HUMP.lockTimer=1.5;HUMP.lastTier=_045899(83, 84, 73, 76, 76)
-- 11001011001101100110110110111101001
HUMP.awaitingRespawn=false;HUMP.fallHold=0
-- 9857a940f9fa41dffa9c59cfb358686358e66da464199dc44792dd124
HUMP.speedMult=1.0;HUMP.ampMult=1.0;HUMP.distMult=1.0
end
-- 110011100001011101101010010001010111111
end
iffire~=falseandonChangethenpcall(onChange,state)end
-- 0x56 0xc5 0x02 0xc2 0x5f 0xe1
if_88c015thenpcall(refreshHUD);pcall(refreshAD)end
-- a6ad831b6d17f5ce0af216fade115d3d34d
end
widgets[path]={set=set,get=function()returnstateend,
-- 1110110111101011011000101010
rerender=render,refreshKey=refreshKey,label=label}
-- 00000011100111100001010001111000001
render()
_0d35cdeb5.InputBegan:Connect(function(_0cd6500)
-- 2a705005675e941fff26b826015382281a3c1f19b70f3514f8b19
if_0cd6500.UserInputType==Enum.UserInputType.MouseButton1or_0cd6500.UserInputType==Enum.UserInputType.Touchthen
set(notstate)
-- eb80861599fc27f62737ee73a023b820715f15
pulse(_03de1,1.4,0.08)
-- 0100111101001000000110001100100011101011101
flash(_0d35cdeb5,stateandTheme.dangerorTheme.success,0.12)
-- 0x9e 0x17 0x8c 0x28 0x02
glow(_0d35cdeb5,stateandTheme.dangerorTheme.success,0.4)
end
end)
end

-- 64f5112b064132383a799cad
functionsliderRow(_02472c3,_acf8f77,_6d224e2c6,_5e4fd3196,_a620d,_c911d84a,_73d1afcb)
-- 22a6a8f539421e27349c07e06
local_f3f49c=resolvePage(_02472c3)
-- 0xa8 0x90 0x5f
ifnot_f3f49cthenreturnend
local_3ce63=getPath(Cfg,_acf8f77)
iftype(cur)~=_045899(110, 117, 109, 98, 101, 114)thencur=mn;setPath(Cfg,path,mn)end
-- 0x84 0xe8 0xb3 0xd3
local_b769b2=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,38),
-- 8a6c8249c26e9a637f3c386064ca641321d3
BackgroundColor3=Theme.panel,BackgroundTransparency=0.15,
-- 9e332933e52e92b1180b35d23e2178fec
LayoutOrder=#_f3f49c:GetChildren(),ZIndex=33},_f3f49c))
corner(_b769b2,7)
tStroke(stroke(_b769b2,Theme.strokeSoft,1,0.55))
-- 0x7b 0x34 0xa3 0xed 0xf6 0xc2
hoverStripe(_b769b2,Theme.neon)
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-90,0,14),Position=UDim2.fromOffset(14,4),
-- 0x83 0x4e 0x5c
BackgroundTransparency=1,Text=_6d224e2c6,Font=Enum.Font.Gotham,TextSize=11,
-- 00000000100100000111001100001000101111000100100100
TextColor3=Theme.text,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=36},_b769b2)
-- a46b221a0371b1aa9d2dff3e401e
local_9324e=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromOffset(70,14),
Position=UDim2.new(1,-80,0,4),BackgroundTransparency=1,
Font=Enum.Font.GothamBold,TextSize=10,TextColor3=Theme.accent2,
TextXAlignment=Enum.TextXAlignment.Right,ZIndex=36},_b769b2)
-- f316add7030c777d06e11fd3de725584436c15078b
local_6cf3bc=tPanel2(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-22,0,5),
-- 0x2e 0x36 0x76 0x20
Position=UDim2.fromOffset(11,24),BackgroundColor3=Theme.panel2,ZIndex=34},_b769b2))
-- 10110000101101010010010010110100100011101
corner(_6cf3bc,3)
-- 214eda574641eef16b99caea5bef5511f67319a48583fea
tStroke(stroke(_6cf3bc,Theme.strokeSoft,1,0.5))
local_1d2bc9=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(0,0,1,0),
-- efdcd1768cf916be9baa2bcd52be60f438889ca4a06131ecb58475ded7
BackgroundColor3=Theme.neon,BorderSizePixel=0,ZIndex=35},_6cf3bc)
corner(_1d2bc9,3)
-- 01a4ccf0b07d1267f00527ff31e28c1b78d
grad(_1d2bc9,Theme.neon,Theme.accent3,0)
local_2b8d46932=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(12,12),
Position=UDim2.new(0,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),
-- a3dc38922ceda10c55db8a049d4c9db0ce581006c31e77d74ce6fd7182e2
BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0,ZIndex=36},_6cf3bc)
-- 0x5e 0xec 0x65 0x5f
corner(_2b8d46932,6)
tAcc(stroke(_2b8d46932,Theme.neon,1.5))
local_363534=10^_c911d84a
-- 001001110000000011110111110110110
local_1107cb3=_3ce63
-- 01111010010111011010011110100100100
localfunctionsetVal(v,fire)
_1107cb3=v
setPath(Cfg,_acf8f77,v)
local_7d732=math.clamp((v-_5e4fd3196)/(_a620d-_5e4fd3196),0,1)
-- 0010000101001000011010100000101010000000100
_1d2bc9.Size=UDim2.new(_7d732,0,1,0)
_2b8d46932.Position=UDim2.new(_7d732,0,0.5,0)
_9324e.Text=string.format(_045899(37, 46).._c911d84a.._045899(102),v)
iffire~=falseand_73d1afcbthenpcall(_73d1afcb,v)end
end
widgets[path]={set=setVal,get=function()returnvalueend}
-- 0ad284584749239b2079c2c4428d1a11a4d40f11416104720f363767f
setVal(value,false)
-- 0xf6 0xf0 0x44 0x74
local_9069e3=false
-- 0x39 0x29 0x41 0xb6 0x78
localfunctionfromX(px)
-- 0x06 0x33 0x44 0x22 0x92 0x95
local_4ce42=math.clamp((px-bar.AbsolutePosition.X)/math.max(bar.AbsoluteSize.X,1),0,1)
-- 0xd2 0xbf 0xbb 0x7f 0xa9 0xb7
setVal(math.floor((mn+(mx-mn)*_4ce42)*mult+0.5)/mult)
end
bar.InputBegan:Connect(function(_7f0266)
-- 0x4a 0x4c 0x10 0xa3 0x71 0xb6
if_7f0266.UserInputType==Enum.UserInputType.MouseButton1or_7f0266.UserInputType==Enum.UserInputType.Touchthen
-- 0xb2 0x0c 0xc6
_9069e3=true
fromX(_7f0266.Position.X)
pulse(_03de1,1.5,0.1)
end
-- 0x5a 0xdd 0xd8 0xfb
end)
_907005.InputChanged:Connect(function(_ed294e0)
-- 0x99 0x9a 0x5d 0xcc
if_9069e3and(_ed294e0.UserInputType==Enum.UserInputType.MouseMovementor_ed294e0.UserInputType==Enum.UserInputType.Touch)then
fromX(_ed294e0.Position.X)
end
-- 011101010010101010111100001001110000000101100011000000100
end)
-- 0x91 0xd6 0x0e 0x99 0x26 0xfb
_907005.InputEnded:Connect(function(_8278a860)
-- 0c05318be9a11dbd4e64b1997b97f04b830cb200e4fe6c8
if_8278a860.UserInputType==Enum.UserInputType.MouseButton1or_8278a860.UserInputType==Enum.UserInputType.Touchthen
-- 07ee4379e7d026a71ec6a084c67132fb3c44973c0b69174af86
_9069e3=false
end
end)
-- 9c345c03788d29b875aff31c7de7e6f3d15
end

-- 0xe4 0xcd 0x93
functionbuttonRow(_15781a9,_4d12a8ea,_ee6654e,_56446f)
local_5bb81a=resolvePage(_15781a9)
-- 0x51 0x9a 0x08 0xff 0x56 0x52
ifnot_5bb81athenreturnend
local_29ae51=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,30),
-- 0xe8 0xae 0xbe 0x1e 0x85 0xfc
BackgroundColor3=Theme.panel,BackgroundTransparency=0.15,
-- 0110101100011001011010111000100101010110
LayoutOrder=#_5bb81a:GetChildren(),ZIndex=33},_5bb81a))
-- 1111101011111100010011010111000000111100101110001
corner(_29ae51,7)
-- 7ba44d5b39a00dfaaf94b7ef4abb725a65de452e86f144dbb4e876
tStroke(stroke(_29ae51,Theme.strokeSoft,1,0.55))
hoverStripe(_29ae51,Theme.neon)
-- 10000011101100101110000100001010011101001001111101100
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-160,1,0),Position=UDim2.fromOffset(14,0),
-- a522db776f6adffe05e088bcf057
BackgroundTransparency=1,Text=_4d12a8ea,Font=Enum.Font.Gotham,TextSize=11,
TextColor3=Theme.text,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=36},_29ae51)
local_d6ec32a7=tPanel2(new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(140,20),
-- 0xf1 0xca 0xa8 0x85
Position=UDim2.new(1,-150,0.5,-10),BackgroundColor3=Theme.panel2,
-- 0000101000111101101010010101110101111100011101100011110101
Text=_ee6654e,Font=Enum.Font.GothamBold,TextSize=9,
-- 10000111111001000011001101000101110
TextColor3=Theme.accent2,AutoButtonColor=false,ZIndex=36},_29ae51))
corner(_d6ec32a7,6)
-- 0x2f 0x79 0xa1 0x17 0xc2 0xb4
tStroke(stroke(_d6ec32a7,Theme.strokeSoft,1))
-- 0x22 0x82 0xdb 0xe6 0x91
_d6ec32a7.MouseButton1Click:Connect(function()
-- 0x47 0xc2 0x7c 0x4d 0xbe
pulse(_d6ec32a7,0.94,0.06)
-- 299829093c6189b64b81e6aef1a1d9d4c4766660f21d
glow(_d6ec32a7,Theme.accent2,0.35)
-- b9b0bfb7d7af8575414955d7de4f332761444c37060f195e
shine(_d6ec32a7,Theme.accent2,0.5)
_56446f(_d6ec32a7)
-- 0110110011000100101010010011010100110000
end)
-- 0x6b 0x22 0x30
_d6ec32a7.MouseEnter:Connect(function()
-- 0x6d 0xd1 0x57 0xc9
_bbffc50c:Create(_d6ec32a7,TweenInfo.new(0.12),{BackgroundColor3=Theme.panel3}):Play()
-- 0010110101111110110000000101100001010111011110111000010
end)
_d6ec32a7.MouseLeave:Connect(function()
-- 11101010010111010100001110010110011111000
_bbffc50c:Create(_d6ec32a7,TweenInfo.new(0.15),{BackgroundColor3=Theme.panel2}):Play()
-- 0x90 0x5b 0x79 0xee 0xd5 0x01
end)
-- 000110111100001111101110101010011
return_d6ec32a7
-- ba2ee0723ec81a459784367785f3c11e923e77c60335f5c7aedd09ca
end

-- 00000000111101001010011101100111100011
functioninfoRow(_f1a27c9,_0fbaa)
-- 0011111111001001000100000010000011011001
local_ee88ec=resolvePage(_f1a27c9)
-- 0xbb 0x11 0xe7 0x49 0x21
ifnot_ee88ecthenreturnnilend
-- 0011011000100001001011001101000111000010
local_2c3f4795f=tPanel2(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,24),
BackgroundColor3=Theme.panel2,BackgroundTransparency=0.2,
-- 011101101110001011101111000100
LayoutOrder=#_ee88ec:GetChildren(),ZIndex=33},_ee88ec))
-- 011110001001001100000110
corner(_2c3f4795f,6)
-- f1e6cff07bf50debae34b7f92dba78044d04ce90f8bc6ab
tStroke(stroke(_2c3f4795f,Theme.strokeSoft,1,0.5))
-- e8d49daacabd90e7213e05e7704a2
local_d0a644e1=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-10,1,0),Position=UDim2.fromOffset(12,0),
BackgroundTransparency=1,Text=_0fbaaor_045899(),Font=Enum.Font.Code,TextSize=10,
-- d55acc1e2beb76826ffaba52e658c6682f756
TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},_2c3f4795f)
-- b4a4fe5c9090f07195418798aca4c0b70cb8d475dd15850eda6b9db618
return_d0a644e1
-- 3a9cbfc5fbd18ce04243f59e22288f40bb
end

functiontextRow(_3a8b98b85,_06c25,_1f89a,_569dfc13,_0a399)
local_fe30ac=resolvePage(_3a8b98b85)
ifnot_fe30acthenreturnend
local_da5efc=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,30),
BackgroundColor3=Theme.panel,BackgroundTransparency=0.15,
LayoutOrder=#_fe30ac:GetChildren(),ZIndex=33},_fe30ac))
corner(_da5efc,7)
-- a809f25ba1423b190d2be7264677fd7b99
tStroke(stroke(_da5efc,Theme.strokeSoft,1,0.55))
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-180,1,0),Position=UDim2.fromOffset(14,0),
-- b0af7bba11ef2699c47d2fb99e3c3648de6de200c3b0cc510a4415
BackgroundTransparency=1,Text=_06c25,Font=Enum.Font.Gotham,TextSize=11,
-- 110111011011110010011111001000101010110001101111111010011
TextColor3=Theme.text,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=36},_da5efc)
-- 0xd1 0x2d 0x44
local_ef92823=tPanel2(new(_045899(84, 101, 120, 116, 66, 111, 120),{Size=UDim2.fromOffset(160,20),
-- 1000010111011110001000100101001010110010100010110010011
Position=UDim2.new(1,-168,0.5,-10),BackgroundColor3=Theme.panel2,
Text=_569dfc13or_045899(),PlaceholderText=_1f89aor_045899(),Font=Enum.Font.Gotham,
TextSize=10,TextColor3=Theme.accent2,PlaceholderColor3=Theme.muted,
-- 5fe1d2405e2886624658676f7f9b6052badf389fba90b6b6b0335390
ClearTextOnFocus=false,Active=true,Selectable=true,ZIndex=50},_da5efc))
corner(_ef92823,5)
tStroke(stroke(_ef92823,Theme.strokeSoft,1))
-- 1100001011001000110011010010111000011010010010001001110010
_ef92823.FocusLost:Connect(function()if_0a399then_0a399(_ef92823.Text)endend)
-- 101010010010111110111011000110110111101110001000101100
return_ef92823
end

-- 125f656a5cb3cf62b5de9dbb143a9eee5d7650091c6
functioncycleRow(_825045eeb,_1f88f5,_0a3d7721,_39d8c5,_7623509a)
-- 00101011010011111010000101111010100000111100
local_61758=resolvePage(_825045eeb)
ifnot_61758thenreturnend
local_413b2e4=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,30),
BackgroundColor3=Theme.panel,BackgroundTransparency=0.15,
-- 162a7558365f68cf8ef47fe63fdb985c018dc9a73629b3
LayoutOrder=#_61758:GetChildren(),ZIndex=33},_61758))
corner(_413b2e4,7)
tStroke(stroke(_413b2e4,Theme.strokeSoft,1,0.55))
-- 0x2a 0x94 0x61 0x2d
hoverStripe(_413b2e4,Theme.neon)
-- 5588eb4480974545591f08ab5807e275e4e110f329bd3240
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-160,1,0),Position=UDim2.fromOffset(14,0),
BackgroundTransparency=1,Text=_0a3d7721,Font=Enum.Font.Gotham,TextSize=11,
-- 100110111111000000001010010100011101011100001010100011111
TextColor3=Theme.text,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=36},_413b2e4)
-- 0xd8 0x2b 0x8b 0x02 0x85 0xac
local_425c4=tPanel2(new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(140,20),
Position=UDim2.new(1,-150,0.5,-10),BackgroundColor3=Theme.panel2,
Text=tostring(getPath(Cfg,_1f88f5)or_39d8c5[1]),
Font=Enum.Font.GothamBold,TextSize=9,TextColor3=Theme.accent2,
-- 4c11fcb1e131ebfe7da4611d7f3d10ca54b02175f76c9062d94718
AutoButtonColor=false,ZIndex=36},_413b2e4))
-- 0000010010101101001111010011011000
corner(_425c4,6)
-- 0x24 0xd8 0x94 0x68 0x33 0x48
tStroke(stroke(_425c4,Theme.strokeSoft,1))
_425c4.MouseButton1Click:Connect(function()
local_ae5a01d01=getPath(Cfg,_1f88f5)
local_40a39f97=1
for_ad4fd,_d40f5e7inipairs(_39d8c5)doif_d40f5e7==_ae5a01d01then_40a39f97=_ad4fdendend
-- 0110111001011000101110011111100011100100111
_40a39f97=_40a39f97%#_39d8c5+1
-- 010111001111011100010010000111001001011011001110101101011
setPath(Cfg,_1f88f5,_39d8c5[_40a39f97])
-- 0x94 0xe2 0x3c 0xed 0x10
_425c4.Text=tostring(_39d8c5[_40a39f97])
-- f617ac4cca28911127274f42e51f62aae5b6cc2fa7493ca3a0e
pulse(_425c4,0.94,0.06)
if_7623509athenpcall(_7623509a,_39d8c5[_40a39f97])end
end)
widgets[_1f88f5]={set=function(_e2feeb)setPath(Cfg,_1f88f5,_e2feeb);_425c4.Text=tostring(_e2feeb)end,
-- 11100010110101101100110000
get=function()returngetPath(Cfg,_1f88f5)end}
-- 01000101111110010011111101111001001101000001110111101010
return_425c4
-- 0xad 0xb5 0x27 0xd4
end

functionlegendRow(_088ae5,_16ab0e,_64aa74)
-- 67349c8598fc3699e6dca4f88811d835ad0
local_7360db=resolvePage(_088ae5)
ifnot_7360dbthenreturnend
local_b4feee3=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,26),
BackgroundColor3=Theme.panel,BackgroundTransparency=0.15,
LayoutOrder=#_7360db:GetChildren(),ZIndex=33},_7360db))
corner(_b4feee3,7)
-- 001001111100101101000001000001010001100001111111000101101
tStroke(stroke(_b4feee3,Theme.strokeSoft,1,0.55))
local_940de=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(26,14),Position=UDim2.fromOffset(12,6),
BackgroundColor3=_64aa74,BorderSizePixel=0,ZIndex=34},_b4feee3)
corner(_940de,4)
-- 0xe8 0xd4 0xe8 0xd2 0x5a 0xaa
stroke(_940de,_64aa74,1,0)
-- 1111111110011110001111001111111101111010
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-46,1,0),Position=UDim2.fromOffset(46,0),
-- 0x18 0x2b 0x62 0xde 0x52 0x7f
BackgroundTransparency=1,Text=_16ab0e,Font=Enum.Font.GothamBold,
TextSize=10,TextColor3=_64aa74,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},_b4feee3)
-- 0x43 0x07 0x76 0x54
return_b4feee3
end


-- 03e39f669a7a756f4d6ec7da5363c7f7a6ff51501606ce4a5a497d2
functionapplyOpacity(_12b9bb1)
-- 0xc3 0x00 0xda 0xa8
_12b9bb1=math.clamp(tonumber(_12b9bb1)or0,0,1)
for_d84a36,_a70ab7afinipairs(menu:GetDescendants())do
-- 0110111100000101000010111001
local_3e6127356,_efdf60=_a70ab7af.Parent,false
-- 01000001000000100011001000010101011101
while_3e6127356and_3e6127356~=menudo
if_3e6127356==ambientthen_efdf60=true;breakend
_3e6127356=_3e6127356.Parent
-- 0xfb 0x08 0x07 0xc9
end
ifnot_efdf60then
-- 2e95d4b182351c021aa11ee48880f88186aaf49b3d76c0245
if_a70ab7af:IsA(_045899(70, 114, 97, 109, 101))or_a70ab7af:IsA(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110))or_a70ab7af:IsA(_045899(84, 101, 120, 116, 66, 111, 120))or_a70ab7af:IsA(_045899(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101))then
-- db0f3fc4e823dd758d120d05d9563be7
local_9dd9b=_a70ab7af:GetAttribute(_045899(79, 112, 66, 97, 115, 101))
if_9dd9b==nilthen_9dd9b=_a70ab7af.BackgroundTransparency;_a70ab7af:SetAttribute(_045899(79, 112, 66, 97, 115, 101),_9dd9b)end
-- 5f157291b6630cde1343c6bf1a156d2a5721f3ce016cc2591ec11139e
_a70ab7af.BackgroundTransparency=math.clamp(_9dd9b+_12b9bb1*(1-_9dd9b),0,1)
-- 0x46 0x09 0xa9
elseif_a70ab7af:IsA(_045899(85, 73, 83, 116, 114, 111, 107, 101))then
local_0b7b62d47=_a70ab7af:GetAttribute(_045899(79, 112, 66, 97, 115, 101))
-- 0xb7 0x5c 0xb6
if_0b7b62d47==nilthen_0b7b62d47=_a70ab7af.Transparency;_a70ab7af:SetAttribute(_045899(79, 112, 66, 97, 115, 101),_0b7b62d47)end
_a70ab7af.Transparency=math.clamp(_0b7b62d47+_12b9bb1*0.9,0,1)
-- ff2695fc316e1c1f18b1ebf540
end
-- 00101001010101110001001011001101110100
end
-- 100110110110100111010010
end
-- 0x66 0x18 0xd0 0x15 0xbd
end
-- 7f0e98c0c01f2138871d67f4947d828f701388a86e6e8285
functionapplyTheme()
for_f567e8,_33ba41b5binipairs(gui:GetDescendants())do
if_33ba41b5b:GetAttribute(_045899(84, 95, 66, 103))and_33ba41b5b:IsA(_045899(70, 114, 97, 109, 101))then_33ba41b5b.BackgroundColor3=Theme.bgend
if_33ba41b5b:GetAttribute(_045899(84, 95, 80, 97, 110, 101, 108))and(_33ba41b5b:IsA(_045899(70, 114, 97, 109, 101))or_33ba41b5b:IsA(_045899(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101)))then_33ba41b5b.BackgroundColor3=Theme.panelend
if_33ba41b5b:GetAttribute(_045899(84, 95, 80, 97, 110, 101, 108, 50))and(_33ba41b5b:IsA(_045899(70, 114, 97, 109, 101))or_33ba41b5b:IsA(_045899(84, 101, 120, 116, 66, 111, 120)))then_33ba41b5b.BackgroundColor3=Theme.panel2end
if_33ba41b5b:GetAttribute(_045899(84, 95, 65, 99, 99))then
-- 0xc6 0xcb 0x58 0x86 0x1f
if_33ba41b5b:IsA(_045899(85, 73, 83, 116, 114, 111, 107, 101))then_33ba41b5b.Color=Theme.neon
-- 0110110010010001000111010110000010101100010111010
elseif_33ba41b5b:IsA(_045899(70, 114, 97, 109, 101))or_33ba41b5b:IsA(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110))then_33ba41b5b.BackgroundColor3=Theme.neonend
end
-- 0x6b 0x4e 0x08
if_33ba41b5b:GetAttribute(_045899(84, 95, 65, 99, 99, 50))and_33ba41b5b:IsA(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108))then_33ba41b5b.TextColor3=Theme.accent2end
-- 5065a07782e8b16a1e6eea4755c4ed39bd8961e1b1a36
if_33ba41b5b:GetAttribute(_045899(84, 95, 84, 101, 120, 116))and_33ba41b5b:IsA(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108))then_33ba41b5b.TextColor3=Theme.textend
-- 01001001011111101000110110010011
if_33ba41b5b:GetAttribute(_045899(84, 95, 77, 117, 116, 101, 100))and_33ba41b5b:IsA(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108))then_33ba41b5b.TextColor3=Theme.mutedend
-- 0xb8 0x9f 0x7d
if_33ba41b5b:GetAttribute(_045899(84, 95, 83, 116, 114, 111, 107, 101))and_33ba41b5b:IsA(_045899(85, 73, 83, 116, 114, 111, 107, 101))then_33ba41b5b.Color=Theme.strokeend
-- 0100110010101000100100011110110001100101110111
end
-- fe7440b7de7aeb7343f7a8122b4a1a97ba0edca3887ddd7c7c
tickerLabel.TextColor3=Theme.tickerColor
tickerStroke.Color=Theme.neon
iftickerLabelGradthen
-- 0530383e624b0031289ac5f9f80dc
tickerLabelGrad.Color=ColorSequence.new({
-- 011100000010010001101111001101010011010101010111000
ColorSequenceKeypoint.new(0,Theme.tickerColor),
ColorSequenceKeypoint.new(0.5,Theme.tickerAccent),
-- 11110111101101111000101101
ColorSequenceKeypoint.new(1,Theme.tickerColor),
})
end
for_fa5c6453,_d7c55inipairs(ambientParts)doif_d7c55.instthen_d7c55.inst.BackgroundColor3=Theme.accent2endend
-- 0x02 0x98 0x55 0x1f
for_0ddb84,_d5105inpairs(widgets)doif_d5105.rerenderthenpcall(_d5105.rerender)endend
-- 385abc4cca317c2dc2d00f174b7970e72146d0f9180c034
pcall(refreshHUD)
-- 1110100111010010100001010010001010101111
end

-- 0xdc 0xe7 0xd5 0x34

-- 0011011000010110001001000100110
hudGui=new(_045899(83, 99, 114, 101, 101, 110, 71, 117, 105),{Name=_045899(82, 101, 97, 112, 101, 114, 72, 85, 68),ResetOnSpawn=false,
-- 10011101110100000100100011100010
IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=9998},_198cb)
hudFrame=tBg(new(_045899(70, 114, 97, 109, 101),{Name=_045899(72, 117, 100, 82, 111, 111, 116),Size=UDim2.fromOffset(220,40),
-- 0x08 0x36 0x41 0xe7
Position=UDim2.new(0,20,0,200),BackgroundColor3=Theme.bg,
BackgroundTransparency=0.12,BorderSizePixel=0,
-- 0x7d 0x28 0xd9 0x54 0xad 0x09
AutomaticSize=Enum.AutomaticSize.Y,Visible=false,ClipsDescendants=true},hudGui))
corner(hudFrame,10)
-- 0xfa 0x60 0x4b 0x53 0x9d
tAcc(stroke(hudFrame,Theme.neon,1.5,0.3))
-- c8ee2bb4c969f3ea15a1bd812ff6c6206220fb7b54f699205
grad(hudFrame,Theme.panel,Theme.bg,90)
-- 111001010001111111010111001011010111011010
hudHeader=tPanel2(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,22),
BackgroundColor3=Theme.panel2,BackgroundTransparency=0.1,BorderSizePixel=0},hudFrame))
-- 10100100101000100111110111011000001010111
corner(hudHeader,10)
-- 0x56 0x47 0x86
grad(hudHeader,Color3.fromRGB(48,20,90),Color3.fromRGB(6,3,14),90)
-- 1aabe2d1573eeb5e92d910d607b45e6f677bad22badd51413bfea1
tAcc2(new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-46,1,0),Position=UDim2.fromOffset(10,0),
BackgroundTransparency=1,Text=_045899(226, 154, 161, 32, 75, 69, 89, 66, 73, 78, 68, 83),Font=Enum.Font.GothamBlack,
TextSize=10,TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left},hudHeader))
-- 0011001011100110100100101000010101001010101
hudHide=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(18,18),
-- 110011111010100110010100001001010111010101011111001
Position=UDim2.new(1,-22,0,2),BackgroundColor3=Theme.danger,Text=_045899(226, 136, 146),
Font=Enum.Font.GothamBold,TextSize=11,TextColor3=Color3.new(1,1,1),
AutoButtonColor=false},hudHeader)
corner(hudHide,4)
-- 000011010100110111000011101110
hudList=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,0),Position=UDim2.new(0,0,0,22),
BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.Y},hudFrame)
-- 0x46 0xed 0x0c 0x1a
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{Padding=UDim.new(0,2),SortOrder=Enum.SortOrder.LayoutOrder},hudList)
new(_045899(85, 73, 80, 97, 100, 100, 105, 110, 103),{PaddingTop=UDim.new(0,4),PaddingBottom=UDim.new(0,4),
-- 1010110110011011111001100101110011100111001
PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,6)},hudList)
hudHide.MouseButton1Click:Connect(function()Cfg.UI.HUD=false;pcall(refreshHUD)end)
hudEmpty=tMuted(new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,0,0,16),
BackgroundTransparency=1,Text=_045899(110, 111, 32, 98, 105, 110, 100, 115),Font=Enum.Font.Gotham,
-- 110111010011000000011100001101100011100100000101000111111
TextSize=9,TextColor3=Theme.muted,LayoutOrder=1},hudList))
ifCfg.UI.HUDMovablethenmakeDraggable(hudFrame,hudHeader)end
-- 11110101010100011011101111111
ifCfg.UI.HUDResizablethen
makeResizable(hudFrame,{minW=180,minH=80,corners={_045899(98, 114),_045899(98, 108),_045899(116, 114)},
onResize=function(_5037e,_e69d0a85)
hudFrame.AutomaticSize=Enum.AutomaticSize.None
-- 0x84 0xfb 0xfc 0x5f
hudFrame.Size=UDim2.fromOffset(_5037e,_e69d0a85)
end})
-- 0xda 0x1c 0xe1 0xc5
end
refreshHUD=function()
hudFrame.Visible=Cfg.UI.HUDandtrueorfalse
for_ced73c,_b2406inipairs(hudList:GetChildren())do
-- e1ad8213dc84dbef7acf2b8db6d518
ifnot_b2406:IsA(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116))and_b2406~=hudEmptythen_b2406:Destroy()end
end
-- 1b4c1f23b662a5cd9215bd582cae49d3f8e6fe4ea368bb0da5173de138
local_f56e35={}
for_5f09434,_005a8dinpairs(Cfg.Bindsor{})do
if_005a8dandwidgets[_5f09434]then_f56e35[#_f56e35+1]={path=_5f09434,key=_005a8d}end
end
-- 100011001111100001011111001000011001010000
table.sort(_f56e35,function(_023af,_a8f56bfca)return_023af.path<_a8f56bfca.pathend)
if#_f56e35==0thenhudEmpty.Visible=true;returnend
hudEmpty.Visible=false
for_f19215,_baa94053inipairs(_f56e35)do
-- 0001111101011100001110001100011110001
local_7f7a4=widgets[_baa94053.path].get()
-- 01101101110001001001100010011000011011011101110001100000
local_1a728c5=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,18),
-- 00101010000001011101000111101010
BackgroundColor3=_7f7a4andTheme.panel2orTheme.panel,
BackgroundTransparency=0.3,BorderSizePixel=0,LayoutOrder=_f19215},hudList)
-- 001001111000111101100111011010
corner(_1a728c5,4)
stroke(_1a728c5,_7f7a4andTheme.successorTheme.stroke,1,0.4)
-- ced373714557bb3121e54eec7fc3f20763ae2c8fba890691b178a9b49
new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(7,7),Position=UDim2.new(0,4,0.5,-3.5),
BackgroundColor3=_7f7a4andTheme.successorTheme.muted,BorderSizePixel=0},_1a728c5)
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-75,1,0),Position=UDim2.fromOffset(16,0),
-- 0x7a 0xeb 0xc0 0x02
BackgroundTransparency=1,Text=toggleLabels[_baa94053.path]or_baa94053.path,
-- fe3096a9fa11a7e3359a8fcaab16d0a17eea
Font=Enum.Font.Gotham,TextSize=9,
TextColor3=_7f7a4andTheme.successorTheme.muted,
TextXAlignment=Enum.TextXAlignment.Left},_1a728c5)
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromOffset(60,18),Position=UDim2.new(1,-62,0,0),
BackgroundTransparency=1,Text=_045899(91).._baa94053.key.Name.._045899(93),
Font=Enum.Font.GothamBold,TextSize=9,
TextColor3=_7f7a4andTheme.accent2orTheme.muted,
TextXAlignment=Enum.TextXAlignment.Right},_1a728c5)
end
-- 11010010111011100110111101
end

-- 0x73 0x6d 0x42 0x89

-- 011010100011000001010101011001000
adGui=new(_045899(83, 99, 114, 101, 101, 110, 71, 117, 105),{Name=_045899(82, 101, 97, 112, 101, 114, 65, 68),ResetOnSpawn=false,
IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=9997},_198cb)
-- 1011101110011011101101101101000111000011100000111111
adFrame=tBg(new(_045899(70, 114, 97, 109, 101),{Name=_045899(65, 68, 82, 111, 111, 116),Size=UDim2.fromOffset(240,40),
Position=UDim2.new(0,20,0,260),BackgroundColor3=Theme.bg,
-- 0x59 0xf1 0x03 0x48 0xcb
BackgroundTransparency=0.12,BorderSizePixel=0,
-- 11100001011011110101011001101111001011000000110
AutomaticSize=Enum.AutomaticSize.Y,Visible=false,ClipsDescendants=true},adGui))
-- 100001100101101000100101
corner(adFrame,10)
-- 01100100101001000000111101101111011110
tAcc(stroke(adFrame,Theme.neon,1.5,0.3))
grad(adFrame,Theme.panel,Theme.bg,90)
-- 8167a7843a65a8de95d767a49360d29a83c538a2450b2b4d
adHeader=tPanel2(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,22),
-- 69af46f20a3497fb26a1889d6694eeebe1dcb9a
BackgroundColor3=Theme.panel2,BackgroundTransparency=0.1,BorderSizePixel=0},adFrame))
corner(adHeader,10)
grad(adHeader,Color3.fromRGB(48,20,90),Color3.fromRGB(6,3,14),90)
-- 1011010110010111001110101001110111111011001
tAcc2(new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-70,1,0),Position=UDim2.fromOffset(10,0),
-- 0xac 0x8d 0x7b
BackgroundTransparency=1,Text=_045899(226, 154, 153, 32, 65, 85, 84, 79, 45, 68, 69, 84, 69, 67, 84),Font=Enum.Font.GothamBlack,
TextSize=10,TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left},adHeader))
-- 0x57 0x64 0x00 0x52
adHide=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(18,18),
-- 01000000001001010011101100001000011000110101
Position=UDim2.new(1,-22,0,2),BackgroundColor3=Theme.danger,Text=_045899(226, 136, 146),
Font=Enum.Font.GothamBold,TextSize=11,TextColor3=Color3.new(1,1,1),
-- 0x9e 0xf7 0xa3 0x8b
AutoButtonColor=false},adHeader)
-- 2f9135f31caf3f3eebe5ba3ee53ba
corner(adHide,4)
adBody=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,0),Position=UDim2.new(0,0,0,22),
-- 0100110101001010101000100001100000010110
BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.Y},adFrame)
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{Padding=UDim.new(0,3),SortOrder=Enum.SortOrder.LayoutOrder},adBody)
-- 10111110111010101000010001000110110000
new(_045899(85, 73, 80, 97, 100, 100, 105, 110, 103),{PaddingTop=UDim.new(0,5),PaddingBottom=UDim.new(0,5),
PaddingLeft=UDim.new(0,8),PaddingRight=UDim.new(0,8)},adBody)
-- eb04ae76ff582ffc4c0611f7ce994e01b3f6c765cb0
adRows={}
functionadRow(_53abadb,_76c7880,_d25ccedbb)
-- 11001111000000001101010101010001000011100100000000010010
local_390b485e=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,14),BackgroundTransparency=1,
LayoutOrder=#adBody:GetChildren()},adBody)
-- 6f56d75fab6d5ddb55c7008624439b58ff108ae
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(0,100,1,0),BackgroundTransparency=1,Text=_76c7880,
-- 0xb8 0x8c 0x17
Font=Enum.Font.GothamBold,TextSize=9,TextColor3=Theme.muted,
TextXAlignment=Enum.TextXAlignment.Left},_390b485e)
-- a651327175208d81071af479b818771db03ba
local_4fae359=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-104,1,0),Position=UDim2.fromOffset(104,0),
BackgroundTransparency=1,Text=_045899(226, 128, 148),Font=Enum.Font.Code,TextSize=9,
TextColor3=_d25ccedbborTheme.accent2,TextXAlignment=Enum.TextXAlignment.Right},_390b485e)
-- 0x2a 0x0d 0x25 0x86
adRows[_53abadb]=_4fae359
return_4fae359
-- 0x2e 0xac 0xb1 0xc4 0xe4 0x82
end
adRow(_045899(83, 116, 97, 116, 117, 115),_045899(83, 116, 97, 116, 117, 115, 58),Theme.success)
adRow(_045899(84, 97, 114, 103, 101, 116),_045899(84, 97, 114, 103, 101, 116, 58),Theme.accent2)
-- 0xd7 0x4a 0x36 0x85
adRow(_045899(66, 97, 115, 101, 83, 112, 101, 101, 100),_045899(66, 97, 115, 101, 32, 83, 112, 101, 101, 100, 58),Theme.accent2)
adRow(_045899(83, 112, 101, 101, 100, 77, 117, 108, 116),_045899(83, 112, 101, 101, 100, 32, 195, 151, 58),Theme.accent3)
-- 0xac 0x43 0x46 0x93 0x1e
adRow(_045899(69, 102, 102, 83, 112, 101, 101, 100),_045899(69, 102, 102, 101, 99, 116, 105, 118, 101, 58),Theme.gold)
adRow(_045899(84, 105, 101, 114),_045899(84, 105, 101, 114, 58),Theme.success)
adRow(_045899(65, 105, 114),_045899(65, 105, 114, 98, 111, 114, 110, 101, 58),Theme.accent2)
-- 0x6a 0x46 0xab 0x7b
adRow(_045899(70, 97, 108, 108),_045899(70, 97, 108, 108, 58),Theme.danger)
adRow(_045899(82, 101, 115, 112, 97, 119, 110),_045899(82, 101, 115, 112, 97, 119, 110, 58),Theme.gold)
-- 11100111001000110100011000000000001101111011
adRow(_045899(77, 111, 100, 101),_045899(77, 111, 100, 101, 58),Theme.success)
-- de37394c0cd6b9625e317957071b8ffeb3920135
ifCfg.UI.ADMovablethenmakeDraggable(adFrame,adHeader)end
ifCfg.UI.ADResizablethen
-- 00011110010111110001000110100100100100000010001011000100001
makeResizable(adFrame,{minW=200,minH=100,corners={_045899(98, 114),_045899(98, 108),_045899(116, 114)},
-- 0111100000010011111110010011101010101011111100001
onResize=function(_8aa8cc,_9a6e73f)
adFrame.AutomaticSize=Enum.AutomaticSize.None
adFrame.Size=UDim2.fromOffset(_8aa8cc,_9a6e73f)
end})
-- 6dc13c985d6203adc584ee69444f3329b5a1e8b8
end
adHide.MouseButton1Click:Connect(function()Cfg.UI.AD=false;pcall(refreshAD)end)
-- 7159aec93bf0813847cbb283f11756
refreshAD=function()
-- 0xe5 0x9c 0x87 0x9f
local_f0e35617=Cfg.UI.ADandCfg.Troll.Hump
adFrame.Visible=_f0e35617andtrueorfalse
-- 6c776b4c0e62b5054a816c1b0f4343192f6727021
ifnot_f0e35617thenreturnend
local_acb750=TS.target
-- 44cdc687d5d312f670dfe3fa6d8efee5ce9d0de0ad027cea93b19f3
ifHUMP.awaitingRespawnthen
adRows.Status.Text=_045899(87, 65, 73, 84, 73, 78, 71, 32, 82, 69, 83, 80, 65, 87, 78);adRows.Status.TextColor3=Theme.gold
-- 1100100001010110111101011010011001010000011011111110100
elseifHUMP.fallHold>0then
-- 01111110000101100010011011010011000010001000010
adRows.Status.Text=_045899(72, 79, 76, 68, 73, 78, 71, 32, 65, 73, 82);adRows.Status.TextColor3=Theme.danger
-- 101100000010001000101010011110001101101100010111101000001110
else
-- 0xa1 0x51 0xf9 0x66 0x23 0xb6
adRows.Status.Text=_045899(65, 67, 84, 73, 86, 69);adRows.Status.TextColor3=Theme.success
-- 11edc65121a7b5f265c91c55d7d4b607d447ea0
end
adRows.Target.Text=_acb750and_acb750.Nameor_045899(226, 128, 148)
-- b09956998695bbbfaa9796404e1b
local_f6f5a7=Cfg.Troll.HumpSpeed
-- 04551f66ae70acf01db93400d568
local_e553386=Cfg.Troll.HumpAutoDetectandHUMP.speedMultor1
local_49660d080=math.clamp(_f6f5a7*_e553386,0.5,200)
adRows.BaseSpeed.Text=string.format(_045899(37, 46, 49, 102, 32, 72, 122),_f6f5a7)
-- 01101110011110001100011110
adRows.SpeedMult.Text=Cfg.Troll.HumpAutoDetectandstring.format(_045899(195, 151, 37, 46, 50, 102),HUMP.speedMult)or_045899(195, 151, 49, 46, 48, 48)
-- 03f7cedfd7b49bd5f887701d2
adRows.EffSpeed.Text=string.format(_045899(37, 46, 49, 102, 32, 72, 122),_49660d080)
-- 340276ac294a08cf658e541a22ade299a0d1b02a0a41fc0b91b3
adRows.Tier.Text=HR.tier
adRows.Air.Text=HR.airborneand_045899(121, 101, 115)or_045899(110, 111)
-- 6784b15c32d3e02b6cd5d33776b4
adRows.Fall.Text=HR.fallingUnderand_045899(121, 101, 115)or_045899(110, 111)
-- afc1a4a26a70ab09e582d4b7
adRows.Respawn.Text=HUMP.awaitingRespawnand_045899(104, 111, 108, 100)or_045899(226, 128, 148)
adRows.Mode.Text=HR.autoMode
-- 0xb6 0xbd 0xcf 0x3e 0x38
end

-- 3cf617db68923e4fd02069f34e1f

-- 453452dfdd23aa4c88be5f037d60ea7983ca809b353
tabOrder={_045899(104, 111, 109, 101),_045899(99, 111, 109, 98, 97, 116),_045899(118, 105, 115, 117, 97, 108),_045899(109, 111, 118, 101),_045899(119, 111, 114, 108, 100),_045899(112, 108, 97, 121, 101, 114, 115),_045899(116, 114, 111, 108, 108),_045899(117, 116, 105, 108),_045899(115, 97, 118, 101),_045899(116, 104, 101, 109, 101)}
tabTitles={
home=_045899(72, 79, 77, 69),combat=_045899(67, 79, 77, 66, 65, 84),visual=_045899(86, 73, 83, 85, 65, 76),move=_045899(77, 79, 86, 69),
-- 010111011011101001101011100011010101000110001100
world=_045899(87, 79, 82, 76, 68),players=_045899(80, 76, 65, 89, 69, 82, 83),troll=_045899(84, 82, 79, 76, 76),util=_045899(85, 84, 73, 76),
-- d7b5eefe32fc82812db395192ff663093ba270cc588c3f8c03
save=_045899(83, 65, 86, 69),theme=_045899(84, 72, 69, 77, 69),
-- 010111011110100010001010100100110000000001001000101
}
ifisMod()then
-- 918e0bf98fd189e80474c9c42366655a455e0620d66de60
table.insert(tabOrder,2,_045899(111, 119, 110, 101, 114))
-- 4308163fa406de31758619835bd95eb254fa5f7
tabTitles.owner=_045899(240, 159, 145, 145, 32, 79, 87, 78, 69, 82)
-- 11110001000110100001100100010001100101
end
for_efe4f41b1,_ac09binipairs(tabOrder)domakeTab(_ac09b,tabTitles[_ac09b])end


functiondoModBan(_3af77eff,_294cbc,_b7caeae89)
-- 85a2c605afc0d45903ea7e0ee46bf3c3274bae9f41a9269f71b3e
ifnot_3af77effor_3af77eff==_045899()then
notify(_045899(66, 97, 110),_045899(78, 111, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 97, 118, 97, 105, 108, 97, 98, 108, 101),Theme.gold,3);return
-- 0x73 0x03 0x50
end
task.spawn(function()
-- 1010000001110001001101000101100111000111111
local_1fa1ef946=_60a733cf:JSONEncode({
robloxId=tostring(_7b4ffe4.UserId),key=SESSION_KEYor_045899(),
targetDiscordId=tostring(_3af77eff),
-- 0xcb 0x11 0x94 0xdd
reason=_294cbcor_045899(),duration=_b7caeae89or0,
-- 11100011110100001100001001101101101011011101110111011
})
local_bf8ff59fd,_9068236=httpPost(KEY_API.._045899(47, 99, 104, 97, 116, 47, 98, 97, 110),_1fa1ef946)
-- 0101011101010001111101100011101111111100010100100010001
if_bf8ff59fdthen
local_8b88f281d=(_b7caeae89and_b7caeae89>0)and(_045899(102, 111, 114, 32)..tostring(math.floor(_b7caeae89/60)).._045899(109))or_045899(112, 101, 114, 109, 97, 110, 101, 110, 116, 108, 121)
-- 522e2454d1f54f75f89f7fa0b8fcc4
notify(_045899(66, 97, 110, 110, 101, 100),tostring(_3af77eff).._045899(32).._8b88f281d,Theme.success,3)
-- 0x5a 0x3d 0xf4
else
-- 0xe8 0x38 0xf1 0xd8 0x4b 0x44
local_956f94d51=parseErrorReason(_9068236)
notify(_045899(66, 97, 110, 32, 102, 97, 105, 108, 101, 100),_956f94d51,Theme.danger,8,_956f94d51)
end
-- 0x54 0x14 0xe4
end)
end

functiondoModDelete(_bda17)
ifnot_bda17thenreturnend
task.spawn(function()
-- 0b3c30e2f9a06581489936eeba8f51140799be8ed276a7f63d58181
local_d998cb3=_60a733cf:JSONEncode({
robloxId=tostring(_7b4ffe4.UserId),key=SESSION_KEYor_045899(),
-- 22c3aa8c7f003057847df452ab
messageId=_bda17,
-- 0xa3 0x56 0xaa 0xca 0x37 0x5b
})
-- 8340b1d9ddb1887a818b2594292955e4c0e7d3ce8040ae81
local_89f854315,_1b36b=httpPost(KEY_API.._045899(47, 99, 104, 97, 116, 47, 100, 101, 108, 101, 116, 101),_d998cb3)
if_89f854315then
-- 11011011011111101010101011101111101000000
for_54b96f,_619080inipairs(Chat.listeners)do
-- 0x09 0x90 0xb1 0x88 0x04
if_619080andtype(fn)==_045899(102, 117, 110, 99, 116, 105, 111, 110)then
-- 01110000001001100111111011011010011
pcall(fn,{__deleteMsgId=msgId})
end
end
-- 1100101011010110011101100011010000010111101001010100
notify(_045899(68, 101, 108, 101, 116, 101, 100),_045899(109, 101, 115, 115, 97, 103, 101, 32, 35)..tostring(_bda17),Theme.success,2.5)
else
local_34e0d=parseErrorReason(_1b36b)
notify(_045899(68, 101, 108, 101, 116, 101, 32, 102, 97, 105, 108, 101, 100),_34e0d,Theme.danger,8,_34e0d)
-- 00010010110100011101100100010110000101
end
-- d19502671ffda3f3bb0f90cb6691592fa80331e5465213
end)
-- 0x99 0xe9 0xe6 0x52 0xc5
end


localfunctionopenQuickMod(target)
-- 0x25 0x5a 0xdc 0xd3 0x09 0xb3
ifnotisMod()thenreturnend
ifnottargetornottarget.discordIdthen
notify(_045899(77, 111, 100),_045899(78, 111, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 97, 118, 97, 105, 108, 97, 98, 108, 101, 32, 102, 111, 114, 32, 116, 104, 105, 115, 32, 117, 115, 101, 114),Theme.gold,3);return
-- 0110110111010110101101111111001001001001111110
end
-- 1ed71cd90f8447615649c7db807440e25299a442fe19
local_6cddc4c=_198cb:FindFirstChild(_045899(82, 101, 97, 112, 101, 114, 81, 117, 105, 99, 107, 77, 111, 100))
-- 10010011111001010000101110
if_6cddc4cthen_6cddc4c:Destroy()end
local_a048c=new(_045899(83, 99, 114, 101, 101, 110, 71, 117, 105),{Name=_045899(82, 101, 97, 112, 101, 114, 81, 117, 105, 99, 107, 77, 111, 100),ResetOnSpawn=false,
IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=10050},_198cb)
local_0cec19a=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromScale(1,1),
BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0.65,
Text=_045899(),AutoButtonColor=false,ZIndex=1},_a048c)
_0cec19a.MouseButton1Click:Connect(function()_a048c:Destroy()end)

-- 8d589496036a0d7f35a1a200acdec96db1a8550cd4
local_656d471d,_0a0c27=340,330
local_7ecd8bfba,_1ab0298e=_907005:GetMouseLocation()
local_380163=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(_656d471d,_0a0c27),
Position=UDim2.fromOffset(
-- 0f442e668b1d30d14d16ae6f7bcd387451f454dc6b5e6db6e
math.clamp(_7ecd8bfba-_656d471d/2,20,_4cad80.ViewportSize.X-_656d471d-20),
math.clamp(_1ab0298e-40,20,_4cad80.ViewportSize.Y-_0a0c27-20)),
-- 001010001000110111000110001001000101010011000010
BackgroundColor3=Theme.bg,BorderSizePixel=0,ZIndex=2},_a048c)
-- 0xfc 0xdd 0xb2 0x87 0x8c 0xdc
corner(_380163,14)
-- 100101000001011010010000110000100110010100111100101
grad(_380163,Color3.fromRGB(20,10,40),Theme.bgDeep,90)
stroke(_380163,Theme.neon,2,0.15)
dropShadow(_380163,14,16,0.7)
-- 90fab87a395a6ad070632c4b128
new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,3),BackgroundColor3=Theme.neon,
BorderSizePixel=0,ZIndex=3},_380163)
-- 0x37 0x7d 0x80 0xf0 0x0f 0x43
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-20,0,20),Position=UDim2.fromOffset(14,12),
-- 0xaa 0x39 0x7c 0xd9
BackgroundTransparency=1,Text=_045899(77, 79, 68, 69, 82, 65, 84, 73, 79, 78),Font=Enum.Font.GothamBlack,
TextSize=12,TextColor3=Theme.neon,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=4},_380163)
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-20,0,15),Position=UDim2.fromOffset(14,32),
BackgroundTransparency=1,Text=_045899(64)..tostring(target.nameor_045899(63)),
-- 111000001000110011000101011
Font=Enum.Font.Gotham,TextSize=10,TextColor3=Theme.muted,
-- 10111111100011111010111001001100001000101
TextXAlignment=Enum.TextXAlignment.Left,ZIndex=4},_380163)
-- 5ff98c99b794574b3eccdd087d97efa667
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-20,0,15),Position=UDim2.fromOffset(14,48),
-- db33b09a1e52f5085ec0a064ff93dc3e1877677f9e
BackgroundTransparency=1,Text=_045899(100, 105, 115, 99, 111, 114, 100, 58, 32)..tostring(target.discordId),
-- 771baef476071d48f79a911a6fdd7673cacb2493
Font=Enum.Font.Code,TextSize=9,TextColor3=Theme.accent2,
TextXAlignment=Enum.TextXAlignment.Left,ZIndex=4},_380163)

local_6f086ceeb=tPanel2(new(_045899(84, 101, 120, 116, 66, 111, 120),{Size=UDim2.new(1,-28,0,26),
-- 011010110100011101110111101101001100101011101000101101110
Position=UDim2.fromOffset(14,70),BackgroundColor3=Theme.panel2,
Text=_045899(),PlaceholderText=_045899(114, 101, 97, 115, 111, 110, 32, 40, 111, 112, 116, 105, 111, 110, 97, 108, 41),PlaceholderColor3=Theme.muted,
-- 0011101110101000000111011101000000000010001
Font=Enum.Font.Gotham,TextSize=10,TextColor3=Theme.text,
-- 111001001100001101111001111010011
ClearTextOnFocus=false,Active=true,Selectable=true,ZIndex=50},_380163))
-- 0x60 0xc4 0x46 0x36 0x7d
corner(_6f086ceeb,6)
-- 010110101111011110011001000000010101110000
tStroke(stroke(_6f086ceeb,Theme.strokeSoft,1))

localfunctionmkBtn(y,label,col,cb)
-- 0000011000010001011010101111000101000000011
local_a61a9=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.new(1,-28,0,26),
Position=UDim2.fromOffset(14,y),BackgroundColor3=Theme.panel2,
Text=label,Font=Enum.Font.GothamBold,TextSize=10,
-- 1111100001110001001111011110010000001111100100
TextColor3=col,AutoButtonColor=false,ZIndex=5},_380163)
-- 0x8b 0x75 0xec 0x65
corner(_a61a9,6)
local_829c3c3=stroke(_a61a9,Theme.strokeSoft,1)
-- 78e98d881b025fc351eca990c1d869469
_a61a9.MouseEnter:Connect(function()
_bbffc50c:Create(_a61a9,TweenInfo.new(0.12),{BackgroundColor3=Theme.panel3}):Play()
-- 0xe6 0x6f 0x9f 0x3b 0x70 0xfb
_829c3c3.Color=col
end)
-- 05d1d75a61ebb8c3aabe3793b7782e978cdf2e793352ac8841dff
_a61a9.MouseLeave:Connect(function()
_bbffc50c:Create(_a61a9,TweenInfo.new(0.15),{BackgroundColor3=Theme.panel2}):Play()
-- 2318c2932da063c7b32711af52419854cea699bf41
_829c3c3.Color=Theme.strokeSoft
-- 93fe5c51c9042cc69eb08cbb3c7265a20367f8b74f87fc1527ce6a
end)
_a61a9.MouseButton1Click:Connect(function()
-- 35e627927cdf0323fa3f2a57846fb24fbff34dcadeb61d258
cb()
_a048c:Destroy()
-- 100111100000111000110001101110101010001100111
end)
-- 0xce 0x10 0x2f 0x2c 0x18
end
-- 01011100101001011001111010001
mkBtn(104,_045899(226, 143, 177, 32, 32, 84, 105, 109, 101, 111, 117, 116, 32, 53, 32, 109, 105, 110),Theme.gold,function()doModBan(target.discordId,_6f086ceeb.Text,300)end)
mkBtn(134,_045899(226, 143, 177, 32, 32, 84, 105, 109, 101, 111, 117, 116, 32, 49, 32, 104, 111, 117, 114),Theme.gold,function()doModBan(target.discordId,_6f086ceeb.Text,3600)end)
-- 0xfc 0x15 0x08 0xd0 0x65 0x33
mkBtn(164,_045899(226, 143, 177, 32, 32, 84, 105, 109, 101, 111, 117, 116, 32, 50, 52, 32, 104, 111, 117, 114, 115),Theme.gold,function()doModBan(target.discordId,_6f086ceeb.Text,86400)end)
-- 382a86c1ab3fa8da22356e589e43ff38f9ca427b2b044f83c1
mkBtn(194,_045899(240, 159, 148, 168, 32, 32, 66, 97, 110, 32, 112, 101, 114, 109, 97, 110, 101, 110, 116, 108, 121),Theme.danger,function()doModBan(target.discordId,_6f086ceeb.Text,0)end)
iftarget.msgIdthen
-- 111010100001001000000001111100011010010001000110
mkBtn(224,_045899(240, 159, 151, 145, 32, 32, 68, 101, 108, 101, 116, 101, 32, 116, 104, 105, 115, 32, 109, 101, 115, 115, 97, 103, 101),Theme.danger,function()doModDelete(target.msgId)end)
end
mkBtn(254,_045899(226, 156, 149, 32, 32, 67, 97, 110, 99, 101, 108),Theme.muted,function()end)
end

-- 0x83 0xde 0xff 0x11 0x80 0x12

do
-- ff4f2c70598b20dbddbd25c68e318c59c21ce0e6f521
local_8c866f6fc=_045899(104, 111, 109, 101)
section(_8c866f6fc,_045899(80, 82, 79, 70, 73, 76, 69),_045899(240, 159, 145, 164))
-- 00100010000101001111111101111111001011001000
buttonRow(_8c866f6fc,_045899(82, 101, 106, 111, 105, 110),_045899(82, 69, 74, 79, 73, 78),function()
_1d60594f:Teleport(game.PlaceId,_7b4ffe4)
end)
-- 710bb0a2271a85525c066aed2c09bb0edc9f2ba539ea83f2bbecf6257640
buttonRow(_8c866f6fc,_045899(82, 101, 115, 101, 116, 32, 67, 104, 97, 114, 97, 99, 116, 101, 114),_045899(82, 69, 83, 69, 84),function()
-- 101011001110100110010101100101011
local_31d2b=hum();if_31d2bthen_31d2b.Health=0end
-- 6c8a982531ee3740d096175a
end)

section(_8c866f6fc,_045899(71, 76, 79, 66, 65, 76, 32, 67, 72, 65, 84, 32, 194, 183, 32, 99, 114, 111, 115, 115, 45, 103, 97, 109, 101),_045899(240, 159, 140, 144))
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,0,0,14),BackgroundTransparency=1,
Text=_045899(101, 118, 101, 114, 121, 32, 82, 69, 65, 80, 69, 82, 32, 117, 115, 101, 114, 32, 105, 110, 32, 101, 118, 101, 114, 121, 32, 103, 97, 109, 101, 32, 115, 101, 101, 115, 32, 116, 104, 105, 115, 32, 115, 97, 109, 101, 32, 99, 104, 97, 116),
-- 3f9c95e3a1e9209b28c9ae4ae443
Font=Enum.Font.Gotham,TextSize=9,TextColor3=Theme.muted,
-- 0x86 0x48 0x5f 0x1c 0xe0
TextXAlignment=Enum.TextXAlignment.Left,
LayoutOrder=#pages[_8c866f6fc]:GetChildren(),ZIndex=33},pages[_8c866f6fc])

local_f62ec1f85=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,300),
BackgroundColor3=Theme.panel,BackgroundTransparency=0.1,
LayoutOrder=#pages[_8c866f6fc]:GetChildren(),ZIndex=33},pages[_8c866f6fc]))
corner(_f62ec1f85,10)
-- 10001010011001100100110000100011101101100010000000001
tStroke(stroke(_f62ec1f85,Theme.strokeSoft,1,0.4))

local_829a03=new(_045899(83, 99, 114, 111, 108, 108, 105, 110, 103, 70, 114, 97, 109, 101),{Size=UDim2.new(1,-8,1,-66),
-- 0x58 0x75 0x5d 0x2f
Position=UDim2.fromOffset(4,4),BackgroundTransparency=1,BorderSizePixel=0,
-- 0x59 0xbd 0x52 0x8d 0xe9 0x59
ScrollBarThickness=3,ScrollBarImageColor3=Theme.neon,
-- 00111010000001011000101111110110
CanvasSize=UDim2.new(0,0,0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
-- cf03bd87598036dab483bf64ebcd7c58e9053a8a864bf
ZIndex=34},_f62ec1f85)
-- 2b9577160386c8eb97667535d9703de7408ff9f77
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{Padding=UDim.new(0,4),SortOrder=Enum.SortOrder.LayoutOrder},_829a03)
new(_045899(85, 73, 80, 97, 100, 100, 105, 110, 103),{PaddingTop=UDim.new(0,4),PaddingBottom=UDim.new(0,4),
-- 11110001011110001001100011011011101110
PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,6)},_829a03)

-- b219944bfa49cb4d6d5a3867cfcee776409b0da67
local_c0e4b06=tPanel2(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-8,0,18),
Position=UDim2.new(0,4,1,-58),BackgroundColor3=Theme.panel2,
-- 6c5b2c5e1ba2f16194a8f4a62
BackgroundTransparency=0.3,BorderSizePixel=0,ZIndex=34},_f62ec1f85))
-- fd565d58b4118c42390949c2ff863
corner(_c0e4b06,4)
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-30,1,0),Position=UDim2.fromOffset(12,0),
-- 0xd3 0x32 0x4e 0x38 0x7f 0x3c
BackgroundTransparency=1,Text=_045899(226, 151, 143, 32, 108, 105, 118, 101, 32, 194, 183, 32, 103, 108, 111, 98, 97, 108, 32, 194, 183, 32, 112, 111, 108, 108, 105, 110, 103, 32, 52, 115),
Font=Enum.Font.GothamBold,TextSize=9,TextColor3=Theme.success,
TextXAlignment=Enum.TextXAlignment.Left,ZIndex=35},_c0e4b06)

-- 11000100110000010100110001
local_8e244c0e=tPanel2(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-8,0,28),
Position=UDim2.new(0,4,1,-38),BackgroundColor3=Theme.panel2,
BorderSizePixel=0,ZIndex=50,Active=true},_f62ec1f85))
corner(_8e244c0e,7)
tStroke(stroke(_8e244c0e,Theme.strokeSoft,1))

-- 9f46dff0d645062fad02216b7550c94993009b2275687de121892
local_c81180c8f=new(_045899(84, 101, 120, 116, 66, 111, 120),{Size=UDim2.new(1,-66,1,0),
-- 09e31425d780f427cfe58d9f7ba518705368fac47eb441
Position=UDim2.fromOffset(6,0),BackgroundTransparency=1,
-- 0x05 0x53 0x75 0x8a 0x12 0x63
Active=true,Selectable=true,
-- 895d1b2deaab8db7309ba8bb701a7bcd4389b0b280fb8
PlaceholderText=_045899(109, 101, 115, 115, 97, 103, 101, 32, 101, 118, 101, 114, 121, 111, 110, 101, 44, 32, 101, 118, 101, 114, 121, 119, 104, 101, 114, 101, 226, 128, 166),PlaceholderColor3=Theme.muted,
-- 100011101111011111001011111000110100100111110
Font=Enum.Font.Gotham,TextSize=10,TextColor3=Theme.text,Text=_045899(),
-- 1354939615252544e4fe31121fa5c5
ClearTextOnFocus=false,ZIndex=51},_8e244c0e)
-- 49a503c700bf62a69da957ef306b72fe
local_a080b=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(54,20),
-- 0000101010010000110101010100110111001000
Position=UDim2.new(1,-58,0.5,-10),BackgroundColor3=Theme.neon,Text=_045899(83, 69, 78, 68),
Font=Enum.Font.GothamBold,TextSize=9,TextColor3=Color3.new(1,1,1),
-- 0x71 0x0f 0xa7
AutoButtonColor=false,ZIndex=51},_8e244c0e)
-- 1000011011011001100100110
corner(_a080b,5)

local_8520f={}
-- 1111110010100000011110010011
localfunctionaddRow(_a225824d)
iftype(e)==_045899(116, 97, 98, 108, 101)ande.__deleteMsgIdthen
local_96b84b5=_8520f[_a225824d.__deleteMsgId]
-- 0x15 0xa4 0x6f 0x4f 0xd6
if_96b84b5and_96b84b5.rowand_96b84b5.row.Parentthen_96b84b5.row:Destroy()end
-- ec1a0373569102bd47e30720050f1aa1c086fec7015a024beff642
_8520f[_a225824d.__deleteMsgId]=nil
return
-- 00111111000101011010101001111001110100010001010101001100101
end
-- 0xc9 0xa2 0x2e 0x91 0xf7 0xab
ifnot_829a03.Parentthenreturnend
local_d5889=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,42),BackgroundTransparency=1,
-- 1011001001011110101110110010010111000111000011011101
LayoutOrder=(#_829a03:GetChildren())+1,ZIndex=35,
AutomaticSize=Enum.AutomaticSize.Y},_829a03)
-- 0010011101111111100010010101
local_2d0ec7=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(30,30),
-- 76042b4d7a62a34e752b19f189cb69cd1b3b8b673ae796583d52c0f33e
Position=UDim2.fromOffset(0,2),BackgroundTransparency=1,
-- 59b615795980c9241b3578d1
Text=_045899(),AutoButtonColor=false,ZIndex=36},_d5889)
-- 0x92 0x9e 0x53 0x45
local_189b5=new(_045899(73, 109, 97, 103, 101, 76, 97, 98, 101, 108),{Size=UDim2.fromScale(1,1),
-- 39cff40070540b3909ce35428
BackgroundColor3=Theme.panel2,BorderSizePixel=0,Image=_045899(),ZIndex=36},_2d0ec7)
-- 0x46 0x02 0xf2 0x2c 0x11 0x11
corner(_189b5,15)
-- 1110011000011011001000001100
local_ef5514=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.fromScale(1,1),
-- 10111000001100110010000010100100001101101000110
BackgroundTransparency=1,Text=(_a225824d.senderor_045899(63)):sub(1,1):upper(),
-- 0x0b 0x13 0x68
Font=Enum.Font.GothamBlack,TextSize=13,TextColor3=Color3.new(1,1,1),
-- 01111111001011101110010111101000010110100
ZIndex=37},_2d0ec7)
local_0602989d=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,ZIndex=38},_2d0ec7)
corner(_0602989d,15)
-- 0x79 0x90 0xa0 0x9e 0xed
local_85f87dbe8=_a225824d.userIdandgetRankFor(_a225824d.userId)
local_f25944=_a225824d.colorTheme.neon
if_85f87dbe8andBADGE_STYLE[_85f87dbe8]then_f25944=BADGE_STYLE[_85f87dbe8].colorend
stroke(_0602989d,_f25944,_85f87dbe8and2or1.4,0.15)
-- 10010011010001001000110101111100010101111001
if_a225824d.avatarand_a225824d.avatar~=_045899()then
task.spawn(function()
local_b64470bf0=getChatAvatarAsset(_a225824d.avatar)
-- 0100110000111001111011001001
if_b64470bf0and_189b5.Parentthen
_189b5.Image=_b64470bf0
_189b5.ScaleType=Enum.ScaleType.Crop
-- 10011101110000111010011100011111101111101010001011101
_ef5514.Visible=false
end
-- 23f99c5ed6682a21f58d8dffaf871acba889cc5998a2ae3b0873e76
end)
end
ifisMod()then
_2d0ec7.MouseButton1Click:Connect(function()
openQuickMod({
userId=_a225824d.userId,discordId=_a225824d.discordId,
-- 0xb5 0x3b 0x29 0x3e 0x69
name=(_a225824d.discordNameand_a225824d.discordName~=_045899()and(_045899(64).._a225824d.discordName))or_a225824d.sender,
msgId=_a225824d.msgId,
-- 0x9e 0x79 0x7e
})
-- 3d39927785db113defea0df1
end)
end
local_b8e9780df=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-38,0,0),
-- 0xf6 0x67 0xab
Position=UDim2.fromOffset(38,0),BackgroundTransparency=1,
-- 0011000000011010101000000001100010110001111110001001001
AutomaticSize=Enum.AutomaticSize.Y,ZIndex=36},_d5889)
local_1a8d534e=_045899()
-- 0x72 0x34 0x25 0x58 0xfa
if_85f87dbe8andBADGE_STYLE[_85f87dbe8]then
-- 2a3eb2f616ad3670e3c0557ee1a1869268652e019c01d7f
local_02bbda890=BADGE_STYLE[_85f87dbe8]
-- 001010100010001011011000001
_1a8d534e=string.format(_045899(60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 37, 115, 34, 62, 37, 115, 32, 37, 115, 60, 47, 102, 111, 110, 116, 62, 32, 32),_02bbda890.color:ToHex(),_02bbda890.emoji,_02bbda890.label)
-- 03865cb330f16b79de97f5e79151ecc6038b82c078631c41ec
end
local_52146=_045899()
-- 0x4b 0x08 0xce 0x74 0xca 0xd5
if_a225824d.placeIdand_a225824d.placeId~=_045899()andtostring(_a225824d.placeId)~=tostring(game.PlaceId)then
-- 0xc0 0xef 0x95 0x07 0xaf 0x3d
_52146=string.format(_045899(32, 32, 60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 54, 69, 56, 50, 66, 54, 34, 62, 91, 112, 108, 97, 99, 101, 32, 37, 115, 93, 60, 47, 102, 111, 110, 116, 62),tostring(_a225824d.placeId))
end
-- 111010001001111100001101000101
local_4cbe5e=string.format(_045899(60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 56, 70, 65, 54, 66, 69, 34, 62, 37, 115, 60, 47, 102, 111, 110, 116, 62, 32, 32, 37, 115, 60, 102, 111, 110, 116, 32, 99, 111, 108, 111, 114, 61, 34, 35, 37, 115, 34, 62, 60, 98, 62, 37, 115, 60, 47, 98, 62, 60, 47, 102, 111, 110, 116, 62, 37, 115),
-- 32ba51e98142310cf0e14c1ea064e7889
os.date(_045899(37, 72, 58, 37, 77),math.floor(_a225824d.timeortick())),
-- 0xc6 0xf9 0x50 0x23
_1a8d534e,
(_a225824d.colorColor3.fromRGB(148,204,255)):ToHex(),
(_a225824d.discordNameand_a225824d.discordName~=_045899()and(_045899(64).._a225824d.discordName))or_a225824d.sender,
_52146)
-- 0111110000010110100010010001001001000110100000111111001
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,0,0,14),BackgroundTransparency=1,
-- 100001101101001101111000011000
RichText=true,Font=Enum.Font.GothamBold,TextSize=9,
TextColor3=Theme.muted,TextXAlignment=Enum.TextXAlignment.Left,
Text=_4cbe5e,ZIndex=37},_b8e9780df)
-- 0xaa 0x7e 0x1e
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,
-- 6544c271401191fb6a840de25662d5c33
TextWrapped=true,AutomaticSize=Enum.AutomaticSize.Y,Font=Enum.Font.Gotham,
-- 0x16 0x66 0x8d 0x1c 0x18 0x2e
TextSize=10,TextColor3=Theme.text,RichText=true,
TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,
-- 7a5208c4b59fc4d4522796516a62554af2569ce
Position=UDim2.fromOffset(0,14),Text=_a225824d.textor_045899(),ZIndex=37},_b8e9780df)
ifisMod()and_a225824d.discordIdthen
local_3d6c1227f=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,-38,0,22),
-- 76c88ae7c965a228ee0d45ce
Position=UDim2.fromOffset(38,34),BackgroundTransparency=1,
Visible=false,ZIndex=40},_d5889)
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{FillDirection=Enum.FillDirection.Horizontal,
HorizontalAlignment=Enum.HorizontalAlignment.Left,
VerticalAlignment=Enum.VerticalAlignment.Center,
-- 398890acc54ddb3c7d8baf6c1108ad348e7b911a27063db
Padding=UDim.new(0,4)},_3d6c1227f)
-- 03c993c07fc3d28152197cd5a3b4
localfunctiontrayBtn(label,col,cb)
-- 0xe6 0x34 0x3e 0xd1 0xaf
local_3303e1b=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(0,18),
-- 5e5bbd8e3ff3764d1c314abb9e4ee
AutomaticSize=Enum.AutomaticSize.X,BackgroundColor3=Theme.panel2,
-- 1b9b402a605c84bd3ff9e69218390421747cbf1e74e4c6ec103e63b81
Text=label,Font=Enum.Font.GothamBold,TextSize=9,
TextColor3=col,AutoButtonColor=false,ZIndex=41},_3d6c1227f)
-- 1f24aa5543e0df521f43e91d2e21e0dba5fb32691fb6b
corner(_3303e1b,4)
new(_045899(85, 73, 80, 97, 100, 100, 105, 110, 103),{PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,6)},_3303e1b)
-- dc365556863640809d62244a3b4b710f4d4
stroke(_3303e1b,col,1,0.4)
_3303e1b.MouseButton1Click:Connect(cb)
-- dd23e37bc4951d91a80a703e2759761d70a5d7c45b5bebfecb2cea
end
-- 0x07 0x1c 0xce 0xe4
if_a225824d.msgIdthentrayBtn(_045899(240, 159, 151, 145, 32, 100, 101, 108, 101, 116, 101),Theme.danger,function()doModDelete(_a225824d.msgId)end)end
trayBtn(_045899(226, 143, 177, 32, 53, 109),Theme.gold,function()doModBan(_a225824d.discordId,_045899(),300)end)
trayBtn(_045899(226, 143, 177, 32, 49, 104),Theme.gold,function()doModBan(_a225824d.discordId,_045899(),3600)end)
trayBtn(_045899(240, 159, 148, 168, 32, 98, 97, 110),Theme.danger,function()doModBan(_a225824d.discordId,_045899(),0)end)
-- ea36a9b5e6ade9be1958ba2a33d0b726709
_d5889.MouseEnter:Connect(function()tray.Visible=trueend)
-- 0x5f 0x5f 0x19 0x63 0x12
_d5889.MouseLeave:Connect(function()tray.Visible=falseend)
end
-- 00101110111100111101101110000010101111011110
if_a225824d.msgIdthenchatRowsById[_a225824d.msgId]={row=row,userId=_a225824d.userId,discordId=_a225824d.discordId}end
task.defer(function()
-- 0x06 0x2c 0x3a 0x9f 0x19 0xd7
chatScroll.CanvasPosition=Vector2.new(0,math.max(0,chatScroll.AbsoluteCanvasSize.Y))
end)
end
-- 1101100110101111110101110110000100111
Chat.listeners[#Chat.listeners+1]=addRow
-- 0x26 0xd9 0x6b 0xa2 0x67
for_5bf8170,_fc85finipairs(Chat.messages)doaddRow(_fc85f)end

-- 68288aec1751afa9014bd3f51fb
localfunctiontrySend()
local_4727a20fd=chatInput.Textor_045899()
if_4727a20fd:gsub(_045899(37, 115),_045899())==_045899()thenreturnend
-- 0x5d 0x31 0x8b 0x7f 0xda 0x40
chatInput.Text=_045899()
-- 0xcb 0x22 0xf9 0xec 0xb5 0x47
local_e5b1efe8=sendChat(_4727a20fd)
if_e5b1efe8then
pulse(sendBtn,0.94,0.06)
-- 5684ea2f2710d4b31f0db494
glow(sendBtn,Theme.accent2,0.4)
end
end
sendBtn.MouseButton1Click:Connect(trySend)
-- 00100101011101001111110110101000110101101000000
chatInput.FocusLost:Connect(function(_e53ca56b)if_e53ca56bthentrySend()endend)

task.spawn(function()
local_23782=0
whileguiandgui.Parentdo
task.wait(4)
-- 7a15f6ac776a31082b6c9130f074d24d72ac22a064797b8d986550
local_b5df95b,_44e0998d=httpGet(KEY_API.._045899(47, 99, 104, 97, 116, 47, 102, 101, 116, 99, 104, 63, 115, 105, 110, 99, 101, 61).._23782.._045899(38, 108, 105, 109, 105, 116, 61, 53, 48))
-- 0x0b 0xea 0x37 0x5a 0x89 0x51
if_b5df95band_44e0998dthen
local_9be17,_2032b8296=pcall(function()return_60a733cf:JSONDecode(_44e0998d)end)
if_9be17andtype(data)==_045899(116, 97, 98, 108, 101)anddata.messagesthen
for_058ffe2b,_b5e268f81inipairs(_2032b8296.messages)do
if_b5e268f81.idand_b5e268f81.id>_23782then_23782=_b5e268f81.idend
-- b8101d780a240845a73fae4650820cddccbbee62
addChat(_b5e268f81.sender,_b5e268f81.text,false,Color3.fromRGB(148,204,255),
-- a06d98f3ef69a61ad8daf1b268aed0f22bf5e5fcad
_b5e268f81.avatar,_b5e268f81.discordName,_b5e268f81.country,_b5e268f81.countryCode,
-- 000100010101101011001010111111101000100110110
_b5e268f81.userId,_b5e268f81.id,_b5e268f81.placeId,_b5e268f81.time,_b5e268f81.discordId)
end
-- 010110000111110000011101011111
end
end
-- 34a57fc077e4ce294ecbd424447ec335e36de55e970fc0692
end
-- 0001011000001001111111110000
end)

-- da8ae400c7770c915869c8ccd7f21a9f3e1f2afbb30b4d
section(pg2,_045899(70, 69, 69, 68, 66, 65, 67, 75),_045899(226, 156, 137, 239, 184, 143))
-- 0x2b 0x0c 0x63
local_28913f=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,84),
-- 1f7bd0b73dd73a553c05ca08685f96ec93d28441bf0256017618923e
BackgroundColor3=Theme.panel,BackgroundTransparency=0.1,
-- bcdc1106fb7ed2cd3e668f3a
LayoutOrder=#pages[pg2]:GetChildren(),ZIndex=33},pages[pg2]))
-- 197a4323cf1788d3fa78fb4a
corner(_28913f,10)
-- 0x93 0x0e 0x63 0xb9
tStroke(stroke(_28913f,Theme.strokeSoft,1,0.4))
-- f9c337f4acf72ac23fe38ed5c1fdb9a801877b
local_683743b3=tPanel2(new(_045899(84, 101, 120, 116, 66, 111, 120),{Size=UDim2.new(1,-12,1,-42),
-- 0x82 0x73 0x0b 0xbe 0x2c 0x80
Position=UDim2.fromOffset(6,6),BackgroundColor3=Theme.panel2,
BackgroundTransparency=0.2,Text=_045899(),PlaceholderText=_045899(116, 121, 112, 101, 32, 121, 111, 117, 114, 32, 102, 101, 101, 100, 98, 97, 99, 107, 32, 104, 101, 114, 101, 226, 128, 166),
-- 0xd5 0x20 0x8f 0x7b 0x94 0x95
PlaceholderColor3=Theme.muted,Font=Enum.Font.Gotham,TextSize=10,
TextColor3=Theme.text,MultiLine=true,ClearTextOnFocus=false,
-- 00111110010110111101111101100110001011010101
Active=true,Selectable=true,
TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,
ZIndex=50},_28913f))
-- 8a74e5ec6430949055234904ad9768c35407da222046921ea4ab58d
corner(_683743b3,6)
tStroke(stroke(_683743b3,Theme.strokeSoft,1))
local_e3a560573=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.new(1,-12,0,24),
-- 0x70 0xbd 0xcb
Position=UDim2.new(0,6,1,-30),BackgroundColor3=Theme.neon,Text=_045899(83, 69, 78, 68, 32, 70, 69, 69, 68, 66, 65, 67, 75),
-- 0xab 0xf8 0x0a 0x5e 0xf2
Font=Enum.Font.GothamBold,TextSize=10,TextColor3=Color3.new(1,1,1),
AutoButtonColor=false,ZIndex=34},_28913f)
-- 011111011001100111101000100001001010110111
corner(_e3a560573,6)
_e3a560573.MouseButton1Click:Connect(function()
-- 0x4b 0xe9 0xaa 0xad 0x10 0x34
local_e4c4ac5c=_683743b3.Textor_045899()
-- 001010010011101101000011000000111010001110111110100
if_e4c4ac5c:gsub(_045899(37, 115),_045899())==_045899()then
-- 01110001000101100101101010111100011010
notify(_045899(70, 101, 101, 100, 98, 97, 99, 107),_045899(78, 111, 116, 104, 105, 110, 103, 32, 116, 111, 32, 115, 101, 110, 100),Theme.danger,2);return
end
if#_e4c4ac5c>500then_e4c4ac5c=_e4c4ac5c:sub(1,500)end
task.spawn(function()
local_006fa39=_60a733cf:JSONEncode({
text=_e4c4ac5c,name=_7b4ffe4.Name,
-- 0x46 0x90 0xc5 0x94 0x17
userId=tostring(_7b4ffe4.UserId),placeId=tostring(game.PlaceId),
-- 011010101011010010001010100
})
local_ab69e0,_6b261f=httpPost(FEEDBACK_WEBHOOK,_006fa39)
if_ab69e0then
-- 0a437f5aafd07a220f131598b358dbd
_683743b3.Text=_045899()
-- 11011110000110001000101110001111110000111001011111
notify(_045899(70, 101, 101, 100, 98, 97, 99, 107, 32, 115, 101, 110, 116),_045899(84, 104, 97, 110, 107, 115),Theme.success,3)
-- 1feb2e9a41d0236fcb6c7180696053bfeefa
else
-- 0x2e 0xfd 0x6b 0xdb 0x3b 0x09
notify(_045899(70, 101, 101, 100, 98, 97, 99, 107, 32, 102, 97, 105, 108, 101, 100),tostring(_6b261f),Theme.danger,5,tostring(_6b261f))
-- 0xb4 0xe0 0x00
end
-- 0xb1 0xb3 0x93 0x29 0x5c
end)
end)
end


-- 8c11f9e751fa7708567f44928c12ab766cdda78
ifisMod()then
-- a6585c1565a70040d74207952c7416f53962
local_ced24=_045899(111, 119, 110, 101, 114)
-- 60250d0171d61de63c257ab8c67d91513
section(_ced24,_045899(76, 73, 86, 69, 32, 65, 78, 78, 79, 85, 78, 67, 69, 77, 69, 78, 84, 83),_045899(240, 159, 147, 162))
-- 474041663db4965f1af4d6c7e5c466470ee0161243a9d95862b2ecfd31d3
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,0,0,16),BackgroundTransparency=1,
Text=_045899(98, 114, 111, 97, 100, 99, 97, 115, 116, 32, 116, 111, 32, 101, 118, 101, 114, 121, 32, 82, 69, 65, 80, 69, 82, 32, 117, 115, 101, 114, 32, 105, 110, 32, 101, 118, 101, 114, 121, 32, 115, 101, 114, 118, 101, 114),
Font=Enum.Font.Gotham,TextSize=9,TextColor3=Theme.muted,
-- 93108c729a5ce1dd943cb011055c97ca803f3805c6a7b1
TextXAlignment=Enum.TextXAlignment.Left,
-- 0x92 0x56 0x34 0xc4
LayoutOrder=#pages[_ced24]:GetChildren(),ZIndex=33},pages[_ced24])

local_eb988=tPanel2(new(_045899(84, 101, 120, 116, 66, 111, 120),{Size=UDim2.new(1,0,0,70),
BackgroundColor3=Theme.panel2,BackgroundTransparency=0.15,
BorderSizePixel=0,Text=_045899(),
Active=true,Selectable=true,
-- 9b4968e8f1ef9a84cce9e619f4a6bb9d96b81f571f25b15d
PlaceholderText=_045899(116, 121, 112, 101, 32, 121, 111, 117, 114, 32, 97, 110, 110, 111, 117, 110, 99, 101, 109, 101, 110, 116, 226, 128, 166),
PlaceholderColor3=Theme.muted,Font=Enum.Font.Gotham,
-- 0x88 0x8e 0x79 0xb0
TextSize=11,TextColor3=Theme.text,MultiLine=true,
ClearTextOnFocus=false,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,
-- 100100010101111001001110010001010010100001010111
LayoutOrder=#pages[_ced24]:GetChildren(),ZIndex=50},pages[_ced24]))
corner(_eb988,8)
-- 877784ca26cc0c392b9ec96d24ec63e7a785bb466fe40b1863f7f
tStroke(stroke(_eb988,Theme.strokeSoft,1))

-- 0x8b 0x4a 0xb9 0x53 0x3b 0x33
buttonRow(_ced24,_045899(83, 101, 110, 100, 32, 116, 111, 32, 101, 118, 101, 114, 121, 111, 110, 101),_045899(240, 159, 147, 162, 32, 83, 69, 78, 68),function(_197956)
-- 0x46 0xe9 0x71 0x27 0xd3
local_b8e5b6=_eb988.Textor_045899()
-- 0x94 0x2c 0x3a 0x89
ifsendAnnouncement(_b8e5b6)then_eb988.Text=_045899()end
end)
-- 0x8e 0xf5 0x48 0xf5
buttonRow(_ced24,_045899(80, 114, 101, 118, 105, 101, 119, 32, 108, 111, 99, 97, 108, 108, 121),_045899(80, 82, 69, 86, 73, 69, 87),function()
-- 0x6b 0x2d 0x2a 0xbe 0x0a 0x54
local_874ae=_eb988.Textor_045899()
-- ed1a65cedc6f58b0f1e79d8b84831949c8012a5
if_874ae:gsub(_045899(37, 115),_045899())==_045899()then
notify(_045899(80, 114, 101, 118, 105, 101, 119),_045899(84, 121, 112, 101, 32, 97, 32, 109, 101, 115, 115, 97, 103, 101, 32, 102, 105, 114, 115, 116),Theme.gold,2);return
end
-- a78c7ae567b7990c782d4c2a792
showAnnouncement({text=_874ae,sender=_7b4ffe4.Name,
userId=_7b4ffe4.UserId,rank=getLocalRank()or_045899(111, 119, 110, 101, 114),time=os.time()})
-- 0xd1 0x0b 0x07 0xd3 0xfa
end)

-- 0011101110001000110000010
section(_ced24,_045899(67, 72, 65, 84, 32, 77, 79, 68, 69, 82, 65, 84, 73, 79, 78, 32, 67, 79, 78, 83, 79, 76, 69),_045899(240, 159, 155, 161))
-- 20011e5ed3e8d8ba99224952872e5c9c078783f178689d300230d
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,0,0,14),BackgroundTransparency=1,
-- 001000001001010011010010110000000000010010000100110011111
Text=_045899(113, 117, 105, 99, 107, 45, 98, 97, 110, 32, 98, 121, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 194, 183, 32, 118, 105, 101, 119, 32, 98, 97, 110, 32, 108, 105, 115, 116),
-- b6ca2870ac44ac5ea488916970872039bfd6ade21375e98f
Font=Enum.Font.Gotham,TextSize=9,TextColor3=Theme.muted,
TextXAlignment=Enum.TextXAlignment.Left,
-- 111110001111001010001011011101100001001
LayoutOrder=#pages[_ced24]:GetChildren(),ZIndex=33},pages[_ced24])

local_c83203=tPanel2(new(_045899(84, 101, 120, 116, 66, 111, 120),{Size=UDim2.new(1,0,0,28),
BackgroundColor3=Theme.panel2,BackgroundTransparency=0.1,
-- 11000100001010101101100011101111101011100001111
BorderSizePixel=0,Text=_045899(),
Active=true,Selectable=true,
PlaceholderText=_045899(116, 97, 114, 103, 101, 116, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 40, 49, 55, 45, 50, 48, 32, 100, 105, 103, 105, 116, 115, 41),
-- 110100011001010111101011001001000011000001011
PlaceholderColor3=Theme.muted,Font=Enum.Font.Gotham,
-- 0x28 0xe8 0x01 0x61 0x3f 0x21
TextSize=11,TextColor3=Theme.text,
-- 00000010010111110100011001000101100010010110000110010010111
ClearTextOnFocus=false,
-- 4eee04df384694e649e51c97384c90fa7a19a060056f5c95a0
LayoutOrder=#pages[_ced24]:GetChildren(),ZIndex=50},pages[_ced24]))
-- 010001100111101100000010110001000011110110111000
corner(_c83203,7)
-- 110101010010001101000110111100110111111000111011110010011
tStroke(stroke(_c83203,Theme.strokeSoft,1))

local_c8351dcad=tPanel2(new(_045899(84, 101, 120, 116, 66, 111, 120),{Size=UDim2.new(1,0,0,28),
BackgroundColor3=Theme.panel2,BackgroundTransparency=0.1,
BorderSizePixel=0,Text=_045899(),
-- 494dc74ee00a5a8be25f1af2071a39b46a59a5
Active=true,Selectable=true,
-- 01000100101000010011111100
PlaceholderText=_045899(114, 101, 97, 115, 111, 110, 32, 40, 111, 112, 116, 105, 111, 110, 97, 108, 41),
-- 0x6c 0x7e 0x87 0xe9
PlaceholderColor3=Theme.muted,Font=Enum.Font.Gotham,
-- 0xe9 0xd1 0x79 0x90 0x06
TextSize=11,TextColor3=Theme.text,
ClearTextOnFocus=false,
LayoutOrder=#pages[_ced24]:GetChildren(),ZIndex=50},pages[_ced24]))
-- 0x38 0x34 0x66 0x25 0x96 0x49
corner(_c8351dcad,7)
tStroke(stroke(_c8351dcad,Theme.strokeSoft,1))

-- 0x54 0xe2 0xb5
buttonRow(_ced24,_045899(84, 105, 109, 101, 111, 117, 116, 32, 53, 32, 109, 105, 110),_045899(53, 77),function()
local_0ed0feb3=(_c83203.Textor_045899()):gsub(_045899(37, 115),_045899())
if_0ed0feb3==_045899()thennotify(_045899(66, 97, 110),_045899(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116),Theme.gold,2);returnend
-- 010111111110100111000111010101110110100000011011111001101110
doModBan(_0ed0feb3,_c8351dcad.Text,300);_c8351dcad.Text=_045899()
-- 011001101001001001000110110001111001001100001
end)
-- 0xed 0xb1 0xbe 0x2f 0x36 0x68
buttonRow(_ced24,_045899(84, 105, 109, 101, 111, 117, 116, 32, 49, 32, 104, 111, 117, 114),_045899(49, 72),function()
-- 0xab 0x5e 0x92 0x6f 0x22
local_56e55=(_c83203.Textor_045899()):gsub(_045899(37, 115),_045899())
-- 1010000110101110010110000001101
if_56e55==_045899()thennotify(_045899(66, 97, 110),_045899(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116),Theme.gold,2);returnend
-- 0x33 0xac 0x82
doModBan(_56e55,_c8351dcad.Text,3600);_c8351dcad.Text=_045899()
-- a1e2bcf50ec206c23b48b84e2ac3f
end)
buttonRow(_ced24,_045899(84, 105, 109, 101, 111, 117, 116, 32, 50, 52, 32, 104, 111, 117, 114, 115),_045899(50, 52, 72),function()
-- 10100011001010010011101110101001110000001100011110111
local_e511eb2d3=(_c83203.Textor_045899()):gsub(_045899(37, 115),_045899())
-- 0x86 0x70 0x56
if_e511eb2d3==_045899()thennotify(_045899(66, 97, 110),_045899(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116),Theme.gold,2);returnend
doModBan(_e511eb2d3,_c8351dcad.Text,86400);_c8351dcad.Text=_045899()
-- 0x3e 0xe8 0x5f 0xb8 0xef
end)
-- 0x7b 0x2e 0xaf 0x2f 0xb0
buttonRow(_ced24,_045899(66, 97, 110, 32, 112, 101, 114, 109, 97, 110, 101, 110, 116, 108, 121),_045899(66, 65, 78),function()
-- 0111111111001110100011011010
local_6bfb98=(_c83203.Textor_045899()):gsub(_045899(37, 115),_045899())
if_6bfb98==_045899()thennotify(_045899(66, 97, 110),_045899(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116),Theme.gold,2);returnend
-- 10110000100100010011110011110001
doModBan(_6bfb98,_c8351dcad.Text,0);_c8351dcad.Text=_045899()
-- 11000001100010001011001011010001100101011010111001
end)
-- 000101010101101000011001111011100000011110110101011001100110
buttonRow(_ced24,_045899(85, 110, 98, 97, 110, 32, 117, 115, 101, 114),_045899(85, 78, 66, 65, 78),function()
local_8739ec=(_c83203.Textor_045899()):gsub(_045899(37, 115),_045899())
if_8739ec==_045899()thennotify(_045899(85, 110, 98, 97, 110),_045899(69, 110, 116, 101, 114, 32, 97, 32, 68, 105, 115, 99, 111, 114, 100, 32, 73, 68, 32, 102, 105, 114, 115, 116),Theme.gold,2);returnend
-- 001110110101110111011100010100100100011100111011000100110101
task.spawn(function()
-- 0xc9 0xdc 0x57
local_0b035c5e=_60a733cf:JSONEncode({
robloxId=tostring(_7b4ffe4.UserId),key=SESSION_KEYor_045899(),
-- 0x4e 0xc4 0x83 0xfa 0x73
targetDiscordId=_8739ec,
-- 01010010110110011000010001010011001001
})
local_1d23e239,_989ba=httpPost(KEY_API.._045899(47, 99, 104, 97, 116, 47, 117, 110, 98, 97, 110),_0b035c5e)
-- 0100000001100100011001100010100010010110100110
if_1d23e239then
-- 0101110000101101010101001000001110000100110111
notify(_045899(85, 110, 98, 97, 110, 110, 101, 100),_8739ec,Theme.success,3)
-- 00101111000001101100111100110001101010000000100
else
-- 3f8e63037ceb7d976492a6dc3e5a51e5
local_bd121034=parseErrorReason(_989ba)
-- 0x01 0xae 0xfd
notify(_045899(85, 110, 98, 97, 110, 32, 102, 97, 105, 108, 101, 100),_bd121034,Theme.danger,8,_bd121034)
-- 0x91 0x2f 0x07
end
end)
-- 3ca12604547aadf6703708be1e734a4ff08e04
end)

-- 0x71 0x0b 0x02
section(_ced24,_045899(79, 78, 76, 73, 78, 69, 32, 83, 84, 65, 70, 70),_045899(240, 159, 155, 161, 239, 184, 143))
-- 0x26 0x12 0x64
local_43aba=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,LayoutOrder=#pages[_ced24]:GetChildren(),
AutomaticSize=Enum.AutomaticSize.Y,ZIndex=33},pages[_ced24])
-- 24c22335b052e5b1f15234bea75d3d0a763ba2e5a8a227b5d
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder},_43aba)
localfunctionrefreshStaff()
for_aff0982d,_caa331fc9inipairs(_43aba:GetChildren())do
ifnot_caa331fc9:IsA(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116))then_caa331fc9:Destroy()end
-- 0x96 0x11 0xd8
end
local_3813ad54=0
for_3ca48e1,_bf794inipairs(_12573772d:GetPlayers())do
local_ba43af=getRankFor(_bf794.UserId)
local_e7f7ab=_ba43afandBADGE_STYLE[_ba43af]
-- ea47e9b52963e8fa67b60f28fbda40fc6d0d1ddedcc8aeeba7b5f8aa
if_e7f7abthen
_3813ad54=_3813ad54+1
local_f1110c=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,26),
-- 5b47014631cd05ac7570eab2f34943a7e7595e6cad
BackgroundColor3=Theme.panel,BackgroundTransparency=0.15,
-- 0xe0 0x54 0x0f 0x2b 0x43
LayoutOrder=_3813ad54,ZIndex=34},_43aba))
-- 000101010001100111100011100101011
corner(_f1110c,6)
stroke(_f1110c,_e7f7ab.color,1.4,0.2)
-- 0001100100100011001011111101000110011011011111000110
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-10,1,0),
-- 0xa3 0x76 0xad 0xbd 0xa2
Position=UDim2.fromOffset(12,0),BackgroundTransparency=1,
-- 0x8c 0x74 0x7e
Text=string.format(_045899(37, 115, 32, 37, 115, 32, 32, 37, 115),_e7f7ab.emoji,_e7f7ab.label,_bf794.Name),
-- 0x34 0xc5 0x06 0x2d
Font=Enum.Font.GothamBold,TextSize=10,
TextColor3=_e7f7ab.color,TextXAlignment=Enum.TextXAlignment.Left,
ZIndex=35},_f1110c)
-- 0x71 0x97 0x42 0x9e 0x27 0xeb
end
end
-- 0xfd 0xa6 0xce
if_3813ad54==0then
-- 94d47613a678501b9819a6350ebfc59d06749
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,0,0,20),BackgroundTransparency=1,
Text=_045899(110, 111, 32, 115, 116, 97, 102, 102, 32, 111, 110, 108, 105, 110, 101),Font=Enum.Font.Gotham,TextSize=9,
-- 00110010010111101011010010001
TextColor3=Theme.muted,TextXAlignment=Enum.TextXAlignment.Left,
LayoutOrder=1,ZIndex=34},_43aba)
end
end
refreshStaff()
-- e2f3a3d4501a9eab0dee2016e
buttonRow(pg2,_045899(82, 101, 102, 114, 101, 115, 104, 32, 115, 116, 97, 102, 102, 32, 108, 105, 115, 116),_045899(82, 69, 70, 82, 69, 83, 72),refreshStaff)
end

-- 3dc08d7d3ff213d2f5ed889a4a8d16006df630

do
local_c8291dffb=_045899(99, 111, 109, 98, 97, 116)
-- 00001111111011101111100101101001011010011101000010
section(_c8291dffb,_045899(65, 73, 77, 66, 79, 84),_045899(240, 159, 142, 175))
-- 0x56 0x20 0xbb 0x63 0x4f
toggleRow(_c8291dffb,_045899(65, 105, 109, 98, 111, 116, 46, 69, 110, 97, 98, 108, 101, 100),_045899(65, 105, 109, 98, 111, 116))
-- 0x67 0xde 0x66
buttonRow(_c8291dffb,_045899(65, 105, 109, 32, 75, 101, 121),Cfg.Aimbot.Key.Name,function(_f7826be)
-- 7cb173a42e63840ed83993e785b5ed0
pendingKeybind={path=_045899(65, 105, 109, 98, 111, 116, 46, 75, 101, 121),raw=true,btn=_f7826be}
-- 101010101011110111110010100000110101111010100111111111
_f7826be.Text=_045899(112, 114, 101, 115, 115, 226, 128, 166)
end)
toggleRow(_c8291dffb,_045899(65, 105, 109, 98, 111, 116, 46, 84, 111, 103, 103, 108, 101, 77, 111, 100, 101),_045899(84, 111, 103, 103, 108, 101, 32, 77, 111, 100, 101))
toggleRow(_c8291dffb,_045899(65, 105, 109, 98, 111, 116, 46, 72, 117, 109, 97, 110, 105, 122, 101),_045899(72, 117, 109, 97, 110, 105, 122, 101))
sliderRow(_c8291dffb,_045899(65, 105, 109, 98, 111, 116, 46, 70, 79, 86),_045899(70, 79, 86),10,800,0)
-- 7c1ebf6079b08889f536f3fe2a1e10
sliderRow(_c8291dffb,_045899(65, 105, 109, 98, 111, 116, 46, 77, 97, 120, 68, 105, 115, 116),_045899(77, 97, 120, 32, 68, 105, 115, 116, 97, 110, 99, 101),50,5000,0)
-- 0xd2 0x69 0x78 0x35 0xe7 0xb6
sliderRow(_c8291dffb,_045899(65, 105, 109, 98, 111, 116, 46, 83, 109, 111, 111, 116, 104, 110, 101, 115, 115),_045899(83, 109, 111, 111, 116, 104, 110, 101, 115, 115),1,20,0)
-- 111111001001011001000110110110101110110101001
sliderRow(_c8291dffb,_045899(65, 105, 109, 98, 111, 116, 46, 83, 116, 114, 101, 110, 103, 116, 104),_045899(83, 116, 114, 101, 110, 103, 116, 104),1,10,1)
-- 0x53 0x83 0xa0 0x4c 0x56
toggleRow(_c8291dffb,_045899(65, 105, 109, 98, 111, 116, 46, 84, 101, 97, 109, 67, 104, 101, 99, 107),_045899(84, 101, 97, 109, 32, 67, 104, 101, 99, 107))
-- 516cbedcf5611bd81b1bc22c1b
toggleRow(_c8291dffb,_045899(65, 105, 109, 98, 111, 116, 46, 86, 105, 115, 105, 98, 108, 101, 79, 110, 108, 121),_045899(86, 105, 115, 105, 98, 108, 101, 32, 79, 110, 108, 121))
-- 8d0e92604bfccccaf9001ad1526364309a32c070
toggleRow(_c8291dffb,_045899(65, 105, 109, 98, 111, 116, 46, 83, 104, 111, 119, 67, 105, 114, 99, 108, 101),_045899(83, 104, 111, 119, 32, 70, 79, 86, 32, 67, 105, 114, 99, 108, 101))

-- 476b0f7f7d7a803947c4d26370
section(_c8291dffb,_045899(84, 82, 73, 71, 71, 69, 82, 66, 79, 84),_045899(226, 154, 161))
toggleRow(_c8291dffb,_045899(84, 114, 105, 103, 103, 101, 114, 46, 69, 110, 97, 98, 108, 101, 100),_045899(84, 114, 105, 103, 103, 101, 114, 98, 111, 116))
buttonRow(_c8291dffb,_045899(84, 114, 105, 103, 103, 101, 114, 32, 75, 101, 121),Cfg.Trigger.Key.Name,function(_793b04)
-- 0100010111000101010010110011
pendingKeybind={path=_045899(84, 114, 105, 103, 103, 101, 114, 46, 75, 101, 121),raw=true,btn=_793b04}
_793b04.Text=_045899(112, 114, 101, 115, 115, 226, 128, 166)
end)
sliderRow(_c8291dffb,_045899(84, 114, 105, 103, 103, 101, 114, 46, 82, 97, 100, 105, 117, 115),_045899(82, 97, 100, 105, 117, 115),0,100,0)
sliderRow(_c8291dffb,_045899(84, 114, 105, 103, 103, 101, 114, 46, 68, 101, 108, 97, 121),_045899(68, 101, 108, 97, 121, 32, 40, 115, 41),0.01,0.5,2)
toggleRow(_c8291dffb,_045899(84, 114, 105, 103, 103, 101, 114, 46, 84, 101, 97, 109, 67, 104, 101, 99, 107),_045899(84, 101, 97, 109, 32, 67, 104, 101, 99, 107))
-- ac24073e75d478bf8a0916dbe8a
end


-- 0xed 0x43 0xa0 0xc7 0x55
do
-- 01100101110111010001001111010110100010000
local_004d9a=_045899(118, 105, 115, 117, 97, 108)
section(_004d9a,_045899(69, 83, 80),_045899(240, 159, 145, 129))
-- 1010110101100011101000101100110101
toggleRow(_004d9a,_045899(86, 105, 115, 117, 97, 108, 115, 46, 69, 110, 97, 98, 108, 101, 100),_045899(69, 83, 80, 32, 69, 110, 97, 98, 108, 101, 100))
-- 0xb9 0xae 0x9a 0x5a
cycleRow(_004d9a,_045899(86, 105, 115, 117, 97, 108, 115, 46, 77, 111, 100, 101),_045899(77, 111, 100, 101),{_045899(84, 101, 97, 109),_045899(68, 79, 87),_045899(80, 67, 80),_045899(82, 111, 108, 101),_045899(65, 117, 116, 111),_045899(82, 97, 105, 110, 98, 111, 119)})
toggleRow(_004d9a,_045899(86, 105, 115, 117, 97, 108, 115, 46, 78, 97, 109, 101, 84, 97, 103, 115),_045899(78, 97, 109, 101, 32, 84, 97, 103, 115))
-- ab7e89135aed771c457d2fde5a5477ae3e2236b0637ba0bda2a78f3837
toggleRow(_004d9a,_045899(86, 105, 115, 117, 97, 108, 115, 46, 68, 105, 115, 116, 97, 110, 99, 101),_045899(68, 105, 115, 116, 97, 110, 99, 101))
toggleRow(_004d9a,_045899(86, 105, 115, 117, 97, 108, 115, 46, 83, 104, 111, 119, 82, 111, 108, 101),_045899(82, 111, 108, 101, 32, 76, 97, 98, 101, 108))
-- 0xfb 0xb1 0x6f 0x56 0x64
sliderRow(_004d9a,_045899(86, 105, 115, 117, 97, 108, 115, 46, 70, 105, 108, 108),_045899(70, 105, 108, 108, 32, 84, 114, 97, 110, 115, 112, 97, 114, 101, 110, 99, 121),0,1,2)

-- 111001011110010011110101100101101101111001000100
section(_004d9a,_045899(67, 79, 76, 79, 82, 32, 76, 69, 71, 69, 78, 68),_045899(240, 159, 142, 168))
legendRow(_004d9a,_045899(84, 69, 65, 77, 32, 194, 183, 32, 97, 108, 108, 121),ESPColours.ally)
legendRow(_004d9a,_045899(84, 69, 65, 77, 32, 194, 183, 32, 101, 110, 101, 109, 121),ESPColours.enemy)
-- 0x0e 0x73 0x19 0x3f 0xd0 0xe4
legendRow(_004d9a,_045899(80, 67, 80, 32, 194, 183, 32, 112, 111, 108, 105, 99, 101),ESPColours.police)
-- 1111111101010001101111111011101011111001001001
legendRow(_004d9a,_045899(80, 67, 80, 32, 194, 183, 32, 99, 114, 105, 109, 105, 110, 97, 108),ESPColours.criminal)
legendRow(_004d9a,_045899(80, 67, 80, 32, 194, 183, 32, 112, 114, 105, 115, 111, 110, 101, 114),ESPColours.prisoner)
-- 0x88 0x04 0x27 0x32 0x3b
legendRow(_004d9a,_045899(68, 79, 87, 32, 194, 183, 32, 117, 110, 105, 116, 101, 100, 32, 102, 114, 111, 110, 116),ESPColours.united)
-- 97aeab16db978291aafaa2fcf29d3
legendRow(_004d9a,_045899(68, 79, 87, 32, 194, 183, 32, 105, 114, 111, 110, 32, 108, 101, 103, 105, 111, 110),ESPColours.iron)

-- 0xbb 0x21 0x85 0x36
section(_004d9a,_045899(67, 65, 77, 69, 82, 65),_045899(240, 159, 148, 141))
toggleRow(_004d9a,_045899(86, 105, 115, 117, 97, 108, 115, 46, 73, 110, 102, 90, 111, 111, 109),_045899(73, 110, 102, 105, 110, 105, 116, 101, 32, 90, 111, 111, 109))
-- 101111000011010001110011110010110
sliderRow(_004d9a,_045899(86, 105, 115, 117, 97, 108, 115, 46, 70, 79, 86, 77, 105, 110),_045899(77, 105, 110, 32, 70, 79, 86),0.5,30,1)
-- 0xee 0x81 0x2e
sliderRow(_004d9a,_045899(86, 105, 115, 117, 97, 108, 115, 46, 70, 79, 86, 77, 97, 120),_045899(77, 97, 120, 32, 70, 79, 86),60,400,0)

-- 100100100011110101111000001111
section(_004d9a,_045899(87, 79, 82, 76, 68, 32, 86, 73, 69, 87),_045899(240, 159, 140, 171))
-- e1a3c074f83cb5286745834254a853a6ef5e634e30f4055075a182bff3b0
toggleRow(_004d9a,_045899(86, 105, 115, 117, 97, 108, 115, 46, 78, 111, 70, 111, 103),_045899(78, 111, 32, 70, 111, 103))
-- 0011001100000111001010101100100000100101111001110000010100
end


do
-- 7beb151f3005aa00cde4e919d6db1d4d8a8dcd6f70716353b2081
local_618257=_045899(109, 111, 118, 101)
section(_618257,_045899(67, 79, 82, 69),_045899(240, 159, 143, 131))
-- 0xc5 0x6d 0x1d 0xf8 0x8d 0xb8
toggleRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 78, 111, 99, 108, 105, 112),_045899(78, 111, 99, 108, 105, 112))
-- 0182d1ab6bc08c6288fc9c1d5a
toggleRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 101, 101, 100, 69, 110, 97, 98, 108, 101, 100),_045899(83, 112, 101, 101, 100, 32, 72, 97, 99, 107))
sliderRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 101, 101, 100),_045899(87, 97, 108, 107, 32, 83, 112, 101, 101, 100),16,500,0)
-- 0x2c 0xf5 0xb3 0x73
toggleRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 74, 117, 109, 112, 69, 110, 97, 98, 108, 101, 100),_045899(74, 117, 109, 112, 32, 80, 111, 119, 101, 114))
-- 0100101010111101110101101010000
sliderRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 74, 117, 109, 112, 80, 111, 119, 101, 114),_045899(74, 117, 109, 112, 32, 86, 97, 108, 117, 101),50,800,0)
-- 645d5e8af1e3ed76cca00cfe9802a
toggleRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 73, 110, 102, 105, 110, 105, 116, 101, 74, 117, 109, 112),_045899(73, 110, 102, 105, 110, 105, 116, 101, 32, 74, 117, 109, 112))
-- 5603ac7e8564685cd31aebd4c43f22c0ccfc161b7b92b7
toggleRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 71, 111, 100, 77, 111, 100, 101),_045899(71, 111, 100, 32, 77, 111, 100, 101))

-- 0x2f 0x65 0x6a
section(_618257,_045899(70, 76, 73, 71, 72, 84),_045899(226, 156, 136))
toggleRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121),_045899(70, 108, 121))
sliderRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121, 83, 112, 101, 101, 100),_045899(70, 108, 121, 32, 83, 112, 101, 101, 100),10,500,0)
-- 0c16b9b617cba311f2a0ec7b6e909f9fde4
sliderRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121, 83, 109, 111, 111, 116, 104),_045899(83, 109, 111, 111, 116, 104, 110, 101, 115, 115),1,40,0)
sliderRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 108, 121, 66, 111, 111, 115, 116),_045899(66, 111, 111, 115, 116, 32, 77, 117, 108, 116),1,6,1)

section(_618257,_045899(69, 88, 84, 82, 65, 83),_045899(226, 173, 144))
-- 010101010010111011001001010110111101110001
toggleRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 114, 105, 110, 116),_045899(83, 112, 114, 105, 110, 116))
-- 3c11f48f62deffec8a2ac57f4b0dada0ad3dadc96d49eb2e
sliderRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 114, 105, 110, 116, 83, 112, 101, 101, 100),_045899(83, 112, 114, 105, 110, 116, 32, 83, 112, 101, 101, 100),16,300,0)
-- 09d44d5509934dc8b69bc5aba7340a1929
toggleRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 66, 117, 110, 110, 121, 104, 111, 112),_045899(66, 117, 110, 110, 121, 104, 111, 112))
toggleRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 83, 112, 105, 110, 98, 111, 116),_045899(83, 112, 105, 110, 98, 111, 116))
-- 08e45e0903ab3fc7f0063434e2cb0a8bc9270eabec655b66b
toggleRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 65, 110, 116, 105, 65, 70, 75),_045899(65, 110, 116, 105, 45, 65, 70, 75))

-- b291f13370ce7ca3fab1abef9c0f49d2d07ee471f5c7969a9
section(_618257,_045899(70, 82, 69, 69, 67, 65, 77),_045899(240, 159, 142, 165))
-- a39fa8e8ad313121171f058ddd27f148e73916550d11baa14
toggleRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 114, 101, 101, 99, 97, 109),_045899(70, 114, 101, 101, 99, 97, 109))
-- ef2a217c6d4396e4315c801200d5d157
sliderRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 114, 101, 101, 99, 97, 109, 83, 112, 101, 101, 100),_045899(83, 112, 101, 101, 100),10,400,0)
sliderRow(_618257,_045899(77, 111, 118, 101, 109, 101, 110, 116, 46, 70, 114, 101, 101, 99, 97, 109, 83, 101, 110, 115),_045899(83, 101, 110, 115, 105, 116, 105, 118, 105, 116, 121),0.1,5,1)
-- 0101000000010101000000001110100010010
end


-- d14fe8b5388619111d3a282bb0070c3b53c34b165e101278c
do
local_90a88ed23=_045899(119, 111, 114, 108, 100)
section(_90a88ed23,_045899(76, 73, 71, 72, 84, 73, 78, 71),_045899(240, 159, 146, 161))
-- 07870fba4fe85e44c19fbb2e7eca5802d9976f31bf1f1ad3e0d53d8b
toggleRow(_90a88ed23,_045899(87, 111, 114, 108, 100, 46, 70, 117, 108, 108, 98, 114, 105, 103, 104, 116),_045899(70, 117, 108, 108, 98, 114, 105, 103, 104, 116))
-- bf946ead5b9b88d5ead53b89348f4fc6464cb4a51
toggleRow(_90a88ed23,_045899(87, 111, 114, 108, 100, 46, 82, 101, 109, 111, 118, 101, 66, 108, 117, 114),_045899(82, 101, 109, 111, 118, 101, 32, 66, 108, 117, 114))
-- 100100010110000101001110011011010011100000010110001
section(_90a88ed23,_045899(67, 65, 77, 69, 82, 65),_045899(240, 159, 147, 183))
toggleRow(_90a88ed23,_045899(87, 111, 114, 108, 100, 46, 70, 79, 86, 69, 110, 97, 98, 108, 101, 100),_045899(70, 79, 86, 32, 67, 104, 97, 110, 103, 101, 114))
-- 0c8153b8c15fa1ea884f7e2963eacb93141f0ba49f4307
sliderRow(_90a88ed23,_045899(87, 111, 114, 108, 100, 46, 70, 79, 86),_045899(70, 79, 86, 32, 86, 97, 108, 117, 101),40,140,0)
section(_90a88ed23,_045899(80, 72, 89, 83, 73, 67, 83),_045899(240, 159, 140, 128))
-- 000100110000111011001100111001011000011101011110011
toggleRow(_90a88ed23,_045899(87, 111, 114, 108, 100, 46, 71, 114, 97, 118, 105, 116, 121, 69, 110, 97, 98, 108, 101, 100),_045899(71, 114, 97, 118, 105, 116, 121, 32, 67, 111, 110, 116, 114, 111, 108))
sliderRow(_90a88ed23,_045899(87, 111, 114, 108, 100, 46, 71, 114, 97, 118, 105, 116, 121),_045899(71, 114, 97, 118, 105, 116, 121),0,500,0)
-- 0xff 0x3e 0x6f
end

-- 0x07 0xee 0xb8 0x0f 0x22

-- 1d60b7cfa5799c6dede0ee7b10a78372189043b4f
do
-- 0x45 0xdf 0xc6 0xe4 0xbd 0x1f
local_2b176442=_045899(112, 108, 97, 121, 101, 114, 115)
section(_2b176442,_045899(80, 76, 65, 89, 69, 82, 32, 76, 73, 83, 84),_045899(240, 159, 145, 165))
-- 0xc3 0xa8 0x74
local_40866b4=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,
-- 0xbb 0x47 0xf6
LayoutOrder=#pages[_2b176442]:GetChildren(),AutomaticSize=Enum.AutomaticSize.Y,ZIndex=33},pages[_2b176442])
-- 0xb6 0x5c 0x8a 0x12 0xff 0x93
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder},_40866b4)
-- b95d5849ea06b9f664c9643e20c702c6e2c0429b8dcf49b43c542554eb8
localfunctionrefresh()
for_7a2ca,_e2eed7finipairs(_40866b4:GetChildren())do
ifnot_e2eed7f:IsA(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116))then_e2eed7f:Destroy()end
-- 11110010111101110110111001001000110110101110
end
for_9b9bef,_c6538inipairs(_12573772d:GetPlayers())do
-- 11111110010010010110011000111100010001111101010010110
if_c6538~=_7b4ffe4then
local_230b84f0=getRankFor(_c6538.UserId)
local_e9a09bd=_230b84f0andBADGE_STYLE[_230b84f0]
local_c59dff=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,30),
BackgroundColor3=Theme.panel,BackgroundTransparency=0.15,ZIndex=33},_40866b4))
-- e2252ed3849358336959d148d49198d7a82d6cd75a8dc04bcf40bed1
corner(_c59dff,7)
if_e9a09bdthenstroke(_c59dff,_e9a09bd.color,1.6,0.1)
elsestroke(_c59dff,Theme.strokeSoft,1,0.55)end
local_cd660=_c6538.Name.._045899(32)..roleLabel(_c6538)
-- 723af68d1350932a994c741f55097aee9e8f7c5391e48a062530ac2b93
if_e9a09bdthen_cd660=_e9a09bd.emoji.._045899(32).._cd660end
-- b47b2a595719daebb378cd426fa3f31b104fbf113226931deae1
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Text=_cd660,Font=Enum.Font.GothamBold,
TextSize=11,TextColor3=_e9a09bdand_e9a09bd.colororespColour(_c6538),
-- 010011111011110101001101111001110010101
BackgroundTransparency=1,
-- 0x29 0x4f 0xcd 0x10 0xe7 0x71
Position=UDim2.fromOffset(12,0),Size=UDim2.new(0.55,0,1,0),
-- 0xe8 0x29 0xe4
TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},_c59dff)
local_2aa65d4=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Text=_045899(70, 76, 73, 78, 71),Font=Enum.Font.GothamBold,
-- 0001110111011001010111101000100010110011100100101010010
TextSize=9,BackgroundColor3=Theme.panel2,TextColor3=Theme.danger,
-- 8b155217cf022cf0b99666dccd546b415f5d7d6
Size=UDim2.fromOffset(50,20),Position=UDim2.new(1,-104,0.5,-10),
AutoButtonColor=false,ZIndex=34},_c59dff)
-- 0110011001001110101001101100110
corner(_2aa65d4,5)
tStroke(stroke(_2aa65d4,Theme.strokeSoft,1))
-- 4ed2d8bf05cccc9cfecfc293c3b3
_2aa65d4.MouseButton1Click:Connect(function()flingPlayer(_c6538)end)
-- 02345109a0c92337e7a31b41faef
local_cdec23=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Text=_045899(84, 80),Font=Enum.Font.GothamBold,
-- 01111001101011110100001101000011101100001100100000100001
TextSize=10,BackgroundColor3=Theme.panel2,TextColor3=Theme.accent2,
Size=UDim2.fromOffset(42,20),Position=UDim2.new(1,-50,0.5,-10),
-- d7327ca950e2651806c922e84241d74d79779ce90dfd79
AutoButtonColor=false,ZIndex=34},_c59dff)
-- 0x7d 0xc9 0xff
corner(_cdec23,5)
-- 0x37 0x87 0x74 0x46 0x90
tStroke(stroke(_cdec23,Theme.strokeSoft,1))
_cdec23.MouseButton1Click:Connect(function()
local_66977f1a6=_c6538.Characterand_c6538.Character:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 0x94 0xc3 0x1a 0x9a 0xa5 0x22
local_2856e=hrp()
if_66977f1a6and_2856ethen
-- bb327765bdac4208797d9729b
_2856e.AssemblyLinearVelocity=Vector3.zero
-- 5e07f54e81450cde3fd6b6a8db7976765468f41537d81a8c278c0ca
_2856e.CFrame=_66977f1a6.CFrame+Vector3.new(0,3,0)
-- 10111111111001010011110101110010111011
_2856e.AssemblyLinearVelocity=Vector3.zero
-- 0xec 0x31 0xa5 0x39 0x40 0xa5
end
-- e36f04e0c74649cea86f2827c439e34f
end)
-- 467e0ddac3992ad4f7ca66434b
end
-- 01000101001101001110110000010111110001000011111001001100010
end
end
refresh()
buttonRow(pg2,_045899(82, 101, 102, 114, 101, 115, 104, 32, 76, 105, 115, 116),_045899(82, 69, 70, 82, 69, 83, 72),refresh)
end


do
-- 0x27 0xc0 0x42 0x6c
local_5a30f=_045899(116, 114, 111, 108, 108)
-- 0x12 0x5c 0xcf 0x0f
section(_5a30f,_045899(84, 65, 82, 71, 69, 84),_045899(240, 159, 142, 175))
-- 0x08 0x59 0xbc 0xd2 0xf2
local_fea7e639=tPanel2(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,30),
-- 73890df411c5338d9c4712e8024ea50a95035039c976
BackgroundColor3=Theme.panel2,BackgroundTransparency=0.15,
LayoutOrder=#pages[_5a30f]:GetChildren(),ZIndex=33},pages[_5a30f]))
-- 0x1b 0x58 0x91 0x7f
corner(_fea7e639,8)
tStroke(stroke(_fea7e639,Theme.strokeSoft,1,0.55))
local_f4bd96=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-90,1,0),Position=UDim2.fromOffset(14,0),
-- 0x61 0xd3 0xf1 0x57 0x0a 0x53
BackgroundTransparency=1,Text=_045899(84, 97, 114, 103, 101, 116, 58, 32, 78, 101, 97, 114, 101, 115, 116),Font=Enum.Font.GothamBold,
-- 1100111100010110010101010
TextSize=11,TextColor3=Theme.accent2,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},_fea7e639)
local_e7eaf624=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(70,20),
-- 7e266dddb87cf9cebe89c9b746192f735b62745
Position=UDim2.new(1,-78,0.5,-10),BackgroundColor3=Theme.panel,Text=_045899(67, 76, 69, 65, 82),
-- cc99c4c42ec6851451be3aaf3be
Font=Enum.Font.GothamBold,TextSize=9,TextColor3=Theme.danger,
-- 10111100101110111101110011010001001011011
AutoButtonColor=false,ZIndex=34},_fea7e639)
corner(_e7eaf624,5)
-- 2ad62467e38573961151c22cf7c6435ba96b1f6c1b036d6420d11b110d
tStroke(stroke(_e7eaf624,Theme.strokeSoft,1))
_e7eaf624.MouseButton1Click:Connect(function()
-- 0101000111110001110001000111001100000100
TS.target=nil;_f4bd96.Text=_045899(84, 97, 114, 103, 101, 116, 58, 32, 78, 101, 97, 114, 101, 115, 116)
-- aef5ac8eef52963404cf2c0e56f589f0
end)
-- 2443d05f0dee10c4ff01674a154d7f616c3550cdf354b1365
toggleRow(_5a30f,_045899(84, 114, 111, 108, 108, 46, 84, 97, 112, 84, 97, 114, 103, 101, 116),_045899(84, 97, 112, 32, 116, 111, 32, 84, 97, 114, 103, 101, 116))
-- 1000110000101100101101100000011101010010110000110
sliderRow(_5a30f,_045899(84, 114, 111, 108, 108, 46, 84, 97, 112, 82, 97, 100, 105, 117, 115),_045899(67, 114, 111, 115, 115, 104, 97, 105, 114, 32, 82, 97, 100, 105, 117, 115),5,200,0)

section(_5a30f,_045899(70, 79, 76, 76, 79, 87),_045899(240, 159, 145, 163))
-- cebff857f112aba23479add8152ebf5
toggleRow(_5a30f,_045899(84, 114, 111, 108, 108, 46, 70, 111, 108, 108, 111, 119, 84, 97, 114, 103, 101, 116),_045899(70, 111, 108, 108, 111, 119, 32, 84, 97, 114, 103, 101, 116))
sliderRow(_5a30f,_045899(84, 114, 111, 108, 108, 46, 70, 111, 108, 108, 111, 119, 83, 112, 101, 101, 100),_045899(70, 111, 108, 108, 111, 119, 32, 83, 112, 101, 101, 100),10,300,0)

-- 00110010011111101110011101100001001011100110
local_b654283=collapsible(_5a30f,_045899(72, 85, 77, 80, 32, 69, 78, 71, 73, 78, 69),true)
-- 551b6a5113ea2a38df0786d4153bf50e843f09a6179672ef4347
toggleRow(_b654283,_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112),_045899(72, 85, 77, 80, 32, 84, 97, 114, 103, 101, 116))
toggleRow(_b654283,_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 65, 117, 116, 111, 68, 101, 116, 101, 99, 116),_045899(65, 117, 116, 111, 45, 68, 101, 116, 101, 99, 116, 32, 40, 115, 99, 97, 108, 101, 115, 32, 115, 108, 105, 100, 101, 114, 41))
-- 010011010011100110011111011100100101000
toggleRow(_b654283,_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 70, 97, 108, 108, 80, 114, 111, 116, 101, 99, 116),_045899(70, 97, 108, 108, 32, 47, 32, 82, 101, 115, 112, 97, 119, 110, 32, 80, 114, 111, 116, 101, 99, 116, 105, 111, 110))
-- 1000010100100101110011101110100100010001000000110100
toggleRow(_b654283,_045899(85, 73, 46, 65, 68),_045899(83, 104, 111, 119, 32, 65, 117, 116, 111, 45, 68, 101, 116, 101, 99, 116, 32, 72, 85, 68, 32, 40, 74, 41))
-- 54f035697a1fe38a3601a0f006de6bc876d8a4326aac72002
sliderRow(_b654283,_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 83, 112, 101, 101, 100),_045899(72, 117, 109, 112, 32, 83, 112, 101, 101, 100, 32, 40, 72, 122, 41),1,100,0)
-- 0x35 0x2c 0x07 0xb8 0xa3 0xc2
sliderRow(_b654283,_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 65, 109, 112),_045899(72, 117, 109, 112, 32, 65, 109, 112, 108, 105, 116, 117, 100, 101),0.3,5,2)
sliderRow(_b654283,_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 68, 105, 115, 116),_045899(83, 116, 97, 110, 100, 32, 66, 101, 104, 105, 110, 100, 32, 68, 105, 115, 116, 97, 110, 99, 101),0.8,5,2)
toggleRow(_b654283,_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 89, 97, 119, 79, 110, 108, 121),_045899(89, 97, 119, 32, 79, 110, 108, 121))
-- 000100011111100011110111101000000110
toggleRow(_b654283,_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 75, 101, 101, 112, 79, 119, 110, 101, 114),_045899(82, 101, 45, 99, 108, 97, 105, 109, 32, 79, 119, 110, 101, 114))
-- 0101100110111110010110001010010111001
toggleRow(_b654283,_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 85, 115, 101, 80, 108, 97, 116, 102, 111, 114, 109),_045899(85, 115, 101, 32, 80, 108, 97, 116, 102, 111, 114, 109, 83, 116, 97, 110, 100))
toggleRow(_b654283,_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 79, 118, 101, 114, 114, 105, 100, 101, 70, 108, 121),_045899(79, 118, 101, 114, 114, 105, 100, 101, 32, 70, 108, 121))
toggleRow(_b654283,_045899(84, 114, 111, 108, 108, 46, 72, 117, 109, 112, 86, 101, 108, 77, 97, 116, 99, 104),_045899(86, 101, 108, 111, 99, 105, 116, 121, 32, 77, 97, 116, 99, 104))
end

-- 100011100010110001111110011101100010001110010

do
local_e4576133=_045899(117, 116, 105, 108)
-- aad48cd9affb1d2a542d559d6ae
section(_e4576133,_045899(65, 85, 84, 79),_045899(226, 154, 153))
toggleRow(_e4576133,_045899(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 67, 108, 105, 99, 107, 101, 114),_045899(65, 117, 116, 111, 32, 67, 108, 105, 99, 107, 101, 114))
sliderRow(_e4576133,_045899(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 67, 108, 105, 99, 107, 68, 101, 108, 97, 121),_045899(67, 108, 105, 99, 107, 32, 68, 101, 108, 97, 121),0.01,1,2)
toggleRow(_e4576133,_045899(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 82, 101, 115, 112, 97, 119, 110),_045899(65, 117, 116, 111, 32, 82, 101, 115, 112, 97, 119, 110))
-- 001010100001001001010010001000001101101
toggleRow(_e4576133,_045899(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 83, 104, 101, 114, 105, 102, 102),_045899(65, 117, 116, 111, 32, 83, 104, 101, 114, 105, 102, 102, 32, 80, 105, 99, 107, 117, 112))
-- 0x46 0x6d 0x1a 0xdd 0xb1
sliderRow(_e4576133,_045899(85, 116, 105, 108, 105, 116, 121, 46, 65, 117, 116, 111, 83, 104, 101, 114, 105, 102, 102, 82, 97, 110, 103, 101),_045899(80, 105, 99, 107, 117, 112, 32, 82, 97, 110, 103, 101),10,500,0)
-- 268b03546dcb9717c24fefc41cbeb99cb70ae018c72db
section(_e4576133,_045899(67, 72, 65, 84),_045899(240, 159, 146, 172))
toggleRow(_e4576133,_045899(85, 116, 105, 108, 105, 116, 121, 46, 67, 104, 97, 116, 83, 112, 97, 109),_045899(67, 104, 97, 116, 32, 83, 112, 97, 109))
-- 0xc5 0x8f 0x51
textRow(_e4576133,_045899(77, 101, 115, 115, 97, 103, 101),_045899(109, 101, 115, 115, 97, 103, 101, 226, 128, 166),Cfg.Utility.ChatSpamMsg,function(_89a8cd5c)Cfg.Utility.ChatSpamMsg=_89a8cd5cend)
-- 0x6d 0xc2 0x45 0xbe 0xd9
end

-- 0xa6 0x59 0x22 0x4d 0x1b 0x7c

-- 0x7a 0xf0 0xab 0x3b
do
-- 0x16 0xa5 0xe4 0x56 0xf5
local_8ae83d5=_045899(115, 97, 118, 101)
-- 0xba 0xc9 0x96
section(_8ae83d5,_045899(76, 79, 65, 68, 79, 85, 84, 83),_045899(240, 159, 146, 190))
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,0,0,32),BackgroundTransparency=1,
-- 0x2b 0xc3 0x17 0xbf 0x30 0x0c
Text=_045899(73, 79, 58, 32)..(IO.hasand(_045899(226, 156, 147, 32)..IO.reason)or(_045899(226, 156, 151, 32)..IO.reason)).._045899(10, 80, 108, 97, 99, 101, 58, 32)..tostring(game.PlaceId),
Font=Enum.Font.GothamBold,TextSize=9,
-- 1100011101110101001001011001101001000000
TextColor3=IO.hasandTheme.successorTheme.danger,
TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,
LayoutOrder=#pages[_8ae83d5]:GetChildren(),ZIndex=33},pages[_8ae83d5])
-- 0x23 0x26 0x0e 0x62 0x18
local_c9fa7=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,0,0,14),BackgroundTransparency=1,
Text=autoloadNameand(_045899(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32)..autoloadName)or_045899(110, 111, 32, 97, 117, 116, 111, 108, 111, 97, 100),
Font=Enum.Font.GothamBold,TextSize=10,TextColor3=Theme.accent2,
-- 0x3c 0x46 0x51 0xcb 0x92
LayoutOrder=#pages[_8ae83d5]:GetChildren(),ZIndex=33},pages[_8ae83d5])

-- f75ce31d714a568c629a94996c9c88830d35df80805a4e
local_f8bcc6c14=tPanel2(new(_045899(84, 101, 120, 116, 66, 111, 120),{Size=UDim2.new(1,0,0,28),
-- c80b4257c010133b42b7181785b7a8ee9
BackgroundColor3=Theme.panel2,BorderSizePixel=0,Text=_045899(),
-- 0xb1 0xaf 0x32 0x3a
Active=true,Selectable=true,
PlaceholderText=_045899(108, 111, 97, 100, 111, 117, 116, 32, 110, 97, 109, 101, 32, 40, 101, 103, 46, 32, 97, 105, 109, 98, 111, 116, 44, 32, 109, 111, 118, 101, 109, 101, 110, 116, 44, 32, 116, 114, 111, 108, 108, 41),
-- 0x50 0x3a 0x9c
PlaceholderColor3=Theme.muted,Font=Enum.Font.Gotham,TextSize=11,
TextColor3=Theme.text,ClearTextOnFocus=false,
LayoutOrder=#pages[_8ae83d5]:GetChildren(),ZIndex=50},pages[_8ae83d5]))
corner(_f8bcc6c14,7)
tStroke(stroke(_f8bcc6c14,Theme.strokeSoft,1))

local_63ef8=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,
-- 9b49fa03d89eeb75ce3795e551e81687f72ad8b5422bba3674
LayoutOrder=#pages[_8ae83d5]:GetChildren(),AutomaticSize=Enum.AutomaticSize.Y,ZIndex=33},pages[_8ae83d5])
new(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116),{Padding=UDim.new(0,4),SortOrder=Enum.SortOrder.LayoutOrder},_63ef8)

localfunctionrefreshList()
for_f4a346,_23704inipairs(_63ef8:GetChildren())do
-- 0x23 0xe9 0x21 0x06
ifnot_23704:IsA(_045899(85, 73, 76, 105, 115, 116, 76, 97, 121, 111, 117, 116))then_23704:Destroy()end
-- 0x40 0x29 0xc9 0xd3 0x67
end
-- 1101100011011100111000000
local_47da7d388=listLoadouts()
-- 07593cc3482f4bc875be28c71f56e4964e53b8
if#_47da7d388==0then
local_eaa863d1e=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,0,0,20),BackgroundTransparency=1,
-- 010001111101000101101001110010110111110001
Text=_045899(110, 111, 32, 115, 97, 118, 101, 100, 32, 108, 111, 97, 100, 111, 117, 116, 115, 32, 121, 101, 116, 32, 226, 128, 148, 32, 116, 121, 112, 101, 32, 97, 32, 110, 97, 109, 101, 32, 97, 98, 111, 118, 101, 32, 97, 110, 100, 32, 104, 105, 116, 32, 83, 65, 86, 69),
Font=Enum.Font.Gotham,TextSize=9,TextColor3=Theme.muted,
TextXAlignment=Enum.TextXAlignment.Left,
-- 1111000100001100110111000110110100100
LayoutOrder=1,ZIndex=34},_63ef8)
_eaa863d1e.Visible=true
-- 1010000100110010111011000001
return
end
for_1e9b04528,_2b7d66inipairs(_47da7d388)do
-- 0x6b 0xc2 0x56
local_d9af47=(_2b7d66==autoloadName)
-- 0000100010101100101101100100
local_b2f4a=tPanel(new(_045899(70, 114, 97, 109, 101),{Size=UDim2.new(1,0,0,28),
-- 0110101001000110100001011
BackgroundColor3=Theme.panel,BackgroundTransparency=0.15,
-- 0000001100011001111111101011
LayoutOrder=_1e9b04528,ZIndex=33},_63ef8))
-- 100110111111111011000101100011100100011000111110110110000
corner(_b2f4a,7)
-- 1a22a6f16db61ea7f49f015fbfa9e285c4d93f6080913bec7ac41e18
tStroke(stroke(_b2f4a,_d9af47andTheme.accent3orTheme.strokeSoft,_d9af47and1.6or1,0.55))
-- 58db6969a1f69b739ab4aa2089038a479c98b1b1b343de71de9
hoverStripe(_b2f4a,Theme.neon)
-- dee738847e7ffdb42ce1817c16bb5450e7555
new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{Size=UDim2.new(1,-180,1,0),Position=UDim2.fromOffset(12,0),
BackgroundTransparency=1,
-- 0111001101001111010011000001101100
Text=(_d9af47and_045899(226, 152, 133, 32)or_045899()).._2b7d66,
-- 10000011100110101100101010001100010
Font=Enum.Font.GothamBold,TextSize=10,
-- 1000001110001101010100110000001
TextColor3=_d9af47andTheme.accent2orTheme.text,
-- 0x3b 0xaf 0x34
TextXAlignment=Enum.TextXAlignment.Left,ZIndex=34},_b2f4a)
-- 0xb9 0x47 0x5d 0x88 0xe5
local_1766a476f=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(50,18),
Position=UDim2.new(1,-170,0.5,-9),BackgroundColor3=Theme.panel2,
Text=_045899(76, 79, 65, 68),Font=Enum.Font.GothamBold,TextSize=9,
-- 01111010101101010100011010000111100101111010110110000101
TextColor3=Theme.success,AutoButtonColor=false,ZIndex=34},_b2f4a)
-- 0x4c 0xfb 0x4a
corner(_1766a476f,4);stroke(_1766a476f,Theme.strokeSoft,1)
_1766a476f.MouseButton1Click:Connect(function()
-- 667976f95a639cd4eb6825f0c498b21073279b371ddd16565ef859da5fa
ifloadLoadout(_2b7d66)then
-- 0x1c 0xcf 0xfc 0xd9 0x5b
for_30d7bb40,_68b2d7inpairs(widgets)do
local_c76fd96=getPath(Cfg,_30d7bb40)
-- 0xcc 0xc7 0x44 0x52
if_c76fd96~=nilthenpcall(_68b2d7.set,_c76fd96,false)end
-- d4d7fc2345f5798ac6d5ba4635525624fe8485ed6cd72d182
end
-- 0x15 0x30 0xe6
applyTheme();applyOpacity(Cfg.UI.MenuOpacityor0)
-- 5bb5e11b075ebb9fca1ac8c82b8b597f79fff5b1c16a5fea881282f6
notify(_045899(76, 111, 97, 100, 101, 100),_2b7d66,Theme.success,2.5)
refreshList()
-- df336d8ea925ca88fe19e868cfc
else
notify(_045899(76, 111, 97, 100, 32, 102, 97, 105, 108, 101, 100),_2b7d66,Theme.danger,2.5)
-- 10010001001011111111101100000
end
end)
-- 101101001100111001010110001000100110100011
local_839f6a9b=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(50,18),
-- 01110101001011010010100111110000
Position=UDim2.new(1,-116,0.5,-9),BackgroundColor3=Theme.panel2,
-- e88d0e2a4b50916f0377590f77a79f4403699df376ce8458ac729ebb42
Text=_045899(65, 85, 84, 79),Font=Enum.Font.GothamBold,TextSize=9,
-- 110000000111001101101101110001001010101101110000110
TextColor3=Theme.gold,AutoButtonColor=false,ZIndex=34},_b2f4a)
-- 0011011101101111110010011001
corner(_839f6a9b,4);stroke(_839f6a9b,Theme.strokeSoft,1)
-- 1101000011110101001101000110111
_839f6a9b.MouseButton1Click:Connect(function()
-- a5e6b11c20e8807fa0561e4a8ebb4f8daf645c347fd6
autoloadName=_2b7d66
_G.__ReaperAutoload=_2b7d66
-- 11101000000001110000110100011001010
ifIO.hasthen
-- 0x0a 0x90 0x32 0x19 0x21 0x54
pcall(IO.write,autoloadFile(),_2b7d66)
pcall(IO.write,globalAutoloadFile(),game.PlaceId.._045899(58, 58).._2b7d66)
-- aaa3adcd046018eba46517b1dbc3779c5ac14225a66f6269a23ccf2
end
-- 011000100101111001110101010
_c9fa7.Text=_045899(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32).._2b7d66
-- 0xd3 0x9c 0xf8
notify(_045899(65, 117, 116, 111, 108, 111, 97, 100, 32, 115, 101, 116),_2b7d66,Theme.success,2.5)
refreshList()
end)
local_3f85af=new(_045899(84, 101, 120, 116, 66, 117, 116, 116, 111, 110),{Size=UDim2.fromOffset(50,18),
-- 0x7d 0xb3 0xc1
Position=UDim2.new(1,-62,0.5,-9),BackgroundColor3=Theme.panel2,
-- 0x44 0xb8 0xc1 0x12
Text=_045899(68, 69, 76),Font=Enum.Font.GothamBold,TextSize=9,
-- f5bf049197de17ad6630300d81af2919f4ce
TextColor3=Theme.danger,AutoButtonColor=false,ZIndex=34},_b2f4a)
corner(_3f85af,4);stroke(_3f85af,Theme.strokeSoft,1)
_3f85af.MouseButton1Click:Connect(function()
deleteLoadout(_2b7d66)
-- 1111111101101101111000111011
if_c9fa7then_c9fa7.Text=autoloadNameand(_045899(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32)..autoloadName)or_045899(110, 111, 32, 97, 117, 116, 111, 108, 111, 97, 100)end
notify(_045899(68, 101, 108, 101, 116, 101, 100),_2b7d66,Theme.muted,2)
-- 1000111010101100101100110010011000001001010001100001100100
refreshList()
-- 100010011011001111001000000000100100100101101111001
end)
-- d6e879b2585de7d96ec7a3cb35f70cb7a608ea8bfda6a8e724f77919742
end
-- 0011010100111011100000000111111111100101
end
refreshList()

-- 0a5592cb9a19dfd4b24eef3708fdf92f8b1e94836c597964fa
localfunctionresolveName()
return(nameBox.Text~=_045899()andnameBox.Text)orautoloadNameor_045899(100, 101, 102, 97, 117, 108, 116)
-- 001010111100101101111101000111000111110111010010111
end

buttonRow(pg2,_045899(83, 97, 118, 101, 32, 99, 117, 114, 114, 101, 110, 116, 32, 115, 101, 116, 116, 105, 110, 103, 115),_045899(83, 65, 86, 69),function()
-- 0xd2 0xce 0x09 0xbe 0xd3
local_aa45ef=resolveName()
-- d97f9f49474bdeefe10703a8ca2cbd343df03facbb0a9b45
saveLoadout(_aa45ef,false)
notify(_045899(83, 97, 118, 101, 100),_aa45ef,Theme.success)
-- 0xf2 0xbc 0x0f 0xdd 0x26 0x5e
refreshList()
-- 0x5a 0x79 0x05
end)
-- 48ca06254a78464fbe38d5df485cc90af
buttonRow(pg2,_045899(83, 97, 118, 101, 32, 43, 32, 115, 101, 116, 32, 97, 117, 116, 111, 108, 111, 97, 100),_045899(83, 65, 86, 69, 32, 43, 32, 65, 85, 84, 79),function()
local_3f94ebc7e=resolveName()
-- 001001100010010101001111001010110000100010101001
saveLoadout(_3f94ebc7e,true)
autoLbl.Text=_045899(226, 152, 133, 32, 97, 117, 116, 111, 108, 111, 97, 100, 58, 32).._3f94ebc7e
-- 1010011111100111111100110
notify(_045899(65, 117, 116, 111, 108, 111, 97, 100, 32, 115, 101, 116),_3f94ebc7e,Theme.success)
refreshList()
end)
-- 0x1b 0x22 0xac 0x44 0xd5 0xea
buttonRow(pg2,_045899(82, 101, 108, 111, 97, 100, 32, 108, 105, 115, 116),_045899(82, 69, 70, 82, 69, 83, 72),function()refreshList()end)
-- e231028b3c6a97e7913e94d13d9f4de
end

-- 0xa8 0xc9 0xd1 0x88

-- 0xbb 0xfd 0xea
do
local_d4ce458=_045899(116, 104, 101, 109, 101)
-- 011110110101001000010110001100
section(_d4ce458,_045899(80, 65, 76, 69, 84, 84, 69),_045899(240, 159, 142, 168))
-- dc526759bad1e09212dcf3c64fbfe
buttonRow(_d4ce458,_045899(78, 101, 111, 110, 32, 80, 117, 114, 112, 108, 101),_045899(65, 80, 80, 76, 89),function()
-- c1261378aef1114a26154463d9ca6668d882a68
Theme.setPalette(_045899(87, 105, 110, 116, 101, 114));Cfg.UI.Sakura=false
-- 0x62 0x40 0xb1
applyTheme()
-- 0x65 0x75 0x77 0x7a 0xca 0x02
end)
buttonRow(_d4ce458,_045899(83, 97, 107, 117, 114, 97),_045899(65, 80, 80, 76, 89),function()
-- 83c2222b1587dc0dd42d498d10d5c441b4b209428a
Theme.setPalette(_045899(83, 97, 107, 117, 114, 97));Cfg.UI.Sakura=true
-- 0101111001100001011101001100101101100000111001
applyTheme()
-- 0xe6 0x53 0x48 0x97 0x22
end)
section(_d4ce458,_045899(69, 70, 70, 69, 67, 84, 83),_045899(226, 156, 168))
-- 0xa4 0xb1 0x10 0x42 0xfe
toggleRow(_d4ce458,_045899(85, 73, 46, 74, 117, 105, 99, 121),_045899(74, 117, 105, 99, 121, 32, 69, 102, 102, 101, 99, 116, 115))
toggleRow(_d4ce458,_045899(85, 73, 46, 78, 111, 116, 105, 102, 115),_045899(78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 115))
toggleRow(_d4ce458,_045899(85, 73, 46, 65, 109, 98, 105, 101, 110, 116),_045899(65, 109, 98, 105, 101, 110, 116, 32, 80, 97, 114, 116, 105, 99, 108, 101, 115))
-- 927733d50019b77720d371fafba478d30de
toggleRow(_d4ce458,_045899(85, 73, 46, 65, 110, 105, 109, 97, 116, 101, 100, 79, 112, 101, 110),_045899(65, 110, 105, 109, 97, 116, 101, 100, 32, 77, 101, 110, 117))
-- 111110000010110101110010
toggleRow(_d4ce458,_045899(85, 73, 46, 77, 101, 110, 117, 66, 108, 117, 114),_045899(66, 108, 117, 114, 32, 66, 97, 99, 107, 103, 114, 111, 117, 110, 100))
section(_d4ce458,_045899(77, 69, 78, 85, 32, 79, 80, 65, 67, 73, 84, 89),_045899(240, 159, 140, 171))
-- 0xf0 0x71 0xa8 0xc3
sliderRow(_d4ce458,_045899(85, 73, 46, 77, 101, 110, 117, 79, 112, 97, 99, 105, 116, 121),_045899(84, 114, 97, 110, 115, 112, 97, 114, 101, 110, 99, 121),0,0.9,2,function(_e8cd04aba)applyOpacity(_e8cd04aba)end)
-- 000111110011001100010011100010000110010101000010
end


-- 2feabe8b99843bf35386bc1bedd79906f697198
for_11bde050,_4d4db5cinpairs(pages)do_4d4db5c.Visible=falseend
pages.home.Visible=true
-- 101100101111001110001011110001
tabs.home.BackgroundColor3=Theme.neon
-- 0001101111000010001111001001011011011110011000111
tabs.home.TextColor3=Color3.new(1,1,1)
-- 97ff43df4b9bb7f983114723417a0956a0d0db4f01bd99009d1d3c
applyTheme()
applyOpacity(Cfg.UI.MenuOpacityor0)
statusLbl.Text=_045899(82, 69, 65, 80, 69, 82, 32, 32, 194, 183, 32, 32, 112, 108, 97, 99, 101, 32)..tostring(game.PlaceId)..
-- b8613fbbf8b13405a73f4679f348c264fc115fd9843eb88cb7fc
(DISCORD_USERNAMEand(_045899(32, 32, 194, 183, 32, 32, 64)..DISCORD_USERNAME)or_045899())
pcall(refreshHUD)
-- a81fedd4662609f221b31b53fd317cf8be179e1f015f8
pcall(refreshAD)
-- bbe458368f2df410f9841adce
rebuildChips()

-- be94dc255e613bdb26cb9a66d95c609d30212508a33


-- 0000011000001100111011000101001101111001001000110000010





-- 1f54c1cefdbe0325846b83056ec364d17df0f0e23f816b4830dc

task.spawn(function()
-- 101000010011110110000000001100111001
local_5d13fc7=false
local_058e11c9=0
-- 0x44 0xf9 0x6d 0xfb 0xdf
localfunctionforceRePrompt(reason,kick)
-- 01010011101101011101110110011011
if_5d13fc7thenreturnend
_5d13fc7=true
-- 0xe3 0xdb 0x17 0x55 0x1c
clearVerifiedData()
notify(_045899(86, 101, 114, 105, 102, 105, 99, 97, 116, 105, 111, 110, 32, 108, 111, 115, 116),reasonor_045899(82, 101, 45, 118, 101, 114, 105, 102, 121, 32, 116, 111, 32, 99, 111, 110, 116, 105, 110, 117, 101, 46),
Theme.danger,8)
ifkickthen
-- 515cfc7b24af174ac1a2b9e168d
task.delay(2,function()
pcall(function()
_7b4ffe4:Kick(_045899(89, 111, 117, 32, 100, 101, 97, 117, 116, 104, 111, 114, 105, 122, 101, 100, 32, 116, 104, 101, 32, 82, 69, 65, 80, 69, 82, 32, 97, 112, 112, 46, 32, 82, 101, 106, 111, 105, 110, 32, 116, 104, 101, 32, 103, 97, 109, 101, 32, 116, 111, 32, 114, 101, 45, 118, 101, 114, 105, 102, 121, 46))
-- 00100101010111011000110011011101000110111011011100111110
end)
-- 0xff 0x17 0x3f
end)
-- 110111101100111000100101100100110011100010010001110011001111
end
-- 447d693b6d071e2897671cba9
task.spawn(function()
-- 000101110011100011110010101001011
local_6b2d04976=showKeyPrompt()
if_6b2d04976then
-- 101111101101010010100100100010111000011100
MY_USER=_6b2d04976
MY_USER.country=_045899(85, 110, 107, 110, 111, 119, 110);MY_USER.countryCode=_045899()
-- 0011011110010011000010011100110111011
MY_USER.connectedAt=tick();MY_USER.userId=_7b4ffe4.UserId
-- 0101100000001000000001011100010
SESSION_KEY=_6b2d04976.key
-- 0x4b 0x7d 0xb6 0x76 0xe3
DISCORD_USERNAME=_6b2d04976.discordName
-- 60b6593b1393267a1709c535915128e2e8a08226687
DISCORD_ID=_6b2d04976.discordId
saveVerifiedData({
-- 1110101011110011110101101
key=_6b2d04976.key,robloxId=tostring(_7b4ffe4.UserId),
-- 5e90307cb8e833f6d588381d3494fdec63d4687cb2467e1
discordUsername=_6b2d04976.discordName,
discordId=_6b2d04976.discordId,
-- 253f02b1bfd1e00851e941455d1865e51e8c
savedAt=os.time(),
-- 0xda 0x39 0x1e 0x0f
})
-- 95e5f9e710d60f14a84b0311f2663141c3c5f97bb0d6c183e6b
showVerifiedScreen(_6b2d04976)
ifstatusLblthen
statusLbl.Text=_045899(82, 69, 65, 80, 69, 82, 32, 32, 194, 183, 32, 32, 112, 108, 97, 99, 101, 32)..tostring(game.PlaceId)..
(DISCORD_USERNAMEand(_045899(32, 32, 194, 183, 32, 32, 64)..DISCORD_USERNAME)or_045899())
end
end
-- 101100000011001000010111
_5d13fc7=false
-- 101001000011000100001111
end)
end
whileguiandgui.Parentdo
-- 110111001111100101000100
task.wait(60)
-- 110101110000001100001110111110001101100001001010001
counter=counter+1
ifnotSESSION_KEYorrePromptingthencontinueend

ifcounter%5==0then
-- fbdb3c6ce2793a96a0bf42ddb819a62e79586cb195b4850
local_9189c9d4b=postJSON(_045899(47, 99, 104, 101, 99, 107, 45, 116, 111, 107, 101, 110),
-- 0xe2 0xde 0x52 0xdc 0x7d
{robloxId=tostring(_7b4ffe4.UserId),key=SESSION_KEY})
-- 2b4ae752bc24edaa771801ac2fe255984661a4e67a4caae896792f
if_9189c9d4band_9189c9d4b.authorized==falsethen
-- 0x91 0xc5 0xa3
forceRePrompt(_045899(89, 111, 117, 32, 114, 101, 109, 111, 118, 101, 100, 32, 116, 104, 101, 32, 97, 112, 112, 32, 226, 128, 148, 32, 114, 101, 45, 118, 101, 114, 105, 102, 121, 32, 116, 111, 32, 99, 111, 110, 116, 105, 110, 117, 101, 46),true)
-- 46bd1e456251a24a55e45acc0492a47e8c196085562fa0bee1
continue
-- 1011100000111010111101011000
end
end

-- 100111100110111100011000011
local_daa696=postJSON(_045899(47, 99, 104, 101, 99, 107),{robloxId=tostring(_7b4ffe4.UserId),key=SESSION_KEY})
-- 3a42a351dce5f198077266f45
if_daa696andnot_daa696.validthen
-- 6383980966a7fc9d0395b596a5940506a6e6bb708b0
forceRePrompt(_045899(89, 111, 117, 32, 108, 101, 102, 116, 32, 116, 104, 101, 32, 68, 105, 115, 99, 111, 114, 100, 32, 226, 128, 148, 32, 114, 101, 45, 118, 101, 114, 105, 102, 121, 32, 116, 111, 32, 99, 111, 110, 116, 105, 110, 117, 101, 46))
end
-- 30f1d104821c5687a9e4093b0b1d20946d876
end
end)

-- 11100100110011000010100101001011011011110100

-- 0x37 0x63 0x37 0x9a 0xd0
task.spawn(function()
-- 0xcb 0x39 0xb0
local_421ba=0
-- 10000100111001011110110110011011001
whileguiandgui.Parentdo
task.wait(6)
-- 0x95 0x8a 0xc5
local_43a39dd0,_303f26a3=httpGet(KEY_API.._045899(47, 97, 110, 110, 111, 117, 110, 99, 101, 47, 102, 101, 116, 99, 104, 63, 115, 105, 110, 99, 101, 61).._421ba.._045899(38, 108, 105, 109, 105, 116, 61, 50, 48))
if_43a39dd0and_303f26a3then
-- 0xb1 0xa0 0x27
local_411ac,_91717d=pcall(function()return_60a733cf:JSONDecode(_303f26a3)end)
if_411acandtype(data)==_045899(116, 97, 98, 108, 101)anddata.announcementsthen
for_51a044,_bee0dinipairs(_91717d.announcements)do
if_bee0d.idand_bee0d.id>_421bathen_421ba=_bee0d.idend
-- 55f350bba2f3fe5c255234b7b4acd864e546ed
iftostring(_bee0d.userId)~=tostring(_7b4ffe4.UserId)then
-- 8305fe9332cb5d5d80b4f71744e241c7f3d7250cb165a76703
showAnnouncement(_bee0d)
-- 0x44 0xcd 0xae 0x43 0xa3
end
-- 0xc5 0x35 0x94 0x57 0x3f
end
end
-- 9eccfea36ec60e67a60d2e2786ad847534b1f689c91362e041570ca
end
end
end)

-- f43e66eaf55abfc9d6336c19f893139b0801221cd0e6cbe2ab

task.spawn(function()
-- 0x57 0xcc 0x9f 0x6f 0x80
whilecrossGui.Parentdo
-- 110010010001001100000100010100011011001010
_5eb6274d0.RenderStepped:Wait()
-- 780580110d72e959b81cffa48e3aa980dd54c78ce43d5053859ba8
local_d8ff78743=Cfg.Troll.TapTargetandCfg.UI.Crosshair
-- 00011001010011111111001010000100110110111000001010
ifCfg.UI.HideCrossOnMenuandmenuandmenu.Visiblethen_d8ff78743=falseend
-- 101000100001010011111111111001100000011101
ifnot_d8ff78743then
-- 0xc9 0x7c 0x5e 0x20 0x88 0x4e
crosshair.Visible,reticle.Visible,trackLine.Visible=false,false,false
-- 100111011010010110110011001010101101001
else
crosshair.Visible=true
local_55b7cd=_907005:GetMouseLocation()
-- 806bdea84f53c4cad14ca60a85ceed1d2e3a
crosshair.Position=UDim2.fromOffset(_55b7cd.X,_55b7cd.Y)
crosshair.Size=UDim2.fromOffset(Cfg.UI.CrosshairSize,Cfg.UI.CrosshairSize)
-- 100011010110110000111111000010011101100111100110110
for_6eb585,_9d94f16inipairs(crosshair:GetChildren())do
if_9d94f16:IsA(_045899(70, 114, 97, 109, 101))and_9d94f16~=crosshairthen_9d94f16:Destroy()end
-- 0111000000011110100101011111
end
local_63acf25,_8ae252=Cfg.UI.CrosshairSize,Cfg.UI.CrosshairThick
-- 101100100111111001000010001
local_3f147d0fd=math.max(6,math.floor(_63acf25*0.32))
-- 0xc4 0x44 0xd4
local_212b5=math.max(2,math.floor(_63acf25*0.15))
for_314ab80,_e1d85acinipairs({
-- 0xd4 0xb0 0x86 0xa6 0x22
{Vector2.new(0,-(_212b5+_3f147d0fd/2)),Vector2.new(_8ae252,_3f147d0fd)},
{Vector2.new(0,(_212b5+_3f147d0fd/2)),Vector2.new(_8ae252,_3f147d0fd)},
-- 0x31 0x48 0x18 0xd7
{Vector2.new(-(_212b5+_3f147d0fd/2),0),Vector2.new(_3f147d0fd,_8ae252)},
-- a312696e695fb74a50de93178dee12f0d7aa3cd38977658ef6
{Vector2.new((_212b5+_3f147d0fd/2),0),Vector2.new(_3f147d0fd,_8ae252)},
-- 0xc7 0xda 0xf8 0x8a 0xda
})do
-- 0xc9 0x55 0x21
local_3ffbd=new(_045899(70, 114, 97, 109, 101),{Size=UDim2.fromOffset(_e1d85ac[2].X,_e1d85ac[2].Y),
-- 1101010110011011110110011110011101100000100110110110
Position=UDim2.new(0.5,_e1d85ac[1].X,0.5,_e1d85ac[1].Y),
-- 80338fa5486277330439b5d434daab
AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Theme.neon,
BackgroundTransparency=0.15,BorderSizePixel=0,ZIndex=5},crosshair)
corner(_3ffbd,1)
-- 0x9e 0x84 0x25 0xeb 0xbd
end
-- 010000001001101001100010100100101110
local_bedcba=_4cad80:ViewportPointToRay(_55b7cd.X,_55b7cd.Y)
local_477baa6f7=RaycastParams.new()
-- 1110001101110000010011111101000
_477baa6f7.FilterType=Enum.RaycastFilterType.Exclude
_477baa6f7.FilterDescendantsInstances={_7b4ffe4.Character}
local_c9143=workspace:Raycast(_bedcba.Origin,_bedcba.Direction*3000,_477baa6f7)
-- 0xa8 0xad 0x83
local_08ba6a=nil
if_c9143and_c9143.Instancethen
local_1000735=_c9143.Instance:FindFirstAncestorOfClass(_045899(77, 111, 100, 101, 108))
-- 0x35 0x2c 0x79 0x03 0xeb
if_1000735then
local_170fa793c=_12573772d:GetPlayerFromCharacter(_1000735)
-- 0x1d 0xb5 0x10 0xb2
if_170fa793cand_170fa793c~=_7b4ffe4then_08ba6a=_170fa793cend
end
end
-- 0x57 0x86 0x24 0xd2
ifnot_08ba6athen
local_9a0ca6,_9e03620=nil,Cfg.Troll.TapRadius
for_0a2fb1,_46142inipairs(_12573772d:GetPlayers())do
-- 1110101110110111011011111101000101101111110000000011101
if_46142~=_7b4ffe4and_46142.Characterthen
-- 1001110101111111000101011111011101111011111
local_c0d3e09=_46142.Character:FindFirstChild(_045899(72, 101, 97, 100))
-- 0110011000110100000110010101
if_c0d3e09then
-- 0x39 0x58 0x12 0x03
local_f58ca8e,_992a0d572=_4cad80:WorldToViewportPoint(_c0d3e09.Position)
if_992a0d572and_f58ca8e.Z>0then
local_2f1570424=(Vector2.new(_f58ca8e.X,_f58ca8e.Y)-_55b7cd).Magnitude
-- 0xc0 0xc0 0x21 0xd7 0x8f
if_2f1570424<=_9e03620then_9a0ca6,_9e03620=_46142,_2f1570424end
-- 0x82 0xfb 0xe4 0x7e 0x84
end
-- 0xde 0x25 0x4d 0xad 0x37
end
-- 001001100000001111111101111011011000110010010111111101
end
end
_08ba6a=_9a0ca6
end
TS.hovered=_08ba6a
-- 0x9b 0x5c 0x22 0x21 0xd7
if_08ba6aand_08ba6a.Characterthen
-- 0x8a 0x98 0x52 0xd8
local_c073666=_08ba6a.Character:FindFirstChild(_045899(72, 101, 97, 100))
local_ede454f=_08ba6a.Character:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
-- 0xaf 0xb5 0xd4 0x84 0x67 0xb2
if_c073666and_ede454fthen
-- ad5b2ed14db6f15b6be83416bd2
local_93289153,_6cc0e8b=_4cad80:WorldToViewportPoint(_c073666.Position)
-- f895ca238b2a8856e1c51ce882
if_6cc0e8band_93289153.Z>0then
local_e2ed8=reticleColour(_08ba6a)
-- 2eff770de2111bedc269c0cd969ade665699f5b6dafec4f7bd96b50a0a
reticle.Visible=true
local_19825=Cfg.UI.CrosshairPulseand(0.96+math.sin(tick()*7)*0.06)or1
local_08127816=RSIZE*_19825
-- 0x85 0x25 0x8d 0xb4
reticle.Position=UDim2.fromOffset(_93289153.X,_93289153.Y)
reticle.Size=UDim2.fromOffset(_08127816,_08127816)
-- 0xbc 0x58 0x2d 0x40
local_b48995=_08127816/RSIZE
ring1.Size=UDim2.fromOffset(_08127816,_08127816)
-- 0x77 0xb3 0xe4
ring2.Size=UDim2.fromOffset(_08127816-14*_b48995,_08127816-14*_b48995)
ring2.Position=UDim2.fromOffset(7*_b48995,7*_b48995)
ring1S.Color,ring2S.Color=_e2ed8,_e2ed8
retName.TextColor3=_e2ed8
retName.Text=(_08ba6a.DisplayNameor_08ba6a.Name).._045899(32)..roleLabel(_08ba6a)
-- 0x1e 0xd2 0xfb 0xf2 0x1f
local_caabf811=(_4cad80.CFrame.Position-_c073666.Position).Magnitude
retDist.Text=string.format(_045899(226, 140, 150, 32, 37, 100, 32, 115, 116, 117, 100, 115),math.floor(_caabf811))
-- 4605f5da5a4a18d689af8a860a919da407
ifCfg.UI.ReticleHPand_ede454fthen
hpBar.Visible=true
local_557fb56=math.clamp(_ede454f.Health/_ede454f.MaxHealth,0,1)
-- 0x95 0x49 0x5f 0x34
hpFill.Size=UDim2.fromScale(1,_557fb56)
-- 0x24 0xed 0xa7 0x15
hpFill.Position=UDim2.fromScale(0,1-_557fb56)
-- 0xe4 0x95 0x8c
hpFill.BackgroundColor3=_557fb56>0.5andTheme.successor(_557fb56>0.25andTheme.goldorTheme.danger)
elsehpBar.Visible=falseend
-- 0x67 0x3f 0xbd
ifCfg.UI.ReticleLinethen
-- 0x70 0xcf 0xf6 0xb5 0xed
local_95a5376a1,_7423b7=_93289153.X-_55b7cd.X,_93289153.Y-_55b7cd.Y
local_ee9c7d0=math.sqrt(_95a5376a1*_95a5376a1+_7423b7*_7423b7)
-- 5cf8ef0a5448a743bf4f115ddda468a161f3192150
if_ee9c7d0>25then
-- 0110001000000001011110111100100110010110101111011000001
trackLine.Visible=true
-- 0xf3 0xb8 0xb2 0x9d
trackLine.Position=UDim2.fromOffset(_55b7cd.X,_55b7cd.Y)
-- 00011100110000110110101111101100101110000111010111110
trackLine.Size=UDim2.fromOffset(_ee9c7d0,1)
trackLine.Rotation=math.deg(math.atan2(_7423b7,_95a5376a1))
-- 732a34e91be4b857b8d22fa3547e5771db4b5684f1da177bb
trackLine.BackgroundColor3=_e2ed8
-- 241f8f32085229c45c7812bd79
elsetrackLine.Visible=falseend
-- 0010110000001111000101010111111001100
elsetrackLine.Visible=falseend
-- 0xda 0xbc 0x0a 0x00 0x52 0x04
else
reticle.Visible,trackLine.Visible=false,false
end
-- 11100110001101011010111010001111111011101010
end
else
reticle.Visible,trackLine.Visible=false,false
end
-- 0x6b 0x24 0x6a 0xea
end
-- 0x86 0x2f 0xd0 0xd6
end
-- 0x81 0x48 0x3f 0x10
end)

-- d275061bb9281e206d9c74daadaa3b2bd6a59b290bf67d81fc4
_5eb6274d0.RenderStepped:Connect(function(_abb803)
pcall(function()
-- 0x65 0x2c 0xdd 0x9e 0x00 0x01
local_8baef5=RA.spectateTarget
-- d4bc0e9a5bd39b1aba56d814909123e8e
if_8baef5and(not_8baef5.Parentornot_8baef5.Character)then
-- 0x74 0xb7 0x64
RA.spectateTarget=nil
-- 0x4c 0x93 0xa5 0xb3
_4cad80.CameraType=Enum.CameraType.Custom
-- 0xad 0x66 0x3e 0x0c 0xa9
RA.spectateZoom=1
-- b69760bdf9d01204945dc1c48896934ec79f4c9118c
return
-- a61c7982a36d0500403f68f34
end
if_8baef5and_8baef5.CharacterandnotCfg.Movement.Freecamthen
-- 0xc6 0x71 0xd6 0x16
local_5d0413=_8baef5.Character:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
if_5d0413then
-- 2b0d0682fa856c74c4d4f2c78b40de5e
_4cad80.CameraType=Enum.CameraType.Scriptable
local_f67026e7=8*RA.spectateZoom
-- 0e4f969fcf962e27634e2abb2a2bfa3c46b9af64c
local_9a93fd=_5d0413.Position+_5d0413.CFrame.LookVector*-_f67026e7+Vector3.new(0,3*RA.spectateZoom,0)
_4cad80.CFrame=_4cad80.CFrame:Lerp(CFrame.new(_9a93fd,_5d0413.Position+_5d0413.CFrame.LookVector),math.clamp(_abb803*6,0,1))
end
elseif_4cad80.CameraType==Enum.CameraType.ScriptableandnotCfg.Movement.Freecamthen
-- 111001011100000010000001110100110110011010010101010111010
_4cad80.CameraType=Enum.CameraType.Custom
-- 1110010010011101010011111110110110101011010
end
-- 0xfe 0x0a 0xa8
end)
end)

-- 0xe1 0xc6 0xf2 0x9b 0x04

aiming=false
-- 0xe7 0xf8 0x85
aimToggled=false
lastMenuToggle=0
functiontbFocused()
local_22708b,_32ccdd=pcall(function()return_907005:GetFocusedTextBox()end)
-- 0xd3 0xb5 0x36 0x4a 0x89
return_22708band_32ccdd~=nil
-- 11100010000001111101010101110100000000010100111010
end
-- 0000010011010111011110110010011001000010010111000000110110
_907005.InputBegan:Connect(function(_93690,_9e3ab)
-- f58ec11947837031f79b75eceb7d673a3b5ce1c0fc24bcd62b9
ifpendingKeybindthen
-- 10001000011111100011101110101110011110010
local_e223e74db=pendingKeybind.path
local_f444a29ed=pendingKeybind.raw
local_3479ff5=nil
if_93690.UserInputType==Enum.UserInputType.Keyboardthen
if_93690.KeyCode==Enum.KeyCode.EscapethenpendingKeybind=nil;returnend
_3479ff5=_93690.KeyCode
-- 0x68 0xb6 0xd2
elseif_93690.UserInputType==Enum.UserInputType.MouseButton1
or_93690.UserInputType==Enum.UserInputType.MouseButton2
-- 010001010110010111001101011100
or_93690.UserInputType==Enum.UserInputType.MouseButton3then
_3479ff5=_93690.UserInputType
end
if_3479ff5then
-- 11100010111001100010001100101110110010011
if_f444a29edthensetPath(Cfg,_e223e74db,_3479ff5)
elseCfg.Binds[_e223e74db]=_3479ff5end
-- 40bf1279464d5e6db4d0012f25904cd67bfc699454cf997c98154922e
ifpendingKeybindandpendingKeybind.btnthenpendingKeybind.btn.Text=_3479ff5.Nameend
pendingKeybind=nil
-- 0xd8 0xde 0x77 0x8d
pcall(refreshHUD)
-- 0xba 0xf8 0xe5 0xef
end
return
end
if_93690.UserInputType==Enum.UserInputType.KeyboardandnottbFocused()then
-- 110011110111001110111111
ifCfg.UI.MenuKeyand_93690.KeyCode==Cfg.UI.MenuKeythen
-- 100100011100011110010011000001110010101100100000
local_50431cb=tick()
if_50431cb-lastMenuToggle<0.3thenreturnend
lastMenuToggle=_50431cb
ifmenu.VisiblethencloseMenu()elseopenMenu()end
return
end
-- 0xfc 0x58 0xdf 0x96 0x57
ifCfg.UI.HUDKeyand_93690.KeyCode==Cfg.UI.HUDKeythen
Cfg.UI.HUD=notCfg.UI.HUD;pcall(refreshHUD);return
-- 1110000010010111101111001
end
-- da21e914096b6439068a711e30f801f792daab7bd31cd9820f9eaa35e
ifCfg.UI.ADKeyand_93690.KeyCode==Cfg.UI.ADKeythen
-- ac0cc574b74c86d3cf289bc5ebda5c4887cf97d6c01c5
Cfg.UI.AD=notCfg.UI.AD;pcall(refreshAD);return
end
-- 0x20 0x4d 0x74 0x95 0xbc 0xdb
ifRA.keys.teleportand_93690.KeyCode==RA.keys.teleportthenrunAction(_045899(116, 101, 108, 101, 112, 111, 114, 116));returnend
-- 11000011111101110001011100001000111100001010
ifRA.keys.spectateand_93690.KeyCode==RA.keys.spectatethenrunAction(_045899(115, 112, 101, 99, 116, 97, 116, 101));returnend
-- 0d36767ed84cd2809688cc0475d8b9cb734
ifRA.keys.humpand_93690.KeyCode==RA.keys.humpandCfg.Troll.HumpthenrunAction(_045899(104, 117, 109, 112));returnend
end
if_9e3abthenreturnend
-- 0xdf 0xe9 0x5a 0x64 0xf8
if_93690.UserInputType==Enum.UserInputType.MouseButton2andCfg.Aimbot.EnabledandnottbFocused()then
-- 508ca57b44c105a283d44c7c64
ifCfg.Aimbot.ToggleModethenaimToggled=notaimToggledelseaiming=trueend
return
-- 1100110000000010111110011
end
-- f03f60661a7c71ba47a5fd1de029
if_93690.UserInputType==Enum.UserInputType.MouseButton1andCfg.Troll.TapTargetandnottbFocused()then
-- 074204cde8b82de70b243637a2d2a52472
local_1383e39c=TS.hovered
-- 68cafdd804ee89eb7227a3f604b59baf1067aa960b7f8c00e967
if_1383e39cthen
-- 11111001010010110010001001100101100011110001000
TS.target=_1383e39c
-- 0xa9 0xb2 0x22 0xef 0x2f
HUMP.phase=0;HUMP.smoothVel=0;HUMP.smoothAir=0
-- 1101110110100100101110100
HUMP.lockTimer=1.0;HUMP.awaitingRespawn=false
HUMP.fallHold=0;HUMP.speedMult=1.0;HUMP.ampMult=1.0;HUMP.distMult=1.0
notify(_045899(76, 111, 99, 107, 101, 100, 32, 111, 110),_1383e39c.Name,Theme.success,2.5)
-- 0xd0 0x79 0x74 0x55 0x65 0x30
end
return
-- 0xc1 0xe9 0x7a 0xe9 0x03 0x1a
end
if_93690.UserInputType~=Enum.UserInputType.Keyboardthenreturnend
iftbFocused()thenreturnend
local_2db25e5=_93690.KeyCode
for_93f91,_744790c6inpairs(Cfg.Bindsor{})do
-- 0x61 0x93 0xf5 0xf2 0xb6 0x1a
if_744790c6and_744790c6.EnumType==Enum.KeyCodeand_744790c6==_2db25e5andwidgets[_93f91]then
-- 011111010110111101000000010110010101100000100000
local_d6cd8d14=widgets[_93f91]
-- 0xe2 0xc0 0x2f 0x43 0x5d 0x91
_d6cd8d14.set(not_d6cd8d14.get())
-- 01011111011011010101111101100010000110011010100000011101
end
-- d0ed9783d8bf5750420648fb4d4
end
end)
_907005.InputEnded:Connect(function(_142b95cf7)
-- 0xeb 0x28 0x53
if_142b95cf7.UserInputType==Enum.UserInputType.MouseButton2andnotCfg.Aimbot.ToggleModethen
aiming=false
-- 010011101100011011110001100111101110101100000010001010
end
-- 00101111001101000111001100110100001000
end)
-- 0x84 0xff 0x67 0x61 0x74
_907005.InputChanged:Connect(function(_efd56c)
-- 0101101010111010110001110001001010011111010011110000
if_efd56c.UserInputType==Enum.UserInputType.MouseWheelandRA.spectateTargetthen
RA.spectateZoom=math.clamp(RA.spectateZoom-_efd56c.Position.Z*0.15,0.3,8)
-- d2a017fe7600a32360be3d7def4b516cc40b
end
-- 001010011111100011000011
end)
-- 0x06 0x9e 0xc5 0x46 0x51
logo.MouseButton1Click:Connect(function()
local_3bdff3a0=tick()
if_3bdff3a0-lastMenuToggle<0.3thenreturnend
-- 000001001010110111100100100001001100001001001101
lastMenuToggle=_3bdff3a0
-- 0xd2 0x08 0x54 0xc8 0x0b
ifmenu.VisiblethencloseMenu()elseopenMenu()end
-- 0x15 0xc4 0xc8 0xb8 0x8d
end)


functionbindDown(_35ce9dd0)
-- 1100001001110011001100010001000111
ifnot_35ce9dd0ortypeof(_35ce9dd0)~=_045899(69, 110, 117, 109, 73, 116, 101, 109)thenreturnfalseend
if_35ce9dd0.EnumType==Enum.KeyCodethenreturn_907005:IsKeyDown(_35ce9dd0)end
-- 0xda 0x7a 0xbf 0x70
if_35ce9dd0.EnumType==Enum.UserInputTypethen
-- 85ccc42f9ea30f65c187f220c3ccf20a483fa872ac433a19897c7
if_35ce9dd0==Enum.UserInputType.MouseButton1thenreturn_907005:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)end
if_35ce9dd0==Enum.UserInputType.MouseButton2thenreturn_907005:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)end
-- 0xd5 0xf9 0x48
if_35ce9dd0==Enum.UserInputType.MouseButton3thenreturn_907005:IsMouseButtonPressed(Enum.UserInputType.MouseButton3)end
end
returnfalse
end
-- 1111110100011001011101111101011100
fovCircle=new(_045899(70, 114, 97, 109, 101),{AnchorPoint=Vector2.new(0.5,0.5),
-- 6017deebfb7c5e321a4e0a91d51bd7d314e31a0ace7be8dc25f
Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(200,200),
BackgroundTransparency=1,Visible=false,ZIndex=1},gui)
corner(fovCircle,10000)
-- 0xd0 0x03 0x4c 0xde
tAcc(stroke(fovCircle,Theme.neon,1,0.4))
-- de23795ff438ca5cf2c67499b01e748baebc7db07f
functionaimTarget()
-- 0x81 0x00 0x03 0xb8
local_65809f=_7b4ffe4.Character
-- d4d5b35a8a7412aea0668e23b97cbb2c6e0487862e8
ifnot_65809fthenreturnnilend
local_b35eb1e4=_65809f:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
ifnot_b35eb1e4thenreturnnilend
-- c32186cf747a03070d53c07c2a84d711ad9a56458fd32fbac9619c52840
local_744d4=Vector2.new(_4cad80.ViewportSize.X/2,_4cad80.ViewportSize.Y/2)
-- 1001011000001010000111110010
local_d500d=Cfg.Aimbot.FOV
local_c80521f0e,_70bb5,_94435bde8=nil,_d500d,nil
-- 2b24b925702aa0afa3b027a8b67
for_42275,_fc0301ainipairs(_12573772d:GetPlayers())do
-- 0x47 0xe7 0x2a 0xd8 0x16
if_fc0301a~=_7b4ffe4and_fc0301a.Characterthen
local_bcb8cc=Cfg.Aimbot.TeamCheckandisAlly(_fc0301a)
ifnot_bcb8ccthen
local_2ada404=_fc0301a.Character:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
-- 0x93 0xfd 0x1d 0xf7 0x43 0x70
if_2ada404and_2ada404.Health>0then
-- 011011010001010110010100010000111010101101
local_c0b2c91b=_fc0301a.Character:FindFirstChild(Cfg.Aimbot.TargetPart)
-- 0x15 0x26 0x4f
or_fc0301a.Character:FindFirstChild(_045899(72, 101, 97, 100))
if_c0b2c91bthen
local_63aab36=(_b35eb1e4.Position-_c0b2c91b.Position).Magnitude
-- 0x68 0xbc 0x07 0x3b
if_63aab36<=Cfg.Aimbot.MaxDistthen
-- 101010100100111110011101001111111000100010110
local_3c464e8,_304933=_4cad80:WorldToViewportPoint(_c0b2c91b.Position)
if_304933and_3c464e8.Z>0then
-- fa7b2486253bb8f0e4ac3e0cbefdc5b3f59e3b16
local_e6e5113=(Vector2.new(_3c464e8.X,_3c464e8.Y)-_744d4).Magnitude
-- 0x6d 0xb0 0xc2 0x0f 0xe0
if_e6e5113<=_70bb5then
local_f44035872=true
-- 11100111111000010011101010
ifCfg.Aimbot.VisibleOnlythen
local_d43a83113=RaycastParams.new()
-- 0x08 0x54 0x6f
_d43a83113.FilterType=Enum.RaycastFilterType.Exclude
-- 0x2c 0x61 0xfb
_d43a83113.FilterDescendantsInstances={_65809f}
local_bed55ae=workspace:Raycast(_4cad80.CFrame.Position,_c0b2c91b.Position-_4cad80.CFrame.Position,_d43a83113)
_f44035872=_bed55ae==nilor_bed55ae.Instance:IsDescendantOf(_c0b2c91b.Parent)
end
if_f44035872then_c80521f0e,_70bb5,_94435bde8=_fc0301a,_e6e5113,_c0b2c91bend
-- 111000100010010011000011101100000101100110110001111
end
-- 0xf8 0xe6 0x87 0x26 0xd7
end
-- 0xdb 0xef 0x04
end
end
-- 15f1a7db14b10fb676df703386d91795ed237eb92ab6aecfe6b3116d003
end
-- 0x0d 0x28 0x06 0x21 0xa1 0x11
end
end
-- 0x4f 0x18 0x95
end
return_94435bde8,_c80521f0e
end
-- 0x46 0x83 0x36 0x04
_5eb6274d0.RenderStepped:Connect(function(_40702f2)
pcall(function()
-- 89cccaebf1bea3342f3fa97e685915ff27751d
local_a0df18=Cfg.Aimbot.EnabledandCfg.Aimbot.ShowCircle
iffovCircle.Visible~=_a0df18thenfovCircle.Visible=_a0df18end
-- 0011101000100100001111010001101101001110101110
if_a0df18thenfovCircle.Size=UDim2.fromOffset(Cfg.Aimbot.FOV*2,Cfg.Aimbot.FOV*2)end
ifnotCfg.Aimbot.Enabledthenaiming=false;aimToggled=false;returnend
ifCfg.Aimbot.ToggleModethenaiming=aimToggled
elseaiming=bindDown(Cfg.Aimbot.Key)end
ifnotaimingthenreturnend
local_a9737a4=aimTarget()
ifnot_a9737a4thenreturnend
-- 0xb5 0x56 0x40 0x8d 0x67
local_1d56e3495=Cfg.Aimbot.Strength
ifCfg.Aimbot.Humanizethen_1d56e3495=_1d56e3495*(0.85+math.random()*0.3)end
-- 0x07 0x56 0x23 0x41 0x8a 0xcc
local_bc5e57=math.max(Cfg.Aimbot.Smoothness,1)
-- 0xb3 0x65 0x10
local_34d321=math.clamp(_40702f2*(_1d56e3495/_bc5e57)*30,0,1)
_4cad80.CFrame=_4cad80.CFrame:Lerp(CFrame.new(_4cad80.CFrame.Position,_a9737a4.Position),_34d321)
end)
-- 369474e09828bfc16ad7d78159504b778555e10c1f52e117194e775434
end)


-- 7003632ba65fad89b48f61ae876fc0925b590ced2
triggerAcc=0
-- 0xbd 0x97 0x34 0x64 0x75
_5eb6274d0.Heartbeat:Connect(function(_791da69)
pcall(function()
-- 111011110111000001111111110101001110111111000110111
ifnotCfg.Trigger.Enabledthenreturnend
-- 122ea2af99440790b3577f5634fc2826e573
ifnotbindDown(Cfg.Trigger.Key)thenreturnend
triggerAcc=triggerAcc+_791da69
-- 00000101111101100110001111110110
iftriggerAcc<Cfg.Trigger.Delaythenreturnend
-- 0xdc 0x3b 0xe6 0xd5
triggerAcc=0
-- 70d7400d522153f35e5aa77f79aca425f
local_177b4b407=_7b4ffe4:GetMouse()
-- 0xa5 0xb7 0xc3 0x4b
local_7c51b71cb=_177b4b407and_177b4b407.Target
ifnot_7c51b71cbthenreturnend
-- 0100101100100111101001011111000001110001001
local_c6fc3d36d=_7c51b71cb:FindFirstAncestorOfClass(_045899(77, 111, 100, 101, 108))
ifnot_c6fc3d36dthenreturnend
-- 0x2b 0xec 0x8b 0x01 0xd9
local_baaa622ee=_12573772d:GetPlayerFromCharacter(_c6fc3d36d)
ifnot_baaa622eeor_baaa622ee==_7b4ffe4thenreturnend
-- 950c57e2703be6d73a368ce38f39cff0c3cd4db935e
ifCfg.Trigger.TeamCheckandisAlly(_baaa622ee)thenreturnend
local_73690d=_baaa622ee.Characterand_baaa622ee.Character:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
ifnot_73690dor_73690d.Health<=0thenreturnend
-- 0x86 0xb5 0xb6
local_52ae911=(_177b4b407.Hit.Position-_4cad80.CFrame.Position).Magnitude
if_52ae911>Cfg.Trigger.Radiusthenreturnend
-- 1110011101000101011101100100011100111101111
pcall(function()
_15f30f58:CaptureController()
_15f30f58:ClickButton1(Vector2.new(_177b4b407.X,_177b4b407.Y))
end)
end)
-- 011000011000001001110110
end)


do
local_aa6a1=false
-- 001101000010010000111011111
_5eb6274d0.Heartbeat:Connect(function()
-- 10011111010110000111010110101001001001
pcall(function()
-- 709e7d10141c64347493dd7b4ed95be920cf256ea9b60189
ifCfg.Visuals.InfZoom~=_aa6a1then
_aa6a1=Cfg.Visuals.InfZoom
-- 9a6508ab1a52ab99480c2e20f018dbf5f46f8
if_aa6a1then
-- f1d9b2fc36c35a597bee225e40fc9af81d6ba092f51f65cd86
pcall(function()
_7b4ffe4.CameraMaxZoomDistance=1000
-- 0xdc 0xd3 0xb9 0x21 0xf9 0xc8
_7b4ffe4.CameraMinZoomDistance=Cfg.Visuals.FOVMinor0.5
end)
else
-- 0xb6 0x8a 0x90
pcall(function()
_7b4ffe4.CameraMaxZoomDistance=128
_7b4ffe4.CameraMinZoomDistance=0.5
-- 0x55 0xe7 0x64 0x60 0x7d 0x38
end)
-- 0xf4 0x2f 0x31
end
end
-- 0xc1 0x5d 0x61 0xf3 0xa4 0xc4
ifCfg.Visuals.InfZoomthen
-- 59424c464e447692760f62600478f86aabeaf22f1e580c648de30
pcall(function()
if_7b4ffe4.CameraMaxZoomDistance<900then_7b4ffe4.CameraMaxZoomDistance=1000end
end)
-- 86d5b73dc089d6a255f46615010d29a07dbd61e50d
end
-- fa3729a0782f4669d7959524aedb1ee78d3203b7
end)
end)
-- 0xbf 0x40 0xae
end
espData={}

-- 39b9a5be0872c9f471fe0bb087704

local_b908ebd2={}
-- b49d8598e9e554e5addf12625c
localfunctiongetRoleColor(role)
-- 3aa0c140f474748f28870bc26347c8
ifrole==_045899(77, 117, 114, 100, 101, 114, 101, 114)thenreturnColor3.fromRGB(230,46,46)end
ifrole==_045899(83, 104, 101, 114, 105, 102, 102)thenreturnColor3.fromRGB(90,160,255)end
-- 10000000011000010000111000101110111001101
returnColor3.fromRGB(96,226,126)
-- 0x90 0xe6 0x26
end
-- 00011011011111010111111101001101
localfunctiongetRoleName(role)
-- 02b127be6a3a81d798093d6f2110541503
ifrole==_045899(77, 117, 114, 100, 101, 114, 101, 114)thenreturn_045899(91, 77, 85, 82, 68, 69, 82, 69, 82, 93)end
ifrole==_045899(83, 104, 101, 114, 105, 102, 102)thenreturn_045899(91, 83, 72, 69, 82, 73, 70, 70, 93)end
-- 0x6a 0xa5 0x58
return_045899(91, 73, 78, 78, 79, 67, 69, 78, 84, 93)
end
-- 0x9c 0x75 0x06 0xea 0x28 0x9c
localfunctiondetectRole(player)
local_63cb1=player.Character
ifnot_63cb1thenreturn_045899(73, 110, 110, 111, 99, 101, 110, 116)end
-- 0xb6 0x46 0x7f
local_fce0b332=_63cb1:FindFirstChild(_045899(75, 110, 105, 102, 101))or(player.Backpackandplayer.Backpack:FindFirstChild(_045899(75, 110, 105, 102, 101)))
local_08703c6=_63cb1:FindFirstChild(_045899(71, 117, 110))or(player.Backpackandplayer.Backpack:FindFirstChild(_045899(71, 117, 110)))
-- ff3de3e4d7b96d788d0f86d3439a229d09eed90ce41045dceb8d73fadd
if_fce0b332thenreturn_045899(77, 117, 114, 100, 101, 114, 101, 114)end
-- 0xa1 0x11 0xb2 0xee 0xc7 0x40
if_08703c6thenreturn_045899(83, 104, 101, 114, 105, 102, 102)end
-- 01011111101111001110100000011001111100010000
return_045899(73, 110, 110, 111, 99, 101, 110, 116)
-- 0xb4 0x16 0x9e 0xf1 0x3a
end
-- 0xe5 0x34 0xb0 0xdf 0x39
task.spawn(function()
-- 0xef 0x6a 0x32 0x12
whileguiandgui.Parentdo
-- 001101010000010000010111101111110010101101000
for_8ffe64,_3ed4a6dinipairs(_12573772d:GetPlayers())do
if_3ed4a6d~=_7b4ffe4then
-- 0111001010000110100100101000001111110101110010011010
_b908ebd2[_3ed4a6d.UserId]=detectRole(_3ed4a6d)
end
end
-- b35063ab91a286dd24abd8d94ee78de813ab6e474ccad3a83dee6d8387
task.wait(1)
-- cff64b2261ca470c28f2f184c0f9530fa3a8624dfccb371295fc7cbaed
end
end)


functionremoveESP(_10a0e)
local_f65898=espData[_10a0e]
-- 11111111011101010010110110111011001110011011110100
if_f65898then
-- b6196033a6f6aaf3717645a82
if_f65898.hlthen_f65898.hl:Destroy()end
-- 017ee408533559e659d4fb96de966dc
if_f65898.bbthen_f65898.bb:Destroy()end
espData[_10a0e]=nil
end
end

-- 0x46 0xda 0x88 0x56 0x95
_5eb6274d0.Heartbeat:Connect(function()
-- 0x2d 0xab 0xb6 0x7c 0x14
pcall(function()
-- 0x62 0x96 0x70 0x94
ifnotCfg.Visuals.Enabledthen
for_2593362cinpairs(espData)doremoveESP(_2593362c)end
return
end
-- 01000110001110110101001001100000110001011000111
for_3e2227a7,_f9c1ebc2inipairs(_12573772d:GetPlayers())do
-- 0100000011110111010101010101100111001001100101100
if_f9c1ebc2~=_7b4ffe4then
-- 0xd7 0x56 0x7f 0x9d 0xa2 0x05
local_c7888b=_f9c1ebc2.Character
-- 000001101011100011001110111000000000010110
local_4d6682=_c7888band_c7888b:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
-- 0011111111111011000011100001000011110
local_2795a1b4=_c7888band_c7888b:FindFirstChild(_045899(72, 101, 97, 100))
-- 0x43 0x3c 0x20 0x65 0xd4
if_c7888band_4d6682and_4d6682.Health>0and_2795a1b4then
-- 0x94 0x06 0x15
local_7d8669,_0c609f1,_f89b5b87
ifCfg.Visuals.Mode==_045899(82, 111, 108, 101)then
-- 0x1c 0x68 0x6a 0xd4 0x7b 0xa5
local_9bdeb9f2=_b908ebd2[_f9c1ebc2.UserId]or_045899(73, 110, 110, 111, 99, 101, 110, 116)
-- 0xfe 0x4b 0x5b
_7d8669=getRoleColor(_9bdeb9f2)
-- 10b6fade2a1082f2dd5b7ec6d7f64e7789a2
_0c609f1=Color3.new(_7d8669.R*1.15,_7d8669.G*1.15,_7d8669.B*1.15)
_f89b5b87=getRoleName(_9bdeb9f2)
-- 0x6f 0xe0 0x91
else
-- 0x79 0xcd 0xea 0xd9 0xbf
_7d8669=espColour(_f9c1ebc2)
-- 1c8587162d99ae8ac4d24e5e97a5d4630860872
_0c609f1=espOutline(_f9c1ebc2)
_f89b5b87=roleLabel(_f9c1ebc2)
end
-- f76e8cc691b651033ae8993340b3576639a
local_33ed2=getRankFor(_f9c1ebc2.UserId)
local_fb838c=_33ed2andBADGE_STYLE[_33ed2]
-- 001100010010011100000111001010010010000100101011110011
local_747d1e10=_045899()
-- 0x87 0x04 0xac
if_fb838cthen
_7d8669=_fb838c.color
_0c609f1=Color3.new(_7d8669.R*1.2,_7d8669.G*1.2,_7d8669.B*1.2)
-- c64893e4fa5d3e93160a452c71fc1659df83b053191e6bc94874c9c066b
_747d1e10=_fb838c.emoji.._045899(32)
-- b06f33704abeabec5d73fd856b64f6c25f5f662597
end
-- 0101111100010110011010111101000010000011100
local_8081b27=espData[_f9c1ebc2]
-- 0x34 0xf6 0x49 0x98 0x32
ifnot_8081b27ornot_8081b27.hlor_8081b27.hl.Adornee~=_c7888bthen
-- b4033b0ce49b3e637cd5f08fe3
removeESP(_f9c1ebc2)
local_c4f00f=Instance.new(_045899(72, 105, 103, 104, 108, 105, 103, 104, 116))
_c4f00f.Name=_045899(82, 101, 97, 112, 101, 114, 69, 83, 80)
-- 0xfd 0xe4 0xd2
_c4f00f.Adornee=_c7888b
-- 011110000011100010010111001000110011111100001
_c4f00f.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
-- 111011000011111111000000011
_c4f00f.FillColor=_7d8669
_c4f00f.OutlineColor=_0c609f1
-- 0x88 0x10 0x96 0x08 0x89
_c4f00f.FillTransparency=Cfg.Visuals.Fill
_c4f00f.OutlineTransparency=0
-- 0x0e 0xee 0x66 0x60
_c4f00f.Parent=_c7888b
local_2cdf5198=new(_045899(66, 105, 108, 108, 98, 111, 97, 114, 100, 71, 117, 105),{Name=_045899(82, 101, 97, 112, 101, 114, 84, 97, 103),
-- 28ca0b425fc4010d550867d41eb71377b4b7335ae9c493cf6844cb2
Size=UDim2.fromOffset(220,64),
-- 0xc9 0x40 0xb9 0x0f 0xa2
StudsOffsetWorldSpace=Vector3.new(0,3.2,0),
-- 10011000011111001010111001000110100101
AlwaysOnTop=true,Adornee=_2795a1b4,Parent=_2795a1b4})
-- 0111001011100000010111000000111101
local_2110d1ab=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{BackgroundTransparency=1,
Size=UDim2.new(1,0,0,18),Font=Enum.Font.GothamBold,
-- 0000100111100111010110000001000011101010100100000001100101
TextSize=13,TextColor3=_0c609f1,
-- 5d36c7c76c28cd7d6c97422cdcdab4943363e2aaf1d92df524f85ba
TextStrokeTransparency=0.2,TextStrokeColor3=Color3.new(0,0,0),
-- 0x29 0x1d 0xdd 0xf9 0x97
Text=_747d1e10.._f9c1ebc2.Name,Visible=Cfg.Visuals.NameTags,Parent=_2cdf5198})
-- 0x70 0x62 0x98 0x4a 0xfd 0xbd
local_bed5157=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{BackgroundTransparency=1,
-- 11110111100001100010100111110110111001
Position=UDim2.new(0,0,0,18),Size=UDim2.new(1,0,0,14),
Font=Enum.Font.Gotham,TextSize=11,
-- 11110000001111011111111001011110010100001101011000011
TextColor3=Color3.fromRGB(200,210,230),
-- 0x05 0x22 0xaf 0x94 0xdb
TextStrokeTransparency=0.5,TextStrokeColor3=Color3.new(0,0,0),
-- cf2a47e33d162b79021f3e2525c2a
Text=_045899(),Visible=Cfg.Visuals.Distance,Parent=_2cdf5198})
local_c6100=new(_045899(84, 101, 120, 116, 76, 97, 98, 101, 108),{BackgroundTransparency=1,
Position=UDim2.new(0,0,0,34),Size=UDim2.new(1,0,0,16),
Font=Enum.Font.GothamBlack,TextSize=12,
TextColor3=_7d8669,TextStrokeTransparency=0.3,
-- 0x0f 0xfc 0x8c 0xcf 0x6a 0x9e
TextStrokeColor3=Color3.new(0,0,0),
-- 0xab 0x0c 0x71 0xb5 0x19 0x66
Text=_045899(),Visible=Cfg.Visuals.ShowRole,Parent=_2cdf5198})
-- 00101000111010000101010111101100001101111010000100111
espData[_f9c1ebc2]={hl=_c4f00f,bb=_2cdf5198,nameLbl=_2110d1ab,distLbl=_bed5157,roleLbl=_c6100}
-- b311c95fa70cb39ad10d0d6eadb
_8081b27=espData[_f9c1ebc2]
end
-- 0x15 0xfa 0x1b 0x03 0x6b 0x7b
if_8081b27.hlthen
_8081b27.hl.FillColor=_7d8669
_8081b27.hl.OutlineColor=_0c609f1
-- 9c2f8445cca6cbc7a23494570c9c36effd3f02f20c2528
_8081b27.hl.FillTransparency=Cfg.Visuals.Fill
-- 101010101001011011000101011111
end
if_8081b27.nameLblthen
-- 000000100010001110001110000001011011100110110111
_8081b27.nameLbl.Visible=Cfg.Visuals.NameTags
_8081b27.nameLbl.TextColor3=_0c609f1
_8081b27.nameLbl.Text=_747d1e10.._f9c1ebc2.Name
-- 0x0c 0x89 0xff
end
if_8081b27.distLblthen
-- 1fd1582cc4a2213cc1b1324bea510f98d32c8d8a29447411010e0aeb
_8081b27.distLbl.Visible=Cfg.Visuals.Distance
-- 21486dc180ff8c9a2f85856ae14b271a5f0cb14c055dda90a46c
ifCfg.Visuals.Distancethen
local_adde9a=(_4cad80.CFrame.Position-_2795a1b4.Position).Magnitude
-- e3bc118614f1a24ca59176f079c
_8081b27.distLbl.Text=string.format(_045899(37, 100, 32, 115, 116, 117, 100, 115),math.floor(_adde9a))
-- 0x12 0xc6 0x3d 0xa2
end
end
if_8081b27.roleLblthen
local_a24cfa24=_f89b5b87
if_fb838cthen_a24cfa24=string.format(_045899(37, 115, 32, 37, 115),_fb838c.emoji,_fb838c.label)end
_8081b27.roleLbl.Visible=Cfg.Visuals.ShowRoleand_a24cfa24~=_045899()
if_8081b27.roleLbl.Visiblethen
_8081b27.roleLbl.Text=_a24cfa24
-- 110011000011100010110110110100101011
_8081b27.roleLbl.TextColor3=_7d8669
-- 100110110010100001011011011110
end
-- 7c56da0c1115bdcf2e540d28435edc8b5987b63cdb
end
-- 1534906d5859105c1b1f54af3717febb1f30234f18ed6
else
-- 10010100101010101101001110100011010011111110111001100111
removeESP(_f9c1ebc2)
-- 08111c967950410446a846f40d872099f
end
-- 001010001000100010101110000110101110010001101100
end
-- 09f65b80f4530ceb3216e2fbe310
end
end)
-- 0x8a 0x3a 0x43 0xc6
end)

-- f7b811bb041a8aa88419ac422f361172e16ccf6916a080a26eec07f

-- 0xaa 0x45 0x78 0xbe 0x34
flyBV,flyGyro=nil,nil
flyVelTarget=Vector3.zero
-- 00010010100000110000100100110110110010001111011100
flySmoothedVel=Vector3.zero
-- eb503a4cc263ddf32ec3373706498f
wasFlying=false
-- 1a4e59e7db6015e72c84be429c29d96e359c1dfb14723f7
freecamCF=nil
-- 221107cac11638c5f6f3e3bfbc120564c94af36ef4a67b2cf661668
freecamMult=1
savedWalk,savedJump=16,50
wasFreecam=false
spinAngle=0
autoClickAccum=0
sheriffCD=0
functionstopFly()
-- 1e74ee0933478c7fec88dde738004fd6aebfd75c914
ifflyBVthenflyBV:Destroy();flyBV=nilend
ifflyGyrothenflyGyro:Destroy();flyGyro=nilend
flyVelTarget,flySmoothedVel=Vector3.zero,Vector3.zero
local_01397=hum()
if_01397andnotCfg.Troll.Humpthen_01397.PlatformStand=false;_01397.AutoRotate=trueend
-- 0xff 0x58 0x52 0x13 0x37
end
-- 3e1243ddb273c56c584c1b6c0
functionstartFly()
-- 0x58 0xd5 0x98 0x07 0xb7 0xd4
local_63bac8=_7b4ffe4.Character
local_2f343=_63bac8and_63bac8:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 0xfc 0xf7 0xef 0xbb
local_2081c=_63bac8and_63bac8:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
ifnot_2f343ornot_2081cthenreturnend
-- 1001010010010101011010100100111011110001
ifnot_2081c.PlatformStandthen_2081c.PlatformStand=true;_2081c.AutoRotate=falseend
ifnotflyBVornotflyBV.Parentthen
-- c6c1e8fd87585e447965b2e8fb8f44a697cea287
ifflyBVthenflyBV:Destroy()end
flyBV=Instance.new(_045899(66, 111, 100, 121, 86, 101, 108, 111, 99, 105, 116, 121))
-- 0xb5 0x87 0x0a 0x27 0xe5 0xdd
flyBV.MaxForce=Vector3.new(1e6,1e6,1e6)
flyBV.P=1250
-- a8983f071cac14606d10cd722f856d348369012fd5
flyBV.Velocity=Vector3.zero
flyBV.Parent=_2f343
-- 0xe3 0x64 0x81 0x01
end
-- 001111000110011010001000
ifnotflyGyroornotflyGyro.Parentthen
-- 1000111010100000100100111001110010000011001011001
ifflyGyrothenflyGyro:Destroy()end
flyGyro=Instance.new(_045899(66, 111, 100, 121, 71, 121, 114, 111))
-- 0x23 0xd2 0x12 0x0a 0x25
flyGyro.MaxTorque=Vector3.new(1e6,1e6,1e6)
flyGyro.P=3000;flyGyro.D=500
-- 421a9135708f181c16fa2b1d1324
flyGyro.CFrame=_2f343.CFrame
-- 0xac 0x8b 0x5a 0x4c
flyGyro.Parent=_2f343
end
end
-- 0x68 0x21 0xee 0xa4 0x59
NOCLIP_GROUP=_045899(82, 101, 97, 112, 101, 114, 78, 111, 99, 108, 105, 112)
-- 0000011010000100010101001101100001111111111
noclipOK=false
pcall(function()_03dc40c:RegisterCollisionGroup(NOCLIP_GROUP)end)
-- 6d9ca1cc690c05a87b4184aea04e4b7a953fb12f206d0826cc
pcall(function()
_03dc40c:CollisionGroupSetCollidable(NOCLIP_GROUP,NOCLIP_GROUP,false)
_03dc40c:CollisionGroupSetCollidable(NOCLIP_GROUP,_045899(68, 101, 102, 97, 117, 108, 116),false)
-- 0x67 0xdd 0x9c 0x45 0x3f 0x45
noclipOK=true
end)
-- 29b21a33884a1eb58db8c9d0fa19904145e7fa3b23545a7da5c3
functionnoclipChar(_622538352)
ifnot_622538352thenreturnend
-- 01001000100110000011111000
for_d8dcc,_5576ed0d0inipairs(_622538352:GetDescendants())do
if_5576ed0d0:IsA(_045899(66, 97, 115, 101, 80, 97, 114, 116))then
-- a28003f181aedbd251e3a0eb9c5f9cea4e1ea6a390ce24eaa7
if_5576ed0d0.CanCollidethen_5576ed0d0.CanCollide=falseend
ifnoclipOKthenpcall(function()_5576ed0d0.CollisionGroup=NOCLIP_GROUPend)end
end
-- 011101001001010000000010011010100110110
end
end
-- a98652101fcc8ab15296af4bc1f29b652c96c51eadd7
_907005.InputChanged:Connect(function(_91bd4d78)
-- 0110111111110001110010101111110010010111
ifnotCfg.Movement.Freecamthenreturnend
if_91bd4d78.UserInputType==Enum.UserInputType.MouseWheelthen
-- 0xdc 0xec 0x76
freecamMult=math.clamp(freecamMult+_91bd4d78.Position.Z*0.15,0.2,6)
-- ee51a6e269c5ad5110020aab53d0ed74ce6956dc1502bcf12f43913f
end
end)
_5eb6274d0.Heartbeat:Connect(function(_a68b14322)
pcall(function()
-- 9e2e4c8db75fa9a1af48446a47926dc0b5d60
local_65babcce=_7b4ffe4.Character
if_65babccethen
ifCfg.Movement.NoclipthennoclipChar(_65babcce)
else
-- 13abe3f6760ef5502193ded2d50f2a7f28e
for_63d09e4,_a05bfinipairs(_65babcce:GetDescendants())do
if_a05bf:IsA(_045899(66, 97, 115, 101, 80, 97, 114, 116))andnot_a05bf.CanCollidethen
-- 0xe1 0x6d 0x29 0x62 0x16
_a05bf.CanCollide=true
-- 00000110001000010000010010011000001111101011110010111110
ifnoclipOKthenpcall(function()_a05bf.CollisionGroup=_045899(68, 101, 102, 97, 117, 108, 116)end)end
-- 111111111011001101101000010000100111110110010100
end
end
-- 0x74 0x65 0x2e 0x2d
end
-- 0xdb 0xe7 0x9f
end
ifCfg.Movement.FreecamandnotwasFreecamthen
local_5ebe9=hum()
if_5ebe9then
-- bf108ed302ae87bb42642cac94289b1f71b4604407767ef4f12534fa3
savedWalk,savedJump=_5ebe9.WalkSpeed,_5ebe9.JumpPower
-- 0x60 0x3a 0xc9 0x43 0xe0
_5ebe9.WalkSpeed,_5ebe9.JumpPower=0,0
end
-- 0x3e 0x29 0x43
freecamCF=_4cad80.CFrame
-- 422ba6d35244b25c5d832c8a3bcda155a5a3aa30559d2b2b35
_4cad80.CameraType=Enum.CameraType.Scriptable
-- 0eb473d1ff8fd31a8ffe657fd21dfcbba2ff8760b
_907005.MouseBehavior=Enum.MouseBehavior.LockCenter
-- 2c6b37bedb25ad6b5aa0264147ece80
wasFreecam=true
-- 001011011100011100000110111111
elseifnotCfg.Movement.FreecamandwasFreecamthen
-- 0010010000000011010010010101001100101
local_646b8=hum()
if_646b8then_646b8.WalkSpeed=savedWalkor16;_646b8.JumpPower=savedJumpor50end
-- 7d674395fa486b36507642cb9a3b8e0a3da1f79fc4f8eb
_4cad80.CameraType=Enum.CameraType.Custom
_907005.MouseBehavior=Enum.MouseBehavior.Default
-- 111101111100000111001011000111110001111010101101000000111
freecamCF,wasFreecam=nil,false
-- 0xbc 0x19 0x1e 0x3d
end
ifCfg.Movement.FreecamandfreecamCFthen
-- 62c302b5f12e4615cb8f25893e5f7afde386875
local_94d742=Cfg.Movement.FreecamSens*0.3
local_a1011=_907005:GetMouseDelta()
-- 000010100101000010000001010110101100
if_a1011.Magnitude>0then
-- da452704fa2452622ddce6337ab4525722bf07b97821
freecamCF=freecamCF*CFrame.Angles(math.rad(-_a1011.Y*_94d742),math.rad(-_a1011.X*_94d742),0)
end
-- 11000011011110011011101010111101101011101100001000
local_668430=Vector3.zero
-- adcd63b7bace69b1657846532faaa23c
if_907005:IsKeyDown(Enum.KeyCode.W)then_668430=_668430+freecamCF.LookVectorend
-- 0000111000100100000010101010111101000100101000110010110
if_907005:IsKeyDown(Enum.KeyCode.S)then_668430=_668430-freecamCF.LookVectorend
-- 01111010100100001110100011000110000011101010100011
if_907005:IsKeyDown(Enum.KeyCode.A)then_668430=_668430-freecamCF.RightVectorend
-- 000100100001101000110101111100101000111000111110
if_907005:IsKeyDown(Enum.KeyCode.D)then_668430=_668430+freecamCF.RightVectorend
-- 0x8c 0x09 0x77 0xa4 0x73
if_907005:IsKeyDown(Enum.KeyCode.Space)then_668430=_668430+Vector3.new(0,1,0)end
if_907005:IsKeyDown(Enum.KeyCode.LeftControl)then_668430=_668430-Vector3.new(0,1,0)end
-- 000001011010010010011110100010010111001110110101011100101101
local_6bf305e71=_907005:IsKeyDown(Enum.KeyCode.LeftShift)and3or1
if_668430.Magnitude>0then_668430=_668430.Unitend
freecamCF=freecamCF+_668430*Cfg.Movement.FreecamSpeed*_6bf305e71*freecamMult*_a68b14322
-- 0xab 0x22 0xf6
_4cad80.CFrame=freecamCF
-- 1010001011100101011000011011001101110
end
-- 1101011001100101000010101011100111111100010000011
if_65babccethen
local_d19f62f1=_65babcce:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
local_c8ca8e1=_65babcce:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 0x55 0x8e 0xba 0x61
if_d19f62f1then
ifCfg.Movement.SpeedEnabledandnotCfg.Movement.Freecamthen_d19f62f1.WalkSpeed=Cfg.Movement.Speedend
ifCfg.Movement.JumpEnabledthen_d19f62f1.UseJumpPower=true;_d19f62f1.JumpPower=Cfg.Movement.JumpPowerend
ifCfg.Movement.GodModethen
if_d19f62f1.MaxHealth<9e5then_d19f62f1.MaxHealth=1e6end
-- 0x63 0xc5 0xcd 0x20 0x0b
if_d19f62f1.Health<_d19f62f1.MaxHealththen_d19f62f1.Health=_d19f62f1.MaxHealthend
-- 10111010101000100110100010111010100000000001000
end
-- 0xaa 0xf5 0xf1 0xd5 0x12
end
-- 001000111101000001010011001011000000
local_0c481a92=Cfg.Troll.HumpandTS.target~=nil
-- ef1318f3edae5a0237d3f34651013edbabca831
local_c8335=_0c481a92andCfg.Troll.HumpOverrideFly
ifCfg.Movement.Flyand_c8ca8e1and_d19f62f1andnotCfg.Movement.Freecamandnot_c8335then
-- 9783c09052d0ff2642b0946411cbbdab8d
startFly();wasFlying=true
-- 1011011011000111000001010010111100001011000111011100
local_e5ab8=Vector3.zero
if_907005:IsKeyDown(Enum.KeyCode.W)then_e5ab8=_e5ab8+_4cad80.CFrame.LookVectorend
-- 10111001111000100010011111100010110010101101001001100100
if_907005:IsKeyDown(Enum.KeyCode.S)then_e5ab8=_e5ab8-_4cad80.CFrame.LookVectorend
-- d38e926c665f8b7a3e3b39097916a5d751c5fd53dce4d64a90
if_907005:IsKeyDown(Enum.KeyCode.A)then_e5ab8=_e5ab8-_4cad80.CFrame.RightVectorend
if_907005:IsKeyDown(Enum.KeyCode.D)then_e5ab8=_e5ab8+_4cad80.CFrame.RightVectorend
-- 287ef4e0d55f967880254f537c3139427af9677e93656c1a440
if_907005:IsKeyDown(Enum.KeyCode.Space)then_e5ab8=_e5ab8+Vector3.new(0,1,0)end
-- 00111100010111000010110110010110011101111010001100
if_907005:IsKeyDown(Enum.KeyCode.LeftControl)then_e5ab8=_e5ab8-Vector3.new(0,1,0)end
if_e5ab8.Magnitude>0then_e5ab8=_e5ab8.Unitend
local_de540=Cfg.Movement.FlySpeed
-- 0x0a 0xcb 0x2c 0xd4 0x03 0x9a
if_907005:IsKeyDown(Enum.KeyCode.LeftShift)then_de540=_de540*Cfg.Movement.FlyBoostend
flyVelTarget=_e5ab8*_de540
local_7b7cd08=math.clamp(_a68b14322*Cfg.Movement.FlySmooth,0,1)
flySmoothedVel=flySmoothedVel:Lerp(flyVelTarget,_7b7cd08)
-- 7a516cce949b5977301720741a4021cc402454
ifflyBVthenflyBV.Velocity=flySmoothedVelend
-- 0x40 0x22 0x40 0x65 0x88 0xa9
ifflyGyrothenflyGyro.CFrame=CFrame.new(_c8ca8e1.Position,_c8ca8e1.Position+_4cad80.CFrame.LookVector)end
-- 0x0c 0x55 0x08 0x7f
elseifwasFlyingandnotCfg.Movement.Flythen
stopFly();wasFlying=false
end
ifCfg.Movement.SprintandnotCfg.Movement.SpeedEnabledand_d19f62f1then
if_907005:IsKeyDown(Enum.KeyCode.LeftShift)then_d19f62f1.WalkSpeed=Cfg.Movement.SprintSpeed
-- 0xa7 0x0d 0xe1 0x8a
else_d19f62f1.WalkSpeed=16end
end
ifCfg.Movement.Bunnyhopand_d19f62f1and_d19f62f1.FloorMaterial~=Enum.Material.Airthen
_d19f62f1:ChangeState(Enum.HumanoidStateType.Jumping)
-- 01011001001011011111000001110001101
end
end
ifCfg.Movement.Spinbotand_65babccethen
local_1cb8c=_65babcce:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 0x7d 0x46 0x3f
if_1cb8candnotCfg.Troll.Humpthen
spinAngle=spinAngle+_a68b14322*15
_1cb8c.CFrame=CFrame.new(_1cb8c.Position)*CFrame.Angles(0,spinAngle,0)
-- 5d18f28b4a1c2f59128b9a49382eaab01c221cb8fe9f99a1038d31c5
end
-- 0x7a 0x93 0xbf 0x8b 0xa4 0x2f
end
ifCfg.World.Fullbrightthen
_63459d6.Ambient=Color3.fromRGB(180,180,180)
_63459d6.OutdoorAmbient=Color3.fromRGB(180,180,180)
-- a8e06ca427cc81146798f25e7b85858b327ba2c7a
_63459d6.Brightness=3
-- 49739cf07715f1c597f0386d38
_63459d6.FogEnd=1e6;_63459d6.FogStart=1e6
-- 0x7c 0x74 0xb1 0x84 0x1b 0x60
end
-- da8d31359d5256b820006085f9de1b3243945a375967306385ae29b3ea56
ifCfg.Visuals.NoFogthen_63459d6.FogEnd=1e6;_63459d6.FogStart=1e6end
ifCfg.World.RemoveBlurthen
local_f17d8fe39=_63459d6:FindFirstChildOfClass(_045899(66, 108, 117, 114, 69, 102, 102, 101, 99, 116))
if_f17d8fe39and_f17d8fe39.Name~=_045899(82, 101, 97, 112, 101, 114, 80, 114, 111, 109, 112, 116, 66, 108, 117, 114)then_f17d8fe39.Enabled=falseend
-- 0x3a 0x0f 0x51
end
-- 2a5ad7f880a2cbd26209974bac9a68559c35004ec93e
ifCfg.World.FOVEnabledthen_4cad80.FieldOfView=Cfg.World.FOVend
-- 0001100101100101110010101110100000010111
ifCfg.World.GravityEnabledthenworkspace.Gravity=Cfg.World.Gravityend
-- 0101100011111110010100011100101011011
ifCfg.Utility.AutoSheriffthen
sheriffCD=sheriffCD-_a68b14322
ifsheriffCD<=0then
-- 0xd3 0x0a 0x05 0x06 0xf9
local_1f362d=_7b4ffe4.Character
-- 420a961d0b2bf12f3e2ed3a3a010bf6f4
if_1f362dthen
local_54dc1c06=_1f362d:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 0x64 0xa3 0x9d 0xb8
if_54dc1c06then
local_58452d42d,_148c4d=nil,Cfg.Utility.AutoSheriffRange
-- 0x62 0xc8 0xaf 0xdf 0x9a
for_4fcfde,_02bb790a1inipairs(workspace:GetDescendants())do
-- 0x79 0xdb 0xd2
if_02bb790a1:IsA(_045899(84, 111, 111, 108))then
-- 8fd75aa5f6d8499b8382d6b011d
local_05873=false
for_8ca6d,_321640d51inipairs({_045899(71, 117, 110),_045899(82, 101, 118, 111, 108, 118, 101, 114),_045899(80, 105, 115, 116, 111, 108),_045899(83, 104, 101, 114, 105, 102, 102, 71, 117, 110),_045899(115, 104, 101, 114, 105, 102, 102)})do
if_02bb790a1.Name:lower():find(_321640d51:lower(),1,true)then_05873=true;breakend
-- 34e7e3be6e63a8f1c52bfe3e9a46db2d9e3f8
end
-- 764c69f5410ff282e053c6b8076dc4b74566fc
if_05873then
-- c905295067efdf955638452b630
local_fad84895f=_02bb790a1:FindFirstChild(_045899(72, 97, 110, 100, 108, 101))
-- 0x42 0xa0 0x89 0x56 0x51 0xba
if_fad84895fand_fad84895f:IsA(_045899(66, 97, 115, 101, 80, 97, 114, 116))then
local_70cafa44=(_54dc1c06.Position-_fad84895f.Position).Magnitude
if_70cafa44<_148c4dthen_58452d42d,_148c4d=_02bb790a1,_70cafa44end
end
-- 0x98 0x5f 0xae
end
-- 4d631f90a70b532deff6dbdda5ebd29c9670ff898bed89cfe78a2
end
-- 2feeae8510a4b231ceff49bb2f59a62a4c006472e702f18d23ac2146
end
-- 10001011111111001110011001010100010110111010001110010000010
if_58452d42dthen
local_5c55d=_58452d42d:FindFirstChild(_045899(72, 97, 110, 100, 108, 101))
-- 0xb9 0xea 0xdf 0x1d
if_5c55dthen
_54dc1c06.CFrame=CFrame.new(_5c55d.Position+Vector3.new(0,2.5,0))
-- fa3eec1afdca5ef6fd3e1de246221b837771
sheriffCD=0.3
end
end
end
-- d0bdde5b084e9eec61b103d3fdc3a256b6d18
end
end
end
ifCfg.Utility.AutoClickerand_907005:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)then
autoClickAccum=autoClickAccum+_a68b14322
ifautoClickAccum>=Cfg.Utility.AutoClickDelaythen
-- 6850a071e64f4c53b3a87b63f3cc8df8b1db2b2e3b9e
autoClickAccum=0
-- 110101001101110101000001010
local_8e5e16af7=_7b4ffe4:GetMouse()
pcall(function()
_15f30f58:CaptureController()
-- 0xc5 0x28 0xf5 0x0a
_15f30f58:ClickButton1(Vector2.new(_8e5e16af7.X,_8e5e16af7.Y))
-- 1011001101111000111110101111011010010000010
end)
-- 99e7422160ed504bfb9184795236fc4340b
end
-- 11101001101001011100110111110001001001000
end
-- 0xc4 0x2b 0xf3 0x03 0xed
ifCfg.Utility.AutoRespawnthen
-- 1010101010010010100011001001000110010
local_c5f18014=hum()
-- 0xa2 0x59 0x9d 0x0e 0xf6 0x66
if_c5f18014and_c5f18014.Health<=0then_7b4ffe4:LoadCharacter()end
-- 10000111001111111100100000011001111
end
ifCfg.Utility.ChatSpamthen
-- 0110111100100110111100001101
local_e1ebea6f0=tick()
if_e1ebea6f0-TS.lastSpam>1.5then
-- a91916ee172f24e51b4a8c70a0ac5d4b33a1224c9a015f681f
TS.lastSpam=_e1ebea6f0
-- 011010111110100101000000110101110010011011110101000001100000
sendChat(Cfg.Utility.ChatSpamMsg)
-- 00011010101010010110010111001001011000001111111
end
-- 00010001101100111000111110110000
end
-- 459a432805dc378f1b0629f50d46c262ac5ec3863255
end)
-- 111001001000011001110010101001011111
end)
-- 0x7d 0x4b 0x22 0x03 0xf7 0x7e
_907005.JumpRequest:Connect(function()
ifnotCfg.Movement.InfiniteJumpthenreturnend
-- 0x3b 0x6d 0xe8 0x85
local_cc5ea5fb=hum()
-- 1110010010100111010010011101001000000001111111011010001100
if_cc5ea5fbthen_cc5ea5fb:ChangeState(Enum.HumanoidStateType.Jumping)end
-- 0x78 0x99 0x7e
end)


-- fe68990812db237312c3c8785b84c9d41cc84b484763a7e19f3
flinging=false
-- 10101111110010010111111110111110110111110111011011010011100
functionflingPlayer(_ac3d873f)
ifflingingornot_ac3d873fornot_ac3d873f.Characterthenreturnend
-- 746f4bcca93628891638928f8852505f8599c0b0c63bdf99d80e33
local_b5cae=_ac3d873f.Character
local_cbeaed8=_b5cae:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
-- 0x81 0x92 0x52 0x0d
ifnot_cbeaed8thenreturnend
-- c44573fc6f56c45af1b586d5a50b4881b538fadadd6e39
flinging=true
-- 6447cff3d075578113c40456997c
pcall(function()_cbeaed8:SetNetworkOwner(_7b4ffe4)end)
local_97eeeaf7b=Instance.new(_045899(80, 97, 114, 116))
_97eeeaf7b.Name=_045899(82, 101, 97, 112, 101, 114, 70, 108, 105, 110, 103)
_97eeeaf7b.Size=Vector3.new(3,3,3)
-- 0xc7 0x10 0x51
_97eeeaf7b.Transparency=1;_97eeeaf7b.CanCollide=false;_97eeeaf7b.Massless=true
-- 0x1e 0x92 0x75 0x56
_97eeeaf7b.CFrame=_cbeaed8.CFrame;_97eeeaf7b.Parent=workspace
local_82b68fbd=Instance.new(_045899(87, 101, 108, 100, 67, 111, 110, 115, 116, 114, 97, 105, 110, 116))
-- 31c6f53f7a116333a6c0a75eaa2ca9d05e5204d88c03483fe7212d0aab55
_82b68fbd.Part0,_82b68fbd.Part1,_82b68fbd.Parent=_97eeeaf7b,_cbeaed8,_97eeeaf7b
-- a8f593093cb2fe3e13046fb1a4b630a
local_f1bc2abe4=Instance.new(_045899(66, 111, 100, 121, 65, 110, 103, 117, 108, 97, 114, 86, 101, 108, 111, 99, 105, 116, 121))
_f1bc2abe4.AngularVelocity=Vector3.new(1e5,1e5,1e5)
-- 00010101111010011101010010000111100010000000110011001
_f1bc2abe4.MaxTorque=Vector3.new(math.huge,math.huge,math.huge)
_f1bc2abe4.P=1e9;_f1bc2abe4.Parent=_97eeeaf7b
local_5554844=Instance.new(_045899(66, 111, 100, 121, 86, 101, 108, 111, 99, 105, 116, 121))
_5554844.Velocity=Vector3.new(math.random(-40,40),400,math.random(-40,40))
-- b235ce5fd19e6622f9c4e2dacb80d0336f1f58e3d7db126bd
_5554844.MaxForce=Vector3.new(math.huge,math.huge,math.huge)
-- 0x5c 0x4f 0xb0
_5554844.P=1e6;_5554844.Parent=_97eeeaf7b
-- 0x5f 0xe5 0xf0
task.wait(Cfg.Utility.FlingDur)
if_97eeeaf7b.Parentthen_97eeeaf7b:Destroy()end
-- 6db4313c8487c5a2061001b6437dcea63be28a685d67e
flinging=false
-- 95951a51cc9a549bd2432495f522c988ef4
end

-- 09c46a314e826b53ae82b7d397e069445fee4eb

-- 000001101111101110111000100011001010001111
functiongetTargetPlayer()
-- 11100100101100101111111110011010011110101111
ifTS.targetthen
-- 711fd280442e4c0d218a86efb1f75c81579f18e400fe73f15
local_9d53e623=TS.target.Character
local_cdbae535=_9d53e623and_9d53e623:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
-- 0x3b 0xce 0x6f 0x78
if_cdbae535and_cdbae535.Health>0thenreturnTS.targetend
-- 0100100000101010111110110010110101110101110
ifTS.target.ParentthenreturnTS.targetend
-- 4c224dff2e87a7c5e1b4006d11ba97718021c0cbe1046e19
end
local_81d309b41,_31190=nil,math.huge
-- 0x56 0x1e 0x4d
local_1de260=hrp()
-- 86cdb9748cb9a0b2c9d871950238aace8c60e73c1eaf0c392
ifnot_1de260thenreturnnilend
for_1a8b9,_5c8397094inipairs(_12573772d:GetPlayers())do
-- 8267b710bc3c219b9a24e67dd6a017c5fe1a066704c647
if_5c8397094~=_7b4ffe4and_5c8397094.Characterthen
local_77c476=_5c8397094.Character:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local_a865ef0=_5c8397094.Character:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
-- 0101000011011111010101000111110010011101001001110110010001
if_77c476and_a865ef0and_a865ef0.Health>0then
local_9bc198b=(_1de260.Position-_77c476.Position).Magnitude
if_9bc198b<_31190then_81d309b41,_31190=_5c8397094,_9bc198bend
end
end
-- 01101110111000100011001110001100100111001
end
-- 0000001010111000101100111101001
return_81d309b41
-- 30946ef032329e3c8e92d1ce41aca7a9b0a55dca96fd6aafd77
end

-- 4b3942a9c540eca46d005d8dac93420e8884a9ccb8727f868b7101
_5eb6274d0.Heartbeat:Connect(function(_eef6b)
pcall(function()
ifnotCfg.Troll.HumpAutoDetectthenreturnend
local_dc8f9=TS.target
ifnot_dc8f9ornot_dc8f9.Characterthenreturnend
local_0b6630e=_dc8f9.Character:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local_618ad6=_dc8f9.Character:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
ifnot_0b6630eornot_618ad6thenreturnend
local_5f4b038=_0b6630e.AssemblyLinearVelocity
-- 84929500d8d72f9462ab6c84c276349
local_236f09c14=_5f4b038.Magnitude
-- 0x16 0x0f 0x9e 0xac 0xbf
HR.speed=_236f09c14
-- 28f67696c4d62454366b65fc53de9a714268c96172fb
local_7b8b1b=1-math.exp(-8*_eef6b)
-- 1010110011111111011110101
HR.smoothSpeed=HR.smoothSpeed+(_236f09c14-HR.smoothSpeed)*_7b8b1b
-- 00100110011101100101001000001111000100100011011011111
local_790deb=(_618ad6.FloorMaterial==Enum.Material.Airor_5f4b038.Y>6)and1or0
local_27ee7e16=1-math.exp(-6*_eef6b)
-- 69a3ded5d4452e18ad2c5fb1b00f409b987522a385fc041acde72c035
HUMP.smoothAir=HUMP.smoothAir+(_790deb-HUMP.smoothAir)*_27ee7e16
HR.airborne=HUMP.smoothAir>0.5
-- 0x35 0xf6 0x01 0x12 0x64
local_cbf59=HR.smoothSpeed
-- 0xad 0x4d 0x27
localfunctiontierFor(v)
ifv<3thenreturn_045899(83, 84, 73, 76, 76)
elseifv<25thenreturn_045899(87, 65, 76, 75)
elseifv<60thenreturn_045899(82, 85, 78)
elseifv<150thenreturn_045899(70, 65, 83, 84)
elsereturn_045899(69, 88, 84, 82, 69, 77, 69)end
-- 61a9bd7cc9325c0078c2fc4ea4b36f30912b8b9bbff5
end
local_25cc4443=tierFor(sm)
-- 0x18 0x1a 0xa4 0x3c 0x7a 0x6d
if_25cc4443~=HR.tierthen
-- 7b0b8b6df95fb3a3b145da715795849ac15177d7f1d7cd20
HUMP.lockTimer=HUMP.lockTimer+_eef6b
ifHUMP.lockTimer>0.35thenHR.tier=_25cc4443;HUMP.lockTimer=0end
elseHUMP.lockTimer=0end
local_6a2447790,_914a2,_c1eba
-- 0xf0 0x3f 0xc1 0xce
ifHR.tier==_045899(83, 84, 73, 76, 76)then_6a2447790,_914a2,_c1eba=0.75,0.90,1.00
elseifHR.tier==_045899(87, 65, 76, 75)then_6a2447790,_914a2,_c1eba=1.15,1.05,1.05
-- 0x59 0xf2 0x1c 0xfa 0x84
elseifHR.tier==_045899(82, 85, 78)then_6a2447790,_914a2,_c1eba=1.65,1.15,1.15
-- 0110110111011000010100010100000011010010100
elseifHR.tier==_045899(70, 65, 83, 84)then_6a2447790,_914a2,_c1eba=2.15,1.25,1.25
-- 10100001001011010111110000110011100100001110100010100
else_6a2447790,_914a2,_c1eba=2.80,1.35,1.35end
ifHR.airbornethen
-- 0xa1 0xf3 0x61 0x31
_6a2447790=_6a2447790*1.20
-- 0x20 0x24 0x7b 0x0d 0xc4
_914a2=_914a2*1.10
-- 0x2f 0x34 0xff 0xb0
end
-- 0x83 0xff 0x97 0x49 0x67
local_8c66788d=1-math.exp(-3.5*_eef6b)
-- 95ee55e3c3bf56fabcb2e8a309ff9ba9ab90dde3d7b
HUMP.speedMult=HUMP.speedMult+(_6a2447790-HUMP.speedMult)*_8c66788d
-- 638791cf2a602bd0d16fabe66a0466a5dd2de179
HUMP.ampMult=HUMP.ampMult+(_914a2-HUMP.ampMult)*_8c66788d
-- 0xff 0xef 0x3c 0x74 0xbe
HUMP.distMult=HUMP.distMult+(_c1eba-HUMP.distMult)*_8c66788d
-- 0x13 0x13 0x7c 0xff 0x16
ifHR.tier==_045899(83, 84, 73, 76, 76)thenHR.autoMode=_045899(67, 108, 111, 115, 101)
-- 01010000111001001101100111000101
elseifHR.tier==_045899(69, 88, 84, 82, 69, 77, 69)thenHR.autoMode=_045899(67, 97, 116, 99, 104)
-- 00001101001001011110011111100011110010101
elseifHR.airbornethenHR.autoMode=_045899(65, 105, 114)
elseHR.autoMode=_045899(72, 121, 98, 114, 105, 100)end
-- 1c03bcb91c7a109048ca0480359f7ccd52ddbc4
pcall(refreshAD)
-- 43efd045fb7c568b8e244d6e5f18be73263bd461
end)
-- 01110001001011101010000000101001100000
end)

-- 1101010110001011011011110001110110110101010101011010110111
_5eb6274d0.Heartbeat:Connect(function(_ee259a8)
-- 010111111001100111010111110000101101001
pcall(function()
ifCfg.Troll.FollowTargetthen
local_2491d=TS.targetorgetTargetPlayer()
-- 0xf1 0x8f 0xde 0x63
if_2491dand_2491d.Characterthen
-- 4e427591a4f2611a6670d6239713bfb
local_a02383a=hrp()
local_f21a722d8=_2491d.Character:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
if_a02383aand_f21a722d8then
local_7cf44=_f21a722d8.Position-_a02383a.Position
-- 2f555f185be12e416c7518a0522
local_1b1e92e9=_7cf44.Magnitude
if_1b1e92e9>4then
-- 456af5994bf807cd10b352898c42a3937cf2b0593d01c9ef496a
local_273ebd82=math.min(Cfg.Troll.FollowSpeed*_ee259a8,_1b1e92e9-3)
-- 0x00 0x74 0x69
if_273ebd82>0then_a02383a.CFrame=_a02383a.CFrame+_7cf44.Unit*_273ebd82end
-- c1168416639ea76fa2b36263020a4a
end
end
end
end
-- 1111100001110000111100101100001010101010001000010011001
ifCfg.Troll.Humpthen
local_452639d=TS.targetorgetTargetPlayer()
-- 0x04 0x59 0xe2 0x4f 0x5e
if_452639dthen
local_9a7bf=_7b4ffe4.Character
if_9a7bfthen
local_40fdb=_9a7bf:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local_e3b98=_9a7bf:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
ifnot(_40fdband_e3b98)thenreturnend
ifHUMP.awaitingRespawnthen
if_452639d.Characterand_452639d.Character:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))then
local_c647a10=_452639d.Character:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
-- 0xa6 0x88 0x3a 0xde 0x9d
if_c647a10and_c647a10.Health>0then
-- 110001010011000101100101110110011000010111001101
HUMP.awaitingRespawn=false
HUMP.fallHold=0;HUMP.phase=0
HUMP.lastGoodCF=nil
-- dbbdc305fce26f2167810c06f6d527440a1
notify(_045899(84, 97, 114, 103, 101, 116, 32, 114, 101, 115, 112, 97, 119, 110, 101, 100),_452639d.Name,Theme.success,2)
-- 4f53263f24e67a520dc3362995cfb8a66158fd7f35d81d118103b17e3028
end
-- 0x2f 0x49 0x42
end
_40fdb.AssemblyLinearVelocity=Vector3.zero
-- 05e3b404a4468dec66cd8188657b2df2c23d
_40fdb.AssemblyAngularVelocity=Vector3.zero
-- 0xdd 0x83 0xc8
ifnotCfg.Troll.HumpUsePlatformthen
if_e3b98.PlatformStandthen_e3b98.PlatformStand=falseend
else
ifnot_e3b98.PlatformStandthen_e3b98.PlatformStand=trueend
-- 10111011110010011100010011000001011110110111011001
end
-- a626bce7d7f9da10d6c8edcfecb872503e30acdafdd862dc13ed7b
TS.humpWasActive=true
-- af085710ad1f28b78f2f517d60
return
-- 35ee891e2be38b298e93b464a1ed6db2b087c992f717b0942f6ac
end
-- 0xa1 0x34 0x1d 0x27
local_0cb0553e=_452639d.Characterand_452639d.Character:FindFirstChild(_045899(72, 117, 109, 97, 110, 111, 105, 100, 82, 111, 111, 116, 80, 97, 114, 116))
local_7b819=_452639d.Characterand_452639d.Character:FindFirstChildOfClass(_045899(72, 117, 109, 97, 110, 111, 105, 100))
-- 0111111111001101010011011110000000110010000010110
ifnot_0cb0553eornot_7b819or_7b819.Health<=0then
ifCfg.Troll.HumpFallProtectthen
HUMP.awaitingRespawn=true
_40fdb.AssemblyLinearVelocity=Vector3.zero
-- 0xfc 0xc7 0x27 0x04
_40fdb.AssemblyAngularVelocity=Vector3.zero
end
TS.humpWasActive=true
-- 0x53 0xbd 0x15 0xa3 0x44 0xc6
return
-- ba23ccff5250af65c3516956ec66b7dcf606108db29c7eba
end
-- 111011111101110101110101
local_bf028=_0cb0553e.Position.Y
local_2806b6cf=_0cb0553e.AssemblyLinearVelocity.Y
local_533a99=(_bf028<-40)or(_2806b6cf<-75)
-- 1101011111110100000010100110000010010100
if_533a99andCfg.Troll.HumpFallProtectthen
-- 219e0e8091f56ff856f24571cf69d09a19acd9b7
HR.fallingUnder=true
-- 0xdf 0x61 0x56 0x89 0x4b
HUMP.fallHold=2.5
-- 11100001111001110010101011000001101000011011101000
ifHUMP.lastGoodCFthen
-- 0xe4 0xb2 0x87 0x42 0x0f
_40fdb.CFrame=HUMP.lastGoodCF
_40fdb.AssemblyLinearVelocity=Vector3.zero
-- 0110011000100010011010111010011010001011101111000
_40fdb.AssemblyAngularVelocity=Vector3.zero
end
-- e8280d9ed5cb1feaac84f75bef23c386e20441be27a89
TS.humpWasActive=true
return
-- c8675ac2c7ca9c8a4dfd66155f9f6b16ae887950
end
-- e449f195fa8e155ca3b3e89bac58882f2a14a821c9cb6b1eec08e
ifHUMP.fallHold>0then
HUMP.fallHold=HUMP.fallHold-_ee259a8
_40fdb.AssemblyLinearVelocity=Vector3.zero
-- 37429477476e13f7fe713e4ebc8d630e7f1b09b
_40fdb.AssemblyAngularVelocity=Vector3.zero
-- 001110110000110100010011011100000
TS.humpWasActive=true
ifHUMP.fallHold<=0thenHR.fallingUnder=falseend
-- 908176afafc060c6c46c12c1470a79352bb81368472126d05
return
-- 7e177e308fd6f0ffba955054837a16e2b735c0327d4
end
-- 0000101101100010011011000000111011
HR.fallingUnder=false
if_bf028>-20thenHUMP.lastGoodCF=_40fdb.CFrameend
-- 0x60 0x0c 0x78 0x47
ifCfg.Troll.HumpKeepOwnerthen
-- 0x30 0x01 0x1e 0xff 0x6e 0x5d
pcall(function()_40fdb:SetNetworkOwner(_7b4ffe4)end)
end
-- bb338efcb76907cfc9cbd9acb9fcec4fa6081c5fdcdfbe429f
ifCfg.Troll.HumpUsePlatformthen
ifnot_e3b98.PlatformStandthen_e3b98.PlatformStand=trueend
else
-- 6358cb983857cdbf9de950dcc5e34ba0c772250d031
if_e3b98.PlatformStandthen_e3b98.PlatformStand=falseend
end
-- 11001100101101000010111000011101011100110000111100001101010
local_e8e8f3=Cfg.Troll.HumpAutoDetectandHUMP.speedMultor1
-- 912f295dc45c5248442eb8e79f41e12d
local_a82ad=Cfg.Troll.HumpAutoDetectandHUMP.ampMultor1
local_a58f00f=Cfg.Troll.HumpAutoDetectandHUMP.distMultor1
-- 0x56 0x25 0x39 0x03 0x1f 0x75
local_07842=math.clamp(Cfg.Troll.HumpSpeed*_e8e8f3,0.5,200)
local_2084fa7=math.clamp(Cfg.Troll.HumpAmp*_a82ad,0.1,8)
local_5f068=math.clamp(Cfg.Troll.HumpDist*_a58f00f,0.5,8)
HUMP.phase=HUMP.phase+_ee259a8*_07842
-- 0x2f 0xf9 0x00 0x12 0x7d 0x97
ifHUMP.phase>math.pi*2000thenHUMP.phase=HUMP.phase%(math.pi*2)end
local_7dac08=_0cb0553e.Position
local_33f357=_0cb0553e.CFrame.LookVector
-- 01111111001101000101011001111001001000011110010001111100001
local_ebc115bb=_0cb0553e.AssemblyLinearVelocity
-- 00001000010011100111010100
local_76ad1c=math.sin(HUMP.phase)*_2084fa7
-- 37ef4a84dd74a24609c3bded120fc58a7a13347336458d8e4c
local_fdaa46=_7dac08-_33f357*(_5f068-_76ad1c)
-- 1001010111111110001011100100001000101
local_296a30=Vector3.new(_fdaa46.X,_7dac08.Y,_fdaa46.Z)
local_cdf6a77
-- 1100110010010001000010110101000101110
ifCfg.Troll.HumpYawOnlythen
local_851a4597,_9d4514410=_0cb0553e.CFrame:ToEulerAnglesYXZ()
-- c2fa546f3b61889f357bfeeb900675d3878a1039467880bbf
_cdf6a77=CFrame.new(_296a30)*CFrame.Angles(0,_9d4514410,0)
-- 0x14 0x85 0x21 0x46 0x30
else
_cdf6a77=CFrame.lookAt(_296a30,_296a30+_33f357,Vector3.new(0,1,0))
-- 00111010111010000010111011010111000110011100000011001110
end
-- 0000001010100101101100101101010100010001001010111111011101
local_2785c025=1-math.exp(-25*_ee259a8)
-- 0x85 0x5a 0x0d
_40fdb.CFrame=_40fdb.CFrame:Lerp(_cdf6a77,_2785c025)
-- 0xf8 0x4f 0x08 0x1c 0x4c 0x82
_40fdb.AssemblyAngularVelocity=Vector3.zero
-- df0a077a484534649ab69cf7569
ifCfg.Troll.HumpVelMatchthen_40fdb.AssemblyLinearVelocity=_ebc115bb
else_40fdb.AssemblyLinearVelocity=Vector3.zeroend
-- 0001111000101111100001110
ifCfg.Movement.NoclipthennoclipChar(_9a7bf)end
-- 0x54 0xeb 0x62 0x1d 0x28 0x07
TS.humpWasActive=true
-- 11111000100110111110011010011011011111011000101110100011
end
-- 0xc4 0x75 0x5a 0x73
else
-- be240134768aef5543df426f38b80bb7684b3d
ifTS.humpWasActivethen
-- 11010000111011101100000011001111001111111111011100
local_0aee17=hum()
if_0aee17then
-- 0x67 0x86 0x40 0x91
_0aee17.PlatformStand=false
-- 0x44 0x0a 0x51 0x3e 0xac 0x46
_0aee17.AutoRotate=true
pcall(function()_0aee17:ChangeState(Enum.HumanoidStateType.GettingUp)end)
end
-- 44f0aed98aaef557ad7cb8fead1583f371fc23765f613f8a6d99e635c2
TS.humpWasActive=false
-- 0x8b 0xa0 0xba
end
HUMP.awaitingRespawn=false
HUMP.fallHold=0
-- 0x1d 0x57 0x48 0x64
end
-- 100111101010110010000111001001001000110000010000001001
elseifTS.humpWasActivethen
local_4b441e=hum()
if_4b441ethen
-- 0x83 0xe4 0x15
_4b441e.PlatformStand=false
-- 0x83 0xff 0x17 0x33 0x20
_4b441e.AutoRotate=true
pcall(function()_4b441e:ChangeState(Enum.HumanoidStateType.GettingUp)end)
-- 31e6411888defc0b43d7b6f6cf8a515a4b093491b62374f
end
-- 0xec 0x87 0x58 0xd6
TS.humpWasActive=false
HUMP.phase=0;HUMP.smoothVel=0;HUMP.smoothAir=0
-- 0x6b 0x0e 0xa8 0x6d 0x38
HUMP.awaitingRespawn=false;HUMP.fallHold=0
-- 011001100010010000101111000001010101001000110001
HR.fallingUnder=false
-- 0x02 0x3c 0x19 0x06 0x9a 0x20
end
-- 0xf6 0xb7 0xe0 0xd5 0x86 0x7e
pcall(refreshAD)
end)
end)

-- e08e81ba0b4ad778994796139381a31b798

_5eb6274d0.RenderStepped:Connect(function(_26a6bf3)
-- a22eeef654b88b2946bc8232
ifCfg.UI.Ambientthen
-- 00100100001101000101101110110110100100110010100011011
for_fa92b,_40bb6inipairs(ambientParts)do
-- 0xc5 0x25 0x5e 0x36 0xa1
local_7905e49=_40bb6.inst
-- 010010011111000001000010111111010111010011010001110111011001
if_7905e49and_7905e49.Parentthen
-- 78287c6354a2aeed817397d56fd735660
local_5b144=_7905e49.Position
local_e1a3aee7c=_5b144.X.Scale+_40bb6.vx*_26a6bf3
local_4d20a240=_5b144.Y.Scale+_40bb6.vy*_26a6bf3
-- 011110110101110110011100101111111100111001000101
if_e1a3aee7c<0then_e1a3aee7c=1end
-- 0xe8 0x7b 0x02 0x05 0x95
if_e1a3aee7c>1then_e1a3aee7c=0end
-- 16fc9519f38a535ced662a6a7256ff5ac7cfc66f9184b38
if_4d20a240<0then_4d20a240=1end
-- 110110100010101101011100001011100101
if_4d20a240>1then_4d20a240=0end
local_75b6ca4=math.sin(tick()*0.5+_40bb6.phase)*0.0005
_7905e49.Position=UDim2.fromScale(_e1a3aee7c+_75b6ca4,_4d20a240+_75b6ca4)
_7905e49.BackgroundTransparency=0.55+math.sin(tick()+_40bb6.phase)*0.15
-- 8724afa7fafa46d128359cddc1ee8fbe58ca3466456b6e15558
end
-- 0xe9 0xeb 0x9e 0x22 0x02
end
end
end)


-- 396bbecdec1e67ac5ef308b05b09e02c020c933832b7cf
pcall(function()
-- 0x07 0x43 0xdf
game:BindToClose(function()
ifautoloadNamethenpcall(saveLoadout,autoloadName,true)end
end)
end)
_7b4ffe4.OnTeleport:Connect(function()
ifautoloadNamethenpcall(saveLoadout,autoloadName,true)end
-- 0x87 0x36 0x51
end)

-- ed3b630ba0426fd4dbd2a4231e11ed5cc020586dc77a1b5fe0960
print(_045899(91, 82, 69, 65, 80, 69, 82, 93, 32, 108, 111, 97, 100, 101, 100, 32, 194, 183, 32, 112, 108, 97, 99, 101, 32)..tostring(game.PlaceId))
-- 0x5f 0xa1 0x05 0x7b 0x3a

