-----------------------------------
-- Area: Bastok Mines
-- NPC: Bountibox
-- Item Upgrade NPC
-----------------------------------
package.loaded["scripts/zones/Bastok_Mines/TextIDs"] = nil;
require("scripts/zones/Bastok_Mines/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	local count = trade:getItemCount();
	
	if (count == 8 and trade:hasItemQty(17545,1) and trade:hasItemQty(17547,1) and trade:hasItemQty(17549,1) and trade:hasItemQty(17551,1) and trade:hasItemQty(17553,1) and trade:hasItemQty(17555,1) and trade:hasItemQty(17557,1) and trade:hasItemQty(17559,1)) then
		player:PrintToPlayer("What a bum. Don't trust me with the HQ staves?");
		player:PrintToPlayer("Just for that you're only getting an Iridial Staff, come back when you have some white borders.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(18632)) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18632);
		else
			player:tradeComplete();
			player:addItem(18632);
			player:messageSpecial(ITEM_OBTAINED,18632);
		end
	end
	
	if (count == 8 and trade:hasItemQty(17546,1) and trade:hasItemQty(17548,1) and trade:hasItemQty(17550,1) and trade:hasItemQty(17552,1) and trade:hasItemQty(17554,1) and trade:hasItemQty(17556,1) and trade:hasItemQty(17558,1) and trade:hasItemQty(17560,1)) then
		player:PrintToPlayer("Look at you money bags. Thanks for the HQ staves.");
		player:PrintToPlayer("Now go fix your macros.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(18633)) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18633);
		else
			player:tradeComplete();
			player:addItem(18633);
			player:messageSpecial(ITEM_OBTAINED,18633);
		end
	end
    
    if (count == 8 and trade:hasItemQty(15441,1) and trade:hasItemQty(15442,1) and trade:hasItemQty(15435,1) and trade:hasItemQty(15436,1) and trade:hasItemQty(15437,1) and trade:hasItemQty(15438,1) and trade:hasItemQty(15439,1) and trade:hasItemQty(15440,1)) then
		player:PrintToPlayer("Spending too much time in sea. Must be pruny...");
		player:PrintToPlayer("Here's your obi. Now go fix your macros.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(28419)) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,28419);
		else
			player:tradeComplete();
			player:addItem(28419);
			player:messageSpecial(ITEM_OBTAINED,28419);
		end
	end
    
    if (count == 8 and trade:hasItemQty(15495,1) and trade:hasItemQty(15498,1) and trade:hasItemQty(15500,1) and trade:hasItemQty(15497,1) and trade:hasItemQty(15496,1) and trade:hasItemQty(15499,1) and trade:hasItemQty(15501,1) and trade:hasItemQty(15502,1)) then
		player:PrintToPlayer("Spending too much time in sea. Must be pruny...");
		player:PrintToPlayer("Here's your gorget. Now go fix your macros.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(27510)) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,27510);
		else
			player:tradeComplete();
			player:addItem(27510);
			player:messageSpecial(ITEM_OBTAINED,27510);
		end
	end
	
	if (count == 1 and trade:hasItemQty(2955,1) ) then
		player:PrintToPlayer("This is a temporary solution until Limbus is fixed.");
		if (player:getFreeSlotsCount() < 1 ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,1875);
		else
			player:tradeComplete();
			player:addItem(1875,3);
			player:messageSpecial(ITEM_OBTAINED,1875);
		end
	end
	
	if (count == 1 and trade:hasItemQty(2956,1) ) then
		player:PrintToPlayer("This is a temporary solution until Limbus is fixed.");
		if (player:getFreeSlotsCount() < 1 ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,1875);
		else
			player:tradeComplete();
			player:addItem(1875,5);
			player:messageSpecial(ITEM_OBTAINED,1875);
		end
	end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:PrintToPlayer("Great Things happen with Great goblin....NOT");
	player:PrintToPlayer("Trade NQ or HQ Staffs for Iridal/Chatoyant Staves");
	player:PrintToPlayer("Trade all Sea Obi's or Gorgets for Hachirin-no-Obi/Fotia Gorget");
	player:PrintToPlayer("Trade Kindred Crest or High Kindred Crest for Ancient coins");
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
end;

