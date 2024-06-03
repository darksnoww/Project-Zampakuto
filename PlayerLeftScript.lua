local ReplicatedStorage = game:GetService('ReplicatedStorage')
local remoteEvent = ReplicatedStorage:WaitForChild('LeaveRemoteEvent')

local function onPlayerLeave(player)
	remoteEvent:FireAllClients(player.Name)
end

game.Players.PlayerRemoving:Connect(onPlayerLeave)
