-----------------------------------------
-- ID: 5856
-- Frayed Pouch of Glory
-- When used, you will obtain 5 Coins of Glory
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
    target:addItem(2605,5);
end;

