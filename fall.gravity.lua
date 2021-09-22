local fell = false
workspace.Gravity = 50
game:GetService("UserInputService").InputBegan:Connect(function(k)
    if k.KeyCode == Enum.KeyCode.E then
        if fell == true then
            fell = false
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(5) 
            workspace.Gravity = 50
        elseif fell == false then  
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
            workspace.Gravity = 0
            fell = true
        end
    end

end)
