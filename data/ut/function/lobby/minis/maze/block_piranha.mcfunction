#By Nebulirion

#If the protagonist's flavor is "Orange," the blue tile acts identically to a yellow tile.

execute unless entity @e[distance=..1,tag=maze_piranha] run function ut:lobby/minis/maze/piranha/cast

playsound minecraft:entity.phantom.bite player @s ~ ~ ~ .4 1.65

function ut:lobby/minis/maze/goback