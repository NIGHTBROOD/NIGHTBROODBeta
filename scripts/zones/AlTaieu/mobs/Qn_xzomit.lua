-----------------------------------
-- Area: Al'Taieu
--  MOB: Qn'xzomit
-- Jailor of Justice Pet version
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	mob:setLocalVar("popTime", os.time());
end;


-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob)
	local popTime = mob:getLocalVar("popTime");
	local mob2HR = mob:getLocalVar("2HR");
	local MobID = mob:getID();
    if (os.time() - popTime > 60 and mob2HR == 0) then
		mob:useMobAbility(731); -- Mijin_Gakure
		mob:setLocalVar("2HR",1);
	end
	if (os.time() - popTime > 62 and mob2HR == 1) then
		DespawnMob(mob:getID());
	end
end;
-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)

end;


-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;
