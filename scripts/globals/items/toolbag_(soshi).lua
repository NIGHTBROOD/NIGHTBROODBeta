-----------------------------------------
-- ID: 5734
-- Toolbag Soshi
-- When used, you will obtain one stack of soshi
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:getFreeSlotsCount() == 0) then
        result = 308;
    end
    return result;
end;

function onItemUse(target)
    target:addItem(2555,99);
end;

