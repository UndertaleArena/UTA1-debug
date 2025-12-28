###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

#PARTICLE
execute if score #temp speed matches 1.. run particle smoke ^ ^ ^-1 0.1 0.1 0.1 0 4 normal @a[scores={Q=3..}]
#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:move/bomb/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:move/bomb/_sys/movement_step