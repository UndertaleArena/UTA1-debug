#By Nebulirion

#score timer
scoreboard players add @s life 1

#particle
particle minecraft:cloud ~ ~0.6 ~ 0.1 0.1 0.1 0.02 1 force @a[scores={Q=1..}] 
particle dust{color:[1,1,0],scale:1} ~ ~0.6 ~ 0.2 0.2 0.2 0 2 normal @a[scores={Q=3..}] 

#teleportation
tp @s ~ ~.5 ~

#kill detect
execute if score @s life matches 100.. run function ut:void