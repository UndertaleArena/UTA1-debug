#By Nebulirion

data modify block 255 0 255 Items set value []
item replace block 255 0 255 container.0 with minecraft:carrot_on_a_stick

data modify block 255 0 255 Items[0].components set from storage ut:chrs Data[10].MpMove.components

execute if data entity @s Inventory[{Slot:0b}] run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
execute unless data entity @s Inventory[{Slot:0b}] run loot replace entity @s hotbar.0 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]