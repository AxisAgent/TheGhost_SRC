local tool = script.Parent
local eq = false
tool.Equipped:Connect(function()
	eq = true
	local char = tool.Parent
	local hum = char.Humanoid
	local hold = hum:LoadAnimation(script.Parent.Animation)
	hold:Play()
	tool.Unequipped:Connect(function()
		eq = false
		hold:Stop()
		script.Parent.Handle.Sound:Stop()
	end)
	while true do
		wait(0.5)
		if eq == true then
			wait(1)
			local mag = math.abs(math.floor((script.Parent.Handle.Position - workspace.TheGhost.HumanoidRootPart.Position).Magnitude))
			--
			script.Parent.Screen.SurfaceGui.DisText.Text = mag.."m"
			script.Parent.Handle.Sound:Play()
		end
	end
end)

