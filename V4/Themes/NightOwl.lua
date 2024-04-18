--HI
Module = {}
--Notify system
local CoreGUI = game.Players.LocalPlayer.PlayerGui
local TS = game:GetService("TweenService")


local function Hide_UI(gui)
	gui.Active = false
end

local screen_gui = Instance.new("ScreenGui")
screen_gui.Parent = CoreGUI

local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0.5, 0.949999988079071)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 1
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.5, 0, 0.954999983, 0)
frame.Size = UDim2.new(0, 100, 0, 100)
frame.Visible = true
frame.Parent = screen_gui

local uilist_layout = Instance.new("UIListLayout")
uilist_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uilist_layout.Parent = frame

local function NotifNew(text, timee)
	local frame_2 = Instance.new("Frame")
	frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
	frame_2.BorderColor3 = Color3.new(0, 0, 0)
	frame_2.BorderSizePixel = 0
	frame_2.BackgroundTransparency = 1
	frame_2.Size = UDim2.new(0, 100, 0, 0)
	frame_2.Visible = true
	frame_2.Parent = frame

	-- Main Notification Frame
	local frame_3 = Instance.new("Frame")
	frame_3.AnchorPoint = Vector2.new(0.5, 1)
	frame_3.AutomaticSize = Enum.AutomaticSize.X
	frame_3.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
	frame_3.BackgroundTransparency = 0.20000000298023224
	frame_3.BorderColor3 = Color3.new(0, 0, 0)
	frame_3.Position = UDim2.new(0.5, 0, 1, 60)
	frame_3.Size = UDim2.new(0, 0, 0, 30)
	frame_3.Visible = true
	frame_3.Parent = frame_2

	local uicorner = Instance.new("UICorner")
	uicorner.CornerRadius = UDim.new(0, 6)
	uicorner.Parent = frame_3

	local uipadding = Instance.new("UIPadding")
	uipadding.PaddingBottom = UDim.new(0, 3)
	uipadding.PaddingLeft = UDim.new(0, 3)
	uipadding.PaddingRight = UDim.new(0, 3)
	uipadding.PaddingTop = UDim.new(0, 3)
	uipadding.Parent = frame_3

	local uistroke = Instance.new("UIStroke")
	uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uistroke.Color = Color3.new(0.0313726, 0.0313726, 0.0313726)
	uistroke.Parent = frame_3

	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.Gotham
	text_label.Text = text
	text_label.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
	text_label.TextSize = 14
	text_label.AutomaticSize = Enum.AutomaticSize.X
	text_label.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label.BackgroundTransparency = 1
	text_label.BorderColor3 = Color3.new(0, 0, 0)
	text_label.BorderSizePixel = 0
	text_label.Size = UDim2.new(0, 0, 0, 24)
	text_label.Visible = true
	text_label.Parent = frame_3

	local uipadding_2 = Instance.new("UIPadding")
	uipadding_2.PaddingLeft = UDim.new(0, 5)
	uipadding_2.PaddingRight = UDim.new(0, 30)
	uipadding_2.Parent = text_label

	local text_button = Instance.new("TextButton")
	text_button.Font = Enum.Font.SourceSans
	text_button.Text = ""
	text_button.TextColor3 = Color3.new(0, 0, 0)
	text_button.TextSize = 14
	text_button.AnchorPoint = Vector2.new(1, 0.5)
	text_button.BackgroundColor3 = Color3.new(0, 0, 0)
	text_button.BackgroundTransparency = 1
	text_button.BorderColor3 = Color3.new(0, 0, 0)
	text_button.BorderSizePixel = 0
	text_button.Position = UDim2.new(1, 0, 0.5, 0)
	text_button.Size = UDim2.new(0, 24, 0, 24)
	text_button.Visible = true
	text_button.Parent = frame_3

	local uicorner_2 = Instance.new("UICorner")
	uicorner_2.CornerRadius = UDim.new(0, 5)
	uicorner_2.Parent = text_button

	local image_button = Instance.new("ImageButton")
	image_button.Image = "rbxassetid://3926305904"
	image_button.ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314)
	image_button.ImageRectOffset = Vector2.new(924, 724)
	image_button.ImageRectSize = Vector2.new(36, 36)
	image_button.AnchorPoint = Vector2.new(0.5, 0.5)
	image_button.BackgroundTransparency = 1
	image_button.LayoutOrder = 3
	image_button.Position = UDim2.new(0.5, 0, 0.5, 0)
	image_button.Size = UDim2.new(0, 18, 0, 18)
	image_button.Visible = true
	image_button.ZIndex = 2
	image_button.Parent = text_button

	--Animations
	TS:Create(frame_3, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Position = UDim2.new(0.5, 0, 1, 0) }):Play()
	TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 35) }):Play()

	-- Close Button
	local function close_notif()
		TS:Create(image_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { ImageTransparency = 1 }):Play()
		TS:Create(text_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
		TS:Create(text_label, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
		task.wait(.17)
		TS:Create(frame_3, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
		TS:Create(uistroke, TweenInfo.new(0.24, Enum.EasingStyle.Quint), { Transparency = 1 }):Play()
		task.wait(.05)
		TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 0) }):Play()
		task.wait(.2)
		frame_2:Destroy()
	end
	text_button.MouseEnter:Connect(function()
		TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 0.8 }):Play()
		TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint),
			{ ImageColor3 = Color3.new(0.890196, 0.054902, 0.054902) }):Play()
	end)

	text_button.MouseLeave:Connect(function()
		TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
		TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint),
			{ ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314) }):Play()
	end)

	text_button.MouseButton1Click:Connect(function()
		TS:Create(image_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { ImageTransparency = 1 }):Play()
		TS:Create(text_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
		TS:Create(text_label, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
		task.wait(.17)
		TS:Create(frame_3, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
		TS:Create(uistroke, TweenInfo.new(0.24, Enum.EasingStyle.Quint), { Transparency = 1 }):Play()
		task.wait(.05)
		TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 0) }):Play()
		task.wait(.2)
		frame_2:Destroy()
	end)
	image_button.MouseButton1Click:Connect(close_notif)
	task.delay(tonumber(timee) and timee or 10, close_notif)
