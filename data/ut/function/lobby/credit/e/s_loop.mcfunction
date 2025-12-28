#hi

execute as @e[tag=launched,limit=1,sort=furthest] at @s run function ut:lobby/credit/a/sm_last

execute if entity @e[tag=launched] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/s_loop 8t
execute unless entity @e[tag=launched] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/s_wait 1s