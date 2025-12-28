#By Nebulirion
#
scoreboard players operation @s dtmax = @s plt3

scoreboard players operation #loader pid = @s pid
execute as @e[type=item,tag=save] if score @s sid = #loader pid run function ut:void

tag @s remove has_save