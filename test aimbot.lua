local GUI = Instance.new("ScreenGui")
local Toggle = Instance.new("TextButton")
local Status = Instance.new("TextLabel")

GUI.Name = "AimbotGUI"
GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Toggle.Name = "ToggleButton"
Toggle.Parent = GUI
Toggle.Size = UDim2.new(0.1, 0, 0.05, 0)
Toggle.Position = UDim2.new(0.95, 0, 0.95, 0)
Toggle.Text = "Toggle Aimbot"
Toggle.Font = Enum.Font.SourceSans
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Toggle.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Toggle.BorderSizePixel = 1

Status.Name = "StatusLabel"
Status.Parent = GUI
Status.Size = UDim2.new(0.1, 0, 0.05, 0)
Status.Position = UDim2.new(0.05, 0, 0.05, 0)
Status.Text = "Aimbot: Off"
Status.Font = Enum.Font.SourceSans
Status.TextColor3 = Color3.new(1, 1, 1)
Status.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Status.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Status.BorderSizePixel = 1

local function toggleAimbot()
    if aimbotEnabled then
        aimbotEnabled = false
        Toggle.Text = "Toggle Aimbot"
        Status.Text = "Aimbot: Off"
        print("Aimbot is now off.")
    else
        aimbotEnabled = true
        Toggle.Text = "Toggle Aimbot (On)"
        Status.Text = "Aimbot: On"
        print("Aimbot is now on.")
    end
end

Toggle.MouseButton1Click:Connect(toggleAimbot)

local aimbotEnabled = false

while true do
    if aimbotEnabled then
        -- Get the closest player
        local closestPlayer = nil
        local shortestDistance = math.huge
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local character = player.Character
                if character then
                    local head = character:WaitForChild("Head")
                    local distance = (game.Players.LocalPlayer.Character.Head.Position - head.Position).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        closestPlayer = player
                    end
                end
            end
        end

        -- Aim at the head of the closest player
        if closestPlayer then
            local head = closestPlayer.Character:WaitForChild("Head")
            local aimPos = head.Position
            local camera = workspace.CurrentCamera
            local lookVector = (aimPos - camera.CFrame.p).Unit
            camera.CFrame = camera.CFrame + lookVector * 5
        end
    end

    wait()
end
