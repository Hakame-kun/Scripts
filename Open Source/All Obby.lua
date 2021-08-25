local library = loadstring(game:HttpGet("https://gist.github.com/Hakame-kun/111a815c21b0d4d651803b598d3d1b56/raw/1d051d1706fcee8fc48a2e55711b615edd9cb52f/Wally's%2520UI", true))()
library.options.underlinecolor = "rainbow"

local w = library:CreateWindow('Main')
w:Section('Pick Your Poison!')
local t = w:Toggle('Auto Farm Universal', {flag = "AF1"})
spawn( 
    function()
        while wait() do
            if w.flags.AF1 then
                local tostage = game.Players.LocalPlayer.leaderstats.Stage.Value+1
local tospawn = workspace[tostage]
tospawn.CanCollide = false
tospawn.Transparency = 1
tospawn.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Head.Position.X,game.Players.LocalPlayer.Character.Head.Position.Y-1.5,game.Players.LocalPlayer.Character.Head.Position.Z)
            end
        end
    end
)

w:Section('If Universal does not work')
local t = w:Toggle('Auto Farm', {flag = "AF2"})
spawn( 
    function()
        while wait() do
            if w.flags.AF2 then
                local a=game:GetService("Players")local b=a.LocalPlayer;local c=b.leaderstats;local d=b.Character;local e=d.HumanoidRootPart;local f=''local g=''local h=game:GetDescendants()for i,j in pairs(h)do if j:IsA("IntValue")and j.Name=="Stage"then g='Stage'elseif j:IsA("IntValue")and j.Name=="Stages"then g='Stages'elseif j:IsA("Folder")and j.Name=="checkpoint"then g='checkpoint'elseif j:IsA("Folder")and j.Name=="Spawns"then f='Spawns'elseif j:IsA("Model")and j.Name=="Checkpoint"then f='ModelCheckpoint'elseif j:IsA("Folder")and j.Name==g and j:IsA("MeshPart")and j.Name=="2"then f='meshObby'elseif j:IsA("MeshPart")and j.Name=="2"and j.Parent.Name=="Stages"then f='meshObby2'elseif j:IsA("Folder")and j.Name=="Checkpoints"and j:IsA("Part")and j.Name=="2"then f='Checkpoints'elseif j:IsA("Folder")and j.Name=="Checkpoints"then f='Checkpoints'elseif j:IsA("Part")and j.Name=="Checkpoint"then f='Checkpoint_Brick'elseif j:IsA("Folder")and j.Name=="PlayerCheckPoints"then f='PlayerCheckPoints'elseif j:IsA("Part")and j.Name=="Checkpoint 1"then f='Checkpointweird'elseif j:IsA("Folder")and j.Name=="ModelOfParts"then f='WeirdFolderName'elseif j:IsA("Part")and j.Name=="NextLevel3"then f='NextLevel'elseif j:IsA("Folder")and j.Name=="stages"then f='stages'elseif j:IsA("Part")and j.Name=="4"and j.Parent.Name=="Spawns"then f='xdnt2'elseif j:IsA("Part")and j.Name=="5"and j.Parent.Name=="Checkpoint"then f='CheckpointFolder'elseif j:IsA("Model")and j.Name=="1"and j.Parent.Name=="Checkpoints"then f='model1'end end;print(g)print(f)if f=='Stages'then while wait()do clvl=game.Players.LocalPlayer.leaderstats[lvl].Value+1;if game.Workspace.Stages:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Stages:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='NextLevel'then while wait()do clvl=b.leaderstats[lvl].Value+1;xdnt04='NextLevel'..clvl;if game.Workspace:FindFirstChild(tostring(xdnt04))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(tostring(xdnt04)).CFrame end end elseif f=='stages'then while wait()do clvl=b.leaderstats[lvl].Value+1;if game.Workspace.stages:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.stages:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='Checkpoint_Brick'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats[lvl].Value+1;local k='Checkpoint_Brick:'..clvl;if game:GetService("Workspace")['Obstacles_0']:FindFirstChild(tostring(k))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace")['Obstacles_0']:FindFirstChild(tostring(k)).CFrame end end elseif f=='bignil3'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Level.Value+1;if game:GetService("Workspace"):FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace"):FindFirstChild(tostring(clvl)).CFrame end end elseif f=='bignil'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace"):FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace"):FindFirstChild(tostring(clvl)).CFrame end end elseif f=='WeirdFolderName'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stages.Value+1;if game:GetService("Workspace").ModelOfParts:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").ModelOfParts:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='playerGay'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").PlayerCheckPoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").PlayerCheckPoints:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='checkpoint'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").Map.checkpoint:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.checkpoint:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='Checkpoint'then local l=Instance.new("IntValue")l.Parent=game.Players.LocalPlayer;l.Name="xd"while wait()do l.Value=l.Value+1;if game.Workspace.Checkpoint:FindFirstChild(tostring(l.Value))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Checkpoint:FindFirstChild(tostring(l.Value)).CFrame end end elseif f=='meshObby'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats[g].Value+1;if game.Workspace:FindFirstChild(tostring(lclvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(tostring(lclvl)).CFrame end end elseif f=='meshObby2'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats[g].Value+1;if game.Workspace[g]:FindFirstChild(tostring(lclvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace[g]:FindFirstChild(tostring(lclvl)).CFrame end end elseif f=='xdnt2'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats[lvl].Value+1;if game.Workspace.Spawns:FindFirstChild(tostring(lclvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Spawns:FindFirstChild(tostring(lclvl)).CFrame end end elseif f=='Checkpointweird'then local l=Instance.new("IntValue")l.Parent=game.Players.LocalPlayer;l.Name="xd"l.Value=0;while wait()do l.Value=l.Value+1;xdnt='Checkpoint '..l.Value;if game.Workspace:FindFirstChild(tostring(xdnt))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(tostring(xdnt)).CFrame end end elseif f=='Skateboard'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl))then game:GetService("Workspace")[game.Players.LocalPlayer.Name]["Default_Skateboard"].SkateboardPlatform.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl)).CFrame end end elseif f=='CheckpointFolder'then if game.PlaceId==6740271685 then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl))then game:GetService("Workspace")[game.Players.LocalPlayer.Name]["Default_Skateboard"].SkateboardPlatform.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl)).CFrame end end else local l=Instance.new("IntValue")l.Parent=game.Players.LocalPlayer;l.Name="xd"while wait()do l.Value=l.Value+1;if game.Workspace.Checkpoints:FindFirstChild(tostring(l.Value))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Checkpoints:FindFirstChild(tostring(l.Value)).CFrame end end end elseif f=='model1'then local l=Instance.new("IntValue")l.Parent=game.Players.LocalPlayer;l.Name="xd"while wait()do l.Value=l.Value+1;if game.Workspace.Checkpoints:FindFirstChild(tostring(l.Value))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Checkpoints:FindFirstChild(tostring(l.Value)).Part.CFrame end end elseif f=='Checkpoints'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats[g].Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='Spawns'then local l=Instance.new("IntValue")l.Parent=game.Players.LocalPlayer;l.Name="xd"while wait()do l.Value=l.Value+1;if game.Workspace.Spawns:FindFirstChild(tostring(l.Value))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Spawns:FindFirstChild(tostring(l.Value)).Spawn.CFrame end end elseif f=="Checkpoints"then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Level.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).CFrame elseif c.Stage then while wait()do clvl=c.Stage.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).CFrame end end end end elseif game:GetService("Workspace").Checkpoints:FindFirstChild("Checkpoint "..tostring(clvl))then while wait()do clvl=c.Stage.Value+1;local m="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild("Checkpoint "..tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild("Checkpoint "..tostring(clvl)).CFrame end end elseif game:GetService("Workspace").Checkpoints then clvl=c.Level.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).MeshPart.CFrame end elseif f=="Checkpoint"then while wait()do clvl=c.Stage.Value+1;local m="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild(m)then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(m).CFrame elseif game:GetService("Players").LocalPlayer.LEVEL then while wait()do clvl=c.LEVEL.Value+1;local m="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild(m)then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(m).CFrame elseif game:GetService("Players").LocalPlayer.Stage then while wait()do clvl=game:GetService("Players").LocalPlayer.Stage.Value+1;local m="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild(m)then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(m).CFrame end end end end elseif f=='PlayerCheckPoints'then while wait()do clvl=b.leaderstats.Stage.Value+1;if game.Workspace.PlayerCheckPoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.PlayerCheckPoints:FindFirstChild(tostring(clvl)).CFrame end end elseif game.PlaceId==6939111033 then local n={[1]=9e9}game:GetService("ReplicatedStorage").StageChange:FireServer(unpack(n))elseif f=='Checkpoint'then while wait()do if game.Workspace:FindFirstChild('Checkpoint 1')then local f=0;xd=f+1;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(tostring('Checkpoint'..xd)).CFrame end end else if f==''then while wait()do clvl=b.leaderstats.Stage.Value+1;if game.Workspace:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='ModelCheckpoint'then while wait()do if game.Workspace:FindFirstChild('Checkpoint')then for i,j in pairs(game.Workspace:FindFirstChild('Checkpoint'):GetChildren())do if j:IsA("Part")and j.Name:match("Checkpoint")then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=j.CFrame end end end end else print("No obby was found!")end end end end
            end
        end
    end
)

