#By Nebulirion

#

#
scoreboard players remove @s flame_timer 1
#
scoreboard players operation -check store = @s flame_timer
scoreboard players operation -check store %= 20 const
execute if score -check store matches 0 run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 1 normal @a[scores={Q=1..}]
execute if score -check store matches 0 run scoreboard players remove @s will 1
execute if score -check store matches 0 run function ut:player/will/lose
scoreboard players operation -check store %= 5 const
execute if score -check store matches 0 run particle flame ~ ~1 ~ .25 .5 .25 0 1 normal @a[scores={Q=1..}]
#
execute unless score @s flame_timer matches 1.. run function ut:move/effect/flame/clear