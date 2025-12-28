#By Nebulirion

scoreboard players set min random 0
scoreboard players operation max random = bombRate gamerule

item replace entity 0-0-0-0-1 container.0 with bread
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result score -doggggo random run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount

tag @s remove dog_bomb
execute if score -doggggo random matches 0 run function ut:move/dog/capture_real_bomb
execute if score -doggggo random matches 1.. run function ut:move/dog/capture_real_real