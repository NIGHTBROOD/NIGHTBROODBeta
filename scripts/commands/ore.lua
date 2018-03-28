---------------------------------------------------------------------------------------------------
-- func: Elemental Ore shop
-- auth: Dang065<AidethElwing>
-- desc: Opens Shop for elemental ores
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)
   
stock = {
1260,50000,
1257,50000,
1262,50000,
1258,50000,
1255,50000,
1256,50000,
1261,50000,
1259,50000,
 }

showShop(player, STATIC, stock);
end