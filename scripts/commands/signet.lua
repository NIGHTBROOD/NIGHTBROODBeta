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
	    player:delStatusEffect(dsp.effect.SIGNET);
	    player:delStatusEffect(dsp.effect.SANCTION);
	    player:delStatusEffect(dsp.effect.SIGIL);
	    player:addStatusEffect(dsp.effect.SIGNET,0,0,18000);
end