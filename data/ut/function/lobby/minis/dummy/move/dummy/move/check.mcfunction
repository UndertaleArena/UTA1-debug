#Originally made by Nebulirion, edited by SY91419

#walking
function ut:lobby/minis/dummy/move/dummy/move/wall

#when stuck, start find solution
execute if entity @s[tag=stuck] run scoreboard players set #temp store 10
execute if entity @s[tag=stuck] as @e[tag=dummy_walker,type=armor_stand,limit=1] run function ut:lobby/minis/dummy/move/dummy/move/stuck/rot

#tag removal
tag @s remove stuck