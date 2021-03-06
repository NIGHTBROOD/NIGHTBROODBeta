-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Ryo
-- Type: ZNM assistant
-- !pos -127.086 0.999 22.693 50
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
require("scripts/globals/besieged");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(913);
	player:PrintToPlayer("To convert merits to zeni, select the 'My Zeni Balance' again within a minute.");
	player:PrintToPlayer("It will convert your current merit balance at a 1:50 merit:zeni ratio.");
end;

function onEventUpdate(player,csid,option)
    -- printf("updateCSID: %u",csid);
    -- printf("updateRESULT: %u",option);
	local meritCount = player:getMeritCount();
    local zeniConvertTimer = player:getVar("ZENI_CONVERT");
	local zeniConvert = player:getMeritCount()*50;
    if (option == 300) then
        player:updateEvent(player:getCurrency("zeni_point"),0);
    else
        player:updateEvent(0,0);
    end
end;

function onEventFinish(player,csid,option)
    -- printf("finishCSID: %u",csid);
    -- printf("finishRESULT: %u",option);
end;