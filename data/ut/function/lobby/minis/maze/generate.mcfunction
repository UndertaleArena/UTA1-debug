#By Nebulirion

scoreboard players reset * played_maze
scoreboard players reset * clear_maze_this

tp @a[tag=maze_player] ~ ~1 ~

scoreboard players set mazeload store 0
execute if blocks 259 166 1306 259 166 1356 266 166 1306 all if entity @e[tag=maze_range1] if entity @e[tag=maze_range2] if entity @e[tag=maze_range3] if entity @e[tag=maze_range4] run scoreboard players set mazeload store 1
execute if score mazeload store matches 1 as @e[tag=mng_maze] at @s positioned ~ ~-1 ~ run function ut:lobby/minis/maze/build/main