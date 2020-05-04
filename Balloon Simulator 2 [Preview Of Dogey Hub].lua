local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hillsides/UI-Libraries/master/Wally%20Ui%20V2", true))()

-- Windows
local w = library:CreateWindow("Balloon Simulator V2")
local c = library:CreateWindow("Credits!")

-- Toggles
w:Toggle("Auto-Fill Balloon", {flag = "autof"})
w:Toggle("Auto-Sell Balloon", {flag = "autos"})
w:Toggle("Collect Coins", {flag = "autoc"})

-- Labels
c:Label("UI: Wally")
c:Label("Scripts: Me")

-- Flags
spawn(function()
	while wait() do
		if w.flags.autof then
			game:GetService("ReplicatedStorage").PublicResources.Events.Networking:FireServer("Click")
		end
	end
end)

spawn(function()
	while wait() do
		if w.flags.autos then
			for i,v in pairs(game:GetService("Workspace").Resources.Contact.Sell:GetChildren()) do
	        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
	        end
        end
	end
end)

spawn(function()
	while wait() do 
		if w.flags.autoc then
			for i,v in pairs(game:GetService("Workspace").Resources.Pickups:GetChildren()) do
	        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            end
	    end
	end
end)

print("Collect Coins might be slow to bypass non-existent anti-cheat")
