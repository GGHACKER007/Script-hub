-- Get the player to fling (optional)
local player = game.Players.LocalPlayer

-- Get the target to fling
local target = player.Character or game.Workspace:FindFirstChild("TargetModel")

-- Check if the target exists
if target then
    -- Calculate the force to apply
    local force = Vector3.new(1000, 500, 1000)

    -- Check if the target is a player
    if target:IsA("Model") and target.PrimaryPart then
        -- Get the player's character
        local character = target

        -- Check if the character is valid
        if character and character:FindFirstChild("HumanoidRootPart") then
            -- Get the character's humanoid root part
            local hrp = character.HumanoidRootPart

            -- Check if the player's humanoid is moving
            local function checkHumanoid()
                if character.Humanoid.Health > 0 and not character.Humanoid.Sit then
                    if character.Humanoid.MoveDirection.Magnitude > 0 then
                        wait(0.1)
                        checkHumanoid()
                    else
                        -- Apply the force to the character's humanoid root part
                        hrp:ApplyForce(force)
                    end
                end
            end

            -- Start checking the player's humanoid
            checkHumanoid()
        end
    else
        -- Check if the target is a part
        if target:IsA("BasePart") then
            -- Apply the force to the part
            target.AssemblyLinearVelocity = Vector3.new()
            target:ApplyForce(force)
        end
    end
end
