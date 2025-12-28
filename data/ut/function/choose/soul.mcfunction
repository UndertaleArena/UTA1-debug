#By Nebulirion

data modify block 255 0 255 Items set value []
item replace block 255 0 255 container.0 with minecraft:carrot_on_a_stick[custom_name={"translate":"itm.soul","italic":false,"bold":true},lore=[{"text":""},{"translate":"itm.soul1","italic":false,"color":"white"},{"translate":"itm.soul2","italic":false,"color":"white"}],attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"ut:nodamage",amount:-10.0,operation:"add_value"}],custom_model_data={floats:[101]},custom_data={selector:1b},tooltip_display={hidden_components:["attribute_modifiers"]}]

clear @s carrot_on_a_stick[custom_data~{selector:1b}]
execute if data entity @s Inventory[{Slot:4b}] run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
execute unless data entity @s Inventory[{Slot:4b}] run loot replace entity @s container.4 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]