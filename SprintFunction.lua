local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local camera = game.Workspace.CurrentCamera

local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local Configuration = require(game.ReplicatedStorage:WaitForChild("ShiftSprintConfiguration"))

function isWalking()
	if humanoid.MoveDirection.Magnitude > 0 then
		return true
	else
		return false
	end
end

UIS.InputBegan:Connect(function(key,proccess)
	if key.KeyCode == Configuration.RunKey then
		if isWalking() then
			humanoid.WalkSpeed = Configuration.RunSpeed
			TweenService:Create(camera, TweenInfo.new(Configuration.TweenFovDuration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {FildOfView = Configuration.RunFov}):Play()
		end
	end
end)

UIS.InputBegan:Connect(function(key, proccess)
	if key.KeyCode == Configuration.RunKey then
		humanoid.WalkSpeed = Configuration.WalkSpeed
		TweenService:Create(camera, TweenInfo.new(Configuration.TweenFovDuration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {FieldOfView = Configuration.WalkFov}):Play()
	end
end)
