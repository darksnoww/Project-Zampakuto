local player = game.Players.LocalPlayer
local stats = player:WaitForChild("leaderstats")

local healthLabel = script.Parent:WaitForChild("HealthLabel")
local swordSkillLabel = script.Parent:WaitForChild("SwordSkillLabel")
local strengthLabel = script.Parent:WaitForChild("StrengthLabel")
local staminaLabel = script.Parent:WaitForChild("StaminaLabel")
local masteryLabel = script.Parent:WaitForChild("MasteryLabel")
local energyLabel = script.Parent:WaitForChild("EnergyLabel")

local function updateStats()
	healthLabel.Text = "Health" .. stats.Health.Value * 10
	swordSkillLabel.Text = "Sword Skill" .. stats.SwordSkill.Value
	strengthLabel.Text = "Strength" .. stats.Strength.Value
	staminaLabel.Text = "Stamina" .. stats.Stamina.Value * 5
	masteryLabel.Text = "Mastery" .. stats.Mastery.Value
	energyLabel.Text = "Energy" .. player:GetAttribute("Energy") .. "/" .. player:GetAttribute("MaxEnergy")
end

stats.Health.Changed:Connect(updateStats)
stats.SwordSkill.Changed:Connect(updateStats)
stats.Strength.Changed:Connect(updateStats)
stats.Stamina.Changed:Connect(updateStats)
stats.Mastery.Changed:Connect(updateStats)
player:GetAttributeChangedSignal("Energy"):Connect(updateStats)
player:GetAttributeChangedSignal("MaxEnergy"):Connect(updateStats)

updateStats()
