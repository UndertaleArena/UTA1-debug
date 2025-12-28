#By Nebulirion

data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:nether_brick",count:1b,components:{}}]
data modify block 255 0 255 Items[0].components set from entity @s Inventory[{Slot:103b}].components
data modify block 255 0 255 Items[0].components."minecraft:custom_model_data" set from storage ut:chrs Temp.HeadItem.components."minecraft:custom_model_data"
data modify block 255 0 255 Items[0].components."minecraft:custom_data".OldItem set from entity @s Inventory[{Slot:103b}]
item replace entity @s armor.head from block 255 0 255 container.0