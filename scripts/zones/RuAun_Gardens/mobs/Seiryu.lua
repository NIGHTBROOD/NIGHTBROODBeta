-----------------------------------
-- Area: Ru'Aun Gardens
--  NM:  Seiryu
-----------------------------------
package.loaded["scripts/zones/RuAun_Gardens/TextIDs"] = nil;
-----------------------------------
mixins = {require("scripts/mixins/job_special")};
require("scripts/zones/RuAun_Gardens/TextIDs");
require("scripts/zones/RuAun_Gardens/MobIDs");
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/msg");

function onMobInitialize(mob)
    mob:setMobMod(dsp.mobMod.ADD_EFFECT,mob:getShortID());
end;

function onMobSpawn(mob)
end;

function onMonsterMagicPrepare(mob,target)
    if (not mob:hasStatusEffect(dsp.effect.HUNDRED_FISTS,0)) then
        local rnd = math.random();
        if (rnd < 0.5) then
            return 186; -- aeroga 3
        elseif (rnd < 0.7) then
             return 157; -- aero 4
        elseif (rnd < 0.9) then
            return 208; -- tornado
        else
            return 237; -- choke
        end
    end
    return 0; -- Still need a return, so use 0 when not casting
end;

function onAdditionalEffect(mob, target, damage)
    local dmg = math.random(130,150)
    local params = {};
    params.bonusmab = 0;
    params.includemab = false;

    dmg = addBonusesAbility(mob, dsp.magic.ele.WIND, target, dmg, params);
    dmg = dmg * applyResistanceAddEffect(mob,target,dsp.magic.ele.WIND,0);
    dmg = adjustForTarget(target,dmg,dsp.magic.ele.WIND);
    dmg = finalMagicNonSpellAdjustments(mob,target,dsp.magic.ele.WIND,dmg);

    return dsp.subEffect.WIND_DAMAGE, dsp.msg.basic.ADD_EFFECT_DMG, dmg;
end;

function onMobDeath(mob, player, isKiller)
    player:showText(mob,SKY_GOD_OFFSET + 10);
	player:addCurrency('bayld', 1);
    player:messageSpecial(BAYLD_OBTAINED, 1);
end;

function onMobDespawn(mob)
    GetNPCByID(SEIRYU_QM):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
end;