local spinning = true
local spinSpeed = 1
 
local function activateSpin()
    spinning = true
end
 
local function stopSpin()
    spinning = false
end
 
local function speedUpSpin()
    spinSpeed = spinSpeed + 1
end
 
local function onRenderStepped()
    if spinning then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(spinSpeed), 0)
    end
end
 
local gui = Instance.new("ScreenGui")
gui.Name = "RobloxSpinFE"
gui.Parent = game.Players.LocalPlayer.PlayerGui
 
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 150, 0, 100)
frame.Position = UDim2.new(0.5, -75, 0.5, -50)
frame.BackgroundColor3 = Color3.new(1, 1, 0)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.Active = true
frame.Draggable = true
frame.Parent = gui
 
local title = Instance.new("TextLabel")
title.Text = "Roblox Spin FE Script"
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
title.Parent = frame
 
local activateButton = Instance.new("TextButton")
activateButton.Text = "Activate Spin"
activateButton.Size = UDim2.new(0.4, 0, 0, 30)
activateButton.Position = UDim2.new(0.05, 0, 0.4, 0)
activateButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
activateButton.Parent = frame
 
local stopButton = Instance.new("TextButton")
stopButton.Text = "Stop Spin"
stopButton.Size = UDim2.new(0.4, 0, 0, 30)
stopButton.Position = UDim2.new(0.55, 0, 0.4, 0)
stopButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
stopButton.Parent = frame
 
local speedUpButton = Instance.new("TextButton")
speedUpButton.Text = "Speed Up Spin"
speedUpButton.Size = UDim2.new(0.8, 0, 0, 30)
speedUpButton.Position = UDim2.new(0.1, 0, 0.7, 0)
speedUpButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
speedUpButton.Parent = frame
 
activateButton.MouseButton1Click:Connect(activateSpin)
stopButton.MouseButton1Click:Connect(stopSpin)
speedUpButton.MouseButton1Click:Connect(speedUpSpin)
 
game:GetService("RunService").RenderStepped:Connect(onRenderStepped)

