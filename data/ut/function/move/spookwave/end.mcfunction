###Generated from Nebulagen made By Nebulirion
#07/11/2021, 15:01:45

###DETECT IF BLOCK OR RANGE LIM
execute unless score @s range matches -2700 run function ut:void
execute if score @s range matches -2700 run function ut:move/spookwave/end_inblock