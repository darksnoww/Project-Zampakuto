-- File located in ServerScriptService
game.Players.PlayerAdded:Connect(function(player)
    local stats = Instance.new("Folder")
    stats.Name = "leaderstats"
    stats.Parent = player

    local level = Instance.new("IntValue")
    level.Name = "Level"
    level.Value = 1
    level.Parent = stats

    local experience = Instance.new("IntValue")
    experience.Name = "Experience"
    experience.Value = 0
    experience.Parent = stast

    local health = Instance.new("IntValue")
    health.Name = "Health"
    health.Value = 100
    health.Parent = stats
  end)
