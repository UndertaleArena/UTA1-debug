#By Nebulirion

tag @s remove cdmax_lock

scoreboard players set @s cd 0
scoreboard players set @s cddis 0

execute if data entity @s SelectedItem.components."minecraft:custom_data".bluebone run function ut:move/bluebone/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".dodge run function ut:move/dodge/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".dig run function ut:move/dig/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".block run function ut:move/block/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".flirt run function ut:move/flirt/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".dash run function ut:move/dash/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".web run function ut:move/web/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".bomb_mtt run function ut:move/bomb_mtt/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".bomb_ex run function ut:move/bomb_ex/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".pie run function ut:move/pie/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".trident run function ut:move/trident/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".star run function ut:move/star_blaze/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".shock_bullet run function ut:move/shock_bullet/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".ghost run function ut:move/ghost/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".dummy_charge run function ut:move/dummy_charge/use
execute if data entity @s SelectedItem.components."minecraft:custom_data".warp run function ut:move/warp/use