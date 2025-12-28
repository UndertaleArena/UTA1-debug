#By Nebulirion

tag @s add transformed

execute if data entity @s SelectedItem.components."minecraft:custom_data".sp_show_mtt run data modify storage ut:chrs Temp set from storage ut:chrs Data[15]
execute if data entity @s SelectedItem.components."minecraft:custom_data".sp_show_ex run data modify storage ut:chrs Temp set from storage ut:chrs Data[5]

#######INVENTORY
execute if data entity @s Inventory[{Slot:103b}] run function ut:move/sp_show/_/head_ex
execute if data entity @s Inventory[{Slot:102b}] run function ut:move/sp_show/_/chest_ex
execute if data entity @s Inventory[{Slot:101b}] run function ut:move/sp_show/_/legs_ex
execute if data entity @s Inventory[{Slot:100b}] run function ut:move/sp_show/_/feet_ex
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{mp_move:1b}}}] run function ut:move/sp_show/_/mp_ex
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{cd_move:1b}}}] run function ut:move/sp_show/_/cd_ex

function ut:move/passive/setup