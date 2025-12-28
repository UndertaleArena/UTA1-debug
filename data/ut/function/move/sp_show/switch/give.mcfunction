#By Nebulirion

data modify block 255 0 255 Items set value []
item replace block 255 0 255 container.0 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=107,minecraft:lore=['{"text":""}','{"translate":"chr.mettaton.sp1","italic":false,"color":"white"}','{"translate":"chr.mettaton.sp2","italic":false,"color":"white"}','{"translate":"chr.mettaton.sp3","italic":false,"color":"white"}','""','{"translate":"chr.mettaton.sp4","italic":false,"color":"gray"}'],minecraft:attribute_modifiers={modifiers:[{amount:-10.0d,name:"generic.attack_damage",operation:"add_value",slot:"mainhand",type:"generic.attack_damage",id:"mttnomelee"}],show_in_tooltip:0b},minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:custom_name='{"translate":"chr.mettaton.spn1","italic":false,"bold":true}',minecraft:custom_data={sp_move:1b,sp_switch:1b},minecraft:hide_additional_tooltip={}]

clear @s carrot_on_a_stick[custom_data~{sp_switch:1b}]
execute if entity @s[tag=!cev] unless data entity @s Inventory[{Slot:7b}] run loot replace entity @s container.7 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
execute unless data entity @s Inventory[{components:{"minecraft:custom_data":{sp_switch:1b}}}] run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]