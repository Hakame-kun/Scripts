function FarmCoin(CoinID, PetID)
   game.workspace['__THINGS']['__REMOTES']["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
   game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
end

function GetMyPets()
   local returntable = {}
   for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetChildren()) do
       if v.ClassName == 'TextButton' and v.Equipped.Visible then
           table.insert(returntable, v.Name)
       end
   end
   return returntable
end

function GetCoins(world, area)
   local returntable = {}
   local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
   for i,v in pairs(ListCoins) do
       if string.lower(v.w) == string.lower(world) and string.lower(v.a) == string.lower(area) then
           table.insert(returntable, i)
       end
   end
   return returntable
end

function CollectOrbs()
   local ohTable1 = {[1] = {}}
   for i,v in pairs(game.workspace['__THINGS'].Orbs:GetChildren()) do
       ohTable1[1][i] = v.Name
   end
   game.workspace['__THINGS']['__REMOTES']["claim orbs"]:FireServer(ohTable1)
end

while wait() and not _G.Stop do
   local cointhiny = GetCoins(_G.World, _G.Area)
   local pethingy = GetMyPets()
   for i = 1, #cointhiny do
       pcall(function() FarmCoin(cointhiny[i], pethingy[i%#pethingy+1]) end)
       pcall(function() CollectOrbs() end)
   end
end