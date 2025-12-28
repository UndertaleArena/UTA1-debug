#By Nebulirion

execute positioned ~-8.5 ~-7 ~-0 run tag @a[dx=16,dy=15,dz=68] add per_p

tellraw @a[tag=per_p] ["",{"translate":"pfx.info"},{"translate":"set.mng.door2","with":[{"translate":"mng.maze"}]}]
execute at @e[tag=door_mngm] run tp @a[tag=per_p] ~ ~-2 ~-2 ~180 ~
execute as @a[tag=per_p] at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1

execute as @a[tag=maze_player] run function ut:lobby/minis/maze/leave

tag @a remove per_p