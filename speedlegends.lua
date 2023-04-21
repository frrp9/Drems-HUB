local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local StepsF = Instance.new("TextButton")
local GemsF = Instance.new("TextButton")
local Credit = Instance.new("TextLabel")
local Quit = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Position = UDim2.new(0.646314263, 0, 0.359358281, 0)
Main.Size = UDim2.new(0, 295, 0, 330)
Main.Active = true
Main.Draggable = true

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.Size = UDim2.new(0, 295, 0, 51)
Title.Font = Enum.Font.SourceSans
Title.Text = "Legends Of Speed OP FARM"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 14.000

StepsF.Name = "StepsF"
StepsF.Parent = Main
StepsF.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
StepsF.BorderColor3 = Color3.fromRGB(0, 0, 0)
StepsF.Position = UDim2.new(0.0677966028, 0, 0.291890204, 0)
StepsF.Size = UDim2.new(0, 98, 0, 165)
StepsF.Font = Enum.Font.SourceSans
StepsF.Text = "STEPS FARM"
StepsF.TextColor3 = Color3.fromRGB(0, 0, 0)
StepsF.TextSize = 14.000
StepsF.MouseButton1Click:connect(function()
	for i=1, 7500 do
		local A_1 = "collectOrb"
		local A_2 = "Red Orb"
		local A_3 = "City"
		local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
		Event:FireServer(A_1, A_2, A_3)
	end
end)

GemsF.Name = "GemsF"
GemsF.Parent = Main
GemsF.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
GemsF.BorderColor3 = Color3.fromRGB(0, 0, 0)
GemsF.Position = UDim2.new(0.600000024, 0, 0.291890204, 0)
GemsF.Size = UDim2.new(0, 98, 0, 165)
GemsF.Font = Enum.Font.SourceSans
GemsF.Text = "GEMS FARM"
GemsF.TextColor3 = Color3.fromRGB(0, 0, 0)
GemsF.TextSize = 14.000
GemsF.MouseButton1Click:connect(function()
	for i=1, 10000 do
		local A_1 = "collectOrb"
		local A_2 = "Gem"
		local A_3 = "City"
		local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
		Event:FireServer(A_1, A_2, A_3)
	end
end)

Credit.Name = "Credit"
Credit.Parent = Main
Credit.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Credit.BorderColor3 = Color3.fromRGB(65, 65, 65)
Credit.Position = UDim2.new(0.535593212, 0, 0.848484874, 0)
Credit.Size = UDim2.new(0, 131, 0, 44)
Credit.Font = Enum.Font.SourceSans
Credit.LineHeight = 0.000
Credit.Text = "created by frrp"
Credit.TextColor3 = Color3.fromRGB(0, 0, 0)
Credit.TextSize = 14.000

Quit.Name = "Quit"
Quit.Parent = Main
Quit.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Quit.BorderColor3 = Color3.fromRGB(65, 65, 65)
Quit.Position = UDim2.new(0.952542186, 0, 0.0181818195, 0)
Quit.Size = UDim2.new(0, 8, 0, 9)
Quit.Font = Enum.Font.SourceSans
Quit.Text = "X"
Quit.TextColor3 = Color3.fromRGB(255, 0, 0)
Quit.TextSize = 14.000
Quit.MouseButton1Click:connect(function()
	Main.Visible = false
end)
