KeySys = {}
local function MakeDraggable(gui)
	gui.Active = true
	gui.Selectable = true
	gui.Draggable = true
end

function KeySys.Main(tabela)
    local Notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/ui/notify_ui.lua"))()
	local key_system = Instance.new("ScreenGui")
	key_system.Parent = game:GetService("CoreGui")
	key_system.IgnoreGuiInset = false
	key_system.ResetOnSpawn = true
	key_system.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	key_system.Name = "KeySystem"
	local canvas_group = Instance.new("CanvasGroup")
	canvas_group.AnchorPoint = Vector2.new(0.5, 0.5)
	canvas_group.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
	canvas_group.BorderColor3 = Color3.new(0, 0, 0)
	canvas_group.BorderSizePixel = 0
	canvas_group.Position = UDim2.new(0.5, 0, 0.5, 0)
	canvas_group.Size = UDim2.new(0, 350, 0, 265)
	canvas_group.Visible = true
	canvas_group.Parent = key_system
	local uicorner = Instance.new("UICorner")
	uicorner.CornerRadius = UDim.new(0, 5)
	uicorner.Parent = canvas_group
	local top_frame = Instance.new("Frame")
	top_frame.BackgroundColor3 = Color3.new(0.105882, 0.105882, 0.105882)
	top_frame.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
	top_frame.Size = UDim2.new(1, 0, 0, 40)
	top_frame.Visible = true
	top_frame.Name = "TopFrame"
	top_frame.Parent = canvas_group
	local close_btn = Instance.new("TextButton")
	close_btn.Font = Enum.Font.SourceSans
	close_btn.Text = ""
	close_btn.TextColor3 = Color3.new(0, 0, 0)
	close_btn.TextSize = 14
	close_btn.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
	close_btn.BorderColor3 = Color3.new(0, 0, 0)
	close_btn.BorderSizePixel = 0
	close_btn.Position = UDim2.new(0.942857146, -15, 0.107142858, 0)
	close_btn.Size = UDim2.new(0, 30, 0, 30)
	close_btn.Visible = true
	close_btn.ZIndex = 2
	close_btn.Name = "CloseBtn"
	close_btn.Parent = top_frame
	local uicorner_2 = Instance.new("UICorner")
	uicorner_2.CornerRadius = UDim.new(0, 5)
	uicorner_2.Parent = close_btn
	local clear = Instance.new("ImageButton")
	clear.Image = "rbxassetid://3926305904"
	clear.ImageColor3 = Color3.new(0.619608, 0.619608, 0.619608)
	clear.ImageRectOffset = Vector2.new(924, 724)
	clear.ImageRectSize = Vector2.new(36, 36)
	clear.ImageTransparency = 0.10000000149011612
	clear.AnchorPoint = Vector2.new(0.5, 0.5)
	clear.BackgroundTransparency = 1
	clear.LayoutOrder = 3
	clear.Position = UDim2.new(0.5, 0, 0.5, 0)
	clear.Size = UDim2.new(0, 20, 0, 20)
	clear.Visible = true
	clear.ZIndex = 2
	clear.Name = "clear"
	clear.Parent = close_btn
	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.Gotham
	text_label.RichText = true
	text_label.Text = tostring(tabela.HubName) .. " - Key System"
	text_label.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	text_label.TextSize = 14
	text_label.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label.BackgroundTransparency = 1
	text_label.BorderColor3 = Color3.new(0, 0, 0)
	text_label.BorderSizePixel = 0
	text_label.Size = UDim2.new(0, 350, 0, 40)
	text_label.Visible = true
	text_label.Parent = top_frame
	local text_label_2 = Instance.new("TextLabel")
	text_label_2.Font = Enum.Font.Gotham
	text_label_2.Text = "To use the free version of ".. tabela.HubName.. " you need a key. Click 'Get Key' button to get your key!"
	text_label_2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
	text_label_2.TextSize = 14
	text_label_2.TextWrapped = true
	text_label_2.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label_2.BackgroundTransparency = 1
	text_label_2.BorderColor3 = Color3.new(0, 0, 0)
	text_label_2.BorderSizePixel = 0
	text_label_2.Position = UDim2.new(0.034285713, 0, 0.143999994, 14)
	text_label_2.Size = UDim2.new(0, 325, 0, 49)
	text_label_2.Visible = true
	text_label_2.Parent = canvas_group
	local text_box = Instance.new("TextBox")
	text_box.CursorPosition = -1
	text_box.Font = Enum.Font.Gotham
	text_box.PlaceholderText = "Enter Key..."
	text_box.Text = ""
	text_box.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
	text_box.TextSize = 16
	text_box.TextTruncate = Enum.TextTruncate.AtEnd
	text_box.TextXAlignment = Enum.TextXAlignment.Left
	text_box.BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804)
	text_box.BorderColor3 = Color3.new(0, 0, 0)
	text_box.BorderSizePixel = 0
	text_box.Position = UDim2.new(0.034285713, 0, 0.416000009, 5)
	text_box.Size = UDim2.new(0, 325, 0, 50)
	text_box.Visible = true
	text_box.ClearTextOnFocus = false
	text_box.Parent = canvas_group
	local uicorner_3 = Instance.new("UICorner")
	uicorner_3.CornerRadius = UDim.new(0, 4)
	uicorner_3.Parent = text_box
	local uipadding = Instance.new("UIPadding")
	uipadding.PaddingLeft = UDim.new(0, 15)
	uipadding.Parent = text_box
	local check_key = Instance.new("TextButton")
	check_key.Font = Enum.Font.Gotham
	check_key.Text = "Check Key"
	check_key.TextColor3 = Color3.new(1, 1, 1)
	check_key.TextSize = 13
	check_key.BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804)
	check_key.BorderColor3 = Color3.new(0, 0, 0)
	check_key.BorderSizePixel = 0
	check_key.Position = UDim2.new(0.034285713, 0, 0.656000018, 2)
	check_key.Size = UDim2.new(0, 160, 0, 35)
	check_key.Visible = true
	check_key.Name = "CheckKey"
	check_key.Parent = canvas_group
	local uicorner_4 = Instance.new("UICorner")
	uicorner_4.CornerRadius = UDim.new(0, 4)
	uicorner_4.Parent = check_key
	local get_key = Instance.new("TextButton")
	get_key.Font = Enum.Font.Gotham
	get_key.Text = "Get Key"
	get_key.TextColor3 = Color3.new(1, 1, 1)
	get_key.TextSize = 13
	get_key.BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804)
	get_key.BorderColor3 = Color3.new(0, 0, 0)
	get_key.BorderSizePixel = 0
	get_key.Position = UDim2.new(0.505714238, 0, 0.656000018, 2)
	get_key.Size = UDim2.new(0, 160, 0, 35)
	get_key.Visible = true
	get_key.Name = "GetKey"
	get_key.Parent = canvas_group
	local uicorner_5 = Instance.new("UICorner")
	uicorner_5.CornerRadius = UDim.new(0, 4)
	uicorner_5.Parent = get_key

	--[[if tabela.Discord ~= "" then
		local discord = Instance.new("TextButton")
		discord.Font = Enum.Font.Gotham
		discord.Text = "Join the Discord Server"
		discord.TextColor3 = Color3.new(1, 1, 1)
		discord.TextSize = 13
		discord.BackgroundColor3 = Color3.new(0, 0.588235, 0.392157)
		discord.BorderColor3 = Color3.new(0, 0, 0)
		discord.BorderSizePixel = 0
		discord.Position = UDim2.new(0.04, 0, 0.8, 5)
		discord.Size = UDim2.new(0, 325, 0, 35)
		discord.Visible = true
		discord.Name = "Discord"
		discord.Parent = canvas_group
		local uicorner_6 = Instance.new("UICorner")
		uicorner_6.CornerRadius = UDim.new(0, 4)
		uicorner_6.Parent = discord

		discord.MouseButton1Click:Connect(function()
			setclipboard(tabela.Discord)
			Notif.new("Copied to clipboard")
		end)
	
		canvas_group.Size = UDim2.new(0, 350, 0, 185)
		text_box.Position =
			UDim2.new(text_box.Position.X.Scale, text_box.Position.X.Offset, text_box.Position.Y.Scale, 10)
		get_key.Position = UDim2.new(get_key.Position.X.Scale, get_key.Position.X.Offset, get_key.Position.Y.Scale, 20)
		check_key.Position =
			UDim2.new(check_key.Position.X.Scale, check_key.Position.X.Offset, check_key.Position.Y.Scale - 40, 20)
	end
]]
	local function CloseGUI()
		game:GetService("TweenService")
			:Create(
				canvas_group,
				TweenInfo.new(0.45, Enum.EasingStyle.Linear),
				{ Position = UDim2.new(0.5, 0, -1.5, 0) }
			)
			:Play()
		game:GetService("TweenService")
			:Create(top_frame, TweenInfo.new(0.45, Enum.EasingStyle.Linear), { Position = UDim2.new(0.5, 0, -1.5, 0) })
			:Play()
		task.wait(0.45)
		key_system:Destroy()
		UIMade = false
	end
	
	close_btn.MouseButton1Click:Connect(CloseGUI)
		
	       local keyValid = tabela.PandaAuth:ValidateKey(textbox.Text)
			if keyValid then
				if writefile then
					writefile(tabela.HubName.. " Key.txt", textbox.Text)
				end
				Notif.New("Key is valid! Loading " .. tabela.HubName.. "...", 5)
				CloseGUI()
			else
				Notif.New("Invalid/Expired key!", 2)
				text_box.Text = ""
			end
                end

		check_key.MouseButton1Click:Connect(keyValid)

		get_key.MouseButton1Click:Connect(function()
			text_box.Text = tabela.PandaAuth:GetKey()
				setclipboard(tabela.PandaAuth:GetKey(tabela.Service))
				Notif.new("Copied URL to paste into your browser.", 2)
			
				--Notif.new("Your executor doesn't support setclipboard.", 2)
			
		end)
		
		
Notif.new("loaded", 2)


return KeySys
