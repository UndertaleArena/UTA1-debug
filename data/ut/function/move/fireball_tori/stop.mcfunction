#By Nebulirion

function ut:player/infight/use

scoreboard players reset @s plt1
scoreboard players reset @s plt1b
scoreboard players reset @s plt1c
scoreboard players remove @s[tag=fireball_t_user] move_loop 1
tag @s remove fireball_t_user
tag @s remove cast_fireball_left