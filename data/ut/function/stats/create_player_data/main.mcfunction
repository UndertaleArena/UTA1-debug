#By Nebulirion

#say data creating

data modify storage utstats:main LoadedPlayer set value {Player:{Stats:[0,0,0,0,0,0,0,0,0,0,0,0],Levels:[1,0,0]},Characters:[],Gamemodes:[],Favourites:[],DataVersion:"1.2.2",Scores:{Q:3},Recipes:{},Advancements:{}}
data modify storage utstats:main LoadedPlayer.UUID set from entity @s UUID

tag @s add creating_data
data modify block 255 2 255 front_text.messages[2] set value '{"selector":"@a[tag=creating_data]"}'
tag @s remove creating_data
data modify storage utstats:main LoadedPlayer.Name set from block 255 2 255 front_text.messages[2]

execute store result score -chrcount store if data storage ut:chrs Data[]
execute if score -chrcount store matches 1.. run function ut:stats/create_player_data/character_loop

execute store result score -modecount store if data storage ut:modes Data[]
scoreboard players remove -modecount store 1 
execute if score -modecount store matches 1.. run function ut:stats/create_player_data/gamemode_loop