local t = w:Toggle('Uhh Auto Farm ?', {flag = "AF3"})
spawn( 
    function()
        while wait() do
            if w.flags.AF3 then
                local a=game:GetService("Players")local b=a.LocalPlayer;local c=b.leaderstats;local d=b.Character;local e=d.HumanoidRootPart;local f=''local g=''local h=game:GetDescendants()for i,j in pairs(h)do if j:IsA("IntValue")and j.Name=="Stage"then g='Stage'elseif j:IsA("IntValue")and j.Name=="Stages"then g='Stages'elseif j:IsA("Folder")and j.Name=="checkpoint"then g='checkpoint'elseif j:IsA("Folder")and j.Name=="Spawns"then f='Spawns'elseif j:IsA("Model")and j.Name=="Checkpoint"then f='ModelCheckpoint'elseif j:IsA("Folder")and j.Name==g and j:IsA("MeshPart")and j.Name=="2"then f='meshObby'elseif j:IsA("MeshPart")and j.Name=="2"and j.Parent.Name=="Stages"then f='meshObby2'elseif j:IsA("Folder")and j.Name=="Checkpoints"and j:IsA("Part")and j.Name=="2"then f='Checkpoints'elseif j:IsA("Folder")and j.Name=="Checkpoints"then f='Checkpoints'elseif j:IsA("Part")and j.Name=="Checkpoint"then f='Checkpoint_Brick'elseif j:IsA("Folder")and j.Name=="PlayerCheckPoints"then f='PlayerCheckPoints'elseif j:IsA("Part")and j.Name=="Checkpoint 1"then f='Checkpointweird'elseif j:IsA("Folder")and j.Name=="ModelOfParts"then f='WeirdFolderName'elseif j:IsA("Part")and j.Name=="NextLevel3"then f='NextLevel'elseif j:IsA("Folder")and j.Name=="stages"then f='stages'elseif j:IsA("Part")and j.Name=="4"and j.Parent.Name=="Spawns"then f='xdnt2'elseif j:IsA("Part")and j.Name=="5"and j.Parent.Name=="Checkpoint"then f='CheckpointFolder'elseif j:IsA("Model")and j.Name=="1"and j.Parent.Name=="Checkpoints"then f='model1'end end;print(g)print(f)if f=='Stages'then while wait()do clvl=game.Players.LocalPlayer.leaderstats[lvl].Value+1;if game.Workspace.Stages:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Stages:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='NextLevel'then while wait()do clvl=b.leaderstats[lvl].Value+1;xdnt04='NextLevel'..clvl;if game.Workspace:FindFirstChild(tostring(xdnt04))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(tostring(xdnt04)).CFrame end end elseif f=='stages'then while wait()do clvl=b.leaderstats[lvl].Value+1;if game.Workspace.stages:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.stages:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='Checkpoint_Brick'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats[lvl].Value+1;local k='Checkpoint_Brick:'..clvl;if game:GetService("Workspace")['Obstacles_0']:FindFirstChild(tostring(k))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace")['Obstacles_0']:FindFirstChild(tostring(k)).CFrame end end elseif f=='bignil3'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Level.Value+1;if game:GetService("Workspace"):FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace"):FindFirstChild(tostring(clvl)).CFrame end end elseif f=='bignil'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace"):FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace"):FindFirstChild(tostring(clvl)).CFrame end end elseif f=='WeirdFolderName'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stages.Value+1;if game:GetService("Workspace").ModelOfParts:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").ModelOfParts:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='playerGay'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").PlayerCheckPoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").PlayerCheckPoints:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='checkpoint'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").Map.checkpoint:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.checkpoint:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='Checkpoint'then local l=Instance.new("IntValue")l.Parent=game.Players.LocalPlayer;l.Name="xd"while wait()do l.Value=l.Value+1;if game.Workspace.Checkpoint:FindFirstChild(tostring(l.Value))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Checkpoint:FindFirstChild(tostring(l.Value)).CFrame end end elseif f=='meshObby'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats[g].Value+1;if game.Workspace:FindFirstChild(tostring(lclvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(tostring(lclvl)).CFrame end end elseif f=='meshObby2'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats[g].Value+1;if game.Workspace[g]:FindFirstChild(tostring(lclvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace[g]:FindFirstChild(tostring(lclvl)).CFrame end end elseif f=='xdnt2'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats[lvl].Value+1;if game.Workspace.Spawns:FindFirstChild(tostring(lclvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Spawns:FindFirstChild(tostring(lclvl)).CFrame end end elseif f=='Checkpointweird'then local l=Instance.new("IntValue")l.Parent=game.Players.LocalPlayer;l.Name="xd"l.Value=0;while wait()do l.Value=l.Value+1;xdnt='Checkpoint '..l.Value;if game.Workspace:FindFirstChild(tostring(xdnt))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(tostring(xdnt)).CFrame end end elseif f=='Skateboard'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl))then game:GetService("Workspace")[game.Players.LocalPlayer.Name]["Default_Skateboard"].SkateboardPlatform.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl)).CFrame end end elseif f=='CheckpointFolder'then if game.PlaceId==6740271685 then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl))then game:GetService("Workspace")[game.Players.LocalPlayer.Name]["Default_Skateboard"].SkateboardPlatform.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl)).CFrame end end else local l=Instance.new("IntValue")l.Parent=game.Players.LocalPlayer;l.Name="xd"while wait()do l.Value=l.Value+1;if game.Workspace.Checkpoints:FindFirstChild(tostring(l.Value))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Checkpoints:FindFirstChild(tostring(l.Value)).CFrame end end end elseif f=='model1'then local l=Instance.new("IntValue")l.Parent=game.Players.LocalPlayer;l.Name="xd"while wait()do l.Value=l.Value+1;if game.Workspace.Checkpoints:FindFirstChild(tostring(l.Value))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Checkpoints:FindFirstChild(tostring(l.Value)).Part.CFrame end end elseif f=='Checkpoints'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats[g].Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='Spawns'then local l=Instance.new("IntValue")l.Parent=game.Players.LocalPlayer;l.Name="xd"while wait()do l.Value=l.Value+1;if game.Workspace.Spawns:FindFirstChild(tostring(l.Value))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Spawns:FindFirstChild(tostring(l.Value)).Spawn.CFrame end end elseif f=="Checkpoints"then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Level.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).CFrame elseif c.Stage then while wait()do clvl=c.Stage.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).CFrame end end end end elseif game:GetService("Workspace").Checkpoints:FindFirstChild("Checkpoint "..tostring(clvl))then while wait()do clvl=c.Stage.Value+1;local m="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild("Checkpoint "..tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild("Checkpoint "..tostring(clvl)).CFrame end end elseif game:GetService("Workspace").Checkpoints then clvl=c.Level.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).MeshPart.CFrame end elseif f=="Checkpoint"then while wait()do clvl=c.Stage.Value+1;local m="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild(m)then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(m).CFrame elseif game:GetService("Players").LocalPlayer.LEVEL then while wait()do clvl=c.LEVEL.Value+1;local m="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild(m)then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(m).CFrame elseif game:GetService("Players").LocalPlayer.Stage then while wait()do clvl=game:GetService("Players").LocalPlayer.Stage.Value+1;local m="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild(m)then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(m).CFrame end end end end elseif f=='PlayerCheckPoints'then while wait()do clvl=b.leaderstats.Stage.Value+1;if game.Workspace.PlayerCheckPoints:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.PlayerCheckPoints:FindFirstChild(tostring(clvl)).CFrame end end elseif game.PlaceId==6939111033 then local n={[1]=9e9}game:GetService("ReplicatedStorage").StageChange:FireServer(unpack(n))elseif f=='Checkpoint'then while wait()do if game.Workspace:FindFirstChild('Checkpoint 1')then local f=0;xd=f+1;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(tostring('Checkpoint'..xd)).CFrame end end else if f==''then while wait()do clvl=b.leaderstats.Stage.Value+1;if game.Workspace:FindFirstChild(tostring(clvl))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace:FindFirstChild(tostring(clvl)).CFrame end end elseif f=='ModelCheckpoint'then while wait()do if game.Workspace:FindFirstChild('Checkpoint')then for i,j in pairs(game.Workspace:FindFirstChild('Checkpoint'):GetChildren())do if j:IsA("Part")and j.Name:match("Checkpoint")then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=j.CFrame end end end end else print("No obby was found!")end end end end
            end
        end
    end
)

