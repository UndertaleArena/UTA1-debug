#By Nebulirion

scoreboard players set @s unloadtime 10
scoreboard players reset @s plt3
scoreboard players remove @s[tag=gb_user] move_loop 1
tag @s remove gb_user
tag @s remove dt_lock

attribute @s movement_speed modifier remove gbslow

scoreboard players operation #user pid = @s pid
execute as @e[type=husk,tag=gb_skull,tag=prep] if score @s pid = #user pid run function ut:void

execute if entity @s[tag=!passive_papyrus] run function ut:player/dt/reset

scoreboard players operation @s dtmath -= @s dthalf
execute if entity @s[tag=passive_papyrus] run scoreboard players operation @s dt = @s dtmath
scoreboard players reset @s dtmath
function ut:player/dt/lose