#hi

function ut:lobby/credit/check
tag @e[tag=credit_as,tag=waiting,tag=cname,team=!touched] add launched

execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/o_loop 1s

schedule function ut:lobby/credit/end 60s