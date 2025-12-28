#By Nebulirion
#
scoreboard players operation @s mp -= @s mpcost
#
execute if data entity @s SelectedItem.components."minecraft:custom_data".bone_pap run function ut:move/bone_pap/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".bone_sans run function ut:move/bone_sans/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".lazer run function ut:move/lazer/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".lazer_ex run function ut:move/lazer_ex/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".spear run function ut:move/spear/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".pellets run function ut:move/pellet_flowey/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".spider run function ut:move/spider/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".spare run function ut:move/spare/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".bark run function ut:move/bark/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".fireball_tori run function ut:move/fireball_tori/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".firehand run function ut:move/firehand/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".chaos_buster run function ut:move/chaos_buster/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".yellow run function ut:move/info_bullet/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".tear run function ut:move/tear_napsta/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".dummy_friend run function ut:move/dummy_friend/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".shoot run function ut:move/shoot/use