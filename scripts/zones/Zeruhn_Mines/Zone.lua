-----------------------------------
--
-- Zone: Zeruhn_Mines (172)
--
-----------------------------------
package.loaded["scripts/zones/Zeruhn_Mines/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/quests");
require("scripts/globals/zone");
require("scripts/zones/Zeruhn_Mines/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    if (prevZone == 143) then
        cs = 0x0096;
        if (player:getQuestStatus(BASTOK, BLADE_OF_DARKNESS) == QUEST_ACCEPTED) then
            if (player:getVar("ZeruhnMines_Zeid_CS") == 0) then
                cs = 130;
            elseif (player:hasItem(16607) == false) then
                cs = 0x0083;
            end
        elseif (player:getQuestStatus(BASTOK,BLADE_OF_DEATH) == QUEST_ACCEPTED) then
            if (player:hasItem(16607) == false) then
                cs = 0x0083;
            end
        end
    elseif (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(-270.707,14.159,-20.268,0);
    end
    return cs;
end;

function onConquestUpdate(zone, updatetype)
    local players = zone:getPlayers();

    for name, player in pairs(players) do
        conquestUpdate(zone, player, updatetype, CONQUEST_BASE);
    end
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 130 or csid == 0x0083) then
        if (player:getFreeSlotsCount() > 0) then
            player:addItem(16607);
            player:setVar("ChaosbringerKills", 0);
            player:messageSpecial(ITEM_OBTAINED,16607);
        else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,16607);
        end
        player:setVar("ZeruhnMines_Zeid_CS", 1);
    end
end;
