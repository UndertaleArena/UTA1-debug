#By Nebulirion

###Particle
execute if score @s life matches 30..32 run scoreboard players set @s plt3 0
execute if score @s life matches 30 at @s rotated ~ ~15 anchored eyes positioned ^ ^-.2 ^ positioned ^ ^ ^.5 run function ut:move/gaster_blaster/blast_loop_p1
execute if score @s life matches 31 at @s rotated ~ ~15 anchored eyes positioned ^ ^-.2 ^ positioned ^ ^ ^1.5 run function ut:move/gaster_blaster/blast_loop_p2
execute if score @s life matches 32 at @s rotated ~ ~15 anchored eyes positioned ^ ^-.2 ^ positioned ^ ^ ^3.5 run function ut:move/gaster_blaster/blast_loop_p3
execute if score @s life matches 33..52 at @s rotated ~ ~15 anchored eyes positioned ^ ^-.2 ^ positioned ^ ^ ^.5 run function ut:move/gaster_blaster/blast_damage