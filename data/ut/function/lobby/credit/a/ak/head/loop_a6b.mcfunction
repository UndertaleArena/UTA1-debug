#By Nebulirion

execute facing entity @e[tag=cnextex,limit=1] feet run tp @s ^ ^ ^.4 ~ ~

particle minecraft:dust{color:[0.9,0.9,1.0],scale:0.7} ~ ~1.6 ~ 0.1 0 0.1 0.001 2 force @a[scores={Q=3..}]

tag @s add atker
execute unless entity @s[team=touched] positioned ~ ~ ~ if entity @a[distance=..0.7,tag=credit_p,limit=1,sort=nearest] positioned ~ ~0.5 ~ run function ut:lobby/credit/a/ak/head/hit
tag @s remove atker

execute if entity @e[tag=cnextex,distance=..0.4] run function ut:lobby/credit/a/ak/head/loop_a6d