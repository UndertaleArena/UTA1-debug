#Original By Nebulirion, SY edited

#target
tag @a[distance=..16,tag=playing,tag=!untargetable] add shoot_target
scoreboard players operation #atker tid = @s tid
execute as @a[tag=shoot_target] if score @s tid = #atker tid run tag @s remove shoot_target

#shoot facing
execute if entity @a[tag=shoot_target] facing entity @p[tag=shoot_target] eyes run tp @s ~ ~ ~ ~ ~
execute unless entity @a[tag=shoot_target] if entity @e[tag=your_assist,distance=..3] rotated as @a[tag=hand_user,limit=1] run tp @s ~ ~ ~ ~ ~

#cast shooting
execute as @s at @s run function ut:move/shoot/cast

#tag removing
tag @a[tag=shoot_target] remove shoot_target