local a=''local b=''local ldr=ldr;local c=game:GetService("Players").LocalPlayer;local d=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;for e,f in pairs(game:GetDescendants())do if f:IsA("IntValue")and f.Name:match("LEVEL")then b='LEVEL'end end;for e,f in pairs(game:GetDescendants())do if f:IsA("IntValue")and f.Name:match("Stage")then b='Stage'end end;for e,f in pairs(game:GetDescendants())do if f:IsA("IntValue")and f.Name:match("Stages")then b='Stages'end end;for e,f in pairs(game:GetDescendants())do if f:IsA("IntValue")and f.Name:match("CP")then b='CP'end end;for e,f in pairs(game:GetDescendants())do if f:IsA("StringValue")and f.Name:match("Stage")then b='Stage'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Folder")and f.Name:match("Stages")and f.Parent==game.Workspace then a='Stages'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Folder")and f.Name:match("checkpoint")then a='checkpoint'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Folder")and f.Name:match("Spawns")then a='Spawns'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Model")and f.Name:match("Checkpoint")then a='ModelCheckpoint'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("MeshPart")and f.Name=="2"then a='meshObby'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("MeshPart")and f.Name=="2"and f.Parent.Parent.Name:match("Stages")then a='meshObby2'end end;for e,f in pairs(game.Workspace:GetChildren())do if f.Name=="7"and f:IsA("Part")and f.Parent.Name=="Workspace"then a='bignil3'end end;for e,f in pairs(game.Workspace:GetChildren())do if f.Name=="7"and f:IsA("Part")and f.Parent.Name=="Checkpoints"then a='bignil'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Folder")and f.Name:match("Checkpoints")and f:IsA("Part")and f.Name=="2"then a='Checkpoints'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Part")and f.Name:match("Checkpoint")then a='Checkpoint_Brick'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Folder")and f.Name:match("PlayerCheckPoints")then a='PlayerCheckPoints'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Part")and f.Name:match("Checkpoint 1")then a='Checkpointweird'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Folder")and f.Name=="ModelOfParts"then a='WeirdFolderName'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Part")and f.Name=="NextLevel3"then a='NextLevel'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Folder")and f.Name:match("stages")then a='stages'end end;for e,f in pairs(game.Workspace:GetDescendants())do if game:GetService("Workspace")[game.Players.LocalPlayer.Name]["Default_Skateboard"].SkateboardPlatform then a='Skateboard'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Part")and f.Name=="4"and f.Parent.Name:match("Spawns")then a='xdnt2'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Part")and f.Name=="5"and f.Parent.Name=="Checkpoint"then a='CheckpointFolder'end end;for e,f in pairs(game.Workspace:GetDescendants())do if f:IsA("Model")and f.Name:match("1")and f.Parent.Name:match("Checkpoints")then a='model1'end end;print(a)print(b)print("")if a=='Stages'then while wait()do clvl=game.Players.LocalPlayer.leaderstats[b].Value+1;if game.Workspace.Stages:FindFirstChild(tostring(clvl))then d.CFrame=game.Workspace.Stages:FindFirstChild(tostring(clvl)).CFrame end end elseif a=='NextLevel'then while wait()do clvl=c.leaderstats[b].Value+1;xdnt04='NextLevel'..clvl;if game.Workspace:FindFirstChild(tostring(xdnt04))then d.CFrame=game.Workspace:FindFirstChild(tostring(xdnt04)).CFrame end end elseif a=='stages'then while wait()do clvl=c.leaderstats[b].Value+1;if game.Workspace.stages:FindFirstChild(tostring(clvl))then d.CFrame=game.Workspace.stages:FindFirstChild(tostring(clvl)).CFrame end end elseif a=='Checkpoint_Brick'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats[b].Value+1;local g='Checkpoint_Brick:'..clvl;if game:GetService("Workspace")['Obstacles_0']:FindFirstChild(tostring(g))then d.CFrame=game:GetService("Workspace")['Obstacles_0']:FindFirstChild(tostring(g)).CFrame end end elseif a=='bignil3'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Level.Value+1;if game:GetService("Workspace"):FindFirstChild(tostring(clvl))then d.CFrame=game:GetService("Workspace"):FindFirstChild(tostring(clvl)).CFrame end end elseif a=='bignil'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace"):FindFirstChild(tostring(clvl))then d.CFrame=game:GetService("Workspace"):FindFirstChild(tostring(clvl)).CFrame end end elseif a=='WeirdFolderName'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stages.Value+1;if game:GetService("Workspace").ModelOfParts:FindFirstChild(tostring(clvl))then d.CFrame=game:GetService("Workspace").ModelOfParts:FindFirstChild(tostring(clvl)).CFrame end end elseif a=='playerGay'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").PlayerCheckPoints:FindFirstChild(tostring(clvl))then d.CFrame=game:GetService("Workspace").PlayerCheckPoints:FindFirstChild(tostring(clvl)).CFrame end end elseif a=='checkpoint'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").Map.checkpoint:FindFirstChild(tostring(clvl))then d.CFrame=game:GetService("Workspace").Map.checkpoint:FindFirstChild(tostring(clvl)).CFrame end end elseif a=='Checkpoint'then local h=Instance.new("IntValue")h.Parent=game.Players.LocalPlayer;h.Name="xd"while wait()do h.Value=h.Value+1;if game.Workspace.Checkpoint:FindFirstChild(tostring(h.Value))then d.CFrame=game.Workspace.Checkpoint:FindFirstChild(tostring(h.Value)).CFrame end end elseif a=='meshObby'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game.Workspace:FindFirstChild(tostring(lclvl))then d.CFrame=game.Workspace:FindFirstChild(tostring(lclvl)).CFrame end end elseif a=='meshObby2'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game.Workspace.Stages:FindFirstChild(tostring(lclvl))then d.CFrame=game.Workspace.Stages:FindFirstChild(tostring(lclvl)).MeshPart.CFrame end end elseif a=='xdnt2'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats[b].Value+1;if game.Workspace.Spawns:FindFirstChild(tostring(lclvl))then d.CFrame=game.Workspace.Spawns:FindFirstChild(tostring(lclvl)).CFrame end end elseif a=='Checkpointweird'then local h=Instance.new("IntValue")h.Parent=game.Players.LocalPlayer;h.Name="xd"h.Value=0;while wait()do h.Value=h.Value+1;xdnt='Checkpoint '..h.Value;if game.Workspace:FindFirstChild(tostring(xdnt))then d.CFrame=game.Workspace:FindFirstChild(tostring(xdnt)).CFrame end end elseif a=='Skateboard'then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl))then game:GetService("Workspace")[game.Players.LocalPlayer.Name]["Default_Skateboard"].SkateboardPlatform.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl)).CFrame end end elseif a=='CheckpointFolder'then if game.PlaceId==6740271685 then while wait()do lclvl=game:GetService("Players").LocalPlayer.leaderstats.Stage.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl))then game:GetService("Workspace")[game.Players.LocalPlayer.Name]["Default_Skateboard"].SkateboardPlatform.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(lclvl)).CFrame end end else local h=Instance.new("IntValue")h.Parent=game.Players.LocalPlayer;h.Name="xd"while wait()do h.Value=h.Value+1;if game.Workspace.Checkpoints:FindFirstChild(tostring(h.Value))then d.CFrame=game.Workspace.Checkpoints:FindFirstChild(tostring(h.Value)).CFrame end end end elseif a=='model1'then local h=Instance.new("IntValue")h.Parent=game.Players.LocalPlayer;h.Name="xd"while wait()do h.Value=h.Value+1;if game.Workspace.Checkpoints:FindFirstChild(tostring(h.Value))then d.CFrame=game.Workspace.Checkpoints:FindFirstChild(tostring(h.Value)).Part.CFrame end end elseif a=='Checkpoints'then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats[b].Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then d.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).CFrame end end elseif a=='Spawns'then local h=Instance.new("IntValue")h.Parent=game.Players.LocalPlayer;h.Name="xd"while wait()do h.Value=h.Value+1;if game.Workspace.Spawns:FindFirstChild(tostring(h.Value))then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Workspace.Spawns:FindFirstChild(tostring(h.Value)).Spawn.CFrame end end elseif a=="Checkpoints"then while wait()do clvl=game:GetService("Players").LocalPlayer.leaderstats.Level.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then d.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).CFrame elseif ldr.Stage then while wait()do clvl=ldr.Stage.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then d.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).CFrame end end end end elseif game:GetService("Workspace").Checkpoints:FindFirstChild("Checkpoint "..tostring(clvl))then while wait()do clvl=ldr.Stage.Value+1;local i="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild("Checkpoint "..tostring(clvl))then d.CFrame=game.Workspace:FindFirstChild("Checkpoint "..tostring(clvl)).CFrame end end elseif game:GetService("Workspace").Checkpoints then clvl=ldr.Level.Value+1;if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl))then d.CFrame=game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(clvl)).MeshPart.CFrame end elseif a=="Checkpoint"then while wait()do clvl=ldr.Stage.Value+1;local i="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild(i)then d.CFrame=game.Workspace:FindFirstChild(i).CFrame elseif game:GetService("Players").LocalPlayer.LEVEL then while wait()do clvl=ldr.LEVEL.Value+1;local i="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild(i)then d.CFrame=game.Workspace:FindFirstChild(i).CFrame elseif game:GetService("Players").LocalPlayer.Stage then while wait()do clvl=game:GetService("Players").LocalPlayer.Stage.Value+1;local i="Checkpoint "..tostring(clvl)if game.Workspace:FindFirstChild(i)then d.CFrame=game.Workspace:FindFirstChild(i).CFrame end end end end elseif a=='PlayerCheckPoints'then while wait()do clvl=c.leaderstats.Stage.Value+1;if game.Workspace.PlayerCheckPoints:FindFirstChild(tostring(clvl))then d.CFrame=game.Workspace.PlayerCheckPoints:FindFirstChild(tostring(clvl)).CFrame end end elseif game.PlaceId==6939111033 then local j={[1]=9e9}game:GetService("ReplicatedStorage").StageChange:FireServer(unpack(j))elseif a=='Checkpoint'then while wait()do if game.Workspace:FindFirstChild('Checkpoint 1')then local a=0;xd=a+1;d.CFrame=game.Workspace:FindFirstChild(tostring('Checkpoint'..xd)).CFrame end end else if a==''then while wait()do clvl=c.leaderstats.Stage.Value+1;if game.Workspace:FindFirstChild(tostring(clvl))then d.CFrame=game.Workspace:FindFirstChild(tostring(clvl)).CFrame end end elseif a=='ModelCheckpoint'then while wait()do if game.Workspace:FindFirstChild('Checkpoint')then for e,f in pairs(game.Workspace:FindFirstChild('Checkpoint'):GetChildren())do if f:IsA("Part")and f.Name:match("Checkpoint")then d.CFrame=f.CFrame end end end end end end end end