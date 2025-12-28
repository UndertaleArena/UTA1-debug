###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
execute if entity @e[tag=atker,tag=buffed_info_bullet,limit=1] run scoreboard players set #halfgainflag dt 1
###PARTICLE
execute positioned as @s positioned ~ ~1 ~ run particle item{item:yellow_concrete} ^ ^ ^-1 0.05 0 0.05 0.1 8 normal @a[scores={Q=2..}]
###WILL
execute at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 1 normal @a[scores={Q=1..}]
scoreboard players remove @s will 5
function ut:player/will/lose
###MAIN
function ut:move/hit/main
###EXTRA2
scoreboard players set #halfgainflag dt 0