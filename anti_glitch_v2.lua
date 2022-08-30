if not game:IsLoaded() then
game.Loaded:Wait()
end

local plr = game.Players.LocalPlayer

while wait() do
    pcall(function()
        game:GetService("Workspace").Live[plr.Name].LowerTorso.BodyVelocity:Destroy()
    end)
end