#By Nebulirion
#
#execute as @e[tag=papyrus] at @s run function ut:special/papyrus_loop
#ply
execute as @a at @s run function ut:player/main_ingame
#move
execute as @e[tag=move] at @s run function ut:move/main
#tmr
function ut:system/timer/main
#fin