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
	    player:delStatusEffect(dsp.effect.SIGNET);
	    player:delStatusEffect(dsp.effect.SANCTION);
	    player:delStatusEffect(dsp.effect.SIGIL);
	    player:addStatusEffect(dsp.effect.SANCTION,0,0,18000);
end