local tool = script.Parent
local swinging = false
local candmgghost = true
tool.Equipped:Connect(function()
	local char = tool.Parent
	local hum = char.Humanoid
	local hold = hum:LoadAnimation(script.Parent.Normal)
	local stun = hum:LoadAnimation(script.Parent.Stun)
	hold:Play()
	tool.Unequipped:Connect(function()
		hold:Stop()
	end)
tool.Activated:Connect(function()
	if swinging == false then
			swinging=true
		hold:Stop()
		script.Parent.ShockPart.TrailElectricity.Enabled = true
		script.Parent.ShockPart.ShockSound:Play()
		stun:Play()
		wait(1)
		hold:Play()
		script.Parent.ShockPart.TrailElectricity.Enabled = false
		swinging = false
	end
end)
end)

script.Parent.ShockPart.Touched:Connect(function(hit)
	if swinging == true then
		if hit.Parent.Name == "TheGhost" then
			workspace.Scream:Play()
			hit.Parent.AI.Disabled = true
			if candmgghost == true then
				hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 25
			end
			
			if hit.Parent.Humanoid.Health < 150 then
				candmgghost = false
			end
		end
	end
end)
