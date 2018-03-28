-----------------------------------------
-- ID: 5342
-- Corsair Bullet Pouch
-- When used, you will obtain one stack of Corsair Bullets
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:getFreeSlotsCount() == 0) then
        result = 308;
    end
    return result;
end;

function onItemUse(target)
    target:addItem(18235,99);
end;