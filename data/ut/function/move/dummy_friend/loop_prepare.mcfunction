###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

scoreboard players add @s life2 1
execute if score @s life2 matches 10 run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 1
execute if score @s life2 matches 20 run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 0
execute if score @s life2 matches 21 run scoreboard players set @s life2 1

execute if score @s life matches ..30 rotated ~ 0 run tp @s ^ ^0.008 ^0.004