###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###PARTICLE
particle item{item:popped_chorus_fruit} ^ ^ ^-1 0.05 0 0.05 0.01 8 normal @a[scores={Q=2..}]
###MAIN
scoreboard players operation #stop speed = #this speed
scoreboard players operation #stop speed -= #temp speed
scoreboard players remove #stop speed 10
scoreboard players set #temp speed 0
playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 0.4 1.8
scoreboard players set @s range 0