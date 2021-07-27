local tool = script.Parent

tool.Equipped:Connect(function()
	local char = tool.Parent
	local hum = char.Humanoid
	local hold = hum:LoadAnimation(script.Parent.Animation)
	hold:Play()
	tool.Unequipped:Connect(function()
		hold:Stop()
	end)
end)

