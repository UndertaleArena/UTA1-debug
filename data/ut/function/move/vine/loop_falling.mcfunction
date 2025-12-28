#By Nebulirion

particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 0 normal @a[scores={Q=3..}]

execute unless block ~ ~-.25 ~ #ut:ray_trans run function ut:move/vine/land
execute if block ~ ~-.25 ~ #ut:ray_trans run tp @s ~ ~-1 ~