#By Nebulirion

scoreboard players set #y_found dog 0
scoreboard players set #y_diff dog 0
execute if score #y_found dog matches 0 positioned ~ ~1 ~ unless block ~ ~-1 ~ #ut:dog_trans run function ut:move/dog/ai/calculate_wall
execute if score #y_found dog matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ #ut:dog_trans run function ut:move/dog/ai/calculate_void
