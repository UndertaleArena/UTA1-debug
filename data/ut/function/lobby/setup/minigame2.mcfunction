#By Nebulirion

execute positioned ^.5 ^-1 ^ run function ut:lobby/setup/position_mark
data merge entity @e[tag=summon,limit=1] {CustomName:'"Bone Parkour"',CustomNameVisible:0b}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add mng_parkour
tag @e[tag=summon] remove summon

execute positioned ^.5 ^2 ^-18 run function ut:lobby/setup/position
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.door","with":["6"]}'}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add door_6g
tag @e[tag=summon] add door_mngp
tag @e[tag=summon] remove summon

execute positioned ^.5 ^2.5 ^-14 run function ut:lobby/text/create
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"mng.parkour"}'}
tag @e[tag=summon,limit=1] add inroom_mngp
tag @e[tag=summon] add ft_parkour
tag @e[tag=summon] remove summon

#execute positioned ^3.35 ^.75 ^-12 run function ut:lobby/setup/setting
#data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"set.parkour"}'}
#item replace entity @e[tag=summon] armor.head with coal
#execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ -90 ~
#tag @e[tag=summon,limit=1] add inroom_mngp
#tag @e[tag=summon] add ft_parkour
#tag @e[tag=summon] add hq_parkour
#tag @e[tag=summon] remove summon

scoreboard players set mngp z_pos 1235

execute positioned ~ ~7 ~ run function ut:lobby/minis/random
scoreboard players add @e[tag=summon] life 1
execute positioned ~ ~6 ~ run function ut:lobby/minis/random
scoreboard players add @e[tag=summon] life 1
execute positioned ~ ~5 ~ run function ut:lobby/minis/random
scoreboard players add @e[tag=summon] life 1
execute positioned ~ ~4 ~ run function ut:lobby/minis/random
scoreboard players add @e[tag=summon] life 1
execute positioned ~ ~3 ~ run function ut:lobby/minis/random
scoreboard players add @e[tag=summon] life 1
execute positioned ~ ~2 ~ run function ut:lobby/minis/random
scoreboard players add @e[tag=summon] life 1
execute positioned ~ ~1 ~ run function ut:lobby/minis/random
scoreboard players add @e[tag=summon] life 1
execute positioned ~ ~0 ~ run function ut:lobby/minis/random
scoreboard players add @e[tag=summon] life 1
execute positioned ~ ~-1 ~ run function ut:lobby/minis/random
scoreboard players add @e[tag=summon] life 1
execute positioned ~ ~-2 ~ run function ut:lobby/minis/random
scoreboard players add @e[tag=summon] life 1

tag @e[tag=summon] add mngp_ypos
tag @e[tag=summon] add active
tag @e[tag=summon] remove summon