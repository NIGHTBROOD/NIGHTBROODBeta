-----------------------------------
-- Area: Arrapago Reef
-- Door: Tidal Gate
-- @pos -59 -7 -363 54
-----------------------------------

package.loaded["scripts/zones/Arrapago_Reef/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/zones/Arrapago_Reef/TextIDs");

--https://www.bg-wiki.com/bg/Category:Mythic_Weapons




-- Mjollnir 18324 WHM
-- Yagrush 18993 WHM



-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local job = player:getMainJob();
    local count = trade:getItemCount();
    local swap_time = player:getVar("RELIC_SWAP");
    local gmlvl = player:getGMLevel();

    if( swap_time < os.time() )then
        --Start Sword Swap
        if ( count == 1 and trade:hasItemQty(18276,1) )then  -- Trade Excalibur
            if ( job == dsp.job.PLD ) then -- PLD -> Give Burtgang
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(18997) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18997);
                else
                    player:tradeComplete();
                    player:addItem(18997);
                    player:messageSpecial(ITEM_OBTAINED,18997);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            elseif( job == dsp.job.RDM ) then -- RDM -> Give Murgleis
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(18995) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18995);
                else
                    player:tradeComplete();
                    player:addItem(18995);
                    player:messageSpecial(ITEM_OBTAINED,18995);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            elseif( job == dsp.job.BLU ) then -- BLU ->Give Tizona
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(19006) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19006);
                else
                    player:tradeComplete();
                    player:addItem(19006);
                    player:messageSpecial(ITEM_OBTAINED,19006);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my sword as you are now. Begone!");
            end
        elseif ( count == 1 and ( trade:hasItemQty(18997,1) or trade:hasItemQty(18995,1) or trade:hasItemQty(19006,1) ) )then -- Trade Burtgang, Murgleis, or Tizona for Excalibur
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18276) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18276);
            else
                player:tradeComplete();
                player:addItem(18276);
                player:messageSpecial(ITEM_OBTAINED,18276);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end
        --Start Dagger Swap
        elseif ( count == 1 and trade:hasItemQty(18270,1) )then  -- Trade Mandau
            if ( job == dsp.job.THF ) then -- THF -> Give Vajra
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(18996) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18996);
                else
                    player:tradeComplete();
                    player:addItem(18996);
                    player:messageSpecial(ITEM_OBTAINED,18996);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            elseif( job == dsp.job.BRD ) then -- BRD -> Give Carnwenhan
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(19000) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19000);
                else
                    player:tradeComplete();
                    player:addItem(19000);
                    player:messageSpecial(ITEM_OBTAINED,19000);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            elseif( job == dsp.job.DNC ) then -- DNC ->Give Terpsichore
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(18989) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18989);
                else
                    player:tradeComplete();
                    player:addItem(18989);
                    player:messageSpecial(ITEM_OBTAINED,18989);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my dagger as you are now. Begone!");
            end
        elseif ( count == 1 and ( trade:hasItemQty(18996,1) or trade:hasItemQty(19000,1) or trade:hasItemQty(18989,1) ) )then -- Trade Vajra, Carnwenhan, or Terpsichore for Mandau
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18270) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18270);
            else
                player:tradeComplete();
                player:addItem(18270);
                player:messageSpecial(ITEM_OBTAINED,18270);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end
        
        --Start Staff Swap
        elseif ( count == 1 and trade:hasItemQty(18330,1) )then  -- Trade Claustrum
            if ( job == dsp.job.BLM ) then -- BLM -> Give Laevateinn
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(18994) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18994);
                else
                    player:tradeComplete();
                    player:addItem(18994);
                    player:messageSpecial(ITEM_OBTAINED,18994);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            elseif( job == dsp.job.SMN ) then -- SMN -> Give Nirvana
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(19005) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19005);
                else
                    player:tradeComplete();
                    player:addItem(19005);
                    player:messageSpecial(ITEM_OBTAINED,19005);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            elseif( job == dsp.job.SCH ) then -- SCH ->Give Tupsimati
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(18990) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18990);
                else
                    player:tradeComplete();
                    player:addItem(18990);
                    player:messageSpecial(ITEM_OBTAINED,18990);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my staff as you are now. Begone!");
            end
        elseif ( count == 1 and ( trade:hasItemQty(18994,1) or trade:hasItemQty(19005,1) or trade:hasItemQty(18990,1) ) )then -- Trade Laevateinn, Nirvana, or Tupsimati for Claustrum
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18330) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18330);
            else
                player:tradeComplete();
                player:addItem(18330);
                player:messageSpecial(ITEM_OBTAINED,18330);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end
            
        --Start H2H Swap
        elseif ( count == 1 and trade:hasItemQty(18264,1) )then  -- Trade Spharai
            if ( job == dsp.job.MNK ) then -- MNK -> Give Glanzfaust
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(18992) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18992);
                else
                    player:tradeComplete();
                    player:addItem(18992);
                    player:messageSpecial(ITEM_OBTAINED,18992);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            elseif( job == dsp.job.PUP ) then -- PUP -> Give Kenkonken
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(19008) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19008);
                else
                    player:tradeComplete();
                    player:addItem(19008);
                    player:messageSpecial(ITEM_OBTAINED,19008);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my claws as you are now. Begone!");
            end
        elseif ( count == 1 and ( trade:hasItemQty(18992,1) or trade:hasItemQty(19008,1) ) )then -- Trade Glanzfaust or Kenkonken for Spharai
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18264) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18264);
            else
                player:tradeComplete();
                player:addItem(18264);
                player:messageSpecial(ITEM_OBTAINED,18264);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end
        
        --Start Gun Swap
        elseif ( count == 1 and trade:hasItemQty(18336,1) )then  -- Trade Annihilator
            if ( job == dsp.job.RNG ) then -- RNG -> Give Gastraphetes
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(19001) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19001);
                else
                    player:tradeComplete();
                    player:addItem(19001);
                    player:messageSpecial(ITEM_OBTAINED,19001);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            elseif( job == dsp.job.COR ) then -- COR -> Give Death Penalty
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(19007) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19007);
                else
                    player:tradeComplete();
                    player:addItem(19007);
                    player:messageSpecial(ITEM_OBTAINED,19007);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my gun as you are now. Begone!");
            end
        elseif ( count == 1 and ( trade:hasItemQty(19001,1) or trade:hasItemQty(19007,1) ) )then -- Trade Gastraphetes or Death Penalty for Annihilator
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18336) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18336);
            else
                player:tradeComplete();
                player:addItem(18336);
                player:messageSpecial(ITEM_OBTAINED,18336);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end

        --Start Axe Swap
        elseif ( count == 1 and trade:hasItemQty(18288,1) )then  -- Trade Guttler
            if ( job == dsp.job.BST ) then -- BST -> Give Aymur
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(18999) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18999);
                else
                    player:tradeComplete();
                    player:addItem(18999);
                    player:messageSpecial(ITEM_OBTAINED,18999);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my axe as you are now. Begone!");
            end
        elseif ( count == 1 and trade:hasItemQty(18999,1) )then -- Trade Gastraphetes for Guttler
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18288) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18288);
            else
                player:tradeComplete();
                player:addItem(18288);
                player:messageSpecial(ITEM_OBTAINED,18288);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end            
 
        --Start Great Axe Swap
        elseif ( count == 1 and trade:hasItemQty(18294,1) )then  -- Trade Bravura
            if ( job == dsp.job.WAR ) then -- WAR -> Give Conqueror
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(18991) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18991);
                else
                    player:tradeComplete();
                    player:addItem(18991);
                    player:messageSpecial(ITEM_OBTAINED,18991);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my axe as you are now. Begone!");
            end
        elseif ( count == 1 and trade:hasItemQty(18991,1) )then -- Trade Conqueror for Bravura
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18294) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18294);
            else
                player:tradeComplete();
                player:addItem(18294);
                player:messageSpecial(ITEM_OBTAINED,18294);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end      

        --Start Polearm Swap
        elseif ( count == 1 and trade:hasItemQty(18300,1) )then  -- Trade Gungnir
            if ( job == dsp.job.DRG ) then -- DRG -> Give Ryunohige
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(19004) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19004);
                else
                    player:tradeComplete();
                    player:addItem(19004);
                    player:messageSpecial(ITEM_OBTAINED,19004);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my polearm as you are now. Begone!");
            end
        elseif ( count == 1 and trade:hasItemQty(19004,1) )then -- Trade Ryunohige for Gungnir
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18300) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18300);
            else
                player:tradeComplete();
                player:addItem(18300);
                player:messageSpecial(ITEM_OBTAINED,18300);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end                

        --Start Scythe Swap
        elseif ( count == 1 and trade:hasItemQty(18306,1) )then  -- Trade Apocalypse
            if ( job == dsp.job.DRK ) then -- DRK -> Give Liberator
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(18998) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18998);
                else
                    player:tradeComplete();
                    player:addItem(18998);
                    player:messageSpecial(ITEM_OBTAINED,18998);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my scythe as you are now. Begone!");
            end
        elseif ( count == 1 and trade:hasItemQty(18998,1) )then -- Trade Liberator for Apocalypse
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18306) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18306);
            else
                player:tradeComplete();
                player:addItem(18306);
                player:messageSpecial(ITEM_OBTAINED,18306);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end               

        --Start Katana Swap
        elseif ( count == 1 and trade:hasItemQty(18312,1) )then  -- Trade Kikoku
            if ( job == dsp.job.NIN ) then -- NIN -> Give Nagi
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(19003) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19003);
                else
                    player:tradeComplete();
                    player:addItem(19003);
                    player:messageSpecial(ITEM_OBTAINED,19003);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my katana as you are now. Begone!");
            end
        elseif ( count == 1 and trade:hasItemQty(19003,1) )then -- Trade Nagi for Kikoku
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18312) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18312);
            else
                player:tradeComplete();
                player:addItem(18312);
                player:messageSpecial(ITEM_OBTAINED,18312);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end               

        --Start Great Katana Swap
        elseif ( count == 1 and trade:hasItemQty(18318,1) )then  -- Trade Amanomurakumo
            if ( job == dsp.job.SAM ) then -- SAM -> Give Kogarasumaru
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(19002) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,19002);
                else
                    player:tradeComplete();
                    player:addItem(19002);
                    player:messageSpecial(ITEM_OBTAINED,19002);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my great katana as you are now. Begone!");
            end
        elseif ( count == 1 and trade:hasItemQty(19002,1) )then -- Trade Kogarasumaru for Amanomurakumo
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18318) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18318);
            else
                player:tradeComplete();
                player:addItem(18318);
                player:messageSpecial(ITEM_OBTAINED,18318);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end               

        --Start Club Swap
        elseif ( count == 1 and trade:hasItemQty(18324,1) )then  -- Trade Mjollnir
            if ( job == dsp.job.WHM ) then -- WHM -> Give Yagrush
                if ( player:getFreeSlotsCount() < 1 or player:hasItem(19002) ) then
                    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18993);
                else
                    player:tradeComplete();
                    player:addItem(18993);
                    player:messageSpecial(ITEM_OBTAINED,18993);
                    if ( gmlvl == 0 ) then
                        player:setVar("RELIC_SWAP",os.time()+604800);
                    else
                        player:setVar("RELIC_SWAP",0);
                    end
                end
            else
                player:PrintToPlayer("You cannot wield my hammer as you are now. Begone!");
            end
        elseif ( count == 1 and trade:hasItemQty(18993,1) )then -- Trade Yagrush for Mjollnir
            if ( player:getFreeSlotsCount() < 1 or player:hasItem(18324) ) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,18324);
            else
                player:tradeComplete();
                player:addItem(18324);
                player:messageSpecial(ITEM_OBTAINED,18324);
                if ( gmlvl == 0 ) then
                    player:setVar("RELIC_SWAP",os.time()+604800);
                else
                    player:setVar("RELIC_SWAP",0);
                end
            end              
        else 
            player:PrintToPlayer("Infidel! You dare con me?!");
        end
    else
        player:PrintToPlayer("Weak... so weak... I require more time to restore my strength....");
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local swap_time = player:getVar("RELIC_SWAP");
    local gmlvl = player:getGMLevel();
    
    if ( gmlvl > 0 ) then
        player:setVar("RELIC_SWAP",0);
    end
    
    if ( swap_time < os.time() )then
        player:PrintToPlayer("Wielder of the mighty Relic Weapons of old...");
        player:PrintToPlayer("Give me your weapon and I will imbue it with my power...");
        player:PrintToPlayer("A Mystic Weapon you shall receive...");
        player:PrintToPlayer("But be warned: my strength is limited...");
        player:PrintToPlayer("I will need to see the rising of the sun seven times before I can do so again...");
        player:PrintToPlayer("The choice is yours adventurer... Now what will you do?");
    else
        player:PrintToPlayer("Weak... so weak... I require more time to restore my strength....");
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option,target)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);

  
    
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option,target)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
 

end;

-----------------------------------
-- onInstanceLoaded
-----------------------------------

function onInstanceCreated(player,target,instance)
   
end;