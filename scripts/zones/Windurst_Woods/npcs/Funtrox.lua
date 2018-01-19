-----------------------------------
-- Area: Windurst Woods (G-7)
-- NPC: Funtrox
-- Item Upgrade NPC
-----------------------------------
package.loaded["scripts/zones/Windurst_Woods/TextIDs"] = nil;
require("scripts/zones/Windurst_Woods/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	local count = trade:getItemCount();

--Marduk Gauntlets	
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(14054,1)) then --3 Coins of Birth and Baron’s Cuffs gets you Anu's Gages 
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14974) or player:hasItem(14973) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14974);
		else
			player:tradeComplete();
			player:addItem(14974);
			player:messageSpecial(ITEM_OBTAINED,14974);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(12793,1)) then --3 Coins of Advancement and Mage’s Cuffs gets you Ea's Dastanas 
		player:PrintToPlayer("Better... but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14975) or player:hasItem(14973) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14975);
		else
			player:tradeComplete();
			player:addItem(14975);
			player:messageSpecial(ITEM_OBTAINED,14975);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(13984,1)) then --3 Coins of Glory and Gold Bangles +1 gets you Enlil's Kolluks
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Anu's, Ea's, and Enlil's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14976) or player:hasItem(14973) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14976);
		else
			player:tradeComplete();
			player:addItem(14976);
			player:messageSpecial(ITEM_OBTAINED,14976);
		end
	end
	
	if (count == 19 and trade:hasItemQty(14974,1) and trade:hasItemQty(14975,1) and trade:hasItemQty(14976,1) and trade:hasItemQty(730,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Bloodwood Lumber x6 and 10 Imp. Gold Piece gets you Marduk's Dastanas
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14973) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14973);
		else
			player:tradeComplete();
			player:addItem(14973);
			player:messageSpecial(ITEM_OBTAINED,14973);
		end
	end
	
--Marduk's Crackows 	
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(15344,1)) then --3 Coins of Birth and Baron's Pigaches gets you Anu's Gaiters
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15724) or player:hasItem(15723) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15724);
		else
			player:tradeComplete();
			player:addItem(15724);
			player:messageSpecial(ITEM_OBTAINED,15724);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(13023,1)) then --3 Coins of Advancement and Ebony Sabot’s gets you Ea's Crackows
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15725) or player:hasItem(15723) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15725);
		else
			player:tradeComplete();
			player:addItem(15725);
			player:messageSpecial(ITEM_OBTAINED,15725);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(14104,1)) then --3 Coins of Glory and Battle Boots +1 gets you Enlil's Crackows 
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Anu's, Ea's, and Enlil's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15726) or player:hasItem(15723) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15726);
		else
			player:tradeComplete();
			player:addItem(15726);
			player:messageSpecial(ITEM_OBTAINED,15726);
		end
	end
	
	if (count == 19 and trade:hasItemQty(15724,1) and trade:hasItemQty(15725,1) and trade:hasItemQty(15726,1) and trade:hasItemQty(2152,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Marid Leather x6 and 10 Imp. Gold Piece gets you Marduk's Crackows 
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15723) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15723);
		else
			player:tradeComplete();
			player:addItem(15723);
			player:messageSpecial(ITEM_OBTAINED,15723);
		end
	end
	
--Marduk's Tiara	
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(15208,1)) then --3 Coins of Birth and Baron’s Chapeau gets you Anu's Tiara 
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16097) or player:hasItem(16096) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16097);
		else
			player:tradeComplete();
			player:addItem(16097);
			player:messageSpecial(ITEM_OBTAINED,16097);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(13834,1)) then --3 Coins of Advancement and Mage’s Hat gets you Ea's Tiara
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16098) or player:hasItem(16096) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16098);
		else
			player:tradeComplete();
			player:addItem(16098);
			player:messageSpecial(ITEM_OBTAINED,16098);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(13849,1)) then --3 Coins of Glory and Gold Hairpin +1 gets you Enlil's Tiara
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Anu's, Ea's, and Enlil's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16099) or player:hasItem(16096) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16099);
		else
			player:tradeComplete();
			player:addItem(16099);
			player:messageSpecial(ITEM_OBTAINED,16099);
		end
	end
	
	if (count == 19 and trade:hasItemQty(16097,1) and trade:hasItemQty(16098,1) and trade:hasItemQty(16099,1) and trade:hasItemQty(747,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Orichalcum Ingot x6 and 10 Imp. Gold Piece gets you Marduk's Tiara
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16096) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16096);
		else
			player:tradeComplete();
			player:addItem(16096);
			player:messageSpecial(ITEM_OBTAINED,16096);
		end
	end	
	
