#By Nebulirion

execute if entity @s[tag=effect_sadness_max] run function ut:move/effect/sadness/max_clear

scoreboard players reset @s sadness_level
scoreboard players reset @s sadness_timer

scoreboard players remove @s[tag=effect_sadness] move_loop 1
tag @s remove effect_sadness