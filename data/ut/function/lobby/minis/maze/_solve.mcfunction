#By Nebulirion

scoreboard players set min random 1
scoreboard players set max random 3

fill 265 166 1307 260 167 1355 air
execute as @e[tag=mng_maze] at @s positioned ~ ~-1 ~ positioned ^3.6 ^ ^1 positioned ~ 166 ~ run function ut:lobby/minis/maze/ai/solve
#execute if score -solved maze_timer matches 1 run say have solution!!

execute if score -breakwallcount maze_timer matches ..2 run say !!!NEB LOOK I FAILED!!!