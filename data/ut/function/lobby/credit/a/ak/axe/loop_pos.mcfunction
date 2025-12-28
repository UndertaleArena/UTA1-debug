#by Neb

#particle end_rod

#tag @s add atker
#execute positioned ~ ~-1 ~ if entity @a[distance=..1,tag=credit_p,limit=1,sort=nearest] positioned ~ ~0.5 ~ run function ut:lobby/credit/a/ak/axe/hit
#tag @s remove atker

execute if score @s life matches 20.. positioned ~ ~-.7 ~ unless block ~ ~ ~ #ut:trans run function ut:lobby/credit/a/ak/axe/hit