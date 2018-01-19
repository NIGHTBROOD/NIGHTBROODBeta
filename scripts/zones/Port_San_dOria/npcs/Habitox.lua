-----------------------------------
-- Area: Port San d'Oria (I-10)
-- NPC: Habitrox
-- Item Upgrade NPC
-----------------------------------
package.loaded["scripts/zones/Port_San_dOria/TextIDs"] = nil;
require("scripts/zones/Port_San_dOria/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	local count = trade:getItemCount();
	
--Skadi Bazubands Gloves
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(14038,1)) then --3 Coins of Birth and Kingdom Gloves gets you Njord's Gloves
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14966) or player:hasItem(14965) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14966);
		else
			player:tradeComplete();
			player:addItem(14966);
			player:messageSpecial(ITEM_OBTAINED,14966);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(14865,1)) then --3 Coins of Advancement and Noct Gloves +1 gets you Freyr's Gloves
		player:PrintToPlayer("Better... but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14967) or player:hasItem(14965) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14967);
		else
			player:tradeComplete();
			player:addItem(14967);
			player:messageSpecial(ITEM_OBTAINED,14967);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(14939,1)) then --3 Coins of Glory and 	Akinji Bazubands gets you Freya's Gloves
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Njord's, Freyr's, and Freya's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14968) or player:hasItem(14965) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14968);
		else
			player:tradeComplete();
			player:addItem(14968);
			player:messageSpecial(ITEM_OBTAINED,14968);
		end
	end
	
	if (count == 19 and trade:hasItemQty(14966,1) and trade:hasItemQty(14967,1) and trade:hasItemQty(14968,1) and trade:hasItemQty(730,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Bloodwood Lumber x6 and 10 Imp. Gold Piece gets you Skadi's Bazubands
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14965) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14965);
		else
			player:tradeComplete();
			player:addItem(14965);
			player:messageSpecial(ITEM_OBTAINED,14965);
		end
	end
	
--Skadi Jambeaux Feet
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(14146,1)) then --3 Coins of Birth and Kingdom Boots gets you Njord's Ledelsens
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15716) or player:hasItem(15715) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15716);
		else
			player:tradeComplete();
			player:addItem(15716);
			player:messageSpecial(ITEM_OBTAINED,15716);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(14207,1)) then --3 Coins of Advancement and Noct Gaiters +1 gets you Freyr's Ledelsens
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15717) or player:hasItem(15715) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15717);
		else
			player:tradeComplete();
			player:addItem(15717);
			player:messageSpecial(ITEM_OBTAINED,15717);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(15694,1)) then --3 Coins of Glory and Akinji Nails gets you Freya's Ledelsens
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Njord's, Freyr's, and Freya's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15718) or player:hasItem(15715) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15718);
		else
			player:tradeComplete();
			player:addItem(15718);
			player:messageSpecial(ITEM_OBTAINED,15718);
		end
	end
	
	if (count == 19 and trade:hasItemQty(15716,1) and trade:hasItemQty(15717,1) and trade:hasItemQty(15718,1) and trade:hasItemQty(2152,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Marid Leather x6 and 10 Imp. Gold Piece gets you Skadi's Jambeaux
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15715) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15715);
		else
			player:tradeComplete();
			player:addItem(15715);
			player:messageSpecial(ITEM_OBTAINED,15715);
		end
	end
	
--Skadi Visor Head	
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(13896,1)) then --3 Coins of Birth and Kingdom Bandana gets you Njord's Mask
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16089) or player:hasItem(16088) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16089);
		else
			player:tradeComplete();
			player:addItem(16089);
			player:messageSpecial(ITEM_OBTAINED,16089);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(15172,1)) then --3 Coins of Advancement and Noct Beret +1 gets you Freyr's Mask
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16090) or player:hasItem(16088) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16090);
		else
			player:tradeComplete();
			player:addItem(16090);
			player:messageSpecial(ITEM_OBTAINED,16090);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(16068,1)) then --3 Coins of Glory and Akinji Khud gets you Freya's Mask
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Njord's, Freyr's, and Freya's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16091) or player:hasItem(16088) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16091);
		else
			player:tradeComplete();
			player:addItem(16091);
			player:messageSpecial(ITEM_OBTAINED,16091);
		end
	end
	
	if (count == 19 and trade:hasItemQty(16089,1) and trade:hasItemQty(16090,1) and trade:hasItemQty(16091,1) and trade:hasItemQty(747,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Orichalcum Ingot x6 and 10 Imp. Gold Piece gets you Skadi's Visor
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16088) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16088);
		else
			player:tradeComplete();
			player:addItem(16088);
			player:messageSpecial(ITEM_OBTAINED,16088);
		end
	end	
	
