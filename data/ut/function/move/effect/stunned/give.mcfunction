#By Nebulirion

scoreboard players add @s[tag=!effect_stun] move_loop 1
tag @s add effect_stun

function ut:move/player_loop/fullstoplite

effect give @s minecraft:weakness 2 72 true
effect give @s minecraft:slowness 2 5 true

title @s title ["",{"translate":"sts.stunned"},{"translate":"sts.excl"}]
title @s times 5 20 5
scoreboard players set @s title_timer 25