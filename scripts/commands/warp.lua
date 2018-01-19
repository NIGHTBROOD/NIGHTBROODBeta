---------------------------------------------------------------------------------------------------
-- func: warp
-- desc: Sends the target to their homepoint.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, target)
	local timer = player:getVar("Homepoint_Timer");
    if (target == nil) then
        target = player:getName();
    end

    local targ = GetPlayerByName( target );
	if (targ ~= nil) then
		if (player:getZoneID() == 131) then
			player:PrintToPlayer( "Nice try." );
		elseif (timer > os.time()) then
				player:PrintToPlayer( "You are trying to teleport to your home point too soon. Run you lazy bum!" );
		else
			targ:warp();
			player:setVar("Homepoint_Timer",os.time()+3600);
		end
		else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end