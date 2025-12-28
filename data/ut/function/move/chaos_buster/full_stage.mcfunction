#By Nebulirion


scoreboard players set #cb plt1 3
scoreboard players set #cbmodel plt1 249

item replace block 255 0 255 container.0 with carrot_on_a_stick
data modify block 255 0 255 Items[0].components set from entity @s Inventory[{components:{"minecraft:custom_data":{chaos_buster:1b}}}].components

execute store result block 255 0 255 Items[0].components."minecraft:custom_model_data" int 1 run scoreboard players get #cbmodel plt1
execute store result block 255 0 255 Items[0].components."minecraft:custom_data".cb_charge int 1 run scoreboard players get #cb plt1

execute store result score clear store run clear @s carrot_on_a_stick[custom_data~{chaos_buster:1b}]

execute if score clear store matches 1.. run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 2 1.2
execute if score clear store matches 1.. run loot give @s mine 255 0 255 minecraft:diamond_pickaxe[custom_data={isShulkerMarker:1b}]