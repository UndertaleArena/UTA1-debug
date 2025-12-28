#Original By Nebulirion, edited by SY

#target place
tag @s add delete_rc
execute anchored eyes positioned ^ ^ ^.5 run function ut:move/delete/ray

#check success or not
execute if entity @s[tag=!ray_find] run function ut:move/delete/use_cast_fail
execute if entity @s[tag=ray_find] run function ut:move/delete/use_cast_suc