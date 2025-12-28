#By Nebulirion

scoreboard players set -lemonsuccesscount maze_timer 0

execute as @e[tag=maze_water] at @s run function ut:lobby/minis/maze/ai/lemon/start

scoreboard players remove -looplimit maze_timer 1
execute if score -lemonsuccesscount maze_timer matches 1.. if score -looplimit maze_timer matches 1.. run function ut:lobby/minis/maze/ai/lemon/main