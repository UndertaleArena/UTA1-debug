#By Nebulirion


data modify storage utstats:main LoadedPlayer.Gamemodes prepend value {Stats:[0,0,0,0,0,0,0,0,0,0,0,0],Levels:[1,0,0]}
execute store result storage utstats:main LoadedPlayer.Gamemodes[0].Id int 1 run scoreboard players get -modecount store

scoreboard players remove -modecount store 1
execute if score -modecount store matches 1.. run function ut:stats/create_player_data/gamemode_loop