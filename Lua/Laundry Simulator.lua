-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/Laundry%20Simulator.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Developer1Liam/ArtexScripting/main/LaundrySimulator", true))()