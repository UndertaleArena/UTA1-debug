#By Nebulirion

#reset lite
function ut:move/delete/stop_lite

#stuff reset
scoreboard players reset @s plt3
scoreboard players reset @s plt3b
scoreboard players remove @s[tag=delete_user] move_loop 1
tag @s remove delete_user
tag @s remove dt_lock