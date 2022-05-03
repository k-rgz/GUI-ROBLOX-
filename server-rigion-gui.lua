-- by wrd#2000
-- contact for any errors

local TextLabel = Instance.new("TextLabel")

TextLabel.Parent = game.StarterGui.ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.624060154, 0, 0.0378657542, 0)
TextLabel.Size = UDim2.new(0.257142872, 0, 0.0464715995, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

local function GYRHVW_fake_script()
	local script = Instance.new('LocalScript', TextLabel)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); 
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
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
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(GYRHVW_fake_script)()
local function TQGA_fake_script()
	local script = Instance.new('Script', TextLabel)

	local http = game:GetService("HttpService")
	local longitude = http:JSONDecode(http:GetAsync('http://ip-api.com/json/')).lon
	local region = script.Parent
	
	region.Text = "N\A"
	
	if(longitude>-180 and longitude<=-105)then
		region.Text = "West US"
	elseif(longitude>-105 and longitude<=-90)then
		region.Text = "Central US"
	elseif(longitude>-90 and longitude<=0)then
		region.Text = "East US"
	elseif(longitude<=75 and longitude>0)then
		region.Text = "Europe"
	elseif(longitude<=180 and longitude>75)then
		region.Text = "Australia"
	end
end
coroutine.wrap(TQGA_fake_script)()
