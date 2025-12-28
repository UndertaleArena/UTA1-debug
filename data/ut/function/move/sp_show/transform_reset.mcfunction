#By Nebulirion

tag @s remove transformed

#######INVENTORY
execute if data entity @s Inventory[{Slot:103b,components:{"minecraft:custom_data":{OldItem:{}}}}] run function ut:move/sp_show/_/head_reset
execute if data entity @s Inventory[{Slot:102b,components:{"minecraft:custom_data":{OldItem:{}}}}] run function ut:move/sp_show/_/chest_reset
execute if data entity @s Inventory[{Slot:101b,components:{"minecraft:custom_data":{OldItem:{}}}}] run function ut:move/sp_show/_/legs_reset
execute if data entity @s Inventory[{Slot:100b,components:{"minecraft:custom_data":{OldItem:{}}}}] run function ut:move/sp_show/_/feet_reset
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{mp_move:1b,OldItem:{}}}}] run function ut:move/sp_show/_/mp_reset
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{cd_move:1b,OldItem:{}}}}] run function ut:move/sp_show/_/cd_reset

function ut:move/passive/setup