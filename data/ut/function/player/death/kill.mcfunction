#By Nebulirion

execute unless entity @s[tag=void] if score spawnDust gamerule matches 1 run function ut:move/dust_pile/cast

execute at @s run particle minecraft:cloud ~ ~1.4 ~ 0.2 0.3 0.2 0.05 25 normal @a[scores={Q=1..}]
execute at @s run particle minecraft:cloud ~ ~.8 ~ 0.2 0.3 0.2 0.05 25 force @a[scores={Q=1..}]
execute at @s run playsound minecraft:entity.player.big_fall player @a ~ ~ ~ 2 0.8

execute unless entity @a[tag=atker_p] run title @s title {"translate":"ttl.dth0"}
execute if entity @a[tag=atker_p] run title @s title {"translate":"ttl.dth1"}
execute if entity @a[tag=atker_p] run title @s subtitle {"translate":"ttl.dth1.sub","with":[{"selector": "@a[tag=atker_p]"}]}
title @s times 5 30 5

execute if score showDeathMessage gamerule matches 1 run function ut:player/death/kill_msg