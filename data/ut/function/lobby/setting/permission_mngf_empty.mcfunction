#By Nebulirion

execute as @a at @s if block ~ 137 ~ mycelium run tag @s add per_p

tellraw @a[tag=per_p] ["",{"translate":"pfx.info"},{"translate":"set.mng.door2","with":[{"translate":"mng.frog"}]}]
execute at @e[tag=door_mngf] positioned ^ ^ ^-2 run tp @a[tag=per_p] ~ ~-2 ~ ~180 ~
execute as @a[tag=per_p] at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1

tag @a remove per_p