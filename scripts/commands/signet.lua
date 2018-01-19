---------------------------------------------------------------------------------------------------
-- func: signet
-- desc: Grants Signet to the player
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
	    player:addStatusEffect(EFFECT_SIGNET,0,0,18000);
end