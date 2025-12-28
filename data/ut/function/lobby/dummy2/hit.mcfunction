#By Nebulirion

playsound minecraft:block.bamboo.break player @a ~ ~ ~ 2 0.7

kill @e[tag=bone,tag=atker]

scoreboard players remove @s life 1
execute if score @s life matches ..0 run function ut:lobby/dummy2/die