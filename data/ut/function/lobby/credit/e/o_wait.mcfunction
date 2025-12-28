#hi

execute if entity @e[tag=cname_las] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/o_wait 10t
execute unless entity @e[tag=cname_las] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/s 1t