###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

#PARTICLE
execute if score #temp speed matches 1.. run particle instant_effect ~ ~ ~ 0 0 0 0 0 normal @a[scores={Q=3..}]
#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:move/pellet/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:move/pellet/_sys/movement_step