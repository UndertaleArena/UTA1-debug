#By Nebulirion

execute at @s run particle item{item:white_terracotta} ~ ~1 ~ 0.3 0.6 0.3 0 200 force @a[scores={Q=1..}]
execute at @s run playsound minecraft:entity.zombie.converted_to_drowned player @a ~ ~ ~ 1 0.6

title @s title {"translate":"ttl.dth3"}
title @s times 5 30 5
scoreboard players set @a title_timer 35

execute if score showDeathMessage gamerule matches 1 run function ut:player/death/melt_msg