-----------------------------------
-- Area: Bastok Markets (I-7)
-- NPC: Specilox
-- Item Upgrade NPC
-----------------------------------
package.loaded["scripts/zones/Bastok_Markets/TextIDs"] = nil;
require("scripts/zones/Bastok_Markets/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	local count = trade:getItemCount();

--Ares Gauntlets	
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(14032,1)) then --3 Coins of Birth and Republic Mittens gets you Enyo's Gauntlets
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14962) or player:hasItem(14961) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14962);
		else
			player:tradeComplete();
			player:addItem(14962);
			player:messageSpecial(ITEM_OBTAINED,14962);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(14040,1)) then --3 Coins of Advancement and Republic Finger Gauntlets gets you Phobos's Gauntlets
		player:PrintToPlayer("Better... but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14963) or player:hasItem(14961) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14963);
		else
			player:tradeComplete();
			player:addItem(14963);
			player:messageSpecial(ITEM_OBTAINED,14963);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(14036,1)) then --3 Coins of Glory and Iron Musketeer's Gauntlets +2 gets you Deimos's Gauntlets
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Enyo's, Phobos's, and Deimos's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14964) or player:hasItem(14961) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14964);
		else
			player:tradeComplete();
			player:addItem(14964);
			player:messageSpecial(ITEM_OBTAINED,14964);
		end
	end
	
	if (count == 19 and trade:hasItemQty(14962,1) and trade:hasItemQty(14963,1) and trade:hasItemQty(14964,1) and trade:hasItemQty(730,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Bloodwood Lumber x6 and 10 Imp. Gold Piece gets you Ares's Gauntlets
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14961) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14961);
		else
			player:tradeComplete();
			player:addItem(14961);
			player:messageSpecial(ITEM_OBTAINED,14961);
		end
	end
	
--Ares Sollerets	
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(14140,1)) then --3 Coins of Birth and Republic Leggings gets you Enyo's Leggings
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15712) or player:hasItem(15711) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15712);
		else
			player:tradeComplete();
			player:addItem(15712);
			player:messageSpecial(ITEM_OBTAINED,15712);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(14144,1)) then --3 Coins of Advancement and Iron Musketeer Sabatons +2 gets you Phobos's Sabatons
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15713) or player:hasItem(15711) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15713);
		else
			player:tradeComplete();
			player:addItem(15713);
			player:messageSpecial(ITEM_OBTAINED,15713);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(14138,1)) then --3 Coins of Glory and Royal Knight's Sollerets +2 gets you Deimos's Leggings
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Enyo's, Phobos's, and Deimos's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15714) or player:hasItem(15711) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15714);
		else
			player:tradeComplete();
			player:addItem(15714);
			player:messageSpecial(ITEM_OBTAINED,15714);
		end
	end
	
	if (count == 19 and trade:hasItemQty(15712,1) and trade:hasItemQty(15713,1) and trade:hasItemQty(15714,1) and trade:hasItemQty(2152,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Marid Leather x6 and 10 Imp. Gold Piece gets you Ares's Sollerets
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15711) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15711);
		else
			player:tradeComplete();
			player:addItem(15711);
			player:messageSpecial(ITEM_OBTAINED,15711);
		end
	end
	
--Ares Mask	
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(13890,1)) then --3 Coins of Birth and Republic Cap gets you Enyo's Mask
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16085) or player:hasItem(16084) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16085);
		else
			player:tradeComplete();
			player:addItem(16085);
			player:messageSpecial(ITEM_OBTAINED,16085);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(13892,1)) then --3 Coins of Advancement and Kingdom Helm gets you Phobos's Mask
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16086) or player:hasItem(16084) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16086);
		else
			player:tradeComplete();
			player:addItem(16086);
			player:messageSpecial(ITEM_OBTAINED,16086);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(13894,1)) then --3 Coins of Glory and Iron Musketeer armet +2 gets you Deimos's Mask
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Enyo's, Phobos's, and Deimos's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16087) or player:hasItem(16084) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16087);
		else
			player:tradeComplete();
			player:addItem(16087);
			player:messageSpecial(ITEM_OBTAINED,16087);
		end
	end
	
	if (count == 19 and trade:hasItemQty(16085,1) and trade:hasItemQty(16086,1) and trade:hasItemQty(16087,1) and trade:hasItemQty(747,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Orichalcum Ingot x6 and 10 Imp. Gold Piece gets you Ares's Mask
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16084) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16084);
		else
			player:tradeComplete();
			player:addItem(16084);
			player:messageSpecial(ITEM_OBTAINED,16084);
		end
	end	
	
