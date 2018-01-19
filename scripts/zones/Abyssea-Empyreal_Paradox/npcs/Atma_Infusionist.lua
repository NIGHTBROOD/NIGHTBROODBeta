-----------------------------------
-- Area: Abyssea - Altepa
--  NPC: Dominion Tactician
--
-----------------------------------
package.loaded["scripts/zones/Abyssea-Empyreal_Paradox/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/abyssea");
require("scripts/zones/Abyssea-Empyreal_Paradox/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local dominion_note = player:getCurrency("dominion_note");
    local Trophies = 0; -- Max all Trophy = 4294967295 sort out its bit mask later.
    player:startEvent(120, dominion_note, 0, 0, 0, 0, Trophies);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    printf("CSID: %u",csid);
    printf("RESULT: %u",option);
    local Price = 0;
    local TempItem = false;
    local ItemID = 0;
    local aug1 = 0;
    local aug2 = 0;
    local aug3 = 0;
    local aug4 = 0;
    local a1 = 0;
    local a2 = 0;
    local a3 = 0;
    local a4 = 0;
    local v1 = 0;
    local v2 = 0;
    local v3 = 0;
    local v4 = 0;
-----------------------------------
-- Spending Dominion Notes
    
	if (option == 258) then -- Petrify Screen
        Price = 300;
        TempItem = true;
        ItemID = 5876;
   
    
    elseif (option == 514) then -- Terror Screen
        Price = 300;
        TempItem = true;
        ItemID = 5877;
    
  
    elseif (option == 770) then -- Amnesia Screen
        Price = 300;
        TempItem = true;
        ItemID = 5878;
    
   
    elseif (option == 1026) then -- Doom Screen
        Price = 300;
        TempItem = true;
        ItemID = 5879;
    
    elseif (option == 1282) then -- Poison Screen
        Price = 300;
        TempItem = true;
        ItemID = 5880;
  
   
    
    end

    if (option > 256 and option < 2818) then
        if (player:getCurrency("dominion_note")) then
            if (player:getFreeSlotsCount() >= 1) then
                player:messageSpecial(ITEM_OBTAINED,ItemID);
                if (TempItem == true) then
                    player:addTempItem(ItemID,1);
                else
                    player:addItem(ItemID,1,a1,v1,a2,v2,a3,v3,a4,v4);
                end
                player:deldominion_note(Price);
            else
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ItemID);
            end
        end
    end
-----------------------------------
 -- Trophy trades for gear
    -- if (option == 65796) then
    --     .
    -- elseif (option == 
    --     .
    -- end

end;