local w = library:CreateWindow('Other')
w:Section('Misc')
local b = w:Button("Disable AFK", function()
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end
end)

w:Section('Just in Case')
local b = w:Button("Noclip", function()
local StealthMode = true -- If game has an anticheat that checks the logs

local Indicator

if not StealthMode then
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    print("NOCLIP: Press Q to Activate")
    Indicator = Instance.new("TextLabel", ScreenGui)
    Indicator.AnchorPoint = Vector2.new(0, 1)
    Indicator.Position = UDim2.new(0, 0, 1, 0)
    Indicator.Size = UDim2.new(0, 200, 0, 50)
    Indicator.BackgroundTransparency = 1
    Indicator.TextScaled = true
    Indicator.TextStrokeTransparency = 0
    Indicator.TextColor3 = Color3.new(0, 0, 0)
    Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
    Indicator.Text = "Noclip: Enabled"
end

local noclip = true
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local mouse = player:GetMouse()

mouse.KeyDown:Connect(function(key)
    if key == "q" then
        noclip = not noclip

        if not StealthMode then
            Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
        end
    end
end)

while true do
    player = game.Players.LocalPlayer
    character = player.Character

    if noclip then
        for _, v in pairs(character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
    end

    game:GetService("RunService").Stepped:wait()
end
end)

w:Section('Press Q to Toggle Noclip')

local b = w:Button("Fly", function()
local speed = 50 -- This is the fly speed. Change it to whatever you like. The variable can be changed while running
 
local c
local h
local bv
local bav
local cam
local flying
local p = game.Players.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}
 
local startFly = function () -- Call this function to begin flying 
	if not p.Character or not p.Character.Head or flying then return end
	c = p.Character
	h = c.Humanoid
	h.PlatformStand = true
	cam = workspace:WaitForChild('Camera')
	bv = Instance.new("BodyVelocity")
	bav = Instance.new("BodyAngularVelocity")
	bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
	bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
	bv.Parent = c.Head
	bav.Parent = c.Head
	flying = true
	h.Died:connect(function() flying = false end)
end    
end)

local b = w:Button("Stop Fly", function()
local endFly = function () -- Call this function to stop flying
	if not p.Character or not flying then return end
	h.PlatformStand = false
	bv:Destroy()
	bav:Destroy()
	flying = false
end
end)

local b = w:Button("TP", function()
_G.Key = 't' -- Put ur keyboard key here
local PM = game.Players.LocalPlayer:GetMouse()
PM.KeyDown:connect(function(Keybind)
if Keybind == _G.Key then
if PM.Target then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(PM.Hit.x, PM.Hit.y + 5, PM.Hit.z)
end
end
end)
end)

w:Section('Press T to Use')

local Box = w:Box('WalkSpeed', { 
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter) 
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(new) --Sets the walkspeed to the new value you've entered
end)

w:Section('Press Enter to activate')

local Box = w:Box('Jump', { 
   flag = "jp";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter) 
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(new) --Sets the walkspeed to the new value you've entered
end)

local b = w:Button("Rejoin the game", function()
local tpservice= game:GetService("TeleportService")
local plr = game.Players.LocalPlayer

tpservice:Teleport(game.PlaceId, plr)
end)

w:Section('Right Ctrl to hide')
w:Section('Made by Me (Mr. Hakame)')