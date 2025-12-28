#By Nebulirion

#execute rotated ~30 ~ positioned ^ ^ ^8 store result score cur life if entity @a[tag=credit_p,distance=..6]
#execute rotated ~-30 ~ positioned ^ ^ ^8 store result score cru life if entity @a[tag=credit_p,distance=..6]


execute if entity @s[tag=cmb_l] run tp @s ^ ^ ^.1 ~1 ~.3
execute if entity @s[tag=!cmb_l] run tp @s ^ ^ ^.1 ~-1 ~.3
execute if score @s life matches 45.. at @s run function ut:lobby/credit/a/neb/cmb/loop_step
execute if score @s life matches 50.. at @s run function ut:lobby/credit/a/neb/cmb/loop_step
execute if score @s life matches 55.. at @s run function ut:lobby/credit/a/neb/cmb/loop_step

tag @s add atker
execute positioned ~ ~-1 ~ if entity @a[distance=..0.7,tag=credit_p,limit=1,sort=nearest] positioned ~ ~0.5 ~ run function ut:lobby/credit/a/neb/cmb/explode
tag @s remove atker

execute if score @s life matches 50.. unless block ~ ~ ~ #ut:trans positioned ~ ~.5 ~ run function ut:lobby/credit/a/neb/cmb/explode