#By Nebulirion

#check on this
summon minecraft:armor_stand ^ ^ ^ {Tags:[summon,summon_gf,prj_sp,move,green_flame_bullet,green_flame_kill],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:book",count:1b}],Pose:{Head:[0f,0f,0f]}}

scoreboard players set #this damage 0
scoreboard players set #this lifetime 40
scoreboard players operation #this damage *= @s atk
scoreboard players operation #this damage /= #rate atk
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast