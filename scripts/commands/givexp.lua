---------------------------------------------------------------------------------------------------
-- func: givexp <amount> <player>
-- desc: Gives the GM or target player experience points.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "is"
};

function onTrigger(player, amount, target)
    if (amount == nil or amount <= 0) then
        player:PrintToPlayer("You must enter a valid amount.");
        player:PrintToPlayer( "@givexp <amount> <player>" );
        return;
    end

    if (target == nil) then
        player:addExp(amount);
            printf ( "GM: %s",player:getName() );
            printf ( "Command: givexp" );
            printf ( "Amount: %i ",amount );
            printf ( "Target: Self \n" );
        -- print( 'Exp amount: ' .. tostring( amount ) );
    else
        local targ = GetPlayerByName(target);
        if (targ ~= nil) then
            targ:addExp(amount);
                printf ( "GM: %s",player:getName() );
                printf ( "Command: givexp" );
                printf ( "Amount: %i ",amount );
                printf ( "Target: %s \n",targ:getName() );
            -- print( 'Exp amount: ' .. tostring( amount ) );
            player:PrintToPlayer( string.format( "Gave %i exp to player '%s' ", amount, target ) );
			targ:PrintToPlayer( string.format( "Gave %i exp to you '%s' ", amount, target ) );
        else
            player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
            player:PrintToPlayer( "@givexp <amount> <player>" );
        end
    end
end;