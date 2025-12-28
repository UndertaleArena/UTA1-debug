#By Nebulirion

execute at @s run particle minecraft:end_rod ~ ~1.2 ~ 0.2 0.3 0.2 0.1 25 normal @a[scores={Q=1..}]
execute at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.2 1.4

title @s title {"translate":"ttl.dth2"}
title @s subtitle {"translate":"ttl.dth2.sub","with":[{"selector": "@a[tag=spare_p]"}]}
title @s times 5 30 5
scoreboard players set @s title_timer 35

execute if score showDeathMessage gamerule matches 1 run function ut:player/death/spare_msg