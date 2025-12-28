#By Nebulirion

execute positioned ~-1.25 ~-1.25 ~-1.25 run tag @a[tag=gb_enemy,tag=!gb_hit,dx=1.5,dy=1.5,dz=1.5] add gb_hit
#execute if score @s plt3 matches 5.. positioned ~-1.5 ~-1.5 ~-1.5 run tag @a[tag=gb_enemy,tag=!gb_hit2,dx=2,dy=2,dz=2] add gb_hit2

scoreboard players add @s plt3 2
execute if score @s plt3 <= #gbDistance plt3 positioned ^ ^ ^2 run function ut:move/gaster_blaster/blast_loop