-----------------------------------------
-- Spell: Dread Spikes
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local duration = 180;
    local power = 0;
    local typeEffect = dsp.effect.DREAD_SPIKES;
    local drainAmount = target:getMaxHP() / 2;

    if (caster:hasStatusEffect(dsp.effect.COMPOSURE) == true and caster:getID() == target:getID()) then
        duration = duration * 3;
    end

    if (target:addStatusEffect(typeEffect, power, 0, duration, 0, drainAmount, 1)) then
        spell:setMsg(dsp.msg.basic.MAGIC_GAIN_EFFECT);
    else
        spell:setMsg(dsp.msg.basic.MAGIC_NO_EFFECT);
    end

    return typeEffect;
end;
