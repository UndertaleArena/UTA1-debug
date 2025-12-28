#By Nebulirion

#STARTING
tag @s add void

#NORMAL
scoreboard players set #voiddeath store 1

execute if entity @s[tag=effect_novoid_inair] run scoreboard players set #voiddeath store 0

execute if entity @s[tag=!real_void] if score #voiddeath store matches 1 if score voidProtection gamerule matches 1 run function ut:player/void/protect
execute if score #voiddeath store matches 1 run function ut:player/void/death

#ENDING
tag @s remove void