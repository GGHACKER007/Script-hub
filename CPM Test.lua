--[[
It just a test project if you need any offsets or values you can take it!

Soo as possible we gonna connect our server for the key system api, so get ready for a massive experience into a lua script
]]--


DATA = 0
gg.sleep(1000)



local isOffline = false

if isOffline then
gg.alert([[
Currently we are working on new update, script is offline try again later.

Thank you!

TEAM ANM]], "🆁🅴🆃🆄🆁🅽")
gg.clearResults()
print(os.date("🄳🄾🄽🅃 🄵🄾🅁🄶🄴🅃 🅃🄾 🅂🅄🄱🅂🄲🅁🄸🄱🄴 \n\n⏱️ Today : %Y/%m/%d Time: %H:%M:%S ⏱️\n\n"))
print([[

╭━━━━┳━━━┳━━━┳━╮╭━╮╭━━━┳━╮╱╭┳━╮╭━╮
┃╭╮╭╮┃╭━━┫╭━╮┃┃╰╯┃┃┃╭━╮┃┃╰╮┃┃┃╰╯┃┃
╰╯┃┃╰┫╰━━┫┃╱┃┃╭╮╭╮┃┃┃╱┃┃╭╮╰╯┃╭╮╭╮┃
╱╱┃┃╱┃╭━━┫╰━╯┃┃┃┃┃┃┃╰━╯┃┃╰╮┃┃┃┃┃┃┃
╱╱┃┃╱┃╰━━┫╭━╮┃┃┃┃┃┃┃╭━╮┃┃╱┃┃┃┃┃┃┃┃
╱╱╰╯╱╰━━━┻╯╱╰┻╯╰╯╰╯╰╯╱╰┻╯╱╰━┻╯╰╯╰╯

]])
return os.exit()
end






