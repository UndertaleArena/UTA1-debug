#By Nebulirion

execute positioned ^ ^ ^2 run setblock ~ 163 ~ gray_stained_glass
execute positioned ^ ^ ^2 run fill ~ 160 ~ ~ 162 ~ air
execute positioned ^ ^ ^2 run setblock ~ 159 ~ smooth_stone_slab

function ut:lobby/soul/item
tag @s add active