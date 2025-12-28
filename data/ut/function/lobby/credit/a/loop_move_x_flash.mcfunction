#By Nebulirion


data modify entity @s[tag=red] ArmorItems[3].id set value "minecraft:player_head"
data modify entity @s[tag=!red] ArmorItems[3].id set value "minecraft:red_terracotta"

tag @s[tag=red] add hadred
tag @s remove red
tag @s[tag=!hadred] add red
tag @s remove hadred

scoreboard players reset @s plt2

particle dust{color:[1.0,0.0,0.0],scale:0.8} ~1.5 ~.1 ~ 0 0 .6 0 7 normal
particle dust{color:[1.0,0.0,0.0],scale:0.8} ~-1.5 ~.1 ~ 0 0 .6 0 7 normal
particle dust{color:[1.0,0.0,0.0],scale:0.8} ~ ~.1 ~1.5 .6 0 0 0 7 normal
particle dust{color:[1.0,0.0,0.0],scale:0.8} ~ ~.1 ~-1.5 .6 0 0 0 7 normal