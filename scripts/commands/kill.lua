---------------------------------------------------------------------------------------------------
-- func: @kill <victim> <exp loss>
-- auth: Forgottenandlost
-- desc: Murders targeted player. Sometimes GM jail just isn't enough.
--
-- TODO: Alter method of applying death to ensure no exp loss without specifying an amount.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "si"
};

function onTrigger(player, victim, exploss)

    if (exploss == nil) then
        exploss = 0;
    end

    if (victim == nil) then
        player:PrintToPlayer( "Must specify a Victim!" );
        player:PrintToPlayer( "@kill <victim> <exp loss>" );
    else
        local targ = GetPlayerByName(victim);
        if (targ ~= nil) then
            -- Begin Wrath of the Gods Animation
           targ:injectActionPacket( 5, 271 );
		   targ:injectActionPacket( 5, 202 );
            targ:injectActionPacket( 5, 216 );
            -- End Wrath of the Gods Animation
            targ:setHP(0);
            targ:delExp(exploss);
        else
            player:PrintToPlayer( string.format( "Victim named '%s' not found!", victim ) );
            player:PrintToPlayer( "@kill <victim> <exp loss>" );
        end
    end
end;