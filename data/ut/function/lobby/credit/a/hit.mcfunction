#By Nebulirion

playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1

scoreboard players add @s credit_hit 1

team join touched @e[tag=atker]
#execute if entity @e[tag=atker,tag=cname] run tellraw @s ["",{"selector":"@e[tag=atker]"}]
execute as @e[tag=atker] run function ut:lobby/credit/a/hit_atker