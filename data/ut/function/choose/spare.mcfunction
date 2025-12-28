#By Nebulirion

#饒恕
#對一名敵人展現仁慈。如果對方的意志力足夠低的話，將它饒恕並移出戰鬥。

data modify block 255 0 255 Items set value []
item replace block 255 0 255 container.0 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=102,minecraft:lore=['{"text":""}','{"translate":"itm.spare1","italic":false,"color":"white"}','{"translate":"itm.spare2","italic":false,"color":"white"}','{"translate":"itm.spare3","italic":false,"color":"white"}'],minecraft:attribute_modifiers={modifiers:[{amount:-10.0d,name:"generic.attack_damage",operation:"add_value",slot:"mainhand",type:"generic.attack_damage",id:"nomelee"}],show_in_tooltip:0b},minecraft:custom_name='{"translate":"itm.spare","italic":false,"bold":true}',minecraft:custom_data={sp_move:1b,spare:1b},minecraft:hide_additional_tooltip={}]

clear @s carrot_on_a_stick[custom_data~{spare:1b}]
execute unless items entity @s hotbar.8 * run loot replace entity @s container.8 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
execute unless data entity @s Inventory[{components:{"minecraft:custom_data":{spare:1b}}}] run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]