-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

local args = {
    [1] = 20000000000,
    [2] = "Gems"
}

game:GetService("ReplicatedStorage").Events.Sell:FireServer(unpack(args)) 

local args = {
    [1] = 20000000000,
    [2] = "Money"
}

game:GetService("ReplicatedStorage").Events.Sell:FireServer(unpack(args))