###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

#PARTICLE
execute if score #temp speed matches 1.. run particle dust{color:[0.914,0.604,0.859],scale:.8} ^ ^ ^-2.5 .2 0 .2 1 1 normal @a[scores={Q=3..}]
#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:move/lazer_bullet_buffed/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:move/lazer_bullet_buffed/_sys/movement_step