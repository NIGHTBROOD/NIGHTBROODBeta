---------------------------------------------------------------------------------------------------
-- func: sanction
-- desc: Grants sanction to the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
	    player:delStatusEffect(EFFECT_SIGIL);
	    player:delStatusEffect(EFFECT_SANCTION);
	    player:delStatusEffect(EFFECT_SIGNET);
	    player:addStatusEffect(EFFECT_SANCTION,0,0,18000);
end