-----------------------------------
-- Area: Southern San d'Oria
-- NPC: Mystrix
-- Item Upgrade NPC
-- @pos 103 4 56 230
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
require("scripts/zones/Southern_San_dOria/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	local count = trade:getItemCount();
	
--Usukane Gote Gloves
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(14044,1)) then --3 Coins of Birth and Federation Tekko gets you Hoshikazu Tekko
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14970) or player:hasItem(14969) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14970);
		else
			player:tradeComplete();
			player:addItem(14970);
			player:messageSpecial(ITEM_OBTAINED,14970);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(14052,1)) then --3 Coins of Advancement and Luisant Moufles gets you Tsukikazu Gote
		player:PrintToPlayer("Better... but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14971) or player:hasItem(14969) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14971);
		else
			player:tradeComplete();
			player:addItem(14971);
			player:messageSpecial(ITEM_OBTAINED,14971);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(13955,1)) then --3 Coins of Glory and Shinobi tekko +1 gets you Hikazu Gote
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Hoshikazu, Tsukikazu, and Hikazu, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14972) or player:hasItem(14969) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14972);
		else
			player:tradeComplete();
			player:addItem(14972);
			player:messageSpecial(ITEM_OBTAINED,14972);
		end
	end
	
	if (count == 19 and trade:hasItemQty(14970,1) and trade:hasItemQty(14971,1) and trade:hasItemQty(14972,1) and trade:hasItemQty(730,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Bloodwood Lumber x6 and 10 Imp. Gold Piece gets you Usukane Gote
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14969)) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14969);
		else
			player:tradeComplete();
			player:addItem(14969);
			player:messageSpecial(ITEM_OBTAINED,14969);
		end
	end
	
--Usukane Sune-Ate Feet
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(14152,1)) then --3 Coins of Birth and Federation Kyahan gets you Hoshikazu Ledelsens
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15720) or player:hasItem(15719) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15720);
		else
			player:tradeComplete();
			player:addItem(15720);
			player:messageSpecial(ITEM_OBTAINED,15720);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(15342,1)) then --3 Coins of Advancement and Luisant Solerets gets you Tsukikazu Ledelsens
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15721) or player:hasItem(15719) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15721);
		else
			player:tradeComplete();
			player:addItem(15721);
			player:messageSpecial(ITEM_OBTAINED,15721);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(14082,1)) then --3 Coins of Glory and Shinobi Kyahan +1 gets you Hikazu Ledelsens
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Hoshikazu, Tsukikazu, and Hikazu, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15722) or player:hasItem(15719) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15722);
		else
			player:tradeComplete();
			player:addItem(15722);
			player:messageSpecial(ITEM_OBTAINED,15722);
		end
	end
	
	if (count == 19 and trade:hasItemQty(15720,1) and trade:hasItemQty(15721,1) and trade:hasItemQty(15722,1) and trade:hasItemQty(2152,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Marid Leather x6 and 10 Imp. Gold Piece gets you Usukane Sune-Ate
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15719)) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15719);
		else
			player:tradeComplete();
			player:addItem(15719);
			player:messageSpecial(ITEM_OBTAINED,15719);
		end
	end
	
--Usukane Somen Head	
	if (count == 4 and trade:hasItemQty(2603,3) and trade:hasItemQty(13902,1)) then --3 Coins of Birth and Federation Hachimaki gets you Hoshikazu Hachimaki
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16093) or player:hasItem(16092) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16093);
		else
			player:tradeComplete();
			player:addItem(16093);
			player:messageSpecial(ITEM_OBTAINED,16093);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2604,3) and trade:hasItemQty(15206,1)) then --3 Coins of Advancement and Luisant Salade gets you Tsukikazu Jinpachi
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16094) or player:hasItem(16092) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16094);
		else
			player:tradeComplete();
			player:addItem(16094);
			player:messageSpecial(ITEM_OBTAINED,16094);
		end
	end
	
	if (count == 4 and trade:hasItemQty(2605,3) and trade:hasItemQty(13844,1)) then --3 Coins of Glory and Shinobi hachigane +1 gets you Hikazu Kabuto
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Hoshikazu, Tsukikazu, and Hikazu, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16095) or player:hasItem(16092) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16095);
		else
			player:tradeComplete();
			player:addItem(16095);
			player:messageSpecial(ITEM_OBTAINED,16095);
		end
	end
	
	if (count == 19 and trade:hasItemQty(16093,1) and trade:hasItemQty(16094,1) and trade:hasItemQty(16095,1) and trade:hasItemQty(747,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Orichalcum Ingot x6 and 10 Imp. Gold Piece gets you Usukane Somen
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(16092)) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16092);
		else
			player:tradeComplete();
			player:addItem(16092);
			player:messageSpecial(ITEM_OBTAINED,16092);
		end
	end	
	
