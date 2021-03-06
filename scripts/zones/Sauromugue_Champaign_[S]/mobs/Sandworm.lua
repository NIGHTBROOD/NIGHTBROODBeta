-----------------------------------
-- Area: Crystal War Areas
--  MOB: Sandworm
-- Note:  Title Given if Sandworm does not Doomvoid
-----------------------------------
require("scripts/globals/titles");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(dsp.title.SANDWORM_WRANGLER);
	player:addCurrency('bayld', 1);
    player:messageSpecial(BAYLD_OBTAINED, 1);
end;