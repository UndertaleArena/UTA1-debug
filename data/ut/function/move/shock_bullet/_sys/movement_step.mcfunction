###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

#PARTICLE
execute if score #temp speed matches 1.. run particle minecraft:falling_dust{block_state:gold_block} ^ ^ ^-1 .2 0 .2 0 1 normal @a[scores={Q=3..}]
#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:move/shock_bullet/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:move/shock_bullet/_sys/movement_step