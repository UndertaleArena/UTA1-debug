#By Nebulirion

scoreboard players reset @s flame_timer

#effect clear @s minecraft:hunger

scoreboard players remove @s[tag=effect_flame] move_loop 1
tag @s remove effect_flame