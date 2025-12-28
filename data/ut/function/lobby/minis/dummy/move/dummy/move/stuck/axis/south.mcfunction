#Originally made by Nebulirion, edited by SY91419

#go straight as axis
execute rotated 0 0 run function ut:lobby/minis/dummy/move/dummy/move/wall

#if failed, try near
execute if entity @s[tag=stuck] if score @s rot matches 135..180 rotated -90 0 run function ut:lobby/minis/dummy/move/dummy/move/wall

execute if entity @s[tag=stuck] if score @s rot matches 180..225 rotated 90 0 run function ut:lobby/minis/dummy/move/dummy/move/wall