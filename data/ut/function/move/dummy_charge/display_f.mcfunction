#By Nebulirion

###ITEM
data modify block 255 0 255 Items set value [{Slot:0b,id:"minecraft:carrot_on_a_stick",count:1b}]
data modify block 255 0 255 Items[0].components set from entity @s Inventory[{components:{"minecraft:custom_data":{dummy_charge:1b,is_knife:0b}}}].components
data modify block 255 0 255 Items[0].components."minecraft:custom_name" set value '{"translate":"chr.maddummy.ch","italic":false,"color":"white","bold":true}'
data modify block 255 0 255 Items[0].components."minecraft:custom_model_data" set value 260
data modify block 255 0 255 Items[0].components."minecraft:custom_data".is_knife set value 1b
execute store result score clear store run clear @s carrot_on_a_stick[custom_data~{dummy_charge:1b,is_knife:0b}]
execute if score clear store matches 1.. run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
###