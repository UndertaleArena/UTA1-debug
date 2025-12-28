#By Nebulirion

data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:stone",count:1b}]
data modify block 255 0 255 Items[0].id set from entity @s equipment.head.components."minecraft:custom_data".OldItem.id
data modify block 255 0 255 Items[0].components set from entity @s equipment.head.components."minecraft:custom_data".OldItem.components
item replace entity @s armor.head from block 255 0 255 container.0