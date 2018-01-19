---------------------------------------------------------------------------------------------------
-- func: hidenpc <npcId>
-- desc: Shows an NPC if hidden.
--       Errors will despawn the mobID unless "noDepop" was specified (any value works).
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 5,
    parameters = "i"
};

function onTrigger(player, npcId)
    require("scripts/globals/status");

    if (npcId == nil) then
        player:PrintToPlayer("You must enter a valid npcId.");
        return;
    end

    local npc = GetNPCByID(npcId);
    if (npc == nil) then
        player:PrintToPlayer( string.format( "NPC with ID '%i' not found!", npcId ) );
        return;
	else
		npc:hideNPC();
    end

end;