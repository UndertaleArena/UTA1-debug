#By Nebulirion

scoreboard players set #setup tut_s 0

scoreboard players add #setup tut_s 1
execute positioned ^-24 ^-3 ^ run function ut:lobby/setup/tut_s
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.small"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with air
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~-90 ~
scoreboard players operation @e[tag=summon,limit=1] tut_s = #setup tut_s
tag @e[tag=summon] remove summon

scoreboard players add #setup tut_s 1
execute positioned ^-36 ^-3 ^4 run function ut:lobby/setup/tut_s
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.small"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with air
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~-90 ~
scoreboard players operation @e[tag=summon,limit=1] tut_s = #setup tut_s
tag @e[tag=summon] remove summon

scoreboard players add #setup tut_s 1
execute positioned ^-36 ^-3 ^-4 run function ut:lobby/setup/tut_s
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.small"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with air
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~-90 ~
scoreboard players operation @e[tag=summon,limit=1] tut_s = #setup tut_s
tag @e[tag=summon] remove summon

scoreboard players add #setup tut_s 1
execute positioned ^-36 ^-3 ^-12 run function ut:lobby/setup/tut_s
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.small"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with air
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~-90 ~
scoreboard players operation @e[tag=summon,limit=1] tut_s = #setup tut_s
tag @e[tag=summon] remove summon

scoreboard players add #setup tut_s 1
execute positioned ^-24 ^-3 ^-8 run function ut:lobby/setup/tut_s
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.small"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with air
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~-90 ~
scoreboard players operation @e[tag=summon,limit=1] tut_s = #setup tut_s
tag @e[tag=summon] remove summon

scoreboard players add #setup tut_s 1
execute positioned ^30 ^-3 ^ run function ut:lobby/setup/tut_s
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.small"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with air
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~90 ~
scoreboard players operation @e[tag=summon,limit=1] tut_s = #setup tut_s
tag @e[tag=summon] remove summon

scoreboard players add #setup tut_s 1
execute positioned ^42 ^-3 ^4 run function ut:lobby/setup/tut_s
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.small"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with air
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~90 ~
scoreboard players operation @e[tag=summon,limit=1] tut_s = #setup tut_s
tag @e[tag=summon] remove summon

scoreboard players add #setup tut_s 1
execute positioned ^42 ^-3 ^-4 run function ut:lobby/setup/tut_s
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.small"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with air
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~90 ~
scoreboard players operation @e[tag=summon,limit=1] tut_s = #setup tut_s
tag @e[tag=summon] remove summon

scoreboard players add #setup tut_s 1
execute positioned ^42 ^-3 ^-12 run function ut:lobby/setup/tut_s
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.small"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with air
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~90 ~
scoreboard players operation @e[tag=summon,limit=1] tut_s = #setup tut_s
tag @e[tag=summon] remove summon

scoreboard players add #setup tut_s 1
execute positioned ^30 ^-3 ^-8 run function ut:lobby/setup/tut_s
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.small"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with air
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~90 ~
scoreboard players operation @e[tag=summon,limit=1] tut_s = #setup tut_s
tag @e[tag=summon] remove summon