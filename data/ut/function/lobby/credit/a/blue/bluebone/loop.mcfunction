#By Nebulirion

particle minecraft:dust{color:[0.0,0.9,0.9],scale:0.8} ^ ^ ^-1 0.1 0 0.1 0 1 force @a[scores={Q=3..}]
tp @s ^ ^ ^1 ~ ~

scoreboard players add @s life 1
execute if score @s life >= @s lifetime run kill @s

tag @s add atker
execute unless entity @s[team=touched] positioned ~ ~-1 ~ as @a[predicate=!ut:effects/blue,distance=..1,tag=credit_p,limit=1,sort=nearest] run function ut:lobby/credit/a/hit
tag @s remove atker