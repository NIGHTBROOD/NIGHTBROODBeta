---------------------------------------------------------------------------------------------------
-- func: homepoint
-- desc: Sends the target to their homepoint.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        target = player:getName();
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        targ:warp();
            printf ( "GM: %s",player:getName() );
            printf ( "Command: Homepoint" );
            printf ( "Target: %s \n",targ:getName() );
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end