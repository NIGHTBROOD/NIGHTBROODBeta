---------------------------------------------------------------------------------------------------
-- func: checkcurrency <currency type> <target player>
-- desc: Adds the specified currency to the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "ss"
};

function onTrigger(player,currency,target)
    local targ = nil

    if (currency == nil) then
        player:PrintToPlayer( "You must enter a valid currency." );
        player:PrintToPlayer( "@checkcurrency <currency type> <target player>" );
        return
    end

    -- "target" will only be nil if no target was specified
    -- "targ" will only be nil if an invalid target was specified
    if (target ~= nil) then
        targ = GetPlayerByName(target);
    else
        targ = player;
    end

    if (targ == nil) then
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        return
    end

    -- Making sure currency type valid before adding.
    if (targ:getCurrency(currency) ~= nil) then
        amount = targ:getCurrency(currency);
        player:PrintToPlayer( string.format( "%s is %i", currency, amount ) );
    else
        player:PrintToPlayer( string.format( "Currency of type '%s' not found!", currency ) );
    end

end;