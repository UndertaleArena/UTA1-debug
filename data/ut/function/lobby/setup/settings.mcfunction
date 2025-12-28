#By Nebulirion

#execute positioned ^-5 ^1 ^-3 rotated ~92 ~ run function ut:lobby/setup/settings_0
#execute positioned ^5 ^1 ^-3 rotated ~-92 ~ run function ut:lobby/setup/settings_1

######################

execute positioned ^6.5 ^1 ^-23.5 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.spectator"}'}
item replace entity @e[tag=summon,limit=1] armor.head with mushroom_stew
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~45 ~
tag @e[tag=summon,limit=1] remove vip_only
tag @e[tag=summon,limit=1] add spectator
tag @e[tag=summon,limit=1] add rotate_as
tag @e[tag=summon,limit=1] remove summon

execute positioned ^-6.5 ^1 ^-23.5 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.stats"}'}
item replace entity @e[tag=summon,limit=1] armor.head with mushroom_stew
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~45 ~
tag @e[tag=summon,limit=1] remove vip_only
tag @e[tag=summon,limit=1] add my_stats
tag @e[tag=summon,limit=1] add rotate_as
tag @e[tag=summon,limit=1] remove summon

execute positioned ^6 ^1 ^8 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.team"}'}
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~180 ~
tag @e[tag=summon,limit=1] add allow_join
tag @e[tag=summon,limit=1] add button_on_off
tag @e[tag=summon,limit=1] remove summon

execute positioned ^-6 ^1 ^8 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.more"}'}
item replace entity @e[tag=summon,limit=1] armor.head with mushroom_stew
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~180 ~
tag @e[tag=summon,limit=1] remove vip_only
tag @e[tag=summon,limit=1] add player_settings
tag @e[tag=summon,limit=1] remove summon