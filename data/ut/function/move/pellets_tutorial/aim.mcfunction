#By Nebulirion

tag @s add atker
execute positioned ^ ^ ^2 as @a[distance=..2,tag=playing_tut] run tag @s add pellet_target
execute positioned ^ ^ ^6 as @a[distance=..5,tag=playing_tut] run tag @s add pellet_target
execute positioned ^ ^ ^15 as @a[distance=..8,tag=playing_tut] run tag @s add pellet_target
execute positioned ^ ^ ^28 as @a[distance=..10,tag=playing_tut] run tag @s add pellet_target
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.5 1.5
tp @e[tag=atker,limit=1] ~ ~ ~ facing entity @a[tag=pellet_target,sort=nearest,limit=1] eyes

execute at @s positioned ^ ^-0.5 ^32 run function ut:move/random/use_8_hrz
tp @e[tag=atker,limit=1] ~ ~ ~ facing entity @e[tag=random_as,sort=random,limit=1] eyes

kill @e[tag=random_as]
tag @a[tag=pellet_target] remove pellet_target
tag @s remove atker