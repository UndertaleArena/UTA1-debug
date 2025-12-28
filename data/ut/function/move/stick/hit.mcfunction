#By Nebulirion

particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 2 normal @a[scores={Q=1..}]
#
scoreboard players set #gain dt 300
scoreboard players set #gain will 200
scoreboard players set #damage damage 0
#
scoreboard players remove @s will 10
function ut:player/will/lose
#
function ut:move/hit/main_with_atker_p
#
execute if entity @a[tag=attack_buffed,tag=atker_melee] run function ut:move/stick/hit_buffed