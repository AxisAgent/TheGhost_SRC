workspace.Readye.OnServerEvent:Connect(function()
	local pos = Vector3.new(-49.619, 285.705, 131.106)
	local pogcrate = game.ServerStorage.Crate:Clone()
	pogcrate.Parent = workspace
	pogcrate.Position = pos
	wait(3)
	pogcrate.Attachment.Smoke1.Enabled = true
end)
