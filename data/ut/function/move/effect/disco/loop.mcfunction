#By Nebulirion

#
particle minecraft:dripping_obsidian_tear ~ ~0.1 ~ 0.2 0 0.2 0 1 normal @a[scores={Q=1..}]
#
scoreboard players remove @s disco_timer 1
execute unless score @s disco_timer matches 1.. run function ut:move/effect/disco/clear