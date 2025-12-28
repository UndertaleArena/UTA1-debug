#By Nebulirion
#this is about the helping person from the UTA production team minecraft id SY91419
#Thank you so much for your help during the creation of this map!!!

execute at @e[tag=cnextex] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1.2 1

execute as @e[tag=credit_play] at @s run tp @s ~ ~ ~ facing entity @e[tag=cnextex,limit=1] feet
execute as @e[tag=credit_play] at @s run tp @s ~ ~ ~ ~180 0

execute as @e[tag=cnextex] at @s run tp @s ~ ~ ~ ~180 ~

scoreboard players set cd credit 0