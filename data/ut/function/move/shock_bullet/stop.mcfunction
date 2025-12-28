#By Nebulirion

scoreboard players reset @s plt2

function ut:player/infight/use

scoreboard players remove @s[tag=shock_bullet_user] move_loop 1
tag @s remove shock_bullet_user