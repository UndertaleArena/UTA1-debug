#By Nebulirion

clear @s carrot_on_a_stick[custom_data~{soul:1b,canned:0b}] 1

###Summon Item
data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:carrot_on_a_stick",count:1b}]
execute store result score #cmd soul run data get storage soul SoulInv[0].components."minecraft:custom_model_data"
scoreboard players add #cmd soul 10
execute store result storage soul SoulInv[0].components."minecraft:custom_model_data" int 1 run scoreboard players get #cmd soul
data modify storage soul SoulInv[0].components."minecraft:custom_data".canned set value 1b

data modify block 255 0 255 Items[0].components set from storage soul SoulInv[0].components

loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]