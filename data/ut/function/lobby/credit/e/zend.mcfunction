#hi

tp @s ~ ~ ~ 90 ~-10
effect clear @s glowing
tag @s remove cnextex
tag @s remove moving

execute if score lim credit matches 1 if score credit_state info matches 1 run schedule function ut:lobby/credit/e/e 4t
execute if score lim credit matches 2 if score credit_state info matches 1 run schedule function ut:lobby/credit/e/h 4t
execute if score lim credit matches 3 if score credit_state info matches 1 run schedule function ut:lobby/credit/e/k 4t
execute if score lim credit matches 4 if score credit_state info matches 1 run schedule function ut:lobby/credit/e/s 2s

schedule function ut:lobby/credit/end 45s