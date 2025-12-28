#hi

function ut:lobby/credit/check
scoreboard players set lim credit 7
tag @e[tag=credit_as,tag=stationed,tag=cname] add cnext

execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/k_loop 10t