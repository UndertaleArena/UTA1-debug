###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

#PARTICLE
execute if score #temp speed matches 1.. run particle dust{color:[0.403,0.391,0.415],scale:0.75} ^ ^ ^-1 0.05 0.05 0.05 0.1 2 normal @a[scores={Q=3..}]
#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:move/flying_knife/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:move/flying_knife/_sys/movement_step