#By Nebulirion

scoreboard players set @s impaled_timer 60
scoreboard players add @s impaled_level 1

function ut:move/effect/impaled/update

scoreboard players add @s[tag=!effect_impaled] move_loop 1
tag @s add effect_impaled