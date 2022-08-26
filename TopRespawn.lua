Die = game.Players.LocalPlayer.Character
lplr = game:GetService("Players").LocalPlayer
game:GetService("RunService").RenderStepped:connect(function()
if Die.Humanoid.Health == 1 then
game:GetService("Players").LocalPlayer.Character.SuperAction:Destroy()
wait(0.8)
game:GetService("TweenService"):Create(lplr.Character.HumanoidRootPart, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {CFrame = CFrame.new(100, 100, 100)}):Play()
end
end)