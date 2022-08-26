local Visuals = Main:Tab("Visuals", "Eye")
Visuals:Section("Shaders")
if game.PlaceId ~= 478132461 then
	Visuals:Button("Spring", "Applies a Spring theme to your experience.", function()
		for Light, Value in pairs(Light:GetChildren()) do
			if Value.Name ~= "Scouter" and Value.Name ~= "Water" and Value.Name ~= "SSJ" and Value.Name ~= "Sense" and Value.Name ~= "Stop" and Value.Name ~= "SSJ2" and Value.Name ~= "Flash" and Value.Name ~= "NovaBlur" then
				Value:Destroy()
			end
		end
		if _G.JPN == true then
			_G.JPN = false 
		elseif _G.JPNDark == true then
			_G.JPNDark = false
		elseif _G.Glxy == true then
			_G.Glxy = false
		end

		Wait(1)
		for Space, Mat in pairs(workspace:GetChildren()) do
			if Mat:IsA "BasePart" and Mat.Material == Enum.Material.Grass then
				Mat.Color = Color3.fromRGB(15, 185, 105)
			end
		end
		
		local Bloom = Instance.new("BloomEffect", Light)
		local ColorCorrection = Instance.new("ColorCorrectionEffect", Light)
		local Depth = Instance.new("DepthOfFieldEffect", Light)
		local SunRay = Instance.new("SunRaysEffect", Light)
		
		sethiddenproperty(workspace.Terrain, "Decoration", true)
		sethiddenproperty(Light, "Technology", "ShadowMap")
		sethiddenproperty(Light, "ShadowSoftness", .2)
		sethiddenproperty(Light, "Brightness", 3)
		sethiddenproperty(Light, "ExposureCompensation", -.9)
		
		Light.Ambient = Color3.fromRGB(35, 35, 35)
		Light.Brightness = .75
		Light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
		Light.ColorShift_Top = Color3.fromRGB(255, 245, 235)
		
		Bloom.Enabled = true
		Bloom.Intensity = 0.3
		Bloom.Size = 1900
		Bloom.Threshold = 0.915
		
		ColorCorrection.Brightness = 0.2
		ColorCorrection.Contrast = 0.40
		ColorCorrection.Enabled = true
		ColorCorrection.Saturation = 0.5
		ColorCorrection.TintColor = Color3.fromRGB(255, 220, 150)
		
		Depth.Enabled = true
		Depth.FarIntensity = 0.9
		Depth.FocusDistance = 0.9
		Depth.InFocusRadius = 200
		Depth.NearIntensity = 0.5
		
		SunRay.Enabled = true
		SunRay.Intensity = 0.05
		SunRay.Spread = 0.145
		
		cors = {}
		mas = Instance.new("Model", game:service("Lighting"))
		Sky0 = Instance.new("Sky")
		Sky0.Parent = mas
		Sky0.SkyboxBk = "rbxassetid://6444884337"
		Sky0.SkyboxDn = "rbxassetid://6444884785"
		Sky0.SkyboxFt = "rbxassetid://6444884337"
		Sky0.SkyboxLf = "rbxassetid://6444884337"
		Sky0.SkyboxRt = "rbxassetid://6444884337"
		Sky0.SkyboxUp = "rbxassetid://6412503613"
		Sky0.SunAngularSize = 15
		for i, v in pairs(mas:GetChildren()) do
			v.Parent = Light
			pcall(function()
				v:MakeJoints()
			end)
		end
		mas:Destroy()
		for i, v in pairs(cors) do
			spawn(function()
				pcall(v)
			end)
		end
		
		game.CoreGui.Holder.Main.HomeTab.ShaderProperties.ShaderTitle.ShaderName.Text = "Spring"
		game.CoreGui.Holder.Main.HomeTab.ShaderProperties.ShaderPropertiesGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(181, 152, 78))}
		_G.Spring = true
		Run.Heartbeat:connect(function()
			if _G.Spring == true then
				Light.FogEnd = 20000
				Light.ClockTime = 17
				for i, v in pairs(game.Workspace.Live:GetDescendants()) do
					if v.ClassName == "ParticleEmitter" then
						v.Brightness = 5
					end
				end
			end
		end)
	end)
	Visuals:Button("Japanese", "Applies a Japanese theme to your experience.", function()
	for Light, Value in pairs(Light:GetChildren()) do
			if Value.Name ~= "Scouter" and Value.Name ~= "Water" and Value.Name ~= "SSJ" and Value.Name ~= "Sense" and Value.Name ~= "Stop" and Value.Name ~= "SSJ2" and Value.Name ~= "Flash" and Value.Name ~= "NovaBlur" then
				Value:Destroy()
			end
		end
		if _G.Spring == true then
			_G.Spring = false
		elseif _G.JPNDark == true then
			_G.JPNDark = false
		elseif _G.Glxy == true then
			_G.Glxy = false
		end
		wait(1)
		for Space, Mat in pairs(workspace:GetChildren()) do
			if Mat:IsA "BasePart" and Mat.Material == Enum.Material.Grass then
				Mat.Color = Color3.fromRGB(15, 185, 105)
			end
		end
		
		local Bloom = Instance.new("BloomEffect", Light)
		local ColorCorrection = Instance.new("ColorCorrectionEffect", Light)
		local Depth = Instance.new("DepthOfFieldEffect", Light)
		local SunRay = Instance.new("SunRaysEffect", Light)
		
		sethiddenproperty(workspace.Terrain, "Decoration", true)
		sethiddenproperty(Light, "Technology", "ShadowMap")
		sethiddenproperty(Light, "ShadowSoftness", .2)
		sethiddenproperty(Light, "Brightness", 3)
		sethiddenproperty(Light, "EnvironmentDiffuseScale", 0.2)
		sethiddenproperty(Light, "EnvironmentSpecularScale", 1)
		sethiddenproperty(Light, "ExposureCompensation", -1)
		sethiddenproperty(Light, "GeographicLatitude", -20.356)
		
		Light.Ambient = Color3.fromRGB(59, 33, 27)
		Light.Brightness = 2.14
		Light.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)
		Light.ColorShift_Top = Color3.fromRGB(240, 127, 14)
		
		Bloom.Enabled = true
		Bloom.Intensity = 0.1
		Bloom.Size = 100
		Bloom.Threshold = 0
		
		ColorCorrection.Brightness = 0
		ColorCorrection.Contrast = 0
		ColorCorrection.Enabled = true
		ColorCorrection.Saturation = 0.05
		ColorCorrection.TintColor = Color3.fromRGB(255, 224, 219)
		
		Depth.Enabled = true
		Depth.FarIntensity = 0.9
		Depth.FocusDistance = 0.9
		Depth.InFocusRadius = 200
		Depth.NearIntensity = 0.5
		
		SunRay.Enabled = true
		SunRay.Intensity = 0.05
		SunRay.Spread = 1
		
		cors = {}
		mas = Instance.new("Model", game:service("Lighting"))
		Sky0 = Instance.new("Sky")
		Sky0.Parent = mas
		Sky0.SkyboxBk = "rbxassetid://323494035"
		Sky0.SkyboxDn = "rbxassetid://323494368"
		Sky0.SkyboxFt = "rbxassetid://323494130"
		Sky0.SkyboxLf = "rbxassetid://323494252"
		Sky0.SkyboxRt = "rbxassetid://323494067"
		Sky0.SkyboxUp = "rbxassetid://323493360"
		Sky0.SunAngularSize = 14
		for i, v in pairs(mas:GetChildren()) do
			v.Parent = Light
			pcall(function()
				v:MakeJoints()
			end)
		end
		mas:Destroy()
		for i, v in pairs(cors) do
			spawn(function()
				pcall(v)
			end)
		end
		
		game.CoreGui.Holder.Main.HomeTab.ShaderProperties.ShaderTitle.ShaderName.Text = "Japanese"
		game.CoreGui.Holder.Main.HomeTab.ShaderProperties.ShaderPropertiesGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(118, 81, 93))}
		
		_G.JPN = true
		Run.Heartbeat:connect(function()
			if _G.JPN == true then
				Light.FogEnd = 20000
				Light.ClockTime = 6.7
				for i, v in pairs(game.Workspace.Live:GetDescendants()) do
					if v.ClassName == "ParticleEmitter" then
						v.Brightness = 5
					end
				end
			end
		end)
	end)
	Visuals:Button("Japanese(Dark)", "Applies a Japanese theme to your experience.", function()
		for Light, Value in pairs(Light:GetChildren()) do
			if Value.Name ~= "Scouter" and Value.Name ~= "Water" and Value.Name ~= "SSJ" and Value.Name ~= "Sense" and Value.Name ~= "Stop" and Value.Name ~= "SSJ2" and Value.Name ~= "Flash" and Value.Name ~= "NovaBlur" then
				Value:Destroy()
			end
		end

		if _G.JPN == true then
			_G.JPN = false
		elseif _G.Spring == true then
			_G.Spring = false
		elseif _G.Glxy == true then
			_G.Glxy = false
		end
		for Space, Mat in pairs(workspace:GetChildren()) do
			if Mat:IsA "BasePart" and Mat.Material == Enum.Material.Grass then
				Mat.Color = Color3.fromRGB(15, 185, 105)
			end
		end
		
		local Bloom = Instance.new("BloomEffect", Light)
		local ColorCorrection = Instance.new("ColorCorrectionEffect", Light)
		local Depth = Instance.new("DepthOfFieldEffect", Light)
		local SunRay = Instance.new("SunRaysEffect", Light)
		
		sethiddenproperty(workspace.Terrain, "Decoration", true)
		sethiddenproperty(Light, "Technology", "ShadowMap")
		sethiddenproperty(Light, "ShadowSoftness", .2)
		sethiddenproperty(Light, "Brightness", 3)
		sethiddenproperty(Light, "EnvironmentDiffuseScale", 0.2)
		sethiddenproperty(Light, "EnvironmentSpecularScale", 1)
		sethiddenproperty(Light, "ExposureCompensation", -2)
		sethiddenproperty(Light, "GeographicLatitude", -20.356)
		
		Light.Ambient = Color3.fromRGB(59, 33, 27)
		Light.Brightness = 2.14
		Light.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)
		Light.ColorShift_Top = Color3.fromRGB(240, 127, 14)
		
		Bloom.Enabled = true
		Bloom.Intensity = 0.1
		Bloom.Size = 100
		Bloom.Threshold = 0
		
		ColorCorrection.Brightness = 0
		ColorCorrection.Contrast = 0
		ColorCorrection.Enabled = true
		ColorCorrection.Saturation = 0.5
		ColorCorrection.TintColor = Color3.fromRGB(255, 224, 219)
		
		Depth.Enabled = true
		Depth.FarIntensity = 0.9
		Depth.FocusDistance = 0.9
		Depth.InFocusRadius = 200
		Depth.NearIntensity = 0.5
		
		SunRay.Enabled = true
		SunRay.Intensity = 0.05
		SunRay.Spread = 1
		
		cors = {}
		mas = Instance.new("Model", game:service("Lighting"))
		Sky0 = Instance.new("Sky")
		Sky0.Parent = mas
		Sky0.SkyboxBk = "rbxassetid://323494035"
		Sky0.SkyboxDn = "rbxassetid://323494368"
		Sky0.SkyboxFt = "rbxassetid://323494130"
		Sky0.SkyboxLf = "rbxassetid://323494252"
		Sky0.SkyboxRt = "rbxassetid://323494067"
		Sky0.SkyboxUp = "rbxassetid://323493360"
		Sky0.SunAngularSize = 14
		for i, v in pairs(mas:GetChildren()) do
			v.Parent = Light
			pcall(function()
				v:MakeJoints()
			end)
		end
		mas:Destroy()
		for i, v in pairs(cors) do
			spawn(function()
				pcall(v)
			end)
		end
		
		game.CoreGui.Holder.Main.HomeTab.ShaderProperties.ShaderTitle.ShaderName.Text = "Japanese \n (Dark)"
		game.CoreGui.Holder.Main.HomeTab.ShaderProperties.ShaderPropertiesGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB())}
		
		_G.JPNDark = true
		Run.Heartbeat:connect(function()
			if _G.JPNDark == true then
				Light.FogEnd = 20000
				Light.ClockTime = 6.7
				for i, v in pairs(game.Workspace.Live:GetDescendants()) do
					if v.ClassName == "ParticleEmitter" then
						v.Brightness = 10
					end
				end
			end
		end)
	end)
	Visuals:Button("Galaxy", "Applies a Galaxy theme to your experience.", function()
		for Light, Value in pairs(Light:GetChildren()) do
			if Value.Name ~= "Scouter" and Value.Name ~= "Water" and Value.Name ~= "SSJ" and Value.Name ~= "Sense" and Value.Name ~= "Stop" and Value.Name ~= "SSJ2" and Value.Name ~= "Flash" and Value.Name ~= "NovaBlur" then
				Value:Destroy()
			end
		end

		if _G.Spring == true then
			_G.Spring = false
		elseif _G.JPNDark == true then
			_G.JPNDark = false
		elseif _G.JPN == true then
			_G.JPN = false
		end

		local Bloom = Instance.new("BloomEffect", Light)
		local ColorCorrection = Instance.new("ColorCorrectionEffect", Light)
		local Depth = Instance.new("DepthOfFieldEffect", Light)
		local SunRay = Instance.new("SunRaysEffect", Light)
		
		sethiddenproperty(workspace.Terrain, "Decoration", true)
		sethiddenproperty(Light, "Technology", "ShadowMap")
		sethiddenproperty(Light, "ShadowSoftness", .2)
		sethiddenproperty(Light, "Brightness", 3)
		sethiddenproperty(Light, "EnvironmentDiffuseScale", 0.2)
		sethiddenproperty(Light, "EnvironmentSpecularScale", 1)
		sethiddenproperty(Light, "ExposureCompensation", -2)
		sethiddenproperty(Light, "GeographicLatitude", -20.356)
		
		Light.Ambient = Color3.fromRGB(60, 30, 91)
		Light.Brightness = 3
		Light.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
		Light.ColorShift_Top = Color3.fromRGB(255, 255, 255)
		
		Bloom.Enabled = true
		Bloom.Intensity = 0.1
		Bloom.Size = 100
		Bloom.Threshold = 0
		
		ColorCorrection.Brightness = 0
		ColorCorrection.Contrast = 0
		ColorCorrection.Enabled = true
		ColorCorrection.Saturation = 0
		ColorCorrection.TintColor = Color3.fromRGB(255, 225, 255)
		
		Depth.Enabled = true
		Depth.FarIntensity = 0.9
		Depth.FocusDistance = 0.9
		Depth.InFocusRadius = 200
		Depth.NearIntensity = 0.5
		
		SunRay.Enabled = true
		SunRay.Intensity = 0.05
		SunRay.Spread = 1

		_G.Glxy = true
		Run.Heartbeat:connect(function()
			if _G.Glxy == true then
				Light.FogEnd = 20000
				Light.ClockTime = 14.5
				for i, v in pairs(game.Workspace.Live:GetDescendants()) do
					if v.ClassName == "ParticleEmitter" then
						v.Brightness = 10
					end
				end
			end
		end)
		game.CoreGui.Holder.Main.HomeTab.ShaderProperties.ShaderTitle.ShaderName.Text = "Galaxy"
		game.CoreGui.Holder.Main.HomeTab.ShaderProperties.ShaderPropertiesGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 0, 255))}

		cors = {}
		mas = Instance.new("Model", game:service("Lighting"))
		Sky0 = Instance.new("Sky")
		Sky0.Parent = mas
		Sky0.SkyboxBk = "rbxassetid://2118763079"
		Sky0.SkyboxDn = "rbxassetid://2118766919"
		Sky0.SkyboxFt = "rbxassetid://2118765204"
		Sky0.SkyboxLf = "rbxassetid://2118764070"
		Sky0.SkyboxRt = "rbxassetid://2118761853"
		Sky0.SkyboxUp = "rbxassetid://2118766003"
		Sky0.SunAngularSize = 15
		for i, v in pairs(mas:GetChildren()) do
			v.Parent = Light
			pcall(function()
				v:MakeJoints()
			end)
		end
		mas:Destroy()
		for i, v in pairs(cors) do
			spawn(function()
				pcall(v)
			end)
		end
	end)
	Visuals:Section("Visuals")

	Visuals:Toggle("Remove Fog", "Expands View.",function(state)
		if state then
			B = Run.RenderStepped:Connect(function()
				Light.FogEnd = (9e9)
			end)
		else
			B:Disconnect()
			Light.FogEnd = (2000)
		end
	end)

	Visuals:Toggle("Day", "Makes The Game Day.", function(state)
		if state then
			_G.DayTgl = true
			if _G.NightTgl == true then
				_G.NightTgl = false
			end
			Day = Run.Heartbeat:Connect(function()
				if _G.DayTgl == true then
					Light.ClockTime = 14
				end
			end)
		else
			_G.DayTgl = false
			Day:Disconnect()
		end
	end)

	Visuals:Toggle("Night", "Makes The Game Night.", function(state)
		if state then
			_G.NightTgl = true
			if _G.DayTgl == true then
				_G.DayTgl = false
			end
			Night = Run.Heartbeat:Connect(function()
				if _G.NightTgl == true then
					Light.ClockTime = 0
				end
			end)
		else
			_G.NightTgl = false
			Night:Disconnect()
		end
	end)
