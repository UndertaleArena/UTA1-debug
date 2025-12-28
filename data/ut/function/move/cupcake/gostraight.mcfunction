#By Nebulirion

scoreboard players add @s life2 1

execute if score @s life2 matches 5.. run playsound minecraft:entity.spider.step player @a ~ ~ ~ 0.5 1
execute if score @s life2 matches 5.. run scoreboard players reset @s life2

particle item{item:blue_terracotta} ~ ~0.2 ~ 0.4 0 0.4 0 8 normal @a[scores={Q=3..}]

execute at @s run tp @s ^ ^ ^0.5

scoreboard players set #moved life 1