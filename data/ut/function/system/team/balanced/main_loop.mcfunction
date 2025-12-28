#By Nebulirion

#execute if score -FristPick skill matches 0 run function ut:system/team/balanced/main_loop_t1
#execute if score -FristPick skill matches 1 run function ut:system/team/balanced/main_loop_first

function ut:system/team/balanced/main_loop_t1
function ut:system/team/balanced/main_loop_t2

execute if score -PlayersLeft skill matches 3.. run function ut:system/team/balanced/main_loop
execute if score -PlayersLeft skill matches 1..2 run function ut:system/team/balanced/main_loop_final