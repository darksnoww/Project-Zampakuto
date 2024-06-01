-- File located in the Shinigami Selector NPC
local clickDetector = script.Parent:FindFirstChild("ClickDetector")

local function onPlayerClicked(player)
	local classSelectionEvent = game.ReplicatedStorage:FindFirstChild("ClassSelectionEvent")
	if classSelectionEvent then
		classSelectionEvent:FireServer("Shinigami")
	end
end

clickDetector.MouseClick:Connect(onPlayerClicked)
