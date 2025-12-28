#By Nebulirion

scoreboard players set @s unloadtime 9
scoreboard players add @s mpcooldown 4

scoreboard players remove @s[tag=attack_buffed] unloadtime 3

function ut:player/infight/use

scoreboard players reset @s plt1
scoreboard players reset @s plt1b
scoreboard players remove @s[tag=bone_pap_user] move_loop 1
tag @s remove bone_pap_user