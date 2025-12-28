#hi

kill @e[tag=cname,team=!touched]

execute as @e[tag=creator_as,tag=credit_as] at @s run function ut:lobby/credit/e/s_check_big
execute as @e[tag=cname] at @s run function ut:lobby/credit/e/s_check_small

execute at @e[tag=credit_play] run function ut:lobby/credit/e/s_pos

execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/s_loop 1s

schedule function ut:lobby/credit/end 60s