#By Nebulirion

data modify storage utstats:main LoadedPlayer.Characters prepend value {Stats:[0,0,0,0,0,0,0,0,0,0,0,0],Levels:[1,0,0]}
data modify storage utstats:main LoadedPlayer.Favourites append value 0
execute store result storage utstats:main LoadedPlayer.Characters[0].Id int 1 run scoreboard players get -chrcount store

scoreboard players remove -chrcount store 1
execute if score -chrcount store matches 1.. run function ut:stats/create_player_data/character_loop