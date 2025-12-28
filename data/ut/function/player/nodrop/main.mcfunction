#By Nebulirion

execute unless score dropItem gamerule matches 1 run function ut:player/nodrop/find_drop
scoreboard players remove @s thrown_coas 1
execute if score @s thrown_coas matches 1.. run function ut:player/nodrop/main