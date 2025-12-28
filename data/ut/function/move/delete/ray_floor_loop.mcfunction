#By Nebulirion

#dis remove
scoreboard players remove -distance ray_distance 1

#wall check
execute unless block ~ ~ ~ #ut:ray_trans run scoreboard players set -distance ray_distance 0

#ray loop check
execute if score -distance ray_distance matches 1.. positioned ~ ~-1 ~ run function ut:move/delete/ray_floor_loop
execute if entity @s[tag=!ray_find] if score -distance ray_distance matches 0 unless block ~ ~ ~ #ut:trans positioned ~ ~1 ~ run function ut:move/delete/ray_target