end

Visuals:Button('Hide Wings/Halo', 'Hides Your Wings/Halo', function()
	if workspace.Live[plr.Name]:FindFirstChild("RebirthWings") then
		workspace.Live[plr.Name]["RebirthWings"].Handle:Destroy()
		Lib:Notifcation("Rebirth Wings Destroyed.")
	end
	if workspace.Live[plr.Name]:FindFirstChild("RealHalo") then
		workspace.Live[plr.Name]:FindFirstChild("RealHalo").Handle:Destroy()
		Lib:Notifcation("Halo Destroyed.")
	end
end)

Visuals:Button('Hide Level', 'Hides Your Level', function()
	Lib:Notifcation("Level Hidden.")
	for i,v in next, workspace.Live[plr.Name]:GetChildren() do
		if (string.find(tostring(v.Name):lower(), 'lvl.')) then 
			v:Destroy()
		end
	end
end)
Visuals:Section('Accessories')
Visuals:Toggle("Scythe", "Equips a Scythe on your back.", function(state)
	if state then   
		function m()
			s = Instance.new'MeshPart'
			s.Parent = workspace
			s.CFrame = Char.UpperTorso.CFrame * CFrame.new(0, 0, 1)
			s.Anchored = true
			s.MeshId = 'rbxassetid://9224065579'
			s.Material = Enum.Material.Neon
			s.Name = plr.Name .. 's'
			s.CanCollide = false
			s.Size = Vector3.new(3.7, 3.7, 3)
			s.Color = Color3.fromRGB(222, 101, 255)
		
			a = Instance.new'ParticleEmitter'
			a.Parent = workspace[plr.Name .. 's']
			a.Texture = 'rbxasset://textures/particles/sparkles_main.dds'
			a.Size = NumberSequence.new(.1)
			a.LockedToPart = true 	
			a.Rate = 20
			a.Rotation = NumberRange.new(0, 0)
			a.Lifetime = NumberRange.new(0.75, 0.75)
			a.RotSpeed = NumberRange.new(0, 0)
			a.SpreadAngle = Vector2.new(360, 360)
			a.ZOffset = 6
			a.LightEmission = 1
			a.Color = ColorSequence.new(Color3.fromRGB(255, 0, 255))
		
			attach = Instance.new('Attachment')
			attach.Name = "Poopy"
			attach.Parent = HRP
			attach.Position = Vector3.new(0, -3, 0)

			b = Instance.new'ParticleEmitter'
			b.Parent = attach
			b.LockedToPart = true
			b.Texture = 'rbxassetid://866471682'
			b.Rate = 50
			b.Rotation = NumberRange.new(180, 180)
			b.Lifetime = NumberRange.new(0.75, 0.75)
			b.RotSpeed = NumberRange.new(0, 0)
			b.Speed = NumberRange.new(13, 13)
			b.SpreadAngle = Vector2.new(360, 360)
			b.Acceleration = Vector3.new(0, 40, 0)
			b.ZOffset = 0
			b.LightEmission = 1
			b.Drag = 2.5
			b.Color = ColorSequence.new(Color3.fromRGB(255, 0, 255))
		end
		
		m()

		Run.Heartbeat:connect(function()
			s.Rotation = workspace.Live[plr.Name].UpperTorso.Rotation
			s.CFrame = workspace.Live[plr.Name].UpperTorso.CFrame * CFrame.new(.45, 0, .6)
		end)
		Lib:Notifcation("Equipped.")
	else
		HRP["Poopy"]:Destroy()
		workspace[plr.Name .. 's']:Destroy()
		Lib:Notifcation("Unequipped.")
	end
end)