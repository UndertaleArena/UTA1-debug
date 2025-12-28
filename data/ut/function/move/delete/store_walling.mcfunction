#Original By Nebulirion, edited by SY

#filling wall
fill ~ ~ ~ ~8 ~ ~8 smooth_stone

#score change
scoreboard players add @s ray_distance 1

#fill wall
tellraw @a[tag=debug,tag=detail] ["Wall height: (",{"score":{"name":"@s","objective":"ray_distance"}},"/",{"score":{"name":"t","objective":"y_pos"}},")"]
execute if score @s ray_distance <= t y_pos positioned ~ ~1 ~ run function ut:move/delete/store_walling