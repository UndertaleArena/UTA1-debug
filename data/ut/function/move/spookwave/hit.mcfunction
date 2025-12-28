###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
playsound minecraft:item.bucket.empty_lava player @a ~ ~ ~ 1 2
scoreboard players set #gain dt 150
scoreboard players set #gain will 200
scoreboard players set #wdmg ptsd_wdmg 8

execute unless entity @s[tag=effect_immune] run function ut:move/effect/sadness/give
execute unless entity @s[tag=effect_immune] run function ut:move/effect/sadness/give

scoreboard players operation #target pid = @s pid
execute as @e[tag=atker,limit=1] run function ut:move/hit_list/register
###WILL
execute at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 2 normal @a[scores={Q=1..}]
scoreboard players remove @s will 8
function ut:player/will/lose
###MAIN
function ut:move/hit/main