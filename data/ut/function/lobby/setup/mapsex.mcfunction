#By Nebulirion

execute positioned ^-1.4 ^-.15 ^ run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.prv"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with chicken
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add map_prev
tag @e[tag=summon] remove summon

execute positioned ^1.4 ^-.15 ^ run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.nxt"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with cooked_chicken
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add map_next
tag @e[tag=summon] remove summon

execute positioned ^ ^.9 ^ run function ut:lobby/text/create
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.map0"}'}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] remove summon

execute positioned ^ ^.6 ^ run function ut:lobby/text/create
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add lobby_text_mapn
tag @e[tag=summon] remove summon

execute positioned ^ ^.3 ^ run function ut:lobby/text/create
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.map2"}'}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] remove summon

execute positioned ^ ^ ^ run function ut:lobby/text/create
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add lobby_text_mapc
tag @e[tag=summon] remove summon

#execute positioned ^ ^-.3 ^ run function ut:lobby/text/create
#data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.map3"}'}
#execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
#tag @e[tag=summon] remove summon
#
#execute positioned ^ ^-1.6 ^ run function ut:lobby/setup/setting
#data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.gamemode"}',CustomNameVisible:1b}
#item replace entity @e[tag=summon] armor.head with cooked_chicken
#execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
#tag @e[tag=summon] add setting_gamemode
#tag @e[tag=summon] remove summon