#By Nebulirion

execute if entity @s[tag=!cdmax_lock] store result score @s cdmax run data get entity @s SelectedItem.components."minecraft:custom_data".cd
execute unless score @s cd >= @s cdmax run function ut:move/cd/fail
execute if score @s cd >= @s cdmax run function ut:move/cd/use