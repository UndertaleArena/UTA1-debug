###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

#PARTICLE
execute if score #temp speed matches 1.. run function ut:move/spookwave/particle
#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:move/spookwave/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:move/spookwave/_sys/movement_step