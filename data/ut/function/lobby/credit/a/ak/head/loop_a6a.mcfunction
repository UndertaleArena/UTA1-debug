#By Nebulirion

execute rotated ~45 ~ positioned ^ ^1.6 ^4 store result score cur life if entity @a[tag=credit_p,distance=..4]
execute rotated ~-45 ~ positioned ^ ^1.6 ^4 store result score cru life if entity @a[tag=credit_p,distance=..4]

particle minecraft:dust{color:[0.9,0.9,1.0],scale:0.7} ~ ~1.6 ~ 0.1 0 0.1 0.001 2 force @a[scores={Q=3..}]

execute if score cur life > cru life run tp @s ^ ^ ^.4 ~5 0
execute if score cur life = cru life run tp @s ^ ^ ^.4 ~ 0
execute if score cur life < cru life run tp @s ^ ^ ^.4 ~-5 0

tag @s add atker
execute unless entity @s[team=touched] positioned ~ ~ ~ as @a[distance=..0.7,tag=credit_p,limit=1,sort=nearest] run function ut:lobby/credit/a/ak/head/hit
tag @s remove atker