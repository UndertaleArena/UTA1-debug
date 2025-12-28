###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

###PARTICLE
execute positioned ~ ~-.93 ~ run tp @s ^ ^ ^-1
particle item{item:cyan_concrete} ^ ^ ^-1 0.05 0 0.05 0.1 10 normal @a[scores={Q=2..}]
###MAIN
scoreboard players operation #stop speed = #this speed
scoreboard players operation #stop speed -= #temp speed
scoreboard players remove #stop speed 10
scoreboard players set #temp speed 0
scoreboard players set @s range -2700