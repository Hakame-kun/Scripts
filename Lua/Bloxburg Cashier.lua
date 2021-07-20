-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end

for i,v in pairs(getgc(true)) do
    if type(v) == "function" and getinfo(v).name == "CreateChatBubble" then
        old = hookfunction(v, function(...)
            local a = old(...)
            local order = ({...})[2].Parent.Order
            for _,workstation in pairs(workspace.Environment.Locations.BloxyBurgers.CashierWorkstations:GetChildren()) do
                if not workstation.OrderDisplay.DisplayMain.CashierGUI.Used.Visible and workstation.Occupied.Value == order.Parent then
                    local cashier = workstation.OrderDisplay.DisplayMain.CashierGUI.Frame
                   
                    for i,v in pairs(getconnections(cashier[order.Burger.Value].Activated)) do
                        v:Fire()
                    end
                   
                    if order.Fries.Value then
                        for i,v in pairs(getconnections(cashier.Fries.Activated)) do
                            v:Fire()
                        end
                    end
                   
                    if order.Cola.Value then
                        for i,v in pairs(getconnections(cashier.Cola.Activated)) do
                            v:Fire()
                        end
                    end
                   
                    for i,v in pairs(getconnections(cashier.Done.Activated)) do
                        v:Fire()
                    end
                end
            end
            return a
        end)
    end
end