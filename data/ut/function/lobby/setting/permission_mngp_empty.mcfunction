#By Nebulirion

function ut:lobby/minis/parkour/stop

execute positioned ~-11.5 ~-9 ~-30 run tag @a[dx=22,dy=18,dz=29] add per_p

tellraw @a[tag=per_p] ["",{"translate":"pfx.info"},{"translate":"set.mng.door2","with":[{"translate":"mng.parkour"}]}]
execute at @e[tag=door_mngp] run tp @a[tag=per_p] ~ ~-2 ~2 ~180 ~
execute as @a[tag=per_p] at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1

tag @a remove per_p