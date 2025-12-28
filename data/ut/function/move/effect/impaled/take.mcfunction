#By Nebulirion

scoreboard players remove @s impaled_level 1

function ut:move/effect/impaled/update

execute if score @s impaled_timer matches ..0 run function ut:move/effect/impaled/clear