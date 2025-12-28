#By Nebulirion

scoreboard players add -breakwallcount maze_timer 1

kill @s
execute positioned ~ 152 ~ run function ut:lobby/minis/maze/build/block

function ut:lobby/minis/maze/ai/extend_success

setblock ~ ~ ~ yellow_stained_glass