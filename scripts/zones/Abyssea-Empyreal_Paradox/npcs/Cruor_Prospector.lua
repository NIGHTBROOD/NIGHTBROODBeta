-----------------------------------
 
-- Area: Abyssea - Konschtat
 
--  NPC: Cruor Prospector
 
-- Type: Cruor NPC
 
--
 
-----------------------------------
 

package.loaded["scripts/zones/Abyssea-Vunkerl/TextIDs"] = nil;
require("scripts/zones/Abyssea-Vunkerl/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/abyssea");
 

 

 
-----------------------------------
 
-- onTrade Action
 
-----------------------------------
 

 
function onTrade(player,npc,trade)
 
end;
 

 
-----------------------------------
 
-- onTrigger Action
 
-----------------------------------
 

 
function onTrigger(player,npc)
 
    local Cruor = player:getCurrency("cruor");
 
    local Demilune = getDemiluneAbyssite(player);
 
    player:startEvent(2002, Cruor, Demilune);
 
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
 
    -- printf("CSID: %u",csid);
 
    -- printf("RESULT: %u",option);
 
    local Price = 0;
 
    local ItemID = 0;
 
    local Quantity = 1;
 

 
    -- Temp items
 
    if (option == 65538) then -- Lucid Potion I
 
        if (player:addTempItem(5824,1)) then
 
            player:messageSpecial(ITEM_OBTAINED,5824);
 
            player:delCruor(80);
 
        end
 
    elseif (option == 131074) then -- Lucid Ether I
 
        if (player:addTempItem(5827,1)) then
 
            player:messageSpecial(ITEM_OBTAINED,5827);
 
            player:delCruor(80);
 
        end
 
    elseif (option == 196610) then -- Catholicon
 
        if (player:addTempItem(4206,1)) then
 
            player:messageSpecial(ITEM_OBTAINED,4206);
 
            player:delCruor(80);
 
        end
 
    elseif (option == 262146) then -- Dusty Elixer
 
        if (player:addTempItem(5433,1)) then
 
            player:messageSpecial(ITEM_OBTAINED,5433);
 
            player:delCruor(120);
 
        end
 
    elseif (option == 327682) then -- Clear Salve I
 
        if (player:addTempItem(5837,1)) then
 
            player:messageSpecial(ITEM_OBTAINED,5837);
 
            player:delCruor(120);
 
        end
 
    elseif (option == 393218) then -- Stalworts Tonic
 
        if (player:addTempItem(5839,1)) then
 
            player:messageSpecial(ITEM_OBTAINED,5839);
 
            player:delCruor(150);
 
        end
 
    elseif (option == 458754) then -- Ascetics Tonic
 
        if (player:addTempItem(5841,1)) then
 
            player:messageSpecial(ITEM_OBTAINED,5841);
 
            player:delCruor(150);
 
        end
 
    elseif (option == 524290) then -- Champion's Tonic
 
        if (player:addTempItem(5843,1)) then
 
            player:messageSpecial(ITEM_OBTAINED,5843);
 
            player:delCruor(150);
 
        end
 
    elseif (option == 589826) then -- Lucid Potion II
 
        if (player:addTempItem(5825,1)) then
 
            player:messageSpecial(ITEM_OBTAINED,5825);
 
            player:delCruor(200);
 
        end
 
    elseif (option == 655362) then -- Lucid Potion II
 
        if (player:addTempItem(5828,1)) then
 
            player:messageSpecial(ITEM_OBTAINED,5828);
 
            player:delCruor(200);
 
        end
 
 

 
    -- Enhancement Effects (only removed by zoning, infinite duration)
 
    elseif (option == 393220) then -- HP Boost
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_HP,EFFECT_MAX_HP_BOOST,20+(getAbyssiteTotal(player,"MERIT") *10),0,0);
 
        player:addHP(20+(getAbyssiteTotal(player,"MERIT") *10) *10);
 
        player:delCruor(50);
 
    elseif (option == 458756) then -- MP Boost
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_MP,EFFECT_MAX_MP_BOOST,10+(getAbyssiteTotal(player,"MERIT") *5),0,0);
 
        player:addMP(10+(getAbyssiteTotal(player,"MERIT") *5) *10);
 
        player:delCruor(120);
 
    elseif (option == 524292) then -- STR-DEX Boost
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_STR,EFFECT_STR_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_DEX,EFFECT_DEX_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:delCruor(120);
 
    elseif (option == 589828) then -- VIT-AGI Boost
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_VIT,EFFECT_VIT_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_AGI,EFFECT_AGI_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:delCruor(100);
 
    elseif (option == 655364) then -- INT-MND-CHR Boost
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_INT,EFFECT_INT_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_MND,EFFECT_MND_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_CHR,EFFECT_CHR_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:delCruor(100);
 
    elseif (option == 720900) then -- All Enhancements
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_HP,EFFECT_MAX_HP_BOOST,20+(getAbyssiteTotal(player,"MERIT") *10),0,0);
 
        player:addHP(20+(getAbyssiteTotal(player,"MERIT") *10) *10);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_MP,EFFECT_MAX_MP_BOOST,10+(getAbyssiteTotal(player,"MERIT") *5),0,0);
 
        player:addMP(10+(getAbyssiteTotal(player,"MERIT") *5) *10);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_STR,EFFECT_STR_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_DEX,EFFECT_DEX_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_VIT,EFFECT_VIT_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_AGI,EFFECT_AGI_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_INT,EFFECT_INT_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_MND,EFFECT_MND_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
        player:addStatusEffectEx(EFFECT_ABYSSEA_CHR,EFFECT_CHR_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
		
		player:addStatusEffectEx(EFFECT_HUNDRED_FISTS,EFFECT_HUNDRED_FISTS,1+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
 
 		player:addStatusEffectEx(EFFECT_ACCURACY_BOOST,EFFECT_ACCURACY_BOOST,150+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);

  		player:addStatusEffectEx(EFFECT_ATTACK_BOOST,EFFECT_ATTACK_BOOST,50+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);

		player:addStatusEffectEx(EFFECT_MIGHTY_STRIKES,EFFECT_MIGHTY_STRIKES,1+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);
		
		player:addStatusEffectEx(EFFECT_PHALANX,EFFECT_PHALANX,1+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);

		player:addStatusEffectEx(EFFECT_MAGIC_ATK_BOOST,EFFECT_MAGIC_ATK_BOOST,10+(getAbyssiteTotal(player,"FURTHERANCE") *10),0,0);

        player:delCruor(650);
 
    end
 

 
    if (ItemID ~= 0) then
 
        if (player:getFreeSlotsCount() >= 1) then
 
            player:messageSpecial(ITEM_OBTAINED,ItemID);
 
            player:addItem(ItemID,Quantity);
 
            player:delCruor(Price);
 
        else
 
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ItemID);
 
        end
 
    end
 

 
end;
 
