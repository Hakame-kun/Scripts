if game.PlaceId == 5977280685 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Ninja Legends 2 | DuckSploit", colors)
	local Main = Window:NewTab("Main")
	local Autofarm = Main:NewSection("Main")
	local Player = Window:NewTab("Player")
	local Movements = Player:NewSection("Movement Adjustments")
	Autofarm:NewToggle("Auto Rank Up","Automatically ranks you up", function(v)
		getgenv().autorank = v
			while true do
				if not getgenv().autorank then return end
	local args = {
		[1] = "buyAllItems",
		[2] = {
			["whichPlanet"] = "Planet Chaos",
			["whichItems"] = "Evolve"
		}
	}
	
	game:GetService("Players").LocalPlayer.saberEvent:FireServer(unpack(args))
				
				wait()
			end
		end)
				
	Autofarm:NewToggle("Auto Swing", "Automatically Swings", function(v)
			getgenv().autoswing = v
				while true do
					if not getgenv().autoswing then return end
	local args = {
		[1] = "swingBlade"
	}
	
	game:GetService("Players").LocalPlayer.saberEvent:FireServer(unpack(args))
					
					
					wait()
				end
			end)
				
	Autofarm:NewToggle("Auto Sell", "Automatically sells", function(v2)
		getgenv().autosell = v2
			while true do
				if not getgenv().autosell then return end
				wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-89.697731, 136.457077, 131.844299, 0.17377241, 3.80569212e-08, -0.984785855, 3.33837313e-09, 1, 3.92339494e-08, 0.984785855, -1.0105361e-08, 0.17377241)			
				
				wait()
		end
	end)
	Autofarm:NewButton("Unlock all islands", "unlocks all islands", function()
		
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.04799879, 1467.22791, 82.1009369, 0.999715924, -7.8630535e-08, -0.0238348451, 7.98484407e-08, 1, 5.01459887e-08, 0.0238348451, -5.20349168e-08, 0.999715924)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.74247599, 3057.32715, 82.0479584, 0.999918044, -1.00686179e-08, -0.0128009571, 1.05199076e-08, 1, 3.51870852e-08, 0.0128009571, -3.53188661e-08, 0.999918044)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.673996627, 4681.32666, 79.7370377, 0.99990648, 1.63782659e-08, -0.0136738084, -1.72038224e-08, 1, -6.02573635e-08, 0.0136738084, 6.04869754e-08, 0.99990648)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3.75641632, 6311.42676, 74.2911072, 0.442619205, 1.06509568e-09, 0.896709681, -2.79701204e-08, 1, 1.26183721e-08, -0.896709681, -3.06662109e-08, 0.442619205)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.348679245, 8631.8252, 77.3339462, 0.999700785, 2.02226191e-09, -0.0244617518, -2.41736231e-09, 1, -1.61221951e-08, 0.0244617518, 1.61765037e-08, 0.999700785)
	end)	
	Autofarm:NewToggle("Auto Buy Swords", "Automatically buys swords", function(v4)
		getgenv().autobuyswrd = v4
				while true do
					if not getgenv().autobuyswrd then return end
					wait(0.2)
	local args = {
		[1] = "buyAllItems",
		[2] = {
			["whichItems"] = "Swords",
			["whichPlanet"] = "Planet Chaos"
		}
	}
	
	game:GetService("Players").LocalPlayer.saberEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
	Autofarm:NewToggle("Auto Buy Crystals", "Automatically buys crystals", function(v5)
		getgenv().autobuycry = v5
				while true do
					if not getgenv().autobuycry then return end
					wait(0.2)
	local args = {
		[1] = "buyAllItems",
		[2] = {
			["whichItems"] = "Crystals",
			["whichPlanet"] = "Planet Chaos"
		}
	}
	
	game:GetService("Players").LocalPlayer.saberEvent:FireServer(unpack(args))
	
	
			wait()
		end
	end)
	Movements:NewSlider("Walkspeed", "Adjust your players walkspeed", 500, 16, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	Movements:NewSlider("JumpPower", "Adjust your players jump power", 500, 50, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end)
	
	elseif game.PlaceId == 5490351219 then
		local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Clicker Madness | DuckSploit", colors)
	local Main = Window:NewTab("Main")
	local Autofarm = Main:NewSection("Main")
	
	Autofarm:NewToggle("Auto Click", "Automatically Clicks ", function(v)
		getgenv().autoclick = v
			while true do
				if not getgenv().autoclick then return end
				wait(0.10)
	local args = {
		[1] = 1.6
	}
	
	game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(unpack(args))
					
					wait()
				end
			end)
			Autofarm:NewButton("Unlock Most Gamepasses", "Gives you some gamepasses", function(v)
	game.Players.LocalPlayer.Gamepasses.AutoRebirth.Value = true
	wait(0.2)
	game.Players.LocalPlayer.Gamepasses.VIP.Value = true
	wait(0.2)
	game.Players.LocalPlayer.Gamepasses.TripleHatch.Value = true
	
			wait()
	
		end)
		PlayerSection:NewSlider("Walkspeed", "Adjust your players walkspeed", 500, 16, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	PlayerSection:NewSlider("JumpPower", "Adjust your players jump power", 500, 50, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end)
	
	elseif game.PlaceId == 5736409216 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Mall Tycoon | DuckSploit", "Midnight")
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")
	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Player")
	local Extra = Main:NewSection("Extra")
	
	MainSection:NewToggle("Auto Collect", "Automatically collects money", function(v)
		getgenv().autocollect = v
				while true do
					if not getgenv().autocollect then return end
					wait(0.010)
	local args = {
		[1] = "RequestCollectCash"
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
					
			wait()
		end
	end)
		PlayerSection:NewSlider("Walkspeed", "Adjust your players walkspeed", 500, 16, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	PlayerSection:NewSlider("JumpPower", "Adjust your players jump power", 500, 50, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end)
	Extra:NewButton("Anti-AFK", "Stops you from being kicked from the game for idle for 20 minutes", function()
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
	   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	   wait(1)
	   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	end)
	MainSection:NewToggle("Auto Buy", "Automatically buys the next store and buttons", function(state)
		getgenv().autobuy = v
			while true do
				if not getgenv().autobuy then return end
	local args = {
		[1] = "RequestPurchaseProduct",
		[2] = "Speed"
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
	MainSection:NewToggle("Auto Rebirth","Automatically rebirths for you", function(v)
		getgenv().autoreb = v
			while true do 
				if not getgenv().autoreb then return end
	local args = {
		[1] = "RequestRebirth"
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
					
	elseif game.PlaceId == 3956818381 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Ninja Legends | DuckSploit", colors)
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")
	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Player")
	local Elements = Main:NewSection("Elements")
	local Extra = Main:NewSection("Extra")
	
		PlayerSection:NewSlider("Walkspeed", "Adjust your players walkspeed", 500, 16, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	PlayerSection:NewSlider("JumpPower", "Adjust your players jump power", 500, 50, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end)
	MainSection:NewToggle("Auto Swing", "Automatically swings your blade", function(v)
		getgenv().autoblade = v
			while true do
				if not getgenv().autoblade then return end
	local args = {
		[1] = "swingKatana"
	}
	
	game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
	
				wait()
		end
	end)
	MainSection:NewToggle("Auto Sell", "Automatically sells", function(v)
		getgenv().autosell = v
			while true do
				if not getgenv().autosell then return end
				wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.5956879, 23.6267471, -56.474556, -0.695186496, 1.42323032e-07, 0.718829453, 1.2267671e-07, 1, -7.93510111e-08, -0.718829453, 3.30198837e-08, -0.69518649)
			
			wait()
		end
	end)
	Extra:NewButton("Unlock all islands", "Unlocks all the islands", function()	
		
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.2420082, 849.832031, -151.813995, -1, 0, 0, 0, 1, 0, 0, 0, -1)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(216.321625, 2095.47778, 256.276184, -1, 0, 0, 0, 1, 0, 0, 0, -1)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.796295, 4124.17773, 45.8520508, 0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, 0.499959469)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.522156, 5847.19336, 123.56015, 0.573598742, -0, -0.81913656, 0, 1, -0, 0.81913656, 0, 0.573598742)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.131607, 9372.39746, 90.3484344, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.131607, 13767.251, 90.3484344, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.131607, 17773.5469, 90.3484344, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.131607, 24157.2402, 90.3484344, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 28364.6953, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 33315.3867, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 39425.9766, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 46118.9609, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 52716.168, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 59703.0859, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 66777.5781, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 70379.5703, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 74551.2656, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 83307.3984, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 87159.4844, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
	end)
	Extra:NewButton("Anti-AFK", "Stops you from being kicked from the game for idle for 20 minutes", function()
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
	   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	   wait(1)
	   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	end)
	MainSection:NewToggle("Auto Buy Swords", "Automatically buys swords", function(v)
		getgenv().autobuyswrd = v
			while true do
				if not getgenv().autobuyswrd then return end
				wait(0.2)
	local args = {
		[1] = "buyAllSwords",
		[2] = "Inner Peace Island"
	}
	
	game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
			wait()
		 end
	 end)
	 MainSection:NewToggle("Auto Buy Belts","Automatically buys belts", function(v)
		getgenv().autobuybelt = v
			while true do
				if not getgenv().autobuybelt then return end
				wait(0.2)
	local args = {
		[1] = "buyAllBelts",
		[2] = "Inner Peace Island"
	}
	
	game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
			wait()
		end
	end)
	MainSection:NewToggle("Auto Max Evolve Pets","Automatically evolves your pets", function(v)
		getgenv().autoevo = v
			while true do
				if not getgenv().autoevo then return end
	local args = {
		[1] = "autoEvolvePets"
	}
	
	game:GetService("ReplicatedStorage").rEvents.autoEvolveRemote:InvokeServer(unpack(args))
				
				wait()
			end
		end)
		MainSection:NewToggle("Auto Buy Ranks","Automatically buys ranks", function(v)
			getgenv().autorank = v
				while true do
					if not getgenv().autorank then return end
	local args = {
		[1] = "buyRank",
		[2] = "Shadow Storm Sensei"
	}
	
	game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
				
				wait()
			end
		end)
		Elements:NewButton("Give Inferno Element", "Gives you the inferno element", function(v)
	local args = {
		[1] = "Inferno"
	}
	
	game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer(unpack(args))
	
	end)	
			Elements:NewButton("Give Lightning Element", "Gives you the lightning element", function(v)
	local args = {
		[1] = "Lightning"
	}
	
	game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer(unpack(args))
	
	end)	
			Elements:NewButton("Give Frost Element", "Gives you the frost element", function(v)
	local args = {
		[1] = "Frost"
	}
	
	game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer(unpack(args))
	end)	
			Elements:NewButton("Give Shadow Charge Element", "Gives you the shadow charge element", function(v)
	local args = {
		[1] = "Shadow Charge"
	}
	
	game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer(unpack(args))
	
	end)	
			Elements:NewButton("Give Masterful Wrath Element", "Gives you the masterful wrath element", function(v)			
	local args = {
		[1] = "Masterful Wrath"
	}
	
	game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer(unpack(args))
	
	end)	
		Elements:NewButton("Give Electral Chaos Element", "Gives you the electral chaos element", function(v)
	local args = {
		[1] = "Electral Chaos"
	}
	
	game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer(unpack(args))
	
	end)
			Elements:NewButton("Give ShadowFire Element", "Gives you the shadow fire element", function(v)
	local args = {
		[1] = "Shadowfire"
	}
	
	game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer(unpack(args))
	
	end)
			Elements:NewButton("Give Eternity Storm Element", "Gives you the eternity storm element", function(v)
	
	local args = {
		[1] = "Eternity Storm"
	}
	
	game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer(unpack(args))
	
	end)																																																																																					
	elseif game.PlaceId == 2202352383 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Super Power Training Simulator | DuckSploit", colors)
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")
	local ExtraTab = Window:NewTab("Extra")
	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Player")
	local Extra = Main:NewSection("Fist Zone Multipliers")
	local ExtraSection = ExtraTab:NewSection("Extra")
	local Extra2 = Main:NewSection("Movement Speed Multipliers")
	MainSection:NewToggle("Auto Fist", "Automatically trains fist strength", function(v)
		getgenv().autofist = v
			while true do
				if not getgenv().autofist then return end
				wait(0.5)
	local args = {
		[1] = {
			[1] = "+FS1"
		}
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
	MainSection:NewToggle("Auto Body Toughness", "Automatically trains body toughness", function(v)
		getgenv().autostrng = v
			while true do
				if not getgenv().autostrng then return end
				wait(0.5)
	local args = {
		[1] = {
			[1] = "+BT1"
		}
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)	
	MainSection:NewToggle("Auto Movement Speed", "Automatically trains mmovement speed", function(v)
		getgenv().autostrng = v
			while true do
				if not getgenv().autostrng then return end
				wait(0.5)
	local args = {
		[1] = {
			[1] = "+MS1"
		}
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
	MainSection:NewToggle("Auto Jump Force", "Automatically trains jump force", function(v)
		getgenv().autostrng = v
			while true do
				if not getgenv().autostrng then return end
				wait(0.5)
	local args = {
		[1] = {
			[1] = "+JF1"
		}
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
	MainSection:NewToggle("Auto Psychic Power", "Automatically trains psychic power", function(v)
		getgenv().autostrng = v
			while true do
				if not getgenv().autostrng then return end
				wait(0.5)
	local args = {
		[1] = {
			[1] = "+PP1"
		}
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
		PlayerSection:NewSlider("Walkspeed", "Adjust your players walkspeed", 500, 16, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	PlayerSection:NewSlider("JumpPower", "Adjust your players jump power", 500, 50, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end)
	Extra:NewToggle("100 Fist Strength Required", "Automatically trains fist at a zone", function(v)
		getgenv().autostrng = v
			while true do
				if not getgenv().autostrng then return end
				wait(0.5)
	local args = {
		[1] = {
			[1] = "+FS2"
		}
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
	Extra2:NewToggle("100LB Weight (Equip It First)", "Automatically trains using 100LB weight", function(v)
		getgenv().autows = v
			while true do
				if not getgenv().autows then return end
				wait(0.5)
	local args = {
		[1] = {
			[1] = "+MS2"
		}
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
	
			wait()
		end
	end)
	ExtraSection:NewButton("Anti-AFK", "Prevents you from being kicked for idle fo 20 minutes", function()
		local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
	   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	   wait(1)
	   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	end)
	elseif game.PlaceId == 4919350725 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Duckie Simulator | DuckSploit", colors)
	local Main = Window:NewTab("Main")
	local MainSection = Main:NewSection("Main")
	local ExtraTab = Window:NewTab("Extra")
	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Player")
	local ExtraSection = ExtraTab:NewSection("Extra")
	local Tps = Main:NewSection("Zone Teleports")
		PlayerSection:NewSlider("Walkspeed", "Adjust your players walkspeed", 500, 16, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	PlayerSection:NewSlider("JumpPower", "Adjust your players jump power", 500, 50, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end)
	ExtraSection:NewButton("Anti-AFK", "Prevents you from being kicked for idle fo 20 minutes", function()
		local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
	   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	   wait(1)
	   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	end)
	MainSection:NewToggle("Auto Duck", "Automatically swings your duck", function(v)
		getgenv().autoswing = v
			while true do
				if not getgenv().autoswing then return end
				wait(0.2)
	game:GetService("ReplicatedStorage").Events:FindFirstChild("Duck Events").Swing:FireServer()
			
			wait()
		end
	end)
	MainSection:NewToggle("Auto Refill", "Automatically refils", function(v)
		getgenv().autorefill = v
			while true do
				if not getgenv().autorefill then return end
				wait(0.4)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19.6948929, 20.7302265, -50.4104881, 0.269913942, 2.96753342e-08, 0.962884426, -1.0308427e-08, 1, -2.79295662e-08, -0.962884426, -2.38724418e-09, 0.269913942)
				wait()
			end
		end)
	Tps:NewButton("Lava Zone Teleport","Teleports you to the lava zone", function(v)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.3137741, 3.89909649, 324.483551, -0.659799576, 6.51340031e-08, -0.751441598, 2.54890811e-08, 1, 6.42981703e-08, 0.751441598, 2.32703492e-08, -0.659799576)
	end)
	Tps:NewButton("Desert Zone Teleport","Teleports you to the desert zone", function(v)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-440.637451, 3.89909649, 325.868744, -0.638041139, 1.52312218e-09, -0.770002306, 1.00991011e-08, 1, -6.39026609e-09, 0.770002306, -1.18535839e-08, -0.638041139)
	end)
	Tps:NewButton("White and Blue Zone Teleport","Teleports you to a white and blue looking zone", function(v)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-324.299408, 3.89909649, 59.7958183, 0.651029468, -3.46717832e-09, 0.759052575, 1.65958358e-09, 1, 3.1443681e-09, -0.759052575, -7.87364896e-10, 0.651029468)	
	end)
	Tps:NewButton("Underwater Zone Teleport","Teleports you to the underwater zone", function(v)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-440.207031, 3.89909649, -431.163513, -0.642909348, -6.53655547e-08, -0.765942454, 1.4218462e-08, 1, -9.72746506e-08, 0.765942454, -7.34292911e-08, -0.642909348)
	end)
	Tps:NewButton("Lego Zone Teleport","Teleports you to the lego zone", function(v)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(59.9616241, 3.89909649, -324.196747, 0.623112619, 2.99977003e-08, 0.782132208, 2.72026508e-08, 0.99999994, -6.00256627e-08, -0.782132208, 5.86788182e-08, 0.623112619)
	end)
	Tps:NewButton("Chocolate Zone Teleport","Teleports you to the chocolate zone", function(v)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(326.968445, 3.89909649, -430.723328, -0.648631036, 1.43941365e-08, -0.761102855, -3.28779457e-08, 1, 4.69316319e-08, 0.761102855, 5.54648096e-08, -0.648631036)
	end)
	Tps:NewButton("Sweets Zone Teleport","Teleports you to the sweets zone", function(v)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(443.943695, 3.89909649, 59.1844559, 0.788911581, 8.37466771e-08, 0.61450696, -2.91002458e-08, 1, -9.89234366e-08, -0.61450696, 6.01595289e-08, 0.788911581)
	end)
	Tps:NewButton("Space Zone Teleport","Teleports you to the space zone", function(v)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(326.801483, 3.89909649, 325.454834, -0.724270344, -2.76560463e-08, -0.689516127, 2.03058583e-08, 1, -6.14387048e-08, 0.689516127, -5.84994488e-08, -0.724270344)
	end)
	MainSection:NewToggle("Auto Buy ducks","Automatically buys ducks", function(v)	
		getgenv().autobuyduck = v
			while true do
				if not getgenv().autobuyduck then return end
				wait(0.2)
	game:GetService("ReplicatedStorage").Events:FindFirstChild("Shop Events").Ducks:FindFirstChild("Buy All"):InvokeServer()
			wait()
		end
	end)
	MainSection:NewToggle("Auto Buy Energy", "Automatically buys energy", function(v)
		getgenv().autobuyener = v
			while true do 
				if not getgenv().autobuyener then return end
				wait(0.2)
	game:GetService("ReplicatedStorage").Events:FindFirstChild("Shop Events").Energy:FindFirstChild("Buy All"):InvokeServer()
	
			wait()
		end
	end)
	elseif game.PlaceId == 2619187362 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Super Power Fighting Simulator | DuckSploit", colors)
	local Main = Window:NewTab("Main")
	local MainSections = Main:NewSection("Auto Stats")
	local ExtraTab = Window:NewTab("Extra")
	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Player")
	local ExtraSection = ExtraTab:NewSection("Extra")
	local MainSection = Main:NewSection("Auto Quest Features")
	local Stats = Main:NewSection("Stat Upgrades")
	MainSections:NewToggle("Auto Train Endurance","Automatically trains endurance", function(v)	
		getgenv().autoall = v
			while true do
				if not getgenv().autoall then return end
	local args = {
		[1] = "Endurance"
	}
	
	game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
	wait()
	end
	end)
	MainSections:NewToggle("Auto Train Psychic","Automatically trains psychic", function(v)	
		getgenv().autoall = v
			while true do
				if not getgenv().autoall then return end
	local args = {
		[1] = "Psychic"
	}
	
	game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
	wait()
	end
	end)
	MainSections:NewToggle("Auto Train Strength","Automatically trains strength", function(v)	
		getgenv().autoall = v
			while true do
				if not getgenv().autoall then return end
	local args = {
		[1] = "Strength"
	}
	
	game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
	wait()
	end
	end)
	MainSections:NewToggle("Auto Train All","Automatically trains every skill", function(v)	
		getgenv().autoall = v
			while true do
				if not getgenv().autoall then return end
	local args = {
		[1] = "Strength"
	}
	
	game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
	
	local args = {
		[1] = "Endurance"
	}
	
	game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
	
	local args = {
		[1] = "Psychic"
	}
	
	game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))
	
				wait()
			end
		end)
	MainSection:NewToggle("Auto Quest","Automatically accepts quests", function(v)
		getgenv().autoquest = v
			while true do
				if not getgenv().autoquest then return end
	local args = {
		[1] = "GamesReborn"
	}
	
	game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))
	
				wait()
			end
		end)
	ExtraSection:NewButton("Anti-AFK", "Prevents you from being kicked for idle fo 20 minutes", function()
		local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
	   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	   wait(1)
	   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	end)
	PlayerSection:NewSlider("Walkspeed", "Adjust your players walkspeed", 500, 16, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	PlayerSection:NewSlider("JumpPower", "Adjust your players jump power", 500, 50, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end)
	MainSection:NewToggle("Auto Daily Endurance","Automatically does your daily endurance quest", function(v)
		getgenv().autoend = v
			while true do
				if not getgenv().autoend then return end
				wait(0.2)
	local args = {
		[1] = "DailyEndurance"
	}
	
	game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))
				
				wait()
			end
		end)
	MainSection:NewToggle("Auto Daily Psychic","Automatically does your daily psychic quest", function(v)
		getgenv().autopsy = v
			while true do
				if not getgenv().autopsy then return end
				wait(0.2)
	local args = {
		[1] = "DailyPsychic"
	}
	
	game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))
	
			wait()
		end
	end)
	MainSection:NewToggle("Auto Daily Strength","Automatically does your daily strength quest", function(v)
		getgenv().autopsy = v
			while true do
				if not getgenv().autopsy then return end
				wait(0.2)
	local args = {
		[1] = "DailyStrength"
	}
	
	game:GetService("ReplicatedStorage").Events.Quest:FireServer(unpack(args))
	
			wait()
		end
	end)
	Stats:NewToggle("Auto Upgrade Endurance Multi","Automatically upgrades your endurance", function(v)	
		getgenv().autoupend = v
				while true do
					if not getgenv().autoupend then return end
					wait(0.2)
	local args = {
		[1] = "EnduranceMultiplier"
	}
	
	game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer(unpack(args))
					
					wait()
				end
			end)
	Stats:NewToggle("Auto Upgrade Strength Multi","Automatically upgrades your strength", function(v)	
		getgenv().autoupend = v
				while true do
					if not getgenv().autoupend then return end
					wait(0.2)
	local args = {
		[1] = "StrengthMultiplier"
	}
	
	game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer(unpack(args))
					
					wait()
				end
			end)
			Stats:NewToggle("Auto Upgrade Psychic Multi","Automatically upgrades your psychic", function(v)	
		getgenv().autoupend = v
				while true do
					if not getgenv().autoupend then return end
					wait(0.2)
	local args = {
		[1] = "PsychicMultiplier"
	}
	
	game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer(unpack(args))
					
					wait()
				end
			end)
	MainSection:NewToggle("Auto Rank Up","Automatically ranks you up", function(v)
		getgenv().autorank = v
			while true do
				if not getgenv().autorank then return end
	game:GetService("ReplicatedStorage").Functions.BuyRank:InvokeServer()
	
			wait()
		end
	end)
	elseif game.PlaceId == 4865990095 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Power Simulator 2 | DuckSploit", colors)
	local Main = Window:NewTab("Main")
	local MainSections = Main:NewSection("Main")
	local ExtraTab = Window:NewTab("Extra")
	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Player")
	local ExtraSection = ExtraTab:NewSection("Extra")
	local Codes = Main:NewSection("Claim All Codes")
	MainSections:NewToggle("Auto Train Strength","Automatically trains strength", function(v)
		getgenv().autostrng = v
			while true do
				if not getgenv().autostrng then return end
				wait(0.2)
	local args = {
		[1] = "Powers.Punch"
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
	MainSections:NewToggle("Auto Train Endurance","Auto train endurance", function(v)		
		getgenv().autoend = v
			while true do
				if not getgenv().autoend then return end
				wait(0.2)
	local args = {
		[1] = "Powers.Pressup"
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
	MainSections:NewToggle("Auto Train All","Automatically trains all skills", function(v)
		getgenv().autoall = v
			while true do
				if not getgenv().autoall then return end
	local args = {
		[1] = "Powers.Pressup"
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
	local args = {
		[1] = "Powers.Punch"
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
	MainSections:NewToggle("Auto Main Quest", "Automatically accepts your main quest", function(v)		
		getgenv().autoquest = v
			while true do
				if not getgenv().autoquest then return end
				wait(0.2)
	local args = {
		[1] = "GetStat",
		[2] = "TotalPower"
	}
	
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
			
			wait()
		end
	end)
	ExtraSection:NewButton("Anti-AFK", "Prevents you from being kicked for idle fo 20 minutes", function()
		local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
	   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	   wait(1)
	   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	end)
	MainSections:NewToggle("Auto Agility","Automatically trains your agility", function(v)	
		getgenv().autojump = v
			while true do
				if not getgenv().autojump then return end
	local args = {
		[1] = "Jumping"
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	
			wait()
		end
	end)
	Codes:NewButton("Claim All Codes", "Claims all the codes for you", function(v)
	local args = {
		[1] = "Code.Claim",
		[2] = "35kthumbs"
	}
	
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
	
	local args = {
		[1] = "Code.Claim",
		[2] = "metaverse"
	}
	
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
	end)
	PlayerSection:NewSlider("Walkspeed", "Adjust your players walkspeed", 500, 16, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	PlayerSection:NewSlider("JumpPower", "Adjust your players jump power", 500, 50, function(s) 
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end)
	elseif game.PlaceId == 6428116890 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Planet Clicker | DuckSploit", colors)
	local Main = Window:NewTab("Main")
	local MainSections = Main:NewSection("Main")
	local ExtraTab = Window:NewTab("Extra")
	local ExtraSection = ExtraTab:NewSection("Extra")
	MainSections:NewToggle("Auto Click","Automatically clicks", function(v)
		getgenv().autoclick = v
			while true do
				if not getgenv().autoclick then return end
				wait(0.2)
game:GetService("ReplicatedStorage").ClickedButton:FireServer()				
				
				wait()
			end
		end)
				
end