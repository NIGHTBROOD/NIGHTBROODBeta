---------------------------------------------------------------------------------------------------
-- func: event <amount> <target player>
-- desc: Adds the specified amount to the player bayld.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "is"
};

function onTrigger(player,amount,target)
    local targ = nil
    
    -- "target" will only be nil if no target was specified
    -- "targ" will only be nil if an invalid target was specified
    if (target ~= nil) then
        targ = GetPlayerByName(target);
    else
        player:PrintToPlayer( "@event <bayld amount> <target player>" );
    end

    if (targ == nil) then
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        return
    end

    -- Making sure currency type valid before adding.
    if (targ:getCurrency("bayld") ~= nil) then
        if (amount == nil) then
            amount = 1;
            return
        end
        targ:addCurrency("bayld",amount);
        targ:PrintToPlayer( string.format( "You were awarded %i bayld!", amount));
        printf ( "GM: %s",player:getName() );
        printf ( "Command: event" );
        printf ( "Amount: %i ",amount );
        printf ( "Target: %s \n",targ:getName() );
    end
end;