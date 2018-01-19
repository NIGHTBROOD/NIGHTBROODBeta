-----------------------------------
-- Area: The Garden of Ru'Hmet
--  MOB: Qn_aern RNG (Ix'Aern DRK)
-----------------------------------

package.loaded["scripts/zones/The_Garden_of_RuHmet/TextIDs"] = nil;

-----------------------------------

require("scripts/zones/The_Garden_of_RuHmet/TextIDs");
require("scripts/zones/The_Garden_of_RuHmet/MobIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	mob:setMobMod(MOBMOD_MAIN_2HOUR,1);
    mob:setMobMod(MOBMOD_2HOUR_MULTI,1);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------
function onMobFight(mob,target)
    
    if (mob:getLocalVar("2HR") == 0) then	
	    if (mob:getHPP() < math.random(50,60)) then
            mob:useMobAbility(735); -- Eagle Eye Shot
		    mob:setLocalVar("2HR",1);
        end
	end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
end;