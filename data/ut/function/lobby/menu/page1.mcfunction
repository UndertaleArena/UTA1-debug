#By Nebulirion

function ut:lobby/menu/page
scoreboard players set -page menu 1

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.prv"}'}
item replace entity @e[tag=summon,limit=1] armor.head with chicken
tp @e[tag=summon,limit=1] ^-1.4 ^-.15 ^ ~ ~
tag @e[tag=summon,limit=1] add map_prev
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.nxt"}'}
item replace entity @e[tag=summon,limit=1] armor.head with cooked_chicken
tp @e[tag=summon,limit=1] ^1.4 ^-.15 ^ ~ ~
tag @e[tag=summon,limit=1] add map_next
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.map.rdm"}'}
item replace entity @e[tag=summon,limit=1] armor.head with rabbit_stew
tp @e[tag=summon,limit=1] ^5 ^-3 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add map_random
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.map0"}'}
tp @e[tag=summon,limit=1] ^ ^1.1 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b,Marker:1b}
tag @e[tag=summon,limit=1] remove ray_target
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
tp @e[tag=summon,limit=1] ^ ^.8 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b,Marker:1b}
tag @e[tag=summon,limit=1] remove ray_target
tag @e[tag=summon,limit=1] add lobby_text_mapn
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.map1"}'}
tp @e[tag=summon,limit=1] ^ ^.5 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b,Marker:1b}
tag @e[tag=summon,limit=1] remove ray_target
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
tp @e[tag=summon,limit=1] ^ ^.2 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b,Marker:1b}
tag @e[tag=summon,limit=1] remove ray_target
tag @e[tag=summon,limit=1] add lobby_text_mapm
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.map2"}'}
tp @e[tag=summon,limit=1] ^ ^-.1 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b,Marker:1b}
tag @e[tag=summon,limit=1] remove ray_target
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
tp @e[tag=summon,limit=1] ^ ^-.4 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b,Marker:1b}
tag @e[tag=summon,limit=1] remove ray_target
tag @e[tag=summon,limit=1] add lobby_text_mapc
tag @e[tag=summon,limit=1] remove summon

function ut:lobby/map/reload