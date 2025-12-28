#By Nebulirion

scoreboard players add @s plt1 1
scoreboard players add @s plt2 1
execute if score @s plt1 matches 980.. run scoreboard players add @s plt2 1
execute if score @s plt2 matches 10 align xyz positioned ~.5 ~1 ~.5 run function ut:lobby/credit/a/loop_move_x_flash

execute if score @s plt1 matches 1000.. align xyz positioned ~.5 ~1 ~.5 run function ut:lobby/credit/a/loop_move_x_boom