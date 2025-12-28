#By Nebulirion

#tmr
#function ut:system/timer
#ply
execute as @a[tag=playing_tut] at @s run function ut:lobby/tutorial/player_loop
#move
execute as @e[tag=move] at @s run function ut:move/main
execute as @e[tag=dummy] at @s run function ut:lobby/dummy/loop
execute as @e[tag=tut_papyrus] at @s run function ut:lobby/tutorial/pap_loop
execute as @e[tag=ray_flowey] at @s run function ut:lobby/flowey/loop
#fin