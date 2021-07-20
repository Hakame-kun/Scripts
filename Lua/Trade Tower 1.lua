-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/zenhub/main/script", true))()