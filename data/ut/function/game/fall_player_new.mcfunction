#By Nebulirion

execute unless score fun info matches 1..100 run function ut:fun

#players
function ut:lobby/tutorial/leave
function ut:lobby/credit/leave

tp @s 222.5 193 1280.5 180 90
tag @s remove spectator
tag @s remove playing_tut
tag @s remove playing
title @s actionbar ""

title @s title {"translate":"ttl.main"}
title @s subtitle {"translate":"ttl.sub"}
title @s times 5 40 5
tellraw @s {"translate":"§c§l[!] Please install the Resource Pack!§r"}
execute at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 1 1

gamemode adventure @s

spawnpoint @s 222 153 1280
effect clear @s
function ut:choose/lobby
item replace entity @s hotbar.4 with air

#effect give @s minecraft:slow_falling 1 0 true
#effect give @s minecraft:blindness 1 0 true