#hi

function ut:lobby/credit/check
execute at @e[tag=cname] run setblock ~ ~0.5 ~ air
#execute as @e[tag=cname_special] run function ut:lobby/credit/a/setup_sp

execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/d 5t

schedule function ut:lobby/credit/end 45s