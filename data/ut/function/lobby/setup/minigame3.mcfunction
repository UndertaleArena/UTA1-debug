#By Nebulirion

execute positioned ^ ^ ^ run function ut:lobby/setup/position_mark
data merge entity @e[tag=summon,limit=1] {CustomName:'"Dummy Room"',CustomNameVisible:0b}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add mng_dummy
tag @e[tag=summon] remove summon

execute positioned ^4.5 ^2 ^-4.5 run function ut:lobby/setup/position
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.door","with":["3"]}'}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~45 ~
tag @e[tag=summon] add door_3g
tag @e[tag=summon] add door_mngd
tag @e[tag=summon] remove summon
#
execute positioned ^ ^2.5 ^ run function ut:lobby/text/create
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"mng.dummy"}'}
tag @e[tag=summon] add inroom_mngd
tag @e[tag=summon] add ft_dummy
tag @e[tag=summon] remove summon
#
#execute positioned ^ ^ ^-12 run function ut:lobby/setup/position
#data merge entity @e[tag=summon,limit=1] {CustomName:'"Ferry"',CustomNameVisible:0b}
#execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
#tag @e[tag=summon] add mng_dummy_range
#tag @e[tag=summon] remove summon
#
execute positioned ^3.5 ^1.5 ^2.5 run function ut:lobby/setup/mini
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ 180 ~
item replace entity @e[tag=summon] armor.head with bowl[custom_model_data=1]
tag @e[tag=summon] add mng_dummy_bone
tag @e[tag=summon] remove summon
#
execute positioned ^-2.5 ^1.5 ^-3.5 run function ut:lobby/setup/mini
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ 90 ~
item replace entity @e[tag=summon] armor.head with bowl[custom_model_data=2]
tag @e[tag=summon] add mng_dummy_spear
tag @e[tag=summon] remove summon
#
#function ut:lobby/setup/minigame1_dummy