#by Neb

#particle end_rod

tag @s add atker
execute unless entity @s[scores={life=95..}] positioned ~ ~-1 ~ as @a[distance=..0.8,tag=credit_p,limit=1,sort=nearest] run function ut:lobby/credit/a/ak/block/hit
tag @s remove atker

execute if entity @s[nbt={OnGround:1b},tag=!landed] at @s run function ut:lobby/credit/a/ak/block/land

scoreboard players add @s life 1
execute if score @s life >= @s lifetime run kill @s