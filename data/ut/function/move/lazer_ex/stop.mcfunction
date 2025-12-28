#By Nebulirion

scoreboard players set @s unloadtime 8
scoreboard players add @s mpcooldown 2

function ut:player/infight/use

scoreboard players reset @s plt1
scoreboard players reset @s plt1b
#
function ut:move/lazer_ex/reset_mpmove
#

scoreboard players remove @s[tag=lazer_ex_user] def 50
scoreboard players remove @s[tag=lazer_ex_user] move_loop 1
tag @s remove lazer_ex_user

function ut:move/head/change