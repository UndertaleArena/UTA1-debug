#By Nebulirion

execute if block ~ 152 ~ #ut:maze/free run function ut:lobby/minis/maze/ai/extend_success
execute if block ~ 152 ~ #ut:maze/wall run function ut:lobby/minis/maze/ai/extend_wall
execute if block ~ 152 ~ blue_concrete_powder run function ut:lobby/minis/maze/ai/extend_check_water

execute if block ~ 152 ~ purple_concrete_powder run function ut:lobby/minis/maze/ai/extend_check_lemon