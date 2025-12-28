#By Nebulirion

execute if entity @s[tag=monster_candy] run function ut:map/s_ruins/candy/loop

execute store result score @s y_pos run data get entity @s Pos[1] 100
execute if score @s y_pos < -LowPos y_pos run function ut:move/soul_item/tp_to_mid

execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #ut:item_out_of_range align y run tp @s ~ ~-0.25 ~

execute if block ~ ~ ~ light[waterlogged=true,level=0] run function ut:move/soul_item/tp_to_mid
execute if block ~ ~ ~ end_gateway run function ut:move/soul_item/tp_to_mid