#By Nebulirion

scoreboard players set -lemonlooplimit maze_timer 250
scoreboard players set -foundlemon maze_timer 0

function ut:lobby/minis/maze/ai/lemon/extend_success

function ut:lobby/minis/maze/ai/lemon/start_loop

execute if score -foundlemon maze_timer matches 0 run function ut:lobby/minis/maze/ai/lemon/start_fail
execute if score -foundlemon maze_timer matches 1 run function ut:lobby/minis/maze/ai/lemon/start_success
kill @e[tag=lemon_finder]