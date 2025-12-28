#By NEb it's currently 12:43AM

#
tag @s add save_user
scoreboard players operation #user pid = @s pid
#
execute as @e[tag=save] if score @s pid = #user pid run tag @s add save_point
#
execute if entity @e[tag=save_point] run tag @s remove dead
execute if entity @e[tag=save_point] at @s run function ut:move/save/load
#
tag @e[tag=save_point] remove save_point
tag @s remove save_user
#