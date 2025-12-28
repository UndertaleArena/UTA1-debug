#By Nebulirion

function ut:lobby/menu/page
scoreboard players set -page menu 4

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.gr1"}'}
tp @e[tag=summon,limit=1] ^ ^.5 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b,Marker:1b}
tag @e[tag=summon,limit=1] remove ray_target
tag @e[tag=summon,limit=1] remove summon
#####
execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grsc"}'}
item replace entity @e[tag=summon,limit=1] armor.head with charcoal
tp @e[tag=summon,limit=1] ^-2.4 ^-1.2 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add set_grsc
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grhd"}'}
item replace entity @e[tag=summon,limit=1] armor.head with charcoal
tp @e[tag=summon,limit=1] ^-.8 ^-1.2 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add set_grhd
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grdr"}'}
item replace entity @e[tag=summon,limit=1] armor.head with charcoal
tp @e[tag=summon,limit=1] ^.8 ^-1.2 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add set_grdr
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grtu"}'}
item replace entity @e[tag=summon,limit=1] armor.head with charcoal
tp @e[tag=summon,limit=1] ^2.4 ^-1.2 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add set_grtu
tag @e[tag=summon,limit=1] remove summon

#execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
#data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grwh"}'}
#item replace entity @e[tag=summon,limit=1] armor.head with charcoal
#tp @e[tag=summon,limit=1] ^.8 ^ ^ ~ ~
#data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
#tag @e[tag=summon,limit=1] add set_grwh
#tag @e[tag=summon,limit=1] remove summon
#
#execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
#data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grkb"}'}
#item replace entity @e[tag=summon,limit=1] armor.head with charcoal
#tp @e[tag=summon,limit=1] ^2.4 ^ ^ ~ ~
#data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
#tag @e[tag=summon,limit=1] add set_grkb
#tag @e[tag=summon,limit=1] remove summon

function ut:lobby/gamerule/check