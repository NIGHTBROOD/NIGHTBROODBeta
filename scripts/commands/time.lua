---------------------------------------------------------------------------------------------------
-- func: time
-- desc: checks player or server variable and returns result value.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "ss"
};

function onTrigger(player, varType, varName)
    local current_time = os.time();
    player:PrintToPlayer(string.format("The current server time is %d",current_time));
end