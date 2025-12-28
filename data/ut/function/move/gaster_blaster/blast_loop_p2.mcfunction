#By Nebulirion

particle end_rod ~ ~ ~ 0.4 0.4 0.4 0 15 force @a
particle end_rod ~ ~ ~ 0.4 0.4 0.4 0 15 normal @a[scores={Q=3..}]

scoreboard players add @s plt3 1
execute if score @s plt3 <= #gbDistance plt3 positioned ^ ^ ^1 run function ut:move/gaster_blaster/blast_loop_p2