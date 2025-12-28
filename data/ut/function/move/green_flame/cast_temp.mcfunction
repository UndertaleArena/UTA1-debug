#By Nebulirion

#check on this
summon minecraft:marker ^ ^ ^ {Tags:[summon,summon_gf,move,green_flame_bullet,green_flame_temp,prj_sp,green_flame_kill],CustomName:'"Temp"'}

scoreboard players set #this damage 0
scoreboard players set #this lifetime 40
scoreboard players operation #this damage *= @s atk
scoreboard players operation #this damage /= #rate atk
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast