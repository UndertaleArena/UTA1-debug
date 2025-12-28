#Originally made by Nebulirion, edited by SY91419

#index increase
scoreboard players add #did sid 1

#pairing
execute as @e[tag=dummy_locating] run scoreboard players operation @s sid = #did sid

#data modify entity @s Pos[1] set from entity @e[tag=dummy_locating,type=armor_stand,tag=mini_dummy,limit=1] Pos[1]
execute at @s run tp @s ~ ~15 ~

##target rotation
tag @s add targeting
execute as @e[tag=dummy_locating,type=armor_stand,limit=1] at @s run function ut:lobby/minis/dummy/move/dummy/move/rotate_target

#tag removal
tag @s remove targeting
tag @e[tag=dummy_locating] remove dummy_locating
tag @s remove summon