--Usukane Hizayoroi Legs
	if (count == 6 and trade:hasItemQty(2603,5) and trade:hasItemQty(14270,1)) then --3 Coins of Birth and Federation Sitabaki gets you Hoshikazu Hakama
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15634) or player:hasItem(15625) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15634);
		else
			player:tradeComplete();
			player:addItem(15634);
			player:messageSpecial(ITEM_OBTAINED,15634);
		end
	end
	
	if (count == 6 and trade:hasItemQty(2604,5) and trade:hasItemQty(15403,1)) then --3 Coins of Advancement and Luisant Brayettes gets you Tsukikazu Haidate
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15635) or player:hasItem(15625) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15635);
		else
			player:tradeComplete();
			player:addItem(15635);
			player:messageSpecial(ITEM_OBTAINED,15635);
		end
	end
	
	if (count == 6 and trade:hasItemQty(2605,5) and trade:hasItemQty(12925,1)) then --3 Coins of Glory and Shinobi Hakama +1 gets you Hikazu Hakama
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Hoshikazu, Tsukikazu, and Hikazu, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15636) or player:hasItem(15625) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15636);
		else
			player:tradeComplete();
			player:addItem(15636);
			player:messageSpecial(ITEM_OBTAINED,15636);
		end
	end
	
	if (count == 19 and trade:hasItemQty(15634,1) and trade:hasItemQty(15635,1) and trade:hasItemQty(15636,1) and trade:hasItemQty(2289,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Wamoura x6 and 10 Imp. Gold Piece gets you Usukane Hizayoroi
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("Hope this was worth it. Congrats punk.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(15633)) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,15633);
		else
			player:tradeComplete();
			player:addItem(15633);
			player:messageSpecial(ITEM_OBTAINED,15633);
		end
	end	

--Usukane Haramaki Body	
	if (count == 11 and trade:hasItemQty(2603,10) and trade:hasItemQty(14351,1)) then --3 Coins of Birth and Federation Gi gets you Hoshikazu Gi
		player:PrintToPlayer("Psh. This ain't even the good stuff.");
		player:PrintToPlayer("Take this and get out of here. Come back when you got something better!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14555) or player:hasItem(14554) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14555);
		else
			player:tradeComplete();
			player:addItem(14555);
			player:messageSpecial(ITEM_OBTAINED,14555);
		end
	end
	
	if (count == 11 and trade:hasItemQty(2604,10) and trade:hasItemQty(14445,1)) then --3 Coins of Advancement and Luisant Haubert gets you Tsukikazu Togi
		player:PrintToPlayer("Better but not the best!");
		player:PrintToPlayer("A deal's a deal. Keep it coming.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14556) or player:hasItem(14554) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14556);
		else
			player:tradeComplete();
			player:addItem(14556);
			player:messageSpecial(ITEM_OBTAINED,14556);
		end
	end
	
	if (count == 11 and trade:hasItemQty(2605,10) and trade:hasItemQty(13741,1)) then --3 Coins of Glory and Byrnie +1 gets you Hikazu Hara-Ate
		player:PrintToPlayer("Now this is what I'm talking about.");
		player:PrintToPlayer("Once you have Hoshikazu, Tsukikazu, and Hikazu, bring that back with more payment for something special.");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14557) or player:hasItem(14554) ) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14557);
		else
			player:tradeComplete();
			player:addItem(14557);
			player:messageSpecial(ITEM_OBTAINED,14557);
		end
	end
	
	if (count == 19 and trade:hasItemQty(14555,1) and trade:hasItemQty(14556,1) and trade:hasItemQty(14557,1) and trade:hasItemQty(686,6) and trade:hasItemQty(2187,10)) then --Lv 15/25/35, Wamoura x6 and 10 Imp. Gold Piece gets you Usukane Haramaki
		player:PrintToPlayer("Took you long enough. It was like watching old people ****!");
		player:PrintToPlayer("The pièce de résistance. Creme de la creme! Here's your Usukane Haramaki!");
		if (player:getFreeSlotsCount() < 1 or player:hasItem(14554)) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,14554);
		else
			player:tradeComplete();
			player:addItem(14554);
			player:messageSpecial(ITEM_OBTAINED,14554);
		end
	end	
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:PrintToPlayer("Looking for Usukane gear eh?");
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

