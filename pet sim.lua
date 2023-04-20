
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.5
Frame.Parent = ScreenGui

local Label = Instance.new("TextLabel")
Label.Text = "Area:"
Label.Position = UDim2.new(0, 10, 0, 10)
Label.Size = UDim2.new(0, 50, 0, 20)
Label.TextColor3 = Color3.new(1, 1, 1)
Label.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Position = UDim2.new(0, 60, 0, 10)
TextBox.Size = UDim2.new(0, 130, 0, 20)
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.Parent = Frame

local Button = Instance.new("TextButton")
Button.Position = UDim2.new(0.5, -50, 0.5, 10)
Button.Size = UDim2.new(0, 100, 0, 30)
Button.TextColor3 = Color3.new(1, 1, 1)
Button.BackgroundColor3 = Color3.new(0, 0, 0)
Button.Text = "AutoFarm : OFF"
Button.Parent = Frame


local function ToggleAutoFarm()
    _G.AutoFarm = not _G.AutoFarm
    Button.Text = "AutoFarm : " .. (_G.AutoFarm and "ON" or "OFF")
end



Button.MouseButton1Click:Connect(ToggleAutoFarm)

-
while true do
    if _G.AutoFarm then
        local Pets = GetPets()
        local Coins = GetCoins(_G.Area or 'Town')
        for i, v in next, Coins do
            if workspace.__THINGS.Coins:FindFirstChild(i) and _G.AutoFarm then
                for _, Pet in next, Pets do
                    spawn(function()
                        if _G.AutoFarm then
                            Client.Network.Invoke('Join Coin', i, {Pet.uid})
                            Client.Network.Fire('Farm Coin', i, Pet.uid)
                        end
                    end)
                end
            end
            repeat task.wait() until not workspace.__THINGS.Coins:FindFirstChild(i)
        end
        task.wait()
    end
    task.wait()
end
