-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

while wait(1) do
game:GetService("ReplicatedStorage").ShootingGallery.RemoteEvents.RequestGalleryStart:FireServer()
wait(0.1)
game:GetService("ReplicatedStorage").ShootingGallery.RemoteEvents.Statistics.TargetHit:FireServer({["TargetName"] = "Your Mom",["score"] = 9e9,["position"] = Vector3.new(0,0,0)})
wait(1)
game:GetService("ReplicatedStorage").ShootingGallery.RemoteEvents.FinalBeatCleared:FireServer({[1] = true})
wait(0.1)
game:GetService("Players").LocalPlayer.PlayerGui.MainPlace.PopUps.ShootingGalleryStatistics.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.MainPlace.PopUps.BackgroundEffect.Visible = false
end