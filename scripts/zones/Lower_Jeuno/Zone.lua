-----------------------------------
--
-- Zone: Lower_Jeuno (245)
--
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Lower_Jeuno/globals");
require("scripts/zones/Lower_Jeuno/TextIDs");
require("scripts/zones/Lower_Jeuno/MobIDs");
require("scripts/globals/conquest");
require("scripts/globals/keyitems");
require("scripts/globals/missions");
require("scripts/globals/pathfind");
require("scripts/globals/settings");
require("scripts/globals/status");
-----------------------------------

function onInitialize(zone)
    zone:registerRegion(1, 23, 0, -43, 44, 7, -39); -- Inside Tenshodo HQ
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    
    local month = tonumber(os.date("%m"));
    local day = tonumber(os.date("%d"));
    -- Retail start/end dates vary, I am going with Dec 5th through Jan 5th.
    if ((month == 12 and day >= 5) or (month == 1 and day <= 5)) then
        player:ChangeMusic(0,239);
        player:ChangeMusic(1,239);
        -- No need for an 'else' to change it back outside these dates as a re-zone will handle that.
    end

    -- MOG HOUSE EXIT
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(41.2,-5, 84,85);
        if (player:getMainJob() ~= player:getVar("PlayerMainJob")) then
            cs = 30004;
        end
        player:setVar("PlayerMainJob",0);
    elseif (player:getCurrentMission(COP) == TENDING_AGED_WOUNDS and player:getVar("PromathiaStatus") == 0) then
        player:setVar("PromathiaStatus",1);
        cs = 70;
    elseif (ENABLE_ACP == 1 and player:getCurrentMission(ACP) == A_CRYSTALLINE_PROPHECY and player:getMainLvl() >=10) then
        cs = 10094;
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
    if (region:GetRegionID() == 1) then
        if (player:getCurrentMission(ZILART) == AWAKENING and player:getVar("ZilartStatus") < 2) then
            player:startEvent(20);
        end
    end
end;

function onGameHour(zone)
    local VanadielHour = VanadielHour();
    local playerOnQuestId = GetServerVariable("[JEUNO]CommService");
    local playerOnQuest = GetPlayerByID(playerOnQuestId);

    -- Community Service Quest
    -- 7AM: it's daytime. turn off all the lights
    if (VanadielHour == 7) then
        for i=0,11 do
            local lamp = GetNPCByID(LOWER_JEUNO_STREETLAMP_OFFSET + i);
            lamp:setAnimation(dsp.anim.CLOSE_DOOR);
        end

    -- 8PM: make quest available
    -- notify anyone in zone with membership card that zauko is recruiting
    elseif (VanadielHour == 20) then
        SetServerVariable("[JEUNO]CommService",0);
        local players = zone:getPlayers();
        for name, player in pairs(players) do
            if player:hasKeyItem(dsp.ki.LAMP_LIGHTERS_MEMBERSHIP_CARD) then
                player:messageSpecial(ZAUKO_IS_RECRUITING);
            end
        end

    -- 9PM: notify the person on the quest that they can begin lighting lamps
    elseif (VanadielHour == 21) then
        local playerOnQuest = GetPlayerByID(GetServerVariable("[JEUNO]CommService"));
        if playerOnQuest then
            playerOnQuest:startEvent(114);
        end

    -- 1AM: if nobody has accepted the quest yet, NPC Vhana Ehgaklywha takes up the task
    -- she starts near Zauko and paths all the way to the Rolanberry exit.
    -- PATHFLAG_WALLHACK because she gets stuck on some terrain otherwise.
    elseif (VanadielHour == 1) then
        if (playerOnQuestId == 0) then
            local npc = GetNPCByID(VHANA_EHGAKLYWHA);
            npc:clearPath();
            npc:setStatus(0);
            npc:initNpcAi();
            npc:setPos(pathfind.first(LOWER_JEUNO.lampPath));
            npc:pathThrough(pathfind.fromStart(LOWER_JEUNO.lampPath), bit.bor(PATHFLAG_RUN,PATHFLAG_WALLHACK));
        end

    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 30004 and option == 0) then
        player:setHomePoint();
        player:messageSpecial(HOMEPOINT_SET);
    elseif (csid == 20) then
        player:setVar("ZilartStatus", player:getVar("ZilartStatus") + 2);
    elseif (csid == 10094) then
        player:completeMission(ACP,A_CRYSTALLINE_PROPHECY);
        player:addMission(ACP,THE_ECHO_AWAKENS);
    end
end;
