#By Nebulirion

scoreboard players reset @s plt2
scoreboard players reset @s plt2b
scoreboard players remove @s[tag=bomb_ex_user] move_loop 1
tag @s remove bomb_ex_user

function ut:player/infight/use