local active = false
local KeyPlace = Instance.new("TextBox")
Module = {}

function Module.IsPremium(Service, HubName)
  local key = readfile(HubName.. "Key.txt")
  if PandaAuth:ValidatePremiumKey(Service, key) then
      return true
   else
      return false
   end
end

function Module.Main(tabela)
local Service = tabela.Service
local PandaAuth = loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))()
if isfile(tabela.HubName.. "Key.txt") then
   if PandaAuth:ValidatePremiumKey(Service, readfile(tabela.HubName.. "Key.txt")) then
    if tabela.Premium == true then
       tabela.PremiumScript()
       active = true
    else
       tabela.NormalScript()
       active = true
    end
  end
elseif not isfile(tabela.HubName.. "Key.txt") or not PandaAuth:ValidatePremiumKey(Service, readfile(tabela.HubName.. "Key.txt")) and active == true then
print("part 1 inited")

local Main = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local WhileListWait = Instance.new("TextLabel")
local Folder = Instance.new("Folder")
local Premium = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local GetKey = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UISizeConstraint = Instance.new("UISizeConstraint")
local Premium_2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local PremiumTitle = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local Confirm = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Clear = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")

--Properties:

Main.Name = "Main"
Main.Parent = game:GetService("CoreGui")
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Main
MainFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 29)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -300, 0.5, -180)
MainFrame.Size = UDim2.new(0, 640, 0, 360)
MainFrame.Draggable = true
MainFrame.Selectable = true
MainFrame.Active = true

UICorner.Parent = MainFrame

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 640, 0, 48)
Title.Font = Enum.Font.Ubuntu
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 35.000
Title.Text = tabela.HubName

UICorner_2.Parent = Title

WhileListWait.Name = "WhileListWait"
WhileListWait.Parent = MainFrame
WhileListWait.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WhileListWait.BackgroundTransparency = 0.990
WhileListWait.BorderColor3 = Color3.fromRGB(255, 255, 255)
WhileListWait.Position = UDim2.new(0.0640624985, 0, 0.252777785, 0)
WhileListWait.Size = UDim2.new(0, 564, 0, 187)
WhileListWait.Font = Enum.Font.SourceSansItalic
WhileListWait.Text = "Waiting  for whitelist..."
WhileListWait.TextColor3 = Color3.fromRGB(255, 255, 255)
WhileListWait.TextSize = 19.000

Folder.Parent = MainFrame

Premium.Name = "Premium"
Premium.Parent = Folder
Premium.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Premium.BorderColor3 = Color3.fromRGB(0, 0, 0)
Premium.BorderSizePixel = 0
Premium.Position = UDim2.new(0.6328125, 0, 0.827777803, 0)
Premium.Size = UDim2.new(0, 200, 0, 50)
Premium.Font = Enum.Font.Ubuntu
Premium.Text = "Premium"
Premium.TextColor3 = Color3.fromRGB(0, 0, 0)
Premium.TextSize = 30.000
Premium.MouseButton1Click:Connect(function()
    Premium_2.Position = MainFrame.Position
    Premium_2.Visible = true
    MainFrame.Visible = false
end)

UICorner_3.Parent = Premium

GetKey.Name = "GetKey"
GetKey.Parent = Folder
GetKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
GetKey.BorderSizePixel = 0
GetKey.Position = UDim2.new(0.0640624985, 0, 0.827777803, 0)
GetKey.Size = UDim2.new(0, 200, 0, 50)
GetKey.Font = Enum.Font.Ubuntu
GetKey.Text = "Get Key"
GetKey.TextColor3 = Color3.fromRGB(0, 0, 0)
GetKey.TextSize = 30.000
GetKey.MouseButton1Click:Connect(function()
    setclipboard(PandaAuth:GetKey(Service))
end)

UICorner_4.Parent = GetKey

UISizeConstraint.Parent = Folder

Premium_2.Name = "Premium"
Premium_2.Parent = Main
Premium_2.BackgroundColor3 = Color3.fromRGB(22, 22, 29)
Premium_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Premium_2.BorderSizePixel = 0
Premium_2.Position = UDim2.new(0.239413679, 0, 0.0859835073, 0)
Premium_2.Visible = false
Premium_2.Size = UDim2.new(0, 640, 0, 360)
Premium_2.Draggable = true
Premium_2.Selectable = true
Premium_2.Active = true

