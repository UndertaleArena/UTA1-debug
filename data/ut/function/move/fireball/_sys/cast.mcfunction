###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###MOVEMENT
scoreboard players set @s range 560
scoreboard players set @s maxrange 560
scoreboard players set @s speed 12
scoreboard players operation @s speed *= #player prj_speed
scoreboard players operation @s speed /= 100 const
execute if score @s speed matches 64.. run scoreboard players set @s speed 63
###DAMAGE
scoreboard players set @s damage 100
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
scoreboard players operation @s rot = #player rot
scoreboard players operation @s plt1c = #player plt1c
execute if score #player plt1c matches 1 run scoreboard players add @s life 3
execute if score #player plt1c matches 2 run scoreboard players add @s life 9