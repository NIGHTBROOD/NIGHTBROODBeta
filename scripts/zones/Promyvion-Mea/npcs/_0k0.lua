-----------------------------------    
-- Area: Promyvion Mea
-- Memory Flux
-- @pos 257 0 179
-----------------------------------    
package.loaded["scripts/zones/Promyvion-Mea/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Promyvion-Mea/TextIDs");
require("scripts/globals/keyitems");
    
-----------------------------------    
-- onTrigger Action    
-----------------------------------    
    
function onTrigger(player,npc)    
    if (player:getQuestStatus(JEUNO,SHADOWS_OF_THE_DEPARTED) == QUEST_ACCEPTED and player:getVar('ShadowsDeparted') == 1 and player:hasKeyItem(PROMYVION_MEA_SLIVER) == false) then
        player:addKeyItem(PROMYVION_MEA_SLIVER);
	    player:messageSpecial(KEYITEM_OBTAINED,PROMYVION_MEA_SLIVER);
    else
        player:messageSpecial(NOTHING_OUT_OF_ORDINARY);
    end
end;    
    
-----------------------------------    
-- onTrade Action    
-----------------------------------    
    
function onTrade(player,npc,trade)    
end;    
    

    
-----------------------------------    
-- onEventFinish Action    
-----------------------------------    
    
function onEventFinish(player,csid,option)    
end;    
