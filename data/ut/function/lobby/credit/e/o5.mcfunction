#hi

function ut:lobby/credit/check
scoreboard players set lim credit 5

execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/s 2t