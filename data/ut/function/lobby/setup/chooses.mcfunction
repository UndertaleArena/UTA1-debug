#By Nebulirion

## Snow(?) Side Character
execute rotated ~8 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/sans

execute rotated ~14 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/papyrus

execute rotated ~20 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/undyne

execute rotated ~26 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/alphys

execute rotated ~32 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/mettaton

execute rotated ~38 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/muffet

execute rotated ~44 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/toby

execute rotated ~50 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/soon


## Water(?) Side Character
execute rotated ~-8 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/frisk

execute rotated ~-14 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/flowey

execute rotated ~-20 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/toriel

execute rotated ~-26 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/asgore

execute rotated ~-32 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/asriel

execute rotated ~-38 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/chara

execute rotated ~-44 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:{"translate":"chr.napstablook","color":"yellow","bold":true}}
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/napstablook


execute rotated ~-50 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
execute as @e[tag=summon,limit=1,type=armor_stand] at @s run function ut:lobby/setup/chr/sp

#execute rotated ~50 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
#item replace entity @e[tag=summon,limit=1] armor.head with bowl
#data merge entity @e[tag=summon,limit=1] {CustomName:{"translate":"chr.soon","color":"yellow","bold":true},ShowArms:0b}
#tag @e[tag=summon] add soon_select
#tag @e[tag=summon] remove summon