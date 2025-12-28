#By Nebulirion


data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute positioned ^ ^ ^-1 align y run tp @s ~ ~ ~ ~ 0
tag @s add landed
tag @s remove inair
tag @s remove prj_reflectable

tag @s add atker
execute as @a[tag=playing,tag=!untargetable] unless score @s tid = @e[tag=atker,limit=1] tid run tag @s add spider_target
scoreboard players operation @s sid = @p[tag=spider_target] pid
tag @a remove spider_target
tag @s remove atker

scoreboard players set @s life 0
scoreboard players set @s lifetime 80