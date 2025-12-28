#By Nebulirion

scoreboard players set @s unloadtime 20
function ut:player/infight/use

execute at @s run particle flame ~ ~.8 ~ .2 .4 .2 0 40 normal @a[scores={Q=2..}]
execute at @e[tag=mng_maze] run tp @s ^3 ^ ^-2
execute at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1.2 1.2
execute at @s run particle flame ~ ~.8 ~ .25 .5 .25 0 40 normal @a[scores={Q=2..}]