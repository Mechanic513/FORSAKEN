
local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local frame = Instance.new("Frame", screenGui)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(21, 134, 255)
frame.BorderMode = Enum.BorderMode.Inset
frame.BorderSizePixel = 2
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = UDim2.new(0, 464, 0, 288)

local label = Instance.new("TextLabel", frame)
label.AnchorPoint = Vector2.new(0.5, 0.5)
label.BackgroundColor3 = Color3.fromRGB(21, 134, 255)
label.BorderMode = Enum.BorderMode.Inset
label.BorderSizePixel = 2
label.Position = UDim2.new(0.447, 0, -0.072, 0)
label.Size = UDim2.new(0, 412, 0, 50)
label.Text = "Blu3gu1"
label.TextScaled = true

local cbutton = Instance.new("TextButton", frame)
cbutton.BackgroundColor3 = Color3.fromRGB(172, 199, 202)
cbutton.Position = UDim2.new(0.795, 0, -0.162, 0)
cbutton.Size = UDim2.new(0, 48, 0, 50)
cbutton.Text = "-"
cbutton.TextScaled = true

local cgbutton = Instance.new("TextButton", cbutton)
cgbutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
cgbutton.Position = UDim2.new(1, 0, 0, 0)
cgbutton.Size = UDim2.new(0, 48, 0, 50)
cgbutton.Text = "X"
cgbutton.TextScaled = true

local sframe = Instance.new("ScrollingFrame", frame)
sframe.BackgroundTransparency = 1
sframe.AnchorPoint = Vector2.new(0.5, 0.5)
sframe.Position = UDim2.new(0.5, 0,0.512, 0)
sframe.Size = UDim2.new(0, 453,0, 281)

local listl = Instance.new("UIListLayout", sframe)

local vbutton = Instance.new("TextButton", screenGui)
vbutton.AnchorPoint = Vector2.new(1,1)
vbutton.BackgroundColor3 = Color3.fromRGB(0, 174, 255)
vbutton.Position = UDim2.new(1, 0, 1, 0)
vbutton.Size = UDim2.new(0, 48, 0, 50)
vbutton.Text = "Show"
vbutton.Visible = false

local button1 = Instance.new("TextButton", sframe)
button1.BackgroundColor3 = Color3.fromRGB(46, 192, 255)
button1.Size = UDim2.new(0, 448,0, 47)
button1.Text = "Disable Dark lighting"
button1.TextScaled = true

local button2 = Instance.new("TextButton", sframe)
button2.BackgroundColor3 = Color3.fromRGB(46, 192, 255)
button2.Size = UDim2.new(0, 448,0, 47)
button2.Text = "Forsaken Killer ESP"
button2.TextScaled = true

local button3 = Instance.new("TextButton", sframe)
button3.BackgroundColor3 = Color3.fromRGB(46, 192, 255)
button3.Size = UDim2.new(0, 448,0, 47)
button3.Text = "Forsaken Survivor ESP"
button3.TextScaled = true

local button4 = Instance.new("TextBox", sframe)
button4.BackgroundColor3 = Color3.fromRGB(46, 192, 255)
button4.Size = UDim2.new(0, 448,0, 47)
button4.Text = "Enter Sound id for lobby music"
button4.TextScaled = true
button4.LayoutOrder = 1

local button5 = Instance.new("TextBox", sframe)
button5.BackgroundColor3 = Color3.fromRGB(46, 192, 255)
button5.Size = UDim2.new(0, 448,0, 47)
button5.Text = "Enter Sound Play Speed"
button5.TextScaled = true
button5.LayoutOrder = 1

local button6 = Instance.new("TextBox", sframe)
button6.BackgroundColor3 = Color3.fromRGB(46, 192, 255)
button6.Size = UDim2.new(0, 448,0, 47)
button6.Text = "Enter Sound Id For Map Ambience"
button6.TextScaled = true
button6.LayoutOrder = 1

local button7 = Instance.new("TextButton", sframe)
button7.BackgroundColor3 = Color3.fromRGB(46, 192, 255)
button7.Size = UDim2.new(0, 448,0, 47)
button7.Text = "Forsaken Killer View Line"
button7.TextScaled = true

local button8 = Instance.new("TextButton", sframe)
button8.BackgroundColor3 = Color3.fromRGB(46, 192, 255)
button8.Size = UDim2.new(0, 448,0, 47)
button8.Text = "Forsaken Generator ESP"
button8.TextScaled = true

