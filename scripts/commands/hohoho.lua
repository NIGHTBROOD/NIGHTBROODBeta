---------------------------------------------------------------------------------------------------
-- func: @hohoho
-- desc: Gives Christmas crap to players.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

local xmas_gear = { 
                    1,{18864,15753,15179,10383,14520,11966}, -- Male Hume
                    2,{18864,15753,15179,10383,14520,11968}, -- Female Hume
                    3,{18864,15753,15179,10383,14520,11966}, -- Male Elvaan
                    4,{18864,15753,15179,10383,14520,11968}, -- Female Elvaan
                    5,{18864,15753,15179,10383,14520,11966}, -- Male Taru-Taru
                    6,{18864,15753,15179,10383,14520,11968}, -- Female Taru-Taru
                    7,{18864,15753,15179,10383,14520,11968}, -- Mithra
                    8,{18864,15753,15179,10383,14520,11966}  -- Galka
                  };

function onTrigger(player, target)
    local race = player:getRace();
    local xmasGearSet = {};
    xmasGearSet = getXmasGear(player, race);
    
    if not(player:hasItem(4216)) then
        player:addItem(4216,99);
        player:messageSpecial(ITEM_OBTAINED,4216); 
    end

    for i=1, #xmasGearSet do
        if not(player:hasItem(xmasGearSet[i])) then
            player:addItem(xmasGearSet[i]);
            player:messageSpecial(ITEM_OBTAINED,xmasGearSet[i]); 
        end
    end

end;

function getXmasGear(player, race)
  
    for i=1, #xmas_gear, 2 do -- Step through the array grabbing every second (2 value, and see if it matches that race.
        if (race == (xmas_gear[i])) then -- Checks to see if player race matches the array
            return xmas_gear[i+1]; -- Returns all the gear for that race
        end
    end

end;