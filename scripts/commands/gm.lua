---------------------------------------------------------------------------------------------------
-- func: gm
-- desc: Toggles god mode on the player, granting them several special abilities.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = ""
};

function onTrigger(player)
    if (player:getVar("GodMode_Mini") == 0) then
        -- Toggle GodMode on..
        player:setVar("GodMode_Mini", 1);

        -- Add bonus effects to the player..
        player:addStatusEffect(EFFECT_MAX_HP_BOOST,1000,0,0);
        player:addStatusEffect(EFFECT_MAX_MP_BOOST,1000,0,0);
        player:addStatusEffect(EFFECT_REGAIN,15,1,0);
        player:addStatusEffect(EFFECT_REFRESH,999,0,0);
        player:addStatusEffect(EFFECT_REGEN,999,0,0);

        -- Add bonus mods to the player..
        player:addMod(MOD_RACC,2500);
        player:addMod(MOD_RATT,2500);
        player:addMod(MOD_ACC,2500);
        player:addMod(MOD_MACC,2500);

        -- Heal the player from the new buffs..
        player:addHP( 50000 );
        player:setMP( 50000 );
    else
        -- Toggle GodMode off..
        player:setVar("GodMode_Mini", 0);

        -- Remove bonus effects..
        player:delStatusEffect(EFFECT_MAX_HP_BOOST);
        player:delStatusEffect(EFFECT_MAX_MP_BOOST);
        player:delStatusEffect(EFFECT_REGAIN);
        player:delStatusEffect(EFFECT_REFRESH);
        player:delStatusEffect(EFFECT_REGEN);

        -- Remove bonus mods..
        player:delMod(MOD_RACC,2500);
        player:delMod(MOD_RATT,2500);
        player:delMod(MOD_ACC,2500);
        player:delMod(MOD_MACC,2500);
    end
end