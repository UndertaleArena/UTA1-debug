#By Nebulirion

execute if entity @s[tag=force_slide] run function ut:lobby/minis/maze/forceslide_end
scoreboard players operation @s maze_direction = -thismove maze_direction

execute if block ~ 152 ~ pink_concrete_powder run function ut:lobby/minis/maze/block_pink
execute if block ~ 152 ~ lime_concrete_powder run function ut:lobby/minis/maze/block_green
execute if block ~ 152 ~ red_concrete_powder run function ut:lobby/minis/maze/block_red
execute if block ~ 152 ~ yellow_concrete_powder run function ut:lobby/minis/maze/block_yellow
execute if block ~ 152 ~ orange_concrete_powder run function ut:lobby/minis/maze/block_orange
execute if block ~ 152 ~ purple_concrete_powder run function ut:lobby/minis/maze/block_purple
execute if block ~ 152 ~ blue_concrete_powder run function ut:lobby/minis/maze/block_blue