###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
execute at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 4 normal @a[scores={Q=2..}]
playsound minecraft:item.bucket.empty_lava player @a ~ ~ ~ 1 2
scoreboard players set #gain dt 300
scoreboard players set #gain will 400

scoreboard players operation #target pid = @s pid
execute as @e[tag=atker,limit=1] run function ut:move/hit_list/register
###MAIN
function ut:move/hit/main
###EXTRA2
scoreboard players remove @s will 10
function ut:player/will/lose
execute unless entity @s[tag=effect_immune] run function ut:move/effect/infatuated/give
execute as @a if score @s pid = #atker pid run function ut:move/flirt/adv_check