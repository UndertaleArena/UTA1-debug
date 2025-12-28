#By Neb or someone else bc i have no idea

scoreboard players set #open store 0
data merge entity @s {CustomName:'{"translate":"las.ft.door.lock"}'}

#fill ~0.1 ~-1 ~0.1 ~-0.1 ~-1 ~-0.1 barrier keep

execute positioned ~ ~-1.2 ~ run function ut:lobby/setup/setting
item replace entity @e[tag=summon,limit=1] armor.head with shulker_shell[custom_model_data=1]
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:0b,Marker:1b}
tag @e[tag=summon,limit=1] add door_unlock
execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~ ~ ~180 90

execute if entity @s[tag=door_mngd] run tag @e[tag=summon,limit=1] add unlock_mngd
execute if entity @s[tag=door_mngf] run tag @e[tag=summon,limit=1] add unlock_mngf
execute if entity @s[tag=door_mngp] run tag @e[tag=summon,limit=1] add unlock_mngp
execute if entity @s[tag=door_mngm] run tag @e[tag=summon,limit=1] add unlock_mngm

tag @e[tag=summon,limit=1] remove summon