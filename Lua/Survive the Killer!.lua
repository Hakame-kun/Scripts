-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

loadstring(game:HttpGet(('https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/SurviveTheKiller_DohmScripts_Public.lua'), true))()