-----------------------------------------
-- ID: 5854
-- Frayed Pouch of Birth
-- When used, you will obtain 5 Coins of Birth
-----------------------------------------

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
    if (target:getFreeSlotsCount() == 0) then
        result = 308;
    end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    target:addItem(2603,5);
end;

