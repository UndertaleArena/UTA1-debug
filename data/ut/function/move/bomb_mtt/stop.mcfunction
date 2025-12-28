#By Nebulirion

scoreboard players set @s cd 0
scoreboard players set @s cddis 0

scoreboard players reset @s plt2
scoreboard players reset @s plt2b

effect clear @s levitation
function ut:move/effect/nofall/give

scoreboard players remove @s[tag=bomb_mtt_user] move_loop 1
tag @s remove bomb_mtt_user
