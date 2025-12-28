###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

tag @s add los_check
function ut:move/los/check
execute if score #insight store matches 1 run tag @s add dummy_target
tag @s remove los_check