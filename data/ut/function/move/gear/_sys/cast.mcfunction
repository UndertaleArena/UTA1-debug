###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###MOVEMENT
scoreboard players set @s range 960
scoreboard players set @s maxrange 960
scoreboard players set @s speed 10
scoreboard players set @s gravity 20
scoreboard players set @s offset 93
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
scoreboard players set @s prj_speed 100
scoreboard players operation @s atk = #player damage
###MOTION
execute at @s run function ut:move/gear/_sys/cast_motion