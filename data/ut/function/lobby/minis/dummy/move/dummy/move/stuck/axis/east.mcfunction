#Originally made by Nebulirion, edited by SY91419

#check for rotation range to axis
##EAST
execute rotated -90 0 run function ut:lobby/minis/dummy/move/dummy/move/wall

#if failed, try near
execute if entity @s[tag=stuck] if score @s rot matches 45..90 rotated -180 0 run function ut:lobby/minis/dummy/move/dummy/move/wall

execute if entity @s[tag=stuck] if score @s rot matches 90..135 rotated 0 0 run function ut:lobby/minis/dummy/move/dummy/move/wall