--Ares Flanchard	
	if (count == 6 and trade:hasItemQty(2603,5) and trade:hasItemQty(14266,1)) then --3 Coins of Birth and Kingdom Trousers gets you Enyo's Cuisses
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15626) or player:hasItem(15625) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15626);
		else
			player:tradeComplete();
			player:addItem(15626);
			player:messageSpecial(ITEM_OBTAINED,15626);
		end
	end
	
	if (count == 6 and trade:hasItemQty(2604,5) and trade:hasItemQty(14268,1)) then --3 Coins of Advancement and Republic Cuisses gets you Phobos's Cuisses
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15627) or player:hasItem(15625) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15627);
		else
			player:tradeComplete();
			player:addItem(15627);
			player:messageSpecial(ITEM_OBTAINED,15627);
		end
	end
	
	if (count == 6 and trade:hasItemQty(2605,5) and trade:hasItemQty(14212,1)) then --3 Coins of Glory and Gilt Cuisses gets you Deimos's Cuisses
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Enyo's, Phobos's, and Deimos's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15628) or player:hasItem(15625) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15628);
		else
			player:tradeComplete();
			player:addItem(15628);
			player:messageSpecial(ITEM_OBTAINED,15628);
		end
	end
	
	if (count == 19 and trade:hasItemQty(15626,1) and trade:hasItemQty(15627,1) and trade:hasItemQty(15628,1) and trade:hasItemQty(2289,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Wamoura x6 and 10 Imp. Gold Piece gets you Ares's Flanchard
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15625) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15625);
		else
			player:tradeComplete();
			player:addItem(15625);
			player:messageSpecial(ITEM_OBTAINED,15625);
		end
	end	

--Ares Cuirass	
	if (count == 11 and trade:hasItemQty(2603,10) and trade:hasItemQty(13734,1)) then --3 Coins of Birth and Scorpion Harness +1 gets you Enyo's Breastplate
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14547) or player:hasItem(14546) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14547);
		else
			player:tradeComplete();
			player:addItem(14547);
			player:messageSpecial(ITEM_OBTAINED,14547);
		end
	end
	
	if (count ==11 and trade:hasItemQty(2604,10) and trade:hasItemQty(13735,1)) then --3 Coins of Advancement and Haubergeon +1 gets you Phobos's Cuirass
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14548) or player:hasItem(14546) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14548);
		else
			player:tradeComplete();
			player:addItem(14548);
			player:messageSpecial(ITEM_OBTAINED,14548);
		end
	end
	
	if (count == 11 and trade:hasItemQty(2605,10) and trade:hasItemQty(13793,1)) then --3 Coins of Glory and Hauberk +1 gets you Deimos's Cuirass
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Enyo's, Phobos's, and Deimos's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14549) or player:hasItem(14546) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14549);
		else
			player:tradeComplete();
			player:addItem(14549);
			player:messageSpecial(ITEM_OBTAINED,14549);
		end
	end
	
	if (count == 19 and trade:hasItemQty(14547,1) and trade:hasItemQty(14548,1) and trade:hasItemQty(14549,1) and trade:hasItemQty(686,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Wamoura x6 and 10 Imp. Gold Piece gets you Ares's Cuirass
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("The pièce de résistance. Creme de la creme! Here's your Ares' Cuirass!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14546) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14546);
		else
			player:tradeComplete();
			player:addItem(14546);
			player:messageSpecial(ITEM_OBTAINED,14546);
		end
	end	
		
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:PrintToPlayer("Looking for Ares gear eh?");
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

