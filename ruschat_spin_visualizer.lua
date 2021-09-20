local char = game.Players.LocalPlayer.Character

local originY    = char.HumanoidRootPart.Position.Y
local multiplier = 100 --менять можно: чем больше, чем медленее, и наоборот
while true do
    game:GetService("RunService").RenderStepped:Wait()
    local sound = char.BoomBoxTool.Handle.Sound
    local angle = math.rad((sound.PlaybackLoudness / multiplier) * (sound.PlaybackLoudness / multiplier) )
    char:SetPrimaryPartCFrame(char.PrimaryPart.CFrame * CFrame.Angles(0,angle,0))
end
