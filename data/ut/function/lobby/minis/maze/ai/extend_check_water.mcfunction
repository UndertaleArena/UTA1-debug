#By Nebulirion

scoreboard players set -foundyellow maze_timer 0

execute if score -foundyellow maze_timer matches 0 if block ~1 152 ~ yellow_concrete_powder run function ut:lobby/minis/maze/ai/extend_wall
execute if score -foundyellow maze_timer matches 0 if block ~-1 152 ~ yellow_concrete_powder run function ut:lobby/minis/maze/ai/extend_wall
execute if score -foundyellow maze_timer matches 0 if block ~ 152 ~1 yellow_concrete_powder run function ut:lobby/minis/maze/ai/extend_wall
execute if score -foundyellow maze_timer matches 0 if block ~ 152 ~-1 yellow_concrete_powder run function ut:lobby/minis/maze/ai/extend_wall

execute if score -foundyellow maze_timer matches 0 run function ut:lobby/minis/maze/ai/extend_water