#By Nebulirion

tp @s ~ ~-1 ~ ~ ~
particle minecraft:totem_of_undying ~ ~0.6 ~ 0.25 0.5 0.25 0.02 5 force @a[scores={Q=3..}]
#particle dust{color:[1,1,0],scale:1} ~ ~0.6 ~ 0.2 0.2 0.2 0 2

scoreboard players add @s life 1
execute if score @s life > @s lifetime run kill @s