-----------------------------------
-- Area: Upper Jeuno
--  NPC: Bheem
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Upper_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Upper_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(157);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

