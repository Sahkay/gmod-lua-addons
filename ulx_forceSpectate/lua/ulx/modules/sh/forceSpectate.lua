CATEGORY_NAME = "User Management"
function ulx.forceSpectate(calling_ply, target_plys)
  for i=1, #target_plys do
		local currentTarget = target_plys[i]
    --[[ use the following for Prop Hunt
    currentTarget:Kill()
    currentTarget:SetTeam(TEAM_SPECTATOR) ]]--
    -- use the following for Deathrun
    currentTarget:ConCommand("deathrun_spectate_only 1")
  end
end
local forceSpectate = ulx.command(CATEGORY_NAME, "ulx forcespectate", ulx.forceSpectate, "!forcespectate")
forceSpectate:addParam{type=ULib.cmds.PlayersArg, hint="player"}
forceSpectate:defaultAccess(ULib.ACCESS_ADMIN)
forceSpectate:help("Forces player to spectate")