#By Nebulirion

scoreboard players add @s life 1

execute if entity @s[tag=cname_donate] positioned ~ ~0.9 ~ run particle dust{color:[1.0,0.8,0.0],scale:0.7} ^ ^ ^-0.5 0.1 0.1 0.1 0 1 normal @a[scores={Q=3..}]

execute if entity @s[tag=cname_exp] run function ut:lobby/credit/a/loop_move_x
execute if entity @s[tag=cname_boc] run function ut:lobby/credit/a/loop_move_b
execute if entity @s[tag=cname_str] run function ut:lobby/credit/a/loop_move_s
execute if entity @s[tag=cname_cur] run function ut:lobby/credit/a/loop_move_c
execute if entity @s[tag=cname_las] run function ut:lobby/credit/a/loop_move_l

tag @s add atker
execute unless entity @s[team=touched] as @a[distance=..0.7,tag=credit_p,limit=1,sort=nearest] run function ut:lobby/credit/a/hit
tag @s remove atker

execute unless entity @s[tag=cname_las,scores={life=..20}] unless entity @e[tag=credit_play,distance=..12] run function ut:lobby/credit/a/loop_end