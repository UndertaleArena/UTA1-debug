#By Nebulirion

data modify block 255 0 255 Items set value []
item replace block 255 0 255 container.0 with minecraft:carrot_on_a_stick[minecraft:custom_model_data={floats:[107]},minecraft:lore=[{"text":""},{"translate":"chr.mettaton.sp1","italic":false,"color":"white"},{"translate":"chr.mettaton.sp2","italic":false,"color":"white"},{"translate":"chr.mettaton.sp3","italic":false,"color":"white"},"",{"translate":"chr.mettaton.sp4","italic":false,"color":"gray"}],minecraft:attribute_modifiers=[{amount:-10.0d,operation:"add_value",slot:"mainhand",type:"attack_damage",id:"mttnomelee"}],minecraft:enchantments={},minecraft:custom_name={"translate":"chr.mettaton.spn1","italic":false,"bold":true},minecraft:custom_data={sp_move:1b,sp_switch:1b},tooltip_display={hidden_components:["attribute_modifiers","enchantments"]}]

clear @s carrot_on_a_stick[custom_data~{sp_switch:1b}]
execute if entity @s[tag=!cev] unless data entity @s Inventory[{Slot:7b}] run loot replace entity @s container.7 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
execute unless data entity @s Inventory[{components:{"minecraft:custom_data":{sp_switch:1b}}}] run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]