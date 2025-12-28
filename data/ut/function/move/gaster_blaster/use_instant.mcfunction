# by SY91419, debug usage

execute anchored eyes positioned ^ ^-.5 ^ run function ut:move/gaster_blaster/cast
function ut:player/infight/use

scoreboard players operation #this pid = @s pid
execute as @e[type=husk,tag=gb_skull,tag=prep] if score @s pid = #this pid at @s run function ut:move/gaster_blaster/open