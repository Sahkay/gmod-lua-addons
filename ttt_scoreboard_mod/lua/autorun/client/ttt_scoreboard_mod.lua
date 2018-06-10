hook.Add("TTTScoreboardColumns", "ttt_scoreboard_mod_columns", function(pnl)
  pnl:AddColumn("Level", function(ply)
    return ply:GetRank()
  end )
end )
hook.Add("TTTScoreboardMenu", "ttt_scoreboard_mod_menu", function(menu)
  local ply = menu.Player
  menu:AddOption("Copy SteamID", function()
    SetClipboardText(ply:SteamID())
  end )
  menu:AddOption("Show Profile", function()
    ply:ShowProfile()
  end )
end )