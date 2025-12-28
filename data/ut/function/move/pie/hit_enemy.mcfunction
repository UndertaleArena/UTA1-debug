###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
scoreboard players set #damage damage 0
scoreboard players set #gain dt 200
scoreboard players set #gain will 200
###WILL
execute at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 4 normal @a[scores={Q=1..}]
scoreboard players remove @s will 20
function ut:player/will/lose
###MAIN
function ut:move/hit/main