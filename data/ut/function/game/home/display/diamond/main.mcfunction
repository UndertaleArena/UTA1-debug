#By Nebulirion

execute if block ~ 0 ~ diamond_block run function ut:game/home/display/diamond/draw_pre

execute if block ~ 0 ~ diamond_block run setblock ~ 0 ~ emerald_block
execute if block ~ 0 ~ diamond_ore run setblock ~ 0 ~ emerald_ore

execute positioned ~1 ~ ~ if block ~ 0 ~ #ut:diamond run function ut:game/home/display/diamond/main
execute positioned ~-1 ~ ~ if block ~ 0 ~ #ut:diamond run function ut:game/home/display/diamond/main
execute positioned ~ ~ ~1 if block ~ 0 ~ #ut:diamond run function ut:game/home/display/diamond/main
execute positioned ~ ~ ~-1 if block ~ 0 ~ #ut:diamond run function ut:game/home/display/diamond/main

execute if block ~ 0 ~ emerald_block run setblock ~ 0 ~ diamond_block
execute if block ~ 0 ~ emerald_ore run setblock ~ 0 ~ diamond_ore