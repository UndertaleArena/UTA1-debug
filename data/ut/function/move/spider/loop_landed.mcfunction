#By Nebulirion

scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid

execute as @a[tag=playing,tag=!untargetable] unless score @s tid = #atker tid run tag @s add spider_target
execute facing entity @p[distance=..16,tag=spider_target] feet run tp @s ~ ~ ~ ~ 0
execute at @s run function ut:move/spider/step

#####HITCHECK
tag @s add atker
scoreboard players operation #damage damage = @s damage
execute positioned ~ ~.3 ~ as @a[tag=spider_target] run function ut:move/spider/_sys/hitbox
###DETERMINE TARGET
scoreboard players set #hits hitcheck 1
execute as @a[tag=hitcheck_target,sort=nearest] run function ut:move/spider/_sys/hitcheck2
###END
tag @a remove hitcheck_target
tag @s remove atker
#####

tag @a remove spider_target

scoreboard players add @s life 1
execute if score @s life matches 60.. run function ut:void