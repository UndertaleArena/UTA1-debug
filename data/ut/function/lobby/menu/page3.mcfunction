#By Nebulirion

function ut:lobby/menu/page
scoreboard players set -page menu 3

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.gmd.info"}',CustomNameVisible:1b}
item replace entity @e[tag=summon,limit=1] armor.head with glow_ink_sac[custom_model_data=1]
tp @e[tag=summon,limit=1] ^5 ^-1.6 ^ ~ ~
tag @e[tag=summon,limit=1] add gm_info
tag @e[tag=summon,limit=1] remove vip_only
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.gmd.prv"}'}
item replace entity @e[tag=summon,limit=1] armor.head with chicken
tp @e[tag=summon,limit=1] ^-1.4 ^-.3 ^ ~ ~
tag @e[tag=summon,limit=1] add gm_prev
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.gmd.nxt"}'}
item replace entity @e[tag=summon,limit=1] armor.head with cooked_chicken
tp @e[tag=summon,limit=1] ^1.4 ^-.3 ^ ~ ~
tag @e[tag=summon,limit=1] add gm_next
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.map3"}'}
tp @e[tag=summon,limit=1] ^ ^.3 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b,Marker:1b}
tag @e[tag=summon,limit=1] remove ray_target
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
tp @e[tag=summon,limit=1] ^ ^ ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b,Marker:1b}
tag @e[tag=summon,limit=1] remove ray_target
tag @e[tag=summon,limit=1] add lobby_text_gmn
tag @e[tag=summon,limit=1] remove summon

function ut:lobby/gamemode/reload