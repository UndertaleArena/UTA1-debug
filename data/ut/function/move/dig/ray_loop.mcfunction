#By Nebulirion

#execute if score #rot ray_distance matches ..-20 unless block ~ ~ ~ #ut:ray_trans run scoreboard players set @s ray_distance 0
#execute unless score #rot ray_distance matches ..-20 unless block ~ ~ ~ #ut:ray_trans run scoreboard players set @s ray_distance 0
execute unless block ~ ~ ~ #ut:ray_trans run scoreboard players set @s ray_distance 0

scoreboard players remove @s ray_distance 1

execute if score @s ray_distance matches ..0 positioned ~ ~.5 ~ run function ut:move/dig/ray_end
execute unless score @s ray_distance matches ..0 positioned ^ ^ ^0.5 run function ut:move/dig/ray_loop