-- Set the distance threshold for flinging
local DISTANCE_THRESHOLD = 200

-- Get the player to fling from
local player = game.Players.LocalPlayer

-- Get the player's character
local character = player.Character

-- Check if the player's character exists
if character then
    -- Get the player's humanoid root part
    local hrp = character:WaitForChild("HumanoidRootPart")

    -- Calculate the position and extents of the Region3 object
    local position = hrp.Position
    local extents = Vector3.new(DISTANCE_THRESHOLD, DISTANCE_THRESHOLD, DISTANCE_THRESHOLD)

    -- Create a Region3 object
    local region = Region3.new(position - extents, position + extents)

    -- Get all parts within the distance threshold
    local parts = workspace:FindPartsInRegion3(region, hrp)

    -- Iterate through the parts
    for _, part in ipairs(parts) do
        -- Check if the part is a player or a base part
        if part:IsA("Model") and part:FindFirstChild("HumanoidRootPart") then
            -- Get the player's character
            local targetCharacter = part

            -- Check if the character is valid
            if targetCharacter and targetCharacter:FindFirstChild("HumanoidRootPart") then
                -- Get the character's humanoid root part
                local targetHrp = targetCharacter.HumanoidRootPart

                -- Check if the player's humanoid is moving
                local function checkHumanoid()
                    if targetCharacter.Humanoid.Health > 0 and not targetCharacter.Humanoid.Sit then
                        if targetCharacter.Humanoid.MoveDirection.Magnitude > 0 then
                            wait(0.1)
                            checkHumanoid()
                        else
                            -- Calculate the force to apply
                            local force = (hrp.Position - targetHrp.Position) * 1000

                            -- Apply the force to the character's humanoid root part
                            targetHrp:ApplyForce(force)
                        end
                    end
                end

                -- Start checking the player's humanoid
                checkHumanoid()
            end
        elseif part:IsA("BasePart") then
            -- Calculate the force to apply
            local force = (hrp.Position - part.Position) * 1000

            -- Apply the force to the part
            part.AssemblyLinearVelocity = Vector3.new()
            part:ApplyForce(force)
        end
    end
end
