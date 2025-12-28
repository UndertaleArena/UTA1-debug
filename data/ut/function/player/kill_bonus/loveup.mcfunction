#By Nebulirion

particle minecraft:instant_effect ~ ~1 ~ .2 .5 .2 .5 50 normal @a[scores={Q=1..}]

function ut:player/love/up

execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 2 0.8
tellraw @s [{"translate":"pfx.info"},{"translate":"cht.lvup"}]