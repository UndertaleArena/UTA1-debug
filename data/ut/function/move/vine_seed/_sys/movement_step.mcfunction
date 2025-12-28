###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

#PARTICLE
execute if score #temp speed matches 1.. run particle dust{color:[0.161,0.784,0.212],scale:1} ^ ^ ^-1 .1 .1 .1 1 2 normal @a[scores={Q=3..}]
#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:move/vine_seed/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:move/vine_seed/_sys/movement_step