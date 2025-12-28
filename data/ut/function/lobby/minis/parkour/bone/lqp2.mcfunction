#By Nebulirion


scoreboard players reset @s life2

execute at @e[tag=parkour_bone] run fill ^ ^ ^-1 ^ ^ ^-1 minecraft:air replace smooth_red_sandstone_slab
execute as @e[tag=parkour_bone] at @s run function ut:lobby/minis/parkour/bone/lq