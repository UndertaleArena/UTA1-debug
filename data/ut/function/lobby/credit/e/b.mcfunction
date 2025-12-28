#hi

function ut:lobby/credit/check

tag @e[tag=creator_as] add credit_tbcas

scoreboard players set inf credit 0
scoreboard players set headd credit 0
scoreboard players set headdd credit 0
execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/b_loop 1t