#By Nebulirion

data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:leather_leggings",count:1b}]
data modify block 255 0 255 Items[0].components set from storage ut:chrs Temp.LegsItem.components
data modify block 255 0 255 Items[0].components."minecraft:custom_data".OldItem set from entity @s Inventory[{Slot:101b}]
item replace entity @s armor.legs from block 255 0 255 container.0