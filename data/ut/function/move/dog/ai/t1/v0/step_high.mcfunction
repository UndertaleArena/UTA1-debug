#By Nebulirion

###RANDOMIZE
scoreboard players set min random 0
scoreboard players set max random 100

item replace entity 0-0-0-0-1 container.0 with bread
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result score #random dog run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount

####
execute if score #random dog matches ..50 rotated ~ ~-50 run function ut:move/dog/ai/t2/v0/start
execute if score #random dog matches ..50 if score #foundtarget dog matches 0 run function ut:move/dog/ai/random_turnback
execute if score #random dog matches 51..98 run function ut:move/dog/ai/random_turnback
execute if score #random dog matches 99.. run function ut:move/dog/ai/t5/v0/start
