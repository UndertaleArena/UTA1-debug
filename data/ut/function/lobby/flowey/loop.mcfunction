#By Nebulirion

execute if score flowey_in tutorial matches 1 run tp @s ~ ~0.2 ~
execute if score flowey_out tutorial matches 1 run tp @s ~ ~-0.2 ~
execute as @e[distance=..2,tag=bone] at @s run function ut:lobby/flowey/bullet_proof
execute as @e[distance=..2,tag=floor_bone] at @s run function ut:lobby/flowey/bullet_proof