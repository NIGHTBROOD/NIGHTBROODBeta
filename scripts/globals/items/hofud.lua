-----------------------------------------
-- ID: 19006
-- Item: Tizona
-- Additional effect: MP Gain from damage dealt
-----------------------------------------

require("scripts/globals/status");

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(player,target,damage)
    
    local proc_chance = 15;
    local hpmp_chance = 1;
    if (math.random(0,99) >= proc_chance) then
        return 0,0,0;
    else
        if (math.random(0,1) == hpmp_chance or target:isUndead()) then
            local hp_drain = math.floor(damage * (math.random(100,200)/1000));
            local params = {};
            
            params.bonusmab = 0;
            params.includemab = false;
            -- drain = addBonusesAbility(player, ELE_DARK, target, drain, params);
            hp_drain = hp_drain * applyResistanceAddEffect(player,target,ELE_DARK,0);
            hp_drain = adjustForTarget(target,hp_drain,ELE_DARK);
            hp_drain = finalMagicNonSpellAdjustments(player,target,ELE_DARK,hp_drain);

            return SUBEFFECT_HP_DRAIN, MSGBASIC_ADD_EFFECT_HP_DRAIN, player:addHP(hp_drain);
        else
            local mp_drain = math.floor(damage * (math.random(100,200)/1000));
            local params = {};
            
            params.bonusmab = 0;
            params.includemab = false;
            -- drain = addBonusesAbility(player, ELE_DARK, target, drain, params);
            mp_drain = mp_drain * applyResistanceAddEffect(player,target,ELE_DARK,0);
            mp_drain = adjustForTarget(target,mp_drain,ELE_DARK);
            mp_drain = finalMagicNonSpellAdjustments(player,target,ELE_DARK,mp_drain);

            if (mp_drain > target:getMP()) then
                mp_drain = target:getMP();
            end

            target:addMP(-mp_drain);
            return SUBEFFECT_MP_DRAIN, MSGBASIC_ADD_EFFECT_MP_DRAIN, player:addMP(mp_drain);
        end
    end
end;