#Originally made by Nebulirion, edited by SY91419

#display remove
item replace entity @s armor.head with air

#entity data
data modify entity @s NoGravity set value 1b

execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s x_pos
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s y_pos
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s z_pos

#animation reset
execute at @s run fill ~ ~ ~ ~ ~20 ~ magenta_terracotta replace glass
execute at @s run fill ~ ~ ~ ~ ~20 ~ magenta_terracotta replace structure_void
execute at @s run fill ~ ~ ~ ~ ~20 ~ air replace red_wool