#Original By Nebulirion, edited by SY

#state check
execute if entity @s[tag=!delete_user] run function ut:move/delete/use_prep

execute if entity @s[tag=delete_user] unless score @s unloadtime matches 1.. run function ut:move/delete/use_cast
