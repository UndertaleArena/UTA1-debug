#By Nebulirion

scoreboard players set @s dogait 2
scoreboard players set @s dogaiv 0
scoreboard players set @s dogaic 1

###PREPARE TARGETED JUMP 

playsound minecraft:entity.wolf.pant player @a ~ ~ ~ 2 2

execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s x_lastground 
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s y_lastground
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s z_lastground

execute at @s align xyz run tp @s ~.5 ~.5 ~.5

summon marker ~ ~ ~ {Tags:[jump_target]}

execute facing entity @s feet run function ut:move/dog/ai/t2/start2
kill @e[tag=jump_target,limit=1]