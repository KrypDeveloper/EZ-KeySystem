local KeySys = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/V2/EzKeySystem.lua"))()

KeySys.Main({
  HubName = "TEST",
  PandaAuth = loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))(),
  Discord = "https://discord.gg/codexlol"
  Service = "pandadevkit",
  CustomTextBoxMessage = nil, --put a string if u want
  KeylessSettings = {
  	LoopKeyless = {
  	  Active = true,
        Interval = 5
       },
        CorrectHWID = "Loading Script...",
        IncorrectHWID = "INCORRECT HWID",
       PremiumEnabled = false
   },
  NormalScript = function()
    print("this is normal script")
  end,
  PremiumScript = function()
    print("this is a premium script")
  end
})