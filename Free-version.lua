local windows = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Synapse-Library-OBFUSCATED-/main/Source.lua"))()
local win = windows:Create({
    Title = "SEX.sol Free",
    Game = "Untitled FPS"
})


local InfiniteJumpEnabled = false
game:GetService("UserInputService").JumpRequest:connect(function()
    if InfiniteJumpEnabled then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
end)


local tab = win:NewTab({
    Title = "Misc."
})
tab:Label({
    Title = "infJump"
})

tab:Toggle({
    Title = "Toggle InfJump",
    Callback = function(value)
        InfiniteJumpEnabled = value
    end
})

tab:Label({
    Title = "HitBoxExpander"
})

tab:Slider({
    Title = "HitBox Size",
    MinValue = 10,
    Def = 10,
    MaxValue = 50,
    callback = function(args)
        _G.HeadSize = args
    end
})

tab:Label({
	Title = "ESP coming soon"
})

_G.HeadSize = 15
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