-- Function to encrypt a string using XOR
function xorEncryptDecrypt(str, key)
    local result = ""
    for i = 1, #str do
        local charCode = string.byte(str, i)
        local keyCode = string.byte(key, (i % #key) + 1)
        result = result .. string.char(bit32.bxor(charCode, keyCode))
    end
    return result
end

-- Check if the alert has been shown and version matches
local alertShownFile = "/sdcard/alertShown.txt"
local versionFile = "/sdcard/version.txt"
local currentVersion = "1.2"  -- Change this to your current version

local alertFile = io.open(alertShownFile, "r")
local versionFileContent = io.open(versionFile, "r")

if alertFile == nil or versionFileContent == nil or versionFileContent:read("*a") ~= currentVersion then
    -- Alert has not been shown or version has been updated, show the alert
    gg.setVisible(false)
    gg.alert("Script got updated\nPatch update\nVersion : "..currentVersion, "TEAM ANM")
    

    -- Encrypt and write the new file content
    local encryptedContent = ""
    for i = 1, 100 do
        encryptedContent = encryptedContent .. xorEncryptDecrypt("Line " .. i .. ": Collect trash", "Porra") .. "\n"
    end

    -- Add your name for credit
    encryptedContent = encryptedContent .. xorEncryptDecrypt("Credit: TEAM ANM", "Porra")

    alertFile = io.open(alertShownFile, "w")
    alertFile:write(encryptedContent)
    alertFile:close()

    -- Update the version file
    local versionFile = io.open(versionFile, "w")
    versionFile:write(currentVersion)
    versionFile:close()
end






--[[
It just a basic password/key prompt, if your near here you can learn :) & here we added a toggle function to on/off the key/password prompt
]]--

local isLoginEnabled = false -- true is Enable & false is disable

function checkLogin()
    local password = "JpewgByjTIeH37mvi0WhHiyUE0LvgKNEIK9QKuNbKfrR2GcBrghd9qO46SovGYYQNz6qY29r8CKgGA1jkNsj0xZ8NTesHt63kvSrfrPKeMdnLjz6KLaqPFkiBJJ24f2f"
    local userInput
    while (userInput == nil) do
        userInput = gg.prompt({"Enter Key"}, nil, {'text'})
    end
    if userInput[1] ~= password then
        local failedLoginHandler = gg.alert("!! Wrong key !!", "Try Again", nil, "Exit")
        
        if failedLoginHandler == 1 then
            checkLogin()
        else
            print("Try again after you get the key")
            os.exit()
        end
    end
end

-- Main script logic
if isLoginEnabled then
    checkLogin()
else
    gg.alert("Currently Keyless Experience. Enjoy!", "COMEÇAR")
end







gg.sleep(500)
gg.alert([[
GG HACKER : Patchwork,Bug fix & Error handler
Soraia Cordeiro : Scripter & update handler

TEAM ANM
]], " DIGITAR ")

gg.sleep(500)
gg.alert([[
Contact details!
Instagram : gg_hacker_cpm << Active >>
Discord : gghacker << Currently inactive >>
TikTok : gg_hacker007 << Active >>

Here you can send bug report or need any help always here to respond!
]], "TEAM ANN")




gg.sleep(8000)
gg.setVisible(false) -- Visibility
-- Function to display a 360° rotating loading animation with more rounds
function show360RotatingLoadingWithRounds(rounds)
    local emojis = {"⭕", "⭗", "⭑", "⭒", "⭓", "⭔", "⭕"}  -- Circular pattern of emojis
    local loadingDuration = 3000  -- Default loading duration in milliseconds

    for round = 0, rounds do
        for _, emoji in ipairs(emojis) do
            gg.toast(emoji)
            gg.sleep(150)  -- Adjust the speed as needed
        end
    end

    -- Example usage: Load your script after the loading animation
    gg.toast("Loading your script...")
    gg.sleep(loadingDuration)
    gg.toast("Script loaded!")
end

-- Example usage with rounds
show360RotatingLoadingWithRounds(10)


-- Patch function
local isPatched = true


-- Update function
local isUpdate = false

-- problem/error
local isProb = true

-- Additional option
local isAd = true





gg.sleep(6000)

gg.setVisible(false) -- visibility
gg.alert("🔴 ENCRYPTED MADE BY\n\n-GG HACKER & TEAM ANM©️Copyright\n\n🇧🇷GG HACKER🇧🇷\n\n⚫TEAM ANM⚫\n________________________________________________","🔴")
 -- Alert function
gg.sleep(50) -- timer

gg.alert("╭━━━━┳━━━┳━━━┳━╮╭━╮╭━━━┳━╮╱╭┳━╮╭━╮\n┃╭╮╭╮┃╭━━┫╭━╮┃┃╰╯┃┃┃╭━╮┃┃╰╮┃┃┃╰╯┃┃\n╰╯┃┃╰┫╰━━┫┃╱┃┃╭╮╭╮┃┃╱┃┃╭╮╰╯┃╭╮╭╮┃\n╱╱┃┃╱┃╭━━┫╰━╯┃┃┃┃┃┃┃╰━╯┃┃╰╮┃┃┃┃┃┃\n╱╱┃┃╱┃╰━━┫╭━╮┃┃┃┃┃┃╃╭━╮┃╃╱┃┃┃┃┃┃┃\n╱╱╰╯╱╰━━━┻╯╱╰┻╯╰╯╰╯╰╯╱╰┻╯╱╰━┻╯╰╯╰╯")




-- Script version Free ;)
-- Game : car parking multiplayer
-- Version : 4.8.15.1
-- Source will be provided soon in GitHub
-- Team ANM








---- Main loader page
gg.setVisible(false) -- Visibility
if gg.alert("ꔼ━━━━━━━━━━━━━━━━━━━━━━━ꘁ\n𝚂𝙲𝚁𝙸𝙿𝚃 𝙱𝚈 𝚃𝙴𝙰𝙼 𝙰𝙽𝙼 \nꔼ━━━━━━━━━━━━━━━━━━━━━━━ꘁ\n𝙾𝚆𝙽𝙴𝚁 : 𝙶𝙶 𝙷𝙰𝙲𝙺𝙴𝚁 & 𝙶𝚊𝚖𝚎𝚛𝚣 𝚈𝚝\n━━━━━━━━━━━━━━━━━━━━━━━━━\n𝙰𝚙𝚙 𝚗𝚊𝚖𝚎 : " .. gg.getTargetInfo()["label"] .. " \n𝚅𝚎𝚛𝚜𝚒𝚘𝚗 : " .. gg.getTargetInfo()["versionName"] .. " [" .. gg.getTargetInfo()["versionCode"] .. "]\n𝚂𝚌𝚛𝚒𝚙𝚝 𝚟𝚎𝚛𝚜𝚒𝚘𝚗 : 𝚄𝚗𝚜𝚝𝚊𝚋𝚕𝚎\n-------------------------\n" .. "", "🅾🅺", "🅴🆇🅸🆃") ~= 1 then

