###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###DETECT IF BLOCK OR RANGE LIM
execute unless score @s range matches -2700 run function ut:void
execute if score @s range matches -2700 run function ut:move/lazer_bullet_buffed/end_inblock