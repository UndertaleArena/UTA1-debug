#By Neb or someone else bc i have no idea

data merge entity @s {CustomNameVisible:0b}
execute if entity @s[tag=door_mngd] as @e[tag=inroom_mngd] run data merge entity @s {CustomNameVisible:1b}
execute if entity @s[tag=door_mngf] as @e[tag=inroom_mngf] run data merge entity @s {CustomNameVisible:1b}
execute if entity @s[tag=door_mngd] run kill @e[tag=unlock_mngd]
execute if entity @s[tag=door_mngf] run kill @e[tag=unlock_mngf]

execute positioned ^0.0 ^ ^1.5 run fill ~ ~-2 ~ ~ ~1 ~ air
execute positioned ^0.7 ^ ^1.5 run fill ~ ~-2 ~ ~ ~1 ~ air
execute positioned ^1.4 ^ ^1.5 run fill ~ ~-2 ~ ~ ~1 ~ air
execute positioned ^2.1 ^ ^1.5 run fill ~ ~-2 ~ ~ ~1 ~ air
execute positioned ^-0.7 ^ ^1.5 run fill ~ ~-2 ~ ~ ~1 ~ air
execute positioned ^-1.4 ^ ^1.5 run fill ~ ~-2 ~ ~ ~1 ~ air
execute positioned ^-2.1 ^ ^1.5 run fill ~ ~-2 ~ ~ ~1 ~ air

fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace barrier