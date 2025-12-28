###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###MOVEMENT
scoreboard players set @s range 480
scoreboard players set @s maxrange 480
scoreboard players set @s speed 24
scoreboard players set @s offset 93
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
scoreboard players operation @s plt2b = #id plt2b
particle poof ~ ~1 ~ .08 .2 .08 0.02 4 normal @a[scores={Q=2..}]