#By Nebulirion

playsound minecraft:entity.skeleton.shoot player @a ~ ~ ~ 0.4 1

execute anchored eyes run function ut:move/bone_sans/random
execute as @e[type=marker,tag=random_as] at @s unless block ~ ~ ~ #ut:trans run kill @s
execute unless entity @s[tag=attack_buffed] at @e[type=marker,tag=random_as,sort=random,limit=2] run function ut:move/bone_small/cast
execute if entity @s[tag=attack_buffed] at @e[type=marker,tag=random_as,sort=random,limit=3] run function ut:move/bone_small/cast
kill @e[type=marker,tag=random_as]

execute positioned ^ ^-0.5 ^24 anchored eyes run function ut:move/bone_sans/random_aim
execute as @e[type=armor_stand,tag=summon2] at @s run function ut:move/bone_small/cast2
kill @e[type=marker,tag=random_as]

scoreboard players set @s unloadtime 3
scoreboard players add @s mpcooldown 1
function ut:player/infight/use