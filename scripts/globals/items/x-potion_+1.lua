-----------------------------------------
-- ID: 4121
-- Item: X-Potion +1
-- Item Effect: Restores 160 HP
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/msg");

function onItemCheck(target)
    if (target:getHP() == target:getMaxHP()) then
        return msgBasic.ITEM_UNABLE_TO_USE;
    elseif (target:hasStatusEffect(EFFECT_MEDICINE)) then
        return msgBasic.ITEM_NO_USE_MEDICATED;
    end
    return 0;
end;

function onItemUse(target)
    target:messageBasic(msgBasic.RECOVERS_HP, 0, target:addHP(160*ITEM_POWER));
    target:addStatusEffect(EFFECT_MEDICINE,0,0,5);
end;
