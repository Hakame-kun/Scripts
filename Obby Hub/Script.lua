local jjksexy = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local gameName = Instance.new("TextLabel")
local Button = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local credits = Instance.new("TextLabel")
jjksexy.Name = "jjk.sexy"
jjksexy.Parent = game.CoreGui
jjksexy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
jjksexy.DisplayOrder = 59666
jjksexy.ResetOnSpawn = false
Main.Name = "Main"
Main.Parent = jjksexy
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.5, -0, 0.5, -0)
Main.Size = UDim2.new(0, 0, 0, 0)
gameName.Name = "gameName"
gameName.Parent = Main
gameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName.BackgroundTransparency = 1.000
gameName.Size = UDim2.new(1, 0, 0.5, 0)
gameName.Font = Enum.Font.Nunito
gameName.Text = "Rob The Bank Obby"
gameName.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName.TextSize = 25.000
gameName.TextYAlignment = Enum.TextYAlignment.Bottom
Button.Name = "Button"
Button.Parent = Main
Button.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0.25, 0, 0.550000012, 0)
Button.Size = UDim2.new(0.5, 0, 0.25, 0)
Button.AutoButtonColor = false
Button.Font = Enum.Font.Nunito
Button.Text = "Execute"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 25.000
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Main
credits.Name = "credits"
credits.Parent = Main
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BackgroundTransparency = 1.000
credits.Position = UDim2.new(0, 0, 0.800000012, 0)
credits.Size = UDim2.new(1, 0, 0.200000003, 0)
credits.Font = Enum.Font.Nunito
credits.Text = "jjk.sexy"
credits.TextColor3 = Color3.fromRGB(62, 63, 109)
credits.TextSize = 15.000
local function tw(target,changes,style,dir,tim)
	game:GetService('TweenService'):Create(target,TweenInfo.new(tim,Enum.EasingStyle[style],Enum.EasingDirection[dir]),changes):Play()
end
function trygame(array)
	gameName.Text = 'Game not supported'
	Button.Text = 'ok :('
	for i,v in next,array do
		if game.PlaceId==i then
			gameName.Text = v[1]
			Button.Text = 'Execute'
			Button.MouseButton1Click:Connect(v[2])
			break
		end
	end
	tw(Main,{Size=UDim2.new(0,260,0,120),Position=UDim2.new(0.5,-130,0.5,-60)},'Quint','Out',1)
	tw(UICorner,{CornerRadius=UDim.new(0,0)},'Quint','Out',1)
	Button.MouseButton1Click:Connect(function()
		tw(Main,{Size=UDim2.new(0,0,0,0),Position=UDim2.new(0.5,0,0.5,0)},'Quint','Out',1)
		tw(UICorner,{CornerRadius=UDim.new(1,0)},'Quint','Out',1)
	end)
end
return trygame