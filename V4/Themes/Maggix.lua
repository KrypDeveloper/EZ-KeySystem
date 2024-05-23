Module = {}

local function MakeDraggable(gui)
	gui.Active = true
	gui.Selectable = true
	gui.Draggable = true
end

local function Make(ClassName, Values)
    local instance = Instance.new(ClassName)
    for a,b in pairs(Values) do
        instance[a] = b
    end
    return instance
end

function Module.Main(tabela)
    if not isfile(tabela.HubName) then
        writefile(tabela.HubName, "")
    end
    
    local ServiceID = tabela.Service
    local PandaAuth = loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))()
    local Notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/ui/notify_ui.lua"))()

    --[[if loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/Quasar/main/src/Settings/Keyless.lua"))() and tabela.Service == "quasar" or PandaAuth:ValidateKey(tabela.HubName) or tabela:ValidateKey(readfile(tabela.HubName)) then
        tabela.NormalScript()
    end]]

    local key_system = Make("ScreenGui", {
        Parent = game:GetService("CoreGui"),
        IgnoreGuiInset = false,
        ResetOnSpawn = true,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        Name = "KeySystem"
    })

    local canvas_group = Make("CanvasGroup", {
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392),
            BorderColor3 = Color3.new(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.5, 0, 0.5, 0),
            Size = UDim2.new(0, 350, 0, 265),
            Visible = true,
            Parent = key_system
        })

        local uicorner = Make("UICorner", {
            CornerRadius = UDim.new(0, 5),
            Parent = canvas_group
        })

        local top_frame = Make("Frame", {
            BackgroundColor3 = Color3.new(0.105882, 0.105882, 0.105882),
            BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725),
            Size = UDim2.new(1, 0, 0, 40),
            Visible = true,
            Name = "TopFrame",
            Parent = canvas_group
        })

        local close_btn = Make("TextButton", {
            Font = Enum.Font.SourceSans,
            Text = "",
            TextColor3 = Color3.new(0, 0, 0),
            TextSize = 14,
            BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647),
            BorderColor3 = Color3.new(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.942857146, -15, 0.107142858, 0),
            Size = UDim2.new(0, 30, 0, 30),
            Visible = true,
            ZIndex = 2,
            Name = "CloseBtn",
            Parent = top_frame
        })

        local uicorner_2 = Make("UICorner", {
            CornerRadius = UDim.new(0, 5),
            Parent = close_btn
        })

        local clear = Make("ImageButton", {
            Image = "rbxassetid://3926305904",
            ImageColor3 = Color3.new(0.619608, 0.619608, 0.619608),
            ImageRectOffset = Vector2.new(924, 724),
            ImageRectSize = Vector2.new(36, 36),
            ImageTransparency = 0.10000000149011612,
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            LayoutOrder = 3,
            Position = UDim2.new(0.5, 0, 0.5, 0),
            Size = UDim2.new(0, 20, 0, 20),
            Visible = true,
            ZIndex = 2,
            Name = "clear",
            Parent = close_btn
        })
        
        local text_label = Make("TextLabel", {
            Font = Enum.Font.Gotham,
            RichText = true,
            Text = tostring(tabela.HubName) .. " - Key System",
            TextColor3 = Color3.new(0.862745, 0.862745, 0.862745),
            TextSize = 14,
            BackgroundColor3 = Color3.new(1, 1, 1),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.new(0, 0, 0),
            BorderSizePixel = 0,
            Size = UDim2.new(0, 350, 0, 40),
            Visible = true,
            Parent = top_frame
        })

        local text_label_2 = Make("TextLabel", {
            Font = Enum.Font.Gotham,
            Text = "To use the free version of ".. tabela.HubName.. " you need a key. Click 'Get Key' button to get your key!",
            TextColor3 = Color3.new(0.784314, 0.784314, 0.784314),
            TextSize = 14,
            TextWrapped = true,
            BackgroundColor3 = Color3.new(1, 1, 1),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.new(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.034285713, 0, 0.143999994, 14),
            Size = UDim2.new(0, 325, 0, 49),
            Visible = true,
            Parent = canvas_group
        })
        
        local text_box = Make("TextBox", {
            CursorPosition = -1,
            Font = Enum.Font.Gotham,
            PlaceholderText = "Enter Key...",
            Text = "",
            TextColor3 = Color3.new(0.784314, 0.784314, 0.784314),
            TextSize = 16,
            TextTruncate = Enum.TextTruncate.AtEnd,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804),
            BorderColor3 = Color3.new(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.034285713, 0, 0.416000009, 5),
            Size = UDim2.new(0, 325, 0, 50),
            Visible = true,
            ClearTextOnFocus = false,
            Parent = canvas_group
        })
        
        local uicorner_3 = Make("UICorner",{
            CornerRadius = UDim.new(0, 4),
            Parent = text_box
        })

        local uipadding = Make("UIPadding",{
            PaddingLeft = UDim.new(0, 15),
            Parent = text_box
        })

        local check_key = Make("TextButton",{
            Font = Enum.Font.Gotham,
            Text = "Check Key",
            TextColor3 = Color3.new(1, 1, 1),
            TextSize = 13,
            BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804),
            BorderColor3 = Color3.new(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.034285713, 0, 0.656000018, 2),
            Size = UDim2.new(0, 160, 0, 35),
            Visible = true,
            Name = "CheckKey",
            Parent = canvas_group
        })

        local uicorner_4 = Make("UICorner",{
            CornerRadius = UDim.new(0, 4),
            Parent = check_key
        })

        local get_key = Make("TextButton",{
            Font = Enum.Font.Gotham,
            Text = "Get Key",
            TextColor3 = Color3.new(1, 1, 1),
            TextSize = 13,
            BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804),
            BorderColor3 = Color3.new(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0.505714238, 0, 0.656000018, 2),
            Size = UDim2.new(0, 160, 0, 35),
            Visible = true,
            Name = "GetKey",
            Parent = canvas_group
        })

        local uicorner_5 = Make("UICorner",{
            CornerRadius = UDim.new(0, 4),
            Parent = get_key
        })
        
    local function CloseGUI()
        game:GetService("TweenService"):Create(canvas_group, TweenInfo.new(0.45, Enum.EasingStyle.Linear), {Position = UDim2.new(0.5, 0, -1.5, 0)}):Play()
        game:GetService("TweenService"):Create(top_frame, TweenInfo.new(0.45, Enum.EasingStyle.Linear), {Position = UDim2.new(0.5, 0, -1.5, 0)}):Play()
        task.wait(0.45)
        key_system:Destroy()
    end
    
    local function keyValid()
        if PandaAuth:ValidateKey(ServiceID, text_box.Text) then
            writefile(tabela.HubName, text_box.Text)
            Notif.New("Correct key! Loading script (may take long)...")
            tabela.NormalScript()
        else
            Notif.New("INVALID KEY")
        end
    end

    check_key.MouseButton1Click:Connect(function()
        keyValid()
    end)

    local function GetKey()
        text_box.Text = loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))():GetKey(tabela.Service)
        setclipboard(loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))():GetKey(tabela.Service))
        Notif.New("Copied URL to paste into your browser.", 2)
    end

    get_key.MouseButton1Click:Connect(function()
        GetKey()
    end)

    Notif.New("loaded", 2)
end

return Module
