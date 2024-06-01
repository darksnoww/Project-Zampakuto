local replicatedStorage = game:GetService("ReplicatedStorage")
local classSelectionEvent = replicatedStorage:WaitForChild("ClassSelectionEvent")

local function onClick(npc)
	npc.ClickDetector.MouseClick:Connect(function(player)
		if player == game.Players.LocalPlayer then
			if npc.Name == "Quincy Selector" then
				classSelectionEvent:FireServer("Quincy")
			elseif npc.Name == "Shinigami Selector" then
				classSelectionEvent:FireServer("Shinigami")
			end
		end
	end)
end

onClick(workspace:WaitForChild("Quincy Selector"))
onClick(workspace:WaitForChild("Shinigami Selector"))
