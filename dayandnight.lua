local function despawn()
	workspace.TheGhost.Parent = game.ServerStorage
end
local function spawnTG()
	game.ServerStorage.TheGhost.Parent = workspace
end



game.Players.PlayerAdded:Connect(function()
	while true do
		wait(186.044)
		repeat
			wait(0.0001)
			game.Lighting.ClockTime = game.Lighting.ClockTime + 1
		until game.Lighting.ClockTime == 12
		despawn()
		workspace.Scream:Play()
		workspace.Daytime:Play()
		workspace.StopScare:FireAllClients()
		wait(186.044)
		workspace.Daytime:Stop()
		workspace.Scream:Play()
		spawnTG()
		repeat
			wait(0.0001)
			game.Lighting.ClockTime = game.Lighting.ClockTime + 1
		until game.Lighting.ClockTime == 0
	end
end)
