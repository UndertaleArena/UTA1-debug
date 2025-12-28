#By Nebulirion

tag @e[tag=maze_wall,sort=furthest,limit=3] add maze_wall_far
execute as @e[tag=maze_wall_far,limit=1,sort=random] at @s run function ut:lobby/minis/maze/ai/break_wall
tag @e[tag=maze_wall_far] remove maze_wall_far