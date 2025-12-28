#By Nebulirion

summon minecraft:armor_stand ^ ^-0.1 ^ {Tags:[move,mettabot,prj,prj_sp,summon,summon2],Small:0b,NoGravity:1b,Invisible:0b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",count:1b}],CustomName:'{"translate":"chr.mettaton.dtn1"}'}

scoreboard players set #this lifetime 180
scoreboard players operation #this damage *= @s atk
scoreboard players operation #this damage /= #rate atk
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

scoreboard players set @e[tag=summon,limit=1] prj_speed 100
scoreboard players operation @e[tag=summon,limit=1] atk = @s atk

scoreboard players operation @e[tag=summon,limit=1] plt3 = #player plt3

scoreboard players operation @e[tag=summon,limit=1] life2 = #player plt3
scoreboard players operation @e[tag=summon,limit=1] life2 *= 10 const
scoreboard players operation @e[tag=summon,limit=1] life2 *= -1 const
scoreboard players add @e[tag=summon,limit=1] life2 30

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast