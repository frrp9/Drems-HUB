local DremsScript = "Script by drems"

local TowersUHave = {}
for i,v in next, game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops") do
    if v.Equipped then
        table.insert(TowersUHave, i)
    end
end
wait(1)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Script for TDS", "Midnight")
local Credits = Window:NewTab("Others")

local Lobby = Window:NewTab("AutoAbility")


local TowersUHave = {}
for i,v in next, game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops") do
    if v.Equipped then
        table.insert(TowersUHave, i)
    end
end

wait(1)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Script for TDS", "Midnight")
local Credits = Window:NewTab("Others")


local Lobby = Window:NewTab("AutoAbility")
local AutoChain = Lobby:NewSection("AutoAbility")
AutoChain:NewToggle("Spam Medic ability", "Breh", function(state)
    if state then
        DmCheck = true
    else
        DmCheck = false
    end
end)


local Lobby = Window:NewTab("CamMode")
local turn = false
local CamMode = Lobby:NewSection("Camera Modes")


CamMode:NewButton("Free Cam(r)", "Free Camera mode", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/v3Vxf5E1"))()
end)

local Lobby = Window:NewTab("Scripts")
local CamMode = Lobby:NewSection("Scripts")
CamMode:NewButton("AutoFarm(level 1)", "AutoFarm", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6gYhUJw4"))()
end)



CamMode:NewButton("AutoFarm(need Cowboy,dj)", "AutoFarm", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/UhD5Vf7g"))()
end)


local Lobby = Window:NewTab("Stack")
local turn = false
local CreditsBar = Credits:NewSection("info")
CreditsBar:NewLabel("lumik#3479 : owner script")
CreditsBar:NewLabel("When using AutoChain And Spam Medic , it can kick")

local Stack = Lobby:NewSection("Stack")
Stack:NewTextBox("TowerNameHere", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = txt,
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,5,0,0,5,0,0,5,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)
local Lobby = Window:NewTab("Selling")
local Selling = Lobby:NewSection("Selling")
Selling:NewButton("Sell all towers", "ok", function()
	for index,value in pairs(game.Workspace.Towers:GetChildren()) do

		local A_1 = "Troops"
		local A_2 = "Sell"
		local A_3 = 
			{
				["Troop"] = value 
			}
		local Event = game:GetService("ReplicatedStorage").RemoteFunction
		Event:InvokeServer(A_1, A_2, A_3)

	end
	wait()
end)


Selling:NewTextBox("SellAllTowersName", "ok", function(txt)
	for index,value in pairs(game.Workspace.Towers:GetChildren()) do
		if value.Replicator:GetAttribute("Type") == txt then



			local A_1 = "Troops"
			local A_2 = "Sell"
			local A_3 = 
				{
					["Troop"] = value 
				}
			local Event = game:GetService("ReplicatedStorage").RemoteFunction
			Event:InvokeServer(A_1, A_2, A_3)
		end
		wait()
	end


end)

Selling:NewButton("Sell all Farms", "breh??ssđssd", function()
local wo = game.Workspace.Towers:GetChildren()
for i,v in pairs(wo) do
if v.Owner.Value == game.Players.LocalPlayer and v.Replicator:GetAttribute("Type") == "Farm" then
		local A_1 = "Troops"
			local A_2 = "Sell"
			local A_3 = 
				{
					["Troop"] = v
				}
			local Event = game:GetService("ReplicatedStorage").RemoteFunction
			Event:InvokeServer(A_1, A_2, A_3)
		
		wait()
	
end
end
end)
local DmCheck = false

local Lobby = Window:NewTab("Skipping")
local Check = 0 local Skipping = Lobby:NewSection("Skipping") Skipping:NewKeybind("SkipKey", "Breh", Enum.KeyCode.F, function() local args = { [1] = "Waves", [2] = "Skip" }

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args)) end) local CheckEd = false

local lolc = false

local Lobby = Window:NewTab("Spam")
local Check = 0 local Skipping = Lobby:NewSection("Spam") Skipping:NewKeybind("SpamKey", "Bruh", Enum.KeyCode.T, function() local args = { [1] = "Waves", [2] = "Skip" }

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args)) end) local CheckEd = false

local lolc = false

local Lobby = Window:NewTab("Player")
local Check = 0 local Player = Lobby:NewSection("Player")


