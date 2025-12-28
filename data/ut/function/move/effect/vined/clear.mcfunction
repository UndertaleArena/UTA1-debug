#By Nebulirion

attribute @s generic.movement_speed modifier remove vined_slow

scoreboard players remove @s[tag=effect_vined] move_loop 1
tag @s remove effect_vined

scoreboard players reset @s vined_timer