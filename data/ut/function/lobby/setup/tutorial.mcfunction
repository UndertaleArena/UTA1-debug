#By Nebulirion

scoreboard objectives add mystery dummy "17"

execute positioned ^-3 ^1 ^3 run function ut:lobby/setup/tut
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.start"}',Small:1b}
item replace entity @e[tag=summon] armor.head with mushroom_stew
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add tut_start
tag @e[tag=summon] remove summon

execute positioned ^3 ^1 ^3 run function ut:lobby/setup/tut
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.quit"}',Small:1b}
item replace entity @e[tag=summon] armor.head with mushroom_stew
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add tut_quit
tag @e[tag=summon] remove summon

execute positioned ^-3 ^1 ^14 run function ut:lobby/setup/tutorial_s

#execute positioned ^3 ^-12 ^22 run function ut:lobby/setup/tut
#data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.leave"}',Small:1b}
#item replace entity @e[tag=summon] armor.head with mushroom_stew
#execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
#tag @e[tag=summon] add tut_quit
#tag @e[tag=summon] remove summon

execute positioned ^ ^40 ^17 run function ut:lobby/setup/tut
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.join"}'}
item replace entity @e[tag=summon] armor.head with golden_carrot
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add tut_join
tag @e[tag=summon] remove summon

execute positioned ^ ^-13 ^ run function ut:lobby/setup/flowey
data merge entity @e[tag=summon,tag=ray_flowey,limit=1] {CustomName:'"Flowey the Flower"'}
#item replace entity @e[tag=summon,tag=ray_flowey] armor.head with golden_carrot
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=summon,tag=ray_flowey] atk 100
tag @e[tag=summon] remove summon