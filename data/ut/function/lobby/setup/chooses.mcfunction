#By Nebulirion

execute rotated ~8 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.sans","color":"yellow","bold":true}',Pose:{LeftArm:[340f,340f,0f]}}
scoreboard players set @e[tag=summon] chr 1
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.offhand with bone_meal 
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add sans_select
tag @e[tag=summon] remove summon

execute rotated ~14 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.papyrus","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 2
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.mainhand with bone 
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add papyrus_select
tag @e[tag=summon] remove summon

execute rotated ~20 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.undyne","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 3
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.mainhand with light_blue_dye 
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add undyne_select
tag @e[tag=summon] remove summon

execute rotated ~26 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.alphys","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 13
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.mainhand with netherite_scrap
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add alphys_select
tag @e[tag=summon] remove summon

execute rotated ~32 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.mettaton","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 6
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.mainhand with flint
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add mettaton_select
tag @e[tag=summon] remove summon

execute rotated ~38 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.muffet","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 7
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.mainhand with spider_eye
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add muffet_select
tag @e[tag=summon] remove summon

execute rotated ~44 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.toby","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 12
execute as @e[tag=summon] run function ut:choose/storage
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add random_select
tag @e[tag=summon] remove summon

execute rotated ~50 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
item replace entity @e[tag=summon,limit=1] armor.head with bowl
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.soon","color":"yellow","bold":true}',ShowArms:0b}
tag @e[tag=summon] add soon_select
tag @e[tag=summon] remove default_select
tag @e[tag=summon] remove summon

execute rotated ~-8 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.frisk","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 4
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.mainhand with stick
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add frisk_select
tag @e[tag=summon] remove summon

execute rotated ~-14 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.flowey","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 5
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.offhand with pumpkin_seeds
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add flowey_select
tag @e[tag=summon] remove summon

execute rotated ~-20 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.toriel","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 9
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.mainhand with pumpkin_pie
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add toriel_select
tag @e[tag=summon] remove summon

execute rotated ~-26 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.asgore","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 10
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.mainhand with cooked_mutton
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add asgore_select
tag @e[tag=summon] remove summon

execute rotated ~-32 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.asriel","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 11
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.offhand with carrot_on_a_stick[custom_model_data=249]
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add asriel_select
tag @e[tag=summon] remove summon

execute rotated ~-38 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.chara","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 8
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.mainhand with iron_ingot
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add chara_select
tag @e[tag=summon] remove summon

execute rotated ~-44 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.napstablook","color":"yellow","bold":true}'}
scoreboard players set @e[tag=summon] chr 14
execute as @e[tag=summon] run function ut:choose/storage
item replace entity @e[tag=summon] weapon.mainhand with ghast_tear
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add napstablook_select
tag @e[tag=summon] remove summon

execute rotated ~-50 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
item replace entity @e[tag=summon,limit=1] armor.head with bowl
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~ ~
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.surprise","color":"yellow","bold":true}',ShowArms:0b}
tag @e[tag=summon] add surprise_select
tag @e[tag=summon] remove default_select
tag @e[tag=summon] remove summon

#execute rotated ~50 0 positioned ^ ^ ^31.5 rotated ~180 ~ run function ut:lobby/setup/choose
#item replace entity @e[tag=summon,limit=1] armor.head with bowl
#data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"chr.soon","color":"yellow","bold":true}',ShowArms:0b}
#tag @e[tag=summon] add soon_select
#tag @e[tag=summon] remove summon