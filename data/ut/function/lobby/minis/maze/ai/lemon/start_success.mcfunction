#By Nebulirion

execute at @e[tag=lemon_finder] run setblock ~ ~ ~ purple_stained_glass
execute positioned ~ ~-1 ~ run function ut:lobby/minis/maze/ai/extend_success
scoreboard players add -lemonsuccesscount maze_timer 1
kill @s