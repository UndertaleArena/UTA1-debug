#By Nebulirion

playsound minecraft:block.grass.break player @a ~ ~ ~ .3 1

summon minecraft:armor_stand ~ ~ ~ {Tags:[move,vine_summon,summon,prj,prj_sp,summon2],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1b}],Pose:{Head:[0f,0f,0f]},Fire:32676}

scoreboard players set #this lifetime 100
scoreboard players operation #this damage = @s damage
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players operation #this aid = @s aid

execute as @e[tag=summon,limit=1] run function ut:move/vine/summon_cast