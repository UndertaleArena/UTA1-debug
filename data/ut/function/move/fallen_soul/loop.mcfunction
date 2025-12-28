#By Nebulirion

tp @s ~ ~-.5 ~ ~ ~
particle minecraft:totem_of_undying ~ ~0.6 ~ 0.2 0.2 0.2 0.02 2 force @a[scores={Q=3..}]

scoreboard players add @s life 1
execute if score @s life > @s lifetime run function ut:move/fallen_soul/end