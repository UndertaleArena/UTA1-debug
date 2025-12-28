###Generated from Nebulagen made By Nebulirion
#03/23/2022, 03:19:16

execute if score @s tid = #atker tid at @s run function ut:move/pie/hit_ally
execute unless score @s tid = #atker tid if entity @s[distance=..3] at @s run function ut:move/pie/hit_enemy