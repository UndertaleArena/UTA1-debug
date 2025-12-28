#By Nebulirion

#scoreboard players operation n store = -GamesPlayed stat
#scoreboard players operation n store -= -GamesQuit stat
#scoreboard players operation n store -= -GamesFinished stat
#execute if score n store matches 1.. run scoreboard players operation -GamesQuit stat += n store
#execute if score n store matches 1.. run scoreboard players operation n store *= 840 const
#execute if score n store matches 1.. run scoreboard players operation n store *= 2 const
#execute if score n store matches 1.. run scoreboard players operation -LosePoints stat += n store

scoreboard players operation -ElimCount stat = -KillCount stat
scoreboard players operation -ElimCount stat += -SpareCount stat

scoreboard players operation -KDR stat = -ElimCount stat
scoreboard players operation -KDR stat *= 10000 const
scoreboard players operation -KDR stat /= -DeathCount stat

scoreboard players operation -WinRate stat = -GamesWon stat
scoreboard players operation -WinRate stat *= 10000 const
scoreboard players operation -WinRate stat /= -GamesPlayed stat
