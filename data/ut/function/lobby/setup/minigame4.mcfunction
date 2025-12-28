#By Nebulirion

execute positioned ^-4.5 ^2 ^-4.5 run function ut:lobby/setup/position
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.door","with":["3"]}'}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~-45 ~
tag @e[tag=summon] add door_3g
tag @e[tag=summon] add door_mngf
tag @e[tag=summon] remove summon

execute positioned ^ ^2.5 ^ run function ut:lobby/text/create
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"mng.frog"}'}
tag @e[tag=summon,limit=1] add ft_frog
tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove summon


#####LOCKS

execute positioned ^5 ^2.5 ^10 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.mngd"}'}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon,limit=1] add permission_mngd
tag @e[tag=summon,limit=1] add button_on_off
tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove summon

execute positioned ^5 ^1 ^10 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.mngp"}'}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon,limit=1] add permission_mngp
tag @e[tag=summon,limit=1] add button_on_off
tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove summon

execute positioned ^8 ^2.5 ^8 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.tut"}'}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon,limit=1] add permission_tut
tag @e[tag=summon,limit=1] add button_on_off
tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove summon

execute positioned ^8 ^1 ^8 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.cre"}'}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon,limit=1] add permission_cre
tag @e[tag=summon,limit=1] add button_on_off
tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove summon

execute positioned ^10 ^2.5 ^5 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.mngf"}'}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon,limit=1] add permission_mngf
tag @e[tag=summon,limit=1] add button_on_off
tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove summon

execute positioned ^10 ^1 ^5 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.mngm"}'}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon,limit=1] add permission_mngm
tag @e[tag=summon,limit=1] add button_on_off
tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove summon

#####EXPERIMENTAL SETTINGS
execute positioned ^7 ^1 ^ run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.e.soul"}'}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon,limit=1] add experiment_soul
tag @e[tag=summon,limit=1] add button_on_off
tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove summon

execute positioned ^5 ^1 ^-1 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.e.void"}'}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon,limit=1] add experiment_void
tag @e[tag=summon,limit=1] add button_on_off
tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove summon

#####FROGS
execute positioned ^ ^ ^7 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.frog.filter"}',CustomNameVisible:0b}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~-113 0
item replace entity @e[tag=summon,limit=1] armor.head with melon_slice
tag @e[tag=summon,limit=1] add ray_frog
tag @e[tag=summon,limit=1] add frog_filter
#tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove vip_only
tag @e[tag=summon,limit=1] remove ray_setting
tag @e[tag=summon,limit=1] remove summon

execute positioned ^-1 ^ ^5 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.frog.main"}',Small:0b}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~-113 0
item replace entity @e[tag=summon,limit=1] armor.head with glistering_melon_slice
tag @e[tag=summon,limit=1] add ray_frog
tag @e[tag=summon,limit=1] add frog_main
tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove vip_only
tag @e[tag=summon,limit=1] remove ray_setting
tag @e[tag=summon,limit=1] remove summon

execute positioned ^-2 ^ ^3 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.frog.info"}',CustomNameVisible:0b}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~-113 0
item replace entity @e[tag=summon,limit=1] armor.head with melon_slice
tag @e[tag=summon,limit=1] add ray_frog
tag @e[tag=summon,limit=1] add frog_info
tag @e[tag=summon,limit=1] add sparable
#tag @e[tag=summon,limit=1] add inroom_mngf
tag @e[tag=summon,limit=1] remove vip_only
tag @e[tag=summon,limit=1] remove ray_setting
tag @e[tag=summon,limit=1] remove summon