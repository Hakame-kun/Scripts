local library = loadstring(game:HttpGet("https://gist.github.com/Hakame-kun/111a815c21b0d4d651803b598d3d1b56/raw/1d051d1706fcee8fc48a2e55711b615edd9cb52f/Wally's%2520UI", true))()
library.options.underlinecolor = "rainbow"

local w = library:CreateWindow('Main')
w:Section('Pick Your Poison!')
local t = w:Toggle('Auto Rebirth', {flag = "Rebirth"})
spawn( 
    function()
        while wait() do
            if w.flags.Rebirth then
                game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
            end
        end
    end
)

local t = w:Toggle('Yellow Orb x50 (City)', {flag = "YoCity"})
spawn( 
    function()
        while wait() do
            if w.flags.YoCity then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            end
        end
    end
)

local t = w:Toggle('Red Orb x50 (City)', {flag = "RoCity"})
spawn( 
    function()
        while wait() do
            if w.flags.RoCity then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            end
        end
    end
)

local t = w:Toggle('Gem x50 (City)', {flag = "GCity"})
spawn( 
    function()
        while wait() do
            if w.flags.GCity then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
            end
        end
    end
)

local t = w:Toggle('Hoops V1', {flag = "HoopsV1"})
spawn( 
    function()
        while wait() do
            if w.flags.HoopsV1 then
                for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
				firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 0)
				wait()
				firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 1)
				end
            end
        end
    end
)

local t = w:Toggle('Hoops V2', {flag = "HoopsV2"})
spawn( 
    function()
        while wait() do
            if w.flags.HoopsV2 then
                local children = workspace.Hoops:GetChildren()
                    for i, child in ipairs(children) do
                        if child.Name == "Hoop" then
                        child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end    
                end
            end
        end
    end
)

w:Section('Teleport to ...')
local b = w:Button("City", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828, 74.8522873, 3099.03394, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
end)

