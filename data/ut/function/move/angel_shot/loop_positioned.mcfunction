###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
execute store result score #new rot run data get entity @s Rotation[0] 10000
scoreboard players operation #new rot += @s rot
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get #new rot
###MOVEMENT
scoreboard players operation #this speed = @s speed
scoreboard players operation @s range -= #this speed
execute rotated as @s run function ut:move/angel_shot/_sys/movement
###HITCHECK
scoreboard players set #hits hitcheck 1
execute if score #stop speed matches 1.. run function ut:move/angel_shot/hitcheck
###RANGE
execute if score @s range matches ..0 if score #hits hitcheck matches 1.. at @s positioned ~0.0 ~0.93 ~0.0 run function ut:move/angel_shot/end