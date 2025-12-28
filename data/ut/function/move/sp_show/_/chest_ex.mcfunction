#By Nebulirion

data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:leather_chestplate",count:1b}]
data modify block 255 0 255 Items[0].components set from storage ut:chrs Temp.ChestItem.components
data modify block 255 0 255 Items[0].components."minecraft:custom_data".OldItem set from entity @s Inventory[{Slot:102b}]
item replace entity @s armor.chest from block 255 0 255 container.0