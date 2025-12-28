###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:move/star_blaze/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:move/star_blaze/_sys/movement_step