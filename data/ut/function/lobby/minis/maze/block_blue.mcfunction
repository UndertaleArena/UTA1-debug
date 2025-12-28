#By Nebulirion

#If neither of the above conditions is met, the blue tile acts identically to a pink tile.

scoreboard players set -water_check maze_timer 2

#If the blue tile is adjacent to a yellow tile, the blue tiles act identically to a yellow tile.
execute unless block ~-1 152 ~ yellow_concrete_powder unless block ~ 152 ~-1 yellow_concrete_powder unless block ~1 152 ~ yellow_concrete_powder unless block ~ 152 ~1 yellow_concrete_powder run scoreboard players set -water_check maze_timer 0

#If the protagonist's flavor is "Orange," the blue tile acts identically to a yellow tile.
execute if score -water_check maze_timer matches 0 if entity @s[tag=orange_flavor] run scoreboard players set -water_check maze_timer 1

execute if score -water_check maze_timer matches 2 run function ut:lobby/minis/maze/block_yellow
execute if score -water_check maze_timer matches 1 run function ut:lobby/minis/maze/block_piranha