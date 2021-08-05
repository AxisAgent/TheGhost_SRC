local middle = script.Parent:FindFirstChild("Torso") -- Main part of the antagonist's body to inflict damage when touched by the part.
local max = 150
local dist = 200
local ishellhour = false
function findNearestTorso(pos)
	local list = game.Workspace:GetChildren()
	local torso = nil -- The distance the antagonist can detects its enemies.
	local temp = nil
	local human = nil
	local animate = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= script.Parent) then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			animate = temp2:findFirstChild("Animate")
			if (temp ~= nil) and (human ~= nil) and (animate ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
					print(dist)
				elseif (temp.Position - pos).magnitude > dist then
					workspace.StopScare:FireAllClients()
				end
			end
		end
	end
	return torso
end

function Hit(hit)
	local human = hit.Parent:FindFirstChild("Humanoid")
	local animate = hit.Parent:findFirstChild("Animate")
	if (human ~= nil) and (animate ~= nil) then
		human.Health =  human.Health -100 -- Damage when the antagonist touches it's enemies.
	end
end

middle.Touched:connect(Hit)

while true do
	wait(0)
	local target = findNearestTorso(script.Parent.Torso.Position)
	if target ~= nil then
		script.Parent.Humanoid:MoveTo(target.Position, target)
		if (target.Position - script.Parent.Torso.Position).Magnitude < 50 then
			workspace.ScareTarget:FireAllClients()
		end
		game.Players.PlayerAdded:Connect(function(plr)
			while true do
				wait(30)
				script.Parent.HumanoidRootPart.Position = plr.Character.HumanoidRootPart.Position
			end
		end)
	end
end

workspace.HellHour.OnServerEvent:Connect(function()
	dist = 0
	game.Lighting.Ambient = Color3.new(1, 0, 0)
	game.Lighting.OutdoorAmbient = Color3.new(1,0,0)
	
	local hum = script.Parent.Humanoid
	local loadedBloodHour = hum:LoadAnimation(script.Parent.BloodHour)
	
	loadedBloodHour:Play()
	workspace.Panick:Play()
	wait(35.832)
	workspace.Rage:Play()
end)
