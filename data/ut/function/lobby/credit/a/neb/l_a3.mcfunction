#By Nebulirion
#this is about the helping person from the UTA production team minecraft id SY91419
#Thank you so much for your help during the creation of this map!!!

scoreboard players set cd credit 0

execute positioned ^-1 ^-2 ^-2 rotated 90 ~ run function ut:lobby/credit/a/neb/cmb/cast
execute positioned ^ ^-2 ^-2 rotated 90 ~ run function ut:lobby/credit/a/neb/cmb/cast
scoreboard players remove @e[tag=summon2,sort=random,limit=1] life 2
execute positioned ^1 ^-2 ^-2 rotated 90 ~ run function ut:lobby/credit/a/neb/cmb/cast
tag @e[tag=summon2] add rot30pos
scoreboard players remove @e[tag=summon2,sort=random,limit=2] life 2
execute positioned ^2 ^-2 ^-2 rotated 90 ~ run function ut:lobby/credit/a/neb/cmb/cast
scoreboard players remove @e[tag=summon2,sort=random,limit=3] life 2
execute positioned ^3 ^-2 ^-2 rotated 90 ~ run function ut:lobby/credit/a/neb/cmb/cast
scoreboard players remove @e[tag=summon2,sort=random,limit=4] life 2
item replace entity @e[tag=summon2,sort=random,limit=2] armor.head with chain_command_block
item replace entity @e[tag=summon2,sort=random,limit=2] armor.head with repeating_command_block

tag @e[tag=summon2] remove summon2