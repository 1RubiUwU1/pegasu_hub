-----[Made By:Moin]---------------------

DisableRobloxOnlyOutput = true
game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Made By";
        Text = "Creepz & Moin";
        Text = "Plss sub to Yt_Moin"
        })

local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()


mouse.KeyDown:connect(function(key)
    if key == "j" then
local plr = game.Players.LocalPlayer
game.Workspace.Live[plr.Name].Head["face"]:Destroy()
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Flash Strike"])
game.Players.LocalPlayer.Character["Flash Strike"].Activator.Animation:Destroy()
game.Players.LocalPlayer.Character["Flash Strike"]:Activate()
wait()
local plr = game.Players.LocalPlayer
game.Workspace.Live[plr.Name]["RebirthWings"]:Destroy()
wait()
local plr = game.Players.LocalPlayer
game.Workspace.Live[plr.Name].HumanoidRootPart["PowerLevel"]:Destroy()
end
end)




