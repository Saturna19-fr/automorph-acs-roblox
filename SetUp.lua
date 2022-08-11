local teams = {}

for i, k in pairs(game.Teams:GetTeams()) do
	table.insert(teams, k.Name)
end
print(teams)
if not game.ServerStorage:FindFirstChild("AutoMorph") then
	local folder = Instance.new("Folder")
	folder.Parent = game.ServerStorage
	folder.Name = "AutoMorph"
	local teamFolder = Instance.new("Folder")
	teamFolder.Name = "Teams"
	teamFolder.Parent = folder
end
local teamFolder = game.ServerStorage.AutoMorph.Teams
function Setup(teamName)
	local e = Instance.new("Folder")
	e.Parent = teamFolder
	e.Name = teamName
end
for i=1, #teams do
	Setup(teams[i])
end
