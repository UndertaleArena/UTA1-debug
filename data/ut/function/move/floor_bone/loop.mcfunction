#By Nebulirion

execute unless entity @s[tag=waitingbone] run function ut:move/floor_bone/step

scoreboard players add @s life2 1
scoreboard players add @s plt3 1
execute if score @s life2 matches 2.. at @s run function ut:move/floor_bone/loop2
execute if score @s plt3 matches 2.. at @s run function ut:move/floor_bone/loop3