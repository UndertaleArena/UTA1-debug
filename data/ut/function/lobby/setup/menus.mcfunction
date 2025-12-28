#By Nebulirion

execute positioned ^ ^ ^ run function ut:lobby/setup/position_mark
data merge entity @e[tag=summon,limit=1] {CustomName:'"Secret Text LOL"',CustomNameVisible:0b}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ 0
tag @e[tag=summon] add lobby_menupos
tag @e[tag=summon] remove summon

execute positioned ^-5 ^-1.2 ^ run function ut:lobby/setup/menu
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.menu.page1"}'}
item replace entity @e[tag=summon] armor.head with porkchop
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ 0
tag @e[tag=summon] add set_mnpg1
tag @e[tag=summon] add set_mnpg
tag @e[tag=summon] remove summon

execute positioned ^-5 ^-2.4 ^ run function ut:lobby/setup/menu
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.menu.page2"}'}
item replace entity @e[tag=summon] armor.head with porkchop
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ 0
tag @e[tag=summon] add set_mnpg2
tag @e[tag=summon] add set_mnpg
tag @e[tag=summon] remove summon

execute positioned ^-5 ^ ^ run function ut:lobby/setup/menu
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.menu.page3"}'}
item replace entity @e[tag=summon] armor.head with porkchop
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ 0
tag @e[tag=summon] add set_mnpg3
tag @e[tag=summon] add set_mnpg
tag @e[tag=summon] remove summon

execute positioned ^-5 ^-3.6 ^ run function ut:lobby/setup/menu
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.menu.page4"}'}
item replace entity @e[tag=summon] armor.head with porkchop
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ 0
tag @e[tag=summon] add set_mnpg4
tag @e[tag=summon] add set_mnpg
tag @e[tag=summon] remove summon

execute as @e[tag=set_mnpg1,limit=1] at @e[tag=lobby_menupos,limit=1] positioned ~ ~-.5 ~ run function ut:lobby/menu/page1