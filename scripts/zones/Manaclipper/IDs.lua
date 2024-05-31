-----------------------------------
-- Area: Manaclipper
-----------------------------------
zones = zones or {}

zones[xi.zone.MANACLIPPER] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED       = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390, -- Obtained: <item>.
        GIL_OBTAINED                  = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7061, -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET        = 7231, -- You can't fish here.
        KHOTS_CHALAHKO_OFFSET         = 7404, -- Ahhh... Isn't it grrreat out here on the open sea!?
    },
    mob =
    {
        ZOREDONITE = 16789518,
    },
    npc =
    {
    },
}

return zones[xi.zone.MANACLIPPER]