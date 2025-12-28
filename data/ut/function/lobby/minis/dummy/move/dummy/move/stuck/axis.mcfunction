#Originally made by Nebulirion, edited by SY91419

#check for rotation range to axis
##EAST
execute if score @s rot matches 45..135 run function ut:lobby/minis/dummy/move/dummy/move/stuck/axis/east
##SOUTH
execute if score @s rot matches 135..225 run function ut:lobby/minis/dummy/move/dummy/move/stuck/axis/south
##WEST
execute if score @s rot matches 225..315 run function ut:lobby/minis/dummy/move/dummy/move/stuck/axis/west
##NORTH
execute if score @s rot matches 0..45 run function ut:lobby/minis/dummy/move/dummy/move/stuck/axis/north
execute if score @s rot matches 315..360 run function ut:lobby/minis/dummy/move/dummy/move/stuck/axis/north

#if failed, try next range
execute if entity @s[tag=stuck] run function ut:lobby/minis/dummy/move/dummy/move/stuck/backtrack

#tag remove
tag @s remove stuck