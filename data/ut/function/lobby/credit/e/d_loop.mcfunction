#hi


execute as @e[tag=cnext,limit=1] at @s run function ut:lobby/credit/a/launch

execute if entity @e[tag=cnext] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/d_loop 2t
execute if score lim credit matches 1 unless entity @e[tag=cnext] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/d2 1s
execute if score lim credit matches 2 unless entity @e[tag=cnext] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/d4 1s
execute if score lim credit matches 3 unless entity @e[tag=cnext] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/h2 1t
execute if score lim credit matches 4 unless entity @e[tag=cnext] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/h4 1t
execute if score lim credit matches 5 unless entity @e[tag=cnext] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/e2 1s
execute if score lim credit matches 6 unless entity @e[tag=cnext] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/e4 1s