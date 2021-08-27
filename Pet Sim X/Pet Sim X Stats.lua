--[[
    no touch?
]]

local menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right
local types = {'Fantasy Coins', 'Coins', 'Diamonds'}
_G.MyTypes = {}

--skidded from https://devforum.roblox.com/t/how-would-i-make-a-large-number-have-commas/384427/7 sorry
function comma_value(amount)
    local formatted = amount
    while true do  
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (k==0) then
            break
        end
    end
    return formatted
end

function get(thistype)
    return string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[thistype].Amount.Text, ",", "")
end

game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Coins.LayoutOrder = 99997
game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.UIListLayout.HorizontalAlignment = 2

for i,v in pairs(types) do
    if not menus:FindFirstChild(v.."2") then
        local tempmaker = menus:FindFirstChild(v):Clone()
        tempmaker.Name = tostring(tempmaker.Name .. "2")
        tempmaker.Parent = menus
        tempmaker.Size = UDim2.new(0, 200, 0, 35)
        _G.MyTypes[v] = tempmaker

    end
end

game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Diamonds2.Add.Visible = false

for i,v in pairs(types) do
    spawn(function()
        local megatable = {}
        local imaginaryi = 1
        while wait(0.5) and not _G.stop do
            local currentbal = get(v)
            megatable[imaginaryi] = currentbal
            local diffy = currentbal - (megatable[imaginaryi-120] or megatable[1])
            imaginaryi = imaginaryi + 1 
            _G.MyTypes[v].Amount.Text = tostring(comma_value(diffy).." in 60s")
            _G.MyTypes[v]["Amount_odometerGUIFX"].Text = tostring(comma_value(diffy).." in 60s")
        end
    end)
end