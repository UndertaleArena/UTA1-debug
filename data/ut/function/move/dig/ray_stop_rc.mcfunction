#By Nebulirion

summon minecraft:armor_stand ~ ~1.2 ~ {Tags:[dig_use,dig_out,dig_animation,summon,hit],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{Head:[0f,0f,0f]},CustomName:'"Flowey"'}

scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] sid = @s pid
scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] tid = @s tid
scoreboard players add aid aid 1
scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] aid = aid aid
tag @e[tag=summon,limit=1,type=armor_stand] remove summon