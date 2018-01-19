---------------------------------------------------------------------------------------------------
-- func: addavatars
-- auth: <Unknown> :: Modded by atom0s.
-- desc: Adds all valid spells to the given target. If no target; then to the current player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        player:addSpell(296);
		player:addSpell(297);
		player:addSpell(298);
		player:addSpell(299);
		player:addSpell(300);
		player:addSpell(301);
		player:addSpell(302);
		player:addSpell(303);
		player:addSpell(304);
		player:addSpell(305);
		player:addSpell(306);
    else
        local targ = GetPlayerByName(target);
        if (targ == nil) then
            player:PrintToPlayer(string.format( "Player named '%s' not found!", target ));
        else
            
		targ:addSpell(296);
		targ:addSpell(297);
		targ:addSpell(298);
		targ:addSpell(299);
		targ:addSpell(300);
		targ:addSpell(301);
		targ:addSpell(302);
		targ:addSpell(303);
		targ:addSpell(304);
		targ:addSpell(305);
		targ:addSpell(306);
        end
    end
end