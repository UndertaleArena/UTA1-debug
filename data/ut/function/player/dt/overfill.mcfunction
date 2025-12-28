#by Ds_Squid

tag @s add dt_oready
function ut:player/dt/update

execute at @s run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 2 1.8
title @s title ["",{"text":""}]
title @s subtitle ["",{"translate":"wrn.dt4"}]
title @s times 5 20 5
scoreboard players set @s title_timer 25
