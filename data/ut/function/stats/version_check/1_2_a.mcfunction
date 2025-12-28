#By Nebulirion

execute store result score -chrcount store if data storage ut:chrs Data[]
execute store result score -thiscount store if data storage utstats:main LoadedPlayer.Characters[]
execute if score -thiscount store < -chrcount store run function ut:stats/version_check/1_2_a_loop

data modify storage utstats:main LoadedPlayer.Gamemodes set value []
execute store result score -modecount store if data storage ut:modes Data[]
scoreboard players remove -modecount store 1 
execute if score -modecount store matches 1.. run function ut:stats/create_player_data/gamemode_loop

data modify storage utstats:main LoadedPlayer.DataVersion set value "1.2.a" 