gg.setVisible(false)

gg.clearResults()

gg.clearList()



gg.toast(" 𝚃𝙷𝙰𝙽𝙺 𝚈𝙾𝚄")

gg.clearResults()gg.clearList()

print(os.date("🄳🄾🄽🅃 🄵🄾🅁🄶🄴🅃 🅃🄾 🅂🅄🄱🅂🄲🅁🄸🄱🄴 \n\n⏱️ Today : %Y/%m/%d Time: %H:%M:%S ⏱️\n\n"))

print("        ➧ Ⓢⓒⓡⓘⓟⓣ Ⓑⓨ ➠\n\n                       𝙼𝚈 𝚈𝙾𝚄𝚃𝚄𝙱𝙴 𝙲𝙷𝙰𝙽𝙽𝙴𝙻   : 𝙶𝙶 𝙷𝙰𝙲𝙺𝙴𝚁\n\n                                               ━─━───────────༺ᴇxɪᴛ༻──────────━─━")  

gg.sleep(500)
gg.setVisible(true)
  os.exit()
  end

  





gg.setVisible(false)



gg.toast("🛡️ 𝙿𝚁𝙾𝚃𝙴𝙲𝚃𝙴𝙳 𝙱𝚈 𝙶𝙶 𝙷𝙰𝙲𝙺𝙴𝚁 🛡️")
gg.clearResults()


gg.sleep(4000)
gg.alert([[
༺♥༻❀༺♥༻

Credits : TEAM ANM & Gamerz Yt
Script language : Lua
Supported : 64bit
Project no : 58

༺♥༻❀༺♥༻
]], "🆃🅴🅰🅼 🅰🅽🅼")




SENGGOLDONGGG = 2 




-- Function to display a longer duration loading animation
function showLongLoading()
    local loadingDuration = 5000  -- Longer loading duration in milliseconds

    gg.toast("Loading...")
    gg.sleep(1500)  -- Initial delay

    for i = 1, 8 do  -- Display for 3 rounds
        gg.toast("Loading.")
        gg.sleep(800)
        gg.toast("Loading..")
        gg.sleep(800)
        gg.toast("Loading...")
        gg.sleep(800)
    end

    -- Example usage: Load your main menu after the loading animation
    gg.toast("Loading main menu...")
    gg.sleep(loadingDuration)
    gg.toast("Main menu loaded!")
end

-- Example usage
showLongLoading()

