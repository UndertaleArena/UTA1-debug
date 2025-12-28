#By Nebulirion

scoreboard players set @s life 1000

playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 1
execute align y run particle minecraft:witch ~ ~1 ~ 0.1 0.03 0.1 0.3 50 normal @a[scores={Q=2..}]

tag @e[tag=waiting,tag=cname,sort=random,limit=12] add axe_target

execute as @e[tag=axe_target] facing entity @s feet rotated ~ 0 run tp @s ^ ^-5 ^4.5
execute as @e[tag=axe_target,limit=5,sort=random] facing entity @s feet rotated ~ 0 run tp @s ^ ^-5 ^5.5
execute as @e[tag=axe_target,limit=5,sort=random] facing entity @s feet rotated ~ 0 run tp @s ^ ^-5 ^3.5

execute as @a[tag=credit_p] facing entity @s feet rotated ~ 0 positioned ^ ^ ^.5 run function ut:lobby/credit/a/ak/block/cast
execute as @e[tag=axe_target] facing entity @s feet rotated ~ 0 positioned ^ ^ ^.5 run function ut:lobby/credit/a/ak/block/cast

item replace entity @e[tag=summon2,limit=4,sort=random] armor.head with oak_log
item replace entity @e[tag=summon2,limit=4,sort=random] armor.head with oak_planks
item replace entity @e[tag=summon2,limit=3,sort=random] armor.head with sea_lantern
item replace entity @e[tag=summon2,limit=3,sort=random] armor.head with glowstone
item replace entity @e[tag=summon2,limit=2,sort=random] armor.head with magenta_terracotta
item replace entity @e[tag=summon2,limit=2,sort=random] armor.head with coal_block
tag @e[tag=summon2] remove summon2