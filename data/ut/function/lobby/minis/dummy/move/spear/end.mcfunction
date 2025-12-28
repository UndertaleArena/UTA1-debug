###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

###DETECT IF BLOCK OR RANGE LIM
execute unless score @s range matches -2700 run function ut:void
execute if score @s range matches -2700 run function ut:lobby/minis/dummy/move/spear/end_inblock