-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/Luftwaffe-dotcom/a/main/Bubble%20Gum%20Sim", true))()