#By Nebulirion

execute positioned ^-7 ^2 ^-5 run function ut:lobby/setup/soul
data merge entity @e[tag=summon,limit=1] {CustomName:'["",{"translate":"tem.1","color":"red"}]'}
scoreboard players set @e[tag=summon] ptid 1
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] remove summon

execute positioned ^19 ^2 ^0 run function ut:lobby/setup/soul
data merge entity @e[tag=summon,limit=1] {CustomName:'["",{"translate":"tem.6","color":"light_purple"}]'}
scoreboard players set @e[tag=summon] ptid 6
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~90 ~
tag @e[tag=summon] remove summon

execute positioned ^-14 ^2 ^-5 run function ut:lobby/setup/soul
data merge entity @e[tag=summon,limit=1] {CustomName:'["",{"translate":"tem.3","color":"gold"}]'}
scoreboard players set @e[tag=summon] ptid 3
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] remove summon

execute positioned ^14 ^2 ^-5 run function ut:lobby/setup/soul
data merge entity @e[tag=summon,limit=1] {CustomName:'["",{"translate":"tem.4","color":"blue"}]'}
scoreboard players set @e[tag=summon] ptid 4
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] remove summon

execute positioned ^7 ^2 ^-5 run function ut:lobby/setup/soul
data merge entity @e[tag=summon,limit=1] {CustomName:'["",{"translate":"tem.2","color":"aqua"}]'}
scoreboard players set @e[tag=summon] ptid 2
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] remove summon

execute positioned ^-19 ^2 ^7 run function ut:lobby/setup/soul
data merge entity @e[tag=summon,limit=1] {CustomName:'["",{"translate":"tem.7","color":"green"}]'}
scoreboard players set @e[tag=summon] ptid 7
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~-90 ~
tag @e[tag=summon] remove summon

execute positioned ^-19 ^2 ^0 run function ut:lobby/setup/soul
data merge entity @e[tag=summon,limit=1] {CustomName:'["",{"translate":"tem.5","color":"yellow"}]'}
scoreboard players set @e[tag=summon] ptid 5
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~-90 ~
tag @e[tag=summon] remove summon

execute positioned ^19 ^2 ^7 run function ut:lobby/setup/soul
data merge entity @e[tag=summon,limit=1] {CustomName:'["",{"translate":"tem.8","color":"white"}]'}
scoreboard players set @e[tag=summon] ptid 8
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~90 ~
tag @e[tag=summon] remove summon

###
scoreboard players set @e[tag=ray_team] life 48
#execute as @e[tag=ray_team] run function ut:system/join_team
execute as @e[tag=ray_team] run function ut:lobby/soul/item