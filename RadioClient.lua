local tool = script.Parent
local isClicked = false
tool.Activated:Connect(function()
	local char = tool.Parent
	local hum = char.Humanoid
	local ld = hum:LoadAnimation(script.Parent.Animation)
	if isClicked == false then
		isClicked = true
		ld:Play()
		script.Parent.Beep:Play()
	end
end)
