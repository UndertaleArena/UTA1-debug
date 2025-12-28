#By Nebulirion

execute as @e[tag=lemon_finder,tag=!checked,limit=1] at @s run function ut:lobby/minis/maze/ai/lemon/extend

scoreboard players remove -lemonlooplimit maze_timer 1
execute if score -lemonlooplimit maze_timer matches 1.. if entity @e[tag=lemon_finder,tag=!checked,limit=1] run function ut:lobby/minis/maze/ai/lemon/start_loop