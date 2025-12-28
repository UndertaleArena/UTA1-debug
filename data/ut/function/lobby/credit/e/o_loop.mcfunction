#hi

execute at @e[tag=credit_play] run function ut:lobby/credit/a/neb/cmb/random
kill @e[tag=random_as,limit=11,sort=random]

execute as @e[tag=launched] at @s run tp @s ~ ~ ~ facing entity @e[tag=random_as,limit=1,sort=random] feet

kill @e[tag=random_as]

execute as @e[tag=launched,limit=1,sort=random] at @s run function ut:lobby/credit/a/sm_sl

execute if entity @e[tag=launched] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/o_loop 8t
execute unless entity @e[tag=launched] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/o_wait 1t