UICorner_5.Parent = Premium_2

PremiumTitle.Name = "PremiumTitle"
PremiumTitle.Parent = Premium_2
PremiumTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PremiumTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
PremiumTitle.BorderSizePixel = 0
PremiumTitle.Size = UDim2.new(0, 640, 0, 48)
PremiumTitle.Font = Enum.Font.Ubuntu
PremiumTitle.Text = "Premium"
PremiumTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
PremiumTitle.TextSize = 35.000

UICorner_6.Parent = PremiumTitle

ImageButton.Parent = PremiumTitle
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.925000012, 0, 0, 0)
ImageButton.Size = UDim2.new(0, 48, 0, 48)
ImageButton.Image = "rbxassetid://11293981586"
ImageButton.ImageColor3 = Color3.fromRGB(255, 0, 0)
ImageButton.MouseButton1Click:Connect(function()
    MainFrame.Position = Premium_2.Position
    Premium_2.Visible = false
    MainFrame.Visible = true
end)

KeyPlace.Name = "KeyPlace"
KeyPlace.Parent = Premium_2
KeyPlace.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KeyPlace.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyPlace.BorderSizePixel = 0
KeyPlace.Position = UDim2.new(0, 0, 0.13333334, 0)
KeyPlace.Size = UDim2.new(0, 640, 0, 207)
KeyPlace.Font = Enum.Font.TitilliumWeb
KeyPlace.PlaceholderText = "Please place your key here"
KeyPlace.Text = ""
KeyPlace.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyPlace.TextSize = 20.000

Confirm.Name = "Confirm"
Confirm.Parent = Premium_2
Confirm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Confirm.BorderColor3 = Color3.fromRGB(0, 0, 0)
Confirm.BorderSizePixel = 0
Confirm.Position = UDim2.new(0.6328125, 0, 0.827777803, 0)
Confirm.Size = UDim2.new(0, 200, 0, 50)
Confirm.Font = Enum.Font.Ubuntu
Confirm.Text = "Confirm"
Confirm.TextColor3 = Color3.fromRGB(0, 0, 0)
Confirm.TextSize = 30.000
Confirm.MouseButton1Click:Connect(function()
     if PandaAuth:ValidatePremiumKey(Service, KeyPlace.Text) then
     KeyPlace.Text = "Correct Key Loading UI..."
        if tabela.Premium == true then
            writefile(tabela.HubName.. "Key.txt", KeyPlace.Text)
          tabela.PremiumScript()
          for _,obj in pairs(game:GetService("CoreGui").Main:GetDescendants()) do
                  obj:Destroy()
         end
        else
          tabela.NormalScript()
          for _,obj in pairs(game:GetService("CoreGui").Main:GetDescendants()) do
                  obj:Destroy()
         end
        end
        writefile(tabela.HubName.. "Key.txt")
     else
        game.StarterGui:SetCore("SendNotification", {
        	Title = HubName,
        	Text = "Invalid Key",
        	Duration = 3
         })
     end
end)

UICorner_7.Parent = Confirm

Clear.Name = "Clear"
Clear.Parent = Premium_2
Clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.0640624985, 0, 0.827777803, 0)
Clear.Size = UDim2.new(0, 200, 0, 50)
Clear.Font = Enum.Font.Ubuntu
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(0, 0, 0)
Clear.TextSize = 30.000
Clear.MouseButton1Click:Connect(function()
    KeyPlace.Text = ""
end)

while wait(5) do
   if tabela.LoopKeyless == true then
      if PandaAuth:Authenticate_Keyless(Service) then
         tabela.NormalScript()
         WhileListWait.Text = "Correct Key! loading UI..."
         for _,obj in pairs(game:GetService("CoreGui").Main:GetDescendants()) do
                  obj:Destroy()
         end
         break
      end
   end
end

UICorner_8.Parent = Clear

end --end of ui
print("ui loaded")

end --end of function

return Module
