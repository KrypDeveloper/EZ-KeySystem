Module = {}
local errosfound = 0
function Module.Analyse(link)
  for a,b in pairs(game:HttpGet(link)) do
    if a and b then
      print(a, b.. "analised")
    else
      errosfound = errosfound + 1
    end
    warn(errosfound
      .. " erros founded")
  end
end

return Module
