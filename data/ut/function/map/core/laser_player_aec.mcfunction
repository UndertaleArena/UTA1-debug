#By Nebulirion

execute positioned ~-.9 ~ ~ if entity @s[dx=0,dy=8,dz=0] align xyz run tp @s ~.65 ~ ~.5
execute positioned ~ ~ ~-.9 if entity @s[dx=0,dy=8,dz=0] align xyz run tp @s ~.5 ~ ~.65
execute positioned ~.9 ~ ~ if entity @s[dx=0,dy=8,dz=0] align xyz run tp @s ~1.35 ~ ~.5
execute positioned ~ ~ ~.9 if entity @s[dx=0,dy=8,dz=0] align xyz run tp @s ~.5 ~ ~1.35
execute if entity @s[dx=0,dy=8,dz=0] align xyz run tp @s ~1.35 ~ ~.5