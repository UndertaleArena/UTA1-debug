#By Nebulirion

scoreboard players set @s dogait 1
scoreboard players set @s dogaiv 0

###RANDOMIZE COUNTER
scoreboard players set min random 30
scoreboard players set max random 180

item replace entity 0-0-0-0-1 container.0 with bread
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result score @s dogaic run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount

data modify entity @s Rotation[1] set value 0.0f