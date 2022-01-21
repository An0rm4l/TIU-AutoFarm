--fixed

getgenv().ChestFarm = true --Change to false to turn off speed 

spawn(function()
    while ChestFarm do wait()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").chests:GetDescendants()) do
                if v:IsA("Part") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    fireproximityprompt(v.ProximityPrompt)
                end
            end
        end)
    end
end)
