-----------------------------------
--  Area: Bastok Mines
--   NPC: Keturah
--  Type: Chocobo Hot and Cold - MHMU Reward NPC
-- @zone 234
-- @pos ????

-----------------------------------

package.loaded["scripts/zones/Bastok_Mines/TextIDs"] = nil;
require("scripts/zones/Bastok_Mines/TextIDs");

local reward_gear = {            -- This is an array. It allows me to enter in a table into lua.
                                 -- First member here will represent gil trade. Items inside {} are bayld and rewards.
                                 -- First member is 1, second member is {5, 16268}, third member is 2, fourth member is {5,16269}, etc.
                    
                    --Perdu
                    1,{7,18425,"Perdu Blade"},
                    2,{5,18717,"Perdu Bow"},
                    3,{5,18718,"Perdu Crossbow"},
                    4,{7,17741,"Perdu Hanger"},
                    5,{7,18943,"Perdu Sickle"},
                    6,{5,18588,"Perdu Staff"},
                    7,{5,16602,"Perdu Sword"},
                    8,{7,18491,"Perdu Voulge"},
                    9,{5,18850,"Perdu Wand"},

                    --Assault
                    10,{10,15688,"Amir Boots"},
                    11,{10,14933,"Amir Kolluks"},
                    12,{10,16062,"Amir Puggaree"},

                    13,{10,15695,"Pln. Crackows"},
                    14,{10,14940,"Pln. Dastanas"},
                    15,{10,16069,"Pln. Qalansuwa"},

                    16,{10,15690,"Yigit Crackows"},
                    17,{10,14935,"Yigit Gages"},
                    18,{10,16064,"Yigit Turban"},

                    19,{15,15604,"Amir Dirs"},
                    20,{15,14525,"Amir Korazin"},

                    21,{15,15609,"Pln. Seraweels"},
                    22,{15,14530,"Pln. Khazagand"},

                    23,{15,15606,"Yigit Seraweels"},
                    24,{15,14527,"Yigit Gomlek"},

                    --Nyzul
                    25,{15,15733,"Askar Gambieras"},
                    26,{15,14983,"Askar Manopolas"},
                    27,{15,16106,"Askar Zucchetto"},

                    28,{15,15734,"Denali Gamashes"},
                    29,{15,14984,"Denali Wristbands"},
                    30,{15,16107,"Denali Bonnet"},

                    31,{15,15735,"Goliard Clogs"},
                    32,{15,14985,"Goliard Cuffs"},
                    33,{15,16108,"Goliard Chapeau"},

                    34,{25,15647,"Askar Dirs"},
                    35,{25,14568,"Askar Korazin"},

                    36,{25,15648,"Denali Kecks"},
                    37,{25,14569,"Denali Jacket"},

                    38,{25,15649,"Goliard Trews"},
                    39,{25,14570,"Goliard Saio"},

                    --Einherjar Accessories
                    40,{20,16268,"Kubira Beads"},
                    41,{20,16269,"Morganas Choker"},
                    42,{20,15800,"Omega Ring"},
                    43,{20,16267,"Ritter Gorget"},
                    44,{20,15799,"Iota Ring"},
                    45,{20,16229,"Gleemans Cape"},
                    46,{20,15990,"Delta Earring"},
                    47,{20,15911,"Buccaneers Belt"},
                    48,{20,16228,"Aslan Cape"},

                    --Odin
                    49,{30,17745,"Hofud"},
                    50,{30,14577,"Valhalla Breastplate"},
                    51,{30,16117,"Valhalla Helm"},
                    52,{30,18121,"Valkyries Fork"},
					
					--REQUIEM OF SIN
                    53,{20,18019,"X's Knie"},
                    54,{10,18057,"Y's Scythe"},
                    55,{20,18101,"Z's Trident"},

                    --Fiat Lux

                    56,{40,16057,"Aesir ear pendant"},
                    57,{20,11589,"Aesir torque"},
                    58,{20,11546,"Aesir mantle"},
                    59,{20,19163,"Nightfall"},
                    60,{30,11501,"Nocturnus Helm"},
                    61,{30,11354,"Nocturnus Mail"},

                    --Wyrmking Decends
                    62,{40,17598,"Bahamuts Staff"},
                    63,{40,15264,"Bahamuts Mask"},
                    64,{15,18061,"Bahamuts Zaghnal"},
                    65,{15,15599,"Bahamuts Hose"},
					
					--Misc
					66,{20,16126,"Bowman's Mask"},
                    67,{20,15744,"Bowman's Ledelsens"},
                    68,{5,14999,"Vampiric Mitts"},
                    69,{5,15745,"Vampiric Boots"},
                    70,{10,15538,"Phi Necklace"},
                    71,{20,15786,"Divisor Ring"},
                    72,{20,15798,"Epsilon Ring"},
                    73,{20,15794,"Omicron Ring"},
                    74,{20,15797,"Pi Ring"},
                    75,{20,15795,"Tau Ring"},
                    76,{25,15617,"Barbarossa's Zerehs"},
                    77,{10,14943,"Barbarossa's Moufles"},
					
					78,{15,15839,"Antica Ring"},
                    79,{15,11483,"Gnole Crown"},
                    80,{20,16283,"Gnole Torque"},
                    81,{15,16011,"Lycopodium Earring"},
                    82,{10,16012,"Mamool Ja Earring"},
                    83,{20,16250,"Mamool Ja Mantle"},
                    84,{20,16035,"Altdorf's Earring"},
                    85,{20,16036,"Wilhelm's Earring"},
                    86,{15,16038,"Cassandra's Earring"},
                    87,{15,16037,"Helenus's Earring"},
					
					--SCNM
                    88,{40,16159,"ZhaGos Barbut"},
                    89,{20,16160,"Rees Headgear"},
                    90,{40,16158,"Gnadbhods Helm"},
					91,{30,11392,"Koschei Crackows"},
                    92,{30,15034,"Stone Mufflers"},

                    --Mythics
                    93,{125,19007,"Death Penalty"},
                    94,{125,19006,"Tizona"},
                    95,{125,18989,"Terpsichore"},
                    96,{125,18990,"Tupsimati"},

                    -- AV
                    101,{75,15458,"Ninurtas Sash"},
                    102,{75,18245,"Aureole"},
                    103,{50,17810,"Futsuno Mitama"},
                    104,{50,15549,"Bellonas Ring"},
                    105,{75,15548,"Marss Ring"},
                    106,{50,15550,"Minervas Ring"},
                    107,{5,18398,"Raphaels Rod "},
                    
                    --VNM
                    108,{20,15954,"Fierce Belt"},
                    109,{20,11586,"Backlash Torque"},
                    110,{20,16054,"Hirudinea Earring"},
                    111,{5,19245,"Jinx Ampulla"},
                    112,{20,15955,"Fatality Belt"},
                    113,{20,11635,"Alert Ring"},
                    114,{20,11544,"Veela Cape"},
                    115,{5,16055,"Choreia Earring"},
                    116,{5,11587,"Nyx Gorget"},
                    117,{20,16056,"Pagondas Earring"},
                    118,{5,16306,"Halting Stole"},
                    119,{5,16307,"Repelling Collar"},

                    120,{75,11632,"Karka Ring"},
                    121,{40,11502,"Acubens Helm"},
                    122,{40,11631,"Blobnag Ring"},
                    123,{40,11585,"Beguiling Collar"},
                    124,{40,11630,"Corneus Ring"},
                    125,{5,15948,"Bobcat Belt"},
                    126,{40,11634,"Veela Ring"},
                    127,{40,19244,"Verthandis Gem"},
                    128,{75,11628,"Strigoi Ring"},
                    129,{40,15953,"Marching Belt"},
                    130,{40,15859,"Succor Ring"},
                    131,{5,16151,"Leonine Mask"},

                    132,{75,11633,"Galdr Ring"},
                    133,{50,11629,"Zilant Ring"},
                    134,{50,14162,"Agronas Leggings"},
					135,{20,19236,"Hightail Bullet"},
					
					--IS Items
					138,{20,15810,"Luzaf's Ring"},
					
					--Abjurations
					143,{10,2429,"Phantasmal Abj - Head"},
                    144,{10,2430,"Phantasmal Abj - Body"},
                    145,{10,2431,"Phantasmal Abj - Hands"},
                    146,{10,2432,"Phantasmal Abj - Legs"},
                    147,{10,2433,"Phantasmal Abj - Feet"},
                    148,{20,2434,"Hadean Abj - Head"},
                    149,{20,2435,"Hadean Abj - Body"},
                    150,{20,2436,"Hadean Abj - Hands"},
                    151,{20,2437,"Hadean Abj - Legs"},
                    152,{20,2438,"Hadean Abj - Feet"},
					
					--Waking the beast
					153,{20,14931,"Carbuncle's Cuffs"},
					154,{20,18063,"Garuda's Sickle"},
                    155,{20,17192,"Ifrit's Bow"},
                    156,{20,18109,"Leviathan's Couse"},
                    157,{20,18404,"Ramuh's Mace"},
                    158,{20,17711,"Shiva's Shotel"},
                    159,{20,18021,"Titan's Baselarde"},
					
					--Crafting Gear
                    160,{50,10948,"Carver's Torque"},
                    161,{50,10950,"Goldsmith's Torque"},
                    162,{50,10955,"Culinarian's Torque"},
                    163,{50,10949,"Smithy's Torque"},
					164,{50,10952,"Tanner's Torque"},
                    165,{50,10951,"Weaver's Torque"},
                    166,{50,10953,"Boneworker's Torque"},
                    167,{50,10954,"Alchemist's Torque"},

					--Cursed Gear
					--Hadean Set
                    195,{10,2449,"Cursed Hat"},
                    196,{10,2451,"Cursed Coat"},
                    197,{10,2453,"Cursed Cuffs"},
                    198,{10,2455,"Cursed Trews"},
					199,{10,2457,"Cursed Clogs"},
					
					--Phantasmal Set
                    200,{10,2439,"Cursed Helm"},
                    201,{10,2441,"Cursed Breastplate"},
                    202,{10,2443,"Cursed Gauntlets"},
                    203,{10,2445,"Cursed Cuishes"},
					204,{10,2447,"Cursed Sabatons"},
					
					--WOTG Fomor NM's
                    205,{40,15057,"Bricta's Cuffs"},
                    206,{30,16302,"Bloodbead Gorget"},
                    207,{40,16376,"Bahram Cuisses"},
                    208,{30,11411,"Shrewd Pumps"},
					209,{30,11410,"Setanta's Ledelsens"},
					
					--Einherjar Materials
                    210,{2,2465,"Rubber Cap"},
                    211,{2,2466,"Rubber Harness"},
                    212,{2,2467,"Rubber Gloves"},
                    213,{2,2468,"Rubber Chausses"},
					214,{2,2469,"Rubber Soles"},
					215,{2,2470,"Nethereye Chain"},
                    216,{2,2471,"Netherfield Chain"},
                    217,{2,2472,"Netherspirit Chain"},
                    218,{2,2473,"Nethercant Chain"},
					219,{2,2474,"Netherpact Chain"},
    
					--Homam Set
					250,{30,15240,"Homam Zucchetto"},
					251,{50,14905,"Homam Manopolas"},
					252,{50,14488,"Homam Corazza"},
					253,{75,15576,"Homam Cosciales"},
					254,{75,15661,"Homam Gambieras"},
					
					--Nashira Set
					255,{30,15241,"Nashira Turban"},
					256,{50,14906,"Nashira Gages"},
					257,{50,14489,"Nashira Manteel"},
					258,{75,15577,"Nashira Seraweels"},
					259,{75,15662,"Nashira Crackows"},
                  };

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local playerBayld = player:getCurrency("bayld")
    local rewardGearSet = {};
    
    -- Assume Gil traded was 1
    for i=1, #reward_gear, 2 do -- From 1 to the size of reward_gear above (which is 18 members), do everything after this repeat and increase i by 2 after each. Example: First pass i = 1     
        if (trade:hasItemQty(65535,reward_gear[i]) and trade:getItemCount() == 1) then -- Remember that i = 1 in this first pass. If the trade contains 1 gil and the quantity is the first member (i=1) in reward_gear array above, and the trade only has one item then do the below.
            rewardGearSet = reward_gear[i+1]; -- Take what is in the second member (i+1) of reward_gear (which is {5,16268}) and put that inside rewardGearSet
            if (player:getVar("Reward_NPC") == 0) then
                player:PrintToPlayer(string.format("You traded %i gil for %s. Trade %i gil again to obtain.", reward_gear[i], rewardGearSet[3], reward_gear[i]));
                player:setVar("Reward_NPC",rewardGearSet[2]);
                break;
            elseif not(player:getVar("Reward_NPC") == rewardGearSet[2]) then
                player:PrintToPlayer(string.format("You traded %i gil for %s. Trade %i gil again to obtain.", reward_gear[i], rewardGearSet[3], reward_gear[i]));
                player:setVar("Reward_NPC",rewardGearSet[2]);
                break;
            elseif (player:getVar("Reward_NPC") == rewardGearSet[2] and player:getFreeSlotsCount() < 1 or player:hasItem(rewardGearSet[2])) then -- If the player does not have inventory space or they already have the item in the second member in rewardGearSet (16268) which is the Kubira Beads
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,rewardGearSet[2]); -- Do not award the player and warn them they can't receive the item.
                break;                                                          -- Stop the loop and exit.
            elseif (player:getVar("Reward_NPC") == rewardGearSet[2] and rewardGearSet[1] <= player:getCurrency("bayld")) then -- Otherwise, if the first member of the rewardGearSet (5) is less than or equal to the player's current bayld balance then allow the trade.
                player:addItem(rewardGearSet[2]);                       -- Add the item in the second member of the rewardGearSet (16268) which is the Kubira Beads
                player:messageSpecial(ITEM_OBTAINED,rewardGearSet[2]);  -- tell the player they received the Kubira Beads
                player:delCurrency("bayld", rewardGearSet[1]);          -- Delete the bayid in the first member of the rewardGearSet array (5)
                player:tradeComplete();                                 -- Take the gil
                player:setVar("Reward_NPC",0);
                player:PrintToPlayer(string.format("Your bayld balance: %i", playerBayld-rewardGearSet[1])); -- Tell the player what their balance is
                printf ( "Player: %s",player:getName() );
                printf ( "Reward NPC" );
                printf ( "Item: %s \n", rewardGearSet[3] );
                printf ( "Bayld Balance: %i \n", playerBayld);
                break;                                                  -- Stop the loop and exit.
            else
                player:PrintToPlayer("You do not have enough bayld.");  -- If they have inventory space, and they don't have the item, but they don't have enough bayld then tell them they dont have enough.
                break;                                                  -- Stop the loop and exit.
            end
        end
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local playerBayld = player:getCurrency("bayld")
    
    player:PrintToPlayer(string.format("Your bayld balance: %i", playerBayld));
    player:PrintToPlayer("Recruitment and Event Rewards!");
    player:PrintToPlayer("Trade me the amount of gil for the item you want twice.");
    player:PrintToPlayer("And have the right bayld amount.");
    player:PrintToPlayer("Check forums under MHMU Mechanics.");
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

