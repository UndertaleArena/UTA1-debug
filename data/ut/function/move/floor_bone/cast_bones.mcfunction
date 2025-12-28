#By Nebulirion

playsound minecraft:entity.skeleton.shoot player @a ~ ~ ~ 0.6 0.7

summon minecraft:armor_stand ~ ~ ~ {Tags:[floor_bone,prj,prj_sp,summon,move],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:light_gray_dye",count:1b}],Pose:{Head:[0f,0f,0f]},CustomName:'{"translate":"chr.papyrus.dtn"}'}

scoreboard players set #this lifetime 18
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players operation #this aid = @s aid

execute as @e[tag=summon,limit=1] run function ut:move/floor_bone/cast_bones_2