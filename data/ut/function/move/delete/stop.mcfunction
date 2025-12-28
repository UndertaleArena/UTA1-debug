#By Nebulirion

#reset lite
function ut:move/delete/stop_lite

execute if entity @s[tag=!passive_papyrus] run function ut:player/dt/reset

scoreboard players operation @s dtmath -= @s dthalf
execute if entity @s[tag=passive_papyrus] run scoreboard players operation @s dt = @s dtmath
scoreboard players reset @s dtmath
#stuff reset
scoreboard players reset @s plt3
scoreboard players reset @s plt3b
scoreboard players remove @s[tag=delete_user] move_loop 1
tag @s remove delete_user
tag @s remove dt_lock