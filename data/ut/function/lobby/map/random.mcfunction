#by Neb and SY91419 is kinda doing stuff too i guess

scoreboard players set min random 1
scoreboard players operation max random = -unlocked map 
scoreboard players add max random 1

item replace entity 0-0-0-0-1 container.0 with stone
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result score -temp map run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount

execute if score -temp map matches 1.. run function ut:lobby/map/random_next

scoreboard players set @s unloadtime 8
function ut:lobby/map/reload
