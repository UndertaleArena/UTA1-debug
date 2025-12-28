#By Nebulirion

#playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1.2
function ut:system/sound_wrn

title @s title ["",{"text":""}]
title @s subtitle ["",{"translate":"wrn.ch"}]
title @s times 5 10 5
scoreboard players set @s title_timer 15