Module = {}

local function a(Theme)
  return "https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/V4/Themes/".. Theme.. ".lua"
end

function Module.GetSelector(Theme)
  if Theme ~= nil then
    local link = a(Theme)
    return loadstring(game:HttpGet(link))()
  else
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/V3/EzKeySystem.lua"))()
  end
end

return Module
