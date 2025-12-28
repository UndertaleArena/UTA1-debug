#By Nebulirion

scoreboard players set #valid y_pos -9

execute unless block ~ ~-2 ~ #ut:ray_trans if block ~ ~-1 ~ #ut:ray_trans if block ~ ~ ~ #ut:ray_trans run scoreboard players set #valid y_pos -1
execute unless block ~ ~-1 ~ #ut:ray_trans if block ~ ~ ~ #ut:ray_trans if block ~ ~1 ~ #ut:ray_trans run scoreboard players set #valid y_pos 0
execute unless block ~ ~ ~ #ut:ray_trans if block ~ ~1 ~ #ut:ray_trans if block ~ ~2 ~ #ut:ray_trans run scoreboard players set #valid y_pos 1