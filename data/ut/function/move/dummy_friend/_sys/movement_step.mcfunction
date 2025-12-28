###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

#PARTICLE
execute if score #temp speed matches 1.. run particle dust{color:[0.914,0.361,0.263],scale:0.75} ^ ^-.3 ^-2 0.1 0.1 0.1 0 2 normal @a[scores={Q=3..}]
#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:move/dummy_friend/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:move/dummy_friend/_sys/movement_step