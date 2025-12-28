#By Nebulirion

scoreboard players set -thismove maze_direction 0
execute if score -dif maze_z matches 1 run scoreboard players set -thismove maze_direction 1
execute if score -dif maze_z matches -1 run scoreboard players set -thismove maze_direction 3

execute if entity @s[tag=force_slide] unless score @s maze_direction = -thismove maze_direction run scoreboard players set -thismove maze_direction 0

execute if score -thismove maze_direction matches 0 run function ut:lobby/minis/maze/enter_block_illegal
execute if score -thismove maze_direction matches 1..4 run function ut:lobby/minis/maze/enter_block_legal