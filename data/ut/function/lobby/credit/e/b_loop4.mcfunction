#hi

execute as @e[tag=creator_as,tag=credit_tbcas,limit=1,sort=nearest] at @s run function ut:lobby/credit/e/big_pos

execute if entity @e[tag=creator_as,tag=credit_tbcas] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/b_loop4 4t
execute unless entity @e[tag=creator_as,tag=credit_tbcas] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/c 2t