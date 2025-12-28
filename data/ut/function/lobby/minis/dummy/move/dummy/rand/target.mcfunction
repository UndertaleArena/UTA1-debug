#By Nebulirion

#rotation
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~ 0 0
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=east] run tp @s ~ ~ ~ 90 0
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~ 180 0
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run tp @s ~ ~ ~ 270 0
execute if block ~ ~-1 ~ smooth_stone facing entity @e[type=marker,tag=mng_dummy,limit=1] feet run tp @s ~ ~ ~ ~ 0

#score change
scoreboard players set @s lifetime 0

#type change
execute if block ~ ~-3 ~ lime_wool run function ut:lobby/minis/dummy/move/dummy/jump/init
execute if block ~ ~-3 ~ cyan_wool run function ut:lobby/minis/dummy/move/dummy/move/init