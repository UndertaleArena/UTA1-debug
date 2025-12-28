#hi


function ut:lobby/credit/check
tag @e[tag=launched,scores={credit=-23}] add atker

execute at @e[tag=credit_play] run function ut:lobby/credit/a/random
execute as @e[tag=atker] at @s run tp @s ~ ~ ~ facing entity @e[tag=random_as,limit=1,sort=random] feet
kill @e[tag=random_as]

execute at @e[tag=atker] as @e[tag=launched,scores={credit=-27..-20}] at @s rotated as @e[tag=atker] run tp @s ~ ~ ~ ~ ~
execute at @e[tag=atker] as @e[tag=launched,scores={credit=-27..-20}] run function ut:lobby/credit/a/sm_s
tag @e[tag=atker] remove atker

tag @e[tag=cname_odd] add cnext
scoreboard players set lim credit 4
execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/d_loop 10t