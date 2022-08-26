for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
if v.Name:find("RebirthWings") or v.Name:find("RealHalo") then 
v:Destroy() 
end end