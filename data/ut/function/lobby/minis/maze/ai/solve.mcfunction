#By Nebulirion
scoreboard players set -breakwallcount maze_timer 0
scoreboard players set -solved maze_timer 0
scoreboard players set -looplimit maze_timer 250

kill @e[tag=maze_marker]

function ut:lobby/minis/maze/ai/extend_success

execute if entity @e[tag=maze_solver,limit=1] run function ut:lobby/minis/maze/ai/solve_loop

kill @e[tag=maze_marker]

#execute if score -solved maze_timer matches 1 run say have solution!!
execute if score -solved maze_timer matches 0 run say !!!maze no solution waring!!! Please Report this BUG