-----------------------------------
-- Area: Windurst Walls C-14
-- NPC: Arbitrix
-- Item Upgrade NPC
-----------------------------------
package.loaded["scripts/zones/Windurst_Walls/TextIDs"] = nil;
require("scripts/zones/Windurst_Walls/TextIDs");

function onTrade(player,npc,trade)
	local count = trade:getItemCount();

--Morrigan's Cuffs	
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(14859,1)) then --3 Coins of Birth and Seer’s Mitts +1  gets you Nemain's Cuffs
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14978) or player:hasItem(14977) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14978);
		else
			player:tradeComplete();
			player:addItem(14978);
			player:messageSpecial(ITEM_OBTAINED,14978);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(14908,1)) then --3 Coins of Advancement and Raven Bracers gets you Bodb's Cuffs
		player:PrintToPlayer("Better... but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14979) or player:hasItem(14977) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14979);
		else
			player:tradeComplete();
			player:addItem(14979);
			player:messageSpecial(ITEM_OBTAINED,14979);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(14956,1)) then --3 Coins of Glory and Magi Cuffs gets you Macha's Cuffs 
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Nemain's, Bodb's, and Macha's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14980) or player:hasItem(14977) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14980);
		else
			player:tradeComplete();
			player:addItem(14980);
			player:messageSpecial(ITEM_OBTAINED,14980);
		end
	end
	
	if (count == 19 and trade:hasItemQty(14978,1) and trade:hasItemQty(14979,1) and trade:hasItemQty(14980,1) and trade:hasItemQty(730,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Bloodwood Lumber x6 and 10 Imp. Gold Piece gets you Morrigan's Cuffs
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14977) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14977);
		else
			player:tradeComplete();
			player:addItem(14977);
			player:messageSpecial(ITEM_OBTAINED,14977);
		end
	end
	
--Morrigan's Pgch.	
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(15316,1)) then --3 Coins of Birth and Seer’s Pumps +1 gets you Nemain's Sabots  
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15728) or player:hasItem(15727) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15728);
		else
			player:tradeComplete();
			player:addItem(15728);
			player:messageSpecial(ITEM_OBTAINED,15728);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(15664,1)) then --3 Coins of Advancement and Raven Gaiters gets you Bodb's Pigaches 
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15729) or player:hasItem(15727) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15729);
		else
			player:tradeComplete();
			player:addItem(15729);
			player:messageSpecial(ITEM_OBTAINED,15729);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(14114,1)) then --3 Coins of Glory and Aristocrat’s Pumps gets you Macha's Pigaches
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Nemain's, Bodb's, and Macha's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15730) or player:hasItem(15727) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15730);
		else
			player:tradeComplete();
			player:addItem(15730);
			player:messageSpecial(ITEM_OBTAINED,15730);
		end
	end
	
	if (count == 19 and trade:hasItemQty(15728,1) and trade:hasItemQty(15729,1) and trade:hasItemQty(15730,1) and trade:hasItemQty(2152,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Marid Leather x6 and 10 Imp. Gold Piece gets you Morrigan's Pgch.
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15727) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15727);
		else
			player:tradeComplete();
			player:addItem(15727);
			player:messageSpecial(ITEM_OBTAINED,15727);
		end
	end
	
--Morrigan's Coron.	
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(15166,1)) then --3 Coins of Birth and Seer’s Crown +1 gets you Nemain's Crown
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16101) or player:hasItem(16100) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16101);
		else
			player:tradeComplete();
			player:addItem(16101);
			player:messageSpecial(ITEM_OBTAINED,16101);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(15243,1)) then --3 Coins of Advancement and Raven Beret gets you Bodb's Crown  
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16102) or player:hasItem(16100) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16102);
		else
			player:tradeComplete();
			player:addItem(16102);
			player:messageSpecial(ITEM_OBTAINED,16102);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(12483,1)) then --3 Coins of Glory and Aristocrat’s Crown gets you Macha's Crown
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Nemain's, Bodb's, and Macha's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16103) or player:hasItem(16100) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16103);
		else
			player:tradeComplete();
			player:addItem(16103);
			player:messageSpecial(ITEM_OBTAINED,16103);
		end
	end
	
	if (count == 19 and trade:hasItemQty(16101,1) and trade:hasItemQty(16102,1) and trade:hasItemQty(16103,1) and trade:hasItemQty(747,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Orichalcum Ingot x6 and 10 Imp. Gold Piece gets you Morrigan's Coron.
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16100) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16100);
		else
			player:tradeComplete();
			player:addItem(16100);
			player:messageSpecial(ITEM_OBTAINED,16100);
		end
	end	
	
