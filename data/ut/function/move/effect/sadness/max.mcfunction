#By Nebulirion

scoreboard players set @s sadness_timer 100

tag @s add effect_sadness_max

attribute @s generic.movement_speed modifier add sadslow -0.5 add_multiplied_total
scoreboard players remove @s prj_speed 50

title @s title ["",{"translate":"sts.sadness"},{"translate":"sts.excl"}]
title @s times 5 20 5
scoreboard players set @s title_timer 25