Player:NewSlider("JumpPower", "lol", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Player:NewSlider("WalkSpeed", "lol", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
   -- This walkspeed script is the same as others , but does not change to default speed when you reset. ENJOY !    
_G.HackedWalkSpeed = s

local Plrs = game:GetService("Players")

local MyPlr = Plrs.LocalPlayer
local MyChar = MyPlr.Character

if MyChar then
local Hum = MyChar.Humanoid
Hum.Changed:connect(function()
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
Hum.WalkSpeed = _G.HackedWalkSpeed
end

MyPlr.CharacterAdded:connect(function(Char)
MyChar = Char
repeat wait() until Char:FindFirstChild("Humanoid")
local Hum = Char.Humanoid
Hum.Changed:connect(function()
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
Hum.WalkSpeed = _G.HackedWalkSpeed
end)

-- end of script :)
end)

AutoChain:NewButton("AutoChain", "Make sure u have at least 3 lv 2 plus commanders", function()

while true do
for index,value in pairs(game.Workspace.Towers:GetChildren()) do if value.Owner.Value == game.Players.LocalPlayer and value.Replicator:GetAttribute("Type") == "Commander" then local args = { [1] = "Troops", [2] = "Abilities", [3] = "Activate", [4] = { ["Name"] = "Call Of Arms", ["Troop"] = value } }

					game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
					wait(10.1)
			 end
			 end

end

   end)
Stack:NewDropdown("StackTower", "Alt of stack tower name", TowersUHave, function(currentOption)
    local A_1 = "Troops"
		local A_2 = "Place"
		local A_3 = currentOption
		local A_4 = 
			{
				["Rotation"] = CFrame.new(0,5,0), 
				["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
			}
		local Event = game:GetService("ReplicatedStorage").RemoteFunction
		Event:InvokeServer(A_1, A_2, A_3, A_4)
end)

local ok = game.Players.LocalPlayer.PlayerGui.GameGui.Health.Wave
Selling:NewButton("Sell all Farms", "breh??ssđssd", function()
local wo = game.Workspace.Towers:GetChildren()
for i,v in pairs(wo) do
if v.Owner.Value == game.Players.LocalPlayer and v.Replicator:GetAttribute("Type") == "Farm" then
		local A_1 = "Troops"
			local A_2 = "Sell"
			local A_3 = 
				{
					["Troop"] = v
				}
			local Event = game:GetService("ReplicatedStorage").RemoteFunction
			Event:InvokeServer(A_1, A_2, A_3)
		
		wait()
	
end
end
end)
local DmCheck = false

AutoChain:NewToggle("Spam Medic ability", "Breh", function(state)
    if state then
        DmCheck = true
    else
        DmCheck = false
    end
end)
while wait(1) do
if DmCheck == true then
local args = {
    [1] = "Troops",
    [2] = "Place",
    [3] = "Medic",
    [4] = {
        ["Rotation"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)),
        ["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
    }
}
local Dmagain = game.Workspace.Towers:GetChildren()
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
for i,v in pairs(Dmagain) do
if v.Owner.Value == game.Players.LocalPlayer and v.Replicator:GetAttribute("Type") == "Medic" then
local args = {
    [1] = "Troops",
    [2] = "Upgrade",
    [3] = "Set",
    [4] = {
        ["Troop"] = v
    }
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
local args = {
    [1] = "Troops",
    [2] = "Upgrade",
    [3] = "Set",
    [4] = {
        ["Troop"] = v
    }
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
local args = {
    [1] = "Troops",
    [2] = "Upgrade",
    [3] = "Set",
    [4] = {
        ["Troop"] = v
    }
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
local args = {
    [1] = "Troops",
    [2] = "Upgrade",
    [3] = "Set",
    [4] = {
        ["Troop"] = v
    }
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
local args = {
    [1] = "Troops",
    [2] = "Upgrade",
    [3] = "Set",
    [4] = {
        ["Troop"] = v
    }
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
wait(0.5)
local args = {
    [1] = "Troops",
    [2] = "Abilities",
    [3] = "Activate",
    [4] = {
        ["Name"] = "Cleansing",
        ["Troop"] = v
    }
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Troops",
    [2] = "Sell",
    [3] = {
        ["Troop"] = v
    }
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end
end
end
end

LeaderBoard:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)
