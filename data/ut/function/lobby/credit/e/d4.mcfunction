#hi

function ut:lobby/credit/check
tag @e[tag=launched,scores={credit=-4}] add atker

execute at @e[tag=credit_play] run function ut:lobby/credit/a/random
execute as @e[tag=atker] at @s run tp @s ~ ~ ~ facing entity @e[tag=random_as,limit=1,sort=random] feet
kill @e[tag=random_as]

execute at @e[tag=atker] as @e[tag=launched,scores={credit=-18..-1}] at @s rotated as @e[tag=atker] run tp @s ~ ~ ~ ~ ~
execute at @e[tag=atker] as @e[tag=launched,scores={credit=-18..-1}] run function ut:lobby/credit/a/sm_s
tag @e[tag=atker] remove atker

execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/d5 30t