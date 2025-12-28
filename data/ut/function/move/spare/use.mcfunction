#By Nebulirion

scoreboard players set @s unloadtime 30
function ut:player/infight/use

effect give @s minecraft:slowness 1 3 true

tag @s add spare_p
execute anchored eyes positioned ^ ^ ^2 run function ut:move/spare/cast
tag @s remove spare_p