###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###DETECT IF BLOCK OR RANGE LIM
execute unless score @s range matches -2700 run execute if entity @s[tag=inair] run function ut:move/dummy_mech/air_to_fall
execute if score @s range matches -2700 run function ut:move/dummy_mech/end_inblock