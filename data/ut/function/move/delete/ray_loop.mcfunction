#By Nebulirion

#dis remove
scoreboard players remove -distance ray_distance 1

#wall check
execute unless block ~ ~ ~ #ut:ray_trans run scoreboard players set -distance ray_distance 0

#ray loop check
execute if score -distance ray_distance matches 1.. positioned ^ ^ ^.5 run function ut:move/delete/ray_loop
execute if entity @s[tag=!ray_find] if score -distance ray_distance matches 0 positioned ^ ^ ^-.5 align xyz positioned ~0.5 ~ ~0.5 run function ut:move/delete/ray_floor