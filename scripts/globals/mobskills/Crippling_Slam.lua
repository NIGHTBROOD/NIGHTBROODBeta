---------------------------------------------
-- Crippling Slam
-- Deals severe damage to targets in front of it by slamming into them.
-- Physical. Wipes Shadows. Additional effect: Paralysis.
--
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (target:isBehind(mob, 48) == true) then
        return 1;
    end
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    -- Needs Knockback added
    local typeEffect = EFFECT_PARALYSIS;
    local power = 0;
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 5;
    local msg = MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, power, 3, 60);
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;
