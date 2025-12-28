#Originally made by Nebulirion, edited by SY91419

#state score change
scoreboard players add @s lifetime 1
scoreboard players set @s life 0

#rotation
execute if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~ 0 0
execute if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~ ~ ~ 90 0
execute if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~ 180 0
execute if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~ ~ ~ 270 0
execute if block ~ ~-2 ~ smooth_stone facing entity @e[type=marker,tag=mng_dummy,limit=1] feet run tp @s ~ ~ ~ ~180 0

#remove target
kill @e[tag=targeting,type=marker]