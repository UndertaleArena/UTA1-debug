#By Nebulirion

summon minecraft:marker ~ ~ ~ {Tags:[blue_attack,prj,prj_sp,summon,move],CustomName:'{"translate":"chr.papyrus.dtn"}'}

scoreboard players set #this damage 100
scoreboard players set #this lifetime 52
scoreboard players operation #this damage *= @s atk
scoreboard players operation #this damage /= #rate atk
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s rotated ~ 0 run function ut:move/cast