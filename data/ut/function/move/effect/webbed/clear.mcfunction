#By Nebulirion

attribute @s movement_speed modifier remove webbed_slow

scoreboard players remove @s[tag=effect_webbed] move_loop 1
tag @s remove effect_webbed
tag @s remove effect_webbed_clear