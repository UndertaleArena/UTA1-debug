#By Nebulirion

summon minecraft:armor_stand ^ ^ ^ {Tags:[summon,summon_gf,move,green_flame,prj,prj_sp,green_flame_kill],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,CustomName:'{"translate":"chr.toriel.dtn"}',ArmorItems:[{},{},{id:"minecraft:slime_ball",count:1b,components:{"minecraft:custom_data":{hit_list:[]}}},{}]}

scoreboard players set #this damage 0
scoreboard players set #this lifetime 40
scoreboard players operation #this damage *= @s atk
scoreboard players operation #this damage /= #rate atk
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast
#execute as @e[tag=summon_gf,limit=1] at @s run function ut:move/green_flame/cast_pilot2