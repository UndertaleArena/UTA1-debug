#By Nebulirion

execute if data entity @s SelectedItem.components."minecraft:custom_data".undyne_skin run function ut:lobby/misc/undyne_skin/use
execute if data entity @s[advancements={ut:chr/mettatonex/lv5=true}] SelectedItem.components."minecraft:custom_data".sp_switch run function ut:lobby/choose/switch_use

execute if data entity @s SelectedItem.components."minecraft:custom_data".spare run function ut:lobby/ray/spare/rc

execute if data entity @s SelectedItem.components."minecraft:custom_data".bark run function ut:move/bark/use
execute if data entity @s[tag=in_dummy_mng] SelectedItem.components."minecraft:custom_data".dm_move run function ut:lobby/minis/dummy/rc
execute if data entity @s[tag=maze_player] SelectedItem.components."minecraft:custom_data".restart_maze run function ut:lobby/minis/maze/button/use
execute if data entity @s[tag=tut_p] SelectedItem.components."minecraft:custom_data".leave_tut run function ut:lobby/tutorial/button/use