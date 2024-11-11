local Settings = {
    Type = "Key",
    UI = "MaggixV2"
    HubName = "Quasar Hub",
    Discord = "https://discord.com/invite/ugfag6bq",
    Blur = false
}

local Type = "Key"
local UI = "MaggixV2"
local KeySys = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/EZ-KeySystem/main/V5/UIS/" .. Settings Type .. "/" .. Settings.UI .. ".lua"))()

local Validate = function(key)
    print(key)
    return true
end

if isfile("Pelinda Data/".. Settings.HubName.. "/Key.txt") and Validate(readfile("Pelinda Data/".. Settings.HubName.. "/Key.txt")) then
    print("Validated!")
else
    local Window =
        KeySys:CreateGui(
        {
            Data = {
                HubName = HubName
            },
            Discord = Settings.Discord
            Blur = Settings.Blur
        }
    )

    Window:SetGetKey(
        function()
            setclipboard("https://google.com")
        end
    )

    Window:SetCheckKey(
        function(key)
            if Validate(key) then
                print("Whitelisted")
                writefile("Pelinda Data/".. Settings.HubName.. "/Key.txt", key)
                Window:DestroyGui()
            end
        end
    )
end
