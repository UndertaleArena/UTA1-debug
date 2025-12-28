#By Nebulirion

execute if score @s trigger matches 1..200 run function ut:lobby/setting/player/trigger

scoreboard players reset @s trigger
scoreboard players enable @s trigger