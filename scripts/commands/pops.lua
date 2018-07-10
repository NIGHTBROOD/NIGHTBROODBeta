--------------------------------------------------------------
-- func: !pops
-- desc: opens a custom shop anywhere in the world
--------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player)
        local stock_1 =
        {
            3343,   1000000,       -- Blue Pondweed
            3341,   2000000,       -- Beastly Shank
            3339,   3000000,       -- Honey Wine
            3344,   5000000,       -- Red Pondweed
            3342,   7000000,       -- Savory Shank
            3340,   10000000,      -- Sweet Tea
        };
        showShop(player, STATIC, stock_1);
end;