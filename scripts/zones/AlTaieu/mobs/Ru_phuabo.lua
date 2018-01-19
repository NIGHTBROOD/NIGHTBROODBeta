-----------------------------------
-- Area: Al'Taieu
--  MOB: Ru'Phuabo
-----------------------------------

require("scripts/globals/missions");
require("scripts/globals/status");
mixins = { require("scripts/mixins/families/phuabo") }
-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:hideName(false);
    mob:untargetable(false);	
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobDisengage
-----------------------------------

function onMobDisengage(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;
