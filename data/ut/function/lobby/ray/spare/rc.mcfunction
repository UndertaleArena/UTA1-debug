#By Nebulirion

tag @s add ray_user

scoreboard players set @s ray_distance 256
execute anchored eyes positioned ^ ^ ^0.5 run function ut:lobby/ray/spare/loop

tag @s remove ray_user