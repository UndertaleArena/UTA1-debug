#By Nebulirion

tag @s add jumppad_p
scoreboard players operation #self pid = @s pid
###
execute as @e[tag=jumppad_as] if score @s sid = #self pid run function ut:move/jumppad/end
###
tag @s remove jumppad_p

scoreboard players remove @s[tag=jumppad_user] move_loop 1
tag @s remove jumppad_user