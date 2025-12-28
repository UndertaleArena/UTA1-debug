#By Nebulirion

execute rotated ~26 ~ positioned ^ ^ ^9.7 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.mngd"}'}
execute as @e[tag=summon] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon] add permission_mngd
tag @e[tag=summon] add button_on_off
tag @e[tag=summon] remove summon

execute rotated ~38.5 ~ positioned ^ ^ ^9.5 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.mngp"}'}
execute as @e[tag=summon] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon] add permission_mngp
tag @e[tag=summon] add button_on_off
tag @e[tag=summon] remove summon

execute rotated ~51.5 ~ positioned ^ ^ ^9.5 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.cre"}'}
execute as @e[tag=summon] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon] add permission_cre
tag @e[tag=summon] add button_on_off
tag @e[tag=summon] remove summon

execute rotated ~64 ~ positioned ^ ^ ^9.7 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.tut"}'}
execute as @e[tag=summon] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~180 90
tag @e[tag=summon] add permission_tut
tag @e[tag=summon] add button_on_off
tag @e[tag=summon] remove summon