Module = {}

function Module.Main(tabela)
  local Sentinel = loadstring(game:HttpGet("https://raw.githubusercontent.com/x7cloud/Luminous/main/Sentinel/Sentinel.x7c"))()

    Sentinel:Create({
        ServiceName = tabela.HubName,
        ServiceID = tabela.Service,
        AutoLogin = tabela.KeylessSettings.LoopKeyless.Active,
        Callback = function()
            tabela.NormalScript()
        end
    })
end

return Module
