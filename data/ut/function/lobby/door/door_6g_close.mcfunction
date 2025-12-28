#By Neb or someone else bc i have no idea

data merge entity @s {CustomNameVisible:1b}
execute if entity @s[tag=door_mngp] as @e[tag=inroom_mngp] run data merge entity @s {CustomNameVisible:0b}
execute if entity @s[tag=door_mngm] as @e[tag=inroom_mngm] run data merge entity @s {CustomNameVisible:0b}

execute positioned ~-.5 ~ ~ positioned ^ ^ ^1 run fill ~-1 ~-2 ~ ~2 ~1 ~ coal_block