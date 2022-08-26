

DisableRobloxOnlyOutput = true
game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Sub to";
        Text = "Yt_Moin";
        })

local fov = 90 -- change this number to the FOV what you want.(Bigger the number, larger the zoom)

Workspace.Camera.FieldOfView = fov

local Lighting = game:GetService("Lighting")
Lighting.FogStart = 9999
Lighting.FogEnd = 99999
game:GetService("UserInputService").InputBegan:Connect(function(Key)

    
end)