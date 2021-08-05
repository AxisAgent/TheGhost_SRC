local tool = script.Parent
local isClicked = false
tool.Activated:Connect(function()
	local char = tool.Parent
	local hum = char.Humanoid
	local ld = hum:LoadAnimation(script.Parent.Animation)
	if isClicked == false then
		isClicked = true
		script.Parent.Bandage:Play()
		ld:Play()
		wait(2)
		hum.Health = hum.Health + 30
		local plr = game.Players:GetPlayerFromCharacter(char)
		plr.spacestats.ci.Value = plr.spacestats.ci.Value - 1
		tool:Destroy()
	end
end)
