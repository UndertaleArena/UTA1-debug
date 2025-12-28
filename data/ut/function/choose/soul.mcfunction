#By Nebulirion

data modify block 255 0 255 Items set value []
item replace block 255 0 255 container.0 with minecraft:carrot_on_a_stick[custom_name='{"translate":"itm.soul","italic":false,"bold":true}',lore=['{"text":""}','{"translate":"itm.soul1","italic":false,"color":"white"}','{"translate":"itm.soul2","italic":false,"color":"white"}'],attribute_modifiers={modifiers:[{type:"generic.attack_damage",slot:"mainhand",id:"ut:nodamage",name:"generic.attack_damage",amount:-10.0,operation:"add_value"}],show_in_tooltip:0b},custom_model_data=101,custom_data={selector:1b}]

clear @s carrot_on_a_stick[custom_data~{selector:1b}]
execute if data entity @s Inventory[{Slot:4b}] run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
execute unless data entity @s Inventory[{Slot:4b}] run loot replace entity @s container.4 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]