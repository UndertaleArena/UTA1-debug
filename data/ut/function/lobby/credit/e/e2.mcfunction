#hi


function ut:lobby/credit/check
#tag @e[tag=launched,scores={credit=-14}] add atker
#execute as @e[tag=atker] at @s run tp @s ~ ~ ~ facing entity @r[tag=credit_p] feet
#execute at @e[tag=atker] as @e[tag=launched,scores={credit=-18..-10}] at @s rotated as @e[tag=atker] run tp @s ~ ~ ~ ~ ~
tag @e[tag=launched] add rt_left
execute as @e[tag=launched] at @s run tp @s ~ ~ ~ ~35 ~
execute as @e[tag=launched] run function ut:lobby/credit/a/sm_c

execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/e3 70t