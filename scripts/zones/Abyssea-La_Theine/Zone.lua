-----------------------------------
--
-- Zone: Abyssea - La_Theine
--
-----------------------------------
package.loaded["scripts/zones/Abyssea-La_Theine/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/zones/Abyssea-La_Theine/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;

    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(-480.5,-0.5,794,62);
    end

    if (player:getQuestStatus(ABYSSEA, THE_TRUTH_BECKONS) == QUEST_ACCEPTED
    and player:getVar("1stTimeAyssea") == 0) then
        player:setVar("1stTimeAyssea",1);
    end

    return cs;
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;