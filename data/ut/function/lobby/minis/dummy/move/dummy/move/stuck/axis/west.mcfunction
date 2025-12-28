#Originally made by Nebulirion, edited by SY91419

#go straight as axis
execute rotated 90 0 run function ut:lobby/minis/dummy/move/dummy/move/wall

#if failed, try near
execute if entity @s[tag=stuck] if score @s rot matches 225..270 rotated 0 0 run function ut:lobby/minis/dummy/move/dummy/move/wall

execute if entity @s[tag=stuck] if score @s rot matches 270..315 rotated 180 0 run function ut:lobby/minis/dummy/move/dummy/move/wall