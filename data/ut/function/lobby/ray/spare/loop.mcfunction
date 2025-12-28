#By Nebulirion

execute unless block ~ ~ ~ #ut:soul_trans run scoreboard players set @s ray_distance 0
execute if block ~ ~ ~ cave_air run scoreboard players set @s ray_distance 10
execute positioned ~ ~-1 ~ if entity @e[distance=..1,tag=sparable,tag=!ray_user] run scoreboard players set @s ray_distance 0

scoreboard players remove @s ray_distance 1

execute if score @s ray_distance matches -100..0 run function ut:lobby/ray/spare/stop
execute unless score @s ray_distance matches ..0 positioned ^ ^ ^0.5 run function ut:lobby/ray/spare/loop