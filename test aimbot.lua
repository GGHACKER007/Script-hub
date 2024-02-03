--UNIVERSAL AIMBOT V2 BY GG HACKER (Aka : NERUPU_YT)
local config = {
    TeamCheck = true,   -- Set to true to only target players on different teams
    Smoothing = 1,       -- Camera smoothing factor
    KeyToToggle = Enum.KeyCode.F, -- Key to toggle the aimbot
}

-- Services
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

-- GUI
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
TextLabel.Size = UDim2.new(0, 100, 0, 50)
TextLabel.Position = UDim2.new(0.5, -50, 0.5, -25)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "Aimbot: OFF"
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextSize = 20
TextLabel.TextColor3 = Color3.new(1, 1, 1)

-- Function to get the closest visible player
local function getClosestVisiblePlayer(camera)
    local ray = Ray.new(camera.CFrame.Position, camera.CFrame.LookVector)
    local closestPlayer = nil
    local closestDistance = math.huge
    
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            local character = player.Character
            if character and character:FindFirstChild("Head") then
                local headPosition = character.Head.Position
                local targetPosition = ray:ClosestPoint(headPosition)
                local distance = (targetPosition - headPosition).Magnitude
                
                if distance < closestDistance then
                    closestDistance = distance
                    closestPlayer = player
                end
            end
        end
    end
    
    return closestPlayer
end

-- Function to toggle the aimbot
local aimbotEnabled = false

local function toggleAimbot()
    aimbotEnabled = not aimbotEnabled
    TextLabel.Text = aimbotEnabled and "Aimbot: ON" or "Aimbot: OFF"
end

-- Function to update the aimbot
local function updateAimbot()
    if aimbotEnabled then
        local currentCamera = workspace.CurrentCamera
        local crosshairPosition = currentCamera.ViewportSize / 2
        local closestPlayer = getClosestVisiblePlayer(currentCamera)
        
        if closestPlayer then
            local headPosition = closestPlayer.Character.Head.Position
            local headScreenPosition = currentCamera:WorldToScreenPoint(headPosition)
            local distanceToCrosshair = (Vector2.new(headScreenPosition.X, headScreenPosition.Y) - crosshairPosition).Magnitude
            
            if distanceToCrosshair < 100 then -- adjust the value to change the size of the "FOV"
                currentCamera.CFrame = currentCamera.CFrame:Lerp(CFrame.new(currentCamera.CFrame.Position, headPosition), config.Smoothing)
            end
        end
    end
end

-- Connect the toggleAimbot function to the toggle key
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == config.KeyToToggle then
        toggleAimbot()
    end
end)

-- Connect the updateAimbot function to the RenderStepped event
RunService.RenderStepped:Connect(updateAimbot)
