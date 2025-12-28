#Original By Nebulirion, SY edited

#particle display
execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 .2 1 normal @a[scores={Q=3..}]

#score add and check
scoreboard players add @s life 1
execute if score @s life matches 100.. run function ut:move/hand/disable/disable

#tag remove
tag @s remove stuck