#By Nebulirion

scoreboard players set min random 90
scoreboard players set max random 271

item replace entity 0-0-0-0-1 container.0 with bread
item modify entity 0-0-0-0-1 container.0 ut:random

execute store result score #newrot store run data get entity @s Rotation[0] 10
execute store result score #newrotadd store run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount 10

tp @s ~ ~ ~ ~ 0

scoreboard players operation #newrot store += #newrotadd store
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get #newrot store