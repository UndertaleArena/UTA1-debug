###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

###Hitbox detection, Size: 0.8 x 0.8 x 0.8
execute if score @s life2 matches 2 positioned ^ ^ ^1 run execute positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0,dy=0,dz=0] positioned ~0.2 ~0.2 ~0.2 run tag @s[dx=0,dy=0,dz=0] add hitcheck_target
execute if score @s life2 matches 1 run execute positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0,dy=0,dz=0] positioned ~0.2 ~0.2 ~0.2 run tag @s[dx=0,dy=0,dz=0] add hitcheck_target