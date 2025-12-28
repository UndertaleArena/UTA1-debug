#By Nebulirion

execute if entity @s[tag=moving_p] run tp @s ~ ~ ~0.1 ~ ~1
execute if entity @s[tag=moving_n] run tp @s ~ ~ ~-0.1 ~ ~1

execute positioned ~ ~1 ~ as @e[distance=..1,tag=bluebone] run function ut:lobby/dummy/hit
execute unless entity @e[tag=ray_flowey,distance=..9] run function ut:lobby/dummy/change_dir