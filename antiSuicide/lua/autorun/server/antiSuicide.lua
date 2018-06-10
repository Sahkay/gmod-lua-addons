local function BlockSuicide(ply)
  if (ply:Team() == TEAM_PROPS and ply:Alive()) then
    PrintMessage(4, ply:Nick().. " tried to take the easy way out.")
  	return false
  end
end
hook.Add( "CanPlayerSuicide", "BlockSuicide", BlockSuicide )