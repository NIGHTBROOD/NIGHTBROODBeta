---------------------------------------------------------------------------------------------------
-- func: stuck
-- desc: Resets a targets account session and warps them to Jeuno.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    player:setPos( player:getXPos(), player:getYPos()-10, player:getZPos() );    
end;