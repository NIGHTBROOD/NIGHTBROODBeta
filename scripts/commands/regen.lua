---------------------------------------------------------------------------------------------------
-- func: regen
-- auth:
-- desc: .toggles regen
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
	  if (player:getVar("Regen") == 0) then
   		  -- Toggle Regen on..
        player:setVar("Regen", 1);

        -- Add bonus effects to the player..
		player:addMod(MOD_FASTCAST,10);
		player:addStatusEffect(EFFECT_MAX_HP_BOOST,50,0,0);
        player:addStatusEffect(EFFECT_MAX_MP_BOOST,50,0,0);
		player:addStatusEffect(EFFECT_REGAIN,20,1,0);
        player:addStatusEffect(EFFECT_REFRESH,50,0,0);
        player:addStatusEffect(EFFECT_REGEN,50,0,0);
		
		player:addMod(MOD_ACC,50);
        player:addMod(MOD_ATT,50);
		player:addMod(MOD_DEF,50);
		
		
    else
            -- Toggle Regen off..
        player:setVar("Regen", 0);

        -- Remove bonus effects..
		player:delMod(MOD_FASTCAST,10);
		player:delStatusEffect(EFFECT_MAX_HP_BOOST);
        player:delStatusEffect(EFFECT_MAX_MP_BOOST);
		player:delStatusEffect(EFFECT_REGAIN);
        player:delStatusEffect(EFFECT_REFRESH);
        player:delStatusEffect(EFFECT_REGEN);
		
		player:delMod(MOD_ACC,50);
        player:delMod(MOD_ATT,50);
		player:delMod(MOD_DEF,50);
		
		
    end
end

