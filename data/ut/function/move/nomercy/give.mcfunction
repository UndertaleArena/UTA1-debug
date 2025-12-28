#By Nebulirion

data modify block 255 0 255 Items set value []
item replace block 255 0 255 container.0 with minecraft:carrot_on_a_stick[custom_name='{"translate":"chr.asgore.spxn","italic":false,"bold":true}',lore=['{"text":""}','{"translate":"chr.asgore.sp1","italic":false,"color":"white"}','{"translate":"chr.asgore.sp2","italic":false,"color":"white"}'],custom_model_data=105,custom_data={sp_move:1b,nomercy:1b}]
item modify block 255 0 255 container.0 ut:no_melee 

clear @s carrot_on_a_stick[custom_data~{nomercy:1b}]

# trident back
## non-fourth replacing
execute if entity @s[tag=!cev] unless data entity @s Inventory[{Slot:7b}] run loot replace entity @s container.7 1 mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]
## fourth or not given
execute unless data entity @s Inventory[{components:{"minecraft:custom_data":{nomercy:1b}}}] run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]