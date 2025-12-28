#By Nebulirion
#
scoreboard players add @s mpcooldown 1
scoreboard players add @s cdcooldown 1
execute if score @s mpcooldown matches 1 run scoreboard players add @s mpcooldown 1
execute if score @s cdcooldown matches 1 run scoreboard players add @s cdcooldown 1
#
execute anchored eyes run particle enchanted_hit ^ ^ ^0.5 0.25 0.25 0.25 0 1 force @s[scores={Q=1..}]
particle enchanted_hit ~ ~1 ~ .25 .5 .25 0.1 1 normal @a[scores={Q=1..}]
#
scoreboard players remove @s shocked_timer 1
execute unless score @s shocked_timer matches 1.. run function ut:move/effect/shocked/clear