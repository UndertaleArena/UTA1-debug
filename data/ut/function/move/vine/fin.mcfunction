#By Nebulirion

item replace entity @s armor.head with minecraft:melon_seeds 1
#execute positioned ^ ^ ^-1 align y run tp @s ~ ~ ~ ~ 0
tag @s add fin
tag @s remove landed
scoreboard players set @s life 0
scoreboard players set @s lifetime 240