end
--END
function Module.Main(tabela)
local Main = Instance.new("ScreenGui")
local MainFrame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local Check = Instance.new("TextLabel")
local Premium = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
local Premium_2 = Instance.new("ImageLabel")
local UICorner_5 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local Key = Instance.new("TextBox")
local CheckKey = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local ResetHWID = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local ClosePremium = Instance.new("ImageButton")
local Separator = Instance.new("Frame")
local Separator_2 = Instance.new("Frame")
Main.Name = "Main"
Main.Parent = game:GetService("CoreGui")
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainFrame.Name = "MainFrame"
MainFrame.Parent = Main
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BackgroundTransparency = 0.900
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0.125, -9, 0.32100001, 13)
MainFrame.Size = UDim2.new(0.75, 0, 0.45933333, 0)
MainFrame.Image = "rbxassetid://15327777487"
TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel.BackgroundTransparency = 0.600
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 613, 0, 50)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = tabela.HubName
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
UICorner.Parent = TextLabel
UICorner_2.Parent = MainFrame
Check.Name = "Check"
Check.Parent = MainFrame
Check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Check.BackgroundTransparency = 1.000
Check.BorderColor3 = Color3.fromRGB(0, 0, 0)
Check.BorderSizePixel = 0
Check.Position = UDim2.new(0.312958449, 0, 0.853410721, 0)
Check.Size = UDim2.new(0, 200, 0, 50)
Check.Font = Enum.Font.SourceSansItalic
Check.Text = "Checking again in..."
Check.TextColor3 = Color3.fromRGB(255, 255, 255)
Check.TextScaled = true
Check.TextSize = 14.000
Check.TextWrapped = true
Premium.Name = "Premium"
Premium.Parent = MainFrame
Premium.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Premium.BorderColor3 = Color3.fromRGB(0, 0, 0)
Premium.BorderSizePixel = 0
Premium.Position = UDim2.new(0, 0, 0.145137876, 0)
Premium.Size = UDim2.new(0, 34, 0, 34)
Premium.Image = "rbxassetid://2047155752"
UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = Premium
if tabela.Discord ~= nil then
  local Discord = Instance.new("ImageButton")
  Discord.Name = "Discord"
  Discord.Parent = MainFrame
  Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
  Discord.BorderSizePixel = 0
  Discord.Position = UDim2.new(0.0554197244, 0, 0.145137876, 0)
  Discord.Size = UDim2.new(0, 34, 0, 34)
  Discord.Image = "rbxassetid://17056354120"
  Discord.MouseButton1Click:Connect(function()
        setclipboard(tabela.Discord)
        NotifNew("sent to you clipboard", 5)
   end)
 end
UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = Discord
Premium_2.Name = "Premium"
Premium_2.Parent = Main
Premium_2.Active = true
Premium_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Premium_2.BackgroundTransparency = 0.900
Premium_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Premium_2.BorderSizePixel = 0
Premium_2.Draggable = true
Premium_2.Position = UDim2.new(0.125, -9, 0.32100001, 13)
Premium_2.Size = UDim2.new(0.75, 0, 0.45933333, 0)
Premium_2.Visible = false
Premium_2.Image = "rbxassetid://15327777487"
UICorner_5.Parent = Premium_2
TextLabel_2.Parent = Premium_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_2.BackgroundTransparency = 0.600
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 613, 0, 50)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = "PREMIUM"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
UICorner_6.Parent = TextLabel_2
Key.Name = "Key"
Key.Parent = Premium_2
Key.BackgroundColor3 = Color3.fromRGB(12, 7, 25)
Key.BorderColor3 = Color3.fromRGB(0, 0, 0)
Key.BorderSizePixel = 0
Key.Position = UDim2.new(0, 0, 0.145137876, 0)
Key.Size = UDim2.new(0, 613, 0, 218)
Key.Font = Enum.Font.SourceSans
Key.PlaceholderColor3 = Color3.fromRGB(0, 255, 225)
Key.PlaceholderText = 'Put your Premium KEY here and after click in "Check Key" Button'
Key.Text = ""
Key.TextColor3 = Color3.fromRGB(255, 255, 255)
Key.TextSize = 19.000
Key.TextWrapped = true
Key.TextXAlignment = Enum.TextXAlignment.Left
Key.TextYAlignment = Enum.TextYAlignment.Top
CheckKey.Name = "CheckKey"
CheckKey.Parent = Premium_2
CheckKey.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CheckKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
CheckKey.BorderSizePixel = 0
CheckKey.Position = UDim2.new(0.0374898128, 0, 0.77674067, 0)
CheckKey.Size = UDim2.new(0, 192, 0, 62)
CheckKey.Font = Enum.Font.Unknown
CheckKey.Text = "Check Key"
CheckKey.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckKey.TextScaled = true
CheckKey.TextSize = 14.000
CheckKey.TextStrokeColor3 = Color3.fromRGB(162, 0, 255)
CheckKey.TextWrapped = true
UICorner_7.CornerRadius = UDim.new(1, 0)
UICorner_7.Parent = CheckKey
ResetHWID.Name = "ResetHWID"
ResetHWID.Parent = Premium_2
ResetHWID.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ResetHWID.BorderColor3 = Color3.fromRGB(0, 0, 0)
ResetHWID.BorderSizePixel = 0
ResetHWID.Position = UDim2.new(0.573757112, 0, 0.77674067, 0)
ResetHWID.Size = UDim2.new(0, 192, 0, 62)
ResetHWID.Font = Enum.Font.Unknown
ResetHWID.Text = "RESET HWID"
ResetHWID.TextColor3 = Color3.fromRGB(255, 255, 255)
ResetHWID.TextScaled = true
ResetHWID.TextSize = 14.000
ResetHWID.TextStrokeColor3 = Color3.fromRGB(162, 0, 255)
ResetHWID.TextWrapped = true
UICorner_8.CornerRadius = UDim.new(1, 0)
UICorner_8.Parent = ResetHWID
ClosePremium.Name = "ClosePremium"
ClosePremium.Parent = Premium_2
ClosePremium.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClosePremium.BackgroundTransparency = 1.000
ClosePremium.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClosePremium.BorderSizePixel = 0
ClosePremium.Position = UDim2.new(0.916055441, 0, 0, 0)
ClosePremium.Size = UDim2.new(0, 51, 0, 50)
ClosePremium.Image = "rbxassetid://10116075238"
Separator.Name = "Separator"
Separator.Parent = Premium_2
Separator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Separator.BorderColor3 = Color3.fromRGB(0, 0, 0)
Separator.BorderSizePixel = 0
Separator.Position = UDim2.new(0, 0, 0.145137876, 0)
Separator.Size = UDim2.new(0, 613, 0.00999999978, 0)
Separator_2.Name = "Separator"
Separator_2.Parent = Premium_2
Separator_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Separator_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Separator_2.BorderSizePixel = 0
Separator_2.Position = UDim2.new(0, 0, 0.777939022, 0)
Separator_2.Size = UDim2.new(0, 613, 0.00999999978, 0)
MainFrame.Draggable = true
MainFrame.Selectable = true
MainFrame.Active = true

	
	ResetHWID.MouseButton1Click:Connect(function()
		NotifNew("Not added yet...", 5)
	end)	
	
CheckKey.MouseButton1Click:Connect(function()
	NotifNew("Checking...", 5)
  if tabela.PandaAuth:ValidatePremiumKey(tabela.Service, Key) then
    if tabela.KeylessSettings.PremiumEnabled == true then
        tabela.PremiumScript()
      else
        tabela.NormalScript()
    end
  end
end)

Premium.MouseButton1Click:Connect(function()
	Premium_2.Visible = true
	MainFrame.Visible = false
end)

ClosePremium.MouseButton1Click:Connect(function()
	Premium_2.Visible = false
	MainFrame.Visible = true
end)

Premium_2.Changed:Connect(function()
	Premium_2.Position = MainFrame.Position
end)

while wait(tabela.KeylessSettings.LoopKeyless.Interval) do
    if tabela.KeylessSettings.LoopKeyless.Active then
      if tabela.PandaAuth:Authenticate_Keyless(tabela.Service) then
        tabela.NormalScript()
      else
        Check.Text = "INVALID HWID TRYING AGAIN IN ".. tabela.KeylessSettings.LoopKeyless.Interval
          warn(
            "INVALID HWID TRYING AGAIN IN"
            .. tabela.KeylessSettings.LoopKeyless.Interval
          )
      end
    end
  end
  NotifNew("script loaded", 1)
end

return Module
