-----------------------------------------
-- ID: 4487
-- Item: colored_egg
-- Food Effect: 30Min, All Races
-----------------------------------------
-- Health 20
-- Magic 20
-- Attack 3
-- Ranged Attack 2
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,1800,4487);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(dsp.mod.HP, 20);
    target:addMod(dsp.mod.MP, 20);
    target:addMod(dsp.mod.ATT, 3);
    target:addMod(dsp.mod.RATT, 2);
end;

function onEffectLose(target, effect)
    target:delMod(dsp.mod.HP, 20);
    target:delMod(dsp.mod.MP, 20);
    target:delMod(dsp.mod.ATT, 3);
    target:delMod(dsp.mod.RATT, 2);
end;
