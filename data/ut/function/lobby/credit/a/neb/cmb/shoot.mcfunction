#By Nebulirion

execute at @e[tag=credit_play,limit=1] positioned ~ ~1 ~ rotated -90 0 run function ut:lobby/credit/a/neb/cmb/random
kill @e[tag=random_as,limit=11,sort=random]

tag @s add cmb_l
execute if entity @e[tag=random_as,tag=random_as_l] run tag @s remove cmb_l

execute facing entity @e[tag=random_as,limit=1,tag=random_as_l] feet run tp @s ~ ~ ~ ~30 ~
execute facing entity @e[tag=random_as,limit=1,tag=!random_as_l] feet run tp @s ~ ~ ~ ~-30 ~

kill @e[tag=random_as]

playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.6 1