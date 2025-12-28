#hihi this is neb
#my fav.number is 27

execute positioned ~ ~ ~ run function ut:lobby/setup/tut
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.tut.squit"}',Small:1b}
item replace entity @e[tag=summon,limit=1,type=armor_stand] armor.head with mushroom_stew
execute as @e[tag=summon,limit=1,type=armor_stand] positioned as @s run tp @s ~ ~ ~ ~180 ~
scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] tut_s = #from tut_s
tag @e[tag=summon,limit=1,type=armor_stand] add tut_squit
tag @e[tag=summon,limit=1,type=armor_stand] remove summon