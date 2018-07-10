-----------------------------------
-- Area: Metalworks
--  NPC: Izabele
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Metalworks/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Metalworks/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:PrintToPlayer("Going down!");
	player:setPos(-59, 2, 0, 3);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

