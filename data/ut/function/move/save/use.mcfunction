#By Nebulirion

scoreboard players set #reset dt 1
#
tag @s add save_user
scoreboard players operation #user pid = @s pid
#
execute as @e[tag=save] if score @s pid = #user pid run tag @s add save_point
#
execute unless entity @e[tag=save_point] run function ut:move/save/save
execute if entity @e[tag=save_point] run function ut:move/save/load
#
tag @e[tag=save_point] remove save_point
tag @s remove save_user