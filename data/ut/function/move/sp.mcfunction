#By Nebulirion

execute if data entity @s SelectedItem.components."minecraft:custom_data".spare run function ut:move/spare/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".nomercy run function ut:move/nomercy/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".sp_switch run function ut:move/sp_show/switch/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".hand run function ut:move/hand/toggle