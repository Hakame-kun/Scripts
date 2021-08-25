-----------------------------------------------------------------------------------------------------------------------
--[[
    Made By: trashs#0414
]]--
-----------------------------------------------------------------------------------------------------------------------
--// Gay trash scripts after this point, dont judge me from the way I script lol

--// Variables
local work = game:GetService("Workspace")
local ps = game:GetService("Players")
local lp = game:GetService("Players").LocalPlayer
local tycoon_name = "Tycoon"..game:GetService("Players").LocalPlayer.Name
local config

--// Global Variables
getgenv().num = 0
getgenv().num2 = 0

lp.Character.HumanoidRootPart.CFrame = work[tycoon_name].MallArea.CFrame
wait(1)

--// Configurations
config = {
    func = {
        fb1 = function(button)
            for i,signal in next, getconnections(button.MouseButton1Click) do
                signal:Fire()
            end
            for i,signal in next, getconnections(button.MouseButton1Down) do
                signal:Fire()
            end
            for i,signal in next, getconnections(button.Activated) do
                signal:Fire()
            end
        end,
		
        collect_cash = function()
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("RequestCollectCash")
        end,
		
        pick_store = function()
            for i,v in pairs(lp.PlayerGui.Interface.PickStore:GetDescendants()) do
                pcall(function()
                    if v:IsA("ImageButton") and v.Name == "SelectButton" and v.Parent.Name == "Common" then
                        config.func.fb1(v)
                    end
                end)
            end
        end,
        
		button_only = function()
			for i,v in pairs(work[tycoon_name]:GetDescendants()) do
                pcall(function()
                    if v:IsA("TouchTransmitter") and v.Name == "TouchInterest" and v.Parent.Name == "Button" then
                        local touch_part = v.Parent
                        firetouchinterest(lp.Character.LeftFoot, touch_part, 0)
                        wait(0.3)
                        firetouchinterest(lp.Character.LeftFoot, touch_part, 1)
                        wait(0.3)
                        firetouchinterest(lp.Character.LeftFoot, touch_part, 0)
                    end
                end)
            end
		end,
			
		buy_all = function()
            for i,v in pairs(work[tycoon_name]:GetDescendants()) do
                pcall(function()
                    if v:IsA("TouchTransmitter") and v.Name == "TouchInterest" and v.Parent.Name == "Button" then
                        local touch_part = v.Parent
                        firetouchinterest(lp.Character.LeftFoot, touch_part, 0)
                        wait(0.3)
                        firetouchinterest(lp.Character.LeftFoot, touch_part, 1)
                        wait(0.3)
                        firetouchinterest(lp.Character.LeftFoot, touch_part, 0)
                    end
                end)
            end
            config.func.pick_store()
        end,
        
    }
}

--// UI Library \\--
local library = loadstring(game:HttpGet("https://gist.github.com/Hakame-kun/111a815c21b0d4d651803b598d3d1b56/raw/1d051d1706fcee8fc48a2e55711b615edd9cb52f/Wally's%2520UI", true))()
library.options.underlinecolor = "rainbow"

local w = library:CreateWindow('Main')
w:Section('Pick Your Poison!')
local t = w:Toggle('Auto Collect', {flag = "CollectCash"})
--// Collect Cash
spawn(function()
	while wait(0.3) do
	    if w.flags.CollectCash then
        config.func.collect_cash()
        end
	end
end)

local t = w:Toggle('Auto Button', {flag = "AutoButton"})
--// Auto Buy Shit
spawn(function()
	while wait(0.3) do
	    if w.flags.AutoButton then
        config.func.button_only()
	    end
	end
end)

local t = w:Toggle('Auto Buy Everything', {flag = "AutoStore"})
--// Auto Pick Store 
spawn(function()
	while wait(0.3) do
	    if w.flags.AutoStore then
        config.func.buy_all()
	    end
	end
end)

local t = w:Toggle('Auto Rebirth', {flag = "Rebirth"})
spawn(function()
	while wait(0.3) do
	    if w.flags.Rebirth then
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(RequestRebirth)
	    end
	end
end)

local b = w:Button("Hide Gamepass Purchase", function()
    for i,v in pairs(work[tycoon_name]:GetDescendants()) do
        if v:IsA("Model") and v.Name == "Gamepasses" then
            v:Destroy()
        end
    end
end)

local w = library:CreateWindow('Other')
w:Section('Misc')
local b = w:Button("Disable AFK", function()
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end
end)

local b = w:Button("Rejoin the game", function()
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
end)

w:Section('Right Ctrl to hide')
w:Section('Made by Me (Mr. Hakame)')