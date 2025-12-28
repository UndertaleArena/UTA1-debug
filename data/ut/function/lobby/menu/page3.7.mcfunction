#By Nebulirion

execute positioned as @e[tag=set_mnpg3] run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grf3"}'}
item replace entity @e[tag=summon,limit=1] armor.head with charcoal
tp @e[tag=summon,limit=1] ^5 ^-3 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add set_menuele_3
tag @e[tag=summon,limit=1] add set_grg3
tag @e[tag=summon,limit=1] remove summon