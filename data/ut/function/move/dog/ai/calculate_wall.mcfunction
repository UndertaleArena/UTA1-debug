#By Nebulirion

scoreboard players add #y_diff dog 1

execute if block ~ ~ ~ #ut:dog_trans run scoreboard players set #y_found dog 1

execute if score #y_found dog matches 0 if score #y_diff dog matches ..16 positioned ~ ~1 ~ run function ut:move/dog/ai/calculate_wall