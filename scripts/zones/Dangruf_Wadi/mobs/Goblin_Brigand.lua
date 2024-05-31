-----------------------------------
-- Area: Dangruf Wadi
--  Mob: Goblin Brigand
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 640, 1, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 642, 2, xi.regime.type.GROUNDS)
end

return entity