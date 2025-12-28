###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

###MOVEMENT
scoreboard players set @s range 1280
scoreboard players set @s speed 15
scoreboard players set @s gravity 50
scoreboard players set @s offset 93
scoreboard players operation @s speed *= #player prj_speed
scoreboard players operation @s speed /= 100 const
execute if score @s speed matches 64.. run scoreboard players set @s speed 63
###DAMAGE
scoreboard players set @s damage 400
scoreboard players operation @s damage *= #player damage
scoreboard players operation @s damage /= 100 const
###IDENTITY
scoreboard players operation @s pid = #player pid
scoreboard players operation @s tid = #player tid
scoreboard players operation @s aid = #aid aid
###FINISH
tp @s ~ ~ ~ ~ ~
tag @s remove summon
###MOTION
execute at @s run function ut:lobby/minis/dummy/move/spear/_sys/cast_motion