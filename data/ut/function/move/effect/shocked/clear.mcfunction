#By Nebulirion

scoreboard players reset @s shocked_timer

#effect clear @s minecraft:hunger

scoreboard players remove @s[tag=effect_shocked] move_loop 1
tag @s remove effect_shocked