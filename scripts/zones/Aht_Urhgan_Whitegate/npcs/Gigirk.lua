-----------------------------------
-- Area: Aht Urhgan Whitegate
-- NPC: Gigirk
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrade(player,npc,trade)

		
    if (trade:hasItemQty(2187,1)) then -- imp gold piece for all attachments
	
	        local attachments = player:getVar("PUP_Attachments");
            local attachmentStatus = player:getVar("PUP_AttachmentStatus");
            local unlockedAttachments = player:getVar("PUP_AttachmentUnlock");
            player:unlockAttachment(8198);
            player:setVar("PUP_AttachmentStatus", 0);
            player:setVar("PUP_Attachments", attachments+1);
            player:setVar("PUP_AttachmentReady", 0);
            player:setVar("PUP_AttachmentUnlock", unlockedAttachments+32);
            player:messageSpecial(AUTOMATON_SPIRITREAVER_UNLOCK);
            player:unlockAttachment(8197);
            player:setVar("PUP_AttachmentStatus", 0);
            player:setVar("PUP_Attachments", attachments+1);
            player:setVar("PUP_AttachmentReady", 0);
            player:setVar("PUP_AttachmentUnlock", unlockedAttachments+16);
            player:messageSpecial(AUTOMATON_SOULSOOTHER_UNLOCK);
            player:unlockAttachment(8227);
            player:unlockAttachment(8196);
            player:setVar("PUP_AttachmentStatus", 0);
            player:setVar("PUP_Attachments", attachments+1);
            player:setVar("PUP_AttachmentUnlock", unlockedAttachments+8);
            player:setVar("PUP_AttachmentReady", 0);
            player:messageSpecial(AUTOMATON_STORMWAKER_UNLOCK);
            player:unlockAttachment(8226);
            player:unlockAttachment(8195);
            player:setVar("PUP_AttachmentStatus", 0);
            player:setVar("PUP_Attachments", attachments+1);
            player:setVar("PUP_AttachmentUnlock", unlockedAttachments+4);
            player:setVar("PUP_AttachmentReady", 0);
            player:messageSpecial(AUTOMATON_SHARPSHOT_UNLOCK);
            player:unlockAttachment(8225);
            player:unlockAttachment(8194);
            player:setVar("PUP_AttachmentStatus", 0);
            player:setVar("PUP_Attachments", attachments+1);
            player:setVar("PUP_AttachmentUnlock", unlockedAttachments+2);
            player:setVar("PUP_AttachmentReady", 0);
            player:messageSpecial(AUTOMATON_VALOREDGE_UNLOCK);
            player:startEvent(664);
			player:tradeComplete();
			end

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

