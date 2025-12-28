###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###MOVEMENT
scoreboard players set @s range 40
scoreboard players set @s maxrange 40
scoreboard players set @s speed 5
scoreboard players set @s gravity 40
scoreboard players operation @s speed *= #player prj_speed
scoreboard players operation @s speed /= 100 const
execute if score @s speed matches 64.. run scoreboard players set @s speed 63
###DAMAGE
scoreboard players set @s damage 50
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
scoreboard players operation @s prj_speed = #player prj_speed
scoreboard players operation @s atk = #player damage
###MOTION
execute at @s run function ut:move/dummy_mech/_sys/cast_motion