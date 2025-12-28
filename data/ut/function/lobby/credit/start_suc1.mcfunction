#By Nebulirion

execute if score credit_state info matches 1 run function ut:lobby/credit/start_fail2
execute if score credit_state info matches 0 at @e[tag=credit_room] run function ut:lobby/credit/start_suc2
