#By Nebulirion

scoreboard players set OVERGROWTH root 0
execute as @e[tag=root_as] at @s run function ut:lobby/root/reset_root
kill @e[tag=root_as]

scoreboard objectives add root dummy
execute positioned 258 140 1279 run function ut:lobby/root/setup
execute positioned 258 142 1281 run function ut:lobby/root/setup
execute positioned 256 141 1278 run function ut:lobby/root/setup
execute positioned 255 142 1282 run function ut:lobby/root/setup
