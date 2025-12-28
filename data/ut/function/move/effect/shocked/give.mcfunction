#By Nebulirion

scoreboard players add @s mpcooldown 2
scoreboard players add @s cdcooldown 2

playsound entity.zombie_villager.cure player @s[tag=!effect_shocked] ~ ~ ~ 0.3 2 

scoreboard players set @s shocked_timer 60
scoreboard players add @s[tag=!effect_shocked] move_loop 1
tag @s add effect_shocked

#effect give @s minecraft:hunger 100 0 false

title @s title ["",{"translate":"sts.shocked"},{"translate":"sts.excl"}]
title @s times 5 20 5
scoreboard players set @s title_timer 25