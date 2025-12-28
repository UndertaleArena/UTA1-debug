#By Nebulirion

scoreboard players reset @s disco_timer

attribute @s generic.movement_speed modifier remove discospeed

scoreboard players remove @s[tag=effect_disco] move_loop 1
tag @s remove effect_disco