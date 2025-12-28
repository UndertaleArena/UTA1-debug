#Originally made by Nebulirion, edited by SY91419

#check rotation
##get entity
execute as @e[tag=dummy_target,type=marker] if score @s sid = @e[type=armor_stand,tag=dummy_walker,limit=1] sid run tag @s add targeting
##store data
execute store result score #rot store run data get entity @s Rotation[0] 1
##score compare
scoreboard players operation #rot store -= @s rot
execute if score #rot store matches 181.. run scoreboard players remove #rot store 360
execute if score #rot store matches ..-181 run scoreboard players add #rot store 360
##result rotate face
execute if score #rot store matches 10.. run tp @s ~ ~ ~ ~-10 0
execute if score #rot store matches ..-10 run tp @s ~ ~ ~ ~10 0

##tag remove
tag @e[tag=targeting,type=marker] remove targeting

#scoring for max time
scoreboard players add @s life 1
execute if score @s life matches 20.. run function ut:lobby/minis/dummy/move/dummy/move/rotate_ready
execute unless score @s life matches 20.. if score #rot store matches -10..10 run function ut:lobby/minis/dummy/move/dummy/move/rotate_ready
