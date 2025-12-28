#By Nebulirion

playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 2 0.8

summon minecraft:husk ^ ^-.2 ^ {Tags:[summon,move,vine,inair,prj,prj_sp,motion_prj,reflectable],NoGravity:1b,Invulnerable:1b,Silent:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:wheat_seeds",count:1b}],CustomNameVisible:0b,Team:"nocol",IsBaby:1b}

#####
scoreboard players set #this damage 50
scoreboard players set #this lifetime 100
scoreboard players operation #this damage *= @s atk
scoreboard players operation #this damage /= #rate atk
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

#Motion
execute store result score neg x_pos run data get entity @e[tag=summon,limit=1] Pos[0] 1000
execute store result score neg y_pos run data get entity @e[tag=summon,limit=1] Pos[1] 1000
execute store result score neg z_pos run data get entity @e[tag=summon,limit=1] Pos[2] 1000

tp @e[tag=summon,limit=1] ^ ^-.2 ^1.5
execute store result score @e[tag=summon,limit=1] x_pos run data get entity @e[tag=summon,limit=1] Pos[0] 1000
execute store result score @e[tag=summon,limit=1] y_pos run data get entity @e[tag=summon,limit=1] Pos[1] 1000
execute store result score @e[tag=summon,limit=1] z_pos run data get entity @e[tag=summon,limit=1] Pos[2] 1000

scoreboard players operation @e[tag=summon,limit=1] x_pos -= neg x_pos
scoreboard players operation @e[tag=summon,limit=1] y_pos -= neg y_pos
scoreboard players operation @e[tag=summon,limit=1] z_pos -= neg z_pos

execute as @e[tag=summon,limit=1] positioned ^ ^-.2 ^ run function ut:move/cast

###