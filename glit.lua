        local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

Mouse.KeyDown:connect(function(Key)
Key = Key:lower()
if Key == 'l' then
workspace.Live:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart.VanishParticle:Destroy()
end
end)

spawn(function()
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

Mouse.KeyDown:connect(function(Key)
   Key = Key:lower()
   if Key == 'k' then
       Player.Character.Humanoid.Health = 0
end
end)
end)
    end)

    GlichSection:NewButton("AGlichfk", "JOSEPH", function()


if GMP_LOADED and not _G.GMP_DEBUG == true then
    error("Glitch Movepack is already running!",0)
    return
end
pcall(function() getgenv().GMP_LOADED  = true end)

game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Glitch Movepack";
        Text = "Supported Moves:";
        })

game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Supported Moves:";
        Text = "Dirty Fireworks (x5 also Supported), (Super) Explosive Wave, Burning Blast, Trash???, Planet Crusher, Eraser Cannon, God Hakai, God Wrath, (Regular not supported) Chain Destructo Disk, Bone Crush, Flash Skewer, Flash Strike, Kaioken Assault.";
        })

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key)
    if key == "l" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Dirty Fireworks"].Activator.Crash:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "l" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Dirty Fireworks [x5]"].Activator.Crash:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Super Explosive Wave"].Activator.ExplosiveWave.Part2:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Explosive Wave"].Activator.ExplosiveWave.Part2:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Burning Blast"].Activator.Blast.Mesh:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Trash???"].Activator.Blast.Mesh:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Planet Crusher"].Activator.Blast.Explode:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Super Spirit Bomb"].Activator.Blast.Explode:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Spirit Bomb"].Activator.Blast.Explode:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Eraser Cannon"].Activator.Blast.Explode:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["God Hakai"].Activator.Hakai:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["God Wrath"].Activator.Wave:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "l" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Chain Destructo Disk"].Activator.Blast.Mesh:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Bone Crush"].Activator.Crash:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Flash Skewer"].Activator.Animation:Destroy()
        wait(2.5)
        lplr.Character.HumanoidRootPart.VanishParticle:Destroy()
        lplr.Character.RebirthWings:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Flash Strike"].Activator.Animation:Destroy()
        wait(1)
        lplr.Character.RebirthWings:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Kaioken Assault"].Activator.Forward:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Super Nova"].Activator.Blast.Explode:Destroy()
    end
end)
mouse.KeyDown:connect(function(key)
    if key == "v" then
    	local lplr = game.Players.LocalPlayer
        lplr.Character["Planet Crusher"].Activator.Blast.Explode:Destroy()
    end
end)