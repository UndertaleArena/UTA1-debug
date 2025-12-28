#By Nebulirion

execute if data entity @s SelectedItem run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
execute unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]