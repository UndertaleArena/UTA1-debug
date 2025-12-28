#By Nebulirion


execute if block ^ ^-2 ^-0.4 minecraft:magenta_glazed_terracotta[facing=east] run tp @s ~ ~ ~ 90 ~
execute if block ^ ^-2 ^-0.4 minecraft:magenta_glazed_terracotta[facing=west] run tp @s ~ ~ ~ -90 ~
execute if block ^ ^-2 ^-0.4 minecraft:magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~ 0 ~
execute if block ^ ^-2 ^-0.4 minecraft:magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~ 180 ~

execute unless block ^ ^-2 ^-0.4 minecraft:air at @s rotated ~ 0 run tp @s ^ ^ ^0.15 ~ ~1

execute if block ^ ^-2 ^-0.4 minecraft:red_glazed_terracotta at @s rotated ~ 0 run tp @s ^ ^ ^-0.125 ~ ~-1

execute if block ^ ^-2 ^-0.4 minecraft:yellow_glazed_terracotta at @s rotated ~ 0 run tp @s ^ ^ ^0.225 ~ ~-1
