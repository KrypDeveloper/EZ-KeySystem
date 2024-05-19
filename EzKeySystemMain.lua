local Theme = "Maggix"
local KeySys = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/V4/Themes/".. Theme.. ".lua"))()
Module = {}

function Module.Main(tabela)
KeySys.Main({
  HubName = tabela.HubName,
  PandaAuth = loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))(),
  Discord = "https://discord.com/invite/txqzuUuTZh",
  Service = tabela.Service,
  CustomTextBoxMessage = nil, --put a string if u want
  KeylessSettings = {
  	LoopKeyless = {
  	  Active = true,
        Interval = 5
       },
        CorrectHWID = "Loading Script...",
        IncorrectHWID = "INCORRECT HWID",
       PremiumEnabled = false,
       SavePremium = true 
   },
  NormalScript = function()
    tabela.NormalScript()
  end,
  PremiumScript = function()
    print("this is a premium script")
  end
})
end

return Module
