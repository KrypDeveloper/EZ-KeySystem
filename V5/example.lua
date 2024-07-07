local Type = "Key"
local UI = "MaggixV2"
local KeySys =
    loadstring(
    game:HttpGet(
        "https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/V5/UIS/" .. Type .. "/" .. UI .. ".lua"
    )
)()

local ValidateFunctionYouWant = function(ki)
    print(ki)
    return true
end

if isfile("Pelinda Data/Quasar Hub/Key.txt") and ValidateFunctionYouWant(readfile("Pelinda Data/Quasar Hub/Key.txt")) then
    print("Validated!")
else
    local Window =
        KeySys:CreateGui(
        {
            Data = {
                HubName = "Quasar Hub"
            },
            Discord = "https://discord.com/invite/ugfag6bq"
        }
    )

    Window:SetGetKey(
        function()
            setclipboard("https://google.com")
        end
    )

    Window:SetCheckKey(
        function(key)
            if ValidateFunctionYouWant(key) then
                print("Whitelisted")
                writefile("Pelinda Data/Quasar Hub/Key.txt", key)
                Window:DestroyGui()
            end
        end
    )
end
