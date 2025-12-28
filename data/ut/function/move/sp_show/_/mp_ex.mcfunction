#By Nebulirion

data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:carrot_on_a_stick",count:1b}]
data modify block 255 0 255 Items[0].components set from storage ut:chrs Temp.MpMove.components
data modify block 255 0 255 Items[0].components."minecraft:custom_data".OldItem set from entity @s Inventory[{components:{"minecraft:custom_data":{mp_move:1b}}}]

execute store result block 255 0 255 Items[0].components."minecraft:custom_data".OldMpmax int 1 run scoreboard players get @s mpmax
scoreboard players set @s mpmax 120

clear @s carrot_on_a_stick[custom_data~{mp_move:1b}] 1
loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]