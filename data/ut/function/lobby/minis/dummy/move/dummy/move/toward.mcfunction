#Originally made by Nebulirion, edited by SY91419

#tagging
tag @s add dummy_walker

#scoring for not long time
scoreboard players add @s life 1

#finding pair target
execute as @e[tag=dummy_target,type=marker] if score @s sid = @e[type=armor_stand,tag=dummy_walker,limit=1] sid run tag @s add targeting

execute at @e[tag=targeting,type=marker] run particle end_rod ~ ~ ~ 0 0 0 0 1 normal @a[tag=debug]

#walking
execute as @e[tag=targeting,type=marker] unless entity @s[distance=..0.3] facing entity @s eyes rotated ~ 0 run function ut:lobby/minis/dummy/move/dummy/move/check

#end check
execute if entity @e[tag=targeting,type=marker,distance=..0.3] at @s run function ut:lobby/minis/dummy/move/dummy/move/back_init
execute if score @s life matches 300.. run function ut:lobby/minis/dummy/move/dummy/move/kill

#tag removal
tag @s remove dummy_walker
tag @e[tag=targeting,type=marker] remove targeting