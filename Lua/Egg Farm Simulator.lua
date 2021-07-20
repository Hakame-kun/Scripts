-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/30shots/scripts/main/Egg%20Farm%20Simulator%20AutoFarm%20v2.lua", true))()