-----------------------------------
-- Area: Upper Jeuno
--  NPC: Moogle
--
-----------------------------------
package.loaded["scripts/zones/Upper_Jeuno/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Upper_Jeuno/TextIDs")
require("scripts/globals/moghouse")

function onTrade(player,npc,trade)
    moogleTrade(player,npc,trade)
end

function onTrigger(player,npc)
    moogleTrigger(player,npc)
end

function onEventUpdate(player,csid,option)
    moogleEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
    moogleEventFinish(player,csid,option)
end