gg.sleep(5000)
gg.setVisible(false)
function mainMenu()
local setVis=gg.setVisible
local isVis=gg.isVisible
local showmenu=true
setVis(false)
menu = gg.choice({
'╚»💸«╝• 𝚂𝙴𝙽𝙳 𝙼𝙾𝙽𝙴𝚈 』',
'╚»🔑«╝• 𝙱𝚈𝙿𝙰𝚂𝚂 𝚆𝙾𝚁𝙻𝙳 𝚂𝙰𝙻𝙴 』',
'╚»🏁«╝• 𝙱𝚄𝙶 𝚁𝙰𝙲𝙴 』',
'╚»🔓«╝• 𝚄𝙽𝙻𝙾𝙲𝙺 𝙲𝙰𝚁 𝙳𝙾𝙾𝚁 』',
'╚»🌛«╝• 𝙲𝚘𝚒𝚗 𝚑𝚊𝚌𝚔 𝟸𝟶𝟸𝟹 』',
'╚»🥵«╝• 𝙿𝚊𝚒𝚍 𝚆𝚑𝚎𝚎𝚕 』',
'╚»💾«╝• 𝙲𝚑𝚊𝚗𝚐𝚎 𝙸𝚍 • 𝙿𝚎𝚛𝚖𝚊𝚗𝚎𝚗𝚝 • 』',
'╚»🤫«╝• 𝚂𝚌𝚊𝚖 』× Patched ×',
'╚»🚨«╝• 𝚄𝚗𝚕𝚘𝚌𝚔 𝚂𝚒𝚛𝚎𝚗 』',
'╚»😫«╝• 𝙱𝚛𝚞𝚗 𝚘𝚞𝚝 On 』',
'╚»😫«╝• 𝙱𝚛𝚞𝚗 𝚘𝚞𝚝 Off 』',
'╚»😈«╝• Death end On 』',
'╚»😈«╝• Death end Off 』',
'╚»😳«╝• Autofarm levels On 』',
'╚»😳«╝• Autofarm levels Off 』',
'╚»💸«╝• 𝚂𝙴𝙽𝙳 𝙼𝙾𝙽𝙴𝚈 V2 』',
'╚»🛡️«╝• 2B coins 』',
'╚»💸«╝• Instant 50M 』',
'╚»🔰«╝• Custom Hp editor 』',
'╚»📎«╝• 𝚄𝚙𝚍𝚊𝚝𝚎𝚜 』',
'╚»📎«╝• 𝙰𝙱𝙾𝚄𝚃 𝚄𝚂 』',
'╚»•ᴇxɪᴛ•«╝'},
nil, ("┏━━━━━━━━༻❁༺━━━━━━━━┓\n    ❀ 𝚂𝙲𝚁𝙸𝙿𝚃 𝙱𝚈 𝚃𝙴𝙰𝙼 𝙰𝙽𝙼 ❀") .. os["date"]("\n ➣ ☀️𝚃𝚘𝚍𝚊𝚢 : %d %B %Y\n ➣ ⌚𝚃𝚒𝚖𝚎 : %X %p\n┗━━━━━━━━༻❁༺━━━━━━━━┛"))

gg.toast("TEAM ANM")
if menu == nil then
else
if menu == 1 then VVIP() end
if menu == 2 then VVIP1() end
if menu == 3 then VVIP2() end
if menu == 4 then VVIP3() end
if menu == 5 then VVIP4() end
if menu == 6 then VVIP5() end
if menu == 7 then VVIP6() end
if menu == 8 then VVIP7() end
if menu == 9 then VVIP8() end
if menu == 10 then VVIP9() end
if menu == 11 then VVIP10() end
if menu == 12 then VVIP11() end
if menu == 13 then VVIP12() end
if menu == 14 then VVIP13() end
if menu == 15 then VVIP14() end
if menu == 16 then VVIP15() end
if menu == 17 then VVIP16() end
if menu == 18 then VVIP17() end
if menu == 19 then VVIP18() end
if menu == 20 then updates() end
if menu == 21 then about() end
if menu == 22 then BYE() end
end
end






function VVIP()
gg.clearResults()
gg.clearList()
gg.setVisible(false)
if gg.alert("USE THIS HACK IN ROOM NOT LOBBY ONCE THE HACK WAS ACTIVATED SEND $800 CASH TO PLAYES", "🅶🅾", "🆁🅴🆃🆄🆁🅽") ~= 1 then
gg.setVisible(false)
gg.clearResults()
gg.clearList()
else
gg.clearResults()gg.clearList()
gg.setVisible(false)
 gg.setRanges(gg.REGION_CODE_APP)
 gg.searchNumber("1,202,590,843,160", gg.TYPE_QWORD)
 gg.processResume()
 results = gg.getResults(1000)
 count = gg.getResultsCount()
  attack = gg.getResults(count)
   local copy = false
   for i, v in ipairs(attack) do
   v.address=v.address + 0x1B0
   v.value = '9,855,353'
   v.flags = gg.TYPE_DWORD
   gg.setValues(attack)
   gg.addListItems(attack)
   gg.getListItems(attack)
   gg.clearResults()
gg.clearList()
gg.sleep(50)
gg.toast("🔰DONE🔰")
end
end
end






function VVIP1()
if isUpdate then
gg.alert([[
We haven't updated to the latest version : 4.8.15.1
Soon we update everything!!

TEAM ANM]], "🆁🅴🆃🆄🆁🅽")
return
end

