local RunService = game:GetService("RunService")

local Player = game.Players.LocalPlayer
local Character = Player.Character

RunService:BindToRenderStep("ArmTransparency", Enum.RenderPriority.Camera.Value - 5, function()
     local ch = Character:GetChildren()
     for c = 1, #ch do
		if ch[c]:IsA("BasePart") then
     		if string.match(ch[c].Name,"Hand") or string.match(ch[c].Name, "Arm") then
           		ch[c].LocalTransparencyModifier = 0
			end
		end
	end
end)
