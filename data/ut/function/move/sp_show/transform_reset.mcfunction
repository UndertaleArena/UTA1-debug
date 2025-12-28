#By Nebulirion

tag @s remove transformed

#######INVENTORY
execute if items entity @s armor.head *[custom_data~{OldItem:{}}] run function ut:move/sp_show/_/head_reset
execute if items entity @s armor.chest *[custom_data~{OldItem:{}}] run function ut:move/sp_show/_/chest_reset
execute if items entity @s armor.legs *[custom_data~{OldItem:{}}] run function ut:move/sp_show/_/legs_reset
execute if items entity @s armor.feet *[custom_data~{OldItem:{}}] run function ut:move/sp_show/_/feet_reset
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{mp_move:1b,OldItem:{}}}}] run function ut:move/sp_show/_/mp_reset
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{cd_move:1b,OldItem:{}}}}] run function ut:move/sp_show/_/cd_reset

function ut:move/passive/setup