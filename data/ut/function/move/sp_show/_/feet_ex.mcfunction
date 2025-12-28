#By Nebulirion

data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:leather_boots",count:1b}]
data modify block 255 0 255 Items[0].components set from entity @s Inventory[{Slot:100b}].components
data modify block 255 0 255 Items[0].components.minecraft:dyed_color set from storage ut:chrs Temp.FeetItem.components.minecraft:dyed_color
data modify block 255 0 255 Items[0].components."minecraft:custom_data".OldItem set from entity @s Inventory[{Slot:100b}]
item replace entity @s armor.feet from block 255 0 255 container.0