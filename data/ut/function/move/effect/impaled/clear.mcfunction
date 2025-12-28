#By Nebulirion

scoreboard players reset @s impaled_timer
scoreboard players reset @s impaled_level

function ut:move/effect/impaled/update

scoreboard players remove @s[tag=effect_impaled] move_loop 1
tag @s remove effect_impaled