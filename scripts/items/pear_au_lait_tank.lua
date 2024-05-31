-----------------------------------
--  ID: 16225
--  Pear au lait Tank
--  When used, you will obtain one Pear au lait
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    return xi.itemUtils.itemBoxOnItemCheck(target)
end

itemObject.onItemUse = function(target)
    npcUtil.giveItem(target, { { xi.item.FLASK_OF_PEAR_AU_LAIT, 1 } })
end

return itemObject