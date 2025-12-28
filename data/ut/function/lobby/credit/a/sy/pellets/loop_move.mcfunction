#By Nebulirion

tp @s ^ ^ ^.3 ~ ~

tag @s add atker
execute positioned ~ ~-1 ~ unless entity @s[team=touched] as @a[distance=..0.7,tag=credit_p,limit=1,sort=nearest] run function ut:lobby/credit/a/hit
tag @s remove atker