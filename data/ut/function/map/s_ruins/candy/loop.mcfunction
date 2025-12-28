#By Nebulirion

scoreboard players add @s life2 1

execute if score @s life2 matches 5.. run particle end_rod ~ ~.65 ~ 0.15 0.15 0.15 0.02 1 normal @a[scores={Q=2..}]

execute if score @s life2 matches 5.. run scoreboard players reset @s life2