###Generated from Nebulagen made By Nebulirion
#04/17/2021, 15:58:07

execute store result score size store run data get entity @s equipment.head.components."minecraft:custom_model_data".floats[0]

scoreboard players add @s life2 1
execute if score @s life2 matches 2 run scoreboard players add size store 1
execute if score @s life2 matches 2 run scoreboard players set @s life2 0
#scoreboard players add size store 1

execute store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] int 1 run scoreboard players get size store