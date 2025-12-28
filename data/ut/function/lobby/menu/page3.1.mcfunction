#By Nebulirion

execute positioned as @e[tag=set_mnpg3] run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.gra3"}'}
item replace entity @e[tag=summon,limit=1] armor.head with charcoal
tp @e[tag=summon,limit=1] ^5 ^-3 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add set_menuele_3
tag @e[tag=summon,limit=1] add set_gra3
tag @e[tag=summon,limit=1] remove summon

execute positioned as @e[tag=set_mnpg3] run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.gra2"}'}
item replace entity @e[tag=summon,limit=1] armor.head with charcoal
tp @e[tag=summon,limit=1] ^3.6 ^-3 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add set_menuele_3
tag @e[tag=summon,limit=1] add set_gra2
tag @e[tag=summon,limit=1] remove summon

execute positioned as @e[tag=set_mnpg3] run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.gra1"}'}
item replace entity @e[tag=summon,limit=1] armor.head with charcoal
tp @e[tag=summon,limit=1] ^2.2 ^-3 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add set_menuele_3
tag @e[tag=summon,limit=1] add set_gra1
tag @e[tag=summon,limit=1] remove summon