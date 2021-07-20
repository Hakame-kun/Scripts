-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

loadstring(game:HttpGet("https://github.com/Hakame-kun/Scripts/raw/main/Treasure%20Quest/deez.lua",true))()