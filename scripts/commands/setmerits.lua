---------------------------------------------------------------------------------------------------
-- func: setmerits <amount> <player>
-- desc: Sets the target players merit count.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "is"
};

function onTrigger(player, amount, target)
    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName(target);
    end

    if (amount == nil) then
        player:PrintToPlayer("You must enter a valid amount.");
        player:PrintToPlayer("@setmerits <amount> <player>");
        return;
    end

    if (targ == nil) then
        player:PrintToPlayer(string.format("Player named '%s' not found!", target));
        player:PrintToPlayer("@setmerits <amount> <player>");
        return;
    end

    targ:setMerits(amount);
        printf ( "GM: %s",player:getName() );
        printf ( "Command: setmerits" );
        printf ( "Amount: %i ",amount );
        printf ( "Target: %s \n",targ:getName() );
	targ:PrintToPlayer(string.format("You were awarded %i merits!", amount));
end;