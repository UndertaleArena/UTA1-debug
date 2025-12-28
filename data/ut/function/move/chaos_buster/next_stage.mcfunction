#By Nebulirion

scoreboard players set #cb plt1 0
execute store result score #cb plt1 run data get entity @s SelectedItem.components."minecraft:custom_data".cb_charge

scoreboard players add #cb plt1 1
execute if entity @s[tag=attack_buffed] run scoreboard players set #cb plt1 3

execute if score #cb plt1 matches 3 run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 2 1.2
execute unless score #cb plt1 matches 0..3 run scoreboard players set #cb plt1 0

scoreboard players set #cbmodel plt1 246
scoreboard players operation #cbmodel plt1 += #cb plt1

item replace block 255 0 255 container.0 from entity @s weapon.mainhand
execute store result block 255 0 255 Items[0].components."minecraft:custom_model_data" int 1 run scoreboard players get #cbmodel plt1
execute store result block 255 0 255 Items[0].components."minecraft:custom_data".cb_charge int 1 run scoreboard players get #cb plt1
item replace entity @s weapon.mainhand from block 255 0 255 container.0