#By Nebulirion

execute if block ~ ~ ~ player_head align xyz positioned ~.5 ~.5 ~.5 run function ut:lobby/ray/head
execute if block ~ ~ ~ end_rod if block ~ ~-1 ~ bone_block run function ut:lobby/ray/dog

execute if block ~ ~ ~ sea_pickle run function ut:lobby/ray/pickle
execute if block ~ ~ ~ green_terracotta run function ut:lobby/tutorial/root_click

execute if score @s ray_distance matches 1.. run scoreboard players set @s ray_distance 0