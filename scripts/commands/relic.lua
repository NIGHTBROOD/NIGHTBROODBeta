---------------------------------------------------------------------------------------------------
-- func: relic
-- desc: checks time remaining on relic swap.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "ss"
};

function onTrigger(player, varType, varName)
    local last_time = player:getVar("RELIC_SWAP");
    local current_time = os.time();
    local time_remaining = last_time - current_time;
    
    player:PrintToPlayer(string.format("Time remaining until relic swap: %.2d:%.2d:%.2d", time_remaining/(60*60), time_remaining/60%60, time_remaining%60));
end