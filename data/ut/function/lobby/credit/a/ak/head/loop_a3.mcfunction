#By Nebulirion

particle minecraft:dust{color:[0.9,0.9,1.0],scale:0.7} ~ ~1.6 ~ 0.1 0 0.1 0.001 2 force @a[scores={Q=3..}]
tp @s ~ ~0.25 ~ ~ ~1

tag @s add atker
execute unless entity @s[team=touched] as @a[distance=..0.7,tag=credit_p,limit=1,sort=nearest] run function ut:lobby/credit/a/hit
tag @s remove atker