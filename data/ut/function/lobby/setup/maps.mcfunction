#By Nebulirion

execute positioned ^ ^-18 ^-5 run function ut:lobby/setup/position_mark
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:0b}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add lobby_strb
tag @e[tag=summon] remove summon

execute positioned ^ ^-4 ^-2 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.start"}',CustomNameVisible:0b}
item replace entity @e[tag=summon] armor.head with rabbit_stew
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add setting_start
tag @e[tag=summon] add rotate_as
tag @e[tag=summon] remove summon

#execute as @e[tag=lobby_strb] at @s run function ut:lobby/map/strb