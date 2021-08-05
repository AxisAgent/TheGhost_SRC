workspace.HellHour.OnServerEvent:Connect(function(plr)
	script.Parent.Animate.Disabled = true
	script.Parent.AI.Disabled = true
	--
	game.Lighting.Ambient = Color3.new(1, 0, 0)
	game.Lighting.OutdoorAmbient = Color3.new(1,0,0)
	game.Lighting.TimeOfDay = 0
	game.ServerScriptService.DayAndNightHandler:Destroy()
	workspace.Daytime:Stop()
	workspace.Daytime:Destroy()
	local hum = script.Parent.Humanoid
	local loadedBloodHour = hum:LoadAnimation(script.Parent.BloodHour)

	loadedBloodHour:Play()
	workspace.Panick:Play()
	wait(35.832)
	workspace.Rage:Play()
	loadedBloodHour:Stop()
	script.Parent.Humanoid.WalkSpeed = 30
	script.Parent.Humanoid.Health = math.huge
	plr.Character.HumanoidRootPart.Position = workspace.CampArea.Part.Position
	script.Parent.HumanoidRootPart.Position = workspace.SpawnLocation.Position
	wait(1)
	script.Parent.Head.Eye.BrickColor = BrickColor.new("Really red")
	script.Parent.Head.Eye2.BrickColor = BrickColor.new("Really red")
	script.Parent.AI.Disabled = false
	script.Parent.Animate.Disabled = false
end)
