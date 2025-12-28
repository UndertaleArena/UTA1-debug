###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
playsound minecraft:entity.spider.ambient player @a ~ ~ ~ 1.2 1.8
tag @s add target
scoreboard players operation #target pid = @s pid
execute store result score #neg y_pos run data get entity @s Pos[1] 1000
execute as @e[tag=atker,limit=1] run function ut:move/spider/hit_atker
tag @s remove target
###MAIN
function ut:move/hit/main