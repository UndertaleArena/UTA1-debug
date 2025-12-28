#By Nebulirion

scoreboard players operation @s life += hq_parkour info

#scoreboard players operation cur life = hq_parkour info
#execute if score cur life matches 1.. run function ut:lobby/mini/bone_lq2

tp @s ^ ^ ^1

#execute if score hq_parkour info matches 13 run tp @s ^ ^ ^1
#execute if score hq_parkour info matches 6 run tp @s ^ ^ ^0.4615
#execute if score hq_parkour info matches 3 run tp @s ^ ^ ^0.2307

fill ^ ^ ^0.8 ^ ^ ^1.8 minecraft:smooth_red_sandstone_slab[type=top] replace air
execute if score @s life matches 260.. run function ut:lobby/minis/parkour/bone/stop