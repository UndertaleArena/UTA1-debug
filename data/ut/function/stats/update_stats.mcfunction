#By Nebulirion
#
scoreboard players operation -GamesPlayed stat += -add st_gamesplayed
scoreboard players operation -GamesFinished stat += -add st_gamesfinished
scoreboard players operation -GamesWon stat += -add st_gameswon
scoreboard players operation -KillCount stat += -add st_ckillc
scoreboard players operation -SpareCount stat += -add st_csparec
scoreboard players operation -DeathCount stat += -add st_cdeathc
scoreboard players operation -DamageDealt stat += -add st_cdmg
scoreboard players operation -DTused stat += -add st_cdtuse
scoreboard players operation -GameTime stat += -add st_gametime
scoreboard players operation -WinPoints stat += -add st_wp
scoreboard players operation -LosePoints stat += -add st_lp
scoreboard players operation -GamesQuit stat += -add st_gamesquit
#
execute store result storage utstats:main LoadedStats.Stats[0] int 1 run scoreboard players get -GamesPlayed stat
execute store result storage utstats:main LoadedStats.Stats[1] int 1 run scoreboard players get -GamesFinished stat
execute store result storage utstats:main LoadedStats.Stats[2] int 1 run scoreboard players get -GamesWon stat
execute store result storage utstats:main LoadedStats.Stats[3] int 1 run scoreboard players get -KillCount stat
execute store result storage utstats:main LoadedStats.Stats[4] int 1 run scoreboard players get -SpareCount stat
execute store result storage utstats:main LoadedStats.Stats[5] int 1 run scoreboard players get -DeathCount stat
execute store result storage utstats:main LoadedStats.Stats[6] int 1 run scoreboard players get -DamageDealt stat
execute store result storage utstats:main LoadedStats.Stats[7] int 1 run scoreboard players get -DTused stat
execute store result storage utstats:main LoadedStats.Stats[8] int 1 run scoreboard players get -GameTime stat
execute store result storage utstats:main LoadedStats.Stats[9] int 1 run scoreboard players get -WinPoints stat
execute store result storage utstats:main LoadedStats.Stats[10] int 1 run scoreboard players get -LosePoints stat
execute store result storage utstats:main LoadedStats.Stats[11] int 1 run scoreboard players get -GamesQuit stat
#
function ut:stats/level/update
#
execute store result storage utstats:main LoadedStats.Levels[0] int 1 run scoreboard players get -CharacterLevel stat
execute store result storage utstats:main LoadedStats.Levels[1] int 1 run scoreboard players get -CharacterExp stat
execute store result storage utstats:main LoadedStats.Levels[2] int 1 run scoreboard players get -CharacterTotal stat
#