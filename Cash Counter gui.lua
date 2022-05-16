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
