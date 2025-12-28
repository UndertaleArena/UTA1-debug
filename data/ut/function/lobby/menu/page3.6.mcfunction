#By Nebulirion

execute positioned as @e[tag=set_mnpg3] run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grf3"}'}
item replace entity @e[tag=summon,limit=1] armor.head with charcoal
tp @e[tag=summon,limit=1] ^5 ^-3 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add set_menuele_3
tag @e[tag=summon,limit=1] add set_grf3
tag @e[tag=summon,limit=1] remove summon

execute positioned as @e[tag=set_mnpg3] run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grf2"}'}
item replace entity @e[tag=summon,limit=1] armor.head with charcoal
tp @e[tag=summon,limit=1] ^3.6 ^-3 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add set_menuele_3
tag @e[tag=summon,limit=1] add set_grf2
tag @e[tag=summon,limit=1] remove summon

execute positioned as @e[tag=set_mnpg3] run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grf1"}'}
item replace entity @e[tag=summon,limit=1] armor.head with charcoal
tp @e[tag=summon,limit=1] ^2.2 ^-3 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add set_menuele_3
tag @e[tag=summon,limit=1] add set_grf1
tag @e[tag=summon,limit=1] remove summon