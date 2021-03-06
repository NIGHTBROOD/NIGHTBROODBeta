-----------------------------------------
-- Spell: Barblind
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local meritBonus = caster:getMerit(dsp.merit.BAR_SPELL_EFFECT);
    --printf("Barspell: Merit Bonus +%d", meritBonus);
    
    local enhanceSkill = caster:getSkillLevel(34);

    local duration = 150;

    local power = 1 + 0.02 * enhanceSkill + meritBonus;

    if (enhanceSkill > 180) then
        duration = 150 + 0.8 * (enhanceSkill - 180);
    end

    if (caster:hasStatusEffect(dsp.effect.COMPOSURE) == true and caster:getID() == target:getID()) then
        duration = duration * 3;
    end

    target:addStatusEffect(dsp.effect.BARBLIND,power,0,duration);

    return dsp.effect.BARBLIND;
end;
