--[[
  READ!
  For this to work you *[b]MUST[/b]* destroy a coin/chest thing manually AND collect at least one orb then execute and it will work fine!
  Failure to do this means well - your loss and the script won't work
  For best performance use an empty VIP server! :) The script puts each pet on it's own coin so it should be faster than conventional scripts that put all pets on a single coin sort of thing (more good pets should be faster) AND be sure to upgrade your gem related upgrades in the upgrade shop in like the 2nd area in spawn thingy for more gems. Pets with gem boosts are just an extra
  Spawn Areas: "Town", "Forest", "Beach", "Mine", "Winter", "Glacier", "Desert", "Volcano"
  Fantasy Areas: "Enchanted Forest", "Ancient", "Samurai", "Candy", "Haunted"
]]

_G.Stop = false -- false = script is on; true = script is off
_G.World = "Fantasy" -- Worlds: "Fantasy" & "Spawn"
_G.Area = "Enchanted Forest" -- See the above comment and select something..

loadstring(game:HttpGet("https://github.com/Hakame-kun/Scripts/raw/main/Pet%20Sim%20X/Pet%20Sim%20X%20Gem.lua"))()