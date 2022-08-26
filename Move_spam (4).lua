DisableRobloxOnlyOutput = true
game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Made By";
        Text = "ImNotLegit";
        })
DisableRobloxOnlyOutput = true
game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Modified By";
        Text = "Moin";
        })
local lplr = game.Players.LocalPlayer
local mouse = lplr:GetMouse()
_G.on = false
on = true
off = false

Move_1 = "Trash???"
Move_2 = "Anger Rush"
Move_3 = "Neo Wolf Fang Fist"
Move_4 = "Meteor Crash"
Move_5 = "Wolf Fang Fist"
Move_6 = "Kick Barrage"
Move_7 = "Deadly Dance"
Move_8 = "Burning Blast"
Move_9 = "Spirit Bomb Sword"
Move_10 = "Sweep Kick"
Move_11 = "Trash?"
Move_12 = "Anger Rush"
Move_13 = "Punisher Drive"

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Move Spam";
    Text = "Press N to enable/disable.";
    })

mouse.KeyDown:connect(function(key)
    if key == "n" then
        if _G.on == false then
            _G.on = on
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Spam Enabled";
                Text = "Press n to disable.";
                })
            while _G.on == true do
                wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Move_1])
game.Players.LocalPlayer.Character[Move_1]:Activate()
wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Move_2])
game.Players.LocalPlayer.Character[Move_2]:Activate()
wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Move_3])
game.Players.LocalPlayer.Character[Move_3]:Activate()
wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Move_4])
game.Players.LocalPlayer.Character[Move_4]:Activate()
wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Move_5])
game.Players.LocalPlayer.Character[Move_5]:Activate()
wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Move_6])
game.Players.LocalPlayer.Character[Move_6]:Activate()
wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Move_7])
game.Players.LocalPlayer.Character[Move_7]:Activate()
wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Move_8 ])
game.Players.LocalPlayer.Character[Move_8 ]:Activate()
wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Move_9])
game.Players.LocalPlayer.Character[Move_9]:Activate()
wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Move_10])
game.Players.LocalPlayer.Character[Move_10]:Activate()
wait()

            end
        elseif _G.on == true then
            _G.on = off
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Spam Disabled";
                Text = "Press N to enable.";
                })
        end
    end
end)
while wait() do
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Justice Combination" then
local action = game.Players.LocalPlayer.Character:WaitForChild("Action")
if action then wait() action:Destroy() end end
if v.Name == "Attacking" then
v:Destroy()
end
if v.Name == "Action" then
v:Destroy()
end
if v.Name == "Killed" then
v:Destroy()
end
if v.Name == "Block" and v.Value == true then
v.Value = false
end
end
end