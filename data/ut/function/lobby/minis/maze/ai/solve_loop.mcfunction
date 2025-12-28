#By Nebulirion

execute as @e[tag=maze_solver,limit=1,sort=furthest] at @s run function ut:lobby/minis/maze/ai/extend

execute if score -looplimit maze_timer matches 1 run say !!limit reached warning!!
scoreboard players remove -looplimit maze_timer 1

execute if score -looplimit maze_timer matches 1.. unless entity @e[tag=maze_solver,limit=1] as @e[tag=maze_water,limit=1] at @s run function ut:lobby/minis/maze/ai/lemon/main

execute if score -looplimit maze_timer matches 1.. unless entity @e[tag=maze_solver,limit=1] unless entity @e[tag=maze_water,limit=1] run function ut:lobby/minis/maze/ai/break_wall_pre

execute if score -looplimit maze_timer matches 1.. if entity @e[tag=maze_solver,limit=1] run function ut:lobby/minis/maze/ai/solve_loop