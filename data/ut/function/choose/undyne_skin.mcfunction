#By Nebulirion

item replace block 255 0 255 container.0 from entity @s armor.head
execute if score @s undyne_skin matches 1 run data modify block 255 0 255 Items[0].components."minecraft:custom_model_data" set value 103
execute unless score @s undyne_skin matches 1 run data modify block 255 0 255 Items[0].components."minecraft:custom_model_data" set value 3
item replace entity @s armor.head from block 255 0 255 container.0