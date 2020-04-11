-- Made by SweatyDogey#6365
-- Thanks sweaty, very much appreciated

-- Instances:

local v2 = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local underline = Instance.new("Frame")
local button = Instance.new("TextButton")
local toggle = Instance.new("TextButton")
local killgui = Instance.new("TextButton")
local togglename = Instance.new("TextLabel")

--Properties:

v2.Name = "v2"
v2.Parent = game.CoreGui
v2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = v2
main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.360817939, 0, 0.304347813, 0)
main.Size = UDim2.new(0, 204, 0, 245)

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 204, 0, 28)
title.Font = Enum.Font.ArialBold
title.Text = "Kermit Discord"
title.TextColor3 = Color3.fromRGB(172, 133, 255)
title.TextSize = 14.000

underline.Name = "underline"
underline.Parent = main
underline.BackgroundColor3 = Color3.fromRGB(172, 133, 255)
underline.BorderColor3 = Color3.fromRGB(172, 133, 255)
underline.BorderSizePixel = 0
underline.Position = UDim2.new(0, 0, 0.120689653, 0)
underline.Size = UDim2.new(0, 204, 0, 6)

button.Name = "button"
button.Parent = main
button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
button.BorderColor3 = Color3.fromRGB(172, 133, 255)
button.Position = UDim2.new(0.0392156877, 0, 0.219827592, 0)
button.Size = UDim2.new(0, 187, 0, 24)
button.Font = Enum.Font.SourceSans
button.Text = "Join Kermit's Discord Hangout"
button.TextColor3 = Color3.fromRGB(172, 133, 255)
button.TextSize = 14.000

toggle.Name = "toggle"
toggle.Parent = main
toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
toggle.BorderColor3 = Color3.fromRGB(172, 133, 255)
toggle.Position = UDim2.new(0.0392156877, 0, 0.400862098, 0)
toggle.Size = UDim2.new(0, 33, 0, 27)
toggle.Font = Enum.Font.Code
toggle.Text = ""
toggle.TextColor3 = Color3.fromRGB(172, 133, 255)
toggle.TextSize = 14.000

killgui.Name = "kill gui"
killgui.Parent = main
killgui.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
killgui.BorderColor3 = Color3.fromRGB(172, 133, 255)
killgui.Position = UDim2.new(0.0392156877, 0, 0.893296957, 0)
killgui.Size = UDim2.new(0, 187, 0, 18)
killgui.Font = Enum.Font.Code
killgui.Text = "Kill GUI"
killgui.TextColor3 = Color3.fromRGB(172, 133, 255)
killgui.TextSize = 14.000

togglename.Name = "toggle name"
togglename.Parent = main
togglename.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
togglename.BorderColor3 = Color3.fromRGB(172, 133, 255)
togglename.Position = UDim2.new(0.24509804, 0, 0.400862098, 0)
togglename.Size = UDim2.new(0, 129, 0, 27)
togglename.Font = Enum.Font.Code
togglename.Text = "Print Discord Invite"
togglename.TextColor3 = Color3.fromRGB(172, 133, 255)
togglename.TextSize = 11.000

-- Scripts:

local function SWRFBR_fake_script() -- button.LocalScript 
	local script = Instance.new('LocalScript', button)

	local button = script.Parent
	
	button.MouseButton1Down:Connect(function()
	setclipboard("https://discord.gg/tErTvx2")
	end)
end
coroutine.wrap(SWRFBR_fake_script)()
local function TYGJKSF_fake_script() -- toggle.LocalScript 
	local script = Instance.new('LocalScript', toggle)

	local button = script.Parent --Assuming this is your button
	local toggled = false
	button.MouseButton1Down:connect(function()
	if toggled == false then
	button.Text = "X"
	print("https://discord.gg/tErTvx2")
	toggled = true
	elseif toggled == true then
	button.Text = ""
	-- add something for when turn off
	toggled = false
	end
	end)
end
coroutine.wrap(TYGJKSF_fake_script)()
local function IRFG_fake_script() -- main.Drag 
	local script = Instance.new('LocalScript', main)

	--[[
	Before any of you say I skidded this drag script.
	I copied it from a really shitty wally wannabee.
	So, I skidded from a skidder.
	Big brain, also you're a virgin for cracking this source.	
		
		]]
	
	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(IRFG_fake_script)()
local function JTOW_fake_script() -- killgui.LocalScript 
	local script = Instance.new('LocalScript', killgui)

	local button = script.Parent
	local main = script.Parent.Parent
	button.MouseButton1Down:Connect(function()
	main.Visible = false
	end)
end
coroutine.wrap(JTOW_fake_script)()
