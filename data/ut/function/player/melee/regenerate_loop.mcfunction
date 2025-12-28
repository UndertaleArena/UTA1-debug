#By Nebulirion


scoreboard players remove @s mlextra 100
scoreboard players add @s ml 1
execute if score @s mlextra matches 100.. run function ut:player/melee/regenerate_loop