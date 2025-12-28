#By Nebulirion


scoreboard players remove @s mpextra 100
scoreboard players add @s mp 1
execute if score @s mpextra matches 100.. run function ut:player/mp/regenerate_loop