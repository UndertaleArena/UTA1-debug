#Originally made by Nebulirion, edited by SY91419

#chance removal
scoreboard players remove #temp store 1

#rotate change
execute facing entity @e[tag=targeting,type=marker,limit=1] eyes if score @s lifetime matches 1 rotated ~ 0 run tp @s ~ ~ ~ ~ ~

#rotation store
execute store result score @s rot run data get entity @s Rotation[0] 1
scoreboard players add @s rot 180

#axis walk
function ut:lobby/minis/dummy/move/dummy/move/stuck/axis