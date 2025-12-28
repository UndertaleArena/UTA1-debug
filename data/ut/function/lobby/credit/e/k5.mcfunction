#hi

function ut:lobby/credit/check
scoreboard players set lim credit 4

execute as @e[tag=cname_helper] run scoreboard players set @s plt1 970

execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/z 35t