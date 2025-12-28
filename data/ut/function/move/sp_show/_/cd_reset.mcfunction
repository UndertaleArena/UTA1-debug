#By Nebulirion

data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:stone",count:1b}]
data modify block 255 0 255 Items[0].id set from entity @s Inventory[{components:{"minecraft:custom_data":{cd_move:1b,OldItem:{}}}}].components."minecraft:custom_data".OldItem.id
data modify block 255 0 255 Items[0].components set from entity @s Inventory[{components:{"minecraft:custom_data":{cd_move:1b,OldItem:{}}}}].components."minecraft:custom_data".OldItem.components
clear @s carrot_on_a_stick[custom_data~{cd_move:1b}] 1
loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]