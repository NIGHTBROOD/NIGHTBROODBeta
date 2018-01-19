---------------------------------------------
-- Batterhorn
-- Deals damage to targets in front of it with a horn bash. 
-- Physical. 2-3 Shadows. Additional effect: Knockback
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
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 3.2;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);
    target:delHP(dmg);
    return dmg;
end;
