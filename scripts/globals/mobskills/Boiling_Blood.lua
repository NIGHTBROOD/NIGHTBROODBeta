---------------------------------------------------
-- Boiling Blood
-- Increases attack speed and goes berserk.
-- Combat log will only show haste effect.
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_HASTE;
    skill:setMsg(MobBuffMove(mob, EFFECT_BERSERK, 1, 0, 180));
    skill:setMsg(MobBuffMove(mob, typeEffect, 116, 0, 300));
    return typeEffect;
end;
