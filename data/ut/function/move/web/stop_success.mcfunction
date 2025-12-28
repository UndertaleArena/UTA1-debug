#By Nebulirion

playsound minecraft:entity.painting.place player @a ~ ~ ~ 1.5 0.8
item replace entity @s armor.head with purple_dye 1

execute align y run tp @s ~ ~0.05 ~ ~ 0

tag @s remove web_prj
tag @s remove web_hit
tag @s add web_land

scoreboard players reset @s sid

scoreboard players set @s life 0
scoreboard players set @s lifetime 140