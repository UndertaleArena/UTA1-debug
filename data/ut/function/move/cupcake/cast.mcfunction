#By Nebulirion

playsound minecraft:entity.phantom.ambient player @a ~ ~ ~ 2 1.3
particle cloud ~ ~1 ~ 0.3 0.3 0.3 0.3 100 force @a[scores={Q=1..}]

summon minecraft:armor_stand ~ ~ ~ {Tags:[novapordeath,move,cupcake,prj,prj_sp,summon],Small:0b,NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Fire:32676,ArmorItems:[{},{},{},{id:"minecraft:fermented_spider_eye",count:1b,components:{custom_model_data:6}}],Pose:{Head:[0f,0f,0f]},CustomName:'{"translate":"chr.muffet.dtn"}',Silent:1b}

scoreboard players operation @e[tag=summon,limit=1] IQ = @s IQ
scoreboard players set #this damage 15 
scoreboard players set #this lifetime 500
scoreboard players operation #this damage *= @s atk
scoreboard players operation #this damage /= #rate atk
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] rotated ~ 0 run function ut:move/cast