--Skadi Chausses Legs
	if (count == 6 and trade:hasItemQty(2603,5) and trade:hasItemQty(14266,1)) then --3 Coins of Birth and Kingdom Trousers gets you Njord's Trousers
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15630) or player:hasItem(15625) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15630);
		else
			player:tradeComplete();
			player:addItem(15630);
			player:messageSpecial(ITEM_OBTAINED,15630);
		end
	end
	
	if (count == 6 and trade:hasItemQty(2604,5) and trade:hasItemQty(14333,1)) then --3 Coins of Advancement and Noct Brais +1 gets you Freyr's Trousers
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15631) or player:hasItem(15625) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15631);
		else
			player:tradeComplete();
			player:addItem(15631);
			player:messageSpecial(ITEM_OBTAINED,15631);
		end
	end
	
	if (count == 6 and trade:hasItemQty(2605,5) and trade:hasItemQty(15608,1)) then --3 Coins of Glory and Akinji Salvars gets you Freya's Trousers
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Njord's, Freyr's, and Freya's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15632) or player:hasItem(15625) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15632);
		else
			player:tradeComplete();
			player:addItem(15632);
			player:messageSpecial(ITEM_OBTAINED,15632);
		end
	end
	
	if (count == 19 and trade:hasItemQty(15630,1) and trade:hasItemQty(15631,1) and trade:hasItemQty(15632,1) and trade:hasItemQty(2289,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Wamoura x6 and 10 Imp. Gold Piece gets you Skadi's Chausses
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15629) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15629);
		else
			player:tradeComplete();
			player:addItem(15629);
			player:messageSpecial(ITEM_OBTAINED,15629);
		end
	end	

--Skadi Cuirie Body	
	if (count == 11 and trade:hasItemQty(2603,10) and trade:hasItemQty(13710,1)) then --3 Coins of Birth and Brigandine +1 gets you Njord's Jerkin
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14551) or player:hasItem(14550) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14551);
		else
			player:tradeComplete();
			player:addItem(14551);
			player:messageSpecial(ITEM_OBTAINED,14551);
		end
	end
	
	if (count == 11 and trade:hasItemQty(2604,10) and trade:hasItemQty(11351,1)) then --3 Coins of Advancement and Alacer aketon +1 gets you Freyr's Jerkin
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14552) or player:hasItem(14550) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14552);
		else
			player:tradeComplete();
			player:addItem(14552);
			player:messageSpecial(ITEM_OBTAINED,14552);
		end
	end
	
	if (count == 11 and trade:hasItemQty(2605,10) and trade:hasItemQty(14540,1)) then --3 Coins of Glory and Kyudogi +1 gets you Freya's Jerkin
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Njord's, Freyr's, and Freya's, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14553) or player:hasItem(14550) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14553);
		else
			player:tradeComplete();
			player:addItem(14553);
			player:messageSpecial(ITEM_OBTAINED,14553);
		end
	end
	
	if (count == 19 and trade:hasItemQty(14551,1) and trade:hasItemQty(14552,1) and trade:hasItemQty(14553,1) and trade:hasItemQty(686,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Wamoura x6 and 10 Imp. Gold Piece gets you Skadi's Cuirie
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("The pièce de résistance. Creme de la creme! Here's your Skadi's Cuirie!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14550) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14550);
		else
			player:tradeComplete();
			player:addItem(14550);
			player:messageSpecial(ITEM_OBTAINED,14550);
		end
	end	
		
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:PrintToPlayer("Looking for Skadi gear eh?");
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

