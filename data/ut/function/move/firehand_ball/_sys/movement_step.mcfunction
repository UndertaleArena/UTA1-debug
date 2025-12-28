###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

#PARTICLE
execute if score #temp speed matches 1.. run particle dust{color:[0.9,0.35,0.1],scale:.8} ^ ^ ^-1 0.1 0.1 0.1 0 1 normal @a[scores={Q=3..}]
#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:move/firehand_ball/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:move/firehand_ball/_sys/movement_step