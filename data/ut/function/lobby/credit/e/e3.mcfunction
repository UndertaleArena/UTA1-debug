#hi

function ut:lobby/credit/check
execute as @e[tag=cname,tag=stationed,scores={credit=-68..-37}] run function ut:lobby/credit/e/d_check

tag @e[tag=cname_g3] add cnext
scoreboard players set lim credit 6
execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/d_loop 1t