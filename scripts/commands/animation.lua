---------------------------------------------------------------------------------------------------
-- func: animation
-- desc: Sets the players current animation.
---------------------------------------------------------------------------------------------------

require("scripts/globals/status");

cmdprops =
{
    permission = 5,
    parameters = "ss"
};

function onTrigger(player, animationId, target)
    local targ = GetPlayerByName( target );

    animationId = tonumber(animationId) or _G[animationId];
    
    if (animationId == nil) then
        player:PrintToPlayer( string.format( "Current player animation: %d", player:getAnimation() ) );
        return;
    end
    
    if (targ == nil) then
        player:setAnimation( animationId );
        return;
    else
        targ:setAnimation( animationId );
    end
end