gg.clearResults()
gg.clearList()
-- main code on
gg.setRanges(gg.REGION_CODE_APP)
     LibStart=gg.getRangesList('libil2cpp.so')[2].start
GH=nil
GH={}
GH[1]={}
GH[2]={}
GH[1].address=LibStart+0x358D228
GH[1].value='h200080D2'
GH[1].flags=4
GH[2].address=LibStart+(0x358D228+0x4)
GH[2].value='hC0035FD6'
GH[2].flags=4
gg.setValues(GH)
      gg.alert("OPEN LEVELS & SELECT ANY LEVEL THEN CLICK MENU")
      gg.toast("🔰DONE🔰")
    end












function VVIP2()
gg.clearResults()
gg.clearList()
-- main code on
gg.setRanges(gg.REGION_CODE_APP)
     LibStart=gg.getRangesList('libil2cpp.so')[2].start
GH=nil
GH={}
GH[1]={}
GH[2]={}
GH[1].address=LibStart+0x3A7F754
GH[1].value='h200080D2'
GH[1].flags=4
GH[2].address=LibStart+(0x3A7F754+0x4)
GH[2].value='hC0035FD6'
GH[2].flags=4
gg.setValues(GH)
      gg.toast("🔰DONE🔰")
    end







function VVIP3()
gg.clearResults()
gg.clearList()
-- main code on
LibStart=gg.getRangesList('libil2cpp.so')[2].start
GH=nil
GH={}
GH[1]={}
GH[2]={}
GH[1].address=LibStart+0x1D26F94
GH[1].value='h200080D2'
GH[1].flags=4
GH[2].address=LibStart+(0x1D26F94+0x4)
GH[2].value='hC0035FD6'
GH[2].flags=4
gg.setValues(GH)
      gg.toast("🔰DONE🔰")
    end







function VVIP4()
gg.setVisible(false)
if gg.alert([[
I'm not sure that it will work or not cuz i didn't tested it before i upload i was in rush so test it & if it doesn't work or got any error.

contact me 
Instagram : gg_hacker_cpm]], "🅶🅾", "🆁🅴🆃🆄🆁🅽") ~= 1 then
gg.setVisible(false)
gg.clearResults()
gg.clearList()
else
gg.setVisible(false)
gg.setRanges(gg.REGION_ANONYMOUS) -- Memory range
gg.searchNumber("0;30;50;100;500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0) -- Searching value
gg.processResume()
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil) -- Results
gg.editAll("-1900000000", gg.TYPE_DWORD) -- editing value
gg.clearResults()
gg.alert("➣ NOW EXIT THE EMOTE STORE & AGAIN GOTO THE EMOTE STORE") -- alert
gg.alert("➣ NOW BUY ANY 2 EMOTES WHICH HAS NEGATIVE COINS")
gg.toast("🔰DONE🔰") -- toast
end
end


function VVIP5()
gg.clearResults()
gg.clearList()
-- main code on
gg.setRanges(gg.REGION_CODE_APP)
     LibStart=gg.getRangesList('libil2cpp.so')[2].start
GH=nil
GH={}
GH[1]={}
GH[2]={}
GH[1].address=LibStart+0x3CE249C
GH[1].value='h200080D2'
GH[1].flags=4
GH[2].address=LibStart+(0x3CE249C+0x4)
GH[2].value='hC0035FD6'
GH[2].flags=4
gg.setValues(GH)
      gg.alert("Now you can buy any wheels")
      gg.toast("🔰DONE🔰")
    end
    
    
    
    

function VVIP6()
gg.clearResults()
gg.clearList()
gg.setVisible(false)
if gg.alert("MAKE SURE TO SAVE & LOGOUT YOUR ACCOUNT BEFORE USING THIS OPTION\n\n IF YOUR ALREADY SAVED & LOGGED OUT CLICK GO & IF YOU DIDN'T LOGGED OUT CLICK RETURN & LOGOUT", "🅶🅾", "🆁🅴🆃🆄🆁🅽") ~= 1 then
gg.setVisible(false)
gg.clearResults()
gg.clearList()
else
gg.clearResults()gg.clearList()
-- main code on
gg.setRanges(gg.REGION_CODE_APP)
     LibStart=gg.getRangesList('libil2cpp.so')[2].start
