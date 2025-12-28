#By Nebulirion

tag @s add tr_raytar
execute if entity @s[tag=tut_join] as @a[tag=ray_user] run function ut:lobby/tutorial/join_select
execute if entity @s[tag=tut_start] as @a[tag=ray_user] run function ut:lobby/tutorial/start
execute if entity @s[tag=credit_start] as @a[tag=ray_user] run function ut:lobby/credit/start
execute if entity @s[tag=tut_squit] as @a[tag=ray_user] run function ut:lobby/tutorial/s/quit
execute if entity @s[tag=ray_tut_s] run function ut:lobby/tutorial/s/talk
execute if entity @s[tag=tut_quit] as @a[tag=ray_user] run function ut:lobby/tutorial/quit
execute if entity @s[tag=tut_papyrus] as @a[tag=ray_user] run function ut:lobby/tutorial/pap
tag @s remove tr_raytar