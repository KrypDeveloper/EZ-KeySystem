local KeySys = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/EzKeySystemMain.lua"))()

KeySys.Main({
  HubName = "TEST",
  Discord = "https://discord.gg/codexlol",
  Service = "pandadevkit",
  CustomTextBoxMessage = nil, --put a string if u want
  Premium = false,
  NormalScript = function()
    print("this is normal script")
  end,
  PremiumScript = function()
    print("this is a premium script")
  end,
  LoopKeyless = true
})
