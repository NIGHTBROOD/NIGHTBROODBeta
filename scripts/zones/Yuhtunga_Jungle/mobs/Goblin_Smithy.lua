-----------------------------------
-- Area: Yuhtunga Jungle
--  MOB: Goblin Smithy
-----------------------------------
require("scripts/globals/fieldsofvalor");
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkRegime(player,mob,125,2);
end;
