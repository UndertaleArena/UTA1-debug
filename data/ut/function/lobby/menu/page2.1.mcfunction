#By Nebulirion

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.tlrmv"}'}
item replace entity @e[tag=summon,limit=1] armor.head with porkchop
tp @e[tag=summon,limit=1] ^-2.5 ^-2 ^ ~ ~
tag @e[tag=summon,limit=1] add set_tlrmv
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.tl"}'}
item replace entity @e[tag=summon,limit=1] armor.head with cooked_porkchop
tp @e[tag=summon,limit=1] ^-1.5 ^-2 ^ ~ ~
tag @e[tag=summon,limit=1] add set_tladd
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.plrmv"}'}
item replace entity @e[tag=summon,limit=1] armor.head with beef
tp @e[tag=summon,limit=1] ^1.5 ^-2 ^ ~ ~
tag @e[tag=summon,limit=1] add set_plrmv
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.pl"}'}
item replace entity @e[tag=summon,limit=1] armor.head with cooked_beef
tp @e[tag=summon,limit=1] ^2.5 ^-2 ^ ~ ~
tag @e[tag=summon,limit=1] add set_pladd
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.pl"}'}
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tp @e[tag=summon,limit=1] ^2 ^-1.9 ^ ~ ~
tag @e[tag=summon,limit=1] add set_pl
tag @e[tag=summon,limit=1] remove ray_target
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.tl"}'}
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tp @e[tag=summon,limit=1] ^-2 ^-1.9 ^ ~ ~
tag @e[tag=summon,limit=1] add set_tl
tag @e[tag=summon,limit=1] remove ray_target
tag @e[tag=summon,limit=1] remove summon

execute positioned as @s positioned ^ ^ ^-.5 run function ut:lobby/menu/create_element
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.rt"}'}
item replace entity @e[tag=summon,limit=1] armor.head with rabbit_stew
tp @e[tag=summon,limit=1] ^ ^-1 ^ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:1b}
tag @e[tag=summon,limit=1] add team_random
tag @e[tag=summon,limit=1] remove summon