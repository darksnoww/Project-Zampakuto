local classSelectionEvent = game.ReplicatedStorage:FindFirstChild("ClassSelectionEvent")

local function updateLeaderboard(player)
	local class = player:GetAttribute("Class")
	local leaderboard = player:FindFirstChild("leaderstats")

	if leaderboard then
		local classStat = leaderboard:FindFirstChild("Class")
		if not classStat then
			classStat = Instance.new("StringValue")
			classStat.Name = "Class"
			classStat.Parent = leaderboard
		end
		classStat.Value = class
	end
end

local function onClassSelected(player, className)
	if player and className then
		player:SetAttribute("Class", className)
		updateLeaderboard(player)
		player:LoadCharacter() 
	end
end

if classSelectionEvent then
	classSelectionEvent.OnServerEvent:Connect(onClassSelected)
end

game.Players.PlayerAdded:Connect(function(player)
	local leaderboard = Instance.new("Folder")
	leaderboard.Name = "leaderstats"
	leaderboard.Parent = player

	local classStat = Instance.new("StringValue")
	classStat.Name = "Class"
	classStat.Parent = leaderboard
	classStat.Value = "None" 

	updateLeaderboard(player)
end)
