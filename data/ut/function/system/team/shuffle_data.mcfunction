#By Nebulirion

data modify storage minecraft:soul Temp set value []

execute unless data storage minecraft:soul RandomTeamList[0] run data modify storage minecraft:soul RandomTeamList set value [1,2,3,4,5,6,7,8]
execute if data storage minecraft:soul RandomTeamList[0] run function ut:system/team/shuffle_data_loop

data modify storage minecraft:soul RandomTeamList set from storage minecraft:soul Temp