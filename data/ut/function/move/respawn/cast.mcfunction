#By Nebulirion

summon minecraft:armor_stand ~ ~ ~ {Tags:[respawn_soul,summon,move,spc],NoGravity:1b,NoBasePlate:1b,Invisible:1b,Marker:1b,equipment:{head:{id:"carrot_on_a_stick",count:1,components:{custom_model_data:{floats:[999]}}}},CustomName:"Respawn Soul"}

scoreboard players set cmd store 1000
scoreboard players operation cmd store += @s tid
execute store result entity @e[limit=1,tag=summon] equipment.head.components."minecraft:custom_model_data".floats[0] int 1 run scoreboard players get cmd store

scoreboard players set #this lifetime 30
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast