#By Nebulirion

execute if entity @s[tag=mini_dummy,type=armor_stand] if score @s life2 matches 1 run function ut:lobby/minis/dummy/move/dummy/jump/kill

execute if entity @s[tag=mini_dummy,type=armor_stand] if score @s life2 matches 2 run function ut:lobby/minis/dummy/move/dummy/move/kill

#particle minecraft:cloud ~ ~0.75 ~ 0.4 0.4 0.4 0.08 20

function ut:void