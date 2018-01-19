---------------------------------------------------------------------------------------------------
-- func: @nm -- Spawns a ton of NMs at once 
-- auth: Dang065 (Aideth Elwing)
-- desc: Allows GM's to trigger NMs that are commonly requested. Add more if you tell me!
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 4,
    parameters = "iiii"
};
function onTrigger(player)
   SpawnMob('17297441'); -- KB
   SpawnMob('17408018'); -- Fafnir
   SpawnMob('17301538'); -- Aspi
   SpawnMob('17301537'); -- Adamantoise
   SpawnMob('17387866'); -- Morbol
   SpawnMob('17498522'); -- Chary
   SpawnMob('17268851'); -- Deadly Dodo
   SpawnMob('16806215'); -- Xolotl
   SpawnMob('17231971'); -- Nue
   SpawnMob('17404333'); -- Voluptuous Vivian
   SpawnMob('17281358'); -- Voluptuous Vilma 
   SpawnMob('17645755'); -- Ungur
   SpawnMob('17649731'); -- LoO
   SpawnMob('17199438'); -- VE
   SpawnMob('17228242'); -- Simurgh
   SpawnMob('17244539'); -- Cactrot
   SpawnMob('16806227'); -- Tiamat
   SpawnMob('17461307'); -- Sewer Syrup
   SpawnMob('17596720'); -- Serket
   SpawnMob('16797969'); -- Jormungand
   SpawnMob('16912838'); -- Jailer_of_Hope
   SpawnMob('16912839'); -- Jailer_of_Justice
   SpawnMob('16912848'); -- Jailer_of_Love
   SpawnMob('16912876'); -- Absolute_Virtue
   SpawnMob('17289575'); -- King_Vinegarroon
   SpawnMob('17056168'); -- Pandemonium_Warden
   SpawnMob('17109367'); -- Dark_Ixion
   SpawnMob('17166730'); -- Dark_Ixion
   SpawnMob('17142112'); -- Dark_Ixion
   SpawnMob('17121697'); -- Dark_Ixion
   SpawnMob('17109367'); -- Dark_Ixion
   SpawnMob('17821697'); -- Shinryu
   SpawnMob('17027458'); -- Cerberus
   SpawnMob('17670551'); -- Rani
   
   player:PrintToPlayer( "NMs Spawned." );
end