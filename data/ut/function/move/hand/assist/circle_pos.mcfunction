#Original By Nebulirion, SY edited

#get sliced rotation
scoreboard players set -temp store 360
scoreboard players operation -temp store /= @s passive_timer

#get default rotation
execute store result score #rot store run data get entity @s Rotation[0]
scoreboard players operation #temp store = #rot store

scoreboard players operation #suc store = @e[tag=hand_curr,limit=1] passive_timer
scoreboard players remove #suc store 1
scoreboard players operation -temp store *= #suc store
execute if score -temp store matches 180.. run scoreboard players remove -temp store 360

#store temp rotation
scoreboard players operation #temp store += -temp store
execute store result entity @s Rotation[0] float 1 run scoreboard players get #temp store
execute rotated as @s positioned ^ ^ ^2 as @e[tag=hand_curr,limit=1] run function ut:move/hand/move/circle_pos

#assist's rotation reset
execute store result entity @s Rotation[0] float 1 run scoreboard players get #rot store