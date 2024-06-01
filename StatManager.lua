-- Script located in ServerScriptService
game.Players.PlayerAdded:Connect(function(player)
	local stats = Instance.new("Folder")
	stats.Name = "leaderstats"
	stats.Parent = player

	local health = Instance.new("IntValue")
	health.Name = "Health"
	health.Value = 100 
	health.Parent = stats

	local swordSkill = Instance.new("IntValue")
	swordSkill.Name = "SwordSkill"
	swordSkill.Value = 0 
	swordSkill.Parent = stats

	local strength = Instance.new("IntValue")
	strength.Name = "Strength"
	strength.Value = 0 
	strength.Parent = stats

	local stamina = Instance.new("IntValue")
	stamina.Name = "Stamina"
	stamina.Value = 50 
	stamina.Parent = stats

	local mastery = Instance.new("IntValue")
	mastery.Name = "Mastery"
	mastery.Value = 0 
	mastery.Parent = stats
end)
