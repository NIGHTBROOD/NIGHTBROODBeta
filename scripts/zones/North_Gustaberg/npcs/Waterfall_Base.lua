-----------------------------------
-- Area: North Gustaberg
--  NPC: Waterfall Base
-- Involved In Quest: Drachenfall
-- !pos -217.594 98.644 464.722 106
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/quests");
require("scripts/globals/settings");
require("scripts/zones/North_Gustaberg/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)

    local count = trade:getItemCount();
    local BrassCanteen = trade:hasItemQty(493,1);

    if (BrassCanteen == true and count == 1) then
        player:tradeComplete();
        player:addItem(492);
        player:messageSpecial(ITEM_OBTAINED,492);
    end
end;

function onTrigger(player,npc)

    player:messageSpecial(REACH_WATER_FROM_HERE);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID2: %u",csid);
    -- printf("RESULT2: %u",option);
end;

function onEventFinish(player,csid,option)
end;