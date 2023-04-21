-- Tower Defense Simulator : 3260590327
-- Pet Simulator X! : 6284583030
-- Legends Of Speed ⚡: 3101667897



local gameIDs = {
    [3260590327] = "Tower Defense Simulator",
    [6284583030] = "Pet Simulator X!",
    [3101667897] = "Legends Of Speed ⚡"
}

local gameID = tonumber(game:GetService("HttpService"):GetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/root"))

if gameIDs[gameID] then
    game:GetService("ReplicatedFirst"):WaitForChild("LoadingScreenGui").Enabled = true
    game:GetService("ReplicatedFirst").LoadingScreenGui.LoadingText.Text = "Loading..."
    wait(1)
    game:GetService("ReplicatedFirst").LoadingScreenGui.LoadingText.Text = "Loading.."
    wait(1)
    game:GetService("ReplicatedFirst").LoadingScreenGui.LoadingText.Text = "Loading."
    wait(1)
    game:GetService("ReplicatedFirst").LoadingScreenGui.LoadingText.Text = "Loading"
    wait(1)
    game:GetService("ReplicatedFirst").LoadingScreenGui.LoadingText.Text = "Loading.."
    wait(1)
    game:GetService("ReplicatedFirst").LoadingScreenGui.LoadingText.Text = "Loading..."
    wait(1)
    
    if gameID == 3260590327 then -- Tower Defense Simulator
        loadstring(game:HttpGet("https://raw.githubusercontent.com/frrp9/auto-farm-drems-/main/Tower_Defense_Simulator.lua"))()
    elseif gameID == 6284583030 then -- Pet Simulator X!
         loadstring(game:HttpGet("https://raw.githubusercontent.com/frrp9/auto-farm-drems-/main/pet%20sim.lua"))()
        -- Script pour Pet Simulator X!
        
    elseif gameID == 3101667897 then -- Legends Of Speed ⚡
         loadstring(game:HttpGet("https://raw.githubusercontent.com/frrp9/auto-farm-drems-/main/speedlegends.lua"))()
        -- Script pour Legends Of Speed ⚡
        
    end
else
    game:GetService("Players").LocalPlayer:Kick("Votre jeu n'est pas supporté par nos scripts.")
end
