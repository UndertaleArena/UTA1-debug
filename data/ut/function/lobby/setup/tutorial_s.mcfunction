#By Nebulirion

scoreboard players set #setup tut_s 0

scoreboard players add #setup tut_s 1
execute positioned ^-24 ^-3 ^ run function ut:lobby/setup/tut_s
execute as @e[tag=summon,limit=1] run function ut:lobby/setup/tut/s_rotl

scoreboard players add #setup tut_s 1
execute positioned ^-36 ^-3 ^4 run function ut:lobby/setup/tut_s
execute as @e[tag=summon,limit=1] run function ut:lobby/setup/tut/s_rotl

scoreboard players add #setup tut_s 1
execute positioned ^-36 ^-3 ^-4 run function ut:lobby/setup/tut_s
execute as @e[tag=summon,limit=1] run function ut:lobby/setup/tut/s_rotl

scoreboard players add #setup tut_s 1
execute positioned ^-36 ^-3 ^-12 run function ut:lobby/setup/tut_s
execute as @e[tag=summon,limit=1] run function ut:lobby/setup/tut/s_rotl

scoreboard players add #setup tut_s 1
execute positioned ^-24 ^-3 ^-8 run function ut:lobby/setup/tut_s
execute as @e[tag=summon,limit=1] run function ut:lobby/setup/tut/s_rotl

scoreboard players add #setup tut_s 1
execute positioned ^30 ^-3 ^ run function ut:lobby/setup/tut_s
execute as @e[tag=summon,limit=1] run function ut:lobby/setup/tut/s_rotr

scoreboard players add #setup tut_s 1
execute positioned ^42 ^-3 ^4 run function ut:lobby/setup/tut_s
execute as @e[tag=summon,limit=1] run function ut:lobby/setup/tut/s_rotr

scoreboard players add #setup tut_s 1
execute positioned ^42 ^-3 ^-4 run function ut:lobby/setup/tut_s
execute as @e[tag=summon,limit=1] run function ut:lobby/setup/tut/s_rotr

scoreboard players add #setup tut_s 1
execute positioned ^42 ^-3 ^-12 run function ut:lobby/setup/tut_s
execute as @e[tag=summon,limit=1] run function ut:lobby/setup/tut/s_rotr

scoreboard players add #setup tut_s 1
execute positioned ^30 ^-3 ^-8 run function ut:lobby/setup/tut_s
execute as @e[tag=summon,limit=1] run function ut:lobby/setup/tut/s_rotr