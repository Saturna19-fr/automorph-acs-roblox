local module = require(game:GetService("ServerScriptService"):WaitForChild("AutoMorphModuleScript"))

game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(characterModel)
		wait(0.05)
		local VestVida, VestProtect = module.findmodel(player.Team.Name, characterModel)
		module.setValues(characterModel, VestVida, VestProtect)
	end)
end)

