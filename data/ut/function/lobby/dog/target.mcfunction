#By Nebulirion

scoreboard players set @s unloadtime 20
scoreboard players set dogsound store 0

scoreboard players set min random 1
scoreboard players set max random 205

item replace entity 0-0-0-0-1 container.0 with mycelium
item modify entity 0-0-0-0-1 container.0 ut:random
execute store result score dog info run data get entity 0-0-0-0-1 Item.components."minecraft:attribute_modifiers".modifiers[0].amount

execute if score dog info matches 49 run scoreboard players set dog info 301

execute if score dog info matches 152..202 run scoreboard players remove dog info 202
execute if score dog info matches -50..133 run function ut:lobby/dog/1
execute if score dog info matches 134..140 run function ut:lobby/dog/2
execute if score dog info matches 141..151 run function ut:lobby/dog/3
execute if score dog info matches 203..204 run function ut:lobby/dog/2x2
execute if score dog info matches 205 run scoreboard players set dogsound store 2

execute if score dogsound store matches 0 run playsound minecraft:entity.wolf.ambient player @s ~ ~ ~ 2 1.5
execute if score dogsound store matches 1 run playsound minecraft:entity.wolf.ambient player @s ~ ~ ~ 2 0.75
execute if score dogsound store matches 2 run playsound minecraft:entity.wolf.ambient player @s ~ ~ ~ 2 0.5