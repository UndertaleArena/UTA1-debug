#hi

function ut:lobby/credit/check
execute as @e[tag=cname,tag=stationed,scores={credit=-36..-1}] run function ut:lobby/credit/e/d_check

tag @e[tag=cname_even,scores={credit=-27..-10}] add cnext
scoreboard players set lim credit 1
execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/d_loop 1t