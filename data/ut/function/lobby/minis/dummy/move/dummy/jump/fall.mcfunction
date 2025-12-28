#Originally made by Nebulirion, edited by SY91419

#block change
fill ~ ~-1 ~ ~ ~-5 ~ structure_void replace magenta_terracotta

#entity change
#data modify entity @s NoGravity set value 0b
data modify entity @s OnGround set value 0b

#score changes
scoreboard players add @s lifetime 1
