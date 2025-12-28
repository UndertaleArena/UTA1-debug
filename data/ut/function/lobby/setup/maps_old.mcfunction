#By Nebulirion

#setblock ^ ^4.5 ^-33 gold_block
#setblock ^-6.5 ^1.5 ^-33 gold_block
#setblock ^-11.5 ^3.5 ^-33 gold_block
#setblock ^-11.5 ^-3.5 ^-33 gold_block
#setblock ^7 ^2.5 ^-33 gold_block
#setblock ^-2 ^9.5 ^-33 gold_block
#setblock ^6.5 ^10.5 ^-33 gold_block
#setblock ^-11.5 ^12.5 ^-33 gold_block

execute facing ^-10.5 ^-3.5 ^-33 positioned ^ ^ ^24 run function ut:lobby/setup/map
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.flowey"}'}
item replace entity @e[tag=summon] armor.head with gray_dye
scoreboard players set @e[tag=summon] map 1
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add flowey_map
tag @e[tag=summon] remove summon

execute facing ^-10 ^12 ^-33 positioned ^ ^ ^24 run function ut:lobby/setup/map
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.of"}'}
item replace entity @e[tag=summon] armor.head with gray_dye
scoreboard players set @e[tag=summon] map 2
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add of_map
tag @e[tag=summon] remove summon

execute facing ^-10.5 ^3.5 ^-33 positioned ^ ^ ^24 run function ut:lobby/setup/map
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.ruins"}'}
item replace entity @e[tag=summon] armor.head with gray_dye
scoreboard players set @e[tag=summon] map 3
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add ruins_map
tag @e[tag=summon] remove summon

execute facing ^ ^4.5 ^-33 positioned ^ ^ ^24 run function ut:lobby/setup/map
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.snowdin"}'}
item replace entity @e[tag=summon] armor.head with gray_dye
scoreboard players set @e[tag=summon] map 4
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add snowdin_map
tag @e[tag=summon] remove summon

execute facing ^7 ^2.5 ^-33 positioned ^ ^ ^24 run function ut:lobby/setup/map
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.wtf"}'}
item replace entity @e[tag=summon] armor.head with gray_dye
scoreboard players set @e[tag=summon] map 5
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add waterfall_map
tag @e[tag=summon] remove summon

execute facing ^-2 ^9.5 ^-33 positioned ^ ^ ^24 run function ut:lobby/setup/map
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.hotl"}'}
item replace entity @e[tag=summon] armor.head with gray_dye
scoreboard players set @e[tag=summon] map 6
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add hotland_map
tag @e[tag=summon] remove summon

execute facing ^6 ^10.5 ^-33 positioned ^ ^ ^24 run function ut:lobby/setup/map
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.corridor"}'}
item replace entity @e[tag=summon] armor.head with gray_dye
scoreboard players set @e[tag=summon] map 7
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add corridor_map
tag @e[tag=summon] remove summon

execute facing ^-6.5 ^1.5 ^-33 positioned ^ ^ ^24 run function ut:lobby/setup/map
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.sans"}'}
item replace entity @e[tag=summon] armor.head with gray_dye
scoreboard players set @e[tag=summon] map 8
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add sans_map
tag @e[tag=summon] remove summon