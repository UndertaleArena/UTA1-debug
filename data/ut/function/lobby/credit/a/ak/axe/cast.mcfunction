#By Nebulirion

summon minecraft:armor_stand ^ ^ ^ {Tags:[nokill,ak_bullet,woodaxe,summon,cmove,credit_as],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_axe",count:1b,components:{"minecraft:custom_model_data":1}}],Pose:{Head:[230f,1f,0f]},CustomName:'{"translate":"chr.ak.mpn1"}',Rotation:[99f]}

scoreboard players set @e[tag=summon,type=armor_stand,limit=1] x_pos 230
scoreboard players set @e[tag=summon,type=armor_stand,limit=1] life 0
scoreboard players set @e[tag=summon,type=armor_stand,limit=1] lifetime 1040
tp @e[tag=summon,type=armor_stand,limit=1] ~ ~ ~ ~ -35
tag @e[tag=summon,type=armor_stand,limit=1] remove summon