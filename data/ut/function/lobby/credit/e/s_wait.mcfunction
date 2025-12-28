#hi

execute if entity @e[tag=clast] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/s_wait 10t
execute unless entity @e[tag=clast] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/x 1t