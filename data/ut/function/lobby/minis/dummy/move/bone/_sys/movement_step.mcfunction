###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

#PARTICLE
execute if score #temp speed matches 1.. run particle minecraft:dust{color:[0.9,0.9,0.9],scale:0.75} ^ ^ ^-1 0.2 0 0.2 0 1 normal @a[scores={Q=3..}]
#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:lobby/minis/dummy/move/bone/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:lobby/minis/dummy/move/bone/_sys/movement_step