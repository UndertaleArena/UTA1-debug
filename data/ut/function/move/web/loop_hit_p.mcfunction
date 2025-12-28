#By Nebulirion

tp @s @e[tag=atker,limit=1]
scoreboard players set @s unloadtime 2
function ut:player/infight/damaged
#effect give @s minecraft:slowness 3 4 true
tag @s remove sticking_p