---------------------------------------------------------------------------------------------------
-- func: drk
-- desc: checks the number of kills for DRK Unlock Quest.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "ss"
};

function onTrigger(player, varType, varName)
    local drk_kills = player:getVar("ChaosbringerKills");
    local max_kills = 100;
    local kills_remaining = max_kills - drk_kills;
    
    if (kills_remaining <0) then
        kills_remaining = 0;
    end
    
    player:PrintToPlayer(string.format("Kills remaining to be EMO: ", kills_remaining));
end