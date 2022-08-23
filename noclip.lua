-- [[ NoClip ]]

function NoClipLOL()
        for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
                child.CanCollide = false
            elseif child.Name == "Humanoid" then
                child:ChangeState(11)
            end
        end
end