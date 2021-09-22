local fell = false
game:GetService("UserInputService").InputBegan:Connect(function(k)
    if k.KeyCode == Enum.KeyCode.E then
        if fell == true then
            fell = false
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(5) 
        elseif fell == false then  
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
            
            fell = true
        end
    end

end)
