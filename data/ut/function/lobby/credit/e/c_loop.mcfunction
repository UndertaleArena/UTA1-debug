#hi


execute as @e[tag=stationed,tag=cname,sort=random,limit=2] at @s run function ut:lobby/credit/a/launch

execute if entity @e[tag=cname] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/c_loop 10t
execute unless entity @e[tag=cname] if score credit_state info matches 1 run schedule function ut:lobby/credit/end 1s