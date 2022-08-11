--[[

MIT License

Copyright (c) 2022 Saturna19-fr

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


						Saturna19
						
]]
local module = {}

local path = game.ServerStorage:WaitForChild("AutoMorph")


module.findmodel = function(PlayerTeam, character)

	local childrens = path:WaitForChild("Teams")[PlayerTeam]:GetChildren()
	local VProtect = path:WaitForChild("Teams")[PlayerTeam]:FindFirstChild("VestProtect").Value
	local VVida = path:WaitForChild("Teams")[PlayerTeam]:FindFirstChild("VestVida").Value
	for num, childs in pairs(childrens) do
		wait(0.5)
		local d = character:GetChildren() 
		for i=1, #d do 
			if (d[i].className == "CharacterMesh") then 
				d[i]:remove() 
			end
		end

		--[[
					Top		
		]]--

		if childs.Name == "Top" and childs:IsA("Model") then
			local d = character:GetChildren() 
			for i=1, #d do 
				if (d[i].className == "Accessory") then 
					d[i]:remove() 
				end
			end

			local g = childs:Clone()
			g.Parent = character			
			local c = g:GetChildren()
			for i=1, #c do
				if c[i].ClassName == "Part" or c[i].ClassName == "UnionOperation" or c[i].ClassName == "MeshPart" then

					local W = Instance.new("Weld")
					W.Part0 = g.Middle
					W.Part1 = c[i]
					local CJ = CFrame.new(g.Middle.Position)
					local C0 = g.Middle.CFrame:inverse()*CJ
					local C1 = c[i].CFrame:inverse()*CJ
					W.C0 = C0
					W.C1 = C1
					W.Parent = g.Middle
				end
				local Y = Instance.new("Weld")
				Y.Part0 = character.Head
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, -.15, 0)
				Y.Parent = Y.Part0
			end
			for i = 1, # c do
				c[i].Anchored = false
				c[i].CanCollide = false
			end
		end


		--[[
					Leg1		
		]]--

		if childs.Name == "Leg1" and childs:IsA("Model") then
			local g = childs:Clone()
			g.Parent = character			
			local c = g:GetChildren()
			for i=1, #c do
				if c[i].ClassName == "Part" or c[i].ClassName == "UnionOperation" or c[i].ClassName == "MeshPart" then
					local W = Instance.new("Weld")
					W.Part0 = g.Middle
					W.Part1 = c[i]
					local CJ = CFrame.new(g.Middle.Position)
					local C0 = g.Middle.CFrame:inverse()*CJ
					local C1 = c[i].CFrame:inverse()*CJ
					W.C0 = C0
					W.C1 = C1
					W.Parent = g.Middle
				end
				local Y = Instance.new("Weld")
				Y.Part0 = character["Right Leg"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, -.15, 0)
				Y.Parent = Y.Part0
			end
			for i = 1, # c do
				c[i].Anchored = false
				c[i].CanCollide = false
			end
		end

		--[[
					Leg2		
		]]--

		if childs.Name == "Leg2" and childs:IsA("Model") then
			local g = childs:Clone()
			g.Parent = character			
			local c = g:GetChildren()
			for i=1, #c do
				if c[i].ClassName == "Part" or c[i].ClassName == "UnionOperation" or c[i].ClassName == "MeshPart" then
					local W = Instance.new("Weld")
					W.Part0 = g.Middle
					W.Part1 = c[i]
					local CJ = CFrame.new(g.Middle.Position)
					local C0 = g.Middle.CFrame:inverse()*CJ
					local C1 = c[i].CFrame:inverse()*CJ
					W.C0 = C0
					W.C1 = C1
					W.Parent = g.Middle
				end
				local Y = Instance.new("Weld")
				Y.Part0 = character["Left Leg"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, -.15, 0)
				Y.Parent = Y.Part0
			end
			for i = 1, # c do
				c[i].Anchored = false
				c[i].CanCollide = false
			end
		end



		--[[
					Arm1		
		]]--

		if childs.Name == "Arm1" and childs:IsA("Model") then
			local g = childs:Clone()
			g.Parent = character			
			local c = g:GetChildren()
			for i=1, #c do
				if c[i].ClassName == "Part" or c[i].ClassName == "UnionOperation" or c[i].ClassName == "MeshPart" then
					local W = Instance.new("Weld")
					W.Part0 = g.Middle
					W.Part1 = c[i]
					local CJ = CFrame.new(g.Middle.Position)
					local C0 = g.Middle.CFrame:inverse()*CJ
					local C1 = c[i].CFrame:inverse()*CJ
					W.C0 = C0
					W.C1 = C1
					W.Parent = g.Middle
				end
				local Y = Instance.new("Weld")
				Y.Part0 = character["Left Arm"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, -.15, 0)
				Y.Parent = Y.Part0
			end
			for i = 1, # c do
				c[i].Anchored = false
				c[i].CanCollide = false
			end
		end



		--[[
					Chest		
		]]--		


		if childs.Name == "Chest" then
			local d = character:GetChildren() 
			for i=1, #d do 
				if (d[i].className == "Accessory") then 
					d[i]:remove() 
				end
			end
			local g = childs:Clone()
			g.Parent = character			
			local c = g:GetChildren()
			for i=1, #c do
				if c[i].ClassName == "Part" or c[i].ClassName == "UnionOperation" or c[i].ClassName == "MeshPart" then
					local W = Instance.new("Weld")
					W.Part0 = g.Middle
					W.Part1 = c[i]
					local CJ = CFrame.new(g.Middle.Position)
					local C0 = g.Middle.CFrame:inverse()*CJ
					local C1 = c[i].CFrame:inverse()*CJ
					W.C0 = C0
					W.C1 = C1
					W.Parent = g.Middle
				end
				local Y = Instance.new("Weld")
				Y.Part0 = character.Torso
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, -.15, 0)
				Y.Parent = Y.Part0
			end
			for i = 1, # c do
				c[i].Anchored = false
				c[i].CanCollide = false
			end

		end
		--[[
				Arm1
		]]--

		if childs.Name == "Arm2" then
			local g = childs:Clone()
			g.Parent = character			
			local c = g:GetChildren()
			for i=1, #c do
				if c[i].ClassName == "Part" or c[i].ClassName == "UnionOperation" or c[i].ClassName == "MeshPart" then
					local W = Instance.new("Weld")
					W.Part0 = g.Middle
					W.Part1 = c[i]
					local CJ = CFrame.new(g.Middle.Position)
					local C0 = g.Middle.CFrame:inverse()*CJ
					local C1 = c[i].CFrame:inverse()*CJ
					W.C0 = C0
					W.C1 = C1
					W.Parent = g.Middle
				end
				local Y = Instance.new("Weld")
				Y.Part0 = character["Right Arm"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, -.15, 0)
				Y.Parent = Y.Part0
			end
			for i = 1, # c do
				c[i].Anchored = false
				c[i].CanCollide = false
			end

		end


	end
	if path:WaitForChild("Teams")[PlayerTeam]:GetAttribute("requireVestPants") == true then
		wait(2)
		character.Pants.PantsTemplate = path:WaitForChild("Teams")[PlayerTeam]:FindFirstChildOfClass("Pants").PantsTemplate
		character.Shirt.ShirtTemplate = path:WaitForChild("Teams")[PlayerTeam]:FindFirstChildOfClass("Shirt").ShirtTemplate
	end
	return VVida, VProtect
end


module.setValues = function(character, VestVida, VestProtect)
	character:WaitForChild("Saude").Protecao.VestVida.Value = VestVida
	character:WaitForChild("Saude").Protecao.VestProtect.Value = VestProtect
end
return module
