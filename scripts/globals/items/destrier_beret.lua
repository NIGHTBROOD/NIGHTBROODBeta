-----------------------------------------
--    ID: 11811
--    Destrier Beret
--    Enchantment: 60Min, Costume - Baby Chocobo (female)
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    return target:canUseCostume();
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    target:addStatusEffect(EFFECT_COSTUME,1997,0,3600);
end;