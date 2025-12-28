#By Nebulirion

scoreboard players reset @s plt1
scoreboard players reset @s plt1b
scoreboard players set @s unloadtime 10

function ut:player/infight/use

attribute @s generic.movement_speed modifier remove lazerslow

scoreboard players remove @s[tag=lazer_user] move_loop 1
tag @s remove lazer_user