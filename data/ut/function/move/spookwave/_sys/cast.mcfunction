###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###MOVEMENT
scoreboard players set @s range 480
scoreboard players set @s maxrange 480
scoreboard players set @s speed 10
scoreboard players set @s offset 150
###DAMAGE
scoreboard players set @s damage 0
scoreboard players operation @s damage *= #player damage
scoreboard players operation @s damage /= 100 const
###IDENTITY
scoreboard players operation @s pid = #player pid
scoreboard players operation @s tid = #player tid
scoreboard players operation @s aid = #aid aid
###FINISH
tp @s ~ ~ ~ ~ ~
tag @s remove summon
###EXTRA
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
scoreboard players add @s life2 1