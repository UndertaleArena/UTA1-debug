#By Nebulirion


scoreboard players set @s flirt_timer 40
scoreboard players add @s[tag=!effect_flirt] move_loop 1
tag @s add effect_flirt

scoreboard players operation @s sid = #atker pid

function ut:move/player_loop/fullstoplite

scoreboard players set @s unloadtime 40
execute as @s at @s anchored eyes run particle heart ^ ^ ^0.4 0.2 0.2 0.2 0.3 25 force @s[scores={Q=1..}]
effect give @s minecraft:weakness 3 72 true
title @s title ["",{"translate":"sts.infatuated"},{"translate":"sts.excl"}]
title @s times 5 20 5
scoreboard players set @s title_timer 25