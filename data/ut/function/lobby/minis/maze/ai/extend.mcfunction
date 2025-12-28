#By Nebulirion

scoreboard players set -canextend maze_timer 0

execute rotated 0 0 positioned ^ ^ ^1 if block ~ ~ ~ air run function ut:lobby/minis/maze/ai/extend_check
execute rotated 90 0 positioned ^ ^ ^1 if block ~ ~ ~ air run function ut:lobby/minis/maze/ai/extend_check
execute rotated -90 0 positioned ^ ^ ^1 if block ~ ~ ~ air run function ut:lobby/minis/maze/ai/extend_check
execute rotated 180 0 positioned ^ ^ ^1 if block ~ ~ ~ air run function ut:lobby/minis/maze/ai/extend_check
kill @s

execute if block ~ ~ ~1 black_stained_glass run function ut:lobby/minis/maze/ai/solve_success