--Marduk's Shalwar 	
	if (count == 6 and trade:hasItemQty(2603,5) and trade:hasItemQty(15405,1)) then --5 Coins of Birth and Baron’s Slops  gets you Anu's Brais  
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15638) or player:hasItem(15637) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15638);
		else
			player:tradeComplete();
			player:addItem(15638);
			player:messageSpecial(ITEM_OBTAINED,15638);
		end
	end
	
	if (count == 6 and trade:hasItemQty(2604,5) and trade:hasItemQty(12918,1)) then --5 Coins of Advancement and Mage’s Slops gets you Ea's Brais
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15639) or player:hasItem(15637) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15639);
		else
			player:tradeComplete();
			player:addItem(15639);
			player:messageSpecial(ITEM_OBTAINED,15639);
		end
	end
	
	if (count == 6 and trade:hasItemQty(2605,5) and trade:hasItemQty(14237,1)) then --5 Coins of Glory and Battle Hose +1  gets you Enlil's Brayettes
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Anu's, Ea's, and Enlil's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15640) or player:hasItem(15637) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15640);
		else
			player:tradeComplete();
			player:addItem(15640);
			player:messageSpecial(ITEM_OBTAINED,15640);
		end
	end
	
	if (count == 19 and trade:hasItemQty(15638,1) and trade:hasItemQty(15639,1) and trade:hasItemQty(15640,1) and trade:hasItemQty(2289,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Wamoura x6 and 10 Imp. Gold Piece gets you Marduk's Shalwar 
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15637) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15637);
		else
			player:tradeComplete();
			player:addItem(15637);
			player:messageSpecial(ITEM_OBTAINED,15637);
		end
	end	

--Marduk's Jubbah	
	if (count == 11 and trade:hasItemQty(2603,10) and trade:hasItemQty(14447,1)) then --10 Coins of Birth and Baron’s Saio gets you Anu's Doublet  
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14559) or player:hasItem(14558) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14559);
		else
			player:tradeComplete();
			player:addItem(14559);
			player:messageSpecial(ITEM_OBTAINED,14559);
		end
	end
	
	if (count == 11 and trade:hasItemQty(2604,10) and trade:hasItemQty(13745,1)) then --10 Coins of Advancement and Justaucorps +1 gets you Ea's Doublet
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14560) or player:hasItem(14558) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14560);
		else
			player:tradeComplete();
			player:addItem(14560);
			player:messageSpecial(ITEM_OBTAINED,14560);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,10) and trade:hasItemQty(12628,1)) then --10 Coins of Glory and Battle Jupon +1 gets you Enlil's Gambison
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Anu's, Ea's, and Enlil's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14561) or player:hasItem(14558) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14561);
		else
			player:tradeComplete();
			player:addItem(14561);
			player:messageSpecial(ITEM_OBTAINED,14561);
		end
	end
	
	if (count == 19 and trade:hasItemQty(14559,1) and trade:hasItemQty(14560,1) and trade:hasItemQty(14561,1) and trade:hasItemQty(686,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Wamoura x6 and 10 Imp. Gold Piece gets you Marduk's Jubbah
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("The pièce de résistance. Creme de la creme! Here's your Marduk's Jubbah!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14558) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14558);
		else
			player:tradeComplete();
			player:addItem(14558);
			player:messageSpecial(ITEM_OBTAINED,14558);
		end
	end	
		
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:PrintToPlayer("Looking for Marduk's gear eh?");
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
