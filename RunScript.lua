local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char:WaitForChild('Humanoid')
local loaded = hum:LoadAnimation(script.Parent.RUN)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(ip)
	if ip.KeyCode == Enum.KeyCode.LeftShift then
		hum.WalkSpeed = 21
		loaded:Play()
	end
end)
uis.InputEnded:Connect(function(ip)
	if ip.KeyCode == Enum.KeyCode.LeftShift then
		loaded:Stop()
		hum.WalkSpeed = 10
	end
end)
