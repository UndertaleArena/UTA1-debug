#By Nebulirion

execute positioned ^-4.5 ^ ^-9 run function ut:lobby/setup/position_mark
data merge entity @e[tag=summon,limit=1] {CustomName:'"Maze Position"',CustomNameVisible:0b}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ 0 0
tag @e[tag=summon,limit=1] add mng_maze
tag @e[tag=summon,limit=1] add maze_range1
tag @e[tag=summon,limit=1] remove summon

execute positioned ^-4.5 ^ ^11 run function ut:lobby/setup/position_mark
data merge entity @e[tag=summon,limit=1] {CustomName:'"Maze Position"',CustomNameVisible:0b}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ 0 0
tag @e[tag=summon,limit=1] add maze_range2
tag @e[tag=summon,limit=1] remove summon

execute positioned ^-4.5 ^ ^27 run function ut:lobby/setup/position_mark
data merge entity @e[tag=summon,limit=1] {CustomName:'"Maze Position"',CustomNameVisible:0b}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ 0 0
tag @e[tag=summon,limit=1] add maze_range3
tag @e[tag=summon,limit=1] remove summon

execute positioned ^-4.5 ^ ^40 run function ut:lobby/setup/position_mark
data merge entity @e[tag=summon,limit=1] {CustomName:'"Maze Position"',CustomNameVisible:0b}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ 0 0
tag @e[tag=summon,limit=1] add maze_range4
tag @e[tag=summon,limit=1] remove summon

execute positioned ^-.5 ^2 ^-18 run function ut:lobby/setup/position
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.door","with":["6"]}'}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon,limit=1] add door_6g
tag @e[tag=summon,limit=1] add door_mngm
tag @e[tag=summon,limit=1] remove summon

execute positioned ^-.5 ^2.5 ^-13 run function ut:lobby/text/create
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"mng.maze"}'}
tag @e[tag=summon,limit=1] add inroom_mngm
tag @e[tag=summon,limit=1] add ft_maze
tag @e[tag=summon,limit=1] remove summon

execute positioned ^3.2 ^1.1 ^-11.5 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.mazerule"}'}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~90 90
item replace entity @e[tag=summon,limit=1] armor.head with glow_ink_sac[custom_model_data=1]
tag @e[tag=summon,limit=1] add maze_rule
tag @e[tag=summon,limit=1] add inroom_mngm
tag @e[tag=summon,limit=1] remove vip_only
tag @e[tag=summon,limit=1] remove summon