#By Nebulirion

setblock ~ ~1 ~ purple_stained_glass
execute positioned ^ ^ ^1 if block ~ 153 ~ barrier positioned ^ ^ ^-1 run function ut:lobby/minis/maze/ai/extend_success
execute positioned ^ ^ ^1 if block ~ ~ ~ air unless block ~ 153 ~ barrier run function ut:lobby/minis/maze/ai/extend_check
execute positioned ^ ^ ^1 if block ~ ~ ~ black_stained_glass run function ut:lobby/minis/maze/ai/solve_success

#execute if block ~ ~ ~1 #ut:maze/glass_marks if block ~ ~ ~-1 #ut:maze/glass_marks if block ~-1 ~ ~ #ut:maze/glass_marks if block ~1 ~ ~ #ut:maze/glass_marks run setblock ~ ~ ~ blue_stained_glass