#Original By Nebulirion, edited by SY

#ray score remove
scoreboard players remove @s ray_distance 1
scoreboard players remove @s y_pos 100

#lower low check
execute if score @s y_pos matches ..100 run scoreboard players set @s ray_distance 0

#check air count
execute if score @s ray_distance matches 1.. run function ut:move/delete/store/low_trans

#loop check
execute if score @s ray_distance matches 1.. positioned ~ ~-1 ~ run function ut:move/delete/store/low_loop