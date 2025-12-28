#By Nebulirion

execute positioned ~1 ~-2.5 ~-1 if entity @s[dx=0,dy=2,dz=2] run function ut:move/_bounce/x
execute positioned ~-1 ~-2.5 ~-1 if entity @s[dx=0,dy=2,dz=2] run function ut:move/_bounce/x
execute positioned ~-1 ~-0.5 ~-1 if entity @s[dx=2,dy=0,dz=2] run function ut:move/_bounce/y
execute positioned ~-1 ~-2.5 ~-1 if entity @s[dx=2,dy=0,dz=2] run function ut:move/_bounce/y
execute positioned ~-1 ~-2.5 ~1 if entity @s[dx=2,dy=2,dz=0] run function ut:move/_bounce/z
execute positioned ~-1 ~-2.5 ~-1 if entity @s[dx=2,dy=2,dz=0] run function ut:move/_bounce/z