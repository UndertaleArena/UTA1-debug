#By Nebulirion

#execute at @a run playsound minecraft:entity.mooshroom.convert player @a ~ ~ ~ 2 1

execute at @e[tag=cnextex] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1.2 1

execute as @e[tag=cnextex] at @s run tp @s ~ ~ ~ ~180 ~

scoreboard players set cd credit 0
scoreboard players set cdmax credit 50
scoreboard players set cdmaxrvm credit 0