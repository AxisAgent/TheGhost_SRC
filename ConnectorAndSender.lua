local plr = game.Players.LocalPlayer

game.Workspace.Readye.OnClientEvent:Connect(function()
	game.Workspace.Readye:FireServer()
end)
game.Workspace.HellHour.OnClientEvent:Connect(function(plr)
	game.Workspace.HellHour:FireServer()
end)
