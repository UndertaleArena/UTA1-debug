#By Nebulirion

#playsound minecraft:block.grass.break player @a ~ ~ ~ 1 1

summon minecraft:armor_stand ~ ~ ~ {Tags:[move,prj,summon,summon2,summon3],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b}

tp @e[tag=summon,limit=1,type=armor_stand] ~ ~ ~ ~ ~

scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] damage *= @s atk
scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] damage /= 100 atk
scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] pid = @s pid
scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] tid = @s tid
scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] aid = @s aid
tag @e[tag=summon,limit=1,type=armor_stand] remove summon