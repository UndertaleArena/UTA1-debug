#By Neb or someone else bc i have no idea

data merge entity @s {CustomNameVisible:0b}
execute if entity @s[tag=door_mngp] as @e[tag=inroom_mngp] run data merge entity @s {CustomNameVisible:1b}
execute if entity @s[tag=door_mngm] as @e[tag=inroom_mngm] run data merge entity @s {CustomNameVisible:1b}
execute if entity @s[tag=door_mngp] run kill @e[tag=unlock_mngp]
execute if entity @s[tag=door_mngm] run kill @e[tag=unlock_mngm]

execute positioned ~-.5 ~ ~ positioned ^ ^ ^1 run fill ~-1 ~-2 ~ ~2 ~1 ~ air

fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace barrier