#By Nebulirion

execute unless score @s life2 matches 1.. run tp @s ^ ^ ^0.12
execute if score @s life2 matches 1.. run tp @s ^ ^ ^0.36

execute if score @s life2 matches 1.. run particle item{item:blue_terracotta} ~ ~.1 ~ 0.1 0 0.1 0 1