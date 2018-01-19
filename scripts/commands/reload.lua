---------------------------------------------------------------------------------------------------
-- func: reload
-- desc: Reloads the player to zone by teleporting to the same POS. Used after @release
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, target)

    local timer = player:getVar("Reload_Timer");
    local gmlvl = player:getGMLevel();
    
    if (timer > os.time()) then
        player:PrintToPlayer( "You are using this command too often." );
    else    
        player:setPos( player:getXPos(), player:getYPos(), player:getZPos(), 0, player:getZoneID() );
        if ( gmlvl == 0 ) then
            player:setVar("Reload_Timer",os.time()+600);
        end
    end
    
end