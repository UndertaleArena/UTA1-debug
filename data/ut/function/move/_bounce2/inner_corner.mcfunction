#By Nebulirion

execute positioned ~1 ~-1 ~-1 if entity @s[dx=0,dy=2,dz=2] run function ut:move/_bounce2/x
execute positioned ~-1 ~-1 ~-1 if entity @s[dx=0,dy=2,dz=2] run function ut:move/_bounce2/x
execute positioned ~-1 ~1 ~-1 if entity @s[dx=2,dy=0,dz=2] run function ut:move/_bounce2/y
execute positioned ~-1 ~-1 ~-1 if entity @s[dx=2,dy=0,dz=2] run function ut:move/_bounce2/y
execute positioned ~-1 ~-1 ~1 if entity @s[dx=2,dy=2,dz=0] run function ut:move/_bounce2/z
execute positioned ~-1 ~-1 ~-1 if entity @s[dx=2,dy=2,dz=0] run function ut:move/_bounce2/z