###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###MOVEMENT
scoreboard players set @s range 640
scoreboard players set @s maxrange 640
scoreboard players set @s speed 24
###DAMAGE
scoreboard players set @s damage 200
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
scoreboard players operation @s plt1c = #player plt1c