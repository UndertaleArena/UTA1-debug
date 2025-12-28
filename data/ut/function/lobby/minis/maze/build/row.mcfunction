#By Nebulirion

scoreboard players operation -row_width maze_timer = -width maze_timer

execute positioned ^1 ^ ^ if score -row_width maze_timer matches 1.. run function ut:lobby/minis/maze/build/block

scoreboard players remove -length maze_timer 1
execute positioned ^ ^ ^1 if score -length maze_timer matches 1.. run function ut:lobby/minis/maze/build/row