-----------------------------------------
-- Spell: Huton: San
-- Deals wind damage to an enemy and lowers its resistance against ice.
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    --doNinjutsuNuke(V,M,caster,spell,target,hasMultipleTargetReduction,resistBonus)
    local duration = 15 + caster:getMerit(dsp.merit.HUTON_EFFECT) -- T1 bonus debuff duration
    local bonusAcc = 0;
    local bonusMab = caster:getMerit(dsp.merit.HUTON_EFFECT); -- T1 mag atk

    if(caster:getMerit(dsp.merit.HUTON_SAN) ~= 0) then -- T2 mag atk/mag acc, don't want to give a penalty to entities that can cast this without merits
        bonusMab = bonusMab + caster:getMerit(dsp.merit.HUTON_SAN) - 5; -- merit gives 5 power but no bonus with one invest, thus subtract 5
        bonusAcc = bonusAcc + caster:getMerit(dsp.merit.HUTON_SAN) - 5;
    end

    local params = {};

    params.dmg = 134;

    params.multiplier = 1.5;

    params.hasMultipleTargetReduction = false;

    params.resistBonus = bonusAcc;

    params.mabBonus = bonusMab;

    dmg = doNinjutsuNuke(caster, target, spell, params);
    handleNinjutsuDebuff(caster,target,spell,30,duration,dsp.mod.ICERES);

    return dmg;
end;