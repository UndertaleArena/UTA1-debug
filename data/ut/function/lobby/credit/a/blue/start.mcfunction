#By Nebulirion
#this is about the idea person from the UTA production team minecraft id iloveYou0417
#Thank you so much for your help during the creation of this map!!!

execute at @e[tag=cnextex] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1.2 1

execute at @e[tag=cnextex] run summon armor_stand ~ ~ ~ {Tags:[credit_as,bluehome],Rotation:[90.0f,0.0f]}
#execute as @e[tag=cnextex] at @s run tp @s ~ ~ ~ ~225 ~
scoreboard players set cd credit 0
scoreboard players set cdmax credit 10
scoreboard players set cdmaxrvm credit 0