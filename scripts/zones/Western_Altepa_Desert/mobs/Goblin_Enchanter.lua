-----------------------------------
-- Area: Western Altepa Desert
--  Mob: Goblin Enchanter
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 137, 1, xi.regime.type.FIELDS)
end

return entity