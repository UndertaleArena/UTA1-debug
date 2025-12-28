#hi

function ut:lobby/credit/check
tag @e[tag=cname_odd,scores={credit=-27..-10}] add cnext
scoreboard players set lim credit 3
execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/d_loop 1t