#hi

execute as @e[tag=launched] at @s run tp @s ~ ~ ~ ~ ~-25
#execute as @e[tag=launched,tag=cname_g4,tag=!cname_helper] at @s run tp @s ~ ~ ~ ~ ~-2
execute as @e[tag=launched,tag=cname_helper] at @s run tp @s ~ ~ ~ ~ ~-10

execute as @e[tag=launched,limit=1] at @s run function ut:lobby/credit/a/sm_b
execute unless entity @e[tag=cnext,tag=cname_helper] as @e[tag=cnext,limit=1] at @s run function ut:lobby/credit/a/launch
execute if entity @e[tag=cnext,tag=cname_helper] as @e[tag=cnext,tag=cname_helper,limit=1] at @s run function ut:lobby/credit/a/launch

execute at @e[tag=credit_play] run function ut:lobby/credit/a/random2
execute if entity @e[tag=launched,tag=cname_helper] run tag @a[tag=credit_p] add random_as
execute as @e[tag=launched] at @s run tp @s ~ ~ ~ facing entity @e[tag=random_as,limit=1,sort=random] feet
tag @a[tag=random_as] remove random_as
kill @e[tag=random_as]

execute if entity @e[tag=cnext] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/k_loop 8t
execute if entity @e[tag=launched] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/k_loop 8t
execute unless entity @e[tag=cnext] unless entity @e[tag=launched] if score credit_state info matches 1 run schedule function ut:lobby/credit/e/k5 1s