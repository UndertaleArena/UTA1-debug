#By Nebulirion

execute at @e[tag=lemon_finder] run setblock ~ ~ ~ air
execute positioned ~ ~-1 ~ run function ut:lobby/minis/maze/ai/extend_wall
kill @s