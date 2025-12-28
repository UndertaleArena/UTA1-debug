#By Nebulirion

playsound minecraft:entity.skeleton.shoot player @a ~ ~ ~ 1 1.2

summon minecraft:armor_stand ~ ~0.5 ~ {Tags:[blue_bullet,credit_as,cmove,bluebone,summon],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",count:1b}],Pose:{Head:[0f,0f,0f]},CustomName:'{"translate":"chr.papyrus.chn"}'}

execute as @e[tag=summon] run tp @s ~ ~0.5 ~ ~ ~-5

scoreboard players set @e[tag=summon] lifetime 16
tag @e[tag=summon] remove summon