###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
execute if score @s range matches 240.. run function ut:move/dummy_bullet_mech/aim
###MOVEMENT
scoreboard players operation #this speed = @s speed
scoreboard players operation @s range -= #this speed
execute rotated as @s run function ut:move/dummy_bullet_mech/_sys/movement
###HITCHECK
scoreboard players set #hits hitcheck 1
execute if score #stop speed matches 1.. run function ut:move/dummy_bullet_mech/hitcheck
###RANGE
execute if score @s range matches ..0 if score #hits hitcheck matches 1.. at @s positioned ~0.0 ~1.5 ~0.0 run function ut:move/dummy_bullet_mech/end