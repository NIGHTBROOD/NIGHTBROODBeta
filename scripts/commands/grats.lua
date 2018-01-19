---------------------------------------------------------------------------------------------------
-- func: @grats <optional target>
-- desc: triggers the congratulation animation normally seen on fireworks
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        player:injectActionPacket(5, 107);
    else
        local targ = GetPlayerByName(target);
        if (targ ~= nil) then
            targ:injectActionPacket(5, 107);
        else
            player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        end
    end
end