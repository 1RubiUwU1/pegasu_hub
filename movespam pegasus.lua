_G.SpamOn = "+"
_G.SpamOff = "-"
_G.HReset = "*"

--[[ Credits ]]
game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "moves",
        Text = "Made By Joseph",
        Duration = "190"
    }
)

game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "SpamOn",
        Text = "+",
        Duration = "230"
    }
)

game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "SpamOff",
        Text = "-",
        Duration = "230"
    }
)

game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "HReset",
        Text = "*",
        Duration = "230"
    }
)



local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

Mouse.KeyDown:connect(function(Key)
   Key = Key:lower()
   if Key == _G.HReset then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)

getfenv().spam = false;

Mouse.KeyDown:connect(function(Key)
   Key = Key:lower()
   if Key == _G.SpamOn then
getfenv().spam = true
end
end)

Moves = {
"Flash Strike";
"Sweep Kick";
"Neo Wolf Fang Fist";
"Strong Kick";
"Meteor Crash";
"Wolf Fang Fist";
"Strong Punch";
"Trash???";
"Anger Rush";
"God Slicer";
"Burning Blast";
"Deadly Dance";
"Blaster Meteor";
"Flash Skewer";
"Trash?";
"TS Molotov";
"Big Bang Kamehameha";
"Demon Flash";
}


while wait() do
if getfenv().spam == true then

local plr = game.Players.LocalPlayer
for i, v in pairs(plr.Backpack:GetChildren()) do
                if table.find(Moves, v.Name) then
                  v.Parent = plr.Character
                  v:Activate()
                  v:Deactivate()
                  wait(0.1)
                  v.Parent = plr.Backpack
                end
end
Mouse.KeyDown:connect(function(Key)
   Key = Key:lower()
   if Key == _G.SpamOff then
getfenv().spam = false


end
end)
end
end
