#By Nebulirion

scoreboard players set @s unloadtime 40
function ut:player/infight/use

scoreboard players set @s plt2 24
execute if entity @s[gamemode=survival] run tag @s add dig_os
execute if entity @s[gamemode=adventure] run tag @s add dig_oa
execute if entity @s[gamemode=creative] run tag @s add dig_oc
gamemode spectator

summon minecraft:armor_stand ~ ~1.5 ~ {Tags:[dig_use,dig_in,dig_animation,summon,hit],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:gold_nugget",count:1b}],Pose:{Head:[0f,0f,0f]},CustomName:'"Flowey"'}

#spectate @e[tag=summon,limit=1] @s 

scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] sid = @s pid
scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] tid = @s tid
scoreboard players add aid aid 1
scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] aid = aid aid
#tp @e[tag=summon,tag=dig_in] ~ ~1.5 ~ ~ 0
tag @e[tag=summon,limit=1,type=armor_stand] remove summon

tag @s add void_immune
tag @s add no_mc_dmg
tag @s add no_particles

scoreboard players add @s[tag=!dig] move_loop 1
tag @s add dig