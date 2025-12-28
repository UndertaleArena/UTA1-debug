#By Nebulirion

scoreboard players set #bridgeend dog 1
execute if score @s life2 matches ..2 run scoreboard players set #bridgeend dog 0
execute if score @s life2 matches 2.. if block ~ ~-2 ~ #ut:dog_trans if block ~ ~-1 ~ #ut:dog_trans if block ~ ~ ~ #ut:dog_trans run scoreboard players set #bridgeend dog 0

execute if score #bridgeend dog matches 0 run function ut:move/dog/ai/t1/v1/step_air
execute if score #bridgeend dog matches 1 run function ut:move/dog/ai/t1/v1/step_reach