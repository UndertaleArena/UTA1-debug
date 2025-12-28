#By Nebulirion

function ut:move/jumppad/use
playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 0.8

summon minecraft:marker ~ ~ ~ {Tags:[jumppad_void,jumppad_as,summon,move,spc,stickonhit]}
execute store result entity @e[tag=summon,limit=1] Pos[0] double 0.01 run scoreboard players get @s x_lastground 
execute store result entity @e[tag=summon,limit=1] Pos[1] double 0.01 run scoreboard players get @s y_lastground
execute store result entity @e[tag=summon,limit=1] Pos[2] double 0.01 run scoreboard players get @s z_lastground

execute as @e[tag=summon,limit=1] at @s align xyz run tp @s ~.5 ~.5 ~.5

tag @s add voidpad_p
execute as @e[tag=summon,limit=1] facing entity @s feet run function ut:move/jumppad/cast_void_cast
tag @s remove voidpad_p

scoreboard players operation @e[tag=summon,limit=1] sid = @s pid
tag @e[tag=summon,limit=1] remove summon