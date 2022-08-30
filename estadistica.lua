-- [[ ESTADISTICA ]]

if not game:IsLoaded() then
    local loadedcheck = Instance.new("Message", workspace)
    loadedcheck.Text = "Loading..."
    game.Loaded:Wait(14)
    loadedcheck:Destroy()
    end
    wait(0.2)
    game.Players.LocalPlayer.PlayerGui:WaitForChild("HUD")
    game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats.Visible = true
    game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats.ImageColor3 = Color3.fromRGB(55,55,55)  
    game.Players.LocalPlayer.PlayerGui.HUD.Bottom.Stats.Labvel.ImageColor3 = Color3.fromRGB(55,55,55)
    game.Players.LocalPlayer.PlayerGui.HUD.FullSize.Quests:Destroy()
    if FreezeEXP == true then
    repeat wait() until game:IsLoaded()
    game:GetService("RunService").Stepped:Connect(function()
    if game.Players.LocalPlayer.Character:FindFirstChild("True") then
    game.Players.LocalPlayer.Character:FindFirstChild("True"):Destroy()
    end
    end)
end