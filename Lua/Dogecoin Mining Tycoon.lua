-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

-- Cashout
Rate = 240 -- Will cash out when the rate is equal to or greater than this number

-- Script
local rate = workspace.__Locations.Exchange.Rate
rate:GetPropertyChangedSignal("Value"):Connect(function(i,v)
    if rate.Value >= Rate then
        game.ReplicatedStorage.SpecWork.Shared.Network.Exchange:FireServer("Exchange",{Rate=rate.Value})
    end
end)