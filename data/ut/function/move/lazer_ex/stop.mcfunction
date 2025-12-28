#By Nebulirion

scoreboard players set @s unloadtime 8
scoreboard players set @s[tag=attack_buffed] unloadtime 0
scoreboard players set @s mpcooldown 4

function ut:player/infight/use

scoreboard players reset @s plt1
scoreboard players reset @s plt1b
#
function ut:move/lazer_ex/reset_mpmove
#

scoreboard players remove @s[tag=lazer_ex_user,tag=!attack_buffed_def] def 50
scoreboard players remove @s[tag=lazer_ex_user] move_loop 1
tag @s remove lazer_ex_user
tag @s remove attack_buffed_def

function ut:move/head/change