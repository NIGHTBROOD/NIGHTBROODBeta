-----------------------------------
-- Area: Windurst Walls
--  NPC: Yoriri
-- Type: Standard NPC
-- !pos 65.268 -8.5 -58.309 239
-----------------------------------
package.loaded["scripts/zones/Windurst_Walls/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/quests");
require("scripts/zones/Windurst_Walls/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    local WildcatWindurst = player:getVar("WildcatWindurst");

    if (player:getQuestStatus(WINDURST,LURE_OF_THE_WILDCAT_WINDURST) == QUEST_ACCEPTED and player:getMaskBit(WildcatWindurst,5) == false) then
        player:startEvent(496);
    else
        player:startEvent(313);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)

    if (csid == 496) then
        player:setMaskBit(player:getVar("WildcatWindurst"),"WildcatWindurst",5,true);
    end

end;

