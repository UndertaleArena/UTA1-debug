#By Nebulirion

scoreboard players set min random 0
scoreboard players set max random 360

item replace entity 0-0-0-0-1 container.0 with bread
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result entity @s Rotation[0] float 1 run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount