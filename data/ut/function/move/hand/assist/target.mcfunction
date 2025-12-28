#Original By Nebulirion, SY edited

#tag give
tag @a[distance=..36,tag=playing,tag=!untargetable] add hand_target

#teammate remove
execute as @a[tag=hand_target] if score @s tid = #user tid run tag @s remove hand_target
#say @a[tag=hand_target]

#nearest lock
execute if entity @a[tag=hand_target] at @p[tag=hand_target] run tp @s ~ ~1 ~
execute unless entity @a[tag=hand_target] at @s run function ut:move/hand/assist/ray

#tag remove
tag @a remove hand_target