screenGui.ResetOnSpawn = false


cbutton.MouseButton1Click:Connect(function()
	frame.Visible = false
	vbutton.Visible = true
end)

cgbutton.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)

vbutton.MouseButton1Click:Connect(function()
	frame.Visible = true
	vbutton.Visible = false
end)

button1.MouseButton1Click:Connect(function()
	local lighting = game.Lighting
	if lighting:FindFirstChildWhichIsA("Sky") then
		lighting:FindFirstChildWhichIsA("Sky"):Destroy()
	end
	game.Lighting.Brightness = 2
	if lighting:FindFirstChildWhichIsA("DepthOfFieldEffect") then
		lighting:FindFirstChildWhichIsA("DepthOfFieldEffect"):Destroy()
	end
	if lighting:FindFirstChildWhichIsA("BloomEffect") then
		lighting:FindFirstChildWhichIsA("BloomEffect"):Destroy()
	end
	game.Lighting.GlobalShadows = false
	game.Lighting.ClockTime = 12
end)

button2.MouseButton1Click:Connect(function()
	if workspace.Players.Killers:FindFirstChildOfClass("Model") then
		if not workspace.Players.Killers:FindFirstChildOfClass("Model"):FindFirstChild("Highlight") then
			Instance.new("Highlight", workspace.Players.Killers:FindFirstChildOfClass("Model"))
			workspace.Players.Killers:FindFirstChildOfClass("Model").Highlight.FillColor = Color3.fromRGB(255, 0, 4)
		elseif workspace.Players.Killers:FindFirstChildOfClass("Model"):FindFirstChild("Highlight") then
			workspace.Players.Killers:FindFirstChildOfClass("Model").Highlight:Destroy()
		end
	else
		print("GAVNO")
	end
end)

button3.MouseButton1Click:Connect(function()
	if workspace.Players.Survivors:FindFirstChildOfClass("Model") then
		for i,v in pairs(workspace.Players.Survivors:GetChildren()) do
			if not v:FindFirstChild("Highlight") then
				Instance.new("Highlight", v)
				v.Highlight.FillColor = Color3.fromRGB(47, 255, 0)
			elseif v:FindFirstChild("Highlight") then
				v.Highlight:Destroy()
			end
		end
	else
		print("GAVNO")
	end
end)

button7.MouseButton1Click:Connect(function()
	if not workspace.Players.Killers:FindFirstChildOfClass("Model"):FindFirstChild("ViewLine") then
		local line = Instance.new("Part", workspace.Players.Killers:FindFirstChildOfClass("Model"))
		line.Name = "ViewLine"
		line.CFrame = workspace.Players.Killers:FindFirstChildOfClass("Model").HumanoidRootPart.CFrame
		local weld = Instance.new("WeldConstraint", line)
		weld.Part1 = workspace.Players.Killers:FindFirstChildOfClass("Model").HumanoidRootPart
		weld.Part0 = line
		line.CanCollide = false
		line.CanQuery = false
		line.Size = Vector3.new(0.275, 0.271, 105.653)
		local hl = Instance.new("Highlight", line)
		hl.FillTransparency = 0.9
		hl.OutlineTransparency = 1
	elseif workspace.Players.Killers:FindFirstChildOfClass("Model"):FindFirstChild("ViewLine") then
		workspace.Players.Killers:FindFirstChildOfClass("Model"):FindFirstChild("ViewLine"):Destroy()
	end
end)

button8.MouseButton1Click:Connect(function()
	if workspace:FindFirstChild("Map") then
		for i,v in pairs(workspace.Map.Ingame.Map:GetChildren()) do
			if v.Name == "Generator" then
				if not v:FindFirstChild("Highlight") then
					local ghl = Instance.new("Highlight", v)
					ghl.FillColor = Color3.fromRGB(255, 183, 0)
				elseif v:FindFirstChild("Highlight") then
					v.Highlight:Destroy()
				end
			end
		end
	end
end)

button4:GetPropertyChangedSignal("Text"):Connect(function()
	game.Workspace.Themes.lobby.SoundId = "rbxassetid://"..button4.Text
end)

button5:GetPropertyChangedSignal("Text"):Connect(function()
	game.Workspace.Themes.lobby.PlaybackSpeed = button5.Text
end)

button6:GetPropertyChangedSignal("Text"):Connect(function()
	game.Workspace.Themes:WaitForChild("MapAmbience").SoundId = "rbxassetid://"..button4.Text
end)
