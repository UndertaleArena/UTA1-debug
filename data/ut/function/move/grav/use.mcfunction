#By Nebulirion

tag @e[sort=nearest,limit=1,type=sheep] add grav

team join blue @e[tag=grav]
effect give @e[tag=grav] glowing infinite 1 true

summon marker ^ ^ ^12 {Tags:[grav_dest]}

execute as @e[tag=grav_dest,limit=1] at @e[tag=grav] facing entity @s eyes run tp @s ^ ^ ^4
execute at @e[tag=grav] run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.1 50

execute store result score neg x_pos run data get entity @e[tag=grav,limit=1] Pos[0] 1000
execute store result score neg y_pos run data get entity @e[tag=grav,limit=1] Pos[1] 1000
execute store result score neg z_pos run data get entity @e[tag=grav,limit=1] Pos[2] 1000

execute store result score mot x_pos run data get entity @e[tag=grav_dest,limit=1] Pos[0] 1000
execute store result score mot y_pos run data get entity @e[tag=grav_dest,limit=1] Pos[1] 1000
execute store result score mot z_pos run data get entity @e[tag=grav_dest,limit=1] Pos[2] 1000

scoreboard players operation mot x_pos -= neg x_pos
scoreboard players operation mot y_pos -= neg y_pos
scoreboard players operation mot z_pos -= neg z_pos

execute store result entity @e[tag=grav,limit=1] Motion[0] double 0.0005 run scoreboard players get mot x_pos
execute store result entity @e[tag=grav,limit=1] Motion[1] double 0.0005 run scoreboard players get mot y_pos
execute store result entity @e[tag=grav,limit=1] Motion[2] double 0.0005 run scoreboard players get mot z_pos

kill @e[tag=grav_dest]
tag @e remove grav