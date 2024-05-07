--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 14 | Scripts: 0 | Modules: 0
-- StarterGui.Main

Module = {}

function Module.Main(tabela)
    print("Starting " .. tabela.HubName .. " KeySystem UI")
    local PandaAuth = tabela.PandaAuth
    local ServiceID = tabela.Service

    G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
    G2L["1"]["Name"] = [[Main]]
    G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

    -- StarterGui.Main.KeySys
    G2L["2"] = Instance.new("CanvasGroup", G2L["1"])
    G2L["2"]["GroupTransparency"] = 0.2
    G2L["2"]["BorderSizePixel"] = 0
    G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["2"]["Size"] = UDim2.new(0, 400, 0, 242)
    G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
    G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["2"]["Name"] = [[KeySys]]

    -- StarterGui.Main.KeySys.UICorner
    G2L["3"] = Instance.new("UICorner", G2L["2"])

    -- StarterGui.Main.KeySys.round frame
    G2L["4"] = Instance.new("Frame", G2L["2"])
    G2L["4"]["BorderSizePixel"] = 5
    G2L["4"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 30)
    G2L["4"]["Size"] = UDim2.new(0, 600, 0, 212)
    G2L["4"]["Position"] = UDim2.new(0, -120, 0, 150)
    G2L["4"]["BorderColor3"] = Color3.fromRGB(51, 51, 51)
    G2L["4"]["Name"] = [[round frame]]
    G2L["4"]["Rotation"] = 40

    -- StarterGui.Main.KeySys.UIStroke
    G2L["5"] = Instance.new("UIStroke", G2L["2"])
    G2L["5"]["Color"] = Color3.fromRGB(255, 255, 255)
    -- StarterGui.Main.KeySys.login.UICorner
    G2L["7"] = Instance.new("UICorner", G2L["6"])

    -- StarterGui.Main.KeySys.getkey
    G2L["8"] = Instance.new("TextButton", G2L["2"])
    G2L["8"]["BorderSizePixel"] = 0
    G2L["8"]["TextSize"] = 20
    G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["8"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 121)
    G2L["8"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["8"]["Size"] = UDim2.new(0, 136, 0, 32)
    G2L["8"]["Name"] = [[getkey]]
    G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["8"]["Text"] = [[Get Key]]
    G2L["8"]["Position"] = UDim2.new(0.1375, 0, 0.7686, 0)
    G2L["8"].MouseButton1Click:Connect(
        function()
            setclipboard(PandaAuth:GetKey(ServiceID))
        end
    )

    -- StarterGui.Main.KeySys.getkey.UICorner
    G2L["9"] = Instance.new("UICorner", G2L["8"])

    -- StarterGui.Main.KeySys.whitelist
    G2L["a"] = Instance.new("TextLabel", G2L["2"])
    G2L["a"]["BorderSizePixel"] = 2
    G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["a"]["TextSize"] = 20
    G2L["a"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["a"]["TextColor3"] = Color3.fromRGB(201, 201, 201)
    G2L["a"]["BackgroundTransparency"] = 0.9
    G2L["a"]["Size"] = UDim2.new(0, 336, 0, 129)
    G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["a"]["Text"] = [[Waiting for whitelist]]
    G2L["a"]["Name"] = [[whitelist]]
    G2L["a"]["Position"] = UDim2.new(0.08, 0, 0.16942, 0)

    -- StarterGui.Main.KeySys.whitelist.UIStroke
    G2L["b"] = Instance.new("UIStroke", G2L["a"])
    G2L["b"]["Thickness"] = 0.2

    -- StarterGui.Main.KeySys.Frame
    G2L["c"] = Instance.new("Frame", G2L["2"])
    G2L["c"]["BorderSizePixel"] = 0
    G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["c"]["Size"] = UDim2.new(0, 400, 0, 19)
    G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

    -- StarterGui.Main.KeySys.Frame.TextLabel
    G2L["d"] = Instance.new("TextLabel", G2L["c"])
    G2L["d"]["BorderSizePixel"] = 0
    G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["d"]["TextSize"] = 15
    G2L["d"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    G2L["d"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["d"]["Size"] = UDim2.new(0, 400, 0, 19)
    G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["d"]["Text"] = tabela.HubName

    -- StarterGui.Main.KeySys.Frame.UIStroke
    G2L["e"] = Instance.new("UIStroke", G2L["c"])
    -- StarterGui.Main.KeySys.login
    G2L["6"] = Instance.new("TextButton", G2L["2"])
    G2L["6"]["BorderSizePixel"] = 0
    G2L["6"]["TextSize"] = 20
    G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["6"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 40)
    G2L["6"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["6"]["Size"] = UDim2.new(0, 136, 0, 32)
    G2L["6"]["Name"] = [[login]]
    G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["6"]["Text"] = [[Login]]
    G2L["6"]["Position"] = UDim2.new(0.51, 0, 0.7686, 0)
    G2L["6"].MouseButton1Click:Connect(
        function()
            if PandaAuth:Authenticate_Keyless(ServiceID) then
                G2L["a"]["Text"] = [[Sucess! loading Script]]
                tabela.NormalScript()
                G2L["1"]:Destroy()
            else
                G2L["a"]["Text"] = [[Invalid Key]]
                wait(2)
                G2L["a"]["Text"] = [[Waiting for whitelist]]
            end
        end
    )

    while not PandaAuth:Authenticate_Keyless(ServiceID) do
        wait(5)
        if PandaAuth:Authenticate_Keyless(ServiceID) then
            tabela.NormalScript()
            G2L["1"]:Destroy()
            break
        else
            G2L["a"]["Text"] = [[Invalid Key trying again in few seconds]]
        end
    end
end

return Module
