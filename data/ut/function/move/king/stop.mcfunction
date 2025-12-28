#By Nebulirion

execute if block ~ ~-1 ~ #ut:trans run kill @s
#tp @s 0 0 0
tp @s ~ ~ ~ ~ ~
tag @s add stone
item replace entity @s armor.head with flower_pot
scoreboard players set @s lifetime 40
scoreboard players set @s life 0