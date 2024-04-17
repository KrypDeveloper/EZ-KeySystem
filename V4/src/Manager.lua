Module = {}

function Module.GetSelector(Theme)
  if Theme ~= nil
    return loadstring("https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/V4/Themes/"..theme..".lua")()
  else
    return loadstring("https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/V3/EzKeySystem.lua"))()
end

return Module
