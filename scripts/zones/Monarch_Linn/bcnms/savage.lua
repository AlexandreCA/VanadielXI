-----------------------------------
-- Area: Monarch Linn
-- Name: The Savage
-----------------------------------
local battlefieldObject = {}

battlefieldObject.onBattlefieldTick = function(battlefield, tick)
    xi.battlefield.onBattlefieldTick(battlefield, tick)
end

battlefieldObject.onBattlefieldRegister = function(player, battlefield)
end

battlefieldObject.onBattlefieldEnter = function(player, battlefield)
end

battlefieldObject.onBattlefieldLeave = function(player, battlefield, leavecode)
    if leavecode == xi.battlefield.leaveCode.WON then
        local _, clearTime, partySize = battlefield:getRecord()
        local arg8 = (player:getCurrentMission(xi.mission.log_id.COP) ~= xi.mission.id.cop.THE_SAVAGE or
            xi.mission.getVar(player, xi.mission.log_id.COP, xi.mission.id.cop.THE_SAVAGE, 'Status') ~= 1) and 1 or 0

        player:setLocalVar('battlefieldWin', battlefield:getID())

        player:startEvent(32001, battlefield:getArea(), clearTime, partySize, battlefield:getTimeInside(), 1, battlefield:getLocalVar('[cs]bit'), arg8)
    elseif leavecode == xi.battlefield.leaveCode.LOST then
        player:startEvent(32002)
    end
end

battlefieldObject.onEventUpdate = function(player, csid, option, npc)
end

battlefieldObject.onEventFinish = function(player, csid, option, npc)
    if csid == 32001 then
        player:addExp(1500)
        player:addTitle(xi.title.MIST_MELTER)
    end
end

return battlefieldObject