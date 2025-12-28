#By Nebulirion

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.5 1.5
particle minecraft:explosion ~ ~ ~ 0 0 0 0 2 force @a[scores={Q=2..}]

tag @s add explode
tag @s add atker
execute as @a[distance=..1.2,tag=credit_p] run function ut:lobby/credit/a/hit
tag @s remove atker

kill @s