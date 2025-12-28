#By Nebulirion

execute unless score dropItem gamerule matches 1 run function ut:player/nodrop2/find_drop
scoreboard players remove @s thrown_comp 1
execute if score @s thrown_comp matches 1.. run function ut:player/nodrop2/main