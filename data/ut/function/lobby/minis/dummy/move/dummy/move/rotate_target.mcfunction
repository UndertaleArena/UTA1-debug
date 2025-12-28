#Originally made by Nebulirion, edited by SY91419

#store rotation target
execute store result score #rot store run data get entity @s Rotation[0] 1
execute facing entity @e[tag=targeting,type=marker,limit=1] eyes run tp @s ~ ~ ~ ~ 0
execute store result score @s rot run data get entity @s Rotation[0] 1
execute store result entity @s Rotation[0] float 1 run scoreboard players get #rot store
