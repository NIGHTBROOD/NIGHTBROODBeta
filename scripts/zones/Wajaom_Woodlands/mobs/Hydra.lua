-----------------------------------
-- Area: Wajaom Woodlands
--  MOB: Hydra
-- !pos -282 -24 -1 51
-----------------------------------
require("scripts/globals/titles");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobFight(mob, target)

    local battletime = mob:getBattleTime();
    local headgrow = mob:getLocalVar("headgrow");
    local broken = mob:AnimationSub();

    if (headgrow < battletime and broken > 0) then
        mob:AnimationSub(broken - 1);
        mob:setLocalVar("headgrow", battletime + 300);
    end

end;

function onCriticalHit(mob)

    local rand = math.random();
    local battletime = mob:getBattleTime();
    local headgrow = mob:getLocalVar("headgrow");
    local headbreak = mob:getLocalVar("headbreak");
    local broken = mob:AnimationSub();

    if (rand <= 0.15 and battletime >= headbreak and broken < 2) then
        mob:AnimationSub(broken + 1);
        mob:setLocalVar("headgrow", battletime + math.random(120, 240))
        mob:setLocalVar("headbreak", battletime + 300);
    end

end;

function onMobDeath(mob, player, isKiller)
	player:addTitle(dsp.title.HYDRA_HEADHUNTER);
	player:addCurrency('bayld', 1);
    player:messageSpecial(BAYLD_OBTAINED, 1);
end;