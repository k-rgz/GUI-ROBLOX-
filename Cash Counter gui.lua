-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Frame.Position = UDim2.new(0.44921875, 0, 0.426850259, 0)
Frame.Size = UDim2.new(0, 130, 0, 84)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 130, 0, 38)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = ".gg/DHS"
TextLabel.TextColor3 = Color3.fromRGB(0, 255, 8)
TextLabel.TextSize = 24.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
TextLabel_2.Position = UDim2.new(0.0384615399, 0, 0.5, 0)
TextLabel_2.Size = UDim2.new(0, 120, 0, 36)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "N/A"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = TextLabel_2

UICorner_2.CornerRadius = UDim.new(0.0500000007, 0)
UICorner_2.Parent = Frame

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.869230747, 0, 0.15476191, 0)
ImageButton.Rotation = 90.000
ImageButton.Size = UDim2.new(0, 12, 0, 12)
ImageButton.Visible = false
ImageButton.Image = "rbxassetid://9649081774"
ImageButton.ScaleType = Enum.ScaleType.Fit


local function WNNH_fake_script() 
	local script = Instance.new('LocalScript', TextLabel_2)

	workspace.Ignored.Drop.ChildAdded:Connect(function(child)
		if child:IsA("Part") then
			local s = string.sub(child:WaitForChild("BillboardGui").TextLabel.Text, 2)
			getgenv().Cash = getgenv().Cash + s
		end
	end)

	while wait(2) do
		script.Parent.Text = "$"..getgenv().Cash
	end
end
coroutine.wrap(WNNH_fake_script)()
local function RZRQS_fake_script() -- Frame.Draggable 
	local script = Instance.new('LocalScript', Frame)

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
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
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
coroutine.wrap(RZRQS_fake_script)()
local function AWZHJ_fake_script() -- Frame.Script 
	local script = Instance.new('Script', Frame)

	local arrow = script.Parent.ImageButton
	local enabled = arrow:GetAttribute("Value", false)
	local frame = script.Parent

	if enabled == false then
		frame:TweenSize(UDim2.new(0, 130,0, 84))
	else if enabled == true then
			frame:TweenSize(UDim2.new(0, 400, 0, 100))
		end
	end
end
coroutine.wrap(AWZHJ_fake_script)()
