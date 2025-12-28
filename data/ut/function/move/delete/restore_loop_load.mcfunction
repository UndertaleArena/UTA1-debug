#Original By Nebulirion, edited by SY

#loop load all the storing place
execute positioned ~ ~ ~-9 run forceload add ~ ~ ~ ~

scoreboard players add @s ray_distance 1

#loop check
execute positioned ~ ~ ~-9 if score @s ray_distance < -distance ray_distance run function ut:move/delete/restore_loop_load

execute if score @s[tag=!loaded] ray_distance = -distance ray_distance run function ut:move/delete/restore_load