--Morrigan's Slops	
	if (count == 6 and trade:hasItemQty(2603,5) and trade:hasItemQty(14328,1)) then --3 Coins of Birth and Seer’s Slacks +1 gets you Nemain's Slops
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15642) or player:hasItem(15641) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15642);
		else
			player:tradeComplete();
			player:addItem(15642);
			player:messageSpecial(ITEM_OBTAINED,15642);
		end
	end
	
	if (count == 6 and trade:hasItemQty(2604,5) and trade:hasItemQty(15579,1)) then --3 Coins of Advancement and Raven Hose gets you Bodb's Slops
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15643) or player:hasItem(15641) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15643);
		else
			player:tradeComplete();
			player:addItem(15643);
			player:messageSpecial(ITEM_OBTAINED,15643);
		end
	end
	
	if (count == 6 and trade:hasItemQty(2605,5) and trade:hasItemQty(15619,1)) then --3 Coins of Glory and Prince’s Slops gets you Macha's Slops 
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Nemain's, Bodb's, and Macha's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15644) or player:hasItem(15641) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15644);
		else
			player:tradeComplete();
			player:addItem(15644);
			player:messageSpecial(ITEM_OBTAINED,15644);
		end
	end
	
	if (count == 19 and trade:hasItemQty(15642,1) and trade:hasItemQty(15643,1) and trade:hasItemQty(15644,1) and trade:hasItemQty(2289,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Wamoura x6 and 10 Imp. Gold Piece gets you Morrigan's Slops
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15641) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15641);
		else
			player:tradeComplete();
			player:addItem(15641);
			player:messageSpecial(ITEM_OBTAINED,15641);
		end
	end	

--Morrigan's Robe	
	if (count == 11 and trade:hasItemQty(2603,10) and trade:hasItemQty(14427,1)) then --3 Coins of Birth and Seer’s Tunic +1 gets you Nemain's Robe
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14563) or player:hasItem(14562) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14563);
		else
			player:tradeComplete();
			player:addItem(14563);
			player:messageSpecial(ITEM_OBTAINED,14563);
		end
	end
	
	if (count == 11 and trade:hasItemQty(2604,10) and trade:hasItemQty(14499,1)) then --3 Coins of Advancement and Raven Jupon gets you Bodb's Robe 
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14564) or player:hasItem(14562) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14564);
		else
			player:tradeComplete();
			player:addItem(14564);
			player:messageSpecial(ITEM_OBTAINED,14564);
		end
	end
	
	if (count == 11 and trade:hasItemQty(2605,10) and trade:hasItemQty(13749,1)) then --3 Coins of Glory and Royal Cloak gets you Macha's Coat 
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Nemain's, Bodb's, and Macha's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14565) or player:hasItem(14562) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14565);
		else
			player:tradeComplete();
			player:addItem(14565);
			player:messageSpecial(ITEM_OBTAINED,14565);
		end
	end
	
	if (count == 19 and trade:hasItemQty(14563,1) and trade:hasItemQty(14564,1) and trade:hasItemQty(14565,1) and trade:hasItemQty(686,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Wamoura x6 and 10 Imp. Gold Piece gets you Morrigan's Robe
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("The pièce de résistance. Creme de la creme! Here's your Morrigan's Robe!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14562) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14562);
		else
			player:tradeComplete();
			player:addItem(14562);
			player:messageSpecial(ITEM_OBTAINED,14562);
		end
	end	
		
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:PrintToPlayer("Looking for Morrigan's gear eh?");
	player:PrintToPlayer("Well in traditional goblin fashion, I'm going to need payment.");
	player:PrintToPlayer("No idea what I want? Well check the forums! Damn adventurers.");
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

