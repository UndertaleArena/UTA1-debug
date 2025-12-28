#By Nebulirion

function ut:player/infight/use

scoreboard players reset @s plt1
scoreboard players reset @s plt1b
scoreboard players reset @s plt1c

scoreboard players set @s unloadtime 2
scoreboard players set @s unloadtime_2nd 10
scoreboard players remove @s[tag=attack_buffed] unloadtime_2nd 8
scoreboard players remove @s[tag=tear_user] move_loop 1
tag @s remove tear_user