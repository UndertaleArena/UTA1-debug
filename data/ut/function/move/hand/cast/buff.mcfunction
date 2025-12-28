#Original by Nebulirion, SY edited

#counting
function ut:move/hand/cast/count

#cast pair 1
execute as @e[tag=select_hand] at @s if score @s passive_timer matches 1 run function ut:move/hand/cast/main
execute as @e[tag=select_hand] at @s if score @s passive_timer matches 2 run function ut:move/hand/cast/main

#cast pair 2
execute as @e[tag=select_hand] at @s if score @s passive_timer matches 1 run function ut:move/hand/cast/main
execute as @e[tag=select_hand] at @s if score @s passive_timer matches 2 run function ut:move/hand/cast/main

#remove tag
tag @e[tag=select_hand] remove select_hand