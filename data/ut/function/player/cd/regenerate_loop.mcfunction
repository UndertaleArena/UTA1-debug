#By Nebulirion


scoreboard players remove @s cdextra 100
scoreboard players add @s cd 1
execute if score @s cdextra matches 100.. run function ut:player/cd/regenerate_loop