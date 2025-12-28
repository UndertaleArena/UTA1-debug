    #Original By Nebulirion, edited by SY

#score remove
scoreboard players remove -distance ray_distance 1

#void check
tp @s[tag=targeting] ~ ~ ~
execute store result score @s y_pos run data get entity @s Pos[1] 100
execute if score @s y_pos <= -LowPos y_pos run scoreboard players set -distance ray_distance 0

#block check
execute unless block ~ ~ ~ #ut:ray_trans run scoreboard players set -distance ray_distance 0

#ray loop check
execute if score -distance ray_distance matches 1.. positioned ^ ^ ^.5 run function ut:move/warp/ray

execute if score -distance ray_distance matches ..0 align yxz positioned ~0.5 ~ ~0.5 if entity @s[tag=targeting] if block ~ ~ ~ #ut:ray_trans if block ~ ~1 ~ #ut:ray_trans run function ut:move/warp/ray_target