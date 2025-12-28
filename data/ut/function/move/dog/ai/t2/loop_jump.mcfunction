#By Nebulirion

particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.01 1 force @a[scores={Q=2..}]

execute if score @s life2 <= @s plt1 positioned ~ ~-0.8 ~ run tp @s ^ ^ ^.6
execute unless score @s life2 <= @s plt1 unless score @s life2 > @s plt2 run tp @s ^ ^ ^.6
execute if score @s life2 > @s plt2 positioned ~ ~0.8 ~ run tp @s ^ ^ ^.6

###DISPLAY
function ut:move/dog/display/face