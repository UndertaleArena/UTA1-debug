#By Nebulirion

execute rotated ~-17 ~ positioned ^ ^ ^9.7 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.tladd"}'}
item replace entity @e[tag=summon] armor.head with cooked_porkchop
execute as @e[tag=summon] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon] add team_add
tag @e[tag=summon] remove summon

execute rotated ~-29 ~ positioned ^ ^ ^9.5 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.tlrmv"}'}
item replace entity @e[tag=summon] armor.head with porkchop
execute as @e[tag=summon] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon] add team_remove
tag @e[tag=summon] remove summon

execute rotated ~-41 ~ positioned ^ ^ ^9.3 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.team"}'}
execute as @e[tag=summon] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon] add allow_join
tag @e[tag=summon] add button_on_off
tag @e[tag=summon] remove summon

execute rotated ~-63 ~ positioned ^ ^ ^10.0 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.more"}'}
item replace entity @e[tag=summon] armor.head with mushroom_stew
execute as @e[tag=summon] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon] remove vip_only
tag @e[tag=summon] add player_settings
tag @e[tag=summon] remove summon