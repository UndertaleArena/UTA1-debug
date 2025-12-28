#hi

tag @s add launched
tag @s add big_launched
tag @s remove creator_as
tag @s add cname

execute at @e[tag=credit_play,limit=1] run tp @s ~ ~-0.01 ~
item replace entity @s armor.head with air
item replace entity @s armor.feet with air
item replace entity @s armor.legs with air
item replace entity @s armor.chest with air
data merge entity @s {CustomNameVisible:0b,Marker:1b,ShowArms:0b}

execute if score @s credit_hit matches 2.. run loot replace entity @s armor.head loot ut:count
execute if score @s credit_hit matches 2.. run data modify entity @s CustomName set from entity @s ArmorItems[3].components."minecraft:custom_name"