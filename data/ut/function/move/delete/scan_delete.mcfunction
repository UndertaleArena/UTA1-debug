#Original By Nebulirion, edited by SY

tellraw @a[tag=detail,tag=debug] ["Before scan Y: ",{"nbt":"Pos[1]","entity":"@s"}]

#init score value
execute store result score -distance ray_distance run data get entity @s data.range 1
scoreboard players set @s ray_distance 0

#start removing
execute at @s run function ut:move/delete/scan_delete_loop

#vine restore thing
execute store result entity @s Pos[1] double 1 run data get entity @s data.max 1
scoreboard players set @s ray_distance 0
execute at @s run function ut:move/delete/vine_restore_loop