#By Nebulirion

scoreboard players set GRbutton notgamerule 0
scoreboard players set GLbutton notgamerule 0

execute rotated ~-28 0 positioned ^ ^ ^20 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grset1"}'}
item replace entity @e[tag=summon] armor.head with chicken
execute as @e[tag=summon] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ 0
tag @e[tag=summon] add set_grset1
tag @e[tag=summon] remove summon

execute rotated ~28 0 positioned ^ ^0 ^20 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grset2"}'}
item replace entity @e[tag=summon] armor.head with chicken
execute as @e[tag=summon] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ 0
tag @e[tag=summon] add set_grset2
tag @e[tag=summon] remove summon

execute rotated ~28 0 positioned ^ ^1.5 ^20 run function ut:lobby/setup/setting
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.set.grset3"}'}
item replace entity @e[tag=summon] armor.head with chicken
execute as @e[tag=summon] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ 0
tag @e[tag=summon] add set_grset3
tag @e[tag=summon] remove summon