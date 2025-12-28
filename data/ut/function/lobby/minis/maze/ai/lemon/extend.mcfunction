#By Nebulirion

execute rotated 0.000 0 positioned ^ ^ ^1 if block ~ ~ ~ purple_stained_glass if block ^ ^-1 ^1 #ut:maze/lemon_path run function ut:lobby/minis/maze/ai/lemon/extend_find
execute rotated 90.00 0 positioned ^ ^ ^1 if block ~ ~ ~ purple_stained_glass if block ^ ^-1 ^1 #ut:maze/lemon_path run function ut:lobby/minis/maze/ai/lemon/extend_find
execute rotated -90.0 0 positioned ^ ^ ^1 if block ~ ~ ~ purple_stained_glass if block ^ ^-1 ^1 #ut:maze/lemon_path run function ut:lobby/minis/maze/ai/lemon/extend_find
execute rotated 180.0 0 positioned ^ ^ ^1 if block ~ ~ ~ purple_stained_glass if block ^ ^-1 ^1 #ut:maze/lemon_path run function ut:lobby/minis/maze/ai/lemon/extend_find

execute rotated 0.000 0 positioned ^ ^ ^1 if block ~ ~-1 ~ #ut:maze/lemon_path unless block ~ 152 ~ orange_concrete_powder unless block ~ ~ ~ white_stained_glass run function ut:lobby/minis/maze/ai/lemon/extend_success
execute rotated 90.00 0 positioned ^ ^ ^1 if block ~ ~-1 ~ #ut:maze/lemon_path unless block ~ 152 ~ orange_concrete_powder unless block ~ ~ ~ white_stained_glass run function ut:lobby/minis/maze/ai/lemon/extend_success
execute rotated -90.0 0 positioned ^ ^ ^1 if block ~ ~-1 ~ #ut:maze/lemon_path unless block ~ 152 ~ orange_concrete_powder unless block ~ ~ ~ white_stained_glass run function ut:lobby/minis/maze/ai/lemon/extend_success
execute rotated 180.0 0 positioned ^ ^ ^1 if block ~ ~-1 ~ #ut:maze/lemon_path unless block ~ 152 ~ orange_concrete_powder unless block ~ ~ ~ white_stained_glass run function ut:lobby/minis/maze/ai/lemon/extend_success

tag @s add checked