#By Nebulirion

#tmr
#function ut:system/timer
#ply#
#execute as @a[tag=playing_tut] at @s run function ut:lobby/tutorial/player_loop
#move
execute as @e[tag=ray_tut_s,tag=tut_s_loaded] at @s run function ut:lobby/tutorial/s/flowey_loop
#fin