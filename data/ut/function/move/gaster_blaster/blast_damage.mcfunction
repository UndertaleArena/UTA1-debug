#By Nebulirion

tag @s add atker
scoreboard players operation #atker tid = @s tid
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #atker life = @s life
scoreboard players operation #damage damage = @s damage

#####
###
#
scoreboard players operation #mx2 store = @s x_tar
scoreboard players operation #my2 store = @s y_tar
scoreboard players operation #mz2 store = @s z_tar

scoreboard players operation #mx3 store = @s x_pos
scoreboard players operation #my3 store = @s y_pos
scoreboard players operation #mz3 store = @s z_pos

scoreboard players operation #div store = @s store

scoreboard players set #nogainflag dt 0

execute positioned ^ ^ ^64.5 as @a[tag=playing,distance=..64,tag=!untargetable] unless score @s tid = #atker tid run function ut:move/gaster_blaster/blast_math

scoreboard players set #nogainflag dt 0

#
###
#####

tag @s remove atker