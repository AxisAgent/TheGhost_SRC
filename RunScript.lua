local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char:WaitForChild('Humanoid')
local loaded = hum:LoadAnimation(script.Parent.RUN)
local uis = game:GetService("UserInputService")
local stamina = Instance.new("IntValue")
stamina.Value = 100
local running = false

uis.InputBegan:Connect(function(ip)
	if ip.KeyCode == Enum.KeyCode.LeftShift then
		if stamina.Value > 1 then
	            loaded:Play()
		    running = true
		end
		hum.WalkSpeed = 21
	end
end)
uis.InputEnded:Connect(function(ip)
	if ip.KeyCode == Enum.KeyCode.LeftShift then
		loaded:Stop()
		running = false
	    hum.WalkSpeed = 16
	end
end)

while true do
	wait(0.0001)
	if running == true then
		wait(0.1)
		stamina.Value = stamina.Value - 1
		local xScale = stamina.Value/20
		local xOffset = 0
		script.Parent.ImageLabel.TweenFrame:TweenSize(UDim2.new(xScale,xOffset,0, 38),Enum.EasingDirection.In,Enum.EasingStyle.Quad,0.1)
		print(stamina.Value)
    	if stamina.Value < 1 then
			running = false
		end
	end
end