local b = w:Button("Snow", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.13867, 74.8522873, 3782.69385, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

local b = w:Button("Magma", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.9688, 232.791656, 4898.62842, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
end)

local b = w:Button("Legends Highway", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.8711, 232.791656, 5907.62793, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
end)

local w = library:CreateWindow('Another Farm')
w:Section('So, now youre on another map')
local t = w:Toggle('Yellow Orb x50 (Snow City)', {flag = "YoSnow"})
spawn( 
    function()
        while wait() do
            if w.flags.YoSnow then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City")
            end
        end
    end
)

local t = w:Toggle('Red Orb x50 (Snow City)', {flag = "RoSnow"})
spawn( 
    function()
        while wait() do
            if w.flags.RoSnow then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City")
            end
        end
    end
)

local t = w:Toggle('Gem x50 (Snow City)', {flag = "GSnow"})
spawn( 
    function()
        while wait() do
            if w.flags.GSnow then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City")
            end
        end
    end
)

local t = w:Toggle('Yellow Orb x50 (Magma City)', {flag = "YoMagma"})
spawn( 
    function()
        while wait() do
            if w.flags.YoMagma then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City")
            end
        end
    end
)

local t = w:Toggle('Red Orb x50 (Magma City)', {flag = "RoMagma"})
spawn( 
    function()
        while wait() do
            if w.flags.RoMagma then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City")
            end
        end
    end
)

local t = w:Toggle('Gem x50 (Magma City)', {flag = "GMagma"})
spawn( 
    function()
        while wait() do
            if w.flags.GMagma then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City")
            end
        end
    end
)

w:Section('Space')
local t = w:Toggle('Yellow Orb x50', {flag = "YoSpace"})
spawn( 
    function()
        while wait() do
            if w.flags.YoSpace then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") 
            end
        end
    end
)

local t = w:Toggle('Red Orb x50', {flag = "RoSpace"})
spawn( 
    function()
        while wait() do
            if w.flags.RoSpace then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") 
            end
        end
    end
)

local t = w:Toggle('Gem Orb x50', {flag = "GSpace"})
spawn( 
    function()
        while wait() do
            if w.flags.GSpace then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") 
            end
        end
    end
)

w:Section('Desert')
local t = w:Toggle('Yellow Orb x50', {flag = "YoDesert"})
spawn( 
    function()
        while wait() do
            if w.flags.YoDesert then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") 
            end
        end
    end
)

local t = w:Toggle('Red Orb x50', {flag = "RoDesert"})
spawn( 
    function()
        while wait() do
            if w.flags.RoDesert then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") 
            end
        end
    end
)

local t = w:Toggle('Gem Orb x50', {flag = "GDesert"})
spawn( 
    function()
        while wait() do
            if w.flags.GDesert then
                game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") 
            end
        end
    end
)

local w = library:CreateWindow('Open Crystal')
w:Section('Main World')
local t = w:Toggle('Red Crystal', {flag = "ReC"})
spawn( 
    function()
        while wait() do
            if w.flags.ReC then
                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Red Crystal")
            end
        end
    end
)

local t = w:Toggle('Purple Crystal', {flag = "PuC"})
spawn( 
    function()
        while wait() do
            if w.flags.PuC then
                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Purple Crystal")
            end
        end
    end
)

local t = w:Toggle('Yellow Crystal', {flag = "YeC"})
spawn( 
    function()
        while wait() do
            if w.flags.YeC then
                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Yellow Crystal")
            end
        end
    end
)

local t = w:Toggle('Lightning Crystal', {flag = "LiC"})
spawn( 
    function()
        while wait() do
            if w.flags.LiC then
                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Lightning Crystal")
            end
        end
    end
)

local t = w:Toggle('Snow Crystal', {flag = "SnC"})
spawn( 
    function()
        while wait() do
            if w.flags.SnC then
                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Snow Crystal")
            end
        end
    end
)

local t = w:Toggle('Inferno Crystal', {flag = "InC"})
spawn( 
    function()
        while wait() do
            if w.flags.InC then
                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Inferno Crystal")
            end
        end
    end
)

local t = w:Toggle('Electro Legends Crystal', {flag = "ElC"})
spawn( 
    function()
        while wait() do
            if w.flags.ElC then
                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Legends Crystal")
            end
        end
    end
)

w:Section('Space')
local t = w:Toggle('Space Crystal', {flag = "SpC"})
spawn( 
    function()
        while wait() do
            if w.flags.SpC then
                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Space Crystal")
            end
        end
    end
)

local t = w:Toggle('Alien Crystal', {flag = "AlC"})
spawn( 
    function()
        while wait() do
            if w.flags.AlC then
                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Alien Crystal")
            end
        end
    end
)

w:Section('Desert')
local t = w:Toggle('Desert Crystal', {flag = "DeC"})
spawn( 
    function()
        while wait() do
            if w.flags.DeC then
                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Desert Crystal")
            end
        end
    end
)

local t = w:Toggle('Electro Crystal', {flag = "EleC"})
spawn( 
    function()
        while wait() do
            if w.flags.EleC then
                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Crystal")
            end
        end
    end
)

w:Section('If it does not work')
w:Section('Maybe your Trails/Pets is full')

local w = library:CreateWindow('Other')
w:Section('Misc')
local b = w:Button("Disable AFK", function()
local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("lol bad exploit")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end
end)

w:Section('Just in Case')

local b = w:Button("FPS Booster", function()
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
end)

local Slider = w:Slider("WalkSpeed",
    {
        precise = true, --"false" will give you whole integers, "true" gives you 0.05's 
        default = 50, --What you want the default value when the script is ran!
        min = 1, -- The lowest number that you can select as the user
        max = 99999, --The highest number you can select as the user
        flag = "Speed" --Again, it's just a variable. In this case: Window.flags.Speed
    },
function() --Makes whatever is below happen each time the slider changes it's value
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(w.flags.Speed)
end)

w:Section('Press Enter to activate')

local Slider = w:Slider("JumpPower",
    {
        precise = true, --"false" will give you whole integers, "true" gives you 0.05's 
        default = 50, --What you want the default value when the script is ran!
        min = 1, -- The lowest number that you can select as the user
        max = 1000, --The highest number you can select as the user
        flag = "Speed" --Again, it's just a variable. In this case: Window.flags.Speed
    },
function() --Makes whatever is below happen each time the slider changes it's value
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(w.flags.Speed)
end)

local b = w:Button("Rejoin the game", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)


w:Section('Right Ctrl to hide')
w:Section('Made by Me (Mr. Hakame)')