local ReplicatedStorage = game:GetService('ReplicatedStorage')
local remoteEvent = ReplicatedStorage:WaitForChild('JoinRemoteEvent')

local function onPlayerJoin(player)
	remoteEvent:FireAllClients(player.Name)
end

game.Players.PlayerAdded:Connect(onPlayerJoin)
