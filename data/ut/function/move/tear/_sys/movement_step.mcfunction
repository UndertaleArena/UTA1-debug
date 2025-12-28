###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

#PARTICLE
execute if score #temp speed matches 1.. run particle dust{color:[0.75,0.95,0.95],scale:0.5} ^ ^-.1 ^-1 0.05 0.05 0.05 0 1 normal @a[scores={Q=3..}]
#MAIN
scoreboard players remove #temp speed 10
execute unless block ~ ~ ~ #ut:trans run function ut:move/tear/inblock
execute if score #temp speed matches 1.. positioned ^ ^ ^1 run function ut:move/tear/_sys/movement_step