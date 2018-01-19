---------------------------------------------------------------------------------------------------
-- func: gmgear
-- desc: Adds Judge gear to the GMs inventory.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "ii"
};

function onTrigger(player, itemId, quantity)
    player:addItem(17644)
	player:addItem(12332)
	player:addItem(16622)
	player:addItem(12523)
	player:addItem(12551)
	player:addItem(12679)
	player:addItem(12807)
	player:addItem(12935)
	player:addItem(13074)
	player:addItem(13215)
	player:addItem(13358)
	player:addItem(13505)
	player:addItem(13358)
	player:addItem(13505)
	player:addItem(13606)
	player:addItem(17012)
	player:addItem(17174)
	player:addItem(17326, 99)
	player:addItem(17406)
end