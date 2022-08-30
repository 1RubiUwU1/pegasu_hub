game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Made By";
        Text = "Joseph";
        })game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({[1] = "select the attack with "l" for the bug and click to activate it and "K" for reset",[2] = "All"}))
          wait(0.5)
          game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({[1] = "select the attack with "l" for the bug and click to activate it and "K" for reset",[2] = "All"})) 

       game:service'RunService'.RenderStepped:connect(function(...)
            pcall(function()
              game:service'Players'.LocalPlayer.Character.Action:Destroy();
            end);
          end)
          
          
          game:GetService("StarterGui"):SetCore("SendNotification", {
                  Title = "Metodo";
                  Text = "Selecciona un movimiento y presiona L.";
                  })
          
          
          local Playe = game:GetService("Players").LocalPlayer
          local Mouse = Playe:GetMouse()
          
          Mouse.KeyDown:connect(function(Key)
           Key = Key:lower()
           if Key == 'v' then
              Playe.Character.Humanoid.Health = 0
          end
          end)
          local mouse = game.Players.LocalPlayer:GetMouse()
          mouse.KeyDown:connect(function(key)
          if key == 'k' then
              local Event = game:GetService("ReplicatedStorage").ResetChar
              Event:FireServer()
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1473417, 10, 1473297)
          end
          end)
          mouse.KeyDown:connect(function(key)
              if key == "l" then
                  local plr = game.Players.LocalPlayer
                  game.Workspace.Live[plr.Name]["Dragon Throw"].Activator["Throw"]:Destroy()
              end
              end)
          mouse.KeyDown:connect(function(key)
              if key == "l" then
                  local plr = game.Players.LocalPlayer
                  game.Workspace.Live[plr.Name]["Dragon Throw"].Activator["Flip"]:Destroy()
                  game.Workspace.Live[plr.Name]["Dragon Throw"].Activator["Throw"]:Destroy()
                  game.Workspace.Live[plr.Name]["Dragon Throw"].Activator["Blocked"]:Destroy()
                  game.Workspace.Live[plr.Name]["Dragon Throw"].Activator["HitDown"]:Destroy()
                  game.Workspace.Live[plr.Name]["Dragon Throw"].Activator["BoneBreak"]:Destroy()
              end
              end)