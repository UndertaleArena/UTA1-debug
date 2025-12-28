#By Nebulirion

scoreboard players set -width maze_timer 6
scoreboard players set -length maze_timer 48

scoreboard players set min random 1
scoreboard players set max random 8

execute positioned ^ ^ ^1 run function ut:lobby/minis/maze/build/row

scoreboard players set min random 1
scoreboard players set max random 3

execute positioned ^3 ^ ^1 run function ut:lobby/minis/maze/build/block
execute positioned ^4 ^ ^1 run function ut:lobby/minis/maze/build/block

execute positioned ^3.6 ^ ^1 positioned ~ 166 ~ run function ut:lobby/minis/maze/ai/solve