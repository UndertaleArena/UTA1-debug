#By Nebulirion

#
execute unless data entity @s SelectedItem run function ut:move/fist/use
execute if data entity @s SelectedItem.components.minecraft:custom_data.can_fist run function ut:move/fist/use
execute if data entity @s SelectedItem.components.minecraft:custom_data.knife run function ut:move/knife/use
execute if data entity @s SelectedItem.components.minecraft:custom_data.stick run function ut:move/stick/use
execute if data entity @s SelectedItem.components.minecraft:custom_data.real_knife_knife run function ut:move/real_knife/melee
#