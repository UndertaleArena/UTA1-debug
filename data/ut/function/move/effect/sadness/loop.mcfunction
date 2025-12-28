#By Nebulirion

execute if entity @s[tag=effect_sadness_max] run particle minecraft:soul ~ ~1.2 ~ 0.35 0.35 0.35 0.01 2 force @a[scores={Q=1..}]

##scoreboard players remove @s will 1
##function ut:player/will/lose

scoreboard players remove @s sadness_timer 1
execute unless score @s sadness_timer matches 1.. run function ut:move/effect/sadness/clear