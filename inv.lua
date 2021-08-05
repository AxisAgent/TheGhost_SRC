
game.Players.PlayerAdded:Connect(function(plr)
local folder = Instance.new("Folder")
folder.Name = "spacestats"
folder.Parent = plr
local CurrentInventory = Instance.new("IntValue")
CurrentInventory.Value = 1
CurrentInventory.Name = "ci"
CurrentInventory.Parent = folder
local MaxInventory = Instance.new("IntValue")
MaxInventory.Value = 10
MaxInventory.Name = "mi"
MaxInventory.Parent = folder
local runningbool = Instance.new("BoolValue")
runningbool.Value = false
runningbool.Name = "isrun"
runningbool.Parent = folder
local stamina = Instance.new("IntValue")
stamina.Value = 100
stamina.Name = "stamina"
stamina.Parent = folder
local hasting = Instance.new("BoolValue")
hasting.Value = true
hasting.Name = "HAP"
hasting.Parent = folder
end)
