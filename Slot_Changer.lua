local player = game.Players.LocalPlayer
do
game:GetService("Players")[player.Name].Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"])
wait(0.50)
end