GH=nil
GH={}
GH[1]={}
GH[2]={}
GH[1].address=LibStart+0x45B66AC
GH[1].value='h200080D2'
GH[1].flags=4
GH[2].address=LibStart+(0x45B66AC+0x4)
GH[2].value='hC0035FD6'
GH[2].flags=4
gg.setValues(GH)
      gg.alert("Now login back your acc, you can see that your id was changed to make it permanent just save")
      gg.toast("🔰DONE🔰")
    end
    end










function VVIP7()
if isPatched then
gg.alert([[
Scam has been patched, stay tuned soon we try to find new one!

TEAM ANM]], "🆁🅴🆃🆄🆁🅽")
return
end

p1=gg.prompt({"ENTER CAR PRICE"},
{[1]=" "},
{[1]="number"})
if p1 == nil then
gg.toast("Cancel ")
  else
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(p1[1].. "X4" ,gg.TYPE_DWORD)
  p2=gg.prompt({"EDIT YOUR CUSTOM PRICE"},
    {[1]="0"},
    {[1]="number"})
  if p2 == nil then
gg.toast("Cancel ")
  else
  gg.getResults(999)
  gg.editAll(p2[1].. "X4" ,gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearList()
  gg.toast("🔰DONE🔰")
end
end
end






function VVIP8()
gg.clearResults()
gg.clearList()
gg.setVisible(false)
if gg.alert("We can't turn on the siren it more like a visual siren we can't use it but everyone can see it", "🅶🅾", "🆁🅴🆃🆄🆁🅽") ~= 1 then
gg.setVisible(false)
gg.clearResults()
gg.clearList()
else
gg.clearResults()gg.clearList()
LibStart=gg.getRangesList('libil2cpp.so')[2].start
GH=nil
GH={}
GH[1]={}
GH[2]={}
GH[1].address=LibStart+0x3601040
GH[1].value='h200080D2'
GH[1].flags=4
GH[2].address=LibStart+(0x3601040+0x4)
GH[2].value='hC0035FD6'
GH[2].flags=4
gg.setValues(GH)
gg.toast("🔰DONE🔰")
end
end


function VVIP9()
if isAd then
gg.alert([[
We haven't updated to the latest version : 4.8.15.1
Soon we update everything!!

TEAM ANM]], "🆁🅴🆃🆄🆁🅽")
return
end
LibStart = gg.getRangesList("libil2cpp.so")[2].start
        GH = {
            {address = LibStart + 85857804, value = "h00C07944", flags = 4}
        }
        gg.setValues(GH)
        gg.toast("🔰DONE🔰")
        end
        
        
function VVIP10()
if isAd then
gg.alert([[
We haven't updated to the latest version : 4.8.15.1
Soon we update everything!!

TEAM ANM]], "🆁🅴🆃🆄🆁🅽")
return
end
LibStart = gg.getRangesList("libil2cpp.so")[2].start
        GH = {
            {address = LibStart + 85857804, value = "h17B7D138", flags = 4}
        }
        gg.setValues(GH)
        gg.toast("🔰DONE🔰")
        end



function VVIP11()
if isAd then
gg.alert([[
We haven't updated to the latest version : 4.8.15.1
Soon we update everything!!

TEAM ANM]], "🆁🅴🆃🆄🆁🅽")
return
end
        LibStart = gg.getRangesList("libil2cpp.so")[2].start
        GH = {
            {address = LibStart + 85857748, value = "h0000F041", flags = 4},
            {address = LibStart + 85857752, value = "h0000F0C1", flags = 4}
        }
        gg.setValues(GH)
        gg.toast("🔰DONE🔰")
        end
        
        
        
function VVIP12()
if isAd then
gg.alert([[
We haven't updated to the latest version : 4.8.15.1
Soon we update everything!!

TEAM ANM]], "🆁🅴🆃🆄🆁🅽")
return
end
LibStart = gg.getRangesList("libil2cpp.so")[2].start
        GH = {
            {address = LibStart + 85857748, value = "h00409CC6", flags = 4},
            {address = LibStart + 85857752, value = "h00409C46", flags = 4}
        }
        gg.setValues(GH)
        gg.toast("🔰DONE🔰")
        end







function VVIP13()
-- Level autofarm
gg.setVisible(false)
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(2000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("4E-45", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.toast("🔰DONE🔰")
end





function VVIP14()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.refineNumber("4E-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(2000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0.1", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.toast("🔰DONE🔰")
end






function VVIP15()
if isProb then
gg.alert([[
Currently this option got some errors soon as possible we fix it

TEAM ANM
]], "🆁🅴🆃🆄🆁🅽")
return
end
if gg.alert("USE THIS HACK IN ROOM NOT LOBBY ONCE THE HACK WAS ACTIVATED SEND $800 CASH TO PLAYES", "🅶🅾", "🆁🅴🆃🆄🆁🅽") ~= 1 then
gg.setVisible(false)
gg.clearResults()
gg.clearList()
else
gg.clearResults()gg.clearList()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,202,590,843,160", gg.TYPE_QWORD)
gg.processResume()
gg.getResults(1000)
gg.getResultsCount()
gg.getResults(0)
gg.setValues({ -- table(18801ef)
	[1] = { -- table(559d4fc)
		['address'] = 0xbd102c24,
		['flags'] = 4, -- gg.TYPE_DWORD
		['value'] = '10,000,000',
	},
})
gg.addListItems({ -- table(18801ef)
	[1] = { -- table(559d4fc)
		['address'] = 0xbd102c24,
		['flags'] = 4, -- gg.TYPE_DWORD
		['value'] = '10,000,000',
	},
})
gg.getListItems({ -- table(18801ef)
	[1] = { -- table(559d4fc)
		['address'] = 0xbd102c24,
		['flags'] = 4, -- gg.TYPE_DWORD
		['value'] = '10,000,000',
	},
})
gg.clearResults()
gg.clearList()

gg.toast("🔰DONE🔰")
gg.clearResults()
end
end


function VVIP16()
if isPatched then
gg.alert([[
2B coin has been patched, stay tuned soon we try to find new one!

TEAM ANM]], "🆁🅴🆃🆄🆁🅽")
return
end

if gg.alert("IT JUST A VISUAL ARE YOU SURE YOU WANNA TRY IT?!", "🅶🅾", "🆁🅴🆃🆄🆁🅽") ~= 1 then
gg.setVisible(false)
gg.clearResults()
gg.clearList()
else
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6,268,592,875,603,357,709;-7,998,318,181,468,767,235;-8,069,734,941,019,061,251;4,132,763,391,716,657,875:13", gg.TYPE_QWORD)
gg.refineNumber("-6,268,592,875,603,357,709;-7,998,318,181,468,767,235:13", gg.TYPE_QWORD)
gg.getResults(999)
gg.editAll("-2,999,674,700,102,111,232;3,596,551,104", gg.TYPE_QWORD)
gg.alert("OPEN LEVELS & SELECT ANY LEVEL THEN CLICK MENU")
gg.toast("🔰DONE🔰")
end
end







function VVIP17()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("50000000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
--[[ found: 1]]
gg.getResults(300, nil, nil, nil, nil, nil, nil, nil, nil)
--[[ count: 1]]
gg.editAll("9999999999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.31009895E29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
--[[ found: 1]]
gg.getResults(300, nil, nil, nil, nil, nil, nil, nil, nil)
--[[ count: 1]]
gg.editAll("50000000", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Click Daily Social Media Money Icon")
--[[ return: 1]]
gg.toast("🔰DONE🔰")
end





function VVIP18()
input=gg.prompt({"ENTER HP YOU WANT","ENTER NM YOU WANT", "ENTER INNER HP YOU WANT", "ENTER INNER NM YOU WANT"},
{[1]=" "},
{[1]="number"},
{[2]=" "},
{[2]="number"},
{[3]=" "},
{[3]="number"},
{[4]=" "},
{[4]="number"})

if input == nil then
gg.toast("cancel")
else
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("190" ,gg.TYPE_FLOAT)
  gg.getResults(99999)
  gg.editAll(input[1] ,gg.TYPE_FLOAT)
  gg.clearResults()
  gg.sleep(50)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("300" ,gg.TYPE_FLOAT)
  gg.getResults(99999)
  gg.editAll(input[2] ,gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("5900", gg.TYPE_FLOAT)
  gg.getResults(999)
  gg.editAll(input[3], gg.TYPE_FLOAT)
  gg.clearResults()
  gg.sleep(50)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  gg.searchNumber("4100", gg.TYPE_FLOAT)
  gg.getResults(999)
  gg.editAll(input[4], gg.TYPE_FLOAT)
  gg.clearResults()
  gg.sleep(50)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.1" ,gg.TYPE_FLOAT)
  gg.getResults(999)
  gg.editAll("4E-45", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.alert("NOW BUY THE ENGINE L4 2.5 And Fast Gearbox")
  gg.alert("If you wanna get same hp modification in another car just buy the same engine in those car's\n if you wanna use anyother hp&nm in this list make sure restart your game")
  gg.clearResults()
  gg.toast("🔰DONE🔰")
  end
  end










function updates()
gg.alert([[
[+] Updated Bypass world sale
[+] Added Id changer
[~] Fixed Crashing
[~] Fixed errors
[+] Added a test key, It doesnt has expiration/rest
[+] Ip whitelist will be added soon
[+] Premium membership whitelist will be added soon
[+] Added 2B coins
[+] Autofarm levels
[+] Instant 50M
[+] Custom Hp
[~] Fixed Errors
[+] Updated all the outdated options

More options will be added soon!

Credits : TEAM ANM
]], "🆁🅴🆃🆄🆁🅽")
end








function about()
gg.alert([[
GG HACKER : CEO OF TEAM ANM
Ivão Moniz : CO-OWNER
Soraia Cordeiro : SCRIPTER, HEAD ADMIN
Steven Parrish : SCRIPTER, WEB DESIGNER
Yasuaki Tsuji : JAVASCRIPTER, SITE MANAGER
Víctor Magalhães : PAYMENT METHODS MANAGER
Claúdia da Silva : MODERATOR

TEAM ANM : We create Roblox scripts
Currently scripthub & website has been shutdown due to BYFRON anticheat!
Free version of our script is available in scriptblox.com

My proflie : https://scriptblox.com/u/GG_HACKER

Thanks to all other staffs.
]], "🆁🅴🆃🆄🆁🅽")
end











function BYE()
gg.setVisible(true)
gg.toast("❤️𝚃𝙷𝙰𝙽𝙺 𝚈𝙾𝚄 𝙵𝙾𝚁 𝚄𝚂𝙸𝙽𝙶❤️")
print(os.date("🄳🄾🄽🅃 🄵🄾🅁🄶🄴🅃 🅃🄾 🅂🅄🄱🅂🄲🅁🄸🄱🄴 \n\n⏱️ Today : %Y/%m/%d Time: %H:%M:%S ⏱️\n\n"))
print([[

╭━━━━┳━━━┳━━━┳━╮╭━╮╭━━━┳━╮╱╭┳━╮╭━╮
┃╭╮╭╮┃╭━━┫╭━╮┃┃╰╯┃┃┃╭━╮┃┃╰╮┃┃┃╰╯┃┃
╰╯┃┃╰┫╰━━┫┃╱┃┃╭╮╭╮┃┃┃╱┃┃╭╮╰╯┃╭╮╭╮┃
╱╱┃┃╱┃╭━━┫╰━╯┃┃┃┃┃┃┃╰━╯┃┃╰╮┃┃┃┃┃┃┃
╱╱┃┃╱┃╰━━┫╭━╮┃┃┃┃┃┃┃╭━╮┃┃╱┃┃┃┃┃┃┃┃
╱╱╰╯╱╰━━━┻╯╱╰┻╯╰╯╰╯╰╯╱╰┻╯╱╰━┻╯╰╯╰╯

]])




return os.exit()
end











function stopClose()
while true do
mainMenu()
gg.setVisible(false)
while gg.isVisible() == false do
end
end
end





if SENGGOLDONGGG == 2 then
stopClose()
else
UI()
end
