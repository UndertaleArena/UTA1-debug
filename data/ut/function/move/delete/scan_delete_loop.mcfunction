#Original By Nebulirion, edited by SY

#block replacement
execute if score @s ray_distance matches 0 run fill ~-2 ~ ~-2 ~2 ~ ~2 end_gateway{Age:240L}
execute unless score @s ray_distance matches 0 run fill ~-2 ~ ~-2 ~2 ~ ~2 light[level=1]

#glass coloring
fill ~-3 ~ ~-3 ~3 ~ ~3 minecraft:purple_stained_glass replace glass
execute if score @s ray_distance matches 0 run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 minecraft:purple_stained_glass replace glass

#score setting
scoreboard players add @s ray_distance 1

#start removing
execute if score @s ray_distance < -distance ray_distance positioned ~ ~1 ~ run function ut:move/delete/scan_delete_loop

#end block
execute if score @s ray_distance = -distance ray_distance positioned ~ ~1 ~ run fill ~-3 ~ ~-3 ~3 ~ ~3 light[level=1] replace air