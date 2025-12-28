#By Nebulirion

data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:stone",count:1b}]
data modify block 255 0 255 Items[0].id set from entity @s equipment.head.components."minecraft:custom_data".Armors[3].id
data modify block 255 0 255 Items[0].components set from entity @s equipment.head.components."minecraft:custom_data".Armors[3].components
item replace entity @s armor.feet with air
loot replace entity @s armor.feet 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
data modify block 255 0 255 Items[0].id set from entity @s equipment.head.components."minecraft:custom_data".Armors[2].id
data modify block 255 0 255 Items[0].components set from entity @s equipment.head.components."minecraft:custom_data".Armors[2].components
item replace entity @s armor.legs with air
loot replace entity @s armor.legs 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
data modify block 255 0 255 Items[0].id set from entity @s equipment.head.components."minecraft:custom_data".Armors[1].id
data modify block 255 0 255 Items[0].components set from entity @s equipment.head.components."minecraft:custom_data".Armors[1].components
item replace entity @s armor.chest with air
loot replace entity @s armor.chest 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]

#data modify block 255 0 255 Items[0].id set from entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".equipment.feet.id
#data modify block 255 0 255 Items[0].components set from entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".equipment.feet.components
#item replace entity @s armor.head with air
#loot replace entity @s armor.head 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
