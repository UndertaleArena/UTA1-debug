#By Nebulirion

#
particle minecraft:instant_effect ~ ~1 ~ .2 .5 .2 0 1 force @a[scores={Q=1..}]
#
scoreboard players remove @s hyper_timer 1
execute unless score @s hyper_timer matches 1.. run function ut:move/effect/hyper/clear