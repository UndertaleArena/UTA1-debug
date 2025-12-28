#By Nebulirion

scoreboard players reset dummy_timer tutorial

execute as @e[tag=mngd_as] at @s run function ut:lobby/minis/dummy/move/stop

execute as @a[tag=in_dummy_mng] at @s run function ut:lobby/minis/dummy/player/out

scoreboard players reset #did sid