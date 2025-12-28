#By Nebulirion

execute if block ~ 0 ~ oxidized_copper run function ut:game/siege/point/display/copper/draw

execute if block ~ 0 ~ oxidized_copper run setblock ~ 0 ~ oxidized_cut_copper

execute positioned ~1 ~ ~ if block ~ 0 ~ oxidized_copper run function ut:game/siege/point/display/copper/main
execute positioned ~-1 ~ ~ if block ~ 0 ~ oxidized_copper run function ut:game/siege/point/display/copper/main
execute positioned ~ ~ ~1 if block ~ 0 ~ oxidized_copper run function ut:game/siege/point/display/copper/main
execute positioned ~ ~ ~-1 if block ~ 0 ~ oxidized_copper run function ut:game/siege/point/display/copper/main

execute if block ~ 0 ~ oxidized_cut_copper run setblock ~ 0 ~ oxidized_copper